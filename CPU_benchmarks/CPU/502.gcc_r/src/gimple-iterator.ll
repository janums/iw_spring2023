; ModuleID = 'gimple-iterator.bc'
source_filename = "gimple-iterator.c"
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
%struct.gimple_seq_d = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_d* }
%struct.gimple_seq_node_d = type { %union.gimple_statement_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d* }
%union.gimple_statement_d = type { %struct.gimple_statement_phi }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, %union.tree_node*, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, %struct.basic_block_def*, %union.tree_node* }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, %union.tree_node*, i32 }
%struct.ssa_use_operand_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %union.anon, %union.tree_node** }
%union.anon = type { %union.gimple_statement_d* }
%struct.gimple_df = type { %struct.htab*, %struct.VEC_gimple_gc*, %struct.VEC_tree_gc*, %union.tree_node*, %struct.pt_solution, %struct.pt_solution, %struct.pointer_map_t*, %union.tree_node*, %struct.htab*, %struct.bitmap_head_def*, i8, %struct.ssa_operands }
%struct.VEC_gimple_gc = type { %struct.VEC_gimple_base }
%struct.VEC_gimple_base = type { i32, i32, [1 x %union.gimple_statement_d*] }
%struct.VEC_tree_gc = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x %union.tree_node*] }
%struct.pt_solution = type { i8, %struct.bitmap_head_def* }
%struct.pointer_map_t = type opaque
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.ssa_operands = type { %struct.ssa_operand_memory_d*, i32, i32, i8, %struct.def_optype_d*, %struct.use_optype_d* }
%struct.ssa_operand_memory_d = type { %struct.ssa_operand_memory_d*, [1 x i8] }
%struct.def_optype_d = type { %struct.def_optype_d*, %union.tree_node** }
%struct.use_optype_d = type { %struct.use_optype_d*, %struct.ssa_use_operand_d }
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
%struct.rtx_def = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"gimple-iterator.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1516 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1529, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1530, metadata !DIExpression()), !dbg !1531
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1532
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1533
  ret i32 %call, !dbg !1534
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1535 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1539
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1540
  ret i32 %call, !dbg !1541
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1542 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1597, metadata !DIExpression()), !dbg !1598
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1599
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1599
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1599
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1599
  %cmp = icmp uge i8* %0, %1, !dbg !1599
  %conv1 = zext i1 %cmp to i64, !dbg !1599
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1599
  %tobool = icmp eq i64 %expval, 0, !dbg !1599
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1599

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1599
  br label %cond.end, !dbg !1599

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1599
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1599
  %2 = load i8, i8* %0, align 1, !dbg !1599
  %conv3 = zext i8 %2 to i32, !dbg !1599
  br label %cond.end, !dbg !1599

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1599
  ret i32 %cond, !dbg !1600
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1601 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1603, metadata !DIExpression()), !dbg !1604
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1605
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1605
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1605
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1605
  %cmp = icmp uge i8* %0, %1, !dbg !1605
  %conv1 = zext i1 %cmp to i64, !dbg !1605
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1605
  %tobool = icmp eq i64 %expval, 0, !dbg !1605
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1605

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1605
  br label %cond.end, !dbg !1605

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1605
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1605
  %2 = load i8, i8* %0, align 1, !dbg !1605
  %conv3 = zext i8 %2 to i32, !dbg !1605
  br label %cond.end, !dbg !1605

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1605
  ret i32 %cond, !dbg !1606
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1607 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1608
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1608
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1608
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1608
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1608
  %cmp = icmp uge i8* %1, %2, !dbg !1608
  %conv1 = zext i1 %cmp to i64, !dbg !1608
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1608
  %tobool = icmp eq i64 %expval, 0, !dbg !1608
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1608

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1608
  br label %cond.end, !dbg !1608

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1608
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1608
  %3 = load i8, i8* %1, align 1, !dbg !1608
  %conv3 = zext i8 %3 to i32, !dbg !1608
  br label %cond.end, !dbg !1608

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1608
  ret i32 %cond, !dbg !1609
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1610 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1614, metadata !DIExpression()), !dbg !1615
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1616
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1617
  ret i32 %call, !dbg !1618
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1619 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1623, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1624, metadata !DIExpression()), !dbg !1625
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1626
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1626
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1626
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1626
  %cmp = icmp uge i8* %0, %1, !dbg !1626
  %conv1 = zext i1 %cmp to i64, !dbg !1626
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1626
  %tobool = icmp eq i64 %expval, 0, !dbg !1626
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1626

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1626
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1626
  br label %cond.end, !dbg !1626

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1626
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1626
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1626
  store i8 %conv2, i8* %0, align 1, !dbg !1626
  %conv6 = and i32 %__c, 255, !dbg !1626
  br label %cond.end, !dbg !1626

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1626
  ret i32 %cond, !dbg !1627
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1628 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1630, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1631, metadata !DIExpression()), !dbg !1632
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1633
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1633
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1633
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1633
  %cmp = icmp uge i8* %0, %1, !dbg !1633
  %conv1 = zext i1 %cmp to i64, !dbg !1633
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1633
  %tobool = icmp eq i64 %expval, 0, !dbg !1633
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1633

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1633
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1633
  br label %cond.end, !dbg !1633

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1633
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1633
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1633
  store i8 %conv2, i8* %0, align 1, !dbg !1633
  %conv6 = and i32 %__c, 255, !dbg !1633
  br label %cond.end, !dbg !1633

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1633
  ret i32 %cond, !dbg !1634
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1635 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1637, metadata !DIExpression()), !dbg !1638
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1639
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1639
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1639
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1639
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1639
  %cmp = icmp uge i8* %1, %2, !dbg !1639
  %conv1 = zext i1 %cmp to i64, !dbg !1639
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1639
  %tobool = icmp eq i64 %expval, 0, !dbg !1639
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1639

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1639
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1639
  br label %cond.end, !dbg !1639

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1639
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1639
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1639
  store i8 %conv4, i8* %1, align 1, !dbg !1639
  %conv6 = and i32 %__c, 255, !dbg !1639
  br label %cond.end, !dbg !1639

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1639
  ret i32 %cond, !dbg !1640
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1641 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1647, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1648, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1649, metadata !DIExpression()), !dbg !1650
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1651
  ret i64 %call, !dbg !1652
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1653 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1655, metadata !DIExpression()), !dbg !1656
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1657
  %0 = load i32, i32* %_flags, align 8, !dbg !1657
  %and = lshr i32 %0, 4, !dbg !1657
  %and.lobit = and i32 %and, 1, !dbg !1657
  ret i32 %and.lobit, !dbg !1658
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1659 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1661, metadata !DIExpression()), !dbg !1662
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1663
  %0 = load i32, i32* %_flags, align 8, !dbg !1663
  %and = lshr i32 %0, 5, !dbg !1663
  %and.lobit = and i32 %and, 1, !dbg !1663
  ret i32 %and.lobit, !dbg !1664
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1665 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1668, metadata !DIExpression()), !dbg !1669
  %__c.off = add i32 %__c, 128, !dbg !1670
  %0 = icmp ult i32 %__c.off, 384, !dbg !1670
  br i1 %0, label %cond.true, label %cond.end, !dbg !1670

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1671
  %1 = load i32*, i32** %call, align 8, !dbg !1672
  %idxprom = sext i32 %__c to i64, !dbg !1673
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1673
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1673
  br label %cond.end, !dbg !1674

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1674
  ret i32 %cond, !dbg !1675
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1676 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1678, metadata !DIExpression()), !dbg !1679
  %__c.off = add i32 %__c, 128, !dbg !1680
  %0 = icmp ult i32 %__c.off, 384, !dbg !1680
  br i1 %0, label %cond.true, label %cond.end, !dbg !1680

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1681
  %1 = load i32*, i32** %call, align 8, !dbg !1682
  %idxprom = sext i32 %__c to i64, !dbg !1683
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1683
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1683
  br label %cond.end, !dbg !1684

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1684
  ret i32 %cond, !dbg !1685
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1686 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1691, metadata !DIExpression()), !dbg !1692
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1693
  %conv = trunc i64 %call to i32, !dbg !1694
  ret i32 %conv, !dbg !1695
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1696 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1700, metadata !DIExpression()), !dbg !1701
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1702
  ret i64 %call, !dbg !1703
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1704 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1709, metadata !DIExpression()), !dbg !1710
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1711
  ret i64 %call, !dbg !1712
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1713 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1719, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1720, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1721, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1722, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1723, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i64 0, metadata !1724, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1725, metadata !DIExpression()), !dbg !1729
  br label %while.cond, !dbg !1730

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1731
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1729
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1725, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1724, metadata !DIExpression()), !dbg !1729
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1732
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1730

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1733
  %div = lshr i64 %add, 1, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %div, metadata !1726, metadata !DIExpression()), !dbg !1729
  %mul = mul i64 %div, %__size, !dbg !1736
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1737
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1727, metadata !DIExpression()), !dbg !1729
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %call, metadata !1728, metadata !DIExpression()), !dbg !1729
  %cmp1 = icmp slt i32 %call, 0, !dbg !1739
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1741

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1742
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1744

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1745
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1724, metadata !DIExpression()), !dbg !1729
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1729
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1729
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1725, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1724, metadata !DIExpression()), !dbg !1729
  br label %while.cond, !dbg !1730, !llvm.loop !1746

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1729
  ret i8* %retval.0, !dbg !1748
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1749 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1755, metadata !DIExpression()), !dbg !1756
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1757
  ret double %call, !dbg !1758
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1759 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1768, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1769, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i32 %base, metadata !1770, metadata !DIExpression()), !dbg !1771
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1772
  ret i64 %call, !dbg !1773
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1774 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1780, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1781, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i32 %base, metadata !1782, metadata !DIExpression()), !dbg !1783
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1784
  ret i64 %call, !dbg !1785
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1786 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1797, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1798, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i32 %base, metadata !1799, metadata !DIExpression()), !dbg !1800
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1801
  ret i64 %call, !dbg !1802
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1803 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1807, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1808, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 %base, metadata !1809, metadata !DIExpression()), !dbg !1810
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1811
  ret i64 %call, !dbg !1812
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1813 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1855, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1856, metadata !DIExpression()), !dbg !1857
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1858
  ret i32 %call, !dbg !1859
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1860 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1862, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1863, metadata !DIExpression()), !dbg !1864
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1865
  ret i32 %call, !dbg !1866
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1867 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1871, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1872, metadata !DIExpression()), !dbg !1873
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1874
  ret i32 %call, !dbg !1875
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1876 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1880, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1881, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1882, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1883, metadata !DIExpression()), !dbg !1884
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1885
  ret i32 %call, !dbg !1886
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1887 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1891, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1892, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1893, metadata !DIExpression()), !dbg !1894
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1893, metadata !DIExpression(DW_OP_deref)), !dbg !1894
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1895
  ret i32 %call, !dbg !1896
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1897 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1901, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1902, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1903, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1904, metadata !DIExpression()), !dbg !1905
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1904, metadata !DIExpression(DW_OP_deref)), !dbg !1905
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1906
  ret i32 %call, !dbg !1907
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1908 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1932, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1933, metadata !DIExpression()), !dbg !1934
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1935
  ret i32 %call, !dbg !1936
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1937 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1939, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1940, metadata !DIExpression()), !dbg !1941
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1942
  ret i32 %call, !dbg !1943
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1944 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1948, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1949, metadata !DIExpression()), !dbg !1950
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !1951
  ret i32 %call, !dbg !1952
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1953 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1957, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1958, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1959, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1960, metadata !DIExpression()), !dbg !1961
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !1962
  ret i32 %call, !dbg !1963
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_seq_before_without_update(%struct.gimple_stmt_iterator* %i, %struct.gimple_seq_d* %seq, i32 %mode) local_unnamed_addr #5 !dbg !1964 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !1975, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !1976, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1977, metadata !DIExpression()), !dbg !1980
  %cmp = icmp eq %struct.gimple_seq_d* %seq, null, !dbg !1981
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !1983

if.end:                                           ; preds = %entry
  %seq1 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 1, !dbg !1984
  %0 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq1, align 8, !dbg !1984
  %cmp2 = icmp eq %struct.gimple_seq_d* %0, %seq, !dbg !1984
  br i1 %cmp2, label %cond.true, label %cond.end, !dbg !1984

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1984
  br label %cond.end, !dbg !1984

cond.end:                                         ; preds = %if.end, %cond.true
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* nonnull %seq) #7, !dbg !1985
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %call, metadata !1978, metadata !DIExpression()), !dbg !1980
  %call3 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* nonnull %seq) #7, !dbg !1986
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %call3, metadata !1979, metadata !DIExpression()), !dbg !1980
  tail call fastcc void @gimple_seq_set_first(%struct.gimple_seq_d* nonnull %seq, %struct.gimple_seq_node_d* null) #7, !dbg !1987
  tail call fastcc void @gimple_seq_set_last(%struct.gimple_seq_d* nonnull %seq, %struct.gimple_seq_node_d* null) #7, !dbg !1988
  tail call void @gimple_seq_free(%struct.gimple_seq_d* nonnull %seq) #6, !dbg !1989
  %tobool = icmp ne %struct.gimple_seq_node_d* %call, null, !dbg !1990
  %tobool4 = icmp ne %struct.gimple_seq_node_d* %call3, null, !dbg !1992
  %or.cond = and i1 %tobool, %tobool4, !dbg !1993
  br i1 %or.cond, label %if.end11, label %if.then5, !dbg !1993

if.then5:                                         ; preds = %cond.end
  %cmp6 = icmp eq %struct.gimple_seq_node_d* %call, %call3, !dbg !1994
  br i1 %cmp6, label %cleanup.cont, label %cond.true7, !dbg !1994

cond.true7:                                       ; preds = %if.then5
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1994
  br label %cleanup.cont, !dbg !1994

if.end11:                                         ; preds = %cond.end
  tail call fastcc void @gsi_insert_seq_nodes_before(%struct.gimple_stmt_iterator* %i, %struct.gimple_seq_node_d* nonnull %call, %struct.gimple_seq_node_d* nonnull %call3, i32 %mode) #7, !dbg !1996
  br label %cleanup.cont, !dbg !1997

cleanup.cont:                                     ; preds = %if.end11, %entry, %if.then5, %cond.true7
  ret void, !dbg !1997
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !1998 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !2005, metadata !DIExpression()), !dbg !2006
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !2007
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2007

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !2008
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !2008
  br label %cond.end, !dbg !2007

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !2007
  ret %struct.gimple_seq_node_d* %cond, !dbg !2009
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !2010 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !2012, metadata !DIExpression()), !dbg !2013
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !2014
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2014

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !2015
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !2015
  br label %cond.end, !dbg !2014

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !2014
  ret %struct.gimple_seq_node_d* %cond, !dbg !2016
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_seq_set_first(%struct.gimple_seq_d* %s, %struct.gimple_seq_node_d* %first) unnamed_addr #0 !dbg !2017 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !2021, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %first, metadata !2022, metadata !DIExpression()), !dbg !2023
  %first1 = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !2024
  store %struct.gimple_seq_node_d* %first, %struct.gimple_seq_node_d** %first1, align 8, !dbg !2025
  ret void, !dbg !2026
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_seq_set_last(%struct.gimple_seq_d* %s, %struct.gimple_seq_node_d* %last) unnamed_addr #0 !dbg !2027 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !2029, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %last, metadata !2030, metadata !DIExpression()), !dbg !2031
  %last1 = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !2032
  store %struct.gimple_seq_node_d* %last, %struct.gimple_seq_node_d** %last1, align 8, !dbg !2033
  ret void, !dbg !2034
}

declare dso_local void @gimple_seq_free(%struct.gimple_seq_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gsi_insert_seq_nodes_before(%struct.gimple_stmt_iterator* %i, %struct.gimple_seq_node_d* %first, %struct.gimple_seq_node_d* %last, i32 %mode) unnamed_addr #5 !dbg !2035 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2039, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %first, metadata !2040, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %last, metadata !2041, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2042, metadata !DIExpression()), !dbg !2048
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2049
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2049
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %0, metadata !2044, metadata !DIExpression()), !dbg !2048
  %call = tail call fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !2050
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2043, metadata !DIExpression()), !dbg !2048
  %cmp = icmp eq %struct.basic_block_def* %call, null, !dbg !2052
  br i1 %cmp, label %if.end, label %if.then, !dbg !2053

if.then:                                          ; preds = %entry
  tail call fastcc void @update_bb_for_stmts(%struct.gimple_seq_node_d* %first, %struct.basic_block_def* nonnull %call) #7, !dbg !2054
  br label %if.end, !dbg !2054

if.end:                                           ; preds = %entry, %if.then
  %tobool = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2055
  br i1 %tobool, label %if.else10, label %if.then1, !dbg !2056

if.then1:                                         ; preds = %if.end
  %prev = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 1, !dbg !2057
  %1 = bitcast %struct.gimple_seq_node_d** %prev to i64*, !dbg !2057
  %2 = load i64, i64* %1, align 8, !dbg !2057
  %prev2 = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %first, i64 0, i32 1, !dbg !2059
  %3 = bitcast %struct.gimple_seq_node_d** %prev2 to i64*, !dbg !2060
  store i64 %2, i64* %3, align 8, !dbg !2060
  %tobool4 = icmp eq i64 %2, 0, !dbg !2061
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !2063

if.then5:                                         ; preds = %if.then1
  %4 = inttoptr i64 %2 to %struct.gimple_seq_node_d*, !dbg !2063
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %4, i64 0, i32 2, !dbg !2064
  store %struct.gimple_seq_node_d* %first, %struct.gimple_seq_node_d** %next, align 8, !dbg !2065
  br label %if.end7, !dbg !2066

if.else:                                          ; preds = %if.then1
  %seq = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 1, !dbg !2067
  %5 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !2067
  tail call fastcc void @gimple_seq_set_first(%struct.gimple_seq_d* %5, %struct.gimple_seq_node_d* %first) #7, !dbg !2068
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %next8 = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %last, i64 0, i32 2, !dbg !2069
  store %struct.gimple_seq_node_d* %0, %struct.gimple_seq_node_d** %next8, align 8, !dbg !2070
  store %struct.gimple_seq_node_d* %last, %struct.gimple_seq_node_d** %prev, align 8, !dbg !2071
  br label %if.end21, !dbg !2072

if.else10:                                        ; preds = %if.end
  %seq11 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 1, !dbg !2073
  %6 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq11, align 8, !dbg !2073
  %call12 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %6) #7, !dbg !2074
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %call12, metadata !2045, metadata !DIExpression()), !dbg !2075
  %prev13 = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %first, i64 0, i32 1, !dbg !2076
  store %struct.gimple_seq_node_d* %call12, %struct.gimple_seq_node_d** %prev13, align 8, !dbg !2077
  %tobool14 = icmp eq %struct.gimple_seq_node_d* %call12, null, !dbg !2078
  br i1 %tobool14, label %if.else17, label %if.then15, !dbg !2080

if.then15:                                        ; preds = %if.else10
  %next16 = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call12, i64 0, i32 2, !dbg !2081
  store %struct.gimple_seq_node_d* %first, %struct.gimple_seq_node_d** %next16, align 8, !dbg !2082
  br label %if.end19, !dbg !2083

if.else17:                                        ; preds = %if.else10
  %7 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq11, align 8, !dbg !2084
  tail call fastcc void @gimple_seq_set_first(%struct.gimple_seq_d* %7, %struct.gimple_seq_node_d* %first) #7, !dbg !2085
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15
  %8 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq11, align 8, !dbg !2086
  tail call fastcc void @gimple_seq_set_last(%struct.gimple_seq_d* %8, %struct.gimple_seq_node_d* %last) #7, !dbg !2087
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end7
  switch i32 %mode, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.epilog
  ], !dbg !2088

sw.bb:                                            ; preds = %if.end21, %if.end21
  store %struct.gimple_seq_node_d* %first, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2089
  br label %sw.epilog, !dbg !2091

sw.default:                                       ; preds = %if.end21
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2092
  br label %sw.epilog, !dbg !2093

sw.epilog:                                        ; preds = %sw.default, %if.end21, %sw.bb
  ret void, !dbg !2094
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_seq_before(%struct.gimple_stmt_iterator* %i, %struct.gimple_seq_d* %seq, i32 %mode) local_unnamed_addr #5 !dbg !2095 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2097, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !2098, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2099, metadata !DIExpression()), !dbg !2100
  tail call fastcc void @update_modified_stmts(%struct.gimple_seq_d* %seq) #7, !dbg !2101
  tail call void @gsi_insert_seq_before_without_update(%struct.gimple_stmt_iterator* %i, %struct.gimple_seq_d* %seq, i32 %mode) #7, !dbg !2102
  ret void, !dbg !2103
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_modified_stmts(%struct.gimple_seq_d* %seq) unnamed_addr #5 !dbg !2104 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !2108, metadata !DIExpression()), !dbg !2110
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2111
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2111
  %call = tail call zeroext i8 @ssa_operands_active() #6, !dbg !2112
  %tobool = icmp eq i8 %call, 0, !dbg !2112
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2114

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2115
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2115
  call fastcc void @gsi_start(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.gimple_seq_d* %seq) #7, !dbg !2115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2115
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2115
  br label %for.cond, !dbg !2117

for.cond:                                         ; preds = %for.body, %if.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2109, metadata !DIExpression(DW_OP_deref)), !dbg !2110
  %call1 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2118
  %tobool2 = icmp eq i8 %call1, 0, !dbg !2120
  br i1 %tobool2, label %for.body, label %cleanup.loopexit, !dbg !2121

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2109, metadata !DIExpression(DW_OP_deref)), !dbg !2110
  %call3 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2122
  call fastcc void @update_stmt_if_modified(%union.gimple_statement_d* %call3) #7, !dbg !2123
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2109, metadata !DIExpression(DW_OP_deref)), !dbg !2110
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2124
  br label %for.cond, !dbg !2125, !llvm.loop !2126

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !2128

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2128
  ret void, !dbg !2128
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_seq_after_without_update(%struct.gimple_stmt_iterator* %i, %struct.gimple_seq_d* %seq, i32 %mode) local_unnamed_addr #5 !dbg !2129 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2131, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !2132, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2133, metadata !DIExpression()), !dbg !2136
  %cmp = icmp eq %struct.gimple_seq_d* %seq, null, !dbg !2137
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !2139

if.end:                                           ; preds = %entry
  %seq1 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 1, !dbg !2140
  %0 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq1, align 8, !dbg !2140
  %cmp2 = icmp eq %struct.gimple_seq_d* %0, %seq, !dbg !2140
  br i1 %cmp2, label %cond.true, label %cond.end, !dbg !2140

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 263, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2140
  br label %cond.end, !dbg !2140

cond.end:                                         ; preds = %if.end, %cond.true
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* nonnull %seq) #7, !dbg !2141
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %call, metadata !2134, metadata !DIExpression()), !dbg !2136
  %call3 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* nonnull %seq) #7, !dbg !2142
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %call3, metadata !2135, metadata !DIExpression()), !dbg !2136
  tail call fastcc void @gimple_seq_set_first(%struct.gimple_seq_d* nonnull %seq, %struct.gimple_seq_node_d* null) #7, !dbg !2143
  tail call fastcc void @gimple_seq_set_last(%struct.gimple_seq_d* nonnull %seq, %struct.gimple_seq_node_d* null) #7, !dbg !2144
  tail call void @gimple_seq_free(%struct.gimple_seq_d* nonnull %seq) #6, !dbg !2145
  %tobool = icmp ne %struct.gimple_seq_node_d* %call, null, !dbg !2146
  %tobool4 = icmp ne %struct.gimple_seq_node_d* %call3, null, !dbg !2148
  %or.cond = and i1 %tobool, %tobool4, !dbg !2149
  br i1 %or.cond, label %if.end11, label %if.then5, !dbg !2149

if.then5:                                         ; preds = %cond.end
  %cmp6 = icmp eq %struct.gimple_seq_node_d* %call, %call3, !dbg !2150
  br i1 %cmp6, label %cleanup.cont, label %cond.true7, !dbg !2150

cond.true7:                                       ; preds = %if.then5
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 275, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2150
  br label %cleanup.cont, !dbg !2150

if.end11:                                         ; preds = %cond.end
  tail call fastcc void @gsi_insert_seq_nodes_after(%struct.gimple_stmt_iterator* %i, %struct.gimple_seq_node_d* nonnull %call, %struct.gimple_seq_node_d* nonnull %call3, i32 %mode) #7, !dbg !2152
  br label %cleanup.cont, !dbg !2153

cleanup.cont:                                     ; preds = %if.end11, %entry, %if.then5, %cond.true7
  ret void, !dbg !2153
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gsi_insert_seq_nodes_after(%struct.gimple_stmt_iterator* %i, %struct.gimple_seq_node_d* %first, %struct.gimple_seq_node_d* %last, i32 %m) unnamed_addr #5 !dbg !2154 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2156, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %first, metadata !2157, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %last, metadata !2158, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i32 %m, metadata !2159, metadata !DIExpression()), !dbg !2162
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2163
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2163
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %0, metadata !2161, metadata !DIExpression()), !dbg !2162
  %call = tail call fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !2164
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2160, metadata !DIExpression()), !dbg !2162
  %cmp = icmp eq %struct.basic_block_def* %call, null, !dbg !2166
  br i1 %cmp, label %if.end, label %if.then, !dbg !2167

if.then:                                          ; preds = %entry
  tail call fastcc void @update_bb_for_stmts(%struct.gimple_seq_node_d* %first, %struct.basic_block_def* nonnull %call) #7, !dbg !2168
  br label %if.end, !dbg !2168

if.end:                                           ; preds = %entry, %if.then
  %tobool = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2169
  br i1 %tobool, label %if.else10, label %if.then1, !dbg !2171

if.then1:                                         ; preds = %if.end
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2172
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2172
  %2 = load i64, i64* %1, align 8, !dbg !2172
  %next2 = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %last, i64 0, i32 2, !dbg !2174
  %3 = bitcast %struct.gimple_seq_node_d** %next2 to i64*, !dbg !2175
  store i64 %2, i64* %3, align 8, !dbg !2175
  %tobool4 = icmp eq i64 %2, 0, !dbg !2176
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !2178

if.then5:                                         ; preds = %if.then1
  %4 = inttoptr i64 %2 to %struct.gimple_seq_node_d*, !dbg !2178
  %prev = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %4, i64 0, i32 1, !dbg !2179
  store %struct.gimple_seq_node_d* %last, %struct.gimple_seq_node_d** %prev, align 8, !dbg !2180
  br label %if.end7, !dbg !2181

if.else:                                          ; preds = %if.then1
  %seq = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 1, !dbg !2182
  %5 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !2182
  tail call fastcc void @gimple_seq_set_last(%struct.gimple_seq_d* %5, %struct.gimple_seq_node_d* %last) #7, !dbg !2183
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %prev8 = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %first, i64 0, i32 1, !dbg !2184
  store %struct.gimple_seq_node_d* %0, %struct.gimple_seq_node_d** %prev8, align 8, !dbg !2185
  store %struct.gimple_seq_node_d* %first, %struct.gimple_seq_node_d** %next, align 8, !dbg !2186
  br label %if.end16, !dbg !2187

if.else10:                                        ; preds = %if.end
  %seq11 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 1, !dbg !2188
  %6 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq11, align 8, !dbg !2188
  %call12 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %6) #7, !dbg !2188
  %tobool13 = icmp eq %struct.gimple_seq_node_d* %call12, null, !dbg !2188
  br i1 %tobool13, label %cond.end, label %cond.true, !dbg !2188

cond.true:                                        ; preds = %if.else10
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 222, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2188
  br label %cond.end, !dbg !2188

cond.end:                                         ; preds = %if.else10, %cond.true
  %7 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq11, align 8, !dbg !2190
  tail call fastcc void @gimple_seq_set_first(%struct.gimple_seq_d* %7, %struct.gimple_seq_node_d* %first) #7, !dbg !2191
  %8 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq11, align 8, !dbg !2192
  tail call fastcc void @gimple_seq_set_last(%struct.gimple_seq_d* %8, %struct.gimple_seq_node_d* %last) #7, !dbg !2193
  br label %if.end16

if.end16:                                         ; preds = %cond.end, %if.end7
  switch i32 %m, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb18
    i32 1, label %sw.bb20
  ], !dbg !2194

sw.bb:                                            ; preds = %if.end16
  store %struct.gimple_seq_node_d* %first, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2195
  br label %sw.epilog, !dbg !2197

sw.bb18:                                          ; preds = %if.end16
  store %struct.gimple_seq_node_d* %last, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2198
  br label %sw.epilog, !dbg !2199

sw.bb20:                                          ; preds = %if.end16
  br i1 %tobool, label %cond.true22, label %sw.epilog, !dbg !2200

cond.true22:                                      ; preds = %sw.bb20
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 237, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2200
  br label %sw.epilog, !dbg !2200

sw.default:                                       ; preds = %if.end16
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2201
  br label %sw.epilog, !dbg !2202

sw.epilog:                                        ; preds = %sw.bb20, %cond.true22, %sw.default, %sw.bb18, %sw.bb
  ret void, !dbg !2203
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_seq_after(%struct.gimple_stmt_iterator* %i, %struct.gimple_seq_d* %seq, i32 %mode) local_unnamed_addr #5 !dbg !2204 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2206, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !2207, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2208, metadata !DIExpression()), !dbg !2209
  tail call fastcc void @update_modified_stmts(%struct.gimple_seq_d* %seq) #7, !dbg !2210
  tail call void @gsi_insert_seq_after_without_update(%struct.gimple_stmt_iterator* %i, %struct.gimple_seq_d* %seq, i32 %mode) #7, !dbg !2211
  ret void, !dbg !2212
}

; Function Attrs: nounwind uwtable
define dso_local %struct.gimple_seq_d* @gsi_split_seq_after(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) local_unnamed_addr #5 !dbg !2213 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2217, metadata !DIExpression()), !dbg !2222
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2223
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2223
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %0, metadata !2218, metadata !DIExpression()), !dbg !2224
  %tobool = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2225
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !2225

land.lhs.true:                                    ; preds = %entry
  %next1 = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2225
  %1 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %next1, align 8, !dbg !2225
  %tobool2 = icmp eq %struct.gimple_seq_node_d* %1, null, !dbg !2225
  br i1 %tobool2, label %cond.true, label %cond.end, !dbg !2225

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 308, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2225
  %next3.phi.trans.insert = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2224
  %.pre = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %next3.phi.trans.insert, align 8, !dbg !2226
  br label %cond.end, !dbg !2225

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %2 = phi %struct.gimple_seq_node_d* [ %1, %land.lhs.true ], [ %.pre, %cond.true ], !dbg !2226
  %next3 = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2226
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %2, metadata !2219, metadata !DIExpression()), !dbg !2224
  %seq = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 1, !dbg !2227
  %3 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !2227
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %3, metadata !2220, metadata !DIExpression()), !dbg !2224
  %call = tail call %struct.gimple_seq_d* @gimple_seq_alloc() #6, !dbg !2228
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2221, metadata !DIExpression()), !dbg !2224
  tail call fastcc void @gimple_seq_set_first(%struct.gimple_seq_d* %call, %struct.gimple_seq_node_d* %2) #7, !dbg !2229
  %call4 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %3) #7, !dbg !2230
  tail call fastcc void @gimple_seq_set_last(%struct.gimple_seq_d* %call, %struct.gimple_seq_node_d* %call4) #7, !dbg !2231
  tail call fastcc void @gimple_seq_set_last(%struct.gimple_seq_d* %3, %struct.gimple_seq_node_d* %0) #7, !dbg !2232
  store %struct.gimple_seq_node_d* null, %struct.gimple_seq_node_d** %next3, align 8, !dbg !2233
  %prev = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %2, i64 0, i32 1, !dbg !2234
  store %struct.gimple_seq_node_d* null, %struct.gimple_seq_node_d** %prev, align 8, !dbg !2235
  ret %struct.gimple_seq_d* %call, !dbg !2236
}

declare dso_local %struct.gimple_seq_d* @gimple_seq_alloc() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.gimple_seq_d* @gsi_split_seq_before(%struct.gimple_stmt_iterator* %i) local_unnamed_addr #5 !dbg !2237 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2241, metadata !DIExpression()), !dbg !2246
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2247
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2247
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %0, metadata !2242, metadata !DIExpression()), !dbg !2246
  %tobool = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2248
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2248

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 336, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2248
  br label %cond.end, !dbg !2248

cond.end:                                         ; preds = %entry, %cond.true
  %prev1 = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 1, !dbg !2249
  %1 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %prev1, align 8, !dbg !2249
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %1, metadata !2243, metadata !DIExpression()), !dbg !2246
  %seq = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 1, !dbg !2250
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !2250
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %2, metadata !2244, metadata !DIExpression()), !dbg !2246
  %call = tail call %struct.gimple_seq_d* @gimple_seq_alloc() #6, !dbg !2251
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2245, metadata !DIExpression()), !dbg !2246
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq, align 8, !dbg !2252
  tail call fastcc void @gimple_seq_set_first(%struct.gimple_seq_d* %call, %struct.gimple_seq_node_d* %0) #7, !dbg !2253
  %call3 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %2) #7, !dbg !2254
  tail call fastcc void @gimple_seq_set_last(%struct.gimple_seq_d* %call, %struct.gimple_seq_node_d* %call3) #7, !dbg !2255
  tail call fastcc void @gimple_seq_set_last(%struct.gimple_seq_d* %2, %struct.gimple_seq_node_d* %1) #7, !dbg !2256
  store %struct.gimple_seq_node_d* null, %struct.gimple_seq_node_d** %prev1, align 8, !dbg !2257
  %tobool5 = icmp eq %struct.gimple_seq_node_d* %1, null, !dbg !2258
  br i1 %tobool5, label %if.else, label %if.then, !dbg !2260

if.then:                                          ; preds = %cond.end
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %1, i64 0, i32 2, !dbg !2261
  store %struct.gimple_seq_node_d* null, %struct.gimple_seq_node_d** %next, align 8, !dbg !2262
  br label %if.end, !dbg !2263

if.else:                                          ; preds = %cond.end
  tail call fastcc void @gimple_seq_set_first(%struct.gimple_seq_d* %2, %struct.gimple_seq_node_d* null) #7, !dbg !2264
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %struct.gimple_seq_d* %call, !dbg !2265
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_replace(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %stmt, i8 zeroext %update_eh_info) local_unnamed_addr #5 !dbg !2266 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2270, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2271, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %update_eh_info, metadata !2272, metadata !DIExpression()), !dbg !2274
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2275
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2273, metadata !DIExpression()), !dbg !2274
  %cmp = icmp eq %union.gimple_statement_d* %call, %stmt, !dbg !2276
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !2278

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @gimple_has_lhs(%union.gimple_statement_d* %call) #7, !dbg !2279
  %tobool = icmp eq i8 %call1, 0, !dbg !2279
  br i1 %tobool, label %cond.end, label %lor.lhs.false, !dbg !2279

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %call) #6, !dbg !2279
  %call3 = tail call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %stmt) #6, !dbg !2279
  %cmp4 = icmp eq %union.tree_node* %call2, %call3, !dbg !2279
  br i1 %cmp4, label %cond.end, label %cond.true, !dbg !2279

cond.true:                                        ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 373, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2279
  br label %cond.end, !dbg !2279

cond.end:                                         ; preds = %if.end, %lor.lhs.false, %cond.true
  %call5 = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %call) #7, !dbg !2280
  tail call fastcc void @gimple_set_location(%union.gimple_statement_d* %stmt, i32 %call5) #7, !dbg !2281
  %call6 = tail call fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2282
  tail call void @gimple_set_bb(%union.gimple_statement_d* %stmt, %struct.basic_block_def* %call6) #6, !dbg !2283
  %tobool7 = icmp eq i8 %update_eh_info, 0, !dbg !2284
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !2286

if.then8:                                         ; preds = %cond.end
  %call9 = tail call zeroext i8 @maybe_clean_or_replace_eh_stmt(%union.gimple_statement_d* %call, %union.gimple_statement_d* %stmt) #6, !dbg !2287
  br label %if.end10, !dbg !2287

if.end10:                                         ; preds = %cond.end, %if.then8
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2288
  tail call void @gimple_duplicate_stmt_histograms(%struct.function* %0, %union.gimple_statement_d* %stmt, %struct.function* %0, %union.gimple_statement_d* %call) #6, !dbg !2289
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2290
  tail call void @gimple_remove_stmt_histograms(%struct.function* %1, %union.gimple_statement_d* %call) #6, !dbg !2291
  tail call fastcc void @delink_stmt_imm_use(%union.gimple_statement_d* %call) #7, !dbg !2292
  %call13 = tail call fastcc %union.gimple_statement_d** @gsi_stmt_ptr(%struct.gimple_stmt_iterator* %gsi) #7, !dbg !2293
  store %union.gimple_statement_d* %stmt, %union.gimple_statement_d** %call13, align 8, !dbg !2294
  tail call void @gimple_set_modified(%union.gimple_statement_d* %stmt, i8 zeroext 1) #6, !dbg !2295
  tail call fastcc void @update_modified_stmt(%union.gimple_statement_d* %stmt) #7, !dbg !2296
  br label %cleanup.cont, !dbg !2297

cleanup.cont:                                     ; preds = %if.end10, %entry
  ret void, !dbg !2297
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2298 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2302, metadata !DIExpression()), !dbg !2303
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2304
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2304
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2305
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2305
  ret %union.gimple_statement_d* %1, !dbg !2306
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2307 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2311, metadata !DIExpression()), !dbg !2312
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt) #7, !dbg !2313
  %tobool = icmp eq i8 %call, 0, !dbg !2313
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2314

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %stmt) #7, !dbg !2315
  %tobool3 = icmp eq i8 %call1, 0, !dbg !2315
  br i1 %tobool3, label %lor.end, label %land.rhs, !dbg !2316

land.rhs:                                         ; preds = %lor.rhs
  %call4 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !2317
  %cmp = icmp ne %union.tree_node* %call4, null, !dbg !2318
  %phitmp = zext i1 %cmp to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry, %land.rhs
  %0 = phi i8 [ 1, %entry ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2319
}

declare dso_local %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_location(%union.gimple_statement_d* %g, i32 %location) unnamed_addr #0 !dbg !2320 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2324, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i32 %location, metadata !2325, metadata !DIExpression()), !dbg !2326
  %location1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !2327
  store i32 %location, i32* %location1, align 8, !dbg !2328
  ret void, !dbg !2329
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2330 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2335, metadata !DIExpression()), !dbg !2336
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !2337
  %0 = load i32, i32* %location, align 8, !dbg !2337
  ret i32 %0, !dbg !2338
}

declare dso_local void @gimple_set_bb(%union.gimple_statement_d*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2339 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2343, metadata !DIExpression()), !dbg !2344
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 2, !dbg !2345
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2345
  ret %struct.basic_block_def* %0, !dbg !2346
}

declare dso_local zeroext i8 @maybe_clean_or_replace_eh_stmt(%union.gimple_statement_d*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gimple_duplicate_stmt_histograms(%struct.function*, %union.gimple_statement_d*, %struct.function*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gimple_remove_stmt_histograms(%struct.function*, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_stmt_imm_use(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2347 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2352, metadata !DIExpression()), !dbg !2367
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2368
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2368
  %call = tail call zeroext i8 @ssa_operands_active() #6, !dbg !2369
  %tobool = icmp eq i8 %call, 0, !dbg !2369
  br i1 %tobool, label %if.end, label %if.then, !dbg !2371

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2353, metadata !DIExpression(DW_OP_deref)), !dbg !2367
  %call1 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 5) #7, !dbg !2372
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call1, metadata !2366, metadata !DIExpression()), !dbg !2367
  br label %for.cond, !dbg !2372

for.cond:                                         ; preds = %for.body, %if.then
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call1, %if.then ], [ %call4, %for.body ], !dbg !2374
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !2366, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2353, metadata !DIExpression(DW_OP_deref)), !dbg !2367
  %call2 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2375
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2375
  br i1 %tobool3, label %for.body, label %if.end.loopexit, !dbg !2372

for.body:                                         ; preds = %for.cond
  call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use_p.0) #7, !dbg !2377
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2353, metadata !DIExpression(DW_OP_deref)), !dbg !2367
  %call4 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2375
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call4, metadata !2366, metadata !DIExpression()), !dbg !2367
  br label %for.cond, !dbg !2375, !llvm.loop !2378

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !2380

if.end:                                           ; preds = %if.end.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2380
  ret void, !dbg !2380
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d** @gsi_stmt_ptr(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2381 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2386, metadata !DIExpression()), !dbg !2387
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2388
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2388
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2389
  ret %union.gimple_statement_d** %stmt, !dbg !2390
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_modified_stmt(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2391 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2393, metadata !DIExpression()), !dbg !2394
  %call = tail call zeroext i8 @ssa_operands_active() #6, !dbg !2395
  %tobool = icmp eq i8 %call, 0, !dbg !2395
  br i1 %tobool, label %return, label %if.end, !dbg !2397

if.end:                                           ; preds = %entry
  tail call fastcc void @update_stmt_if_modified(%union.gimple_statement_d* %stmt) #7, !dbg !2398
  br label %return, !dbg !2399

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !2399
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_before_without_update(%struct.gimple_stmt_iterator* %i, %union.gimple_statement_d* %stmt, i32 %m) local_unnamed_addr #5 !dbg !2400 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2404, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2405, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i32 %m, metadata !2406, metadata !DIExpression()), !dbg !2408
  %call = tail call i8* @ggc_alloc_stat(i64 24) #6, !dbg !2409
  %0 = bitcast i8* %call to %struct.gimple_seq_node_d*, !dbg !2409
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %0, metadata !2407, metadata !DIExpression()), !dbg !2408
  %next = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2410
  %1 = bitcast i8* %next to %struct.gimple_seq_node_d**, !dbg !2410
  store %struct.gimple_seq_node_d* null, %struct.gimple_seq_node_d** %1, align 8, !dbg !2411
  %prev = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2412
  %2 = bitcast i8* %prev to %struct.gimple_seq_node_d**, !dbg !2412
  store %struct.gimple_seq_node_d* null, %struct.gimple_seq_node_d** %2, align 8, !dbg !2413
  %stmt1 = bitcast i8* %call to %union.gimple_statement_d**, !dbg !2414
  store %union.gimple_statement_d* %stmt, %union.gimple_statement_d** %stmt1, align 8, !dbg !2415
  tail call fastcc void @gsi_insert_seq_nodes_before(%struct.gimple_stmt_iterator* %i, %struct.gimple_seq_node_d* %0, %struct.gimple_seq_node_d* %0, i32 %m) #7, !dbg !2416
  ret void, !dbg !2417
}

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator* %i, %union.gimple_statement_d* %stmt, i32 %m) local_unnamed_addr #5 !dbg !2418 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2420, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2421, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 %m, metadata !2422, metadata !DIExpression()), !dbg !2423
  tail call fastcc void @update_modified_stmt(%union.gimple_statement_d* %stmt) #7, !dbg !2424
  tail call void @gsi_insert_before_without_update(%struct.gimple_stmt_iterator* %i, %union.gimple_statement_d* %stmt, i32 %m) #7, !dbg !2425
  ret void, !dbg !2426
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_after_without_update(%struct.gimple_stmt_iterator* %i, %union.gimple_statement_d* %stmt, i32 %m) local_unnamed_addr #5 !dbg !2427 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2429, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2430, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %m, metadata !2431, metadata !DIExpression()), !dbg !2433
  %call = tail call i8* @ggc_alloc_stat(i64 24) #6, !dbg !2434
  %0 = bitcast i8* %call to %struct.gimple_seq_node_d*, !dbg !2434
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %0, metadata !2432, metadata !DIExpression()), !dbg !2433
  %next = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2435
  %1 = bitcast i8* %next to %struct.gimple_seq_node_d**, !dbg !2435
  store %struct.gimple_seq_node_d* null, %struct.gimple_seq_node_d** %1, align 8, !dbg !2436
  %prev = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2437
  %2 = bitcast i8* %prev to %struct.gimple_seq_node_d**, !dbg !2437
  store %struct.gimple_seq_node_d* null, %struct.gimple_seq_node_d** %2, align 8, !dbg !2438
  %stmt1 = bitcast i8* %call to %union.gimple_statement_d**, !dbg !2439
  store %union.gimple_statement_d* %stmt, %union.gimple_statement_d** %stmt1, align 8, !dbg !2440
  tail call fastcc void @gsi_insert_seq_nodes_after(%struct.gimple_stmt_iterator* %i, %struct.gimple_seq_node_d* %0, %struct.gimple_seq_node_d* %0, i32 %m) #7, !dbg !2441
  ret void, !dbg !2442
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_after(%struct.gimple_stmt_iterator* %i, %union.gimple_statement_d* %stmt, i32 %m) local_unnamed_addr #5 !dbg !2443 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2445, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2446, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %m, metadata !2447, metadata !DIExpression()), !dbg !2448
  tail call fastcc void @update_modified_stmt(%union.gimple_statement_d* %stmt) #7, !dbg !2449
  tail call void @gsi_insert_after_without_update(%struct.gimple_stmt_iterator* %i, %union.gimple_statement_d* %stmt, i32 %m) #7, !dbg !2450
  ret void, !dbg !2451
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_remove(%struct.gimple_stmt_iterator* %i, i8 zeroext %remove_permanently) local_unnamed_addr #5 !dbg !2452 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2456, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8 %remove_permanently, metadata !2457, metadata !DIExpression()), !dbg !2462
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !2463
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2461, metadata !DIExpression()), !dbg !2462
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #7, !dbg !2464
  %cmp = icmp eq i32 %call1, 16, !dbg !2466
  br i1 %cmp, label %if.end, label %if.then, !dbg !2467

if.then:                                          ; preds = %entry
  tail call void @insert_debug_temps_for_defs(%struct.gimple_stmt_iterator* %i) #6, !dbg !2468
  br label %if.end, !dbg !2468

if.end:                                           ; preds = %entry, %if.then
  tail call void @gimple_set_bb(%union.gimple_statement_d* %call, %struct.basic_block_def* null) #6, !dbg !2469
  tail call fastcc void @delink_stmt_imm_use(%union.gimple_statement_d* %call) #7, !dbg !2470
  tail call void @gimple_set_modified(%union.gimple_statement_d* %call, i8 zeroext 1) #6, !dbg !2471
  %tobool = icmp eq i8 %remove_permanently, 0, !dbg !2472
  br i1 %tobool, label %if.end4, label %if.then2, !dbg !2474

if.then2:                                         ; preds = %if.end
  %call3 = tail call zeroext i8 @remove_stmt_from_eh_lp(%union.gimple_statement_d* %call) #6, !dbg !2475
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2477
  tail call void @gimple_remove_stmt_histograms(%struct.function* %0, %union.gimple_statement_d* %call) #6, !dbg !2478
  br label %if.end4, !dbg !2479

if.end4:                                          ; preds = %if.end, %if.then2
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2480
  %1 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2480
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %1, metadata !2458, metadata !DIExpression()), !dbg !2462
  %next5 = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %1, i64 0, i32 2, !dbg !2481
  %2 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %next5, align 8, !dbg !2481
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %2, metadata !2459, metadata !DIExpression()), !dbg !2462
  %prev6 = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %1, i64 0, i32 1, !dbg !2482
  %3 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %prev6, align 8, !dbg !2482
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %3, metadata !2460, metadata !DIExpression()), !dbg !2462
  %tobool7 = icmp eq %struct.gimple_seq_node_d* %3, null, !dbg !2483
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !2485

if.then8:                                         ; preds = %if.end4
  %next9 = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %3, i64 0, i32 2, !dbg !2486
  store %struct.gimple_seq_node_d* %2, %struct.gimple_seq_node_d** %next9, align 8, !dbg !2487
  br label %if.end10, !dbg !2488

if.else:                                          ; preds = %if.end4
  %seq = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 1, !dbg !2489
  %4 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !2489
  tail call fastcc void @gimple_seq_set_first(%struct.gimple_seq_d* %4, %struct.gimple_seq_node_d* %2) #7, !dbg !2490
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %tobool11 = icmp eq %struct.gimple_seq_node_d* %2, null, !dbg !2491
  br i1 %tobool11, label %if.else14, label %if.then12, !dbg !2493

if.then12:                                        ; preds = %if.end10
  %prev13 = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %2, i64 0, i32 1, !dbg !2494
  store %struct.gimple_seq_node_d* %3, %struct.gimple_seq_node_d** %prev13, align 8, !dbg !2495
  br label %if.end16, !dbg !2496

if.else14:                                        ; preds = %if.end10
  %seq15 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 1, !dbg !2497
  %5 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq15, align 8, !dbg !2497
  tail call fastcc void @gimple_seq_set_last(%struct.gimple_seq_d* %5, %struct.gimple_seq_node_d* %3) #7, !dbg !2498
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then12
  store %struct.gimple_seq_node_d* %2, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2499
  ret void, !dbg !2500
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2501 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2505, metadata !DIExpression()), !dbg !2506
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2507
  %bf.load = load i32, i32* %0, align 8, !dbg !2507
  %bf.clear = and i32 %bf.load, 255, !dbg !2507
  ret i32 %bf.clear, !dbg !2508
}

declare dso_local void @insert_debug_temps_for_defs(%struct.gimple_stmt_iterator*) local_unnamed_addr #2

declare dso_local zeroext i8 @remove_stmt_from_eh_lp(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gsi_for_stmt(%struct.gimple_stmt_iterator* noalias sret %agg.result, %union.gimple_statement_d* %stmt) local_unnamed_addr #5 !dbg !2509 {
entry:
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2513, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2514, metadata !DIExpression()), !dbg !2517
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #7, !dbg !2518
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2515, metadata !DIExpression()), !dbg !2516
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !2519
  %cmp = icmp eq i32 %call1, 16, !dbg !2521
  br i1 %cmp, label %if.then, label %if.else, !dbg !2522

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2523
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2523
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %call) #7, !dbg !2523
  %1 = bitcast %struct.gimple_stmt_iterator* %agg.result to i8*, !dbg !2523
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* nonnull align 8 %0, i64 24, i1 false), !dbg !2523
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2523
  br label %if.end, !dbg !2524

if.else:                                          ; preds = %entry
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp2 to i8*, !dbg !2525
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !2525
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp2, %struct.basic_block_def* %call) #7, !dbg !2525
  %3 = bitcast %struct.gimple_stmt_iterator* %agg.result to i8*, !dbg !2525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !2525
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !2525
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond, !dbg !2526

for.cond:                                         ; preds = %for.inc, %if.end
  %call3 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #7, !dbg !2527
  %tobool = icmp eq i8 %call3, 0, !dbg !2530
  br i1 %tobool, label %for.body, label %for.end, !dbg !2531

for.body:                                         ; preds = %for.cond
  %call4 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #7, !dbg !2532
  %cmp5 = icmp eq %union.gimple_statement_d* %call4, %stmt, !dbg !2534
  br i1 %cmp5, label %cleanup.loopexit, label %for.inc, !dbg !2535

for.inc:                                          ; preds = %for.body
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %agg.result) #7, !dbg !2536
  br label %for.cond, !dbg !2537, !llvm.loop !2538

for.end:                                          ; preds = %for.cond
  call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 527, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2540
  br label %cleanup, !dbg !2541

cleanup.loopexit:                                 ; preds = %for.body
  br label %cleanup, !dbg !2542

cleanup:                                          ; preds = %cleanup.loopexit, %for.end
  ret void, !dbg !2542
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2543 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2547, metadata !DIExpression()), !dbg !2548
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !2549
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2549
  ret %struct.basic_block_def* %0, !dbg !2550
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !2551 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2555, metadata !DIExpression()), !dbg !2556
  %call = tail call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb) #7, !dbg !2557
  tail call fastcc void @gsi_start(%struct.gimple_stmt_iterator* sret %agg.result, %struct.gimple_seq_d* %call) #7, !dbg !2558
  ret void, !dbg !2559
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2560 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2562, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2563, metadata !DIExpression()), !dbg !2566
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !2567
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2564, metadata !DIExpression()), !dbg !2565
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !2568
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2569
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2570
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2571
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2572
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2573
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2574
  ret void, !dbg !2575
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2576 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2580, metadata !DIExpression()), !dbg !2581
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2582
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2582
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2583
  %conv1 = zext i1 %cmp to i8, !dbg !2584
  ret i8 %conv1, !dbg !2585
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2586 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2590, metadata !DIExpression()), !dbg !2591
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2592
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2592
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2593
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2593
  %2 = load i64, i64* %1, align 8, !dbg !2593
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2594
  store i64 %2, i64* %3, align 8, !dbg !2594
  ret void, !dbg !2595
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_move_after(%struct.gimple_stmt_iterator* %from, %struct.gimple_stmt_iterator* %to) local_unnamed_addr #5 !dbg !2596 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %from, metadata !2600, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %to, metadata !2601, metadata !DIExpression()), !dbg !2603
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %from) #7, !dbg !2604
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2602, metadata !DIExpression()), !dbg !2603
  tail call void @gsi_remove(%struct.gimple_stmt_iterator* %from, i8 zeroext 0) #7, !dbg !2605
  tail call void @gsi_insert_after(%struct.gimple_stmt_iterator* %to, %union.gimple_statement_d* %call, i32 0) #7, !dbg !2606
  ret void, !dbg !2607
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_move_before(%struct.gimple_stmt_iterator* %from, %struct.gimple_stmt_iterator* %to) local_unnamed_addr #5 !dbg !2608 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %from, metadata !2610, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %to, metadata !2611, metadata !DIExpression()), !dbg !2613
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %from) #7, !dbg !2614
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2612, metadata !DIExpression()), !dbg !2613
  tail call void @gsi_remove(%struct.gimple_stmt_iterator* %from, i8 zeroext 0) #7, !dbg !2615
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %to, %union.gimple_statement_d* %call, i32 1) #7, !dbg !2616
  ret void, !dbg !2617
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_move_to_bb_end(%struct.gimple_stmt_iterator* %from, %struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !2618 {
entry:
  %last = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %from, metadata !2622, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2623, metadata !DIExpression()), !dbg !2625
  %0 = bitcast %struct.gimple_stmt_iterator* %last to i8*, !dbg !2626
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2626
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %last, metadata !2624, metadata !DIExpression(DW_OP_deref)), !dbg !2625
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %last, %struct.basic_block_def* %bb) #7, !dbg !2627
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %last, metadata !2624, metadata !DIExpression(DW_OP_deref)), !dbg !2625
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %last) #7, !dbg !2628
  %tobool = icmp eq i8 %call, 0, !dbg !2628
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !2630

land.lhs.true:                                    ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %last, metadata !2624, metadata !DIExpression(DW_OP_deref)), !dbg !2625
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %last) #7, !dbg !2631
  %call2 = call zeroext i8 @is_ctrl_stmt(%union.gimple_statement_d* %call1) #6, !dbg !2632
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2632
  br i1 %tobool3, label %if.else, label %if.then, !dbg !2633

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %last, metadata !2624, metadata !DIExpression(DW_OP_deref)), !dbg !2625
  call void @gsi_move_before(%struct.gimple_stmt_iterator* %from, %struct.gimple_stmt_iterator* nonnull %last) #7, !dbg !2634
  br label %if.end, !dbg !2634

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %last, metadata !2624, metadata !DIExpression(DW_OP_deref)), !dbg !2625
  call void @gsi_move_after(%struct.gimple_stmt_iterator* %from, %struct.gimple_stmt_iterator* nonnull %last) #7, !dbg !2635
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2636
  ret void, !dbg !2636
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2637 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2639, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2640, metadata !DIExpression()), !dbg !2643
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !2644
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2641, metadata !DIExpression()), !dbg !2642
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #7, !dbg !2645
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2646
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2647
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2648
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2649
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2650
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2651
  ret void, !dbg !2652
}

declare dso_local zeroext i8 @is_ctrl_stmt(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_on_edge(%struct.edge_def* %e, %union.gimple_statement_d* %stmt) local_unnamed_addr #5 !dbg !2653 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2657, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2658, metadata !DIExpression()), !dbg !2659
  %g = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 2, i32 0, !dbg !2660
  tail call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %g, %union.gimple_statement_d* %stmt) #6, !dbg !2661
  ret void, !dbg !2662
}

declare dso_local void @gimple_seq_add_stmt(%struct.gimple_seq_d**, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gsi_insert_seq_on_edge(%struct.edge_def* %e, %struct.gimple_seq_d* %seq) local_unnamed_addr #5 !dbg !2663 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2667, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !2668, metadata !DIExpression()), !dbg !2669
  %g = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 2, i32 0, !dbg !2670
  tail call void @gimple_seq_add_seq(%struct.gimple_seq_d** nonnull %g, %struct.gimple_seq_d* %seq) #6, !dbg !2671
  ret void, !dbg !2672
}

declare dso_local void @gimple_seq_add_seq(%struct.gimple_seq_d**, %struct.gimple_seq_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @gsi_insert_on_edge_immediate(%struct.edge_def* %e, %union.gimple_statement_d* %stmt) local_unnamed_addr #5 !dbg !2673 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %new_bb = alloca %struct.basic_block_def*, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2677, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2678, metadata !DIExpression()), !dbg !2681
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2682
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2682
  %1 = bitcast %struct.basic_block_def** %new_bb to i8*, !dbg !2683
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2683
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !2680, metadata !DIExpression()), !dbg !2681
  store %struct.basic_block_def* null, %struct.basic_block_def** %new_bb, align 8, !dbg !2684
  %g = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 2, i32 0, !dbg !2685
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %g, align 8, !dbg !2685
  %tobool = icmp eq %struct.gimple_seq_d* %2, null, !dbg !2685
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2685

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 700, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2685
  br label %cond.end, !dbg !2685

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2679, metadata !DIExpression(DW_OP_deref)), !dbg !2681
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %new_bb, metadata !2680, metadata !DIExpression(DW_OP_deref)), !dbg !2681
  %call = call fastcc zeroext i8 @gimple_find_edge_insert_loc(%struct.edge_def* %e, %struct.gimple_stmt_iterator* nonnull %gsi, %struct.basic_block_def** nonnull %new_bb) #7, !dbg !2686
  %tobool1 = icmp eq i8 %call, 0, !dbg !2686
  br i1 %tobool1, label %if.else, label %if.then, !dbg !2688

if.then:                                          ; preds = %cond.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2679, metadata !DIExpression(DW_OP_deref)), !dbg !2681
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %stmt, i32 0) #7, !dbg !2689
  br label %if.end, !dbg !2689

if.else:                                          ; preds = %cond.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2679, metadata !DIExpression(DW_OP_deref)), !dbg !2681
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %stmt, i32 0) #7, !dbg !2690
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8, !dbg !2691
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %3, metadata !2680, metadata !DIExpression()), !dbg !2681
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2692
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2692
  ret %struct.basic_block_def* %3, !dbg !2693
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @gimple_find_edge_insert_loc(%struct.edge_def* %e, %struct.gimple_stmt_iterator* %gsi, %struct.basic_block_def** %new_bb) unnamed_addr #5 !dbg !2694 {
entry:
  %tmp8 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp24 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp39 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2699, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2700, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %new_bb, metadata !2701, metadata !DIExpression()), !dbg !2706
  %dest1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !2707
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest1, align 8, !dbg !2707
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2702, metadata !DIExpression()), !dbg !2706
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp39 to i8*, !dbg !2708
  %2 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2708
  %tobool52 = icmp eq %struct.basic_block_def** %new_bb, null, !dbg !2711
  br i1 %tobool52, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !2713

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %restart, !dbg !2713

entry.split.us:                                   ; preds = %entry
  br label %restart.us, !dbg !2713

restart.us:                                       ; preds = %if.end50.us, %entry.split.us
  %dest.0.us = phi %struct.basic_block_def* [ %0, %entry.split.us ], [ %call51.us, %if.end50.us ], !dbg !2706
  %e.addr.0.us = phi %struct.edge_def* [ %e, %entry.split.us ], [ %call55.us, %if.end50.us ]
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.addr.0.us, metadata !2699, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest.0.us, metadata !2702, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.label(metadata !2705), !dbg !2714
  %call.us = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %dest.0.us) #7, !dbg !2715
  %tobool.us = icmp eq i8 %call.us, 0, !dbg !2715
  br i1 %tobool.us, label %if.end25.us, label %land.lhs.true.us, !dbg !2717

land.lhs.true.us:                                 ; preds = %restart.us
  %call2.us = call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %dest.0.us) #7, !dbg !2718
  %call3.us = call fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %call2.us) #7, !dbg !2719
  %tobool5.us = icmp eq i8 %call3.us, 0, !dbg !2719
  br i1 %tobool5.us, label %if.end25.us, label %land.lhs.true6.us, !dbg !2720

land.lhs.true6.us:                                ; preds = %land.lhs.true.us
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2721
  %cfg.us = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !2721
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg.us, align 8, !dbg !2721
  %x_exit_block_ptr.us = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !2721
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr.us, align 8, !dbg !2721
  %cmp.us = icmp eq %struct.basic_block_def* %dest.0.us, %5, !dbg !2722
  br i1 %cmp.us, label %if.end25.us, label %if.then.us-lcssa.us, !dbg !2723

if.end25.us:                                      ; preds = %land.lhs.true6.us, %land.lhs.true.us, %restart.us
  %src26.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.addr.0.us, i64 0, i32 0, !dbg !2724
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %src26.us, align 8, !dbg !2724
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %6, metadata !2703, metadata !DIExpression()), !dbg !2706
  %flags.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.addr.0.us, i64 0, i32 7, !dbg !2725
  %7 = load i32, i32* %flags.us, align 8, !dbg !2725
  %and.us = and i32 %7, 2, !dbg !2726
  %cmp27.us = icmp eq i32 %and.us, 0, !dbg !2727
  br i1 %cmp27.us, label %land.lhs.true29.us, label %if.end50.us, !dbg !2728

land.lhs.true29.us:                               ; preds = %if.end25.us
  %call30.us = call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %6) #7, !dbg !2729
  %tobool32.us = icmp eq i8 %call30.us, 0, !dbg !2729
  br i1 %tobool32.us, label %if.end50.us, label %land.lhs.true33.us, !dbg !2730

land.lhs.true33.us:                               ; preds = %land.lhs.true29.us
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2731
  %cfg35.us = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !2731
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg35.us, align 8, !dbg !2731
  %x_entry_block_ptr.us = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !2731
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr.us, align 8, !dbg !2731
  %cmp36.us = icmp eq %struct.basic_block_def* %6, %10, !dbg !2732
  br i1 %cmp36.us, label %if.end50.us, label %if.then38.us, !dbg !2733

if.then38.us:                                     ; preds = %land.lhs.true33.us
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2734
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp39, %struct.basic_block_def* %6) #7, !dbg !2734
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2734
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2734
  %call40.us = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2735
  %tobool41.us = icmp eq i8 %call40.us, 0, !dbg !2735
  br i1 %tobool41.us, label %if.end43.us, label %cleanup.loopexit.us-lcssa.us, !dbg !2737

if.end43.us:                                      ; preds = %if.then38.us
  %call44.us = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2738
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call44.us, metadata !2704, metadata !DIExpression()), !dbg !2706
  %call45.us = call zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d* %call44.us) #6, !dbg !2739
  %tobool46.us = icmp eq i8 %call45.us, 0, !dbg !2739
  br i1 %tobool46.us, label %cleanup.loopexit.us-lcssa.us, label %if.end48.us, !dbg !2741

if.end48.us:                                      ; preds = %if.end43.us
  %call49.us = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call44.us) #7, !dbg !2742
  switch i32 %call49.us, label %if.end50.us [
    i32 9, label %cleanup.loopexit.us-lcssa.us
    i32 14, label %cleanup.loopexit.us-lcssa.us
  ], !dbg !2743

if.end50.us:                                      ; preds = %if.end48.us, %land.lhs.true33.us, %land.lhs.true29.us, %if.end25.us
  %call51.us = call %struct.basic_block_def* @split_edge(%struct.edge_def* %e.addr.0.us) #6, !dbg !2744
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call51.us, metadata !2702, metadata !DIExpression()), !dbg !2706
  %call55.us = call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %call51.us) #7, !dbg !2745
  call void @llvm.dbg.value(metadata %struct.edge_def* %call55.us, metadata !2699, metadata !DIExpression()), !dbg !2706
  br label %restart.us, !dbg !2746

if.then.us-lcssa.us:                              ; preds = %land.lhs.true6.us
  %dest.0.us.lcssa = phi %struct.basic_block_def* [ %dest.0.us, %land.lhs.true6.us ], !dbg !2706
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest.0.us.lcssa, metadata !2702, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest.0.us.lcssa, metadata !2702, metadata !DIExpression()), !dbg !2706
  br label %if.then, !dbg !2747

cleanup.loopexit.us-lcssa.us:                     ; preds = %if.end48.us, %if.end48.us, %if.end43.us, %if.then38.us
  %retval.0.ph.ph.us = phi i8 [ 1, %if.then38.us ], [ 1, %if.end43.us ], [ 0, %if.end48.us ], [ 0, %if.end48.us ]
  br label %cleanup.loopexit, !dbg !2749

restart:                                          ; preds = %if.end50, %entry.entry.split_crit_edge
  %dest.0 = phi %struct.basic_block_def* [ %0, %entry.entry.split_crit_edge ], [ %call51, %if.end50 ], !dbg !2706
  %e.addr.0 = phi %struct.edge_def* [ %e, %entry.entry.split_crit_edge ], [ %call55, %if.end50 ]
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.addr.0, metadata !2699, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest.0, metadata !2702, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.label(metadata !2705), !dbg !2714
  %call = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %dest.0) #7, !dbg !2715
  %tobool = icmp eq i8 %call, 0, !dbg !2715
  br i1 %tobool, label %if.end25, label %land.lhs.true, !dbg !2717

land.lhs.true:                                    ; preds = %restart
  %call2 = call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %dest.0) #7, !dbg !2718
  %call3 = call fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %call2) #7, !dbg !2719
  %tobool5 = icmp eq i8 %call3, 0, !dbg !2719
  br i1 %tobool5, label %if.end25, label %land.lhs.true6, !dbg !2720

land.lhs.true6:                                   ; preds = %land.lhs.true
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2721
  %cfg = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 1, !dbg !2721
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2721
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 1, !dbg !2721
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2721
  %cmp = icmp eq %struct.basic_block_def* %dest.0, %13, !dbg !2722
  br i1 %cmp, label %if.end25, label %if.then.us-lcssa, !dbg !2723

if.then.us-lcssa:                                 ; preds = %land.lhs.true6
  %dest.0.lcssa7 = phi %struct.basic_block_def* [ %dest.0, %land.lhs.true6 ], !dbg !2706
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest.0.lcssa7, metadata !2702, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest.0.lcssa7, metadata !2702, metadata !DIExpression()), !dbg !2706
  br label %if.then, !dbg !2747

if.then:                                          ; preds = %if.then.us-lcssa.us, %if.then.us-lcssa
  %dest.0.lcssa = phi %struct.basic_block_def* [ %dest.0.lcssa7, %if.then.us-lcssa ], [ %dest.0.us.lcssa, %if.then.us-lcssa.us ], !dbg !2706
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest.0.lcssa, metadata !2702, metadata !DIExpression()), !dbg !2706
  %14 = bitcast %struct.gimple_stmt_iterator* %tmp8 to i8*, !dbg !2747
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #8, !dbg !2747
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp8, %struct.basic_block_def* %dest.0.lcssa) #7, !dbg !2747
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* nonnull align 8 %14, i64 24, i1 false), !dbg !2747
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #8, !dbg !2747
  %call9 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2750
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2750
  br i1 %tobool10, label %if.end, label %cleanup, !dbg !2752

if.end:                                           ; preds = %if.then
  %call12 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2753
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call12, metadata !2704, metadata !DIExpression()), !dbg !2706
  br label %while.cond, !dbg !2754

while.cond:                                       ; preds = %if.end19, %if.end
  %tmp.0 = phi %union.gimple_statement_d* [ %call12, %if.end ], [ %call20, %if.end19 ], !dbg !2755
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %tmp.0, metadata !2704, metadata !DIExpression()), !dbg !2706
  %call13 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %tmp.0) #7, !dbg !2756
  %cmp14 = icmp eq i32 %call13, 4, !dbg !2757
  br i1 %cmp14, label %while.body, label %while.end, !dbg !2754

while.body:                                       ; preds = %while.cond
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %gsi) #7, !dbg !2758
  %call16 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2760
  %tobool17 = icmp eq i8 %call16, 0, !dbg !2760
  br i1 %tobool17, label %if.end19, label %while.end, !dbg !2762

if.end19:                                         ; preds = %while.body
  %call20 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2763
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call20, metadata !2704, metadata !DIExpression()), !dbg !2706
  br label %while.cond, !dbg !2754, !llvm.loop !2764

while.end:                                        ; preds = %while.body, %while.cond
  %call21 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2766
  %tobool22 = icmp eq i8 %call21, 0, !dbg !2766
  br i1 %tobool22, label %cleanup, label %if.then23, !dbg !2768

if.then23:                                        ; preds = %while.end
  %15 = bitcast %struct.gimple_stmt_iterator* %tmp24 to i8*, !dbg !2769
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %15) #8, !dbg !2769
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp24, %struct.basic_block_def* %dest.0.lcssa) #7, !dbg !2769
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* nonnull align 8 %15, i64 24, i1 false), !dbg !2769
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15) #8, !dbg !2769
  br label %cleanup, !dbg !2771

if.end25:                                         ; preds = %land.lhs.true6, %land.lhs.true, %restart
  %src26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.addr.0, i64 0, i32 0, !dbg !2724
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %src26, align 8, !dbg !2724
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %16, metadata !2703, metadata !DIExpression()), !dbg !2706
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.addr.0, i64 0, i32 7, !dbg !2725
  %17 = load i32, i32* %flags, align 8, !dbg !2725
  %and = and i32 %17, 2, !dbg !2726
  %cmp27 = icmp eq i32 %and, 0, !dbg !2727
  br i1 %cmp27, label %land.lhs.true29, label %if.end50, !dbg !2728

land.lhs.true29:                                  ; preds = %if.end25
  %call30 = call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %16) #7, !dbg !2729
  %tobool32 = icmp eq i8 %call30, 0, !dbg !2729
  br i1 %tobool32, label %if.end50, label %land.lhs.true33, !dbg !2730

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %18 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2731
  %cfg35 = getelementptr inbounds %struct.function, %struct.function* %18, i64 0, i32 1, !dbg !2731
  %19 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg35, align 8, !dbg !2731
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %19, i64 0, i32 0, !dbg !2731
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2731
  %cmp36 = icmp eq %struct.basic_block_def* %16, %20, !dbg !2732
  br i1 %cmp36, label %if.end50, label %if.then38, !dbg !2733

if.then38:                                        ; preds = %land.lhs.true33
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2734
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp39, %struct.basic_block_def* %16) #7, !dbg !2734
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2734
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2734
  %call40 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2735
  %tobool41 = icmp eq i8 %call40, 0, !dbg !2735
  br i1 %tobool41, label %if.end43, label %cleanup.loopexit.us-lcssa, !dbg !2737

if.end43:                                         ; preds = %if.then38
  %call44 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2738
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call44, metadata !2704, metadata !DIExpression()), !dbg !2706
  %call45 = call zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d* %call44) #6, !dbg !2739
  %tobool46 = icmp eq i8 %call45, 0, !dbg !2739
  br i1 %tobool46, label %cleanup.loopexit.us-lcssa, label %if.end48, !dbg !2741

if.end48:                                         ; preds = %if.end43
  %call49 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call44) #7, !dbg !2742
  switch i32 %call49, label %if.end50 [
    i32 9, label %cleanup.loopexit.us-lcssa
    i32 14, label %cleanup.loopexit.us-lcssa
  ], !dbg !2743

if.end50:                                         ; preds = %land.lhs.true33, %land.lhs.true29, %if.end48, %if.end25
  %call51 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %e.addr.0) #6, !dbg !2744
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call51, metadata !2702, metadata !DIExpression()), !dbg !2706
  store %struct.basic_block_def* %call51, %struct.basic_block_def** %new_bb, align 8, !dbg !2772
  %call55 = call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %call51) #7, !dbg !2745
  call void @llvm.dbg.value(metadata %struct.edge_def* %call55, metadata !2699, metadata !DIExpression()), !dbg !2706
  br label %restart, !dbg !2746

cleanup.loopexit.us-lcssa:                        ; preds = %if.end43, %if.then38, %if.end48, %if.end48
  %retval.0.ph.ph = phi i8 [ 1, %if.then38 ], [ 1, %if.end43 ], [ 0, %if.end48 ], [ 0, %if.end48 ]
  br label %cleanup.loopexit, !dbg !2749

cleanup.loopexit:                                 ; preds = %cleanup.loopexit.us-lcssa.us, %cleanup.loopexit.us-lcssa
  %retval.0.ph = phi i8 [ %retval.0.ph.ph, %cleanup.loopexit.us-lcssa ], [ %retval.0.ph.ph.us, %cleanup.loopexit.us-lcssa.us ]
  br label %cleanup, !dbg !2749

cleanup:                                          ; preds = %cleanup.loopexit, %while.end, %if.then, %if.then23
  %retval.0 = phi i8 [ 1, %if.then23 ], [ 1, %if.then ], [ 0, %while.end ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !2706
  ret i8 %retval.0, !dbg !2749
}

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @gsi_insert_seq_on_edge_immediate(%struct.edge_def* %e, %struct.gimple_seq_d* %stmts) local_unnamed_addr #5 !dbg !2773 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %new_bb = alloca %struct.basic_block_def*, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2777, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %stmts, metadata !2778, metadata !DIExpression()), !dbg !2781
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2782
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2782
  %1 = bitcast %struct.basic_block_def** %new_bb to i8*, !dbg !2783
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2783
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !2780, metadata !DIExpression()), !dbg !2781
  store %struct.basic_block_def* null, %struct.basic_block_def** %new_bb, align 8, !dbg !2784
  %g = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 2, i32 0, !dbg !2785
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %g, align 8, !dbg !2785
  %tobool = icmp eq %struct.gimple_seq_d* %2, null, !dbg !2785
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2785

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 719, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2785
  br label %cond.end, !dbg !2785

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2779, metadata !DIExpression(DW_OP_deref)), !dbg !2781
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %new_bb, metadata !2780, metadata !DIExpression(DW_OP_deref)), !dbg !2781
  %call = call fastcc zeroext i8 @gimple_find_edge_insert_loc(%struct.edge_def* %e, %struct.gimple_stmt_iterator* nonnull %gsi, %struct.basic_block_def** nonnull %new_bb) #7, !dbg !2786
  %tobool1 = icmp eq i8 %call, 0, !dbg !2786
  br i1 %tobool1, label %if.else, label %if.then, !dbg !2788

if.then:                                          ; preds = %cond.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2779, metadata !DIExpression(DW_OP_deref)), !dbg !2781
  call void @gsi_insert_seq_after(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.gimple_seq_d* %stmts, i32 0) #7, !dbg !2789
  br label %if.end, !dbg !2789

if.else:                                          ; preds = %cond.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2779, metadata !DIExpression(DW_OP_deref)), !dbg !2781
  call void @gsi_insert_seq_before(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.gimple_seq_d* %stmts, i32 0) #7, !dbg !2790
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8, !dbg !2791
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %3, metadata !2780, metadata !DIExpression()), !dbg !2781
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2792
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2792
  ret %struct.basic_block_def* %3, !dbg !2793
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_commit_edge_inserts() local_unnamed_addr #5 !dbg !2794 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2807
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2807
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2808
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2808
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2809
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2809
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2809
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2809
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2809
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %4) #7, !dbg !2810
  tail call void @gsi_commit_one_edge_insert(%struct.edge_def* %call, %struct.basic_block_def** null) #7, !dbg !2811
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2812
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !2812
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !2812
  %x_entry_block_ptr3 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !2812
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr3, align 8, !dbg !2812
  %8 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2814
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2814
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2814
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2817
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2817
  br label %for.cond, !dbg !2812

for.cond:                                         ; preds = %for.inc10, %entry
  %13 = phi %struct.control_flow_graph* [ %6, %entry ], [ %.pre1, %for.inc10 ], !dbg !2819
  %.pn = phi %struct.basic_block_def* [ %7, %entry ], [ %bb.0, %for.inc10 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2820
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2820
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2798, metadata !DIExpression()), !dbg !2821
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %13, i64 0, i32 1, !dbg !2819
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2819
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %14, !dbg !2819
  br i1 %cmp, label %for.end12, label %for.body, !dbg !2812

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #8, !dbg !2822
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2822
  %call6 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2822
  %15 = extractvalue { i32, %struct.VEC_edge_gc** } %call6, 0, !dbg !2822
  store i32 %15, i32* %9, align 8, !dbg !2822
  %16 = extractvalue { i32, %struct.VEC_edge_gc** } %call6, 1, !dbg !2822
  store %struct.VEC_edge_gc** %16, %struct.VEC_edge_gc*** %10, align 8, !dbg !2822
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %8, i64 16, i1 false), !dbg !2822
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #8, !dbg !2822
  br label %for.cond7, !dbg !2822

for.cond7:                                        ; preds = %for.body9, %for.body
  %17 = load i32, i32* %11, align 8, !dbg !2823
  %18 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !2823
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2799, metadata !DIExpression(DW_OP_deref)), !dbg !2821
  %call8 = call fastcc zeroext i8 @ei_cond(i32 %17, %struct.VEC_edge_gc** %18, %struct.edge_def** nonnull %e) #7, !dbg !2823
  %tobool = icmp eq i8 %call8, 0, !dbg !2822
  br i1 %tobool, label %for.inc10, label %for.body9, !dbg !2822

for.body9:                                        ; preds = %for.cond7
  %19 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2824
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !2799, metadata !DIExpression()), !dbg !2821
  call void @gsi_commit_one_edge_insert(%struct.edge_def* %19, %struct.basic_block_def** null) #7, !dbg !2825
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2800, metadata !DIExpression(DW_OP_deref)), !dbg !2821
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2823
  br label %for.cond7, !dbg !2823, !llvm.loop !2826

for.inc10:                                        ; preds = %for.cond7
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2819
  %cfg5.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2828
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg5.phi.trans.insert, align 8, !dbg !2819
  br label %for.cond, !dbg !2819, !llvm.loop !2829

for.end12:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2831
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2831
  ret void, !dbg !2831
}

; Function Attrs: nounwind uwtable
define dso_local void @gsi_commit_one_edge_insert(%struct.edge_def* %e, %struct.basic_block_def** %new_bb) local_unnamed_addr #5 !dbg !2832 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2836, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %new_bb, metadata !2837, metadata !DIExpression()), !dbg !2842
  %tobool = icmp eq %struct.basic_block_def** %new_bb, null, !dbg !2843
  br i1 %tobool, label %if.end, label %if.then, !dbg !2845

if.then:                                          ; preds = %entry
  store %struct.basic_block_def* null, %struct.basic_block_def** %new_bb, align 8, !dbg !2846
  br label %if.end, !dbg !2847

if.end:                                           ; preds = %entry, %if.then
  %g = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 2, i32 0, !dbg !2848
  %0 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %g, align 8, !dbg !2848
  %tobool1 = icmp eq %struct.gimple_seq_d* %0, null, !dbg !2848
  br i1 %tobool1, label %if.end10, label %if.then2, !dbg !2849

if.then2:                                         ; preds = %if.end
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2850
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2850
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %0, metadata !2841, metadata !DIExpression()), !dbg !2851
  store %struct.gimple_seq_d* null, %struct.gimple_seq_d** %g, align 8, !dbg !2852
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2838, metadata !DIExpression(DW_OP_deref)), !dbg !2851
  %call = call fastcc zeroext i8 @gimple_find_edge_insert_loc(%struct.edge_def* %e, %struct.gimple_stmt_iterator* nonnull %gsi, %struct.basic_block_def** %new_bb) #7, !dbg !2853
  %tobool7 = icmp eq i8 %call, 0, !dbg !2853
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !2855

if.then8:                                         ; preds = %if.then2
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2838, metadata !DIExpression(DW_OP_deref)), !dbg !2851
  call void @gsi_insert_seq_after(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.gimple_seq_d* nonnull %0, i32 0) #7, !dbg !2856
  br label %if.end9, !dbg !2856

if.else:                                          ; preds = %if.then2
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2838, metadata !DIExpression(DW_OP_deref)), !dbg !2851
  call void @gsi_insert_seq_before(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.gimple_seq_d* nonnull %0, i32 0) #7, !dbg !2857
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2858
  br label %if.end10, !dbg !2859

if.end10:                                         ; preds = %if.end, %if.end9
  ret void, !dbg !2860
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2861 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2868, metadata !DIExpression()), !dbg !2869
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !2870
  %tobool = icmp eq i8 %call, 0, !dbg !2870
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2870

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2870
  br label %cond.end, !dbg !2870

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2871
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2871
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2871
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2871

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2871
  br label %cond.end5, !dbg !2871

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !2871
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !2871
  ret %struct.edge_def* %call7, !dbg !2872
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2873 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2877, metadata !DIExpression()), !dbg !2879
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2880
  store i32 0, i32* %index, align 8, !dbg !2881
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2882
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2883
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2884
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2884
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2884
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2885 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2891, metadata !DIExpression()), !dbg !2892
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2893
  %tobool = icmp eq i8 %call, 0, !dbg !2893
  br i1 %tobool, label %if.then, label %if.else, !dbg !2895

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2896
  br label %return, !dbg !2898

if.else:                                          ; preds = %entry
  br label %return, !dbg !2899

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2901
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2901
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2901
  ret i8 %retval.0, !dbg !2902
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2903 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2908, metadata !DIExpression()), !dbg !2909
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2910
  %0 = load i32, i32* %index, align 8, !dbg !2910
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2910
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2910
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !2910
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2910
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2910

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2910
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2910
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !2910
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2910
  br label %cond.end, !dbg !2910

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2910
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2910
  %cmp = icmp ult i32 %0, %call2, !dbg !2910
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2910

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2910
  br label %cond.end5, !dbg !2910

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2911
  %inc = add i32 %5, 1, !dbg !2911
  store i32 %inc, i32* %index, align 8, !dbg !2911
  ret void, !dbg !2912
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !2913 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !2917, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2918, metadata !DIExpression()), !dbg !2920
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %seq) #7, !dbg !2921
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2922
  store %struct.gimple_seq_node_d* %call, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2923
  %seq1 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2924
  store %struct.gimple_seq_d* %seq, %struct.gimple_seq_d** %seq1, align 8, !dbg !2925
  %tobool = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !2926
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !2927

land.lhs.true:                                    ; preds = %entry
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call, i64 0, i32 0, !dbg !2928
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2928
  %tobool4 = icmp eq %union.gimple_statement_d* %0, null, !dbg !2929
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !2930

cond.true:                                        ; preds = %land.lhs.true
  %call7 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* nonnull %0) #7, !dbg !2931
  br label %cond.end, !dbg !2930

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.basic_block_def* [ %call7, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !2930
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2932
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %bb, align 8, !dbg !2933
  ret void, !dbg !2934
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2935 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2939, metadata !DIExpression()), !dbg !2940
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !2941
  %0 = load i32, i32* %flags, align 8, !dbg !2941
  %and = and i32 %0, 512, !dbg !2941
  %tobool = icmp eq i32 %and, 0, !dbg !2941
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2941

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 510, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2941
  br label %cond.end, !dbg !2941

cond.end:                                         ; preds = %entry, %cond.true
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !2942
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !2942
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !2944
  br i1 %tobool1, label %return, label %if.end, !dbg !2945

if.end:                                           ; preds = %cond.end
  %phi_nodes = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 1, !dbg !2946
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %phi_nodes, align 8, !dbg !2946
  br label %return, !dbg !2947

return:                                           ; preds = %cond.end, %if.end
  %retval.0 = phi %struct.gimple_seq_d* [ %2, %if.end ], [ null, %cond.end ], !dbg !2940
  ret %struct.gimple_seq_d* %retval.0, !dbg !2948
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_bb_for_stmts(%struct.gimple_seq_node_d* %first, %struct.basic_block_def* %bb) unnamed_addr #5 !dbg !2949 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %first, metadata !2953, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2954, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %first, metadata !2955, metadata !DIExpression()), !dbg !2956
  br label %for.cond, !dbg !2957

for.cond:                                         ; preds = %for.body, %entry
  %n.0 = phi %struct.gimple_seq_node_d* [ %first, %entry ], [ %1, %for.body ], !dbg !2959
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %n.0, metadata !2955, metadata !DIExpression()), !dbg !2956
  %tobool = icmp eq %struct.gimple_seq_node_d* %n.0, null, !dbg !2960
  br i1 %tobool, label %for.end, label %for.body, !dbg !2960

for.body:                                         ; preds = %for.cond
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %n.0, i64 0, i32 0, !dbg !2961
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2961
  tail call void @gimple_set_bb(%union.gimple_statement_d* %0, %struct.basic_block_def* %bb) #6, !dbg !2963
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %n.0, i64 0, i32 2, !dbg !2964
  %1 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %next, align 8, !dbg !2964
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %1, metadata !2955, metadata !DIExpression()), !dbg !2956
  br label %for.cond, !dbg !2965, !llvm.loop !2966

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2968
}

declare dso_local zeroext i8 @ssa_operands_active() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt_if_modified(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !2969 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !2971, metadata !DIExpression()), !dbg !2972
  %call = tail call fastcc zeroext i8 @gimple_modified_p(%union.gimple_statement_d* %s) #7, !dbg !2973
  %tobool = icmp eq i8 %call, 0, !dbg !2973
  br i1 %tobool, label %if.end, label %if.then, !dbg !2975

if.then:                                          ; preds = %entry
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !2976
  br label %if.end, !dbg !2976

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2977
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_modified_p(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2978 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2982, metadata !DIExpression()), !dbg !2983
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !2984
  %tobool = icmp eq i8 %call, 0, !dbg !2985
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2985

cond.true:                                        ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2986
  %bf.load = load i32, i32* %0, align 8, !dbg !2986
  %bf.lshr = lshr i32 %bf.load, 13, !dbg !2986
  %1 = trunc i32 %bf.lshr to i8, !dbg !2987
  %conv1 = and i8 %1, 1, !dbg !2987
  br label %cond.end, !dbg !2985

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8 [ %conv1, %cond.true ], [ 0, %entry ]
  ret i8 %cond, !dbg !2988
}

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2989 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2991, metadata !DIExpression()), !dbg !2992
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2993
  %cmp = icmp eq i32 %call, 0, !dbg !2994
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !2995

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2996
  %cmp2 = icmp ult i32 %call1, 10, !dbg !2997
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2998
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2999 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3001, metadata !DIExpression()), !dbg !3002
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3003
  %cmp = icmp eq i32 %call, 6, !dbg !3004
  %conv1 = zext i1 %cmp to i8, !dbg !3003
  ret i8 %conv1, !dbg !3005
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3006 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3008, metadata !DIExpression()), !dbg !3009
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3010
  %cmp = icmp eq i32 %call, 8, !dbg !3011
  %conv1 = zext i1 %cmp to i8, !dbg !3010
  ret i8 %conv1, !dbg !3012
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3013 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3017, metadata !DIExpression()), !dbg !3018
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3019
  ret %union.tree_node* %call, !dbg !3020
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3021 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3025, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 0, metadata !3026, metadata !DIExpression()), !dbg !3027
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3028
  %tobool = icmp eq i8 %call, 0, !dbg !3028
  br i1 %tobool, label %return, label %if.then, !dbg !3030

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3031
  %0 = load %union.tree_node*, %union.tree_node** %call1, align 8, !dbg !3031
  br label %return, !dbg !3033

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3034
  ret %union.tree_node* %retval.0, !dbg !3035
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3036 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3040, metadata !DIExpression()), !dbg !3042
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3043
  %idxprom = zext i32 %call to i64, !dbg !3044
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3044
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %0, metadata !3041, metadata !DIExpression()), !dbg !3042
  %cmp = icmp eq i64 %0, 0, !dbg !3045
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3045

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3045
  br label %cond.end, !dbg !3045

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3046
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3047
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3048
  ret %union.tree_node** %2, !dbg !3049
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3050 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3054, metadata !DIExpression()), !dbg !3055
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3056
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3057
  ret i32 %call1, !dbg !3058
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3059 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3063, metadata !DIExpression()), !dbg !3064
  %idxprom = zext i32 %code to i64, !dbg !3065
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3065
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3065
  ret i32 %0, !dbg !3066
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3067 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3073, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 5, metadata !3074, metadata !DIExpression()), !dbg !3075
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 5) #7, !dbg !3076
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3077
  store i32 2, i32* %iter_type, align 4, !dbg !3078
  %call = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !3079
  ret %struct.ssa_use_operand_d* %call, !dbg !3080
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3081 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3087, metadata !DIExpression()), !dbg !3088
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3089
  %0 = load i8, i8* %done, align 8, !dbg !3089
  ret i8 %0, !dbg !3090
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !3091 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3095, metadata !DIExpression()), !dbg !3096
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3097
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3097
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !3099
  br i1 %cmp, label %return, label %if.end, !dbg !3100

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !3101
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3101
  %2 = load i64, i64* %1, align 8, !dbg !3101
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !3102
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !3103
  store i64 %2, i64* %3, align 8, !dbg !3103
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !3104
  %5 = load i64, i64* %4, align 8, !dbg !3104
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !3105
  %7 = load i64*, i64** %6, align 8, !dbg !3105
  store i64 %5, i64* %7, align 8, !dbg !3106
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3107
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !3108
  br label %return, !dbg !3109

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !3109
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3110 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3114, metadata !DIExpression()), !dbg !3116
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3117
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !3117
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !3119
  br i1 %tobool, label %if.end, label %if.then, !dbg !3120

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !3121
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !3115, metadata !DIExpression()), !dbg !3116
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !3123
  %2 = load i64, i64* %1, align 8, !dbg !3123
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3124
  store i64 %2, i64* %3, align 8, !dbg !3124
  br label %cleanup, !dbg !3125

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3126
  %4 = load i32, i32* %phi_i, align 8, !dbg !3126
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3128
  %5 = load i32, i32* %num_phi, align 4, !dbg !3128
  %cmp = icmp slt i32 %4, %5, !dbg !3129
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !3130

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3131
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3131
  %inc = add nsw i32 %4, 1, !dbg !3131
  store i32 %inc, i32* %phi_i, align 8, !dbg !3131
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #7, !dbg !3131
  br label %cleanup, !dbg !3133

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3134
  store i8 1, i8* %done, align 8, !dbg !3135
  br label %cleanup, !dbg !3136

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !3116
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3137
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3138 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3142, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3143, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i32 5, metadata !3144, metadata !DIExpression()), !dbg !3145
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3146
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !3147
  br i1 true, label %land.lhs.true16, label %entry.if.end_crit_edge, !dbg !3148

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end, !dbg !3148

land.lhs.true16:                                  ; preds = %entry
  br i1 true, label %if.end, label %land.lhs.true19, !dbg !3150

land.lhs.true19:                                  ; preds = %land.lhs.true16
  br i1 undef, label %land.lhs.true19.if.end_crit_edge, label %if.then, !dbg !3151

land.lhs.true19.if.end_crit_edge:                 ; preds = %land.lhs.true19
  br label %if.end, !dbg !3151

if.then:                                          ; preds = %land.lhs.true19
  br label %if.end, !dbg !3152

if.end:                                           ; preds = %land.lhs.true19.if.end_crit_edge, %entry.if.end_crit_edge, %land.lhs.true16, %if.then
  br i1 false, label %if.end.cond.end28_crit_edge, label %cond.true25, !dbg !3153

if.end.cond.end28_crit_edge:                      ; preds = %if.end
  br label %cond.end28, !dbg !3153

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3154
  br label %cond.end28, !dbg !3153

cond.end28:                                       ; preds = %if.end.cond.end28_crit_edge, %cond.true25
  %cond29 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ undef, %if.end.cond.end28_crit_edge ], !dbg !3153
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3155
  store %struct.use_optype_d* %cond29, %struct.use_optype_d** %uses, align 8, !dbg !3156
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3157
  store i8 0, i8* %done, align 8, !dbg !3158
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3159
  store i32 0, i32* %phi_i, align 8, !dbg !3160
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3161
  store i32 0, i32* %num_phi, align 4, !dbg !3162
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3163
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3164
  ret void, !dbg !3165
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3166 {
entry:
  unreachable, !dbg !3171
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3172 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3174, metadata !DIExpression()), !dbg !3175
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !3176
  %tobool = icmp eq i8 %call, 0, !dbg !3176
  br i1 %tobool, label %return, label %if.end, !dbg !3178

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !3179
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !3179
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3179
  br label %return, !dbg !3180

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3175
  ret %union.tree_node* %retval.0, !dbg !3181
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3182 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3186, metadata !DIExpression()), !dbg !3187
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !3188
  %tobool = icmp eq i8 %call, 0, !dbg !3188
  br i1 %tobool, label %return, label %if.end, !dbg !3190

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !3191
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !3191
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !3191
  br label %return, !dbg !3192

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3187
  ret %struct.use_optype_d* %retval.0, !dbg !3193
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3194 {
entry:
  unreachable, !dbg !3197
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3198 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3200, metadata !DIExpression()), !dbg !3201
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3202
  %cmp = icmp ugt i32 %call, 5, !dbg !3203
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3204

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3205
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3206
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3207
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3208 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3212, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 %i, metadata !3213, metadata !DIExpression()), !dbg !3214
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !3215
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3216
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3217
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3218 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3223, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i32 %index, metadata !3224, metadata !DIExpression()), !dbg !3225
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3226
  %0 = load i32, i32* %capacity, align 8, !dbg !3226
  %cmp = icmp ult i32 %0, %index, !dbg !3226
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3226

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3226
  br label %cond.end, !dbg !3226

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3227
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3227
  ret %struct.phi_arg_d* %arrayidx, !dbg !3228
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3229 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3231, metadata !DIExpression()), !dbg !3232
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3233
  %0 = load i32, i32* %flags, align 8, !dbg !3233
  %and = and i32 %0, 512, !dbg !3234
  %tobool = icmp eq i32 %and, 0, !dbg !3234
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3235

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3236
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3236
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3237
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3238

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3239
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3239
  br label %cond.end, !dbg !3238

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3238
  ret %struct.gimple_seq_d* %cond, !dbg !3240
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3241 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3245, metadata !DIExpression()), !dbg !3246
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3247
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3247
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3247
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3247

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3247
  br label %cond.end, !dbg !3247

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3247
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3247
  %cmp = icmp eq i32 %call, 1, !dbg !3248
  %conv2 = zext i1 %cmp to i8, !dbg !3247
  ret i8 %conv2, !dbg !3249
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3250 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3254, metadata !DIExpression()), !dbg !3255
  %cmp = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3256
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3257

lor.rhs:                                          ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3258
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3258
  %cmp1 = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3259
  %phitmp = zext i1 %cmp1 to i8, !dbg !3257
  br label %lor.end, !dbg !3257

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i8 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i8 %1, !dbg !3260
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3261 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3263, metadata !DIExpression()), !dbg !3264
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3265
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3265
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3265
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3265

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3265
  br label %cond.end, !dbg !3265

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3265
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3265
  %cmp = icmp eq i32 %call, 1, !dbg !3266
  %conv2 = zext i1 %cmp to i8, !dbg !3265
  ret i8 %conv2, !dbg !3267
}

declare dso_local zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3268 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3270, metadata !DIExpression()), !dbg !3271
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #7, !dbg !3272
  %tobool = icmp eq i8 %call, 0, !dbg !3272
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3272

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3272
  br label %cond.end, !dbg !3272

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3273
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3273
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3273
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3273

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3273
  br label %cond.end5, !dbg !3273

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3273
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !3273
  ret %struct.edge_def* %call7, !dbg !3274
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3275 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3281, metadata !DIExpression()), !dbg !3282
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3283
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3283

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3283
  %0 = load i32, i32* %num, align 8, !dbg !3283
  br label %cond.end, !dbg !3283

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3283
  ret i32 %cond, !dbg !3283
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3284 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3288, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3289, metadata !DIExpression()), !dbg !3290
  br label %land.end, !dbg !3291

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3291
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3291
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3291
  ret %struct.edge_def* %0, !dbg !3291
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3292 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3297
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3297
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3297

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3297
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3297
  br label %cond.end, !dbg !3297

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3297
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3297
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3298
  %conv3 = zext i1 %cmp to i8, !dbg !3299
  ret i8 %conv3, !dbg !3300
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3301 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3306
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3306
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3306

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3306
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3306
  br label %cond.end, !dbg !3306

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3306
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3306
  ret %struct.edge_def* %call2, !dbg !3307
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3308 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3313
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3313

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3313
  br label %cond.end, !dbg !3313

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3314
  ret %struct.VEC_edge_gc* %0, !dbg !3315
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
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1512, !1513, !1514}
!llvm.ident = !{!1515}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !324, nameTableKind: None)
!1 = !DIFile(filename: "gimple-iterator.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !10, !15, !20, !39, !46, !53, !247, !253, !279, !317}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !4, line: 363, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !4, line: 355, baseType: !5, size: 32, elements: !11)
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !16, line: 474, baseType: !5, size: 32, elements: !17)
!16 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!17 = !{!18, !19}
!18 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !21, line: 280, baseType: !5, size: 32, elements: !22)
!21 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!23 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!29 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!30 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!31 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!32 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!33 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!34 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!35 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!36 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!37 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!38 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !21, line: 1817, baseType: !5, size: 32, elements: !40)
!40 = !{!41, !42, !43, !44, !45}
!41 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!43 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!44 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!45 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !21, line: 1805, baseType: !5, size: 32, elements: !47)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!51 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!52 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !21, line: 39, baseType: !5, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!55 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!56 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!57 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!58 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!59 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!60 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!61 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!62 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!63 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!64 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!65 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!66 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!67 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!68 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!69 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!70 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!71 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!72 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!73 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!74 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!75 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!76 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!77 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!78 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!79 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!80 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!81 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!82 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!83 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!84 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!85 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!86 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!87 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!88 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!89 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!90 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!91 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!92 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!93 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!94 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!95 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!96 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!97 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!98 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!99 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!100 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!101 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!102 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!103 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!104 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!105 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!106 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!107 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!108 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!109 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!110 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!111 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!112 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!113 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!114 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!115 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!116 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!117 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!118 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!119 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!120 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!121 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!122 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!123 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!124 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!125 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!126 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!127 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!128 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!129 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!130 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!131 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!132 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!133 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!134 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!135 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!136 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!137 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!138 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!139 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!140 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!141 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!142 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!143 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!144 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!145 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!146 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!147 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!148 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!149 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!150 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!151 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!152 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!153 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!154 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!155 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!156 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!157 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!158 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!159 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!160 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!161 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!162 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!163 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!164 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!165 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!166 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!167 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!168 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!169 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!170 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!171 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!172 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!173 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!174 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!175 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!176 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!177 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!178 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!179 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!180 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!181 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!182 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!183 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!184 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!185 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!186 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!187 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!188 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!189 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!190 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!191 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!192 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!193 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!194 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!195 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!196 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!197 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!198 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!199 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!200 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!201 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!202 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!203 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!204 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!205 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!206 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!207 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!208 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!209 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!210 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!211 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!212 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!213 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!214 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!215 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!216 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!217 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!218 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!219 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!220 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!221 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!222 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!223 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!224 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!225 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!226 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!227 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!228 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!229 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!230 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!231 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!232 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!233 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!234 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!235 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!236 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!237 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!238 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!239 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!240 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!241 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!242 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!243 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!244 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!245 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!246 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gsi_iterator_update", file: !248, line: 4603, baseType: !5, size: 32, elements: !249)
!248 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!249 = !{!250, !251, !252}
!250 = !DIEnumerator(name: "GSI_NEW_STMT", value: 0, isUnsigned: true)
!251 = !DIEnumerator(name: "GSI_SAME_STMT", value: 1, isUnsigned: true)
!252 = !DIEnumerator(name: "GSI_CONTINUE_LINKING", value: 2, isUnsigned: true)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !248, line: 727, baseType: !5, size: 32, elements: !254)
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278}
!255 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!256 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!257 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!258 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!259 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!260 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!261 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!262 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!263 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!264 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!265 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!266 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!267 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!268 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!269 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!270 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!271 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!272 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!273 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!274 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!275 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!276 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!277 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!278 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !248, line: 51, baseType: !5, size: 32, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!281 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!282 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!283 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!284 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!285 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!286 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!287 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!288 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!289 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!290 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!291 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!292 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!293 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!294 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!295 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!296 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!297 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!298 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!299 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!300 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!301 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!302 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!303 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!304 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!305 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!306 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!307 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!308 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!309 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!310 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!311 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!312 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!313 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!314 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!315 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!316 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !318, line: 119, baseType: !5, size: 32, elements: !319)
!318 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322, !323}
!320 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!323 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!324 = !{!325, !326, !327, !328, !331, !332, !334, !403, !340, !1507, !861, !329, !1509}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!327 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !248, line: 136, size: 192, elements: !336)
!336 = !{!337, !1505, !1506}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !335, file: !248, line: 137, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !339, line: 58, baseType: !340)
!339 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !248, line: 737, size: 768, elements: !342)
!342 = !{!343, !1352, !1362, !1368, !1373, !1378, !1385, !1391, !1397, !1402, !1416, !1421, !1427, !1432, !1442, !1447, !1463, !1470, !1477, !1483, !1488, !1494, !1500}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !341, file: !248, line: 738, baseType: !344, size: 256)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !248, line: 271, size: 256, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !361, !362, !1351}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !344, file: !248, line: 274, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !344, file: !248, line: 277, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !344, file: !248, line: 281, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !344, file: !248, line: 284, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !344, file: !248, line: 291, baseType: !5, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !344, file: !248, line: 295, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !344, file: !248, line: 298, baseType: !5, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !344, file: !248, line: 301, baseType: !5, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !344, file: !248, line: 307, baseType: !5, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !344, file: !248, line: 312, baseType: !5, size: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !344, file: !248, line: 316, baseType: !357, size: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !358, line: 58, baseType: !359)
!358 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !360, line: 44, baseType: !5)
!360 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!361 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !344, file: !248, line: 319, baseType: !5, size: 32, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !344, file: !248, line: 323, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !4, line: 217, size: 832, elements: !365)
!365 = !{!366, !1316, !1317, !1318, !1321, !1325, !1326, !1327, !1345, !1346, !1347, !1348, !1349, !1350}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !364, file: !4, line: 219, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !4, line: 151, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !4, line: 151, size: 128, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !369, file: !4, line: 151, baseType: !372, size: 128)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !4, line: 150, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !4, line: 150, size: 128, elements: !374)
!374 = !{!375, !376, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !373, file: !4, line: 150, baseType: !5, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !373, file: !4, line: 150, baseType: !5, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !373, file: !4, line: 150, baseType: !378, size: 64, offset: 64)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 64, elements: !485)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !339, line: 108, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !4, line: 122, size: 512, elements: !382)
!382 = !{!383, !384, !385, !401, !402, !1310, !1311, !1312, !1313, !1314}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !381, file: !4, line: 124, baseType: !363, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !381, file: !4, line: 125, baseType: !363, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !381, file: !4, line: 131, baseType: !386, size: 64, offset: 128)
!386 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !4, line: 128, size: 64, elements: !387)
!387 = !{!388, !397}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !386, file: !4, line: 129, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !339, line: 66, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !248, line: 143, size: 192, elements: !392)
!392 = !{!393, !395, !396}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !391, file: !248, line: 145, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !339, line: 69, baseType: !334)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !391, file: !248, line: 146, baseType: !394, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !391, file: !248, line: 152, baseType: !389, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !386, file: !4, line: 130, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !339, line: 50, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !339, line: 49, flags: DIFlagFwdDecl)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !381, file: !4, line: 134, baseType: !331, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !381, file: !4, line: 137, baseType: !403, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !339, line: 56, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !21, line: 3371, size: 1792, elements: !406)
!406 = !{!407, !440, !446, !459, !466, !473, !478, !487, !493, !506, !514, !552, !557, !585, !602, !603, !608, !617, !623, !628, !632, !636, !959, !1008, !1014, !1020, !1027, !1040, !1054, !1071, !1083, !1105, !1120, !1292}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !405, file: !21, line: 3372, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !21, line: 360, size: 64, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !408, file: !21, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !408, file: !21, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !408, file: !21, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !408, file: !21, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !408, file: !21, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !408, file: !21, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !408, file: !21, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !408, file: !21, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !408, file: !21, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !408, file: !21, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !408, file: !21, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !408, file: !21, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !408, file: !21, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !408, file: !21, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !408, file: !21, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !408, file: !21, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !408, file: !21, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !408, file: !21, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !408, file: !21, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !408, file: !21, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !408, file: !21, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !408, file: !21, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !408, file: !21, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !408, file: !21, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !408, file: !21, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !408, file: !21, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !408, file: !21, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !408, file: !21, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !408, file: !21, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !408, file: !21, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !405, file: !21, line: 3373, baseType: !441, size: 192)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !21, line: 402, size: 192, elements: !442)
!442 = !{!443, !444, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !441, file: !21, line: 403, baseType: !408, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !441, file: !21, line: 404, baseType: !403, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !441, file: !21, line: 405, baseType: !403, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !405, file: !21, line: 3374, baseType: !447, size: 320)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !21, line: 1384, size: 320, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !447, file: !21, line: 1385, baseType: !441, size: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !447, file: !21, line: 1386, baseType: !451, size: 128, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !452, line: 58, baseType: !453)
!452 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !452, line: 54, size: 128, elements: !454)
!454 = !{!455, !457}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !453, file: !452, line: 56, baseType: !456, size: 64)
!456 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !453, file: !452, line: 57, baseType: !458, size: 64, offset: 64)
!458 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !405, file: !21, line: 3375, baseType: !460, size: 256)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !21, line: 1397, size: 256, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !460, file: !21, line: 1398, baseType: !441, size: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !460, file: !21, line: 1399, baseType: !464, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !21, line: 1392, flags: DIFlagFwdDecl)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !405, file: !21, line: 3376, baseType: !467, size: 256)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !21, line: 1408, size: 256, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !467, file: !21, line: 1409, baseType: !441, size: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !467, file: !21, line: 1410, baseType: !471, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !21, line: 1403, flags: DIFlagFwdDecl)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !405, file: !21, line: 3377, baseType: !474, size: 256)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !21, line: 1437, size: 256, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !474, file: !21, line: 1438, baseType: !441, size: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !474, file: !21, line: 1439, baseType: !403, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !405, file: !21, line: 3378, baseType: !479, size: 256)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !21, line: 1418, size: 256, elements: !480)
!480 = !{!481, !482, !483}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !479, file: !21, line: 1419, baseType: !441, size: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !479, file: !21, line: 1420, baseType: !327, size: 32, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !479, file: !21, line: 1421, baseType: !484, size: 8, offset: 224)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 8, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 1)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !405, file: !21, line: 3379, baseType: !488, size: 320)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !21, line: 1428, size: 320, elements: !489)
!489 = !{!490, !491, !492}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !488, file: !21, line: 1429, baseType: !441, size: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !488, file: !21, line: 1430, baseType: !403, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !488, file: !21, line: 1431, baseType: !403, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !405, file: !21, line: 3380, baseType: !494, size: 320)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !21, line: 1460, size: 320, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !494, file: !21, line: 1461, baseType: !441, size: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !494, file: !21, line: 1462, baseType: !498, size: 128, offset: 192)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !499, line: 31, size: 128, elements: !500)
!499 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!500 = !{!501, !504, !505}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !498, file: !499, line: 32, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !498, file: !499, line: 33, baseType: !5, size: 32, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !498, file: !499, line: 34, baseType: !5, size: 32, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !405, file: !21, line: 3381, baseType: !507, size: 384)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !21, line: 2507, size: 384, elements: !508)
!508 = !{!509, !510, !511, !512, !513}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !507, file: !21, line: 2508, baseType: !441, size: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !507, file: !21, line: 2509, baseType: !357, size: 32, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !507, file: !21, line: 2510, baseType: !5, size: 32, offset: 224)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !507, file: !21, line: 2511, baseType: !403, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !507, file: !21, line: 2512, baseType: !403, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !405, file: !21, line: 3382, baseType: !515, size: 896)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !21, line: 2652, size: 896, elements: !516)
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !515, file: !21, line: 2653, baseType: !507, size: 384)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !515, file: !21, line: 2654, baseType: !403, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !515, file: !21, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !515, file: !21, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !515, file: !21, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !515, file: !21, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !515, file: !21, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !515, file: !21, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !515, file: !21, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !515, file: !21, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !515, file: !21, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !515, file: !21, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !515, file: !21, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !515, file: !21, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !515, file: !21, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !515, file: !21, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !515, file: !21, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !515, file: !21, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !515, file: !21, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !515, file: !21, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !515, file: !21, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !515, file: !21, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !515, file: !21, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !515, file: !21, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !515, file: !21, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !515, file: !21, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !515, file: !21, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !515, file: !21, line: 2703, baseType: !5, size: 32, offset: 512)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !515, file: !21, line: 2705, baseType: !403, size: 64, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !515, file: !21, line: 2706, baseType: !403, size: 64, offset: 640)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !515, file: !21, line: 2707, baseType: !403, size: 64, offset: 704)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !515, file: !21, line: 2708, baseType: !403, size: 64, offset: 768)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !515, file: !21, line: 2711, baseType: !550, size: 64, offset: 832)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !21, line: 2711, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !405, file: !21, line: 3383, baseType: !553, size: 960)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !21, line: 2756, size: 960, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !553, file: !21, line: 2757, baseType: !515, size: 896)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !553, file: !21, line: 2758, baseType: !398, size: 64, offset: 896)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !405, file: !21, line: 3384, baseType: !558, size: 1472)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !21, line: 3114, size: 1472, elements: !559)
!559 = !{!560, !581, !582, !583, !584}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !558, file: !21, line: 3115, baseType: !561, size: 1216)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !21, line: 2984, size: 1216, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !561, file: !21, line: 2985, baseType: !553, size: 960)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !561, file: !21, line: 2986, baseType: !403, size: 64, offset: 960)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !561, file: !21, line: 2987, baseType: !403, size: 64, offset: 1024)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !561, file: !21, line: 2988, baseType: !403, size: 64, offset: 1088)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !561, file: !21, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !561, file: !21, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !561, file: !21, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !561, file: !21, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !561, file: !21, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !561, file: !21, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !561, file: !21, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !561, file: !21, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !561, file: !21, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !561, file: !21, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !561, file: !21, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !561, file: !21, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !561, file: !21, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !561, file: !21, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !558, file: !21, line: 3117, baseType: !403, size: 64, offset: 1216)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !558, file: !21, line: 3119, baseType: !403, size: 64, offset: 1280)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !558, file: !21, line: 3121, baseType: !403, size: 64, offset: 1344)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !558, file: !21, line: 3123, baseType: !403, size: 64, offset: 1408)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !405, file: !21, line: 3385, baseType: !586, size: 1088)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !21, line: 2874, size: 1088, elements: !587)
!587 = !{!588, !589, !590}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !586, file: !21, line: 2875, baseType: !553, size: 960)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !586, file: !21, line: 2876, baseType: !398, size: 64, offset: 960)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !586, file: !21, line: 2877, baseType: !591, size: 64, offset: 1024)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !593, line: 172, size: 128, elements: !594)
!593 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!594 = !{!595, !596, !597, !598, !599, !600, !601}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !592, file: !593, line: 174, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !592, file: !593, line: 178, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !592, file: !593, line: 183, baseType: !5, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !592, file: !593, line: 187, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !592, file: !593, line: 192, baseType: !5, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !592, file: !593, line: 195, baseType: !5, size: 32, offset: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !592, file: !593, line: 199, baseType: !403, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !405, file: !21, line: 3386, baseType: !561, size: 1216)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !405, file: !21, line: 3387, baseType: !604, size: 1280)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !21, line: 3093, size: 1280, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !604, file: !21, line: 3094, baseType: !561, size: 1216)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !604, file: !21, line: 3095, baseType: !591, size: 64, offset: 1216)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !405, file: !21, line: 3388, baseType: !609, size: 1216)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !21, line: 2824, size: 1216, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !609, file: !21, line: 2825, baseType: !515, size: 896)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !609, file: !21, line: 2827, baseType: !403, size: 64, offset: 896)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !609, file: !21, line: 2828, baseType: !403, size: 64, offset: 960)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !609, file: !21, line: 2829, baseType: !403, size: 64, offset: 1024)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !609, file: !21, line: 2830, baseType: !403, size: 64, offset: 1088)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !609, file: !21, line: 2831, baseType: !403, size: 64, offset: 1152)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !405, file: !21, line: 3389, baseType: !618, size: 1024)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !21, line: 2850, size: 1024, elements: !619)
!619 = !{!620, !621, !622}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !618, file: !21, line: 2851, baseType: !553, size: 960)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !618, file: !21, line: 2852, baseType: !327, size: 32, offset: 960)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !618, file: !21, line: 2853, baseType: !327, size: 32, offset: 992)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !405, file: !21, line: 3390, baseType: !624, size: 1024)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !21, line: 2857, size: 1024, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !624, file: !21, line: 2858, baseType: !553, size: 960)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !624, file: !21, line: 2859, baseType: !591, size: 64, offset: 960)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !405, file: !21, line: 3391, baseType: !629, size: 960)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !21, line: 2862, size: 960, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !629, file: !21, line: 2863, baseType: !553, size: 960)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !405, file: !21, line: 3392, baseType: !633, size: 1472)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !21, line: 3304, size: 1472, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !633, file: !21, line: 3305, baseType: !558, size: 1472)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !405, file: !21, line: 3393, baseType: !637, size: 1792)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !21, line: 3248, size: 1792, elements: !638)
!638 = !{!639, !640, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !637, file: !21, line: 3249, baseType: !558, size: 1472)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !637, file: !21, line: 3251, baseType: !641, size: 64, offset: 1472)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !643, line: 463, size: 1152, elements: !644)
!643 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!644 = !{!645, !648, !681, !682, !879, !882, !883, !884, !885, !886, !887, !911, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !642, file: !643, line: 464, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !643, line: 464, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !642, file: !643, line: 467, baseType: !649, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !4, line: 374, size: 640, elements: !651)
!651 = !{!652, !654, !655, !668, !669, !670, !671, !672, !673, !677, !679, !680}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !650, file: !4, line: 377, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !339, line: 111, baseType: !363)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !650, file: !4, line: 378, baseType: !653, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !650, file: !4, line: 381, baseType: !656, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !4, line: 282, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !4, line: 282, size: 128, elements: !659)
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !658, file: !4, line: 282, baseType: !661, size: 128)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !4, line: 281, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !4, line: 281, size: 128, elements: !663)
!663 = !{!664, !665, !666}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !662, file: !4, line: 281, baseType: !5, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !662, file: !4, line: 281, baseType: !5, size: 32, offset: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !662, file: !4, line: 281, baseType: !667, size: 64, offset: 64)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 64, elements: !485)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !650, file: !4, line: 384, baseType: !327, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !650, file: !4, line: 387, baseType: !327, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !650, file: !4, line: 390, baseType: !327, size: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !650, file: !4, line: 394, baseType: !656, size: 64, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !650, file: !4, line: 396, baseType: !3, size: 32, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !650, file: !4, line: 399, baseType: !674, size: 64, offset: 416)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !675)
!675 = !{!676}
!676 = !DISubrange(count: 2)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !650, file: !4, line: 402, baseType: !678, size: 64, offset: 480)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !675)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !650, file: !4, line: 406, baseType: !327, size: 32, offset: 544)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !650, file: !4, line: 409, baseType: !327, size: 32, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !642, file: !643, line: 470, baseType: !390, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !642, file: !643, line: 473, baseType: !683, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !593, line: 39, size: 1152, elements: !685)
!685 = !{!686, !738, !751, !764, !765, !834, !835, !839, !840, !841, !842, !843}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !684, file: !593, line: 41, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !688, line: 144, baseType: !689)
!688 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !688, line: 100, size: 896, elements: !691)
!691 = !{!692, !700, !705, !710, !712, !715, !716, !717, !718, !719, !724, !726, !727, !732, !737}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !690, file: !688, line: 102, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !688, line: 52, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !688, line: 47, baseType: !5)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !690, file: !688, line: 105, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !688, line: 59, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!327, !698, !698}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !690, file: !688, line: 108, baseType: !706, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !688, line: 63, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !331}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !690, file: !688, line: 111, baseType: !711, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !690, file: !688, line: 114, baseType: !713, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !714, line: 46, baseType: !456)
!714 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!715 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !690, file: !688, line: 117, baseType: !713, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !690, file: !688, line: 120, baseType: !713, size: 64, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !690, file: !688, line: 124, baseType: !5, size: 32, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !690, file: !688, line: 128, baseType: !5, size: 32, offset: 480)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !690, file: !688, line: 131, baseType: !720, size: 64, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !688, line: 75, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!331, !713, !713}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !690, file: !688, line: 132, baseType: !725, size: 64, offset: 576)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !688, line: 78, baseType: !707)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !690, file: !688, line: 135, baseType: !331, size: 64, offset: 640)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !690, file: !688, line: 136, baseType: !728, size: 64, offset: 704)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !688, line: 82, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!331, !331, !713, !713}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !690, file: !688, line: 137, baseType: !733, size: 64, offset: 768)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !688, line: 83, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !331, !331}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !690, file: !688, line: 141, baseType: !5, size: 32, offset: 832)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !684, file: !593, line: 48, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !248, line: 35, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !248, line: 35, size: 128, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !741, file: !248, line: 35, baseType: !744, size: 128)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !248, line: 33, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !248, line: 33, size: 128, elements: !746)
!746 = !{!747, !748, !749}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !745, file: !248, line: 33, baseType: !5, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !745, file: !248, line: 33, baseType: !5, size: 32, offset: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !745, file: !248, line: 33, baseType: !750, size: 64, offset: 64)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 64, elements: !485)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !684, file: !593, line: 51, baseType: !752, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !21, line: 183, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !21, line: 183, size: 128, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !754, file: !21, line: 183, baseType: !757, size: 128)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !21, line: 182, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !21, line: 182, size: 128, elements: !759)
!759 = !{!760, !761, !762}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !758, file: !21, line: 182, baseType: !5, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !758, file: !21, line: 182, baseType: !5, size: 32, offset: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !758, file: !21, line: 182, baseType: !763, size: 64, offset: 64)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 64, elements: !485)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !684, file: !593, line: 54, baseType: !403, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !684, file: !593, line: 57, baseType: !766, size: 128, offset: 256)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !767, line: 31, size: 128, elements: !768)
!767 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!768 = !{!769, !770, !771, !772, !773, !774, !775}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !766, file: !767, line: 35, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !766, file: !767, line: 39, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !766, file: !767, line: 42, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !766, file: !767, line: 46, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !766, file: !767, line: 50, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !766, file: !767, line: 53, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !766, file: !767, line: 56, baseType: !776, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !339, line: 47, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !779, line: 75, size: 256, elements: !780)
!779 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!780 = !{!781, !793, !794, !795}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !778, file: !779, line: 76, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !779, line: 68, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !779, line: 63, size: 320, elements: !785)
!785 = !{!786, !788, !789, !790}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !784, file: !779, line: 64, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !784, file: !779, line: 65, baseType: !787, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !784, file: !779, line: 66, baseType: !5, size: 32, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !784, file: !779, line: 67, baseType: !791, size: 128, offset: 192)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !792, size: 128, elements: !675)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !779, line: 29, baseType: !456)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !778, file: !779, line: 77, baseType: !782, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !778, file: !779, line: 78, baseType: !5, size: 32, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !778, file: !779, line: 79, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !779, line: 49, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !779, line: 45, size: 832, elements: !799)
!799 = !{!800, !801, !802}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !798, file: !779, line: 46, baseType: !787, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !798, file: !779, line: 47, baseType: !777, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !798, file: !779, line: 48, baseType: !803, size: 704, offset: 128)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !804, line: 164, size: 704, elements: !805)
!804 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!805 = !{!806, !807, !817, !818, !819, !820, !821, !822, !826, !830, !831, !832, !833}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !803, file: !804, line: 166, baseType: !458, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !803, file: !804, line: 167, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !804, line: 157, size: 192, elements: !810)
!810 = !{!811, !812, !813}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !809, file: !804, line: 159, baseType: !329, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !809, file: !804, line: 160, baseType: !808, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !809, file: !804, line: 161, baseType: !814, size: 32, offset: 128)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 32, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 4)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !803, file: !804, line: 168, baseType: !329, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !803, file: !804, line: 169, baseType: !329, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !803, file: !804, line: 170, baseType: !329, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !803, file: !804, line: 171, baseType: !458, size: 64, offset: 320)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !803, file: !804, line: 172, baseType: !327, size: 32, offset: 384)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !803, file: !804, line: 176, baseType: !823, size: 64, offset: 448)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!808, !331, !458}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !803, file: !804, line: 177, baseType: !827, size: 64, offset: 512)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !331, !808}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !803, file: !804, line: 178, baseType: !331, size: 64, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !803, file: !804, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !803, file: !804, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !803, file: !804, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !684, file: !593, line: 60, baseType: !766, size: 128, offset: 384)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !684, file: !593, line: 64, baseType: !836, size: 64, offset: 512)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !838, line: 33, flags: DIFlagFwdDecl)
!838 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!839 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !684, file: !593, line: 67, baseType: !403, size: 64, offset: 576)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !684, file: !593, line: 73, baseType: !687, size: 64, offset: 640)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !684, file: !593, line: 77, baseType: !776, size: 64, offset: 704)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !684, file: !593, line: 80, baseType: !5, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !684, file: !593, line: 82, baseType: !844, size: 320, offset: 832)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !318, line: 62, size: 320, elements: !845)
!845 = !{!846, !852, !853, !854, !855, !862}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !844, file: !318, line: 63, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !318, line: 56, size: 128, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !848, file: !318, line: 57, baseType: !847, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !848, file: !318, line: 58, baseType: !484, size: 8, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !844, file: !318, line: 64, baseType: !5, size: 32, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !844, file: !318, line: 66, baseType: !5, size: 32, offset: 96)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !844, file: !318, line: 68, baseType: !326, size: 8, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !844, file: !318, line: 70, baseType: !856, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !318, line: 37, size: 128, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !857, file: !318, line: 39, baseType: !856, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !857, file: !318, line: 40, baseType: !861, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !844, file: !318, line: 71, baseType: !863, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !318, line: 45, size: 320, elements: !865)
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !864, file: !318, line: 47, baseType: !863, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !864, file: !318, line: 48, baseType: !868, size: 256, offset: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !21, line: 1883, size: 256, elements: !869)
!869 = !{!870, !872, !873, !878}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !868, file: !21, line: 1884, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !868, file: !21, line: 1885, baseType: !871, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !868, file: !21, line: 1891, baseType: !874, size: 64, offset: 128)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !868, file: !21, line: 1891, size: 64, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !874, file: !21, line: 1891, baseType: !338, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !874, file: !21, line: 1891, baseType: !403, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !868, file: !21, line: 1892, baseType: !861, size: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !642, file: !643, line: 476, baseType: !880, size: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !643, line: 476, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !642, file: !643, line: 479, baseType: !687, size: 64, offset: 320)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !642, file: !643, line: 484, baseType: !403, size: 64, offset: 384)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !642, file: !643, line: 488, baseType: !403, size: 64, offset: 448)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !642, file: !643, line: 493, baseType: !403, size: 64, offset: 512)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !642, file: !643, line: 496, baseType: !403, size: 64, offset: 576)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !642, file: !643, line: 501, baseType: !888, size: 64, offset: 640)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !16, line: 2355, size: 576, elements: !890)
!890 = !{!891, !894, !895, !896, !897, !899, !900, !905, !906, !907, !908, !909, !910}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !889, file: !16, line: 2356, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !16, line: 2356, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !889, file: !16, line: 2357, baseType: !332, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !889, file: !16, line: 2358, baseType: !327, size: 32, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !889, file: !16, line: 2359, baseType: !327, size: 32, offset: 160)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !889, file: !16, line: 2360, baseType: !898, size: 128, offset: 192)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 128, elements: !815)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !889, file: !16, line: 2364, baseType: !327, size: 32, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !889, file: !16, line: 2367, baseType: !901, size: 128, offset: 384)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !16, line: 2349, size: 128, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !901, file: !16, line: 2351, baseType: !398, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !901, file: !16, line: 2352, baseType: !458, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !889, file: !16, line: 2371, baseType: !15, size: 32, offset: 512)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !889, file: !16, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !889, file: !16, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !889, file: !16, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !889, file: !16, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !889, file: !16, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !642, file: !643, line: 504, baseType: !912, size: 64, offset: 704)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !643, line: 504, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !642, file: !643, line: 507, baseType: !687, size: 64, offset: 768)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !642, file: !643, line: 510, baseType: !327, size: 32, offset: 832)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !642, file: !643, line: 513, baseType: !327, size: 32, offset: 864)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !642, file: !643, line: 516, baseType: !357, size: 32, offset: 896)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !642, file: !643, line: 519, baseType: !357, size: 32, offset: 928)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !642, file: !643, line: 522, baseType: !5, size: 32, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !642, file: !643, line: 523, baseType: !5, size: 32, offset: 992)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !642, file: !643, line: 528, baseType: !332, size: 64, offset: 1024)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !642, file: !643, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !642, file: !643, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !642, file: !643, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !642, file: !643, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !642, file: !643, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !642, file: !643, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !642, file: !643, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !642, file: !643, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !642, file: !643, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !642, file: !643, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !642, file: !643, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !642, file: !643, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !642, file: !643, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !642, file: !643, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !642, file: !643, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !642, file: !643, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !637, file: !21, line: 3254, baseType: !403, size: 64, offset: 1536)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !637, file: !21, line: 3257, baseType: !403, size: 64, offset: 1600)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !637, file: !21, line: 3258, baseType: !403, size: 64, offset: 1664)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !637, file: !21, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !637, file: !21, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !637, file: !21, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !637, file: !21, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !637, file: !21, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !637, file: !21, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !637, file: !21, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !637, file: !21, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !637, file: !21, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !637, file: !21, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !637, file: !21, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !637, file: !21, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !637, file: !21, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !637, file: !21, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !637, file: !21, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !637, file: !21, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !637, file: !21, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !637, file: !21, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !405, file: !21, line: 3394, baseType: !960, size: 1344)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !21, line: 2279, size: 1344, elements: !961)
!961 = !{!962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !987, !988, !989, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !960, file: !21, line: 2280, baseType: !441, size: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !960, file: !21, line: 2281, baseType: !403, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !960, file: !21, line: 2282, baseType: !403, size: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !960, file: !21, line: 2283, baseType: !403, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !960, file: !21, line: 2284, baseType: !403, size: 64, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !960, file: !21, line: 2285, baseType: !5, size: 32, offset: 448)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !960, file: !21, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !960, file: !21, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !960, file: !21, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !960, file: !21, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !960, file: !21, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !960, file: !21, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !960, file: !21, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !960, file: !21, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !960, file: !21, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !960, file: !21, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !960, file: !21, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !960, file: !21, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !960, file: !21, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !960, file: !21, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !960, file: !21, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !960, file: !21, line: 2305, baseType: !5, size: 32, offset: 512)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !960, file: !21, line: 2306, baseType: !985, size: 32, offset: 544)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !986, line: 31, baseType: !327)
!986 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !960, file: !21, line: 2307, baseType: !403, size: 64, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !960, file: !21, line: 2308, baseType: !403, size: 64, offset: 640)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !960, file: !21, line: 2314, baseType: !990, size: 64, offset: 704)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !21, line: 2309, size: 64, elements: !991)
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !990, file: !21, line: 2310, baseType: !327, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !990, file: !21, line: 2311, baseType: !332, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !990, file: !21, line: 2312, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !21, line: 2277, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !960, file: !21, line: 2315, baseType: !403, size: 64, offset: 768)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !960, file: !21, line: 2316, baseType: !403, size: 64, offset: 832)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !960, file: !21, line: 2317, baseType: !403, size: 64, offset: 896)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !960, file: !21, line: 2318, baseType: !403, size: 64, offset: 960)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !960, file: !21, line: 2319, baseType: !403, size: 64, offset: 1024)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !960, file: !21, line: 2320, baseType: !403, size: 64, offset: 1088)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !960, file: !21, line: 2321, baseType: !403, size: 64, offset: 1152)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !960, file: !21, line: 2322, baseType: !403, size: 64, offset: 1216)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !960, file: !21, line: 2324, baseType: !1006, size: 64, offset: 1280)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !21, line: 2324, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !405, file: !21, line: 3395, baseType: !1009, size: 320)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !21, line: 1469, size: 320, elements: !1010)
!1010 = !{!1011, !1012, !1013}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1009, file: !21, line: 1470, baseType: !441, size: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1009, file: !21, line: 1471, baseType: !403, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1009, file: !21, line: 1472, baseType: !403, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !405, file: !21, line: 3396, baseType: !1015, size: 320)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !21, line: 1482, size: 320, elements: !1016)
!1016 = !{!1017, !1018, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1015, file: !21, line: 1483, baseType: !441, size: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1015, file: !21, line: 1484, baseType: !327, size: 32, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1015, file: !21, line: 1485, baseType: !763, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !405, file: !21, line: 3397, baseType: !1021, size: 384)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !21, line: 1829, size: 384, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1021, file: !21, line: 1830, baseType: !441, size: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1021, file: !21, line: 1831, baseType: !357, size: 32, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1021, file: !21, line: 1832, baseType: !403, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1021, file: !21, line: 1835, baseType: !763, size: 64, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !405, file: !21, line: 3398, baseType: !1028, size: 704)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !21, line: 1898, size: 704, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033, !1034, !1039}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1028, file: !21, line: 1899, baseType: !441, size: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1028, file: !21, line: 1902, baseType: !403, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1028, file: !21, line: 1905, baseType: !338, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1028, file: !21, line: 1908, baseType: !5, size: 32, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1028, file: !21, line: 1911, baseType: !1035, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !593, line: 117, size: 128, elements: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1036, file: !593, line: 120, baseType: !766, size: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1028, file: !21, line: 1914, baseType: !868, size: 256, offset: 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !405, file: !21, line: 3399, baseType: !1041, size: 704)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !21, line: 2008, size: 704, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1041, file: !21, line: 2009, baseType: !441, size: 192)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1041, file: !21, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1041, file: !21, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1041, file: !21, line: 2014, baseType: !357, size: 32, offset: 224)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1041, file: !21, line: 2016, baseType: !403, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1041, file: !21, line: 2017, baseType: !752, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1041, file: !21, line: 2019, baseType: !403, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1041, file: !21, line: 2020, baseType: !403, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1041, file: !21, line: 2021, baseType: !403, size: 64, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1041, file: !21, line: 2022, baseType: !403, size: 64, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1041, file: !21, line: 2023, baseType: !403, size: 64, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !405, file: !21, line: 3400, baseType: !1055, size: 832)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !21, line: 2430, size: 832, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1055, file: !21, line: 2431, baseType: !441, size: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1055, file: !21, line: 2433, baseType: !403, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1055, file: !21, line: 2434, baseType: !403, size: 64, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1055, file: !21, line: 2435, baseType: !403, size: 64, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1055, file: !21, line: 2436, baseType: !403, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1055, file: !21, line: 2437, baseType: !752, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1055, file: !21, line: 2438, baseType: !403, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1055, file: !21, line: 2440, baseType: !403, size: 64, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1055, file: !21, line: 2441, baseType: !403, size: 64, offset: 640)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1055, file: !21, line: 2443, baseType: !1067, size: 128, offset: 704)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !21, line: 182, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !21, line: 182, size: 128, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1068, file: !21, line: 182, baseType: !757, size: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !405, file: !21, line: 3401, baseType: !1072, size: 320)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !21, line: 3327, size: 320, elements: !1073)
!1073 = !{!1074, !1075, !1082}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1072, file: !21, line: 3329, baseType: !441, size: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1072, file: !21, line: 3330, baseType: !1076, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !21, line: 3320, size: 192, elements: !1078)
!1078 = !{!1079, !1080, !1081}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1077, file: !21, line: 3322, baseType: !1076, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1077, file: !21, line: 3323, baseType: !1076, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1077, file: !21, line: 3324, baseType: !403, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1072, file: !21, line: 3331, baseType: !1076, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !405, file: !21, line: 3402, baseType: !1084, size: 256)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !21, line: 1540, size: 256, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1084, file: !21, line: 1541, baseType: !441, size: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1084, file: !21, line: 1542, baseType: !1088, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !21, line: 1538, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !21, line: 1538, size: 192, elements: !1091)
!1091 = !{!1092}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1090, file: !21, line: 1538, baseType: !1093, size: 192)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !21, line: 1537, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !21, line: 1537, size: 192, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1094, file: !21, line: 1537, baseType: !5, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1094, file: !21, line: 1537, baseType: !5, size: 32, offset: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1094, file: !21, line: 1537, baseType: !1099, size: 128, offset: 64)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1100, size: 128, elements: !485)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !21, line: 1535, baseType: !1101)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !21, line: 1532, size: 128, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1101, file: !21, line: 1533, baseType: !403, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1101, file: !21, line: 1534, baseType: !403, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !405, file: !21, line: 3403, baseType: !1106, size: 512)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !21, line: 1938, size: 512, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111, !1117, !1118, !1119}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1106, file: !21, line: 1939, baseType: !441, size: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1106, file: !21, line: 1940, baseType: !357, size: 32, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1106, file: !21, line: 1941, baseType: !20, size: 32, offset: 224)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1106, file: !21, line: 1946, baseType: !1112, size: 32, offset: 256)
!1112 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !21, line: 1942, size: 32, elements: !1113)
!1113 = !{!1114, !1115, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1112, file: !21, line: 1943, baseType: !39, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1112, file: !21, line: 1944, baseType: !46, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1112, file: !21, line: 1945, baseType: !53, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1106, file: !21, line: 1950, baseType: !389, size: 64, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1106, file: !21, line: 1951, baseType: !389, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1106, file: !21, line: 1953, baseType: !763, size: 64, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !405, file: !21, line: 3404, baseType: !1121, size: 1664)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !21, line: 3337, size: 1664, elements: !1122)
!1122 = !{!1123, !1124}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1121, file: !21, line: 3338, baseType: !441, size: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1121, file: !21, line: 3341, baseType: !1125, size: 1472, offset: 192)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1126, line: 410, size: 1472, elements: !1127)
!1126 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1125, file: !1126, line: 412, baseType: !327, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1125, file: !1126, line: 413, baseType: !327, size: 32, offset: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1125, file: !1126, line: 414, baseType: !327, size: 32, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1125, file: !1126, line: 415, baseType: !327, size: 32, offset: 96)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1125, file: !1126, line: 416, baseType: !327, size: 32, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1125, file: !1126, line: 417, baseType: !327, size: 32, offset: 160)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1125, file: !1126, line: 418, baseType: !326, size: 8, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1125, file: !1126, line: 419, baseType: !326, size: 8, offset: 200)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1125, file: !1126, line: 420, baseType: !1137, size: 8, offset: 208)
!1137 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1125, file: !1126, line: 421, baseType: !1137, size: 8, offset: 216)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1125, file: !1126, line: 422, baseType: !1137, size: 8, offset: 224)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1125, file: !1126, line: 423, baseType: !1137, size: 8, offset: 232)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1125, file: !1126, line: 424, baseType: !1137, size: 8, offset: 240)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1125, file: !1126, line: 425, baseType: !1137, size: 8, offset: 248)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1125, file: !1126, line: 426, baseType: !1137, size: 8, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1125, file: !1126, line: 427, baseType: !1137, size: 8, offset: 264)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1125, file: !1126, line: 428, baseType: !1137, size: 8, offset: 272)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1125, file: !1126, line: 429, baseType: !1137, size: 8, offset: 280)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1125, file: !1126, line: 430, baseType: !1137, size: 8, offset: 288)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1125, file: !1126, line: 431, baseType: !1137, size: 8, offset: 296)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1125, file: !1126, line: 432, baseType: !1137, size: 8, offset: 304)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1125, file: !1126, line: 433, baseType: !1137, size: 8, offset: 312)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1125, file: !1126, line: 434, baseType: !1137, size: 8, offset: 320)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1125, file: !1126, line: 435, baseType: !1137, size: 8, offset: 328)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1125, file: !1126, line: 436, baseType: !1137, size: 8, offset: 336)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1125, file: !1126, line: 437, baseType: !1137, size: 8, offset: 344)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1125, file: !1126, line: 438, baseType: !1137, size: 8, offset: 352)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1125, file: !1126, line: 439, baseType: !1137, size: 8, offset: 360)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1125, file: !1126, line: 440, baseType: !1137, size: 8, offset: 368)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1125, file: !1126, line: 441, baseType: !1137, size: 8, offset: 376)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1125, file: !1126, line: 442, baseType: !1137, size: 8, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1125, file: !1126, line: 443, baseType: !1137, size: 8, offset: 392)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1125, file: !1126, line: 444, baseType: !1137, size: 8, offset: 400)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1125, file: !1126, line: 445, baseType: !1137, size: 8, offset: 408)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1125, file: !1126, line: 446, baseType: !1137, size: 8, offset: 416)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1125, file: !1126, line: 447, baseType: !1137, size: 8, offset: 424)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1125, file: !1126, line: 448, baseType: !1137, size: 8, offset: 432)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1125, file: !1126, line: 449, baseType: !1137, size: 8, offset: 440)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1125, file: !1126, line: 450, baseType: !1137, size: 8, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1125, file: !1126, line: 451, baseType: !1137, size: 8, offset: 456)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1125, file: !1126, line: 452, baseType: !1137, size: 8, offset: 464)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1125, file: !1126, line: 453, baseType: !1137, size: 8, offset: 472)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1125, file: !1126, line: 454, baseType: !1137, size: 8, offset: 480)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1125, file: !1126, line: 455, baseType: !1137, size: 8, offset: 488)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1125, file: !1126, line: 456, baseType: !1137, size: 8, offset: 496)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1125, file: !1126, line: 457, baseType: !1137, size: 8, offset: 504)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1125, file: !1126, line: 458, baseType: !1137, size: 8, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1125, file: !1126, line: 459, baseType: !1137, size: 8, offset: 520)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1125, file: !1126, line: 460, baseType: !1137, size: 8, offset: 528)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1125, file: !1126, line: 461, baseType: !1137, size: 8, offset: 536)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1125, file: !1126, line: 462, baseType: !1137, size: 8, offset: 544)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1125, file: !1126, line: 463, baseType: !1137, size: 8, offset: 552)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1125, file: !1126, line: 464, baseType: !1137, size: 8, offset: 560)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1125, file: !1126, line: 465, baseType: !1137, size: 8, offset: 568)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1125, file: !1126, line: 466, baseType: !1137, size: 8, offset: 576)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1125, file: !1126, line: 467, baseType: !1137, size: 8, offset: 584)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1125, file: !1126, line: 468, baseType: !1137, size: 8, offset: 592)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1125, file: !1126, line: 469, baseType: !1137, size: 8, offset: 600)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1125, file: !1126, line: 470, baseType: !1137, size: 8, offset: 608)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1125, file: !1126, line: 471, baseType: !1137, size: 8, offset: 616)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1125, file: !1126, line: 472, baseType: !1137, size: 8, offset: 624)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1125, file: !1126, line: 473, baseType: !1137, size: 8, offset: 632)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1125, file: !1126, line: 474, baseType: !1137, size: 8, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1125, file: !1126, line: 475, baseType: !1137, size: 8, offset: 648)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1125, file: !1126, line: 476, baseType: !1137, size: 8, offset: 656)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1125, file: !1126, line: 477, baseType: !1137, size: 8, offset: 664)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1125, file: !1126, line: 478, baseType: !1137, size: 8, offset: 672)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1125, file: !1126, line: 479, baseType: !1137, size: 8, offset: 680)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1125, file: !1126, line: 480, baseType: !1137, size: 8, offset: 688)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1125, file: !1126, line: 481, baseType: !1137, size: 8, offset: 696)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1125, file: !1126, line: 482, baseType: !1137, size: 8, offset: 704)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1125, file: !1126, line: 483, baseType: !1137, size: 8, offset: 712)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1125, file: !1126, line: 484, baseType: !1137, size: 8, offset: 720)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1125, file: !1126, line: 485, baseType: !1137, size: 8, offset: 728)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1125, file: !1126, line: 486, baseType: !1137, size: 8, offset: 736)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1125, file: !1126, line: 487, baseType: !1137, size: 8, offset: 744)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1125, file: !1126, line: 488, baseType: !1137, size: 8, offset: 752)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1125, file: !1126, line: 489, baseType: !1137, size: 8, offset: 760)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1125, file: !1126, line: 490, baseType: !1137, size: 8, offset: 768)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1125, file: !1126, line: 491, baseType: !1137, size: 8, offset: 776)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1125, file: !1126, line: 492, baseType: !1137, size: 8, offset: 784)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1125, file: !1126, line: 493, baseType: !1137, size: 8, offset: 792)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1125, file: !1126, line: 494, baseType: !1137, size: 8, offset: 800)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1125, file: !1126, line: 495, baseType: !1137, size: 8, offset: 808)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1125, file: !1126, line: 496, baseType: !1137, size: 8, offset: 816)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1125, file: !1126, line: 497, baseType: !1137, size: 8, offset: 824)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1125, file: !1126, line: 498, baseType: !1137, size: 8, offset: 832)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1125, file: !1126, line: 499, baseType: !1137, size: 8, offset: 840)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1125, file: !1126, line: 500, baseType: !1137, size: 8, offset: 848)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1125, file: !1126, line: 501, baseType: !1137, size: 8, offset: 856)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1125, file: !1126, line: 502, baseType: !1137, size: 8, offset: 864)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1125, file: !1126, line: 503, baseType: !1137, size: 8, offset: 872)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1125, file: !1126, line: 504, baseType: !1137, size: 8, offset: 880)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1125, file: !1126, line: 505, baseType: !1137, size: 8, offset: 888)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1125, file: !1126, line: 506, baseType: !1137, size: 8, offset: 896)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1125, file: !1126, line: 507, baseType: !1137, size: 8, offset: 904)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1125, file: !1126, line: 508, baseType: !1137, size: 8, offset: 912)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1125, file: !1126, line: 509, baseType: !1137, size: 8, offset: 920)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1125, file: !1126, line: 510, baseType: !1137, size: 8, offset: 928)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1125, file: !1126, line: 511, baseType: !1137, size: 8, offset: 936)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1125, file: !1126, line: 512, baseType: !1137, size: 8, offset: 944)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1125, file: !1126, line: 513, baseType: !1137, size: 8, offset: 952)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1125, file: !1126, line: 514, baseType: !1137, size: 8, offset: 960)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1125, file: !1126, line: 515, baseType: !1137, size: 8, offset: 968)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1125, file: !1126, line: 516, baseType: !1137, size: 8, offset: 976)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1125, file: !1126, line: 517, baseType: !1137, size: 8, offset: 984)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1125, file: !1126, line: 518, baseType: !1137, size: 8, offset: 992)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1125, file: !1126, line: 519, baseType: !1137, size: 8, offset: 1000)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1125, file: !1126, line: 520, baseType: !1137, size: 8, offset: 1008)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1125, file: !1126, line: 521, baseType: !1137, size: 8, offset: 1016)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1125, file: !1126, line: 522, baseType: !1137, size: 8, offset: 1024)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1125, file: !1126, line: 523, baseType: !1137, size: 8, offset: 1032)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1125, file: !1126, line: 524, baseType: !1137, size: 8, offset: 1040)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1125, file: !1126, line: 525, baseType: !1137, size: 8, offset: 1048)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1125, file: !1126, line: 526, baseType: !1137, size: 8, offset: 1056)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1125, file: !1126, line: 527, baseType: !1137, size: 8, offset: 1064)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1125, file: !1126, line: 528, baseType: !1137, size: 8, offset: 1072)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1125, file: !1126, line: 529, baseType: !1137, size: 8, offset: 1080)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1125, file: !1126, line: 530, baseType: !1137, size: 8, offset: 1088)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1125, file: !1126, line: 531, baseType: !1137, size: 8, offset: 1096)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1125, file: !1126, line: 532, baseType: !1137, size: 8, offset: 1104)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1125, file: !1126, line: 533, baseType: !1137, size: 8, offset: 1112)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1125, file: !1126, line: 534, baseType: !1137, size: 8, offset: 1120)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1125, file: !1126, line: 535, baseType: !1137, size: 8, offset: 1128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1125, file: !1126, line: 536, baseType: !1137, size: 8, offset: 1136)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1125, file: !1126, line: 537, baseType: !1137, size: 8, offset: 1144)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1125, file: !1126, line: 538, baseType: !1137, size: 8, offset: 1152)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1125, file: !1126, line: 539, baseType: !1137, size: 8, offset: 1160)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1125, file: !1126, line: 540, baseType: !1137, size: 8, offset: 1168)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1125, file: !1126, line: 541, baseType: !1137, size: 8, offset: 1176)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1125, file: !1126, line: 542, baseType: !1137, size: 8, offset: 1184)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1125, file: !1126, line: 543, baseType: !1137, size: 8, offset: 1192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1125, file: !1126, line: 544, baseType: !1137, size: 8, offset: 1200)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1125, file: !1126, line: 545, baseType: !1137, size: 8, offset: 1208)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1125, file: !1126, line: 546, baseType: !1137, size: 8, offset: 1216)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1125, file: !1126, line: 547, baseType: !1137, size: 8, offset: 1224)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1125, file: !1126, line: 548, baseType: !1137, size: 8, offset: 1232)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1125, file: !1126, line: 549, baseType: !1137, size: 8, offset: 1240)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1125, file: !1126, line: 550, baseType: !1137, size: 8, offset: 1248)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1125, file: !1126, line: 551, baseType: !1137, size: 8, offset: 1256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1125, file: !1126, line: 552, baseType: !1137, size: 8, offset: 1264)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1125, file: !1126, line: 553, baseType: !1137, size: 8, offset: 1272)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1125, file: !1126, line: 554, baseType: !1137, size: 8, offset: 1280)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1125, file: !1126, line: 555, baseType: !1137, size: 8, offset: 1288)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1125, file: !1126, line: 556, baseType: !1137, size: 8, offset: 1296)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1125, file: !1126, line: 557, baseType: !1137, size: 8, offset: 1304)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1125, file: !1126, line: 558, baseType: !1137, size: 8, offset: 1312)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1125, file: !1126, line: 559, baseType: !1137, size: 8, offset: 1320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1125, file: !1126, line: 560, baseType: !1137, size: 8, offset: 1328)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1125, file: !1126, line: 561, baseType: !1137, size: 8, offset: 1336)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1125, file: !1126, line: 562, baseType: !1137, size: 8, offset: 1344)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1125, file: !1126, line: 563, baseType: !1137, size: 8, offset: 1352)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1125, file: !1126, line: 564, baseType: !1137, size: 8, offset: 1360)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1125, file: !1126, line: 565, baseType: !1137, size: 8, offset: 1368)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1125, file: !1126, line: 566, baseType: !1137, size: 8, offset: 1376)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1125, file: !1126, line: 567, baseType: !1137, size: 8, offset: 1384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1125, file: !1126, line: 568, baseType: !1137, size: 8, offset: 1392)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1125, file: !1126, line: 569, baseType: !1137, size: 8, offset: 1400)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1125, file: !1126, line: 570, baseType: !1137, size: 8, offset: 1408)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1125, file: !1126, line: 571, baseType: !1137, size: 8, offset: 1416)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1125, file: !1126, line: 572, baseType: !1137, size: 8, offset: 1424)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1125, file: !1126, line: 573, baseType: !1137, size: 8, offset: 1432)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1125, file: !1126, line: 574, baseType: !1137, size: 8, offset: 1440)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !405, file: !21, line: 3405, baseType: !1293, size: 384)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !21, line: 3352, size: 384, elements: !1294)
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1293, file: !21, line: 3353, baseType: !441, size: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1293, file: !21, line: 3356, baseType: !1297, size: 192, offset: 192)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1126, line: 578, size: 192, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1297, file: !1126, line: 580, baseType: !327, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1297, file: !1126, line: 581, baseType: !327, size: 32, offset: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1297, file: !1126, line: 582, baseType: !327, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1297, file: !1126, line: 583, baseType: !327, size: 32, offset: 96)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1297, file: !1126, line: 584, baseType: !326, size: 8, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1297, file: !1126, line: 585, baseType: !326, size: 8, offset: 136)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1297, file: !1126, line: 586, baseType: !326, size: 8, offset: 144)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1297, file: !1126, line: 587, baseType: !326, size: 8, offset: 152)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1297, file: !1126, line: 588, baseType: !326, size: 8, offset: 160)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1297, file: !1126, line: 589, baseType: !326, size: 8, offset: 168)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1297, file: !1126, line: 590, baseType: !326, size: 8, offset: 176)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !381, file: !4, line: 138, baseType: !357, size: 32, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !381, file: !4, line: 142, baseType: !5, size: 32, offset: 352)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !4, line: 144, baseType: !327, size: 32, offset: 384)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !381, file: !4, line: 145, baseType: !327, size: 32, offset: 416)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !381, file: !4, line: 146, baseType: !1315, size: 64, offset: 448)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !4, line: 119, baseType: !458)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !364, file: !4, line: 220, baseType: !367, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !364, file: !4, line: 223, baseType: !331, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !364, file: !4, line: 226, baseType: !1319, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !4, line: 185, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !364, file: !4, line: 229, baseType: !1322, size: 128, offset: 256)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1323, size: 128, elements: !675)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !4, line: 229, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !364, file: !4, line: 232, baseType: !363, size: 64, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !364, file: !4, line: 233, baseType: !363, size: 64, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !364, file: !4, line: 238, baseType: !1328, size: 64, offset: 512)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !4, line: 235, size: 64, elements: !1329)
!1329 = !{!1330, !1336}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1328, file: !4, line: 236, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !4, line: 273, size: 128, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1332, file: !4, line: 275, baseType: !389, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1332, file: !4, line: 278, baseType: !389, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1328, file: !4, line: 237, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !4, line: 259, size: 320, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1338, file: !4, line: 261, baseType: !398, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1338, file: !4, line: 262, baseType: !398, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1338, file: !4, line: 266, baseType: !398, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1338, file: !4, line: 267, baseType: !398, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1338, file: !4, line: 270, baseType: !327, size: 32, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !364, file: !4, line: 241, baseType: !1315, size: 64, offset: 576)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !364, file: !4, line: 244, baseType: !327, size: 32, offset: 640)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !364, file: !4, line: 247, baseType: !327, size: 32, offset: 672)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !364, file: !4, line: 250, baseType: !327, size: 32, offset: 704)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !364, file: !4, line: 253, baseType: !327, size: 32, offset: 736)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !364, file: !4, line: 256, baseType: !327, size: 32, offset: 768)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !344, file: !248, line: 327, baseType: !403, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !341, file: !248, line: 739, baseType: !1353, size: 448)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !248, line: 350, size: 448, elements: !1354)
!1354 = !{!1355, !1361}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1353, file: !248, line: 353, baseType: !1356, size: 384)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !248, line: 333, size: 384, elements: !1357)
!1357 = !{!1358, !1359, !1360}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1356, file: !248, line: 336, baseType: !344, size: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1356, file: !248, line: 343, baseType: !856, size: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1356, file: !248, line: 344, baseType: !863, size: 64, offset: 320)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1353, file: !248, line: 359, baseType: !763, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !341, file: !248, line: 740, baseType: !1363, size: 512)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !248, line: 365, size: 512, elements: !1364)
!1364 = !{!1365, !1366, !1367}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1363, file: !248, line: 368, baseType: !1356, size: 384)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1363, file: !248, line: 373, baseType: !403, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1363, file: !248, line: 374, baseType: !403, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !341, file: !248, line: 741, baseType: !1369, size: 576)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !248, line: 380, size: 576, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1369, file: !248, line: 383, baseType: !1363, size: 512)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1369, file: !248, line: 389, baseType: !763, size: 64, offset: 512)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !341, file: !248, line: 742, baseType: !1374, size: 320)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !248, line: 395, size: 320, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1374, file: !248, line: 397, baseType: !344, size: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1374, file: !248, line: 400, baseType: !389, size: 64, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !341, file: !248, line: 743, baseType: !1379, size: 448)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !248, line: 406, size: 448, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1379, file: !248, line: 408, baseType: !344, size: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1379, file: !248, line: 412, baseType: !403, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1379, file: !248, line: 420, baseType: !403, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1379, file: !248, line: 423, baseType: !389, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !341, file: !248, line: 744, baseType: !1386, size: 384)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !248, line: 429, size: 384, elements: !1387)
!1387 = !{!1388, !1389, !1390}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1386, file: !248, line: 431, baseType: !344, size: 256)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1386, file: !248, line: 434, baseType: !403, size: 64, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1386, file: !248, line: 437, baseType: !389, size: 64, offset: 320)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !341, file: !248, line: 745, baseType: !1392, size: 384)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !248, line: 443, size: 384, elements: !1393)
!1393 = !{!1394, !1395, !1396}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1392, file: !248, line: 445, baseType: !344, size: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1392, file: !248, line: 449, baseType: !403, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1392, file: !248, line: 453, baseType: !389, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !341, file: !248, line: 746, baseType: !1398, size: 320)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !248, line: 459, size: 320, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1398, file: !248, line: 461, baseType: !344, size: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1398, file: !248, line: 464, baseType: !403, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !341, file: !248, line: 747, baseType: !1403, size: 768)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !248, line: 469, size: 768, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1403, file: !248, line: 471, baseType: !344, size: 256)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1403, file: !248, line: 474, baseType: !5, size: 32, offset: 256)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1403, file: !248, line: 475, baseType: !5, size: 32, offset: 288)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1403, file: !248, line: 478, baseType: !403, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1403, file: !248, line: 481, baseType: !1410, size: 384, offset: 384)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1411, size: 384, elements: !485)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !21, line: 1917, size: 384, elements: !1412)
!1412 = !{!1413, !1414, !1415}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1411, file: !21, line: 1920, baseType: !868, size: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1411, file: !21, line: 1921, baseType: !403, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1411, file: !21, line: 1922, baseType: !357, size: 32, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !341, file: !248, line: 748, baseType: !1417, size: 320)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !248, line: 487, size: 320, elements: !1418)
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1417, file: !248, line: 490, baseType: !344, size: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1417, file: !248, line: 494, baseType: !327, size: 32, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !341, file: !248, line: 749, baseType: !1422, size: 384)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !248, line: 500, size: 384, elements: !1423)
!1423 = !{!1424, !1425, !1426}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1422, file: !248, line: 502, baseType: !344, size: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1422, file: !248, line: 506, baseType: !389, size: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1422, file: !248, line: 510, baseType: !389, size: 64, offset: 320)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !341, file: !248, line: 750, baseType: !1428, size: 320)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !248, line: 529, size: 320, elements: !1429)
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1428, file: !248, line: 531, baseType: !344, size: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1428, file: !248, line: 540, baseType: !389, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !341, file: !248, line: 751, baseType: !1433, size: 704)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !248, line: 546, size: 704, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1438, !1439, !1440, !1441}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1433, file: !248, line: 549, baseType: !1363, size: 512)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1433, file: !248, line: 553, baseType: !332, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1433, file: !248, line: 557, baseType: !326, size: 8, offset: 576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1433, file: !248, line: 558, baseType: !326, size: 8, offset: 584)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1433, file: !248, line: 559, baseType: !326, size: 8, offset: 592)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1433, file: !248, line: 560, baseType: !326, size: 8, offset: 600)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1433, file: !248, line: 566, baseType: !763, size: 64, offset: 640)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !341, file: !248, line: 752, baseType: !1443, size: 384)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !248, line: 571, size: 384, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1443, file: !248, line: 573, baseType: !1374, size: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1443, file: !248, line: 577, baseType: !403, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !341, file: !248, line: 753, baseType: !1448, size: 576)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !248, line: 600, size: 576, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1453, !1462}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1448, file: !248, line: 602, baseType: !1374, size: 320)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1448, file: !248, line: 605, baseType: !403, size: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1448, file: !248, line: 609, baseType: !713, size: 64, offset: 384)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1448, file: !248, line: 612, baseType: !1454, size: 64, offset: 448)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !248, line: 581, size: 320, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1460, !1461}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1455, file: !248, line: 583, baseType: !53, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1455, file: !248, line: 586, baseType: !403, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1455, file: !248, line: 589, baseType: !403, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1455, file: !248, line: 592, baseType: !403, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1455, file: !248, line: 595, baseType: !403, size: 64, offset: 256)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1448, file: !248, line: 616, baseType: !389, size: 64, offset: 512)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !341, file: !248, line: 754, baseType: !1464, size: 512)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !248, line: 622, size: 512, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1464, file: !248, line: 624, baseType: !1374, size: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1464, file: !248, line: 628, baseType: !403, size: 64, offset: 320)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1464, file: !248, line: 632, baseType: !403, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1464, file: !248, line: 636, baseType: !403, size: 64, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !341, file: !248, line: 755, baseType: !1471, size: 704)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !248, line: 642, size: 704, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1471, file: !248, line: 644, baseType: !1464, size: 512)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1471, file: !248, line: 648, baseType: !403, size: 64, offset: 512)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1471, file: !248, line: 652, baseType: !403, size: 64, offset: 576)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1471, file: !248, line: 653, baseType: !403, size: 64, offset: 640)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !341, file: !248, line: 756, baseType: !1478, size: 448)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !248, line: 663, size: 448, elements: !1479)
!1479 = !{!1480, !1481, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1478, file: !248, line: 665, baseType: !1374, size: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1478, file: !248, line: 668, baseType: !403, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1478, file: !248, line: 673, baseType: !403, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !341, file: !248, line: 757, baseType: !1484, size: 384)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !248, line: 694, size: 384, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1484, file: !248, line: 696, baseType: !1374, size: 320)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1484, file: !248, line: 699, baseType: !403, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !341, file: !248, line: 758, baseType: !1489, size: 384)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !248, line: 681, size: 384, elements: !1490)
!1490 = !{!1491, !1492, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1489, file: !248, line: 683, baseType: !344, size: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1489, file: !248, line: 686, baseType: !403, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1489, file: !248, line: 689, baseType: !403, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !341, file: !248, line: 759, baseType: !1495, size: 384)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !248, line: 707, size: 384, elements: !1496)
!1496 = !{!1497, !1498, !1499}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1495, file: !248, line: 709, baseType: !344, size: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1495, file: !248, line: 712, baseType: !403, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1495, file: !248, line: 712, baseType: !403, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !341, file: !248, line: 760, baseType: !1501, size: 320)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !248, line: 718, size: 320, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1501, file: !248, line: 720, baseType: !344, size: 256)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1501, file: !248, line: 723, baseType: !403, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !335, file: !248, line: 138, baseType: !334, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !248, line: 139, baseType: !334, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !318, line: 30, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !21, line: 1893, baseType: !868)
!1512 = !{i32 2, !"Dwarf Version", i32 4}
!1513 = !{i32 2, !"Debug Info Version", i32 3}
!1514 = !{i32 1, !"wchar_size", i32 4}
!1515 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1516 = distinct !DISubprogram(name: "vprintf", scope: !1517, file: !1517, line: 39, type: !1518, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1528)
!1517 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!327, !1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !332)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1523)
!1523 = !{!1524, !1525, !1526, !1527}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1522, file: !1, baseType: !5, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1522, file: !1, baseType: !5, size: 32, offset: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1522, file: !1, baseType: !331, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1522, file: !1, baseType: !331, size: 64, offset: 128)
!1528 = !{!1529, !1530}
!1529 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1516, file: !1517, line: 39, type: !1520)
!1530 = !DILocalVariable(name: "__arg", arg: 2, scope: !1516, file: !1517, line: 39, type: !1521)
!1531 = !DILocation(line: 0, scope: !1516)
!1532 = !DILocation(line: 41, column: 20, scope: !1516)
!1533 = !DILocation(line: 41, column: 10, scope: !1516)
!1534 = !DILocation(line: 41, column: 3, scope: !1516)
!1535 = distinct !DISubprogram(name: "getchar", scope: !1517, file: !1517, line: 47, type: !1536, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!327}
!1538 = !{}
!1539 = !DILocation(line: 49, column: 16, scope: !1535)
!1540 = !DILocation(line: 49, column: 10, scope: !1535)
!1541 = !DILocation(line: 49, column: 3, scope: !1535)
!1542 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1517, file: !1517, line: 56, type: !1543, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1596)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!327, !1545}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1547, line: 7, baseType: !1548)
!1547 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1549, line: 49, size: 1728, elements: !1550)
!1549 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1566, !1568, !1569, !1570, !1573, !1575, !1576, !1577, !1580, !1582, !1585, !1588, !1589, !1590, !1591, !1592}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1548, file: !1549, line: 51, baseType: !327, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1548, file: !1549, line: 54, baseType: !329, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1548, file: !1549, line: 55, baseType: !329, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1548, file: !1549, line: 56, baseType: !329, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1548, file: !1549, line: 57, baseType: !329, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1548, file: !1549, line: 58, baseType: !329, size: 64, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1548, file: !1549, line: 59, baseType: !329, size: 64, offset: 384)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1548, file: !1549, line: 60, baseType: !329, size: 64, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1548, file: !1549, line: 61, baseType: !329, size: 64, offset: 512)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1548, file: !1549, line: 64, baseType: !329, size: 64, offset: 576)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1548, file: !1549, line: 65, baseType: !329, size: 64, offset: 640)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1548, file: !1549, line: 66, baseType: !329, size: 64, offset: 704)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1548, file: !1549, line: 68, baseType: !1564, size: 64, offset: 768)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1549, line: 36, flags: DIFlagFwdDecl)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1548, file: !1549, line: 70, baseType: !1567, size: 64, offset: 832)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1548, file: !1549, line: 72, baseType: !327, size: 32, offset: 896)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1548, file: !1549, line: 73, baseType: !327, size: 32, offset: 928)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1548, file: !1549, line: 74, baseType: !1571, size: 64, offset: 960)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1572, line: 152, baseType: !458)
!1572 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1548, file: !1549, line: 77, baseType: !1574, size: 16, offset: 1024)
!1574 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1548, file: !1549, line: 78, baseType: !1137, size: 8, offset: 1040)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1548, file: !1549, line: 79, baseType: !484, size: 8, offset: 1048)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1548, file: !1549, line: 81, baseType: !1578, size: 64, offset: 1088)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1549, line: 43, baseType: null)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1548, file: !1549, line: 89, baseType: !1581, size: 64, offset: 1152)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1572, line: 153, baseType: !458)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1548, file: !1549, line: 91, baseType: !1583, size: 64, offset: 1216)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1549, line: 37, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1548, file: !1549, line: 92, baseType: !1586, size: 64, offset: 1280)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1549, line: 38, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1548, file: !1549, line: 93, baseType: !1567, size: 64, offset: 1344)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1548, file: !1549, line: 94, baseType: !331, size: 64, offset: 1408)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1548, file: !1549, line: 95, baseType: !713, size: 64, offset: 1472)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1548, file: !1549, line: 96, baseType: !327, size: 32, offset: 1536)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1548, file: !1549, line: 98, baseType: !1593, size: 160, offset: 1568)
!1593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 160, elements: !1594)
!1594 = !{!1595}
!1595 = !DISubrange(count: 20)
!1596 = !{!1597}
!1597 = !DILocalVariable(name: "__fp", arg: 1, scope: !1542, file: !1517, line: 56, type: !1545)
!1598 = !DILocation(line: 0, scope: !1542)
!1599 = !DILocation(line: 58, column: 10, scope: !1542)
!1600 = !DILocation(line: 58, column: 3, scope: !1542)
!1601 = distinct !DISubprogram(name: "getc_unlocked", scope: !1517, file: !1517, line: 66, type: !1543, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1602)
!1602 = !{!1603}
!1603 = !DILocalVariable(name: "__fp", arg: 1, scope: !1601, file: !1517, line: 66, type: !1545)
!1604 = !DILocation(line: 0, scope: !1601)
!1605 = !DILocation(line: 68, column: 10, scope: !1601)
!1606 = !DILocation(line: 68, column: 3, scope: !1601)
!1607 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1517, file: !1517, line: 73, type: !1536, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1538)
!1608 = !DILocation(line: 75, column: 10, scope: !1607)
!1609 = !DILocation(line: 75, column: 3, scope: !1607)
!1610 = distinct !DISubprogram(name: "putchar", scope: !1517, file: !1517, line: 82, type: !1611, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1613)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!327, !327}
!1613 = !{!1614}
!1614 = !DILocalVariable(name: "__c", arg: 1, scope: !1610, file: !1517, line: 82, type: !327)
!1615 = !DILocation(line: 0, scope: !1610)
!1616 = !DILocation(line: 84, column: 21, scope: !1610)
!1617 = !DILocation(line: 84, column: 10, scope: !1610)
!1618 = !DILocation(line: 84, column: 3, scope: !1610)
!1619 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1517, file: !1517, line: 91, type: !1620, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1622)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!327, !327, !1545}
!1622 = !{!1623, !1624}
!1623 = !DILocalVariable(name: "__c", arg: 1, scope: !1619, file: !1517, line: 91, type: !327)
!1624 = !DILocalVariable(name: "__stream", arg: 2, scope: !1619, file: !1517, line: 91, type: !1545)
!1625 = !DILocation(line: 0, scope: !1619)
!1626 = !DILocation(line: 93, column: 10, scope: !1619)
!1627 = !DILocation(line: 93, column: 3, scope: !1619)
!1628 = distinct !DISubprogram(name: "putc_unlocked", scope: !1517, file: !1517, line: 101, type: !1620, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1629)
!1629 = !{!1630, !1631}
!1630 = !DILocalVariable(name: "__c", arg: 1, scope: !1628, file: !1517, line: 101, type: !327)
!1631 = !DILocalVariable(name: "__stream", arg: 2, scope: !1628, file: !1517, line: 101, type: !1545)
!1632 = !DILocation(line: 0, scope: !1628)
!1633 = !DILocation(line: 103, column: 10, scope: !1628)
!1634 = !DILocation(line: 103, column: 3, scope: !1628)
!1635 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1517, file: !1517, line: 108, type: !1611, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1636)
!1636 = !{!1637}
!1637 = !DILocalVariable(name: "__c", arg: 1, scope: !1635, file: !1517, line: 108, type: !327)
!1638 = !DILocation(line: 0, scope: !1635)
!1639 = !DILocation(line: 110, column: 10, scope: !1635)
!1640 = !DILocation(line: 110, column: 3, scope: !1635)
!1641 = distinct !DISubprogram(name: "getline", scope: !1517, file: !1517, line: 118, type: !1642, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1646)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!1644, !328, !1645, !1545}
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1572, line: 193, baseType: !458)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!1646 = !{!1647, !1648, !1649}
!1647 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1641, file: !1517, line: 118, type: !328)
!1648 = !DILocalVariable(name: "__n", arg: 2, scope: !1641, file: !1517, line: 118, type: !1645)
!1649 = !DILocalVariable(name: "__stream", arg: 3, scope: !1641, file: !1517, line: 118, type: !1545)
!1650 = !DILocation(line: 0, scope: !1641)
!1651 = !DILocation(line: 120, column: 10, scope: !1641)
!1652 = !DILocation(line: 120, column: 3, scope: !1641)
!1653 = distinct !DISubprogram(name: "feof_unlocked", scope: !1517, file: !1517, line: 128, type: !1543, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1654)
!1654 = !{!1655}
!1655 = !DILocalVariable(name: "__stream", arg: 1, scope: !1653, file: !1517, line: 128, type: !1545)
!1656 = !DILocation(line: 0, scope: !1653)
!1657 = !DILocation(line: 130, column: 10, scope: !1653)
!1658 = !DILocation(line: 130, column: 3, scope: !1653)
!1659 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1517, file: !1517, line: 135, type: !1543, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1660)
!1660 = !{!1661}
!1661 = !DILocalVariable(name: "__stream", arg: 1, scope: !1659, file: !1517, line: 135, type: !1545)
!1662 = !DILocation(line: 0, scope: !1659)
!1663 = !DILocation(line: 137, column: 10, scope: !1659)
!1664 = !DILocation(line: 137, column: 3, scope: !1659)
!1665 = distinct !DISubprogram(name: "tolower", scope: !1666, file: !1666, line: 207, type: !1611, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1667)
!1666 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1667 = !{!1668}
!1668 = !DILocalVariable(name: "__c", arg: 1, scope: !1665, file: !1666, line: 207, type: !327)
!1669 = !DILocation(line: 0, scope: !1665)
!1670 = !DILocation(line: 209, column: 22, scope: !1665)
!1671 = !DILocation(line: 209, column: 39, scope: !1665)
!1672 = !DILocation(line: 209, column: 38, scope: !1665)
!1673 = !DILocation(line: 209, column: 37, scope: !1665)
!1674 = !DILocation(line: 209, column: 10, scope: !1665)
!1675 = !DILocation(line: 209, column: 3, scope: !1665)
!1676 = distinct !DISubprogram(name: "toupper", scope: !1666, file: !1666, line: 213, type: !1611, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1677)
!1677 = !{!1678}
!1678 = !DILocalVariable(name: "__c", arg: 1, scope: !1676, file: !1666, line: 213, type: !327)
!1679 = !DILocation(line: 0, scope: !1676)
!1680 = !DILocation(line: 215, column: 22, scope: !1676)
!1681 = !DILocation(line: 215, column: 39, scope: !1676)
!1682 = !DILocation(line: 215, column: 38, scope: !1676)
!1683 = !DILocation(line: 215, column: 37, scope: !1676)
!1684 = !DILocation(line: 215, column: 10, scope: !1676)
!1685 = !DILocation(line: 215, column: 3, scope: !1676)
!1686 = distinct !DISubprogram(name: "atoi", scope: !1687, file: !1687, line: 361, type: !1688, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1690)
!1687 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!327, !332}
!1690 = !{!1691}
!1691 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1686, file: !1687, line: 361, type: !332)
!1692 = !DILocation(line: 0, scope: !1686)
!1693 = !DILocation(line: 363, column: 16, scope: !1686)
!1694 = !DILocation(line: 363, column: 10, scope: !1686)
!1695 = !DILocation(line: 363, column: 3, scope: !1686)
!1696 = distinct !DISubprogram(name: "atol", scope: !1687, file: !1687, line: 366, type: !1697, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1699)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!458, !332}
!1699 = !{!1700}
!1700 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1696, file: !1687, line: 366, type: !332)
!1701 = !DILocation(line: 0, scope: !1696)
!1702 = !DILocation(line: 368, column: 10, scope: !1696)
!1703 = !DILocation(line: 368, column: 3, scope: !1696)
!1704 = distinct !DISubprogram(name: "atoll", scope: !1687, file: !1687, line: 373, type: !1705, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1708)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!1707, !332}
!1707 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1708 = !{!1709}
!1709 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1704, file: !1687, line: 373, type: !332)
!1710 = !DILocation(line: 0, scope: !1704)
!1711 = !DILocation(line: 375, column: 10, scope: !1704)
!1712 = !DILocation(line: 375, column: 3, scope: !1704)
!1713 = distinct !DISubprogram(name: "bsearch", scope: !1714, file: !1714, line: 20, type: !1715, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1718)
!1714 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!331, !698, !698, !713, !713, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1687, line: 808, baseType: !702)
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728}
!1719 = !DILocalVariable(name: "__key", arg: 1, scope: !1713, file: !1714, line: 20, type: !698)
!1720 = !DILocalVariable(name: "__base", arg: 2, scope: !1713, file: !1714, line: 20, type: !698)
!1721 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1713, file: !1714, line: 20, type: !713)
!1722 = !DILocalVariable(name: "__size", arg: 4, scope: !1713, file: !1714, line: 20, type: !713)
!1723 = !DILocalVariable(name: "__compar", arg: 5, scope: !1713, file: !1714, line: 21, type: !1717)
!1724 = !DILocalVariable(name: "__l", scope: !1713, file: !1714, line: 23, type: !713)
!1725 = !DILocalVariable(name: "__u", scope: !1713, file: !1714, line: 23, type: !713)
!1726 = !DILocalVariable(name: "__idx", scope: !1713, file: !1714, line: 23, type: !713)
!1727 = !DILocalVariable(name: "__p", scope: !1713, file: !1714, line: 24, type: !698)
!1728 = !DILocalVariable(name: "__comparison", scope: !1713, file: !1714, line: 25, type: !327)
!1729 = !DILocation(line: 0, scope: !1713)
!1730 = !DILocation(line: 29, column: 3, scope: !1713)
!1731 = !DILocation(line: 27, column: 7, scope: !1713)
!1732 = !DILocation(line: 29, column: 14, scope: !1713)
!1733 = !DILocation(line: 31, column: 20, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1713, file: !1714, line: 30, column: 5)
!1735 = !DILocation(line: 31, column: 27, scope: !1734)
!1736 = !DILocation(line: 32, column: 56, scope: !1734)
!1737 = !DILocation(line: 32, column: 47, scope: !1734)
!1738 = !DILocation(line: 33, column: 22, scope: !1734)
!1739 = !DILocation(line: 34, column: 24, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1734, file: !1714, line: 34, column: 11)
!1741 = !DILocation(line: 34, column: 11, scope: !1734)
!1742 = !DILocation(line: 36, column: 29, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1740, file: !1714, line: 36, column: 16)
!1744 = !DILocation(line: 36, column: 16, scope: !1740)
!1745 = !DILocation(line: 37, column: 14, scope: !1743)
!1746 = distinct !{!1746, !1730, !1747}
!1747 = !DILocation(line: 40, column: 5, scope: !1713)
!1748 = !DILocation(line: 43, column: 1, scope: !1713)
!1749 = distinct !DISubprogram(name: "atof", scope: !1750, file: !1750, line: 25, type: !1751, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1754)
!1750 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!1753, !332}
!1753 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1754 = !{!1755}
!1755 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1749, file: !1750, line: 25, type: !332)
!1756 = !DILocation(line: 0, scope: !1749)
!1757 = !DILocation(line: 27, column: 10, scope: !1749)
!1758 = !DILocation(line: 27, column: 3, scope: !1749)
!1759 = distinct !DISubprogram(name: "strtoimax", scope: !1760, file: !1760, line: 324, type: !1761, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1767)
!1760 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!1763, !1520, !1766, !327}
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1764, line: 101, baseType: !1765)
!1764 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1572, line: 72, baseType: !458)
!1766 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !328)
!1767 = !{!1768, !1769, !1770}
!1768 = !DILocalVariable(name: "nptr", arg: 1, scope: !1759, file: !1760, line: 324, type: !1520)
!1769 = !DILocalVariable(name: "endptr", arg: 2, scope: !1759, file: !1760, line: 324, type: !1766)
!1770 = !DILocalVariable(name: "base", arg: 3, scope: !1759, file: !1760, line: 324, type: !327)
!1771 = !DILocation(line: 0, scope: !1759)
!1772 = !DILocation(line: 327, column: 10, scope: !1759)
!1773 = !DILocation(line: 327, column: 3, scope: !1759)
!1774 = distinct !DISubprogram(name: "strtoumax", scope: !1760, file: !1760, line: 336, type: !1775, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1779)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1777, !1520, !1766, !327}
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1764, line: 102, baseType: !1778)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1572, line: 73, baseType: !456)
!1779 = !{!1780, !1781, !1782}
!1780 = !DILocalVariable(name: "nptr", arg: 1, scope: !1774, file: !1760, line: 336, type: !1520)
!1781 = !DILocalVariable(name: "endptr", arg: 2, scope: !1774, file: !1760, line: 336, type: !1766)
!1782 = !DILocalVariable(name: "base", arg: 3, scope: !1774, file: !1760, line: 336, type: !327)
!1783 = !DILocation(line: 0, scope: !1774)
!1784 = !DILocation(line: 339, column: 10, scope: !1774)
!1785 = !DILocation(line: 339, column: 3, scope: !1774)
!1786 = distinct !DISubprogram(name: "wcstoimax", scope: !1760, file: !1760, line: 348, type: !1787, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1796)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!1763, !1789, !1793, !327}
!1789 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1790)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1792)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1760, line: 34, baseType: !327)
!1793 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1794)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1796 = !{!1797, !1798, !1799}
!1797 = !DILocalVariable(name: "nptr", arg: 1, scope: !1786, file: !1760, line: 348, type: !1789)
!1798 = !DILocalVariable(name: "endptr", arg: 2, scope: !1786, file: !1760, line: 348, type: !1793)
!1799 = !DILocalVariable(name: "base", arg: 3, scope: !1786, file: !1760, line: 348, type: !327)
!1800 = !DILocation(line: 0, scope: !1786)
!1801 = !DILocation(line: 351, column: 10, scope: !1786)
!1802 = !DILocation(line: 351, column: 3, scope: !1786)
!1803 = distinct !DISubprogram(name: "wcstoumax", scope: !1760, file: !1760, line: 362, type: !1804, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1806)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!1777, !1789, !1793, !327}
!1806 = !{!1807, !1808, !1809}
!1807 = !DILocalVariable(name: "nptr", arg: 1, scope: !1803, file: !1760, line: 362, type: !1789)
!1808 = !DILocalVariable(name: "endptr", arg: 2, scope: !1803, file: !1760, line: 362, type: !1793)
!1809 = !DILocalVariable(name: "base", arg: 3, scope: !1803, file: !1760, line: 362, type: !327)
!1810 = !DILocation(line: 0, scope: !1803)
!1811 = !DILocation(line: 365, column: 10, scope: !1803)
!1812 = !DILocation(line: 365, column: 3, scope: !1803)
!1813 = distinct !DISubprogram(name: "stat", scope: !1814, file: !1814, line: 453, type: !1815, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1854)
!1814 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!327, !332, !1817}
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1819, line: 46, size: 1152, elements: !1820)
!1819 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1820 = !{!1821, !1823, !1825, !1827, !1829, !1831, !1833, !1834, !1835, !1836, !1838, !1840, !1848, !1849, !1850}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1818, file: !1819, line: 48, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1572, line: 145, baseType: !456)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1818, file: !1819, line: 53, baseType: !1824, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1572, line: 148, baseType: !456)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1818, file: !1819, line: 61, baseType: !1826, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1572, line: 151, baseType: !456)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1818, file: !1819, line: 62, baseType: !1828, size: 32, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1572, line: 150, baseType: !5)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1818, file: !1819, line: 64, baseType: !1830, size: 32, offset: 224)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1572, line: 146, baseType: !5)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1818, file: !1819, line: 65, baseType: !1832, size: 32, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1572, line: 147, baseType: !5)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1818, file: !1819, line: 67, baseType: !327, size: 32, offset: 288)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1818, file: !1819, line: 69, baseType: !1822, size: 64, offset: 320)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1818, file: !1819, line: 74, baseType: !1571, size: 64, offset: 384)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1818, file: !1819, line: 78, baseType: !1837, size: 64, offset: 448)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1572, line: 174, baseType: !458)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1818, file: !1819, line: 80, baseType: !1839, size: 64, offset: 512)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1572, line: 179, baseType: !458)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1818, file: !1819, line: 91, baseType: !1841, size: 128, offset: 576)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1842, line: 10, size: 128, elements: !1843)
!1842 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1843 = !{!1844, !1846}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1841, file: !1842, line: 12, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1572, line: 160, baseType: !458)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1841, file: !1842, line: 16, baseType: !1847, size: 64, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1572, line: 196, baseType: !458)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1818, file: !1819, line: 92, baseType: !1841, size: 128, offset: 704)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1818, file: !1819, line: 93, baseType: !1841, size: 128, offset: 832)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1818, file: !1819, line: 106, baseType: !1851, size: 192, offset: 960)
!1851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1847, size: 192, elements: !1852)
!1852 = !{!1853}
!1853 = !DISubrange(count: 3)
!1854 = !{!1855, !1856}
!1855 = !DILocalVariable(name: "__path", arg: 1, scope: !1813, file: !1814, line: 453, type: !332)
!1856 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1813, file: !1814, line: 453, type: !1817)
!1857 = !DILocation(line: 0, scope: !1813)
!1858 = !DILocation(line: 455, column: 10, scope: !1813)
!1859 = !DILocation(line: 455, column: 3, scope: !1813)
!1860 = distinct !DISubprogram(name: "lstat", scope: !1814, file: !1814, line: 460, type: !1815, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1861)
!1861 = !{!1862, !1863}
!1862 = !DILocalVariable(name: "__path", arg: 1, scope: !1860, file: !1814, line: 460, type: !332)
!1863 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1860, file: !1814, line: 460, type: !1817)
!1864 = !DILocation(line: 0, scope: !1860)
!1865 = !DILocation(line: 462, column: 10, scope: !1860)
!1866 = !DILocation(line: 462, column: 3, scope: !1860)
!1867 = distinct !DISubprogram(name: "fstat", scope: !1814, file: !1814, line: 467, type: !1868, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1870)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!327, !327, !1817}
!1870 = !{!1871, !1872}
!1871 = !DILocalVariable(name: "__fd", arg: 1, scope: !1867, file: !1814, line: 467, type: !327)
!1872 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1867, file: !1814, line: 467, type: !1817)
!1873 = !DILocation(line: 0, scope: !1867)
!1874 = !DILocation(line: 469, column: 10, scope: !1867)
!1875 = !DILocation(line: 469, column: 3, scope: !1867)
!1876 = distinct !DISubprogram(name: "fstatat", scope: !1814, file: !1814, line: 474, type: !1877, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1879)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!327, !327, !332, !1817, !327}
!1879 = !{!1880, !1881, !1882, !1883}
!1880 = !DILocalVariable(name: "__fd", arg: 1, scope: !1876, file: !1814, line: 474, type: !327)
!1881 = !DILocalVariable(name: "__filename", arg: 2, scope: !1876, file: !1814, line: 474, type: !332)
!1882 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1876, file: !1814, line: 474, type: !1817)
!1883 = !DILocalVariable(name: "__flag", arg: 4, scope: !1876, file: !1814, line: 474, type: !327)
!1884 = !DILocation(line: 0, scope: !1876)
!1885 = !DILocation(line: 477, column: 10, scope: !1876)
!1886 = !DILocation(line: 477, column: 3, scope: !1876)
!1887 = distinct !DISubprogram(name: "mknod", scope: !1814, file: !1814, line: 483, type: !1888, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1890)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!327, !332, !1828, !1822}
!1890 = !{!1891, !1892, !1893}
!1891 = !DILocalVariable(name: "__path", arg: 1, scope: !1887, file: !1814, line: 483, type: !332)
!1892 = !DILocalVariable(name: "__mode", arg: 2, scope: !1887, file: !1814, line: 483, type: !1828)
!1893 = !DILocalVariable(name: "__dev", arg: 3, scope: !1887, file: !1814, line: 483, type: !1822)
!1894 = !DILocation(line: 0, scope: !1887)
!1895 = !DILocation(line: 485, column: 10, scope: !1887)
!1896 = !DILocation(line: 485, column: 3, scope: !1887)
!1897 = distinct !DISubprogram(name: "mknodat", scope: !1814, file: !1814, line: 491, type: !1898, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1900)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!327, !327, !332, !1828, !1822}
!1900 = !{!1901, !1902, !1903, !1904}
!1901 = !DILocalVariable(name: "__fd", arg: 1, scope: !1897, file: !1814, line: 491, type: !327)
!1902 = !DILocalVariable(name: "__path", arg: 2, scope: !1897, file: !1814, line: 491, type: !332)
!1903 = !DILocalVariable(name: "__mode", arg: 3, scope: !1897, file: !1814, line: 491, type: !1828)
!1904 = !DILocalVariable(name: "__dev", arg: 4, scope: !1897, file: !1814, line: 491, type: !1822)
!1905 = !DILocation(line: 0, scope: !1897)
!1906 = !DILocation(line: 494, column: 10, scope: !1897)
!1907 = !DILocation(line: 494, column: 3, scope: !1897)
!1908 = distinct !DISubprogram(name: "stat64", scope: !1814, file: !1814, line: 502, type: !1909, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1931)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!327, !332, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1819, line: 119, size: 1152, elements: !1913)
!1913 = !{!1914, !1915, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1927, !1928, !1929, !1930}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1912, file: !1819, line: 121, baseType: !1822, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1912, file: !1819, line: 123, baseType: !1916, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1572, line: 149, baseType: !456)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1912, file: !1819, line: 124, baseType: !1826, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1912, file: !1819, line: 125, baseType: !1828, size: 32, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1912, file: !1819, line: 132, baseType: !1830, size: 32, offset: 224)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1912, file: !1819, line: 133, baseType: !1832, size: 32, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1912, file: !1819, line: 135, baseType: !327, size: 32, offset: 288)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1912, file: !1819, line: 136, baseType: !1822, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1912, file: !1819, line: 137, baseType: !1571, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1912, file: !1819, line: 143, baseType: !1837, size: 64, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1912, file: !1819, line: 144, baseType: !1926, size: 64, offset: 512)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1572, line: 180, baseType: !458)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1912, file: !1819, line: 152, baseType: !1841, size: 128, offset: 576)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1912, file: !1819, line: 153, baseType: !1841, size: 128, offset: 704)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1912, file: !1819, line: 154, baseType: !1841, size: 128, offset: 832)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1912, file: !1819, line: 164, baseType: !1851, size: 192, offset: 960)
!1931 = !{!1932, !1933}
!1932 = !DILocalVariable(name: "__path", arg: 1, scope: !1908, file: !1814, line: 502, type: !332)
!1933 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1908, file: !1814, line: 502, type: !1911)
!1934 = !DILocation(line: 0, scope: !1908)
!1935 = !DILocation(line: 504, column: 10, scope: !1908)
!1936 = !DILocation(line: 504, column: 3, scope: !1908)
!1937 = distinct !DISubprogram(name: "lstat64", scope: !1814, file: !1814, line: 509, type: !1909, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1938)
!1938 = !{!1939, !1940}
!1939 = !DILocalVariable(name: "__path", arg: 1, scope: !1937, file: !1814, line: 509, type: !332)
!1940 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1937, file: !1814, line: 509, type: !1911)
!1941 = !DILocation(line: 0, scope: !1937)
!1942 = !DILocation(line: 511, column: 10, scope: !1937)
!1943 = !DILocation(line: 511, column: 3, scope: !1937)
!1944 = distinct !DISubprogram(name: "fstat64", scope: !1814, file: !1814, line: 516, type: !1945, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!327, !327, !1911}
!1947 = !{!1948, !1949}
!1948 = !DILocalVariable(name: "__fd", arg: 1, scope: !1944, file: !1814, line: 516, type: !327)
!1949 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1944, file: !1814, line: 516, type: !1911)
!1950 = !DILocation(line: 0, scope: !1944)
!1951 = !DILocation(line: 518, column: 10, scope: !1944)
!1952 = !DILocation(line: 518, column: 3, scope: !1944)
!1953 = distinct !DISubprogram(name: "fstatat64", scope: !1814, file: !1814, line: 523, type: !1954, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1956)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!327, !327, !332, !1911, !327}
!1956 = !{!1957, !1958, !1959, !1960}
!1957 = !DILocalVariable(name: "__fd", arg: 1, scope: !1953, file: !1814, line: 523, type: !327)
!1958 = !DILocalVariable(name: "__filename", arg: 2, scope: !1953, file: !1814, line: 523, type: !332)
!1959 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1953, file: !1814, line: 523, type: !1911)
!1960 = !DILocalVariable(name: "__flag", arg: 4, scope: !1953, file: !1814, line: 523, type: !327)
!1961 = !DILocation(line: 0, scope: !1953)
!1962 = !DILocation(line: 526, column: 10, scope: !1953)
!1963 = !DILocation(line: 526, column: 3, scope: !1953)
!1964 = distinct !DISubprogram(name: "gsi_insert_seq_before_without_update", scope: !1, file: !1, line: 143, type: !1965, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1974)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !1967, !389, !247}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !248, line: 265, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !248, line: 254, size: 192, elements: !1970)
!1970 = !{!1971, !1972, !1973}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1969, file: !248, line: 257, baseType: !394, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1969, file: !248, line: 263, baseType: !389, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1969, file: !248, line: 264, baseType: !653, size: 64, offset: 128)
!1974 = !{!1975, !1976, !1977, !1978, !1979}
!1975 = !DILocalVariable(name: "i", arg: 1, scope: !1964, file: !1, line: 143, type: !1967)
!1976 = !DILocalVariable(name: "seq", arg: 2, scope: !1964, file: !1, line: 143, type: !389)
!1977 = !DILocalVariable(name: "mode", arg: 3, scope: !1964, file: !1, line: 144, type: !247)
!1978 = !DILocalVariable(name: "first", scope: !1964, file: !1, line: 146, type: !394)
!1979 = !DILocalVariable(name: "last", scope: !1964, file: !1, line: 146, type: !394)
!1980 = !DILocation(line: 0, scope: !1964)
!1981 = !DILocation(line: 148, column: 11, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 148, column: 7)
!1983 = !DILocation(line: 148, column: 7, scope: !1964)
!1984 = !DILocation(line: 152, column: 3, scope: !1964)
!1985 = !DILocation(line: 154, column: 11, scope: !1964)
!1986 = !DILocation(line: 155, column: 10, scope: !1964)
!1987 = !DILocation(line: 157, column: 3, scope: !1964)
!1988 = !DILocation(line: 158, column: 3, scope: !1964)
!1989 = !DILocation(line: 159, column: 3, scope: !1964)
!1990 = !DILocation(line: 162, column: 8, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 162, column: 7)
!1992 = !DILocation(line: 162, column: 18, scope: !1991)
!1993 = !DILocation(line: 162, column: 14, scope: !1991)
!1994 = !DILocation(line: 164, column: 7, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !1, line: 163, column: 5)
!1996 = !DILocation(line: 168, column: 3, scope: !1964)
!1997 = !DILocation(line: 169, column: 1, scope: !1964)
!1998 = distinct !DISubprogram(name: "gimple_seq_first", scope: !248, file: !248, line: 159, type: !1999, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2004)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!394, !2001}
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !339, line: 67, baseType: !2002)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!2004 = !{!2005}
!2005 = !DILocalVariable(name: "s", arg: 1, scope: !1998, file: !248, line: 159, type: !2001)
!2006 = !DILocation(line: 0, scope: !1998)
!2007 = !DILocation(line: 161, column: 10, scope: !1998)
!2008 = !DILocation(line: 161, column: 17, scope: !1998)
!2009 = !DILocation(line: 161, column: 3, scope: !1998)
!2010 = distinct !DISubprogram(name: "gimple_seq_last", scope: !248, file: !248, line: 178, type: !1999, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2011)
!2011 = !{!2012}
!2012 = !DILocalVariable(name: "s", arg: 1, scope: !2010, file: !248, line: 178, type: !2001)
!2013 = !DILocation(line: 0, scope: !2010)
!2014 = !DILocation(line: 180, column: 10, scope: !2010)
!2015 = !DILocation(line: 180, column: 17, scope: !2010)
!2016 = !DILocation(line: 180, column: 3, scope: !2010)
!2017 = distinct !DISubprogram(name: "gimple_seq_set_first", scope: !248, file: !248, line: 206, type: !2018, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{null, !389, !394}
!2020 = !{!2021, !2022}
!2021 = !DILocalVariable(name: "s", arg: 1, scope: !2017, file: !248, line: 206, type: !389)
!2022 = !DILocalVariable(name: "first", arg: 2, scope: !2017, file: !248, line: 206, type: !394)
!2023 = !DILocation(line: 0, scope: !2017)
!2024 = !DILocation(line: 208, column: 6, scope: !2017)
!2025 = !DILocation(line: 208, column: 12, scope: !2017)
!2026 = !DILocation(line: 209, column: 1, scope: !2017)
!2027 = distinct !DISubprogram(name: "gimple_seq_set_last", scope: !248, file: !248, line: 197, type: !2018, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2028)
!2028 = !{!2029, !2030}
!2029 = !DILocalVariable(name: "s", arg: 1, scope: !2027, file: !248, line: 197, type: !389)
!2030 = !DILocalVariable(name: "last", arg: 2, scope: !2027, file: !248, line: 197, type: !394)
!2031 = !DILocation(line: 0, scope: !2027)
!2032 = !DILocation(line: 199, column: 6, scope: !2027)
!2033 = !DILocation(line: 199, column: 11, scope: !2027)
!2034 = !DILocation(line: 200, column: 1, scope: !2027)
!2035 = distinct !DISubprogram(name: "gsi_insert_seq_nodes_before", scope: !1, file: !1, line: 79, type: !2036, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2038)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{null, !1967, !394, !394, !247}
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045}
!2039 = !DILocalVariable(name: "i", arg: 1, scope: !2035, file: !1, line: 79, type: !1967)
!2040 = !DILocalVariable(name: "first", arg: 2, scope: !2035, file: !1, line: 80, type: !394)
!2041 = !DILocalVariable(name: "last", arg: 3, scope: !2035, file: !1, line: 81, type: !394)
!2042 = !DILocalVariable(name: "mode", arg: 4, scope: !2035, file: !1, line: 82, type: !247)
!2043 = !DILocalVariable(name: "bb", scope: !2035, file: !1, line: 84, type: !653)
!2044 = !DILocalVariable(name: "cur", scope: !2035, file: !1, line: 85, type: !394)
!2045 = !DILocalVariable(name: "itlast", scope: !2046, file: !1, line: 103, type: !394)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !1, line: 102, column: 5)
!2047 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 91, column: 7)
!2048 = !DILocation(line: 0, scope: !2035)
!2049 = !DILocation(line: 85, column: 28, scope: !2035)
!2050 = !DILocation(line: 87, column: 13, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 87, column: 7)
!2052 = !DILocation(line: 87, column: 26, scope: !2051)
!2053 = !DILocation(line: 87, column: 7, scope: !2035)
!2054 = !DILocation(line: 88, column: 5, scope: !2051)
!2055 = !DILocation(line: 91, column: 7, scope: !2047)
!2056 = !DILocation(line: 91, column: 7, scope: !2035)
!2057 = !DILocation(line: 93, column: 26, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2047, file: !1, line: 92, column: 5)
!2059 = !DILocation(line: 93, column: 14, scope: !2058)
!2060 = !DILocation(line: 93, column: 19, scope: !2058)
!2061 = !DILocation(line: 94, column: 11, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !1, line: 94, column: 11)
!2063 = !DILocation(line: 94, column: 11, scope: !2058)
!2064 = !DILocation(line: 95, column: 15, scope: !2062)
!2065 = !DILocation(line: 95, column: 20, scope: !2062)
!2066 = !DILocation(line: 95, column: 2, scope: !2062)
!2067 = !DILocation(line: 97, column: 27, scope: !2062)
!2068 = !DILocation(line: 97, column: 2, scope: !2062)
!2069 = !DILocation(line: 98, column: 13, scope: !2058)
!2070 = !DILocation(line: 98, column: 18, scope: !2058)
!2071 = !DILocation(line: 99, column: 17, scope: !2058)
!2072 = !DILocation(line: 100, column: 5, scope: !2058)
!2073 = !DILocation(line: 103, column: 52, scope: !2046)
!2074 = !DILocation(line: 103, column: 32, scope: !2046)
!2075 = !DILocation(line: 0, scope: !2046)
!2076 = !DILocation(line: 110, column: 14, scope: !2046)
!2077 = !DILocation(line: 110, column: 19, scope: !2046)
!2078 = !DILocation(line: 111, column: 11, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2046, file: !1, line: 111, column: 11)
!2080 = !DILocation(line: 111, column: 11, scope: !2046)
!2081 = !DILocation(line: 112, column: 10, scope: !2079)
!2082 = !DILocation(line: 112, column: 15, scope: !2079)
!2083 = !DILocation(line: 112, column: 2, scope: !2079)
!2084 = !DILocation(line: 114, column: 27, scope: !2079)
!2085 = !DILocation(line: 114, column: 2, scope: !2079)
!2086 = !DILocation(line: 115, column: 31, scope: !2046)
!2087 = !DILocation(line: 115, column: 7, scope: !2046)
!2088 = !DILocation(line: 119, column: 3, scope: !2035)
!2089 = !DILocation(line: 123, column: 14, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 120, column: 5)
!2091 = !DILocation(line: 124, column: 7, scope: !2090)
!2092 = !DILocation(line: 128, column: 7, scope: !2090)
!2093 = !DILocation(line: 129, column: 5, scope: !2090)
!2094 = !DILocation(line: 130, column: 1, scope: !2035)
!2095 = distinct !DISubprogram(name: "gsi_insert_seq_before", scope: !1, file: !1, line: 178, type: !1965, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2096)
!2096 = !{!2097, !2098, !2099}
!2097 = !DILocalVariable(name: "i", arg: 1, scope: !2095, file: !1, line: 178, type: !1967)
!2098 = !DILocalVariable(name: "seq", arg: 2, scope: !2095, file: !1, line: 178, type: !389)
!2099 = !DILocalVariable(name: "mode", arg: 3, scope: !2095, file: !1, line: 179, type: !247)
!2100 = !DILocation(line: 0, scope: !2095)
!2101 = !DILocation(line: 181, column: 3, scope: !2095)
!2102 = !DILocation(line: 182, column: 3, scope: !2095)
!2103 = !DILocation(line: 183, column: 1, scope: !2095)
!2104 = distinct !DISubprogram(name: "update_modified_stmts", scope: !1, file: !1, line: 45, type: !2105, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{null, !389}
!2107 = !{!2108, !2109}
!2108 = !DILocalVariable(name: "seq", arg: 1, scope: !2104, file: !1, line: 45, type: !389)
!2109 = !DILocalVariable(name: "gsi", scope: !2104, file: !1, line: 47, type: !1968)
!2110 = !DILocation(line: 0, scope: !2104)
!2111 = !DILocation(line: 47, column: 3, scope: !2104)
!2112 = !DILocation(line: 49, column: 8, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2104, file: !1, line: 49, column: 7)
!2114 = !DILocation(line: 49, column: 7, scope: !2104)
!2115 = !DILocation(line: 51, column: 14, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2104, file: !1, line: 51, column: 3)
!2117 = !DILocation(line: 51, column: 8, scope: !2116)
!2118 = !DILocation(line: 51, column: 32, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2116, file: !1, line: 51, column: 3)
!2120 = !DILocation(line: 51, column: 31, scope: !2119)
!2121 = !DILocation(line: 51, column: 3, scope: !2116)
!2122 = !DILocation(line: 52, column: 30, scope: !2119)
!2123 = !DILocation(line: 52, column: 5, scope: !2119)
!2124 = !DILocation(line: 51, column: 49, scope: !2119)
!2125 = !DILocation(line: 51, column: 3, scope: !2119)
!2126 = distinct !{!2126, !2121, !2127}
!2127 = !DILocation(line: 52, column: 44, scope: !2116)
!2128 = !DILocation(line: 53, column: 1, scope: !2104)
!2129 = distinct !DISubprogram(name: "gsi_insert_seq_after_without_update", scope: !1, file: !1, line: 254, type: !1965, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2130)
!2130 = !{!2131, !2132, !2133, !2134, !2135}
!2131 = !DILocalVariable(name: "i", arg: 1, scope: !2129, file: !1, line: 254, type: !1967)
!2132 = !DILocalVariable(name: "seq", arg: 2, scope: !2129, file: !1, line: 254, type: !389)
!2133 = !DILocalVariable(name: "mode", arg: 3, scope: !2129, file: !1, line: 255, type: !247)
!2134 = !DILocalVariable(name: "first", scope: !2129, file: !1, line: 257, type: !394)
!2135 = !DILocalVariable(name: "last", scope: !2129, file: !1, line: 257, type: !394)
!2136 = !DILocation(line: 0, scope: !2129)
!2137 = !DILocation(line: 259, column: 11, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2129, file: !1, line: 259, column: 7)
!2139 = !DILocation(line: 259, column: 7, scope: !2129)
!2140 = !DILocation(line: 263, column: 3, scope: !2129)
!2141 = !DILocation(line: 265, column: 11, scope: !2129)
!2142 = !DILocation(line: 266, column: 10, scope: !2129)
!2143 = !DILocation(line: 268, column: 3, scope: !2129)
!2144 = !DILocation(line: 269, column: 3, scope: !2129)
!2145 = !DILocation(line: 270, column: 3, scope: !2129)
!2146 = !DILocation(line: 273, column: 8, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2129, file: !1, line: 273, column: 7)
!2148 = !DILocation(line: 273, column: 18, scope: !2147)
!2149 = !DILocation(line: 273, column: 14, scope: !2147)
!2150 = !DILocation(line: 275, column: 7, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !1, line: 274, column: 5)
!2152 = !DILocation(line: 279, column: 3, scope: !2129)
!2153 = !DILocation(line: 280, column: 1, scope: !2129)
!2154 = distinct !DISubprogram(name: "gsi_insert_seq_nodes_after", scope: !1, file: !1, line: 196, type: !2036, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2155)
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161}
!2156 = !DILocalVariable(name: "i", arg: 1, scope: !2154, file: !1, line: 196, type: !1967)
!2157 = !DILocalVariable(name: "first", arg: 2, scope: !2154, file: !1, line: 197, type: !394)
!2158 = !DILocalVariable(name: "last", arg: 3, scope: !2154, file: !1, line: 198, type: !394)
!2159 = !DILocalVariable(name: "m", arg: 4, scope: !2154, file: !1, line: 199, type: !247)
!2160 = !DILocalVariable(name: "bb", scope: !2154, file: !1, line: 201, type: !653)
!2161 = !DILocalVariable(name: "cur", scope: !2154, file: !1, line: 202, type: !394)
!2162 = !DILocation(line: 0, scope: !2154)
!2163 = !DILocation(line: 202, column: 28, scope: !2154)
!2164 = !DILocation(line: 206, column: 13, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2154, file: !1, line: 206, column: 7)
!2166 = !DILocation(line: 206, column: 26, scope: !2165)
!2167 = !DILocation(line: 206, column: 7, scope: !2154)
!2168 = !DILocation(line: 207, column: 5, scope: !2165)
!2169 = !DILocation(line: 210, column: 7, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2154, file: !1, line: 210, column: 7)
!2171 = !DILocation(line: 210, column: 7, scope: !2154)
!2172 = !DILocation(line: 212, column: 25, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2170, file: !1, line: 211, column: 5)
!2174 = !DILocation(line: 212, column: 13, scope: !2173)
!2175 = !DILocation(line: 212, column: 18, scope: !2173)
!2176 = !DILocation(line: 213, column: 11, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !1, line: 213, column: 11)
!2178 = !DILocation(line: 213, column: 11, scope: !2173)
!2179 = !DILocation(line: 214, column: 14, scope: !2177)
!2180 = !DILocation(line: 214, column: 19, scope: !2177)
!2181 = !DILocation(line: 214, column: 2, scope: !2177)
!2182 = !DILocation(line: 216, column: 26, scope: !2177)
!2183 = !DILocation(line: 216, column: 2, scope: !2177)
!2184 = !DILocation(line: 217, column: 14, scope: !2173)
!2185 = !DILocation(line: 217, column: 19, scope: !2173)
!2186 = !DILocation(line: 218, column: 17, scope: !2173)
!2187 = !DILocation(line: 219, column: 5, scope: !2173)
!2188 = !DILocation(line: 222, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2170, file: !1, line: 221, column: 5)
!2190 = !DILocation(line: 223, column: 32, scope: !2189)
!2191 = !DILocation(line: 223, column: 7, scope: !2189)
!2192 = !DILocation(line: 224, column: 31, scope: !2189)
!2193 = !DILocation(line: 224, column: 7, scope: !2189)
!2194 = !DILocation(line: 228, column: 3, scope: !2154)
!2195 = !DILocation(line: 231, column: 14, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2154, file: !1, line: 229, column: 5)
!2197 = !DILocation(line: 232, column: 7, scope: !2196)
!2198 = !DILocation(line: 234, column: 14, scope: !2196)
!2199 = !DILocation(line: 235, column: 7, scope: !2196)
!2200 = !DILocation(line: 237, column: 7, scope: !2196)
!2201 = !DILocation(line: 240, column: 7, scope: !2196)
!2202 = !DILocation(line: 241, column: 5, scope: !2196)
!2203 = !DILocation(line: 242, column: 1, scope: !2154)
!2204 = distinct !DISubprogram(name: "gsi_insert_seq_after", scope: !1, file: !1, line: 288, type: !1965, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2205)
!2205 = !{!2206, !2207, !2208}
!2206 = !DILocalVariable(name: "i", arg: 1, scope: !2204, file: !1, line: 288, type: !1967)
!2207 = !DILocalVariable(name: "seq", arg: 2, scope: !2204, file: !1, line: 288, type: !389)
!2208 = !DILocalVariable(name: "mode", arg: 3, scope: !2204, file: !1, line: 289, type: !247)
!2209 = !DILocation(line: 0, scope: !2204)
!2210 = !DILocation(line: 291, column: 3, scope: !2204)
!2211 = !DILocation(line: 292, column: 3, scope: !2204)
!2212 = !DILocation(line: 293, column: 1, scope: !2204)
!2213 = distinct !DISubprogram(name: "gsi_split_seq_after", scope: !1, file: !1, line: 300, type: !2214, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!389, !1968}
!2216 = !{!2217, !2218, !2219, !2220, !2221}
!2217 = !DILocalVariable(name: "i", arg: 1, scope: !2213, file: !1, line: 300, type: !1968)
!2218 = !DILocalVariable(name: "cur", scope: !2213, file: !1, line: 302, type: !394)
!2219 = !DILocalVariable(name: "next", scope: !2213, file: !1, line: 302, type: !394)
!2220 = !DILocalVariable(name: "old_seq", scope: !2213, file: !1, line: 303, type: !389)
!2221 = !DILocalVariable(name: "new_seq", scope: !2213, file: !1, line: 303, type: !389)
!2222 = !DILocation(line: 300, column: 43, scope: !2213)
!2223 = !DILocation(line: 305, column: 11, scope: !2213)
!2224 = !DILocation(line: 0, scope: !2213)
!2225 = !DILocation(line: 308, column: 3, scope: !2213)
!2226 = !DILocation(line: 309, column: 15, scope: !2213)
!2227 = !DILocation(line: 311, column: 15, scope: !2213)
!2228 = !DILocation(line: 312, column: 13, scope: !2213)
!2229 = !DILocation(line: 314, column: 3, scope: !2213)
!2230 = !DILocation(line: 315, column: 33, scope: !2213)
!2231 = !DILocation(line: 315, column: 3, scope: !2213)
!2232 = !DILocation(line: 316, column: 3, scope: !2213)
!2233 = !DILocation(line: 317, column: 13, scope: !2213)
!2234 = !DILocation(line: 318, column: 9, scope: !2213)
!2235 = !DILocation(line: 318, column: 14, scope: !2213)
!2236 = !DILocation(line: 320, column: 3, scope: !2213)
!2237 = distinct !DISubprogram(name: "gsi_split_seq_before", scope: !1, file: !1, line: 328, type: !2238, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2240)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!389, !1967}
!2240 = !{!2241, !2242, !2243, !2244, !2245}
!2241 = !DILocalVariable(name: "i", arg: 1, scope: !2237, file: !1, line: 328, type: !1967)
!2242 = !DILocalVariable(name: "cur", scope: !2237, file: !1, line: 330, type: !394)
!2243 = !DILocalVariable(name: "prev", scope: !2237, file: !1, line: 330, type: !394)
!2244 = !DILocalVariable(name: "old_seq", scope: !2237, file: !1, line: 331, type: !389)
!2245 = !DILocalVariable(name: "new_seq", scope: !2237, file: !1, line: 331, type: !389)
!2246 = !DILocation(line: 0, scope: !2237)
!2247 = !DILocation(line: 333, column: 12, scope: !2237)
!2248 = !DILocation(line: 336, column: 3, scope: !2237)
!2249 = !DILocation(line: 337, column: 15, scope: !2237)
!2250 = !DILocation(line: 339, column: 16, scope: !2237)
!2251 = !DILocation(line: 340, column: 13, scope: !2237)
!2252 = !DILocation(line: 341, column: 10, scope: !2237)
!2253 = !DILocation(line: 344, column: 3, scope: !2237)
!2254 = !DILocation(line: 345, column: 33, scope: !2237)
!2255 = !DILocation(line: 345, column: 3, scope: !2237)
!2256 = !DILocation(line: 348, column: 3, scope: !2237)
!2257 = !DILocation(line: 349, column: 13, scope: !2237)
!2258 = !DILocation(line: 350, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2237, file: !1, line: 350, column: 7)
!2260 = !DILocation(line: 350, column: 7, scope: !2237)
!2261 = !DILocation(line: 351, column: 11, scope: !2259)
!2262 = !DILocation(line: 351, column: 16, scope: !2259)
!2263 = !DILocation(line: 351, column: 5, scope: !2259)
!2264 = !DILocation(line: 353, column: 5, scope: !2259)
!2265 = !DILocation(line: 355, column: 3, scope: !2237)
!2266 = distinct !DISubprogram(name: "gsi_replace", scope: !1, file: !1, line: 365, type: !2267, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2269)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{null, !1967, !338, !326}
!2269 = !{!2270, !2271, !2272, !2273}
!2270 = !DILocalVariable(name: "gsi", arg: 1, scope: !2266, file: !1, line: 365, type: !1967)
!2271 = !DILocalVariable(name: "stmt", arg: 2, scope: !2266, file: !1, line: 365, type: !338)
!2272 = !DILocalVariable(name: "update_eh_info", arg: 3, scope: !2266, file: !1, line: 365, type: !326)
!2273 = !DILocalVariable(name: "orig_stmt", scope: !2266, file: !1, line: 367, type: !338)
!2274 = !DILocation(line: 0, scope: !2266)
!2275 = !DILocation(line: 367, column: 22, scope: !2266)
!2276 = !DILocation(line: 369, column: 12, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2266, file: !1, line: 369, column: 7)
!2278 = !DILocation(line: 369, column: 7, scope: !2266)
!2279 = !DILocation(line: 372, column: 3, scope: !2266)
!2280 = !DILocation(line: 375, column: 30, scope: !2266)
!2281 = !DILocation(line: 375, column: 3, scope: !2266)
!2282 = !DILocation(line: 376, column: 24, scope: !2266)
!2283 = !DILocation(line: 376, column: 3, scope: !2266)
!2284 = !DILocation(line: 380, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2266, file: !1, line: 380, column: 7)
!2286 = !DILocation(line: 380, column: 7, scope: !2266)
!2287 = !DILocation(line: 381, column: 5, scope: !2285)
!2288 = !DILocation(line: 383, column: 37, scope: !2266)
!2289 = !DILocation(line: 383, column: 3, scope: !2266)
!2290 = !DILocation(line: 384, column: 34, scope: !2266)
!2291 = !DILocation(line: 384, column: 3, scope: !2266)
!2292 = !DILocation(line: 385, column: 3, scope: !2266)
!2293 = !DILocation(line: 386, column: 4, scope: !2266)
!2294 = !DILocation(line: 386, column: 23, scope: !2266)
!2295 = !DILocation(line: 387, column: 3, scope: !2266)
!2296 = !DILocation(line: 388, column: 3, scope: !2266)
!2297 = !DILocation(line: 389, column: 1, scope: !2266)
!2298 = distinct !DISubprogram(name: "gsi_stmt", scope: !248, file: !248, line: 4501, type: !2299, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!338, !1968}
!2301 = !{!2302}
!2302 = !DILocalVariable(name: "i", arg: 1, scope: !2298, file: !248, line: 4501, type: !1968)
!2303 = !DILocation(line: 4501, column: 32, scope: !2298)
!2304 = !DILocation(line: 4503, column: 12, scope: !2298)
!2305 = !DILocation(line: 4503, column: 17, scope: !2298)
!2306 = !DILocation(line: 4503, column: 3, scope: !2298)
!2307 = distinct !DISubprogram(name: "gimple_has_lhs", scope: !248, file: !248, line: 2210, type: !2308, scopeLine: 2211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2310)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!326, !338}
!2310 = !{!2311}
!2311 = !DILocalVariable(name: "stmt", arg: 1, scope: !2307, file: !248, line: 2210, type: !338)
!2312 = !DILocation(line: 0, scope: !2307)
!2313 = !DILocation(line: 2212, column: 11, scope: !2307)
!2314 = !DILocation(line: 2213, column: 4, scope: !2307)
!2315 = !DILocation(line: 2213, column: 8, scope: !2307)
!2316 = !DILocation(line: 2214, column: 8, scope: !2307)
!2317 = !DILocation(line: 2214, column: 11, scope: !2307)
!2318 = !DILocation(line: 2214, column: 34, scope: !2307)
!2319 = !DILocation(line: 2212, column: 3, scope: !2307)
!2320 = distinct !DISubprogram(name: "gimple_set_location", scope: !248, file: !248, line: 1156, type: !2321, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !338, !357}
!2323 = !{!2324, !2325}
!2324 = !DILocalVariable(name: "g", arg: 1, scope: !2320, file: !248, line: 1156, type: !338)
!2325 = !DILocalVariable(name: "location", arg: 2, scope: !2320, file: !248, line: 1156, type: !357)
!2326 = !DILocation(line: 0, scope: !2320)
!2327 = !DILocation(line: 1158, column: 13, scope: !2320)
!2328 = !DILocation(line: 1158, column: 22, scope: !2320)
!2329 = !DILocation(line: 1159, column: 1, scope: !2320)
!2330 = distinct !DISubprogram(name: "gimple_location", scope: !248, file: !248, line: 1139, type: !2331, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2334)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!357, !2333}
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !339, line: 60, baseType: !1507)
!2334 = !{!2335}
!2335 = !DILocalVariable(name: "g", arg: 1, scope: !2330, file: !248, line: 1139, type: !2333)
!2336 = !DILocation(line: 0, scope: !2330)
!2337 = !DILocation(line: 1141, column: 20, scope: !2330)
!2338 = !DILocation(line: 1141, column: 3, scope: !2330)
!2339 = distinct !DISubprogram(name: "gsi_bb", scope: !248, file: !248, line: 4588, type: !2340, scopeLine: 4589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2342)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!653, !1968}
!2342 = !{!2343}
!2343 = !DILocalVariable(name: "i", arg: 1, scope: !2339, file: !248, line: 4588, type: !1968)
!2344 = !DILocation(line: 4588, column: 30, scope: !2339)
!2345 = !DILocation(line: 4590, column: 12, scope: !2339)
!2346 = !DILocation(line: 4590, column: 3, scope: !2339)
!2347 = distinct !DISubprogram(name: "delink_stmt_imm_use", scope: !2348, file: !2348, line: 883, type: !2349, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2351)
!2348 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2349 = !DISubroutineType(types: !2350)
!2350 = !{null, !338}
!2351 = !{!2352, !2353, !2366}
!2352 = !DILocalVariable(name: "stmt", arg: 1, scope: !2347, file: !2348, line: 883, type: !338)
!2353 = !DILocalVariable(name: "iter", scope: !2347, file: !2348, line: 885, type: !2354)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !318, line: 140, baseType: !2355)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !318, line: 131, size: 320, elements: !2356)
!2356 = !{!2357, !2358, !2359, !2361, !2363, !2364, !2365}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2355, file: !318, line: 133, baseType: !326, size: 8)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2355, file: !318, line: 134, baseType: !317, size: 32, offset: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2355, file: !318, line: 135, baseType: !2360, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !318, line: 42, baseType: !856)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2355, file: !318, line: 136, baseType: !2362, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !318, line: 50, baseType: !863)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !2355, file: !318, line: 137, baseType: !327, size: 32, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !2355, file: !318, line: 138, baseType: !327, size: 32, offset: 224)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !2355, file: !318, line: 139, baseType: !338, size: 64, offset: 256)
!2366 = !DILocalVariable(name: "use_p", scope: !2347, file: !2348, line: 886, type: !1509)
!2367 = !DILocation(line: 0, scope: !2347)
!2368 = !DILocation(line: 885, column: 4, scope: !2347)
!2369 = !DILocation(line: 888, column: 8, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2347, file: !2348, line: 888, column: 8)
!2371 = !DILocation(line: 888, column: 8, scope: !2347)
!2372 = !DILocation(line: 889, column: 6, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2370, file: !2348, line: 889, column: 6)
!2374 = !DILocation(line: 0, scope: !2373)
!2375 = !DILocation(line: 889, column: 6, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2373, file: !2348, line: 889, column: 6)
!2377 = !DILocation(line: 890, column: 8, scope: !2376)
!2378 = distinct !{!2378, !2372, !2379}
!2379 = !DILocation(line: 890, column: 29, scope: !2373)
!2380 = !DILocation(line: 891, column: 1, scope: !2347)
!2381 = distinct !DISubprogram(name: "gsi_stmt_ptr", scope: !248, file: !248, line: 4579, type: !2382, scopeLine: 4580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2385)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!2384, !1967}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!2385 = !{!2386}
!2386 = !DILocalVariable(name: "i", arg: 1, scope: !2381, file: !248, line: 4579, type: !1967)
!2387 = !DILocation(line: 0, scope: !2381)
!2388 = !DILocation(line: 4581, column: 14, scope: !2381)
!2389 = !DILocation(line: 4581, column: 19, scope: !2381)
!2390 = !DILocation(line: 4581, column: 3, scope: !2381)
!2391 = distinct !DISubprogram(name: "update_modified_stmt", scope: !1, file: !1, line: 34, type: !2349, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2392)
!2392 = !{!2393}
!2393 = !DILocalVariable(name: "stmt", arg: 1, scope: !2391, file: !1, line: 34, type: !338)
!2394 = !DILocation(line: 0, scope: !2391)
!2395 = !DILocation(line: 36, column: 8, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2391, file: !1, line: 36, column: 7)
!2397 = !DILocation(line: 36, column: 7, scope: !2391)
!2398 = !DILocation(line: 38, column: 3, scope: !2391)
!2399 = !DILocation(line: 39, column: 1, scope: !2391)
!2400 = distinct !DISubprogram(name: "gsi_insert_before_without_update", scope: !1, file: !1, line: 402, type: !2401, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !1967, !338, !247}
!2403 = !{!2404, !2405, !2406, !2407}
!2404 = !DILocalVariable(name: "i", arg: 1, scope: !2400, file: !1, line: 402, type: !1967)
!2405 = !DILocalVariable(name: "stmt", arg: 2, scope: !2400, file: !1, line: 402, type: !338)
!2406 = !DILocalVariable(name: "m", arg: 3, scope: !2400, file: !1, line: 403, type: !247)
!2407 = !DILocalVariable(name: "n", scope: !2400, file: !1, line: 405, type: !394)
!2408 = !DILocation(line: 0, scope: !2400)
!2409 = !DILocation(line: 407, column: 7, scope: !2400)
!2410 = !DILocation(line: 408, column: 16, scope: !2400)
!2411 = !DILocation(line: 408, column: 21, scope: !2400)
!2412 = !DILocation(line: 408, column: 6, scope: !2400)
!2413 = !DILocation(line: 408, column: 11, scope: !2400)
!2414 = !DILocation(line: 409, column: 6, scope: !2400)
!2415 = !DILocation(line: 409, column: 11, scope: !2400)
!2416 = !DILocation(line: 410, column: 3, scope: !2400)
!2417 = !DILocation(line: 411, column: 1, scope: !2400)
!2418 = distinct !DISubprogram(name: "gsi_insert_before", scope: !1, file: !1, line: 419, type: !2401, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2419)
!2419 = !{!2420, !2421, !2422}
!2420 = !DILocalVariable(name: "i", arg: 1, scope: !2418, file: !1, line: 419, type: !1967)
!2421 = !DILocalVariable(name: "stmt", arg: 2, scope: !2418, file: !1, line: 419, type: !338)
!2422 = !DILocalVariable(name: "m", arg: 3, scope: !2418, file: !1, line: 420, type: !247)
!2423 = !DILocation(line: 0, scope: !2418)
!2424 = !DILocation(line: 422, column: 3, scope: !2418)
!2425 = !DILocation(line: 423, column: 3, scope: !2418)
!2426 = !DILocation(line: 424, column: 1, scope: !2418)
!2427 = distinct !DISubprogram(name: "gsi_insert_after_without_update", scope: !1, file: !1, line: 437, type: !2401, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2428)
!2428 = !{!2429, !2430, !2431, !2432}
!2429 = !DILocalVariable(name: "i", arg: 1, scope: !2427, file: !1, line: 437, type: !1967)
!2430 = !DILocalVariable(name: "stmt", arg: 2, scope: !2427, file: !1, line: 437, type: !338)
!2431 = !DILocalVariable(name: "m", arg: 3, scope: !2427, file: !1, line: 438, type: !247)
!2432 = !DILocalVariable(name: "n", scope: !2427, file: !1, line: 440, type: !394)
!2433 = !DILocation(line: 0, scope: !2427)
!2434 = !DILocation(line: 442, column: 7, scope: !2427)
!2435 = !DILocation(line: 443, column: 16, scope: !2427)
!2436 = !DILocation(line: 443, column: 21, scope: !2427)
!2437 = !DILocation(line: 443, column: 6, scope: !2427)
!2438 = !DILocation(line: 443, column: 11, scope: !2427)
!2439 = !DILocation(line: 444, column: 6, scope: !2427)
!2440 = !DILocation(line: 444, column: 11, scope: !2427)
!2441 = !DILocation(line: 445, column: 3, scope: !2427)
!2442 = !DILocation(line: 446, column: 1, scope: !2427)
!2443 = distinct !DISubprogram(name: "gsi_insert_after", scope: !1, file: !1, line: 455, type: !2401, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2444)
!2444 = !{!2445, !2446, !2447}
!2445 = !DILocalVariable(name: "i", arg: 1, scope: !2443, file: !1, line: 455, type: !1967)
!2446 = !DILocalVariable(name: "stmt", arg: 2, scope: !2443, file: !1, line: 455, type: !338)
!2447 = !DILocalVariable(name: "m", arg: 3, scope: !2443, file: !1, line: 456, type: !247)
!2448 = !DILocation(line: 0, scope: !2443)
!2449 = !DILocation(line: 458, column: 3, scope: !2443)
!2450 = !DILocation(line: 459, column: 3, scope: !2443)
!2451 = !DILocation(line: 460, column: 1, scope: !2443)
!2452 = distinct !DISubprogram(name: "gsi_remove", scope: !1, file: !1, line: 472, type: !2453, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{null, !1967, !326}
!2455 = !{!2456, !2457, !2458, !2459, !2460, !2461}
!2456 = !DILocalVariable(name: "i", arg: 1, scope: !2452, file: !1, line: 472, type: !1967)
!2457 = !DILocalVariable(name: "remove_permanently", arg: 2, scope: !2452, file: !1, line: 472, type: !326)
!2458 = !DILocalVariable(name: "cur", scope: !2452, file: !1, line: 474, type: !394)
!2459 = !DILocalVariable(name: "next", scope: !2452, file: !1, line: 474, type: !394)
!2460 = !DILocalVariable(name: "prev", scope: !2452, file: !1, line: 474, type: !394)
!2461 = !DILocalVariable(name: "stmt", scope: !2452, file: !1, line: 475, type: !338)
!2462 = !DILocation(line: 0, scope: !2452)
!2463 = !DILocation(line: 475, column: 17, scope: !2452)
!2464 = !DILocation(line: 477, column: 7, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 477, column: 7)
!2466 = !DILocation(line: 477, column: 26, scope: !2465)
!2467 = !DILocation(line: 477, column: 7, scope: !2452)
!2468 = !DILocation(line: 478, column: 5, scope: !2465)
!2469 = !DILocation(line: 481, column: 3, scope: !2452)
!2470 = !DILocation(line: 482, column: 3, scope: !2452)
!2471 = !DILocation(line: 483, column: 3, scope: !2452)
!2472 = !DILocation(line: 485, column: 7, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 485, column: 7)
!2474 = !DILocation(line: 485, column: 7, scope: !2452)
!2475 = !DILocation(line: 487, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 486, column: 5)
!2477 = !DILocation(line: 488, column: 38, scope: !2476)
!2478 = !DILocation(line: 488, column: 7, scope: !2476)
!2479 = !DILocation(line: 489, column: 5, scope: !2476)
!2480 = !DILocation(line: 492, column: 12, scope: !2452)
!2481 = !DILocation(line: 493, column: 15, scope: !2452)
!2482 = !DILocation(line: 494, column: 15, scope: !2452)
!2483 = !DILocation(line: 496, column: 7, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 496, column: 7)
!2485 = !DILocation(line: 496, column: 7, scope: !2452)
!2486 = !DILocation(line: 497, column: 11, scope: !2484)
!2487 = !DILocation(line: 497, column: 16, scope: !2484)
!2488 = !DILocation(line: 497, column: 5, scope: !2484)
!2489 = !DILocation(line: 499, column: 30, scope: !2484)
!2490 = !DILocation(line: 499, column: 5, scope: !2484)
!2491 = !DILocation(line: 501, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 501, column: 7)
!2493 = !DILocation(line: 501, column: 7, scope: !2452)
!2494 = !DILocation(line: 502, column: 11, scope: !2492)
!2495 = !DILocation(line: 502, column: 16, scope: !2492)
!2496 = !DILocation(line: 502, column: 5, scope: !2492)
!2497 = !DILocation(line: 504, column: 29, scope: !2492)
!2498 = !DILocation(line: 504, column: 5, scope: !2492)
!2499 = !DILocation(line: 506, column: 10, scope: !2452)
!2500 = !DILocation(line: 507, column: 1, scope: !2452)
!2501 = distinct !DISubprogram(name: "gimple_code", scope: !248, file: !248, line: 1052, type: !2502, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!279, !2333}
!2504 = !{!2505}
!2505 = !DILocalVariable(name: "g", arg: 1, scope: !2501, file: !248, line: 1052, type: !2333)
!2506 = !DILocation(line: 0, scope: !2501)
!2507 = !DILocation(line: 1054, column: 20, scope: !2501)
!2508 = !DILocation(line: 1054, column: 3, scope: !2501)
!2509 = distinct !DISubprogram(name: "gsi_for_stmt", scope: !1, file: !1, line: 513, type: !2510, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!1968, !338}
!2512 = !{!2513, !2514, !2515}
!2513 = !DILocalVariable(name: "stmt", arg: 1, scope: !2509, file: !1, line: 513, type: !338)
!2514 = !DILocalVariable(name: "i", scope: !2509, file: !1, line: 515, type: !1968)
!2515 = !DILocalVariable(name: "bb", scope: !2509, file: !1, line: 516, type: !653)
!2516 = !DILocation(line: 0, scope: !2509)
!2517 = !DILocation(line: 515, column: 24, scope: !2509)
!2518 = !DILocation(line: 516, column: 20, scope: !2509)
!2519 = !DILocation(line: 518, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2509, file: !1, line: 518, column: 7)
!2521 = !DILocation(line: 518, column: 26, scope: !2520)
!2522 = !DILocation(line: 518, column: 7, scope: !2509)
!2523 = !DILocation(line: 519, column: 9, scope: !2520)
!2524 = !DILocation(line: 519, column: 5, scope: !2520)
!2525 = !DILocation(line: 521, column: 9, scope: !2520)
!2526 = !DILocation(line: 523, column: 3, scope: !2509)
!2527 = !DILocation(line: 523, column: 11, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 523, column: 3)
!2529 = distinct !DILexicalBlock(scope: !2509, file: !1, line: 523, column: 3)
!2530 = !DILocation(line: 523, column: 10, scope: !2528)
!2531 = !DILocation(line: 523, column: 3, scope: !2529)
!2532 = !DILocation(line: 524, column: 9, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2528, file: !1, line: 524, column: 9)
!2534 = !DILocation(line: 524, column: 22, scope: !2533)
!2535 = !DILocation(line: 524, column: 9, scope: !2528)
!2536 = !DILocation(line: 523, column: 26, scope: !2528)
!2537 = !DILocation(line: 523, column: 3, scope: !2528)
!2538 = distinct !{!2538, !2531, !2539}
!2539 = !DILocation(line: 525, column: 14, scope: !2529)
!2540 = !DILocation(line: 527, column: 3, scope: !2509)
!2541 = !DILocation(line: 529, column: 5, scope: !2509)
!2542 = !DILocation(line: 531, column: 1, scope: !2509)
!2543 = distinct !DISubprogram(name: "gimple_bb", scope: !248, file: !248, line: 1112, type: !2544, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2546)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!363, !2333}
!2546 = !{!2547}
!2547 = !DILocalVariable(name: "g", arg: 1, scope: !2543, file: !248, line: 1112, type: !2333)
!2548 = !DILocation(line: 0, scope: !2543)
!2549 = !DILocation(line: 1114, column: 20, scope: !2543)
!2550 = !DILocation(line: 1114, column: 3, scope: !2543)
!2551 = distinct !DISubprogram(name: "gsi_start_phis", scope: !1, file: !1, line: 773, type: !2552, scopeLine: 774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2554)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!1968, !653}
!2554 = !{!2555}
!2555 = !DILocalVariable(name: "bb", arg: 1, scope: !2551, file: !1, line: 773, type: !653)
!2556 = !DILocation(line: 0, scope: !2551)
!2557 = !DILocation(line: 775, column: 21, scope: !2551)
!2558 = !DILocation(line: 775, column: 10, scope: !2551)
!2559 = !DILocation(line: 775, column: 3, scope: !2551)
!2560 = distinct !DISubprogram(name: "gsi_start_bb", scope: !248, file: !248, line: 4418, type: !2552, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2561)
!2561 = !{!2562, !2563, !2564}
!2562 = !DILocalVariable(name: "bb", arg: 1, scope: !2560, file: !248, line: 4418, type: !653)
!2563 = !DILocalVariable(name: "i", scope: !2560, file: !248, line: 4420, type: !1968)
!2564 = !DILocalVariable(name: "seq", scope: !2560, file: !248, line: 4421, type: !389)
!2565 = !DILocation(line: 0, scope: !2560)
!2566 = !DILocation(line: 4420, column: 24, scope: !2560)
!2567 = !DILocation(line: 4423, column: 9, scope: !2560)
!2568 = !DILocation(line: 4424, column: 11, scope: !2560)
!2569 = !DILocation(line: 4424, column: 5, scope: !2560)
!2570 = !DILocation(line: 4424, column: 9, scope: !2560)
!2571 = !DILocation(line: 4425, column: 5, scope: !2560)
!2572 = !DILocation(line: 4425, column: 9, scope: !2560)
!2573 = !DILocation(line: 4426, column: 5, scope: !2560)
!2574 = !DILocation(line: 4426, column: 8, scope: !2560)
!2575 = !DILocation(line: 4429, column: 1, scope: !2560)
!2576 = distinct !DISubprogram(name: "gsi_end_p", scope: !248, file: !248, line: 4467, type: !2577, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!326, !1968}
!2579 = !{!2580}
!2580 = !DILocalVariable(name: "i", arg: 1, scope: !2576, file: !248, line: 4467, type: !1968)
!2581 = !DILocation(line: 4467, column: 33, scope: !2576)
!2582 = !DILocation(line: 4469, column: 12, scope: !2576)
!2583 = !DILocation(line: 4469, column: 16, scope: !2576)
!2584 = !DILocation(line: 4469, column: 10, scope: !2576)
!2585 = !DILocation(line: 4469, column: 3, scope: !2576)
!2586 = distinct !DISubprogram(name: "gsi_next", scope: !248, file: !248, line: 4485, type: !2587, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{null, !1967}
!2589 = !{!2590}
!2590 = !DILocalVariable(name: "i", arg: 1, scope: !2586, file: !248, line: 4485, type: !1967)
!2591 = !DILocation(line: 0, scope: !2586)
!2592 = !DILocation(line: 4487, column: 15, scope: !2586)
!2593 = !DILocation(line: 4487, column: 20, scope: !2586)
!2594 = !DILocation(line: 4487, column: 10, scope: !2586)
!2595 = !DILocation(line: 4488, column: 1, scope: !2586)
!2596 = distinct !DISubprogram(name: "gsi_move_after", scope: !1, file: !1, line: 537, type: !2597, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{null, !1967, !1967}
!2599 = !{!2600, !2601, !2602}
!2600 = !DILocalVariable(name: "from", arg: 1, scope: !2596, file: !1, line: 537, type: !1967)
!2601 = !DILocalVariable(name: "to", arg: 2, scope: !2596, file: !1, line: 537, type: !1967)
!2602 = !DILocalVariable(name: "stmt", scope: !2596, file: !1, line: 539, type: !338)
!2603 = !DILocation(line: 0, scope: !2596)
!2604 = !DILocation(line: 539, column: 17, scope: !2596)
!2605 = !DILocation(line: 540, column: 3, scope: !2596)
!2606 = !DILocation(line: 544, column: 3, scope: !2596)
!2607 = !DILocation(line: 545, column: 1, scope: !2596)
!2608 = distinct !DISubprogram(name: "gsi_move_before", scope: !1, file: !1, line: 552, type: !2597, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2609)
!2609 = !{!2610, !2611, !2612}
!2610 = !DILocalVariable(name: "from", arg: 1, scope: !2608, file: !1, line: 552, type: !1967)
!2611 = !DILocalVariable(name: "to", arg: 2, scope: !2608, file: !1, line: 552, type: !1967)
!2612 = !DILocalVariable(name: "stmt", scope: !2608, file: !1, line: 554, type: !338)
!2613 = !DILocation(line: 0, scope: !2608)
!2614 = !DILocation(line: 554, column: 17, scope: !2608)
!2615 = !DILocation(line: 555, column: 3, scope: !2608)
!2616 = !DILocation(line: 560, column: 3, scope: !2608)
!2617 = !DILocation(line: 561, column: 1, scope: !2608)
!2618 = distinct !DISubprogram(name: "gsi_move_to_bb_end", scope: !1, file: !1, line: 567, type: !2619, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{null, !1967, !653}
!2621 = !{!2622, !2623, !2624}
!2622 = !DILocalVariable(name: "from", arg: 1, scope: !2618, file: !1, line: 567, type: !1967)
!2623 = !DILocalVariable(name: "bb", arg: 2, scope: !2618, file: !1, line: 567, type: !653)
!2624 = !DILocalVariable(name: "last", scope: !2618, file: !1, line: 569, type: !1968)
!2625 = !DILocation(line: 0, scope: !2618)
!2626 = !DILocation(line: 569, column: 3, scope: !2618)
!2627 = !DILocation(line: 569, column: 31, scope: !2618)
!2628 = !DILocation(line: 575, column: 8, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 575, column: 7)
!2630 = !DILocation(line: 575, column: 25, scope: !2629)
!2631 = !DILocation(line: 575, column: 42, scope: !2629)
!2632 = !DILocation(line: 575, column: 28, scope: !2629)
!2633 = !DILocation(line: 575, column: 7, scope: !2618)
!2634 = !DILocation(line: 576, column: 5, scope: !2629)
!2635 = !DILocation(line: 578, column: 5, scope: !2629)
!2636 = !DILocation(line: 579, column: 1, scope: !2618)
!2637 = distinct !DISubprogram(name: "gsi_last_bb", scope: !248, file: !248, line: 4450, type: !2552, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2638)
!2638 = !{!2639, !2640, !2641}
!2639 = !DILocalVariable(name: "bb", arg: 1, scope: !2637, file: !248, line: 4450, type: !653)
!2640 = !DILocalVariable(name: "i", scope: !2637, file: !248, line: 4452, type: !1968)
!2641 = !DILocalVariable(name: "seq", scope: !2637, file: !248, line: 4453, type: !389)
!2642 = !DILocation(line: 0, scope: !2637)
!2643 = !DILocation(line: 4452, column: 24, scope: !2637)
!2644 = !DILocation(line: 4455, column: 9, scope: !2637)
!2645 = !DILocation(line: 4456, column: 11, scope: !2637)
!2646 = !DILocation(line: 4456, column: 5, scope: !2637)
!2647 = !DILocation(line: 4456, column: 9, scope: !2637)
!2648 = !DILocation(line: 4457, column: 5, scope: !2637)
!2649 = !DILocation(line: 4457, column: 9, scope: !2637)
!2650 = !DILocation(line: 4458, column: 5, scope: !2637)
!2651 = !DILocation(line: 4458, column: 8, scope: !2637)
!2652 = !DILocation(line: 4461, column: 1, scope: !2637)
!2653 = distinct !DISubprogram(name: "gsi_insert_on_edge", scope: !1, file: !1, line: 586, type: !2654, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{null, !379, !338}
!2656 = !{!2657, !2658}
!2657 = !DILocalVariable(name: "e", arg: 1, scope: !2653, file: !1, line: 586, type: !379)
!2658 = !DILocalVariable(name: "stmt", arg: 2, scope: !2653, file: !1, line: 586, type: !338)
!2659 = !DILocation(line: 0, scope: !2653)
!2660 = !DILocation(line: 588, column: 25, scope: !2653)
!2661 = !DILocation(line: 588, column: 3, scope: !2653)
!2662 = !DILocation(line: 589, column: 1, scope: !2653)
!2663 = distinct !DISubprogram(name: "gsi_insert_seq_on_edge", scope: !1, file: !1, line: 596, type: !2664, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{null, !379, !389}
!2666 = !{!2667, !2668}
!2667 = !DILocalVariable(name: "e", arg: 1, scope: !2663, file: !1, line: 596, type: !379)
!2668 = !DILocalVariable(name: "seq", arg: 2, scope: !2663, file: !1, line: 596, type: !389)
!2669 = !DILocation(line: 0, scope: !2663)
!2670 = !DILocation(line: 598, column: 24, scope: !2663)
!2671 = !DILocation(line: 598, column: 3, scope: !2663)
!2672 = !DILocation(line: 599, column: 1, scope: !2663)
!2673 = distinct !DISubprogram(name: "gsi_insert_on_edge_immediate", scope: !1, file: !1, line: 695, type: !2674, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!653, !379, !338}
!2676 = !{!2677, !2678, !2679, !2680}
!2677 = !DILocalVariable(name: "e", arg: 1, scope: !2673, file: !1, line: 695, type: !379)
!2678 = !DILocalVariable(name: "stmt", arg: 2, scope: !2673, file: !1, line: 695, type: !338)
!2679 = !DILocalVariable(name: "gsi", scope: !2673, file: !1, line: 697, type: !1968)
!2680 = !DILocalVariable(name: "new_bb", scope: !2673, file: !1, line: 698, type: !653)
!2681 = !DILocation(line: 0, scope: !2673)
!2682 = !DILocation(line: 697, column: 3, scope: !2673)
!2683 = !DILocation(line: 698, column: 3, scope: !2673)
!2684 = !DILocation(line: 698, column: 15, scope: !2673)
!2685 = !DILocation(line: 700, column: 3, scope: !2673)
!2686 = !DILocation(line: 702, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2673, file: !1, line: 702, column: 7)
!2688 = !DILocation(line: 702, column: 7, scope: !2673)
!2689 = !DILocation(line: 703, column: 5, scope: !2687)
!2690 = !DILocation(line: 705, column: 5, scope: !2687)
!2691 = !DILocation(line: 707, column: 10, scope: !2673)
!2692 = !DILocation(line: 708, column: 1, scope: !2673)
!2693 = !DILocation(line: 707, column: 3, scope: !2673)
!2694 = distinct !DISubprogram(name: "gimple_find_edge_insert_loc", scope: !1, file: !1, line: 613, type: !2695, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2698)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!326, !379, !1967, !2697}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!2698 = !{!2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2699 = !DILocalVariable(name: "e", arg: 1, scope: !2694, file: !1, line: 613, type: !379)
!2700 = !DILocalVariable(name: "gsi", arg: 2, scope: !2694, file: !1, line: 613, type: !1967)
!2701 = !DILocalVariable(name: "new_bb", arg: 3, scope: !2694, file: !1, line: 614, type: !2697)
!2702 = !DILocalVariable(name: "dest", scope: !2694, file: !1, line: 616, type: !653)
!2703 = !DILocalVariable(name: "src", scope: !2694, file: !1, line: 616, type: !653)
!2704 = !DILocalVariable(name: "tmp", scope: !2694, file: !1, line: 617, type: !338)
!2705 = !DILabel(scope: !2694, name: "restart", file: !1, line: 628)
!2706 = !DILocation(line: 0, scope: !2694)
!2707 = !DILocation(line: 619, column: 13, scope: !2694)
!2708 = !DILocation(line: 0, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !1, line: 663, column: 5)
!2710 = distinct !DILexicalBlock(scope: !2694, file: !1, line: 660, column: 7)
!2711 = !DILocation(line: 0, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2694, file: !1, line: 684, column: 7)
!2713 = !DILocation(line: 619, column: 3, scope: !2694)
!2714 = !DILocation(line: 628, column: 2, scope: !2694)
!2715 = !DILocation(line: 629, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2694, file: !1, line: 629, column: 7)
!2717 = !DILocation(line: 630, column: 7, scope: !2716)
!2718 = !DILocation(line: 630, column: 30, scope: !2716)
!2719 = !DILocation(line: 630, column: 10, scope: !2716)
!2720 = !DILocation(line: 631, column: 7, scope: !2716)
!2721 = !DILocation(line: 631, column: 18, scope: !2716)
!2722 = !DILocation(line: 631, column: 15, scope: !2716)
!2723 = !DILocation(line: 629, column: 7, scope: !2694)
!2724 = !DILocation(line: 659, column: 12, scope: !2694)
!2725 = !DILocation(line: 660, column: 11, scope: !2710)
!2726 = !DILocation(line: 660, column: 17, scope: !2710)
!2727 = !DILocation(line: 660, column: 34, scope: !2710)
!2728 = !DILocation(line: 661, column: 7, scope: !2710)
!2729 = !DILocation(line: 661, column: 10, scope: !2710)
!2730 = !DILocation(line: 662, column: 7, scope: !2710)
!2731 = !DILocation(line: 662, column: 17, scope: !2710)
!2732 = !DILocation(line: 662, column: 14, scope: !2710)
!2733 = !DILocation(line: 660, column: 7, scope: !2694)
!2734 = !DILocation(line: 664, column: 14, scope: !2709)
!2735 = !DILocation(line: 665, column: 11, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2709, file: !1, line: 665, column: 11)
!2737 = !DILocation(line: 665, column: 11, scope: !2709)
!2738 = !DILocation(line: 668, column: 13, scope: !2709)
!2739 = !DILocation(line: 669, column: 12, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2709, file: !1, line: 669, column: 11)
!2741 = !DILocation(line: 669, column: 11, scope: !2709)
!2742 = !DILocation(line: 672, column: 15, scope: !2709)
!2743 = !DILocation(line: 672, column: 7, scope: !2709)
!2744 = !DILocation(line: 683, column: 10, scope: !2694)
!2745 = !DILocation(line: 686, column: 7, scope: !2694)
!2746 = !DILocation(line: 687, column: 3, scope: !2694)
!2747 = !DILocation(line: 633, column: 14, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2716, file: !1, line: 632, column: 5)
!2749 = !DILocation(line: 688, column: 1, scope: !2694)
!2750 = !DILocation(line: 634, column: 11, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2748, file: !1, line: 634, column: 11)
!2752 = !DILocation(line: 634, column: 11, scope: !2748)
!2753 = !DILocation(line: 638, column: 13, scope: !2748)
!2754 = !DILocation(line: 639, column: 7, scope: !2748)
!2755 = !DILocation(line: 0, scope: !2748)
!2756 = !DILocation(line: 639, column: 14, scope: !2748)
!2757 = !DILocation(line: 639, column: 32, scope: !2748)
!2758 = !DILocation(line: 641, column: 4, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2748, file: !1, line: 640, column: 2)
!2760 = !DILocation(line: 642, column: 8, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2759, file: !1, line: 642, column: 8)
!2762 = !DILocation(line: 642, column: 8, scope: !2759)
!2763 = !DILocation(line: 644, column: 10, scope: !2759)
!2764 = distinct !{!2764, !2754, !2765}
!2765 = !DILocation(line: 645, column: 2, scope: !2748)
!2766 = !DILocation(line: 647, column: 11, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2748, file: !1, line: 647, column: 11)
!2768 = !DILocation(line: 647, column: 11, scope: !2748)
!2769 = !DILocation(line: 649, column: 11, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2767, file: !1, line: 648, column: 2)
!2771 = !DILocation(line: 650, column: 4, scope: !2770)
!2772 = !DILocation(line: 685, column: 13, scope: !2712)
!2773 = distinct !DISubprogram(name: "gsi_insert_seq_on_edge_immediate", scope: !1, file: !1, line: 714, type: !2774, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2776)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!653, !379, !389}
!2776 = !{!2777, !2778, !2779, !2780}
!2777 = !DILocalVariable(name: "e", arg: 1, scope: !2773, file: !1, line: 714, type: !379)
!2778 = !DILocalVariable(name: "stmts", arg: 2, scope: !2773, file: !1, line: 714, type: !389)
!2779 = !DILocalVariable(name: "gsi", scope: !2773, file: !1, line: 716, type: !1968)
!2780 = !DILocalVariable(name: "new_bb", scope: !2773, file: !1, line: 717, type: !653)
!2781 = !DILocation(line: 0, scope: !2773)
!2782 = !DILocation(line: 716, column: 3, scope: !2773)
!2783 = !DILocation(line: 717, column: 3, scope: !2773)
!2784 = !DILocation(line: 717, column: 15, scope: !2773)
!2785 = !DILocation(line: 719, column: 3, scope: !2773)
!2786 = !DILocation(line: 721, column: 7, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2773, file: !1, line: 721, column: 7)
!2788 = !DILocation(line: 721, column: 7, scope: !2773)
!2789 = !DILocation(line: 722, column: 5, scope: !2787)
!2790 = !DILocation(line: 724, column: 5, scope: !2787)
!2791 = !DILocation(line: 726, column: 10, scope: !2773)
!2792 = !DILocation(line: 727, column: 1, scope: !2773)
!2793 = !DILocation(line: 726, column: 3, scope: !2773)
!2794 = distinct !DISubprogram(name: "gsi_commit_edge_inserts", scope: !1, file: !1, line: 733, type: !2795, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{null}
!2797 = !{!2798, !2799, !2800}
!2798 = !DILocalVariable(name: "bb", scope: !2794, file: !1, line: 735, type: !653)
!2799 = !DILocalVariable(name: "e", scope: !2794, file: !1, line: 736, type: !379)
!2800 = !DILocalVariable(name: "ei", scope: !2794, file: !1, line: 737, type: !2801)
!2801 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !4, line: 682, baseType: !2802)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 679, size: 128, elements: !2803)
!2803 = !{!2804, !2805}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2802, file: !4, line: 680, baseType: !5, size: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2802, file: !4, line: 681, baseType: !2806, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!2807 = !DILocation(line: 736, column: 3, scope: !2794)
!2808 = !DILocation(line: 737, column: 3, scope: !2794)
!2809 = !DILocation(line: 739, column: 49, scope: !2794)
!2810 = !DILocation(line: 739, column: 31, scope: !2794)
!2811 = !DILocation(line: 739, column: 3, scope: !2794)
!2812 = !DILocation(line: 741, column: 3, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2794, file: !1, line: 741, column: 3)
!2814 = !DILocation(line: 0, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !1, line: 742, column: 5)
!2816 = distinct !DILexicalBlock(scope: !2813, file: !1, line: 741, column: 3)
!2817 = !DILocation(line: 0, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2815, file: !1, line: 742, column: 5)
!2819 = !DILocation(line: 741, column: 3, scope: !2816)
!2820 = !DILocation(line: 0, scope: !2813)
!2821 = !DILocation(line: 0, scope: !2794)
!2822 = !DILocation(line: 742, column: 5, scope: !2815)
!2823 = !DILocation(line: 742, column: 5, scope: !2818)
!2824 = !DILocation(line: 743, column: 35, scope: !2818)
!2825 = !DILocation(line: 743, column: 7, scope: !2818)
!2826 = distinct !{!2826, !2822, !2827}
!2827 = !DILocation(line: 743, column: 42, scope: !2815)
!2828 = !DILocation(line: 0, scope: !2816)
!2829 = distinct !{!2829, !2812, !2830}
!2830 = !DILocation(line: 743, column: 42, scope: !2813)
!2831 = !DILocation(line: 744, column: 1, scope: !2794)
!2832 = distinct !DISubprogram(name: "gsi_commit_one_edge_insert", scope: !1, file: !1, line: 751, type: !2833, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{null, !379, !2697}
!2835 = !{!2836, !2837, !2838, !2841}
!2836 = !DILocalVariable(name: "e", arg: 1, scope: !2832, file: !1, line: 751, type: !379)
!2837 = !DILocalVariable(name: "new_bb", arg: 2, scope: !2832, file: !1, line: 751, type: !2697)
!2838 = !DILocalVariable(name: "gsi", scope: !2839, file: !1, line: 758, type: !1968)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !1, line: 757, column: 5)
!2840 = distinct !DILexicalBlock(scope: !2832, file: !1, line: 756, column: 7)
!2841 = !DILocalVariable(name: "seq", scope: !2839, file: !1, line: 759, type: !389)
!2842 = !DILocation(line: 0, scope: !2832)
!2843 = !DILocation(line: 753, column: 7, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2832, file: !1, line: 753, column: 7)
!2845 = !DILocation(line: 753, column: 7, scope: !2832)
!2846 = !DILocation(line: 754, column: 13, scope: !2844)
!2847 = !DILocation(line: 754, column: 5, scope: !2844)
!2848 = !DILocation(line: 756, column: 7, scope: !2840)
!2849 = !DILocation(line: 756, column: 7, scope: !2832)
!2850 = !DILocation(line: 758, column: 7, scope: !2839)
!2851 = !DILocation(line: 0, scope: !2839)
!2852 = !DILocation(line: 761, column: 24, scope: !2839)
!2853 = !DILocation(line: 763, column: 11, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2839, file: !1, line: 763, column: 11)
!2855 = !DILocation(line: 763, column: 11, scope: !2839)
!2856 = !DILocation(line: 764, column: 2, scope: !2854)
!2857 = !DILocation(line: 766, column: 2, scope: !2854)
!2858 = !DILocation(line: 767, column: 5, scope: !2840)
!2859 = !DILocation(line: 767, column: 5, scope: !2839)
!2860 = !DILocation(line: 768, column: 1, scope: !2832)
!2861 = distinct !DISubprogram(name: "single_succ_edge", scope: !4, file: !4, line: 643, type: !2862, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2867)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!379, !2864}
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !339, line: 112, baseType: !2865)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!2867 = !{!2868}
!2868 = !DILocalVariable(name: "bb", arg: 1, scope: !2861, file: !4, line: 643, type: !2864)
!2869 = !DILocation(line: 0, scope: !2861)
!2870 = !DILocation(line: 645, column: 3, scope: !2861)
!2871 = !DILocation(line: 646, column: 10, scope: !2861)
!2872 = !DILocation(line: 646, column: 3, scope: !2861)
!2873 = distinct !DISubprogram(name: "ei_start_1", scope: !4, file: !4, line: 696, type: !2874, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!2801, !2806}
!2876 = !{!2877, !2878}
!2877 = !DILocalVariable(name: "ev", arg: 1, scope: !2873, file: !4, line: 696, type: !2806)
!2878 = !DILocalVariable(name: "i", scope: !2873, file: !4, line: 698, type: !2801)
!2879 = !DILocation(line: 0, scope: !2873)
!2880 = !DILocation(line: 700, column: 5, scope: !2873)
!2881 = !DILocation(line: 700, column: 11, scope: !2873)
!2882 = !DILocation(line: 701, column: 5, scope: !2873)
!2883 = !DILocation(line: 701, column: 15, scope: !2873)
!2884 = !DILocation(line: 703, column: 3, scope: !2873)
!2885 = distinct !DISubprogram(name: "ei_cond", scope: !4, file: !4, line: 771, type: !2886, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2889)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!326, !2801, !2888}
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!2889 = !{!2890, !2891}
!2890 = !DILocalVariable(name: "ei", arg: 1, scope: !2885, file: !4, line: 771, type: !2801)
!2891 = !DILocalVariable(name: "p", arg: 2, scope: !2885, file: !4, line: 771, type: !2888)
!2892 = !DILocation(line: 0, scope: !2885)
!2893 = !DILocation(line: 773, column: 8, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2885, file: !4, line: 773, column: 7)
!2895 = !DILocation(line: 773, column: 7, scope: !2885)
!2896 = !DILocation(line: 775, column: 12, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2894, file: !4, line: 774, column: 5)
!2898 = !DILocation(line: 776, column: 7, scope: !2897)
!2899 = !DILocation(line: 781, column: 7, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2894, file: !4, line: 779, column: 5)
!2901 = !DILocation(line: 0, scope: !2894)
!2902 = !DILocation(line: 783, column: 1, scope: !2885)
!2903 = distinct !DISubprogram(name: "ei_next", scope: !4, file: !4, line: 736, type: !2904, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2907)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{null, !2906}
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2907 = !{!2908}
!2908 = !DILocalVariable(name: "i", arg: 1, scope: !2903, file: !4, line: 736, type: !2906)
!2909 = !DILocation(line: 0, scope: !2903)
!2910 = !DILocation(line: 738, column: 3, scope: !2903)
!2911 = !DILocation(line: 739, column: 11, scope: !2903)
!2912 = !DILocation(line: 740, column: 1, scope: !2903)
!2913 = distinct !DISubprogram(name: "gsi_start", scope: !248, file: !248, line: 4403, type: !2914, scopeLine: 4404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!1968, !389}
!2916 = !{!2917, !2918}
!2917 = !DILocalVariable(name: "seq", arg: 1, scope: !2913, file: !248, line: 4403, type: !389)
!2918 = !DILocalVariable(name: "i", scope: !2913, file: !248, line: 4405, type: !1968)
!2919 = !DILocation(line: 0, scope: !2913)
!2920 = !DILocation(line: 4405, column: 24, scope: !2913)
!2921 = !DILocation(line: 4407, column: 11, scope: !2913)
!2922 = !DILocation(line: 4407, column: 5, scope: !2913)
!2923 = !DILocation(line: 4407, column: 9, scope: !2913)
!2924 = !DILocation(line: 4408, column: 5, scope: !2913)
!2925 = !DILocation(line: 4408, column: 9, scope: !2913)
!2926 = !DILocation(line: 4409, column: 11, scope: !2913)
!2927 = !DILocation(line: 4409, column: 17, scope: !2913)
!2928 = !DILocation(line: 4409, column: 27, scope: !2913)
!2929 = !DILocation(line: 4409, column: 20, scope: !2913)
!2930 = !DILocation(line: 4409, column: 10, scope: !2913)
!2931 = !DILocation(line: 4409, column: 35, scope: !2913)
!2932 = !DILocation(line: 4409, column: 5, scope: !2913)
!2933 = !DILocation(line: 4409, column: 8, scope: !2913)
!2934 = !DILocation(line: 4411, column: 3, scope: !2913)
!2935 = distinct !DISubprogram(name: "phi_nodes", scope: !2348, file: !2348, line: 508, type: !2936, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!389, !2864}
!2938 = !{!2939}
!2939 = !DILocalVariable(name: "bb", arg: 1, scope: !2935, file: !2348, line: 508, type: !2864)
!2940 = !DILocation(line: 0, scope: !2935)
!2941 = !DILocation(line: 510, column: 3, scope: !2935)
!2942 = !DILocation(line: 511, column: 15, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2935, file: !2348, line: 511, column: 7)
!2944 = !DILocation(line: 511, column: 8, scope: !2943)
!2945 = !DILocation(line: 511, column: 7, scope: !2935)
!2946 = !DILocation(line: 513, column: 25, scope: !2935)
!2947 = !DILocation(line: 513, column: 3, scope: !2935)
!2948 = !DILocation(line: 514, column: 1, scope: !2935)
!2949 = distinct !DISubprogram(name: "update_bb_for_stmts", scope: !1, file: !1, line: 60, type: !2950, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2952)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{null, !394, !653}
!2952 = !{!2953, !2954, !2955}
!2953 = !DILocalVariable(name: "first", arg: 1, scope: !2949, file: !1, line: 60, type: !394)
!2954 = !DILocalVariable(name: "bb", arg: 2, scope: !2949, file: !1, line: 60, type: !653)
!2955 = !DILocalVariable(name: "n", scope: !2949, file: !1, line: 62, type: !394)
!2956 = !DILocation(line: 0, scope: !2949)
!2957 = !DILocation(line: 64, column: 8, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 64, column: 3)
!2959 = !DILocation(line: 0, scope: !2958)
!2960 = !DILocation(line: 64, column: 3, scope: !2958)
!2961 = !DILocation(line: 65, column: 23, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2958, file: !1, line: 64, column: 3)
!2963 = !DILocation(line: 65, column: 5, scope: !2962)
!2964 = !DILocation(line: 64, column: 29, scope: !2962)
!2965 = !DILocation(line: 64, column: 3, scope: !2962)
!2966 = distinct !{!2966, !2960, !2967}
!2967 = !DILocation(line: 65, column: 31, scope: !2958)
!2968 = !DILocation(line: 66, column: 1, scope: !2949)
!2969 = distinct !DISubprogram(name: "update_stmt_if_modified", scope: !248, file: !248, line: 1468, type: !2349, scopeLine: 1469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2970)
!2970 = !{!2971}
!2971 = !DILocalVariable(name: "s", arg: 1, scope: !2969, file: !248, line: 1468, type: !338)
!2972 = !DILocation(line: 0, scope: !2969)
!2973 = !DILocation(line: 1470, column: 7, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !248, line: 1470, column: 7)
!2975 = !DILocation(line: 1470, column: 7, scope: !2969)
!2976 = !DILocation(line: 1471, column: 5, scope: !2974)
!2977 = !DILocation(line: 1472, column: 1, scope: !2969)
!2978 = distinct !DISubprogram(name: "gimple_modified_p", scope: !248, file: !248, line: 1425, type: !2979, scopeLine: 1426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2981)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!326, !2333}
!2981 = !{!2982}
!2982 = !DILocalVariable(name: "g", arg: 1, scope: !2978, file: !248, line: 1425, type: !2333)
!2983 = !DILocation(line: 0, scope: !2978)
!2984 = !DILocation(line: 1427, column: 11, scope: !2978)
!2985 = !DILocation(line: 1427, column: 10, scope: !2978)
!2986 = !DILocation(line: 1427, column: 50, scope: !2978)
!2987 = !DILocation(line: 1427, column: 33, scope: !2978)
!2988 = !DILocation(line: 1427, column: 3, scope: !2978)
!2989 = distinct !DISubprogram(name: "gimple_has_ops", scope: !248, file: !248, line: 1274, type: !2979, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2990)
!2990 = !{!2991}
!2991 = !DILocalVariable(name: "g", arg: 1, scope: !2989, file: !248, line: 1274, type: !2333)
!2992 = !DILocation(line: 0, scope: !2989)
!2993 = !DILocation(line: 1276, column: 10, scope: !2989)
!2994 = !DILocation(line: 1276, column: 26, scope: !2989)
!2995 = !DILocation(line: 1276, column: 41, scope: !2989)
!2996 = !DILocation(line: 1276, column: 44, scope: !2989)
!2997 = !DILocation(line: 1276, column: 60, scope: !2989)
!2998 = !DILocation(line: 1276, column: 3, scope: !2989)
!2999 = distinct !DISubprogram(name: "is_gimple_assign", scope: !248, file: !248, line: 1677, type: !2979, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3000)
!3000 = !{!3001}
!3001 = !DILocalVariable(name: "gs", arg: 1, scope: !2999, file: !248, line: 1677, type: !2333)
!3002 = !DILocation(line: 0, scope: !2999)
!3003 = !DILocation(line: 1679, column: 10, scope: !2999)
!3004 = !DILocation(line: 1679, column: 27, scope: !2999)
!3005 = !DILocation(line: 1679, column: 3, scope: !2999)
!3006 = distinct !DISubprogram(name: "is_gimple_call", scope: !248, file: !248, line: 1870, type: !2979, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3007)
!3007 = !{!3008}
!3008 = !DILocalVariable(name: "gs", arg: 1, scope: !3006, file: !248, line: 1870, type: !2333)
!3009 = !DILocation(line: 0, scope: !3006)
!3010 = !DILocation(line: 1872, column: 10, scope: !3006)
!3011 = !DILocation(line: 1872, column: 27, scope: !3006)
!3012 = !DILocation(line: 1872, column: 3, scope: !3006)
!3013 = distinct !DISubprogram(name: "gimple_call_lhs", scope: !248, file: !248, line: 1878, type: !3014, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!403, !2333}
!3016 = !{!3017}
!3017 = !DILocalVariable(name: "gs", arg: 1, scope: !3013, file: !248, line: 1878, type: !2333)
!3018 = !DILocation(line: 0, scope: !3013)
!3019 = !DILocation(line: 1881, column: 10, scope: !3013)
!3020 = !DILocation(line: 1881, column: 3, scope: !3013)
!3021 = distinct !DISubprogram(name: "gimple_op", scope: !248, file: !248, line: 1631, type: !3022, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!403, !2333, !5}
!3024 = !{!3025, !3026}
!3025 = !DILocalVariable(name: "gs", arg: 1, scope: !3021, file: !248, line: 1631, type: !2333)
!3026 = !DILocalVariable(name: "i", arg: 2, scope: !3021, file: !248, line: 1631, type: !5)
!3027 = !DILocation(line: 0, scope: !3021)
!3028 = !DILocation(line: 1633, column: 7, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3021, file: !248, line: 1633, column: 7)
!3030 = !DILocation(line: 1633, column: 7, scope: !3021)
!3031 = !DILocation(line: 1638, column: 14, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3029, file: !248, line: 1634, column: 5)
!3033 = !DILocation(line: 1638, column: 7, scope: !3032)
!3034 = !DILocation(line: 0, scope: !3029)
!3035 = !DILocation(line: 1642, column: 1, scope: !3021)
!3036 = distinct !DISubprogram(name: "gimple_ops", scope: !248, file: !248, line: 1614, type: !3037, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!861, !338}
!3039 = !{!3040, !3041}
!3040 = !DILocalVariable(name: "gs", arg: 1, scope: !3036, file: !248, line: 1614, type: !338)
!3041 = !DILocalVariable(name: "off", scope: !3036, file: !248, line: 1616, type: !713)
!3042 = !DILocation(line: 0, scope: !3036)
!3043 = !DILocation(line: 1621, column: 28, scope: !3036)
!3044 = !DILocation(line: 1621, column: 9, scope: !3036)
!3045 = !DILocation(line: 1622, column: 3, scope: !3036)
!3046 = !DILocation(line: 1624, column: 20, scope: !3036)
!3047 = !DILocation(line: 1624, column: 32, scope: !3036)
!3048 = !DILocation(line: 1624, column: 10, scope: !3036)
!3049 = !DILocation(line: 1624, column: 3, scope: !3036)
!3050 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !248, file: !248, line: 1073, type: !3051, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3053)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!253, !338}
!3053 = !{!3054}
!3054 = !DILocalVariable(name: "gs", arg: 1, scope: !3050, file: !248, line: 1073, type: !338)
!3055 = !DILocation(line: 0, scope: !3050)
!3056 = !DILocation(line: 1075, column: 24, scope: !3050)
!3057 = !DILocation(line: 1075, column: 10, scope: !3050)
!3058 = !DILocation(line: 1075, column: 3, scope: !3050)
!3059 = distinct !DISubprogram(name: "gss_for_code", scope: !248, file: !248, line: 1061, type: !3060, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!253, !279}
!3062 = !{!3063}
!3063 = !DILocalVariable(name: "code", arg: 1, scope: !3059, file: !248, line: 1061, type: !279)
!3064 = !DILocation(line: 0, scope: !3059)
!3065 = !DILocation(line: 1066, column: 10, scope: !3059)
!3066 = !DILocation(line: 1066, column: 3, scope: !3059)
!3067 = distinct !DISubprogram(name: "op_iter_init_use", scope: !2348, file: !2348, line: 768, type: !3068, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3071)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!1509, !3070, !338, !327}
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!3071 = !{!3072, !3073, !3074}
!3072 = !DILocalVariable(name: "ptr", arg: 1, scope: !3067, file: !2348, line: 768, type: !3070)
!3073 = !DILocalVariable(name: "stmt", arg: 2, scope: !3067, file: !2348, line: 768, type: !338)
!3074 = !DILocalVariable(name: "flags", arg: 3, scope: !3067, file: !2348, line: 768, type: !327)
!3075 = !DILocation(line: 0, scope: !3067)
!3076 = !DILocation(line: 772, column: 3, scope: !3067)
!3077 = !DILocation(line: 773, column: 8, scope: !3067)
!3078 = !DILocation(line: 773, column: 18, scope: !3067)
!3079 = !DILocation(line: 774, column: 10, scope: !3067)
!3080 = !DILocation(line: 774, column: 3, scope: !3067)
!3081 = distinct !DISubprogram(name: "op_iter_done", scope: !2348, file: !2348, line: 652, type: !3082, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3086)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!326, !3084}
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2354)
!3086 = !{!3087}
!3087 = !DILocalVariable(name: "ptr", arg: 1, scope: !3081, file: !2348, line: 652, type: !3084)
!3088 = !DILocation(line: 0, scope: !3081)
!3089 = !DILocation(line: 654, column: 15, scope: !3081)
!3090 = !DILocation(line: 654, column: 3, scope: !3081)
!3091 = distinct !DISubprogram(name: "delink_imm_use", scope: !2348, file: !2348, line: 188, type: !3092, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{null, !1510}
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "linknode", arg: 1, scope: !3091, file: !2348, line: 188, type: !1510)
!3096 = !DILocation(line: 0, scope: !3091)
!3097 = !DILocation(line: 191, column: 17, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3091, file: !2348, line: 191, column: 7)
!3099 = !DILocation(line: 191, column: 22, scope: !3098)
!3100 = !DILocation(line: 191, column: 7, scope: !3091)
!3101 = !DILocation(line: 194, column: 36, scope: !3091)
!3102 = !DILocation(line: 194, column: 19, scope: !3091)
!3103 = !DILocation(line: 194, column: 24, scope: !3091)
!3104 = !DILocation(line: 195, column: 36, scope: !3091)
!3105 = !DILocation(line: 195, column: 13, scope: !3091)
!3106 = !DILocation(line: 195, column: 24, scope: !3091)
!3107 = !DILocation(line: 196, column: 18, scope: !3091)
!3108 = !DILocation(line: 197, column: 18, scope: !3091)
!3109 = !DILocation(line: 198, column: 1, scope: !3091)
!3110 = distinct !DISubprogram(name: "op_iter_next_use", scope: !2348, file: !2348, line: 659, type: !3111, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3113)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!1509, !3070}
!3113 = !{!3114, !3115}
!3114 = !DILocalVariable(name: "ptr", arg: 1, scope: !3110, file: !2348, line: 659, type: !3070)
!3115 = !DILocalVariable(name: "use_p", scope: !3110, file: !2348, line: 661, type: !1509)
!3116 = !DILocation(line: 0, scope: !3110)
!3117 = !DILocation(line: 665, column: 12, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3110, file: !2348, line: 665, column: 7)
!3119 = !DILocation(line: 665, column: 7, scope: !3118)
!3120 = !DILocation(line: 665, column: 7, scope: !3110)
!3121 = !DILocation(line: 667, column: 15, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3118, file: !2348, line: 666, column: 5)
!3123 = !DILocation(line: 668, column: 30, scope: !3122)
!3124 = !DILocation(line: 668, column: 17, scope: !3122)
!3125 = !DILocation(line: 669, column: 7, scope: !3122)
!3126 = !DILocation(line: 671, column: 12, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3110, file: !2348, line: 671, column: 7)
!3128 = !DILocation(line: 671, column: 25, scope: !3127)
!3129 = !DILocation(line: 671, column: 18, scope: !3127)
!3130 = !DILocation(line: 671, column: 7, scope: !3110)
!3131 = !DILocation(line: 673, column: 14, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3127, file: !2348, line: 672, column: 5)
!3133 = !DILocation(line: 673, column: 7, scope: !3132)
!3134 = !DILocation(line: 675, column: 8, scope: !3110)
!3135 = !DILocation(line: 675, column: 13, scope: !3110)
!3136 = !DILocation(line: 676, column: 3, scope: !3110)
!3137 = !DILocation(line: 677, column: 1, scope: !3110)
!3138 = distinct !DISubprogram(name: "op_iter_init", scope: !2348, file: !2348, line: 742, type: !3139, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{null, !3070, !338, !327}
!3141 = !{!3142, !3143, !3144}
!3142 = !DILocalVariable(name: "ptr", arg: 1, scope: !3138, file: !2348, line: 742, type: !3070)
!3143 = !DILocalVariable(name: "stmt", arg: 2, scope: !3138, file: !2348, line: 742, type: !338)
!3144 = !DILocalVariable(name: "flags", arg: 3, scope: !3138, file: !2348, line: 742, type: !327)
!3145 = !DILocation(line: 0, scope: !3138)
!3146 = !DILocation(line: 748, column: 8, scope: !3138)
!3147 = !DILocation(line: 748, column: 13, scope: !3138)
!3148 = !DILocation(line: 750, column: 7, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3138, file: !2348, line: 749, column: 7)
!3150 = !DILocation(line: 751, column: 7, scope: !3149)
!3151 = !DILocation(line: 749, column: 7, scope: !3138)
!3152 = !DILocation(line: 752, column: 5, scope: !3149)
!3153 = !DILocation(line: 753, column: 15, scope: !3138)
!3154 = !DILocation(line: 753, column: 52, scope: !3138)
!3155 = !DILocation(line: 753, column: 8, scope: !3138)
!3156 = !DILocation(line: 753, column: 13, scope: !3138)
!3157 = !DILocation(line: 758, column: 8, scope: !3138)
!3158 = !DILocation(line: 758, column: 13, scope: !3138)
!3159 = !DILocation(line: 760, column: 8, scope: !3138)
!3160 = !DILocation(line: 760, column: 14, scope: !3138)
!3161 = !DILocation(line: 761, column: 8, scope: !3138)
!3162 = !DILocation(line: 761, column: 16, scope: !3138)
!3163 = !DILocation(line: 762, column: 8, scope: !3138)
!3164 = !DILocation(line: 762, column: 17, scope: !3138)
!3165 = !DILocation(line: 763, column: 1, scope: !3138)
!3166 = distinct !DISubprogram(name: "gimple_def_ops", scope: !248, file: !248, line: 1292, type: !3167, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3169)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!856, !2333}
!3169 = !{!3170}
!3170 = !DILocalVariable(name: "g", arg: 1, scope: !3166, file: !248, line: 1292, type: !2333)
!3171 = !DILocation(line: 0, scope: !3166)
!3172 = distinct !DISubprogram(name: "gimple_vdef", scope: !248, file: !248, line: 1375, type: !3014, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3173)
!3173 = !{!3174}
!3174 = !DILocalVariable(name: "g", arg: 1, scope: !3172, file: !248, line: 1375, type: !2333)
!3175 = !DILocation(line: 0, scope: !3172)
!3176 = !DILocation(line: 1377, column: 8, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3172, file: !248, line: 1377, column: 7)
!3178 = !DILocation(line: 1377, column: 7, scope: !3172)
!3179 = !DILocation(line: 1379, column: 23, scope: !3172)
!3180 = !DILocation(line: 1379, column: 3, scope: !3172)
!3181 = !DILocation(line: 1380, column: 1, scope: !3172)
!3182 = distinct !DISubprogram(name: "gimple_use_ops", scope: !248, file: !248, line: 1313, type: !3183, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3185)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!863, !2333}
!3185 = !{!3186}
!3186 = !DILocalVariable(name: "g", arg: 1, scope: !3182, file: !248, line: 1313, type: !2333)
!3187 = !DILocation(line: 0, scope: !3182)
!3188 = !DILocation(line: 1315, column: 8, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3182, file: !248, line: 1315, column: 7)
!3190 = !DILocation(line: 1315, column: 7, scope: !3182)
!3191 = !DILocation(line: 1317, column: 26, scope: !3182)
!3192 = !DILocation(line: 1317, column: 3, scope: !3182)
!3193 = !DILocation(line: 1318, column: 1, scope: !3182)
!3194 = distinct !DISubprogram(name: "gimple_vuse", scope: !248, file: !248, line: 1365, type: !3014, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3195)
!3195 = !{!3196}
!3196 = !DILocalVariable(name: "g", arg: 1, scope: !3194, file: !248, line: 1365, type: !2333)
!3197 = !DILocation(line: 0, scope: !3194)
!3198 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !248, file: !248, line: 1283, type: !2979, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3199)
!3199 = !{!3200}
!3200 = !DILocalVariable(name: "g", arg: 1, scope: !3198, file: !248, line: 1283, type: !2333)
!3201 = !DILocation(line: 0, scope: !3198)
!3202 = !DILocation(line: 1285, column: 10, scope: !3198)
!3203 = !DILocation(line: 1285, column: 26, scope: !3198)
!3204 = !DILocation(line: 1285, column: 43, scope: !3198)
!3205 = !DILocation(line: 1285, column: 46, scope: !3198)
!3206 = !DILocation(line: 1285, column: 62, scope: !3198)
!3207 = !DILocation(line: 1285, column: 3, scope: !3198)
!3208 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2348, file: !2348, line: 442, type: !3209, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!1509, !338, !327}
!3211 = !{!3212, !3213}
!3212 = !DILocalVariable(name: "gs", arg: 1, scope: !3208, file: !2348, line: 442, type: !338)
!3213 = !DILocalVariable(name: "i", arg: 2, scope: !3208, file: !2348, line: 442, type: !327)
!3214 = !DILocation(line: 0, scope: !3208)
!3215 = !DILocation(line: 444, column: 11, scope: !3208)
!3216 = !DILocation(line: 444, column: 35, scope: !3208)
!3217 = !DILocation(line: 444, column: 3, scope: !3208)
!3218 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !248, file: !248, line: 3100, type: !3219, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3222)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!3221, !338, !5}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!3222 = !{!3223, !3224}
!3223 = !DILocalVariable(name: "gs", arg: 1, scope: !3218, file: !248, line: 3100, type: !338)
!3224 = !DILocalVariable(name: "index", arg: 2, scope: !3218, file: !248, line: 3100, type: !5)
!3225 = !DILocation(line: 0, scope: !3218)
!3226 = !DILocation(line: 3103, column: 3, scope: !3218)
!3227 = !DILocation(line: 3104, column: 12, scope: !3218)
!3228 = !DILocation(line: 3104, column: 3, scope: !3218)
!3229 = distinct !DISubprogram(name: "bb_seq", scope: !248, file: !248, line: 237, type: !2936, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3230)
!3230 = !{!3231}
!3231 = !DILocalVariable(name: "bb", arg: 1, scope: !3229, file: !248, line: 237, type: !2864)
!3232 = !DILocation(line: 0, scope: !3229)
!3233 = !DILocation(line: 239, column: 17, scope: !3229)
!3234 = !DILocation(line: 239, column: 23, scope: !3229)
!3235 = !DILocation(line: 239, column: 33, scope: !3229)
!3236 = !DILocation(line: 239, column: 43, scope: !3229)
!3237 = !DILocation(line: 239, column: 36, scope: !3229)
!3238 = !DILocation(line: 239, column: 10, scope: !3229)
!3239 = !DILocation(line: 239, column: 68, scope: !3229)
!3240 = !DILocation(line: 239, column: 3, scope: !3229)
!3241 = distinct !DISubprogram(name: "single_pred_p", scope: !4, file: !4, line: 634, type: !3242, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3244)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!326, !2864}
!3244 = !{!3245}
!3245 = !DILocalVariable(name: "bb", arg: 1, scope: !3241, file: !4, line: 634, type: !2864)
!3246 = !DILocation(line: 0, scope: !3241)
!3247 = !DILocation(line: 636, column: 10, scope: !3241)
!3248 = !DILocation(line: 636, column: 33, scope: !3241)
!3249 = !DILocation(line: 636, column: 3, scope: !3241)
!3250 = distinct !DISubprogram(name: "gimple_seq_empty_p", scope: !248, file: !248, line: 215, type: !3251, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3253)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!326, !2001}
!3253 = !{!3254}
!3254 = !DILocalVariable(name: "s", arg: 1, scope: !3250, file: !248, line: 215, type: !2001)
!3255 = !DILocation(line: 0, scope: !3250)
!3256 = !DILocation(line: 217, column: 12, scope: !3250)
!3257 = !DILocation(line: 217, column: 20, scope: !3250)
!3258 = !DILocation(line: 217, column: 26, scope: !3250)
!3259 = !DILocation(line: 217, column: 32, scope: !3250)
!3260 = !DILocation(line: 217, column: 3, scope: !3250)
!3261 = distinct !DISubprogram(name: "single_succ_p", scope: !4, file: !4, line: 626, type: !3242, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3262)
!3262 = !{!3263}
!3263 = !DILocalVariable(name: "bb", arg: 1, scope: !3261, file: !4, line: 626, type: !2864)
!3264 = !DILocation(line: 0, scope: !3261)
!3265 = !DILocation(line: 628, column: 10, scope: !3261)
!3266 = !DILocation(line: 628, column: 33, scope: !3261)
!3267 = !DILocation(line: 628, column: 3, scope: !3261)
!3268 = distinct !DISubprogram(name: "single_pred_edge", scope: !4, file: !4, line: 653, type: !2862, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3269)
!3269 = !{!3270}
!3270 = !DILocalVariable(name: "bb", arg: 1, scope: !3268, file: !4, line: 653, type: !2864)
!3271 = !DILocation(line: 0, scope: !3268)
!3272 = !DILocation(line: 655, column: 3, scope: !3268)
!3273 = !DILocation(line: 656, column: 10, scope: !3268)
!3274 = !DILocation(line: 656, column: 3, scope: !3268)
!3275 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !4, file: !4, line: 150, type: !3276, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3280)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!5, !3278}
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!3280 = !{!3281}
!3281 = !DILocalVariable(name: "vec_", arg: 1, scope: !3275, file: !4, line: 150, type: !3278)
!3282 = !DILocation(line: 0, scope: !3275)
!3283 = !DILocation(line: 150, column: 1, scope: !3275)
!3284 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !4, file: !4, line: 150, type: !3285, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3287)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!379, !3278, !5}
!3287 = !{!3288, !3289}
!3288 = !DILocalVariable(name: "vec_", arg: 1, scope: !3284, file: !4, line: 150, type: !3278)
!3289 = !DILocalVariable(name: "ix_", arg: 2, scope: !3284, file: !4, line: 150, type: !5)
!3290 = !DILocation(line: 0, scope: !3284)
!3291 = !DILocation(line: 150, column: 1, scope: !3284)
!3292 = distinct !DISubprogram(name: "ei_end_p", scope: !4, file: !4, line: 721, type: !3293, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!326, !2801}
!3295 = !{!3296}
!3296 = !DILocalVariable(name: "i", arg: 1, scope: !3292, file: !4, line: 721, type: !2801)
!3297 = !DILocation(line: 723, column: 22, scope: !3292)
!3298 = !DILocation(line: 723, column: 19, scope: !3292)
!3299 = !DILocation(line: 723, column: 10, scope: !3292)
!3300 = !DILocation(line: 723, column: 3, scope: !3292)
!3301 = distinct !DISubprogram(name: "ei_edge", scope: !4, file: !4, line: 752, type: !3302, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3304)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!379, !2801}
!3304 = !{!3305}
!3305 = !DILocalVariable(name: "i", arg: 1, scope: !3301, file: !4, line: 752, type: !2801)
!3306 = !DILocation(line: 754, column: 10, scope: !3301)
!3307 = !DILocation(line: 754, column: 3, scope: !3301)
!3308 = distinct !DISubprogram(name: "ei_container", scope: !4, file: !4, line: 685, type: !3309, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3311)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!367, !2801}
!3311 = !{!3312}
!3312 = !DILocalVariable(name: "i", arg: 1, scope: !3308, file: !4, line: 685, type: !2801)
!3313 = !DILocation(line: 687, column: 3, scope: !3308)
!3314 = !DILocation(line: 688, column: 10, scope: !3308)
!3315 = !DILocation(line: 688, column: 3, scope: !3308)
