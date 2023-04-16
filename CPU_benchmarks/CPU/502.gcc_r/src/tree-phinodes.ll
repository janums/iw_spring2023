; ModuleID = 'tree-phinodes.bc'
source_filename = "tree-phinodes.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.VEC_gimple_gc = type { %struct.VEC_gimple_base }
%struct.VEC_gimple_base = type { i32, i32, [1 x %union.gimple_statement_d*] }
%union.gimple_statement_d = type { %struct.gimple_statement_phi }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, %union.tree_node*, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, %struct.basic_block_def*, %union.tree_node* }
%struct.basic_block_def = type { %struct.VEC_edge_gc*, %struct.VEC_edge_gc*, i8*, %struct.loop*, [2 x %struct.et_node*], %struct.basic_block_def*, %struct.basic_block_def*, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%struct.VEC_edge_gc = type { %struct.VEC_edge_base }
%struct.VEC_edge_base = type { i32, i32, [1 x %struct.edge_def*] }
%struct.edge_def = type { %struct.basic_block_def*, %struct.basic_block_def*, %union.edge_def_insns, i8*, %union.tree_node*, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { %struct.gimple_seq_d* }
%struct.gimple_seq_d = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_d* }
%struct.gimple_seq_node_d = type { %union.gimple_statement_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d* }
%struct.loop = type opaque
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
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
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type opaque
%struct.control_flow_graph = type { %struct.basic_block_def*, %struct.basic_block_def*, %struct.VEC_basic_block_gc*, i32, i32, i32, %struct.VEC_basic_block_gc*, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_df = type { %struct.htab*, %struct.VEC_gimple_gc*, %struct.VEC_tree_gc*, %union.tree_node*, %struct.pt_solution, %struct.pt_solution, %struct.pointer_map_t*, %union.tree_node*, %struct.htab*, %struct.bitmap_head_def*, i8, %struct.ssa_operands }
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
%struct.ssa_use_operand_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %union.anon, %union.tree_node** }
%union.anon = type { %union.gimple_statement_d* }
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, %union.tree_node*, i32 }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@free_phinodes = internal global [8 x %struct.VEC_gimple_gc*] zeroinitializer, align 16, !dbg !0
@free_phinode_count = internal unnamed_addr global i64 0, align 8, !dbg !1698
@.str = private unnamed_addr constant [16 x i8] c"tree-phinodes.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gt_ggc_rd_gt_tree_phinodes_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast ([8 x %struct.VEC_gimple_gc*]* @free_phinodes to i8*), i64 1, i64 64, void (i8*)* null, void (i8*)* null }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1684
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1707 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1720, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1721, metadata !DIExpression()), !dbg !1722
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1723
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1724
  ret i32 %call, !dbg !1725
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1726 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1730
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1731
  ret i32 %call, !dbg !1732
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1733 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1788, metadata !DIExpression()), !dbg !1789
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1790
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1790
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1790
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1790
  %cmp = icmp uge i8* %0, %1, !dbg !1790
  %conv1 = zext i1 %cmp to i64, !dbg !1790
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1790
  %tobool = icmp eq i64 %expval, 0, !dbg !1790
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1790

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1790
  br label %cond.end, !dbg !1790

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1790
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1790
  %2 = load i8, i8* %0, align 1, !dbg !1790
  %conv3 = zext i8 %2 to i32, !dbg !1790
  br label %cond.end, !dbg !1790

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1790
  ret i32 %cond, !dbg !1791
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1792 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1794, metadata !DIExpression()), !dbg !1795
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1796
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1796
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1796
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1796
  %cmp = icmp uge i8* %0, %1, !dbg !1796
  %conv1 = zext i1 %cmp to i64, !dbg !1796
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1796
  %tobool = icmp eq i64 %expval, 0, !dbg !1796
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1796

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1796
  br label %cond.end, !dbg !1796

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1796
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1796
  %2 = load i8, i8* %0, align 1, !dbg !1796
  %conv3 = zext i8 %2 to i32, !dbg !1796
  br label %cond.end, !dbg !1796

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1796
  ret i32 %cond, !dbg !1797
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1798 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1799
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1799
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1799
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1799
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1799
  %cmp = icmp uge i8* %1, %2, !dbg !1799
  %conv1 = zext i1 %cmp to i64, !dbg !1799
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1799
  %tobool = icmp eq i64 %expval, 0, !dbg !1799
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1799

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1799
  br label %cond.end, !dbg !1799

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1799
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1799
  %3 = load i8, i8* %1, align 1, !dbg !1799
  %conv3 = zext i8 %3 to i32, !dbg !1799
  br label %cond.end, !dbg !1799

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1799
  ret i32 %cond, !dbg !1800
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1801 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1805, metadata !DIExpression()), !dbg !1806
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1807
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1808
  ret i32 %call, !dbg !1809
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1810 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1814, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1815, metadata !DIExpression()), !dbg !1816
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1817
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1817
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1817
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1817
  %cmp = icmp uge i8* %0, %1, !dbg !1817
  %conv1 = zext i1 %cmp to i64, !dbg !1817
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1817
  %tobool = icmp eq i64 %expval, 0, !dbg !1817
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1817

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1817
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1817
  br label %cond.end, !dbg !1817

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1817
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1817
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1817
  store i8 %conv2, i8* %0, align 1, !dbg !1817
  %conv6 = and i32 %__c, 255, !dbg !1817
  br label %cond.end, !dbg !1817

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1817
  ret i32 %cond, !dbg !1818
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1819 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1822, metadata !DIExpression()), !dbg !1823
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1824
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1824
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1824
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1824
  %cmp = icmp uge i8* %0, %1, !dbg !1824
  %conv1 = zext i1 %cmp to i64, !dbg !1824
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1824
  %tobool = icmp eq i64 %expval, 0, !dbg !1824
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1824

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1824
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1824
  br label %cond.end, !dbg !1824

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1824
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1824
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1824
  store i8 %conv2, i8* %0, align 1, !dbg !1824
  %conv6 = and i32 %__c, 255, !dbg !1824
  br label %cond.end, !dbg !1824

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1824
  ret i32 %cond, !dbg !1825
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1826 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1828, metadata !DIExpression()), !dbg !1829
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1830
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1830
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1830
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1830
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1830
  %cmp = icmp uge i8* %1, %2, !dbg !1830
  %conv1 = zext i1 %cmp to i64, !dbg !1830
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1830
  %tobool = icmp eq i64 %expval, 0, !dbg !1830
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1830

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1830
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1830
  br label %cond.end, !dbg !1830

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1830
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1830
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1830
  store i8 %conv4, i8* %1, align 1, !dbg !1830
  %conv6 = and i32 %__c, 255, !dbg !1830
  br label %cond.end, !dbg !1830

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1830
  ret i32 %cond, !dbg !1831
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1832 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1838, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1839, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1840, metadata !DIExpression()), !dbg !1841
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1842
  ret i64 %call, !dbg !1843
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1844 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1846, metadata !DIExpression()), !dbg !1847
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1848
  %0 = load i32, i32* %_flags, align 8, !dbg !1848
  %and = lshr i32 %0, 4, !dbg !1848
  %and.lobit = and i32 %and, 1, !dbg !1848
  ret i32 %and.lobit, !dbg !1849
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1850 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1852, metadata !DIExpression()), !dbg !1853
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1854
  %0 = load i32, i32* %_flags, align 8, !dbg !1854
  %and = lshr i32 %0, 5, !dbg !1854
  %and.lobit = and i32 %and, 1, !dbg !1854
  ret i32 %and.lobit, !dbg !1855
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1856 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1859, metadata !DIExpression()), !dbg !1860
  %__c.off = add i32 %__c, 128, !dbg !1861
  %0 = icmp ult i32 %__c.off, 384, !dbg !1861
  br i1 %0, label %cond.true, label %cond.end, !dbg !1861

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1862
  %1 = load i32*, i32** %call, align 8, !dbg !1863
  %idxprom = sext i32 %__c to i64, !dbg !1864
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1864
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1864
  br label %cond.end, !dbg !1865

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1865
  ret i32 %cond, !dbg !1866
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1867 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1869, metadata !DIExpression()), !dbg !1870
  %__c.off = add i32 %__c, 128, !dbg !1871
  %0 = icmp ult i32 %__c.off, 384, !dbg !1871
  br i1 %0, label %cond.true, label %cond.end, !dbg !1871

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1872
  %1 = load i32*, i32** %call, align 8, !dbg !1873
  %idxprom = sext i32 %__c to i64, !dbg !1874
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1874
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1874
  br label %cond.end, !dbg !1875

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1875
  ret i32 %cond, !dbg !1876
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1877 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1882, metadata !DIExpression()), !dbg !1883
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1884
  %conv = trunc i64 %call to i32, !dbg !1885
  ret i32 %conv, !dbg !1886
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1887 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1891, metadata !DIExpression()), !dbg !1892
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1893
  ret i64 %call, !dbg !1894
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1895 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1900, metadata !DIExpression()), !dbg !1901
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1902
  ret i64 %call, !dbg !1903
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1904 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1910, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1911, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1912, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1913, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1914, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 0, metadata !1915, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1916, metadata !DIExpression()), !dbg !1920
  br label %while.cond, !dbg !1921

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1922
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1920
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1916, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1915, metadata !DIExpression()), !dbg !1920
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1923
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1921

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1924
  %div = lshr i64 %add, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %div, metadata !1917, metadata !DIExpression()), !dbg !1920
  %mul = mul i64 %div, %__size, !dbg !1927
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1928
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1918, metadata !DIExpression()), !dbg !1920
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1929
  call void @llvm.dbg.value(metadata i32 %call, metadata !1919, metadata !DIExpression()), !dbg !1920
  %cmp1 = icmp slt i32 %call, 0, !dbg !1930
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1932

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1933
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1935

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1915, metadata !DIExpression()), !dbg !1920
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1920
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1920
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1916, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1915, metadata !DIExpression()), !dbg !1920
  br label %while.cond, !dbg !1921, !llvm.loop !1937

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1920
  ret i8* %retval.0, !dbg !1939
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1940 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1946, metadata !DIExpression()), !dbg !1947
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1948
  ret double %call, !dbg !1949
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1950 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1959, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1960, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i32 %base, metadata !1961, metadata !DIExpression()), !dbg !1962
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1963
  ret i64 %call, !dbg !1964
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1965 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1971, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1972, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i32 %base, metadata !1973, metadata !DIExpression()), !dbg !1974
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1975
  ret i64 %call, !dbg !1976
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1977 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1988, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1989, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %base, metadata !1990, metadata !DIExpression()), !dbg !1991
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1992
  ret i64 %call, !dbg !1993
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1994 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1998, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1999, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i32 %base, metadata !2000, metadata !DIExpression()), !dbg !2001
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2002
  ret i64 %call, !dbg !2003
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2004 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2044, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2045, metadata !DIExpression()), !dbg !2046
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2047
  ret i32 %call, !dbg !2048
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2049 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2052, metadata !DIExpression()), !dbg !2053
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2054
  ret i32 %call, !dbg !2055
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2056 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2060, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2061, metadata !DIExpression()), !dbg !2062
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2063
  ret i32 %call, !dbg !2064
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2065 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2069, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2070, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2071, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2072, metadata !DIExpression()), !dbg !2073
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2074
  ret i32 %call, !dbg !2075
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2076 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2080, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2081, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2082, metadata !DIExpression()), !dbg !2083
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2082, metadata !DIExpression(DW_OP_deref)), !dbg !2083
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2084
  ret i32 %call, !dbg !2085
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2086 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2090, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2091, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2092, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2093, metadata !DIExpression()), !dbg !2094
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2093, metadata !DIExpression(DW_OP_deref)), !dbg !2094
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2095
  ret i32 %call, !dbg !2096
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2097 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2121, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2122, metadata !DIExpression()), !dbg !2123
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2124
  ret i32 %call, !dbg !2125
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2126 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2129, metadata !DIExpression()), !dbg !2130
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2131
  ret i32 %call, !dbg !2132
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2133 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2138, metadata !DIExpression()), !dbg !2139
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2140
  ret i32 %call, !dbg !2141
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2142 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2146, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2147, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2148, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2149, metadata !DIExpression()), !dbg !2150
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2151
  ret i32 %call, !dbg !2152
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @init_phinodes() local_unnamed_addr #5 !dbg !2153 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !2157, metadata !DIExpression()), !dbg !2158
  br label %for.cond, !dbg !2159

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !2161
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2157, metadata !DIExpression()), !dbg !2158
  %exitcond = icmp eq i64 %indvars.iv, 8, !dbg !2162
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2164

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [8 x %struct.VEC_gimple_gc*], [8 x %struct.VEC_gimple_gc*]* @free_phinodes, i64 0, i64 %indvars.iv, !dbg !2165
  store %struct.VEC_gimple_gc* null, %struct.VEC_gimple_gc** %arrayidx, align 8, !dbg !2166
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2167
  call void @llvm.dbg.value(metadata i32 undef, metadata !2157, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2158
  br label %for.cond, !dbg !2168, !llvm.loop !2169

for.end:                                          ; preds = %for.cond
  store i64 0, i64* @free_phinode_count, align 8, !dbg !2171
  ret void, !dbg !2172
}

; Function Attrs: nounwind uwtable
define dso_local void @fini_phinodes() local_unnamed_addr #5 !dbg !2173 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !2175, metadata !DIExpression()), !dbg !2176
  br label %for.cond, !dbg !2177

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !2179
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2175, metadata !DIExpression()), !dbg !2176
  %exitcond = icmp eq i64 %indvars.iv, 8, !dbg !2180
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2182

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [8 x %struct.VEC_gimple_gc*], [8 x %struct.VEC_gimple_gc*]* @free_phinodes, i64 0, i64 %indvars.iv, !dbg !2183
  store %struct.VEC_gimple_gc* null, %struct.VEC_gimple_gc** %arrayidx, align 8, !dbg !2184
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2185
  call void @llvm.dbg.value(metadata i32 undef, metadata !2175, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2176
  br label %for.cond, !dbg !2186, !llvm.loop !2187

for.end:                                          ; preds = %for.cond
  store i64 0, i64* @free_phinode_count, align 8, !dbg !2189
  ret void, !dbg !2190
}

; Function Attrs: nounwind uwtable
define dso_local %union.gimple_statement_d* @make_phi_node(%union.tree_node* %var, i32 %len) local_unnamed_addr #5 !dbg !2191 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2195, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i32 %len, metadata !2196, metadata !DIExpression()), !dbg !2207
  %call = tail call fastcc i32 @ideal_phi_node_len(i32 %len) #7, !dbg !2208
  call void @llvm.dbg.value(metadata i32 %call, metadata !2198, metadata !DIExpression()), !dbg !2207
  %conv = sext i32 %call to i64, !dbg !2209
  %call1 = tail call fastcc %union.gimple_statement_d* @allocate_phi_node(i64 %conv) #7, !dbg !2210
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !2197, metadata !DIExpression()), !dbg !2207
  %0 = bitcast %union.gimple_statement_d* %call1 to i8*, !dbg !2211
  %conv2 = sext i32 %len to i64, !dbg !2212
  %mul = mul nsw i64 %conv2, 48, !dbg !2213
  %add = add nsw i64 %mul, 48, !dbg !2214
  %call3 = tail call i8* @memset(i8* %0, i32 0, i64 %add) #6, !dbg !2215
  %1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %call1, i64 0, i32 0, i32 0, i32 0, !dbg !2216
  %bf.load = load i32, i32* %1, align 8, !dbg !2217
  %bf.clear = and i32 %bf.load, -256, !dbg !2217
  %bf.set = or i32 %bf.clear, 16, !dbg !2217
  store i32 %bf.set, i32* %1, align 8, !dbg !2217
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %call1, i64 0, i32 0, i32 2, !dbg !2218
  store i32 %len, i32* %nargs, align 4, !dbg !2219
  %capacity5 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %call1, i64 0, i32 0, i32 1, !dbg !2220
  store i32 %call, i32* %capacity5, align 8, !dbg !2221
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2222
  %bf.load6 = load i64, i64* %2, align 8, !dbg !2222
  %bf.cast1 = and i64 %bf.load6, 65535, !dbg !2224
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2224
  br i1 %cmp, label %if.then, label %if.else, !dbg !2225

if.then:                                          ; preds = %entry
  tail call fastcc void @gimple_phi_set_result(%union.gimple_statement_d* %call1, %union.tree_node* %var) #7, !dbg !2226
  br label %if.end, !dbg !2226

if.else:                                          ; preds = %entry
  %call9 = tail call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var, %union.gimple_statement_d* %call1) #7, !dbg !2227
  tail call fastcc void @gimple_phi_set_result(%union.gimple_statement_d* %call1, %union.tree_node* %call9) #7, !dbg !2228
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !2199, metadata !DIExpression()), !dbg !2207
  %3 = sext i32 %call to i64, !dbg !2229
  br label %for.cond, !dbg !2229

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ], !dbg !2230
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2199, metadata !DIExpression()), !dbg !2207
  %cmp10 = icmp slt i64 %indvars.iv, %3, !dbg !2231
  br i1 %cmp10, label %for.body, label %for.end, !dbg !2232

for.body:                                         ; preds = %for.cond
  tail call fastcc void @gimple_phi_arg_set_location(%union.gimple_statement_d* %call1, i64 %indvars.iv, i32 0) #7, !dbg !2233
  %4 = trunc i64 %indvars.iv to i32, !dbg !2234
  %call13 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call1, i32 %4) #7, !dbg !2234
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call13, metadata !2200, metadata !DIExpression()), !dbg !2235
  %call15 = tail call fastcc %union.tree_node** @gimple_phi_arg_def_ptr(%union.gimple_statement_d* %call1, i64 %indvars.iv) #7, !dbg !2236
  %use = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %call13, i64 0, i32 3, !dbg !2237
  store %union.tree_node** %call15, %union.tree_node*** %use, align 8, !dbg !2238
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %call13, i64 0, i32 0, !dbg !2239
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2240
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %call13, i64 0, i32 1, !dbg !2241
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !2242
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %call13, i64 0, i32 2, i32 0, !dbg !2243
  store %union.gimple_statement_d* %call1, %union.gimple_statement_d** %stmt, align 8, !dbg !2244
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2245
  call void @llvm.dbg.value(metadata i32 undef, metadata !2199, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2207
  br label %for.cond, !dbg !2246, !llvm.loop !2247

for.end:                                          ; preds = %for.cond
  ret %union.gimple_statement_d* %call1, !dbg !2249
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ideal_phi_node_len(i32 %len) unnamed_addr #5 !dbg !2250 {
entry:
  call void @llvm.dbg.value(metadata i32 %len, metadata !2252, metadata !DIExpression()), !dbg !2257
  %0 = icmp sgt i32 %len, 2, !dbg !2258
  %spec.select = select i1 %0, i32 %len, i32 2, !dbg !2258
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2252, metadata !DIExpression()), !dbg !2257
  %sub = add nsw i32 %spec.select, -1, !dbg !2259
  %conv = sext i32 %sub to i64, !dbg !2260
  %mul = mul nsw i64 %conv, 48, !dbg !2261
  %add = add nsw i64 %mul, 96, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %add, metadata !2253, metadata !DIExpression()), !dbg !2257
  %call = tail call i32 @ceil_log2(i64 %add) #6, !dbg !2263
  call void @llvm.dbg.value(metadata i32 %call, metadata !2255, metadata !DIExpression()), !dbg !2257
  %shl = shl i32 1, %call, !dbg !2264
  %conv1 = sext i32 %shl to i64, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %conv1, metadata !2254, metadata !DIExpression()), !dbg !2257
  %sub3 = sub nsw i64 %conv1, %add, !dbg !2266
  %div = udiv i64 %sub3, 48, !dbg !2267
  %1 = trunc i64 %div to i32, !dbg !2268
  %conv5 = add i32 %spec.select, %1, !dbg !2268
  call void @llvm.dbg.value(metadata i32 %conv5, metadata !2256, metadata !DIExpression()), !dbg !2257
  ret i32 %conv5, !dbg !2269
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @allocate_phi_node(i64 %len) unnamed_addr #0 !dbg !2270 {
entry:
  call void @llvm.dbg.value(metadata i64 %len, metadata !2274, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 8, metadata !2276, metadata !DIExpression()), !dbg !2278
  %0 = mul i64 %len, 48, !dbg !2279
  %add = add i64 %0, 48, !dbg !2280
  call void @llvm.dbg.value(metadata i64 %add, metadata !2277, metadata !DIExpression()), !dbg !2278
  %1 = load i64, i64* @free_phinode_count, align 8, !dbg !2281
  %tobool = icmp eq i64 %1, 0, !dbg !2281
  br i1 %tobool, label %if.end4, label %if.then, !dbg !2283

if.then:                                          ; preds = %entry
  %sub1 = add i64 %len, -2, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %sub1, metadata !2276, metadata !DIExpression()), !dbg !2278
  br label %for.cond, !dbg !2286

for.cond:                                         ; preds = %for.inc, %if.then
  %bucket.0 = phi i64 [ %sub1, %if.then ], [ %inc, %for.inc ], !dbg !2287
  call void @llvm.dbg.value(metadata i64 %bucket.0, metadata !2276, metadata !DIExpression()), !dbg !2278
  %cmp = icmp ult i64 %bucket.0, 8, !dbg !2288
  br i1 %cmp, label %for.body, label %if.end4.loopexit, !dbg !2290

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [8 x %struct.VEC_gimple_gc*], [8 x %struct.VEC_gimple_gc*]* @free_phinodes, i64 0, i64 %bucket.0, !dbg !2291
  %2 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** %arrayidx, align 8, !dbg !2291
  %tobool2 = icmp eq %struct.VEC_gimple_gc* %2, null, !dbg !2291
  br i1 %tobool2, label %for.inc, label %if.end4.loopexit, !dbg !2293

for.inc:                                          ; preds = %for.body
  %inc = add i64 %bucket.0, 1, !dbg !2294
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2276, metadata !DIExpression()), !dbg !2278
  br label %for.cond, !dbg !2295, !llvm.loop !2296

if.end4.loopexit:                                 ; preds = %for.cond, %for.body
  %bucket.0.lcssa = phi i64 [ %bucket.0, %for.cond ], [ %bucket.0, %for.body ], !dbg !2287
  call void @llvm.dbg.value(metadata i64 %bucket.0.lcssa, metadata !2276, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %bucket.0.lcssa, metadata !2276, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %bucket.0.lcssa, metadata !2276, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %bucket.0.lcssa, metadata !2276, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %bucket.0.lcssa, metadata !2276, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %bucket.0.lcssa, metadata !2276, metadata !DIExpression()), !dbg !2278
  br label %if.end4, !dbg !2298

if.end4:                                          ; preds = %if.end4.loopexit, %entry
  %bucket.1 = phi i64 [ 8, %entry ], [ %bucket.0.lcssa, %if.end4.loopexit ], !dbg !2278
  call void @llvm.dbg.value(metadata i64 %bucket.1, metadata !2276, metadata !DIExpression()), !dbg !2278
  %cmp5 = icmp ult i64 %bucket.1, 8, !dbg !2298
  br i1 %cmp5, label %land.lhs.true, label %if.else, !dbg !2300

land.lhs.true:                                    ; preds = %if.end4
  %arrayidx6 = getelementptr inbounds [8 x %struct.VEC_gimple_gc*], [8 x %struct.VEC_gimple_gc*]* @free_phinodes, i64 0, i64 %bucket.1, !dbg !2301
  %3 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** %arrayidx6, align 8, !dbg !2301
  %tobool7 = icmp eq %struct.VEC_gimple_gc* %3, null, !dbg !2301
  br i1 %tobool7, label %cond.end, label %cond.true, !dbg !2301

cond.true:                                        ; preds = %land.lhs.true
  %base = getelementptr inbounds %struct.VEC_gimple_gc, %struct.VEC_gimple_gc* %3, i64 0, i32 0, !dbg !2301
  br label %cond.end, !dbg !2301

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %land.lhs.true ], !dbg !2301
  %call = tail call fastcc %union.gimple_statement_d* @VEC_gimple_base_index(%struct.VEC_gimple_base* %cond, i32 0) #7, !dbg !2301
  %call9 = tail call fastcc i32 @gimple_phi_capacity(%union.gimple_statement_d* %call) #7, !dbg !2302
  %conv = zext i32 %call9 to i64, !dbg !2302
  %cmp10 = icmp ult i64 %conv, %len, !dbg !2303
  br i1 %cmp10, label %if.else, label %if.then12, !dbg !2304

if.then12:                                        ; preds = %cond.end
  %4 = load i64, i64* @free_phinode_count, align 8, !dbg !2305
  %dec = add i64 %4, -1, !dbg !2305
  store i64 %dec, i64* @free_phinode_count, align 8, !dbg !2305
  %5 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** %arrayidx6, align 8, !dbg !2307
  %tobool14 = icmp eq %struct.VEC_gimple_gc* %5, null, !dbg !2307
  br i1 %tobool14, label %cond.end19, label %cond.true15, !dbg !2307

cond.true15:                                      ; preds = %if.then12
  %base17 = getelementptr inbounds %struct.VEC_gimple_gc, %struct.VEC_gimple_gc* %5, i64 0, i32 0, !dbg !2307
  br label %cond.end19, !dbg !2307

cond.end19:                                       ; preds = %if.then12, %cond.true15
  %cond20 = phi %struct.VEC_gimple_base* [ %base17, %cond.true15 ], [ null, %if.then12 ], !dbg !2307
  %call21 = tail call fastcc %union.gimple_statement_d* @VEC_gimple_base_pop(%struct.VEC_gimple_base* %cond20) #7, !dbg !2307
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call21, metadata !2275, metadata !DIExpression()), !dbg !2278
  %6 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** %arrayidx6, align 8, !dbg !2308
  %tobool23 = icmp eq %struct.VEC_gimple_gc* %6, null, !dbg !2308
  br i1 %tobool23, label %cond.end28, label %cond.true24, !dbg !2308

cond.true24:                                      ; preds = %cond.end19
  %base26 = getelementptr inbounds %struct.VEC_gimple_gc, %struct.VEC_gimple_gc* %6, i64 0, i32 0, !dbg !2308
  br label %cond.end28, !dbg !2308

cond.end28:                                       ; preds = %cond.end19, %cond.true24
  %cond29 = phi %struct.VEC_gimple_base* [ %base26, %cond.true24 ], [ null, %cond.end19 ], !dbg !2308
  %call30 = tail call fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %cond29) #7, !dbg !2308
  %cmp31 = icmp eq i32 %call30, 0, !dbg !2308
  br i1 %cmp31, label %if.then33, label %if.end37, !dbg !2310

if.then33:                                        ; preds = %cond.end28
  tail call fastcc void @VEC_gimple_gc_free(%struct.VEC_gimple_gc** nonnull %arrayidx6) #7, !dbg !2311
  br label %if.end37, !dbg !2311

if.else:                                          ; preds = %cond.end, %if.end4
  %call36 = tail call i8* @ggc_alloc_stat(i64 %add) #6, !dbg !2312
  %7 = bitcast i8* %call36 to %union.gimple_statement_d*, !dbg !2314
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %7, metadata !2275, metadata !DIExpression()), !dbg !2278
  br label %if.end37

if.end37:                                         ; preds = %cond.end28, %if.then33, %if.else
  %phi.0 = phi %union.gimple_statement_d* [ %7, %if.else ], [ %call21, %if.then33 ], [ %call21, %cond.end28 ], !dbg !2315
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi.0, metadata !2275, metadata !DIExpression()), !dbg !2278
  ret %union.gimple_statement_d* %phi.0, !dbg !2316
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_phi_set_result(%union.gimple_statement_d* %gs, %union.tree_node* %result) unnamed_addr #0 !dbg !2317 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2321, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata %union.tree_node* %result, metadata !2322, metadata !DIExpression()), !dbg !2323
  %result1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !2324
  store %union.tree_node* %result, %union.tree_node** %result1, align 8, !dbg !2325
  ret void, !dbg !2326
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2327 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2333, metadata !DIExpression()), !dbg !2334
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2335
  %call = tail call %union.tree_node* @make_ssa_name_fn(%struct.function* %0, %union.tree_node* %var, %union.gimple_statement_d* %stmt) #6, !dbg !2336
  ret %union.tree_node* %call, !dbg !2337
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_phi_arg_set_location(%union.gimple_statement_d* %gs, i64 %i, i32 %loc) unnamed_addr #0 !dbg !2338 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2342, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %i, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %loc, metadata !2344, metadata !DIExpression()), !dbg !2345
  %conv = trunc i64 %i to i32, !dbg !2346
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #7, !dbg !2347
  %locus = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 2, !dbg !2348
  store i32 %loc, i32* %locus, align 8, !dbg !2349
  ret void, !dbg !2350
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !2351 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2355, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 %i, metadata !2356, metadata !DIExpression()), !dbg !2357
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !2358
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !2359
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !2360
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_arg_def_ptr(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !2361 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2365, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i64 %index, metadata !2366, metadata !DIExpression()), !dbg !2367
  %conv = trunc i64 %index to i32, !dbg !2368
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #7, !dbg !2369
  %def = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 1, !dbg !2370
  ret %union.tree_node** %def, !dbg !2371
}

; Function Attrs: nounwind uwtable
define dso_local void @release_phi_node(%union.gimple_statement_d* %phi) local_unnamed_addr #5 !dbg !2372 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !2376, metadata !DIExpression()), !dbg !2384
  %call = tail call fastcc i32 @gimple_phi_capacity(%union.gimple_statement_d* %phi) #7, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2378, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 0, metadata !2379, metadata !DIExpression()), !dbg !2384
  br label %for.cond, !dbg !2386

for.cond:                                         ; preds = %for.body, %entry
  %x.0 = phi i64 [ 0, %entry ], [ %inc, %for.body ], !dbg !2387
  call void @llvm.dbg.value(metadata i64 %x.0, metadata !2379, metadata !DIExpression()), !dbg !2384
  %call1 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #7, !dbg !2388
  %conv2 = zext i32 %call1 to i64, !dbg !2388
  %cmp = icmp ult i64 %x.0, %conv2, !dbg !2389
  br i1 %cmp, label %for.body, label %for.end, !dbg !2390

for.body:                                         ; preds = %for.cond
  %conv4 = trunc i64 %x.0 to i32, !dbg !2391
  %call5 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %phi, i32 %conv4) #7, !dbg !2392
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call5, metadata !2380, metadata !DIExpression()), !dbg !2393
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %call5) #7, !dbg !2394
  %inc = add nuw nsw i64 %x.0, 1, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2379, metadata !DIExpression()), !dbg !2384
  br label %for.cond, !dbg !2396, !llvm.loop !2397

for.end:                                          ; preds = %for.cond
  %conv = zext i32 %call to i64, !dbg !2385
  %0 = icmp ult i64 %conv, 9, !dbg !2399
  %.conv = select i1 %0, i64 %conv, i64 9, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %.conv, metadata !2377, metadata !DIExpression()), !dbg !2384
  %sub = add nsw i64 %.conv, -2, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2377, metadata !DIExpression()), !dbg !2384
  %arrayidx = getelementptr inbounds [8 x %struct.VEC_gimple_gc*], [8 x %struct.VEC_gimple_gc*]* @free_phinodes, i64 0, i64 %sub, !dbg !2401
  %call8 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_gc_safe_push(%struct.VEC_gimple_gc** nonnull %arrayidx, %union.gimple_statement_d* %phi) #7, !dbg !2401
  %1 = load i64, i64* @free_phinode_count, align 8, !dbg !2402
  %inc9 = add i64 %1, 1, !dbg !2402
  store i64 %inc9, i64* @free_phinode_count, align 8, !dbg !2402
  ret void, !dbg !2403
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_capacity(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2404 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2411, metadata !DIExpression()), !dbg !2412
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !2413
  %0 = load i32, i32* %capacity, align 8, !dbg !2413
  ret i32 %0, !dbg !2414
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2415 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2417, metadata !DIExpression()), !dbg !2418
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !2419
  %0 = load i32, i32* %nargs, align 4, !dbg !2419
  ret i32 %0, !dbg !2420
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !2421 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !2425, metadata !DIExpression()), !dbg !2426
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !2427
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2427
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !2429
  br i1 %cmp, label %return, label %if.end, !dbg !2430

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !2431
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !2431
  %2 = load i64, i64* %1, align 8, !dbg !2431
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !2432
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !2433
  store i64 %2, i64* %3, align 8, !dbg !2433
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !2434
  %5 = load i64, i64* %4, align 8, !dbg !2434
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !2435
  %7 = load i64*, i64** %6, align 8, !dbg !2435
  store i64 %5, i64* %7, align 8, !dbg !2436
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2437
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !2438
  br label %return, !dbg !2439

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !2439
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d** @VEC_gimple_gc_safe_push(%struct.VEC_gimple_gc** %vec_, %union.gimple_statement_d* %obj_) unnamed_addr #0 !dbg !2440 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_gc** %vec_, metadata !2446, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %obj_, metadata !2447, metadata !DIExpression()), !dbg !2448
  %call = tail call fastcc i32 @VEC_gimple_gc_reserve(%struct.VEC_gimple_gc** %vec_, i32 1) #7, !dbg !2449
  %0 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** %vec_, align 8, !dbg !2449
  %tobool = icmp eq %struct.VEC_gimple_gc* %0, null, !dbg !2449
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2449

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_gimple_gc, %struct.VEC_gimple_gc* %0, i64 0, i32 0, !dbg !2449
  br label %cond.end, !dbg !2449

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2449
  %call1 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %cond, %union.gimple_statement_d* %obj_) #7, !dbg !2449
  ret %union.gimple_statement_d** %call1, !dbg !2449
}

; Function Attrs: nounwind uwtable
define dso_local void @reserve_phi_args_for_new_edge(%struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !2450 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2454, metadata !DIExpression()), !dbg !2471
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2472
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2472
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2472
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2472

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2472
  br label %cond.end, !dbg !2472

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2472
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %call, metadata !2455, metadata !DIExpression()), !dbg !2471
  %add = add i32 %call, 4, !dbg !2473
  %call3 = tail call fastcc i32 @ideal_phi_node_len(i32 %add) #7, !dbg !2474
  %conv4 = sext i32 %call3 to i64, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %conv4, metadata !2456, metadata !DIExpression()), !dbg !2471
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2475
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2475
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2476
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !2476
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb) #6, !dbg !2476
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !2476
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !2476
  %sub = add i32 %call, -1, !dbg !2477
  br label %for.cond, !dbg !2478

for.cond:                                         ; preds = %if.end, %cond.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2471
  %call5 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2479
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2480
  br i1 %tobool6, label %for.body, label %for.end, !dbg !2481

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2471
  %call7 = call fastcc %union.gimple_statement_d** @gsi_stmt_ptr(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2482
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %call7, metadata !2464, metadata !DIExpression()), !dbg !2477
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call7, align 8, !dbg !2483
  %call8 = call fastcc i32 @gimple_phi_capacity(%union.gimple_statement_d* %3) #7, !dbg !2484
  %cmp = icmp ugt i32 %call, %call8, !dbg !2485
  br i1 %cmp, label %if.then, label %if.end, !dbg !2486

if.then:                                          ; preds = %for.body
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call7, align 8, !dbg !2487
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %4, metadata !2468, metadata !DIExpression()), !dbg !2488
  call fastcc void @resize_phi_node(%union.gimple_statement_d** %call7, i64 %conv4) #7, !dbg !2489
  %5 = bitcast %union.gimple_statement_d** %call7 to i64*, !dbg !2490
  %6 = load i64, i64* %5, align 8, !dbg !2490
  %.cast = inttoptr i64 %6 to %union.gimple_statement_d*, !dbg !2491
  %call11 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %.cast) #7, !dbg !2491
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2491
  %7 = bitcast %union.tree_node** %def_stmt to i64*, !dbg !2492
  store i64 %6, i64* %7, align 8, !dbg !2492
  call void @release_phi_node(%union.gimple_statement_d* %4) #7, !dbg !2493
  br label %if.end, !dbg !2494

if.end:                                           ; preds = %if.then, %for.body
  %8 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call7, align 8, !dbg !2495
  %call13 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %8, i32 %sub) #7, !dbg !2495
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %call13, %union.tree_node* null) #7, !dbg !2495
  %9 = bitcast %union.gimple_statement_d** %call7 to %struct.gimple_statement_phi**, !dbg !2496
  %10 = load %struct.gimple_statement_phi*, %struct.gimple_statement_phi** %9, align 8, !dbg !2496
  %nargs = getelementptr inbounds %struct.gimple_statement_phi, %struct.gimple_statement_phi* %10, i64 0, i32 2, !dbg !2497
  %11 = load i32, i32* %nargs, align 4, !dbg !2498
  %inc = add i32 %11, 1, !dbg !2498
  store i32 %inc, i32* %nargs, align 4, !dbg !2498
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2457, metadata !DIExpression(DW_OP_deref)), !dbg !2471
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2499
  br label %for.cond, !dbg !2500, !llvm.loop !2501

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2503
  ret void, !dbg !2503
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !2504 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2510, metadata !DIExpression()), !dbg !2511
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2512
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2512

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2512
  %0 = load i32, i32* %num, align 8, !dbg !2512
  br label %cond.end, !dbg !2512

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2512
  ret i32 %cond, !dbg !2512
}

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2513 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2517, metadata !DIExpression()), !dbg !2518
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2519
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2519
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2520
  %conv1 = zext i1 %cmp to i8, !dbg !2521
  ret i8 %conv1, !dbg !2522
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d** @gsi_stmt_ptr(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2523 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2528, metadata !DIExpression()), !dbg !2529
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2530
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2530
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2531
  ret %union.gimple_statement_d** %stmt, !dbg !2532
}

; Function Attrs: nounwind uwtable
define internal fastcc void @resize_phi_node(%union.gimple_statement_d** %phi, i64 %len) unnamed_addr #5 !dbg !2533 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %phi, metadata !2537, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %len, metadata !2538, metadata !DIExpression()), !dbg !2551
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi, align 8, !dbg !2552
  %call = tail call fastcc i32 @gimple_phi_capacity(%union.gimple_statement_d* %0) #7, !dbg !2552
  %conv = zext i32 %call to i64, !dbg !2552
  %cmp = icmp ult i64 %conv, %len, !dbg !2552
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2552

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 278, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2552
  br label %cond.end, !dbg !2552

cond.end:                                         ; preds = %entry, %cond.true
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi, align 8, !dbg !2553
  %call2 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %1) #7, !dbg !2554
  %sub = add i32 %call2, -1, !dbg !2555
  %conv3 = zext i32 %sub to i64, !dbg !2556
  %mul = mul nuw nsw i64 %conv3, 48, !dbg !2557
  %add = add nuw nsw i64 %mul, 96, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %add, metadata !2539, metadata !DIExpression()), !dbg !2551
  %call4 = tail call fastcc %union.gimple_statement_d* @allocate_phi_node(i64 %len) #7, !dbg !2559
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call4, metadata !2541, metadata !DIExpression()), !dbg !2551
  %2 = bitcast %union.gimple_statement_d* %call4 to i8*, !dbg !2560
  %3 = bitcast %union.gimple_statement_d** %phi to i8**, !dbg !2561
  %4 = load i8*, i8** %3, align 8, !dbg !2561
  %call5 = tail call i8* @memcpy(i8* %2, i8* %4, i64 %add) #6, !dbg !2562
  call void @llvm.dbg.value(metadata i64 0, metadata !2540, metadata !DIExpression()), !dbg !2551
  br label %for.cond, !dbg !2563

for.cond:                                         ; preds = %for.body, %cond.end
  %i.0 = phi i64 [ 0, %cond.end ], [ %inc, %for.body ], !dbg !2564
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2540, metadata !DIExpression()), !dbg !2551
  %call6 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %call4) #7, !dbg !2565
  %conv7 = zext i32 %call6 to i64, !dbg !2565
  %cmp8 = icmp ult i64 %i.0, %conv7, !dbg !2566
  br i1 %cmp8, label %for.body, label %for.end, !dbg !2567

for.body:                                         ; preds = %for.cond
  %conv10 = trunc i64 %i.0 to i32, !dbg !2568
  %call11 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call4, i32 %conv10) #7, !dbg !2569
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call11, metadata !2542, metadata !DIExpression()), !dbg !2570
  %5 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi, align 8, !dbg !2571
  %call13 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %5, i32 %conv10) #7, !dbg !2572
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call13, metadata !2546, metadata !DIExpression()), !dbg !2570
  %call14 = tail call fastcc %union.tree_node** @gimple_phi_arg_def_ptr(%union.gimple_statement_d* %call4, i64 %i.0) #7, !dbg !2573
  %use = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %call11, i64 0, i32 3, !dbg !2574
  store %union.tree_node** %call14, %union.tree_node*** %use, align 8, !dbg !2575
  tail call fastcc void @relink_imm_use_stmt(%struct.ssa_use_operand_d* %call11, %struct.ssa_use_operand_d* %call13, %union.gimple_statement_d* %call4) #7, !dbg !2576
  %inc = add nuw nsw i64 %i.0, 1, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2540, metadata !DIExpression()), !dbg !2551
  br label %for.cond, !dbg !2578, !llvm.loop !2579

for.end:                                          ; preds = %for.cond
  %conv15 = trunc i64 %len to i32, !dbg !2581
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %call4, i64 0, i32 0, i32 1, !dbg !2582
  store i32 %conv15, i32* %capacity, align 8, !dbg !2583
  %call16 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %call4) #7, !dbg !2584
  %conv17 = zext i32 %call16 to i64, !dbg !2584
  call void @llvm.dbg.value(metadata i64 %conv17, metadata !2540, metadata !DIExpression()), !dbg !2551
  br label %for.cond18, !dbg !2585

for.cond18:                                       ; preds = %for.body21, %for.end
  %i.1 = phi i64 [ %conv17, %for.end ], [ %inc28, %for.body21 ], !dbg !2586
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !2540, metadata !DIExpression()), !dbg !2551
  %cmp19 = icmp ult i64 %i.1, %len, !dbg !2587
  br i1 %cmp19, label %for.body21, label %for.end29, !dbg !2588

for.body21:                                       ; preds = %for.cond18
  tail call fastcc void @gimple_phi_arg_set_location(%union.gimple_statement_d* %call4, i64 %i.1, i32 0) #7, !dbg !2589
  %conv23 = trunc i64 %i.1 to i32, !dbg !2590
  %call24 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call4, i32 %conv23) #7, !dbg !2591
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call24, metadata !2547, metadata !DIExpression()), !dbg !2592
  %call25 = tail call fastcc %union.tree_node** @gimple_phi_arg_def_ptr(%union.gimple_statement_d* %call4, i64 %i.1) #7, !dbg !2593
  %use26 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %call24, i64 0, i32 3, !dbg !2594
  store %union.tree_node** %call25, %union.tree_node*** %use26, align 8, !dbg !2595
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %call24, i64 0, i32 0, !dbg !2596
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2597
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %call24, i64 0, i32 1, !dbg !2598
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !2599
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %call24, i64 0, i32 2, i32 0, !dbg !2600
  store %union.gimple_statement_d* %call4, %union.gimple_statement_d** %stmt, align 8, !dbg !2601
  %inc28 = add i64 %i.1, 1, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %inc28, metadata !2540, metadata !DIExpression()), !dbg !2551
  br label %for.cond18, !dbg !2603, !llvm.loop !2604

for.end29:                                        ; preds = %for.cond18
  store %union.gimple_statement_d* %call4, %union.gimple_statement_d** %phi, align 8, !dbg !2606
  ret void, !dbg !2607
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2608 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2612, metadata !DIExpression()), !dbg !2613
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !2614
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !2614
  ret %union.tree_node* %0, !dbg !2615
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) unnamed_addr #0 !dbg !2616 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !2620, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !2621, metadata !DIExpression()), !dbg !2622
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use) #7, !dbg !2623
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !2624
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !2624
  store %union.tree_node* %val, %union.tree_node** %0, align 8, !dbg !2625
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) #7, !dbg !2626
  ret void, !dbg !2627
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2628 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2632, metadata !DIExpression()), !dbg !2633
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2634
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2634
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2635
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2635
  %2 = load i64, i64* %1, align 8, !dbg !2635
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2636
  store i64 %2, i64* %3, align 8, !dbg !2636
  ret void, !dbg !2637
}

; Function Attrs: nounwind uwtable
define dso_local void @add_phi_node_to_bb(%union.gimple_statement_d* %phi, %struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !2638 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !2642, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2643, metadata !DIExpression()), !dbg !2645
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2646
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2646
  %call = tail call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb) #7, !dbg !2647
  %cmp = icmp eq %struct.gimple_seq_d* %call, null, !dbg !2649
  br i1 %cmp, label %if.then, label %if.end, !dbg !2650

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.gimple_seq_d* @gimple_seq_alloc() #6, !dbg !2651
  tail call fastcc void @set_phi_nodes(%struct.basic_block_def* %bb, %struct.gimple_seq_d* %call1) #7, !dbg !2652
  br label %if.end, !dbg !2652

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2653
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2653
  %call2 = tail call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb) #7, !dbg !2654
  call fastcc void @gsi_last(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.gimple_seq_d* %call2) #7, !dbg !2653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2653
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2653
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2644, metadata !DIExpression(DW_OP_deref)), !dbg !2645
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %phi, i32 0) #6, !dbg !2655
  call void @gimple_set_bb(%union.gimple_statement_d* %phi, %struct.basic_block_def* %bb) #6, !dbg !2656
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2657
  ret void, !dbg !2657
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2658 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2665, metadata !DIExpression()), !dbg !2666
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !2667
  %0 = load i32, i32* %flags, align 8, !dbg !2667
  %and = and i32 %0, 512, !dbg !2667
  %tobool = icmp eq i32 %and, 0, !dbg !2667
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2667

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 510, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2667
  br label %cond.end, !dbg !2667

cond.end:                                         ; preds = %entry, %cond.true
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !2668
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !2668
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !2670
  br i1 %tobool1, label %return, label %if.end, !dbg !2671

if.end:                                           ; preds = %cond.end
  %phi_nodes = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 1, !dbg !2672
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %phi_nodes, align 8, !dbg !2672
  br label %return, !dbg !2673

return:                                           ; preds = %cond.end, %if.end
  %retval.0 = phi %struct.gimple_seq_d* [ %2, %if.end ], [ null, %cond.end ], !dbg !2666
  ret %struct.gimple_seq_d* %retval.0, !dbg !2674
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_phi_nodes(%struct.basic_block_def* %bb, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !2675 {
entry:
  %i = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2679, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !2680, metadata !DIExpression()), !dbg !2682
  %0 = bitcast %struct.gimple_stmt_iterator* %i to i8*, !dbg !2683
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2683
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !2684
  %1 = load i32, i32* %flags, align 8, !dbg !2684
  %and = and i32 %1, 512, !dbg !2684
  %tobool = icmp eq i32 %and, 0, !dbg !2684
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2684

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 523, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2684
  br label %cond.end, !dbg !2684

cond.end:                                         ; preds = %entry, %cond.true
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !2685
  %2 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !2685
  %phi_nodes = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %2, i64 0, i32 1, !dbg !2686
  store %struct.gimple_seq_d* %seq, %struct.gimple_seq_d** %phi_nodes, align 8, !dbg !2687
  %tobool1 = icmp eq %struct.gimple_seq_d* %seq, null, !dbg !2688
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2690

if.then:                                          ; preds = %cond.end
  %3 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2691
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2691
  call fastcc void @gsi_start(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.gimple_seq_d* nonnull %seq) #7, !dbg !2691
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %3, i64 24, i1 false), !dbg !2691
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2691
  br label %for.cond, !dbg !2693

for.cond:                                         ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2681, metadata !DIExpression(DW_OP_deref)), !dbg !2682
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !2694
  %tobool2 = icmp eq i8 %call, 0, !dbg !2696
  br i1 %tobool2, label %for.body, label %if.end.loopexit, !dbg !2697

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2681, metadata !DIExpression(DW_OP_deref)), !dbg !2682
  %call3 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !2698
  call void @gimple_set_bb(%union.gimple_statement_d* %call3, %struct.basic_block_def* %bb) #6, !dbg !2699
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2681, metadata !DIExpression(DW_OP_deref)), !dbg !2682
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %i) #7, !dbg !2700
  br label %for.cond, !dbg !2701, !llvm.loop !2702

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !2704

if.end:                                           ; preds = %if.end.loopexit, %cond.end
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2704
  ret void, !dbg !2704
}

declare dso_local %struct.gimple_seq_d* @gimple_seq_alloc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !2705 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !2709, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2710, metadata !DIExpression()), !dbg !2712
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %seq) #7, !dbg !2713
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2714
  store %struct.gimple_seq_node_d* %call, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2715
  %seq1 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2716
  store %struct.gimple_seq_d* %seq, %struct.gimple_seq_d** %seq1, align 8, !dbg !2717
  %tobool = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !2718
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !2719

land.lhs.true:                                    ; preds = %entry
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call, i64 0, i32 0, !dbg !2720
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2720
  %tobool4 = icmp eq %union.gimple_statement_d* %0, null, !dbg !2721
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !2722

cond.true:                                        ; preds = %land.lhs.true
  %call7 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* nonnull %0) #7, !dbg !2723
  br label %cond.end, !dbg !2722

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.basic_block_def* [ %call7, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !2722
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2724
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %bb, align 8, !dbg !2725
  ret void, !dbg !2726
}

declare dso_local void @gsi_insert_after(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local void @gimple_set_bb(%union.gimple_statement_d*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %union.gimple_statement_d* @create_phi_node(%union.tree_node* %var, %struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !2727 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2731, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2732, metadata !DIExpression()), !dbg !2734
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2735
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2735
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2735
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2735

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2735
  br label %cond.end, !dbg !2735

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2735
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2735
  %call2 = tail call %union.gimple_statement_d* @make_phi_node(%union.tree_node* %var, i32 %call) #7, !dbg !2736
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !2733, metadata !DIExpression()), !dbg !2734
  tail call void @add_phi_node_to_bb(%union.gimple_statement_d* %call2, %struct.basic_block_def* %bb) #7, !dbg !2737
  ret %union.gimple_statement_d* %call2, !dbg !2738
}

; Function Attrs: nounwind uwtable
define dso_local void @add_phi_arg(%union.gimple_statement_d* %phi, %union.tree_node* %def, %struct.edge_def* %e, i32 %locus) local_unnamed_addr #5 !dbg !2739 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !2743, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !2744, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2745, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 %locus, metadata !2746, metadata !DIExpression()), !dbg !2748
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !2749
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2749
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2747, metadata !DIExpression()), !dbg !2748
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %phi) #7, !dbg !2750
  %cmp = icmp eq %struct.basic_block_def* %0, %call, !dbg !2750
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2750

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 395, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2750
  br label %cond.end, !dbg !2750

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #7, !dbg !2751
  %call2 = tail call fastcc i32 @gimple_phi_capacity(%union.gimple_statement_d* %phi) #7, !dbg !2751
  %cmp3 = icmp ugt i32 %call1, %call2, !dbg !2751
  br i1 %cmp3, label %cond.true4, label %cond.end6, !dbg !2751

cond.true4:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 399, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2751
  br label %cond.end6, !dbg !2751

cond.end6:                                        ; preds = %cond.end, %cond.true4
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 6, !dbg !2752
  %1 = load i32, i32* %dest_idx, align 4, !dbg !2752
  %call8 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #7, !dbg !2752
  %cmp9 = icmp ult i32 %1, %call8, !dbg !2752
  br i1 %cmp9, label %cond.end12, label %cond.true10, !dbg !2752

cond.true10:                                      ; preds = %cond.end6
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 403, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2752
  br label %cond.end12, !dbg !2752

cond.end12:                                       ; preds = %cond.end6, %cond.true10
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 7, !dbg !2753
  %2 = load i32, i32* %flags, align 8, !dbg !2753
  %and = and i32 %2, 2, !dbg !2755
  %tobool = icmp eq i32 %and, 0, !dbg !2755
  br i1 %tobool, label %if.end, label %if.then, !dbg !2756

if.then:                                          ; preds = %cond.end12
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2757
  %bf.load = load i64, i64* %3, align 8, !dbg !2759
  %bf.set = or i64 %bf.load, 4194304, !dbg !2759
  store i64 %bf.set, i64* %3, align 8, !dbg !2759
  %call14 = tail call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %phi) #7, !dbg !2760
  %call15 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call14) #7, !dbg !2760
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2760
  %bf.load17 = load i64, i64* %4, align 8, !dbg !2761
  %bf.set19 = or i64 %bf.load17, 4194304, !dbg !2761
  store i64 %bf.set19, i64* %4, align 8, !dbg !2761
  br label %if.end, !dbg !2762

if.end:                                           ; preds = %cond.end12, %if.then
  %5 = load i32, i32* %dest_idx, align 4, !dbg !2763
  %call21 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %phi, i32 %5) #7, !dbg !2763
  tail call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %call21, %union.tree_node* %def) #7, !dbg !2763
  %6 = load i32, i32* %dest_idx, align 4, !dbg !2764
  %conv = zext i32 %6 to i64, !dbg !2765
  tail call fastcc void @gimple_phi_arg_set_location(%union.gimple_statement_d* %phi, i64 %conv, i32 %locus) #7, !dbg !2766
  ret void, !dbg !2767
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2768 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2772, metadata !DIExpression()), !dbg !2773
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !2774
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2774
  ret %struct.basic_block_def* %0, !dbg !2775
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !2776 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !2781, metadata !DIExpression()), !dbg !2782
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !2783
  ret %union.tree_node* %0, !dbg !2784
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2785 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2789, metadata !DIExpression()), !dbg !2790
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !2791
  ret %union.tree_node** %result, !dbg !2792
}

; Function Attrs: nounwind uwtable
define dso_local void @remove_phi_args(%struct.edge_def* %e) local_unnamed_addr #5 !dbg !2793 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2797, metadata !DIExpression()), !dbg !2799
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2800
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2800
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2801
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2801
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !2803
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2803
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %2) #6, !dbg !2801
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2801
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2801
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 6, !dbg !2804
  br label %for.cond, !dbg !2806

for.cond:                                         ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2798, metadata !DIExpression(DW_OP_deref)), !dbg !2799
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2807
  %tobool = icmp eq i8 %call, 0, !dbg !2808
  br i1 %tobool, label %for.body, label %for.end, !dbg !2809

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2798, metadata !DIExpression(DW_OP_deref)), !dbg !2799
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2810
  %3 = load i32, i32* %dest_idx, align 4, !dbg !2811
  call fastcc void @remove_phi_arg_num(%union.gimple_statement_d* %call1, i32 %3) #7, !dbg !2812
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2798, metadata !DIExpression(DW_OP_deref)), !dbg !2799
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2813
  br label %for.cond, !dbg !2814, !llvm.loop !2815

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2817
  ret void, !dbg !2817
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_phi_arg_num(%union.gimple_statement_d* %phi, i32 %i) unnamed_addr #5 !dbg !2818 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !2822, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 %i, metadata !2823, metadata !DIExpression()), !dbg !2829
  %call = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #7, !dbg !2830
  call void @llvm.dbg.value(metadata i32 %call, metadata !2824, metadata !DIExpression()), !dbg !2829
  %cmp = icmp sgt i32 %call, %i, !dbg !2831
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2831

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 428, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2831
  br label %cond.end, !dbg !2831

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %phi, i32 %i) #7, !dbg !2832
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %call1) #7, !dbg !2833
  %sub = add nsw i32 %call, -1, !dbg !2834
  %cmp2 = icmp eq i32 %sub, %i, !dbg !2835
  br i1 %cmp2, label %if.end, label %if.then, !dbg !2836

if.then:                                          ; preds = %cond.end
  %call4 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %phi, i32 %sub) #7, !dbg !2837
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call4, metadata !2825, metadata !DIExpression()), !dbg !2838
  %call5 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %phi, i32 %i) #7, !dbg !2839
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call5, metadata !2828, metadata !DIExpression()), !dbg !2838
  %use = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %call4, i64 0, i32 3, !dbg !2840
  %0 = bitcast %union.tree_node*** %use to i64**, !dbg !2840
  %1 = load i64*, i64** %0, align 8, !dbg !2840
  %2 = load i64, i64* %1, align 8, !dbg !2841
  %use6 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %call5, i64 0, i32 3, !dbg !2842
  %3 = bitcast %union.tree_node*** %use6 to i64**, !dbg !2842
  %4 = load i64*, i64** %3, align 8, !dbg !2842
  store i64 %2, i64* %4, align 8, !dbg !2843
  tail call fastcc void @relink_imm_use(%struct.ssa_use_operand_d* %call5, %struct.ssa_use_operand_d* %call4) #7, !dbg !2844
  %conv = sext i32 %i to i64, !dbg !2845
  %conv8 = sext i32 %sub to i64, !dbg !2846
  %call9 = tail call fastcc i32 @gimple_phi_arg_location(%union.gimple_statement_d* %phi, i64 %conv8) #7, !dbg !2847
  tail call fastcc void @gimple_phi_arg_set_location(%union.gimple_statement_d* %phi, i64 %conv, i32 %call9) #7, !dbg !2848
  br label %if.end, !dbg !2849

if.end:                                           ; preds = %cond.end, %if.then
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %phi, i64 0, i32 0, i32 2, !dbg !2850
  %5 = load i32, i32* %nargs, align 4, !dbg !2851
  %dec = add i32 %5, -1, !dbg !2851
  store i32 %dec, i32* %nargs, align 4, !dbg !2851
  ret void, !dbg !2852
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2853 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2857, metadata !DIExpression()), !dbg !2858
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2859
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2859
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2860
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2860
  ret %union.gimple_statement_d* %1, !dbg !2861
}

; Function Attrs: nounwind uwtable
define dso_local void @remove_phi_node(%struct.gimple_stmt_iterator* %gsi, i8 zeroext %release_lhs_p) local_unnamed_addr #5 !dbg !2862 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8 %release_lhs_p, metadata !2867, metadata !DIExpression()), !dbg !2869
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2870
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2868, metadata !DIExpression()), !dbg !2869
  %tobool = icmp eq i8 %release_lhs_p, 0, !dbg !2871
  br i1 %tobool, label %if.end, label %if.then, !dbg !2873

if.then:                                          ; preds = %entry
  tail call void @insert_debug_temps_for_defs(%struct.gimple_stmt_iterator* %gsi) #6, !dbg !2874
  br label %if.end, !dbg !2874

if.end:                                           ; preds = %entry, %if.then
  tail call void @gsi_remove(%struct.gimple_stmt_iterator* %gsi, i8 zeroext 0) #6, !dbg !2875
  tail call void @release_phi_node(%union.gimple_statement_d* %call) #7, !dbg !2876
  br i1 %tobool, label %if.end4, label %if.then2, !dbg !2877

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call) #7, !dbg !2878
  tail call void @release_ssa_name(%union.tree_node* %call3) #6, !dbg !2880
  br label %if.end4, !dbg !2880

if.end4:                                          ; preds = %if.end, %if.then2
  ret void, !dbg !2881
}

declare dso_local void @insert_debug_temps_for_defs(%struct.gimple_stmt_iterator*) local_unnamed_addr #2

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @release_ssa_name(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @remove_phi_nodes(%struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !2882 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2884, metadata !DIExpression()), !dbg !2886
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2887
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2887
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2888
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2888
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb) #6, !dbg !2888
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2888
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2888
  br label %for.cond, !dbg !2890

for.cond:                                         ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2885, metadata !DIExpression(DW_OP_deref)), !dbg !2886
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2891
  %tobool = icmp eq i8 %call, 0, !dbg !2893
  br i1 %tobool, label %for.body, label %for.end, !dbg !2894

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2885, metadata !DIExpression(DW_OP_deref)), !dbg !2886
  call void @remove_phi_node(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #7, !dbg !2895
  br label %for.cond, !dbg !2896, !llvm.loop !2897

for.end:                                          ; preds = %for.cond
  call fastcc void @set_phi_nodes(%struct.basic_block_def* %bb, %struct.gimple_seq_d* null) #7, !dbg !2899
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2900
  ret void, !dbg !2900
}

declare dso_local i32 @ceil_log2(i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @VEC_gimple_base_index(%struct.VEC_gimple_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2901 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !2907, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i32 0, metadata !2908, metadata !DIExpression()), !dbg !2909
  br label %land.end, !dbg !2910

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 0, !dbg !2910
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %arrayidx, align 8, !dbg !2910
  ret %union.gimple_statement_d* %0, !dbg !2910
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @VEC_gimple_base_pop(%struct.VEC_gimple_base* %vec_) unnamed_addr #0 !dbg !2911 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !2916, metadata !DIExpression()), !dbg !2918
  %num1 = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !2919
  %0 = load i32, i32* %num1, align 8, !dbg !2919
  %dec = add i32 %0, -1, !dbg !2919
  store i32 %dec, i32* %num1, align 8, !dbg !2919
  %idxprom = zext i32 %dec to i64, !dbg !2919
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2919
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %arrayidx, align 8, !dbg !2919
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !2917, metadata !DIExpression()), !dbg !2918
  ret %union.gimple_statement_d* %1, !dbg !2919
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %vec_) unnamed_addr #0 !dbg !2920 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !2924, metadata !DIExpression()), !dbg !2925
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !2926
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2926

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !2926
  %0 = load i32, i32* %num, align 8, !dbg !2926
  br label %cond.end, !dbg !2926

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2926
  ret i32 %cond, !dbg !2926
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_gimple_gc_free(%struct.VEC_gimple_gc** %vec_) unnamed_addr #0 !dbg !2927 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_gc** %vec_, metadata !2931, metadata !DIExpression()), !dbg !2932
  %0 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** %vec_, align 8, !dbg !2933
  %tobool = icmp eq %struct.VEC_gimple_gc* %0, null, !dbg !2933
  br i1 %tobool, label %if.end, label %if.then, !dbg !2935

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_gimple_gc* %0 to i8*, !dbg !2935
  tail call void @ggc_free(i8* nonnull %1) #6, !dbg !2933
  br label %if.end, !dbg !2933

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_gimple_gc* null, %struct.VEC_gimple_gc** %vec_, align 8, !dbg !2935
  ret void, !dbg !2935
}

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #2

declare dso_local void @ggc_free(i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @make_ssa_name_fn(%struct.function*, %union.tree_node*, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !2936 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2941, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i32 %index, metadata !2942, metadata !DIExpression()), !dbg !2943
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !2944
  %0 = load i32, i32* %capacity, align 8, !dbg !2944
  %cmp = icmp ult i32 %0, %index, !dbg !2944
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2944

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2944
  br label %cond.end, !dbg !2944

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !2945
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !2945
  ret %struct.phi_arg_d* %arrayidx, !dbg !2946
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_gc_reserve(%struct.VEC_gimple_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2947 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_gc** %vec_, metadata !2951, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i32 1, metadata !2952, metadata !DIExpression()), !dbg !2954
  %0 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** %vec_, align 8, !dbg !2955
  %tobool = icmp eq %struct.VEC_gimple_gc* %0, null, !dbg !2955
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2955

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_gimple_gc, %struct.VEC_gimple_gc* %0, i64 0, i32 0, !dbg !2955
  br label %cond.end, !dbg !2955

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2955
  %call = tail call fastcc i32 @VEC_gimple_base_space(%struct.VEC_gimple_base* %cond, i32 1) #7, !dbg !2955
  %tobool1 = icmp eq i32 %call, 0, !dbg !2955
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !2955
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !2953, metadata !DIExpression()), !dbg !2954
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2955

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_gimple_gc** %vec_ to i8**, !dbg !2956
  %2 = load i8*, i8** %1, align 8, !dbg !2956
  %call3 = tail call i8* @vec_gc_p_reserve(i8* %2, i32 1) #6, !dbg !2956
  store i8* %call3, i8** %1, align 8, !dbg !2956
  br label %if.end, !dbg !2956

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !2955
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %vec_, %union.gimple_statement_d* %obj_) unnamed_addr #0 !dbg !2958 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !2962, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %obj_, metadata !2963, metadata !DIExpression()), !dbg !2965
  %num1 = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !2966
  %0 = load i32, i32* %num1, align 8, !dbg !2966
  %inc = add i32 %0, 1, !dbg !2966
  store i32 %inc, i32* %num1, align 8, !dbg !2966
  %idxprom = zext i32 %0 to i64, !dbg !2966
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2966
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %arrayidx, metadata !2964, metadata !DIExpression()), !dbg !2965
  store %union.gimple_statement_d* %obj_, %union.gimple_statement_d** %arrayidx, align 8, !dbg !2966
  ret %union.gimple_statement_d** %arrayidx, !dbg !2966
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_space(%struct.VEC_gimple_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2967 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !2971, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i32 1, metadata !2972, metadata !DIExpression()), !dbg !2973
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !2974
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2974

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 1, !dbg !2974
  %0 = load i32, i32* %alloc, align 4, !dbg !2974
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !2974
  %1 = load i32, i32* %num, align 8, !dbg !2974
  %cmp1 = icmp ne i32 %0, %1, !dbg !2974
  %phitmp = zext i1 %cmp1 to i32, !dbg !2974
  br label %cond.end, !dbg !2974

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2974

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !2974
}

declare dso_local i8* @vec_gc_p_reserve(i8*, i32) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @relink_imm_use_stmt(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %old, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2975 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !2979, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %old, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2981, metadata !DIExpression()), !dbg !2982
  %tobool = icmp eq %union.gimple_statement_d* %stmt, null, !dbg !2983
  br i1 %tobool, label %if.else, label %if.then, !dbg !2985

if.then:                                          ; preds = %entry
  tail call fastcc void @relink_imm_use(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %old) #7, !dbg !2986
  br label %if.end, !dbg !2986

if.else:                                          ; preds = %entry
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* null) #7, !dbg !2987
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %stmt1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 2, i32 0, !dbg !2988
  store %union.gimple_statement_d* %stmt, %union.gimple_statement_d** %stmt1, align 8, !dbg !2989
  ret void, !dbg !2990
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @relink_imm_use(%struct.ssa_use_operand_d* %node, %struct.ssa_use_operand_d* %old) unnamed_addr #0 !dbg !2991 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %node, metadata !2995, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %old, metadata !2996, metadata !DIExpression()), !dbg !2997
  %use = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %old, i64 0, i32 3, !dbg !2998
  %0 = load %union.tree_node**, %union.tree_node*** %use, align 8, !dbg !2998
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2998
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %node, i64 0, i32 3, !dbg !2998
  %2 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !2998
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !2998
  %cmp = icmp eq %union.tree_node* %1, %3, !dbg !2998
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2998

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 257, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2998
  br label %cond.end, !dbg !2998

cond.end:                                         ; preds = %entry, %cond.true
  %4 = bitcast %struct.ssa_use_operand_d* %old to i64*, !dbg !2999
  %5 = load i64, i64* %4, align 8, !dbg !2999
  %6 = bitcast %struct.ssa_use_operand_d* %node to i64*, !dbg !3000
  store i64 %5, i64* %6, align 8, !dbg !3000
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %old, i64 0, i32 1, !dbg !3001
  %7 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3001
  %8 = load i64, i64* %7, align 8, !dbg !3001
  %next3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %node, i64 0, i32 1, !dbg !3002
  %9 = bitcast %struct.ssa_use_operand_d** %next3 to i64*, !dbg !3003
  store i64 %8, i64* %9, align 8, !dbg !3003
  %prev4 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %old, i64 0, i32 0, !dbg !3004
  %10 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev4, align 8, !dbg !3004
  %tobool = icmp eq %struct.ssa_use_operand_d* %10, null, !dbg !3006
  br i1 %tobool, label %if.end, label %if.then, !dbg !3007

if.then:                                          ; preds = %cond.end
  %next6 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %10, i64 0, i32 1, !dbg !3008
  store %struct.ssa_use_operand_d* %node, %struct.ssa_use_operand_d** %next6, align 8, !dbg !3010
  %11 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !3011
  %prev8 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %11, i64 0, i32 0, !dbg !3012
  store %struct.ssa_use_operand_d* %node, %struct.ssa_use_operand_d** %prev8, align 8, !dbg !3013
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev4, align 8, !dbg !3014
  br label %if.end, !dbg !3015

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !3016
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* %def) unnamed_addr #0 !dbg !3017 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3021, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !3022, metadata !DIExpression()), !dbg !3024
  %tobool = icmp eq %union.tree_node* %def, null, !dbg !3025
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3027

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3028
  %bf.load = load i64, i64* %0, align 8, !dbg !3028
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3029
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3029
  br i1 %cmp, label %if.else, label %if.then, !dbg !3030

if.then:                                          ; preds = %lor.lhs.false, %entry
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3031
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3032
  br label %if.end, !dbg !3033

if.else:                                          ; preds = %lor.lhs.false
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3034
  %1 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !3034
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %1, metadata !3023, metadata !DIExpression()), !dbg !3024
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* nonnull %1) #7, !dbg !3036
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3037
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !3038 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3040, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !3041, metadata !DIExpression()), !dbg !3042
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3043
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3044
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !3045
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3045
  %1 = load i64, i64* %0, align 8, !dbg !3045
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !3046
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !3047
  store i64 %1, i64* %2, align 8, !dbg !3047
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !3048
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !3049
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !3050
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !3051
  ret void, !dbg !3052
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !3053 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !3055, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3056, metadata !DIExpression()), !dbg !3058
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %seq) #7, !dbg !3059
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3060
  store %struct.gimple_seq_node_d* %call, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3061
  %seq1 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3062
  store %struct.gimple_seq_d* %seq, %struct.gimple_seq_d** %seq1, align 8, !dbg !3063
  %tobool = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !3064
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !3065

land.lhs.true:                                    ; preds = %entry
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call, i64 0, i32 0, !dbg !3066
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3066
  %tobool4 = icmp eq %union.gimple_statement_d* %0, null, !dbg !3067
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !3068

cond.true:                                        ; preds = %land.lhs.true
  %call7 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* nonnull %0) #7, !dbg !3069
  br label %cond.end, !dbg !3068

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.basic_block_def* [ %call7, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3068
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3070
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %bb, align 8, !dbg !3071
  ret void, !dbg !3072
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3073 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3080, metadata !DIExpression()), !dbg !3081
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3082
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3082

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3083
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3083
  br label %cond.end, !dbg !3082

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3082
  ret %struct.gimple_seq_node_d* %cond, !dbg !3084
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3085 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3087, metadata !DIExpression()), !dbg !3088
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3089
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3089

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !3090
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !3090
  br label %cond.end, !dbg !3089

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3089
  ret %struct.gimple_seq_node_d* %cond, !dbg !3091
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_arg_location(%union.gimple_statement_d* %gs, i64 %i) unnamed_addr #0 !dbg !3092 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3096, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %i, metadata !3097, metadata !DIExpression()), !dbg !3098
  %conv = trunc i64 %i to i32, !dbg !3099
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #7, !dbg !3100
  %locus = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 2, !dbg !3101
  %0 = load i32, i32* %locus, align 8, !dbg !3101
  ret i32 %0, !dbg !3102
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1703, !1704, !1705}
!llvm.ident = !{!1706}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "free_phinodes", scope: !2, file: !3, line: 80, type: !1700, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !377, globals: !1683, nameTableKind: None)
!3 = !DIFile(filename: "tree-phinodes.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !150, !169, !176, !183}
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
!377 = !{!378, !379, !380, !381, !384, !385, !183, !387, !389, !712, !1194, !7}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!380 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !388, line: 44, baseType: !7)
!388 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !390, line: 56, baseType: !391)
!390 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !151, line: 3371, size: 1792, elements: !393)
!393 = !{!394, !427, !433, !446, !465, !476, !481, !490, !496, !509, !519, !557, !1016, !1044, !1061, !1062, !1067, !1076, !1082, !1087, !1091, !1095, !1334, !1381, !1387, !1393, !1400, !1413, !1427, !1444, !1456, !1478, !1493, !1665}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !392, file: !151, line: 3372, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !151, line: 360, size: 64, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !395, file: !151, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !395, file: !151, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !395, file: !151, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !395, file: !151, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !395, file: !151, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !395, file: !151, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !395, file: !151, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !395, file: !151, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !395, file: !151, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !395, file: !151, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !395, file: !151, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !395, file: !151, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !395, file: !151, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !395, file: !151, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !395, file: !151, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !395, file: !151, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !395, file: !151, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !395, file: !151, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !395, file: !151, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !395, file: !151, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !395, file: !151, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !395, file: !151, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !395, file: !151, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !395, file: !151, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !395, file: !151, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !395, file: !151, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !395, file: !151, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !395, file: !151, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !395, file: !151, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !395, file: !151, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !392, file: !151, line: 3373, baseType: !428, size: 192)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !151, line: 402, size: 192, elements: !429)
!429 = !{!430, !431, !432}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !428, file: !151, line: 403, baseType: !395, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !428, file: !151, line: 404, baseType: !389, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !428, file: !151, line: 405, baseType: !389, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !392, file: !151, line: 3374, baseType: !434, size: 320)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !151, line: 1384, size: 320, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !434, file: !151, line: 1385, baseType: !428, size: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !434, file: !151, line: 1386, baseType: !438, size: 128, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !439, line: 58, baseType: !440)
!439 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 54, size: 128, elements: !441)
!441 = !{!442, !444}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !440, file: !439, line: 56, baseType: !443, size: 64)
!443 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !440, file: !439, line: 57, baseType: !445, size: 64, offset: 64)
!445 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !392, file: !151, line: 3375, baseType: !447, size: 256)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !151, line: 1397, size: 256, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !447, file: !151, line: 1398, baseType: !428, size: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !447, file: !151, line: 1399, baseType: !451, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !453, line: 52, size: 256, elements: !454)
!453 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!454 = !{!455, !456, !457, !458, !459, !460, !461}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !452, file: !453, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !452, file: !453, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !452, file: !453, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !452, file: !453, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !452, file: !453, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !452, file: !453, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !452, file: !453, line: 62, baseType: !462, size: 192, offset: 64)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 192, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 3)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !392, file: !151, line: 3376, baseType: !466, size: 256)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !151, line: 1408, size: 256, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !466, file: !151, line: 1409, baseType: !428, size: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !466, file: !151, line: 1410, baseType: !470, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !472, line: 27, size: 192, elements: !473)
!472 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !471, file: !472, line: 29, baseType: !438, size: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !471, file: !472, line: 30, baseType: !5, size: 32, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !392, file: !151, line: 3377, baseType: !477, size: 256)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !151, line: 1437, size: 256, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !477, file: !151, line: 1438, baseType: !428, size: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !477, file: !151, line: 1439, baseType: !389, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !392, file: !151, line: 3378, baseType: !482, size: 256)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !151, line: 1418, size: 256, elements: !483)
!483 = !{!484, !485, !486}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !482, file: !151, line: 1419, baseType: !428, size: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !482, file: !151, line: 1420, baseType: !380, size: 32, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !482, file: !151, line: 1421, baseType: !487, size: 8, offset: 224)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 8, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 1)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !392, file: !151, line: 3379, baseType: !491, size: 320)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !151, line: 1428, size: 320, elements: !492)
!492 = !{!493, !494, !495}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !491, file: !151, line: 1429, baseType: !428, size: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !491, file: !151, line: 1430, baseType: !389, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !491, file: !151, line: 1431, baseType: !389, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !392, file: !151, line: 3380, baseType: !497, size: 320)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !151, line: 1460, size: 320, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !497, file: !151, line: 1461, baseType: !428, size: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !497, file: !151, line: 1462, baseType: !501, size: 128, offset: 192)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !502, line: 31, size: 128, elements: !503)
!502 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!503 = !{!504, !507, !508}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !501, file: !502, line: 32, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !501, file: !502, line: 33, baseType: !7, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !501, file: !502, line: 34, baseType: !7, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !392, file: !151, line: 3381, baseType: !510, size: 384)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !151, line: 2507, size: 384, elements: !511)
!511 = !{!512, !513, !516, !517, !518}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !510, file: !151, line: 2508, baseType: !428, size: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !510, file: !151, line: 2509, baseType: !514, size: 32, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !515, line: 58, baseType: !387)
!515 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!516 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !510, file: !151, line: 2510, baseType: !7, size: 32, offset: 224)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !510, file: !151, line: 2511, baseType: !389, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !510, file: !151, line: 2512, baseType: !389, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !392, file: !151, line: 3382, baseType: !520, size: 896)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !151, line: 2652, size: 896, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !520, file: !151, line: 2653, baseType: !510, size: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !520, file: !151, line: 2654, baseType: !389, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !520, file: !151, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !520, file: !151, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !520, file: !151, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !520, file: !151, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !520, file: !151, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !520, file: !151, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !520, file: !151, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !520, file: !151, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !520, file: !151, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !520, file: !151, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !520, file: !151, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !520, file: !151, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !520, file: !151, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !520, file: !151, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !520, file: !151, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !520, file: !151, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !520, file: !151, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !520, file: !151, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !520, file: !151, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !520, file: !151, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !520, file: !151, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !520, file: !151, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !520, file: !151, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !520, file: !151, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !520, file: !151, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !520, file: !151, line: 2703, baseType: !7, size: 32, offset: 512)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !520, file: !151, line: 2705, baseType: !389, size: 64, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !520, file: !151, line: 2706, baseType: !389, size: 64, offset: 640)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !520, file: !151, line: 2707, baseType: !389, size: 64, offset: 704)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !520, file: !151, line: 2708, baseType: !389, size: 64, offset: 768)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !520, file: !151, line: 2711, baseType: !555, size: 64, offset: 832)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !151, line: 2711, flags: DIFlagFwdDecl)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !392, file: !151, line: 3383, baseType: !558, size: 960)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !151, line: 2756, size: 960, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !558, file: !151, line: 2757, baseType: !520, size: 896)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !558, file: !151, line: 2758, baseType: !562, size: 64, offset: 896)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !390, line: 50, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !565, line: 240, size: 384, elements: !566)
!565 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !564, file: !565, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !564, file: !565, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !564, file: !565, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !564, file: !565, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !564, file: !565, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !564, file: !565, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !564, file: !565, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !564, file: !565, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !564, file: !565, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !564, file: !565, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !564, file: !565, line: 321, baseType: !578, size: 320, offset: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !565, line: 315, size: 320, elements: !579)
!579 = !{!580, !983, !985, !1014, !1015}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !578, file: !565, line: 316, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 64, elements: !488)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !565, line: 183, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !565, line: 166, size: 64, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !597, !598, !610, !613, !673, !674, !960, !973, !980}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !583, file: !565, line: 168, baseType: !380, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !583, file: !565, line: 169, baseType: !7, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !583, file: !565, line: 170, baseType: !385, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !583, file: !565, line: 171, baseType: !562, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !583, file: !565, line: 172, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !390, line: 53, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !565, line: 359, size: 128, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !592, file: !565, line: 360, baseType: !380, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !592, file: !565, line: 361, baseType: !596, size: 64, offset: 64)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 64, elements: !488)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !583, file: !565, line: 173, baseType: !5, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !583, file: !565, line: 174, baseType: !599, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !565, line: 133, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 115, size: 32, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !600, file: !565, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !600, file: !565, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !600, file: !565, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !600, file: !565, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !600, file: !565, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !600, file: !565, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !600, file: !565, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !600, file: !565, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !583, file: !565, line: 175, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !565, line: 175, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !583, file: !565, line: 176, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !616, line: 75, size: 256, elements: !617)
!616 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!617 = !{!618, !632, !633, !634}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !615, file: !616, line: 76, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !616, line: 68, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !616, line: 63, size: 320, elements: !622)
!622 = !{!623, !625, !626, !627}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !621, file: !616, line: 64, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !621, file: !616, line: 65, baseType: !624, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !621, file: !616, line: 66, baseType: !7, size: 32, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !621, file: !616, line: 67, baseType: !628, size: 128, offset: 192)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 128, elements: !630)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !616, line: 29, baseType: !443)
!630 = !{!631}
!631 = !DISubrange(count: 2)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !615, file: !616, line: 77, baseType: !619, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !615, file: !616, line: 78, baseType: !7, size: 32, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !615, file: !616, line: 79, baseType: !635, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !616, line: 49, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !616, line: 45, size: 832, elements: !638)
!638 = !{!639, !640, !641}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !637, file: !616, line: 46, baseType: !624, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !637, file: !616, line: 47, baseType: !614, size: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !637, file: !616, line: 48, baseType: !642, size: 704, offset: 128)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !643, line: 164, size: 704, elements: !644)
!643 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!644 = !{!645, !646, !656, !657, !658, !659, !660, !661, !665, !669, !670, !671, !672}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !642, file: !643, line: 166, baseType: !445, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !642, file: !643, line: 167, baseType: !647, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !643, line: 157, size: 192, elements: !649)
!649 = !{!650, !651, !652}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !648, file: !643, line: 159, baseType: !382, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !648, file: !643, line: 160, baseType: !647, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !648, file: !643, line: 161, baseType: !653, size: 32, offset: 128)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 32, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 4)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !642, file: !643, line: 168, baseType: !382, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !642, file: !643, line: 169, baseType: !382, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !642, file: !643, line: 170, baseType: !382, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !642, file: !643, line: 171, baseType: !445, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !642, file: !643, line: 172, baseType: !380, size: 32, offset: 384)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !642, file: !643, line: 176, baseType: !662, size: 64, offset: 448)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!647, !384, !445}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !642, file: !643, line: 177, baseType: !666, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !384, !647}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !642, file: !643, line: 178, baseType: !384, size: 64, offset: 576)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !642, file: !643, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !642, file: !643, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !642, file: !643, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !583, file: !565, line: 177, baseType: !389, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !583, file: !565, line: 178, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !677)
!677 = !{!678, !925, !926, !927, !930, !934, !935, !936, !954, !955, !956, !957, !958, !959}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !676, file: !135, line: 219, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !682)
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !681, file: !135, line: 151, baseType: !684, size: 128)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !686)
!686 = !{!687, !688, !689}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !685, file: !135, line: 150, baseType: !7, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !685, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !685, file: !135, line: 150, baseType: !690, size: 64, offset: 64)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 64, elements: !488)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !390, line: 108, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !694)
!694 = !{!695, !696, !697, !917, !918, !919, !920, !921, !922, !923}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !693, file: !135, line: 124, baseType: !675, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !693, file: !135, line: 125, baseType: !675, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !693, file: !135, line: 131, baseType: !698, size: 64, offset: 128)
!698 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !699)
!699 = !{!700, !916}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !698, file: !135, line: 129, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !390, line: 66, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !704, line: 143, size: 192, elements: !705)
!704 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!705 = !{!706, !914, !915}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !703, file: !704, line: 145, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !390, line: 69, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !704, line: 136, size: 192, elements: !710)
!710 = !{!711, !912, !913}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !709, file: !704, line: 137, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !390, line: 58, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !704, line: 737, size: 768, elements: !715)
!715 = !{!716, !733, !767, !773, !778, !783, !790, !796, !802, !807, !821, !826, !832, !837, !847, !852, !870, !877, !884, !890, !895, !901, !907}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !714, file: !704, line: 738, baseType: !717, size: 256)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !704, line: 271, size: 256, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !717, file: !704, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !717, file: !704, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !717, file: !704, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !717, file: !704, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !717, file: !704, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !717, file: !704, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !717, file: !704, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !717, file: !704, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !717, file: !704, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !717, file: !704, line: 312, baseType: !7, size: 32, offset: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !717, file: !704, line: 316, baseType: !514, size: 32, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !717, file: !704, line: 319, baseType: !7, size: 32, offset: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !717, file: !704, line: 323, baseType: !675, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !717, file: !704, line: 327, baseType: !389, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !714, file: !704, line: 739, baseType: !734, size: 448)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !704, line: 350, size: 448, elements: !735)
!735 = !{!736, !765}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !734, file: !704, line: 353, baseType: !737, size: 384)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !704, line: 333, size: 384, elements: !738)
!738 = !{!739, !740, !748}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !737, file: !704, line: 336, baseType: !717, size: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !737, file: !704, line: 343, baseType: !741, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !743, line: 37, size: 128, elements: !744)
!743 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !742, file: !743, line: 39, baseType: !741, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !742, file: !743, line: 40, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !737, file: !704, line: 344, baseType: !749, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !743, line: 45, size: 320, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !750, file: !743, line: 47, baseType: !749, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !750, file: !743, line: 48, baseType: !754, size: 256, offset: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !151, line: 1883, size: 256, elements: !755)
!755 = !{!756, !758, !759, !764}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !754, file: !151, line: 1884, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !754, file: !151, line: 1885, baseType: !757, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !754, file: !151, line: 1891, baseType: !760, size: 64, offset: 128)
!760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !151, line: 1891, size: 64, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !760, file: !151, line: 1891, baseType: !712, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !760, file: !151, line: 1891, baseType: !389, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !754, file: !151, line: 1892, baseType: !747, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !734, file: !704, line: 359, baseType: !766, size: 64, offset: 384)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 64, elements: !488)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !714, file: !704, line: 740, baseType: !768, size: 512)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !704, line: 365, size: 512, elements: !769)
!769 = !{!770, !771, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !768, file: !704, line: 368, baseType: !737, size: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !768, file: !704, line: 373, baseType: !389, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !768, file: !704, line: 374, baseType: !389, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !714, file: !704, line: 741, baseType: !774, size: 576)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !704, line: 380, size: 576, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !774, file: !704, line: 383, baseType: !768, size: 512)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !774, file: !704, line: 389, baseType: !766, size: 64, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !714, file: !704, line: 742, baseType: !779, size: 320)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !704, line: 395, size: 320, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !779, file: !704, line: 397, baseType: !717, size: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !779, file: !704, line: 400, baseType: !701, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !714, file: !704, line: 743, baseType: !784, size: 448)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !704, line: 406, size: 448, elements: !785)
!785 = !{!786, !787, !788, !789}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !784, file: !704, line: 408, baseType: !717, size: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !784, file: !704, line: 412, baseType: !389, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !784, file: !704, line: 420, baseType: !389, size: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !784, file: !704, line: 423, baseType: !701, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !714, file: !704, line: 744, baseType: !791, size: 384)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !704, line: 429, size: 384, elements: !792)
!792 = !{!793, !794, !795}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !791, file: !704, line: 431, baseType: !717, size: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !791, file: !704, line: 434, baseType: !389, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !791, file: !704, line: 437, baseType: !701, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !714, file: !704, line: 745, baseType: !797, size: 384)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !704, line: 443, size: 384, elements: !798)
!798 = !{!799, !800, !801}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !797, file: !704, line: 445, baseType: !717, size: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !797, file: !704, line: 449, baseType: !389, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !797, file: !704, line: 453, baseType: !701, size: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !714, file: !704, line: 746, baseType: !803, size: 320)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !704, line: 459, size: 320, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !803, file: !704, line: 461, baseType: !717, size: 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !803, file: !704, line: 464, baseType: !389, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !714, file: !704, line: 747, baseType: !808, size: 768)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !704, line: 469, size: 768, elements: !809)
!809 = !{!810, !811, !812, !813, !814}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !808, file: !704, line: 471, baseType: !717, size: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !808, file: !704, line: 474, baseType: !7, size: 32, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !808, file: !704, line: 475, baseType: !7, size: 32, offset: 288)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !808, file: !704, line: 478, baseType: !389, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !808, file: !704, line: 481, baseType: !815, size: 384, offset: 384)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 384, elements: !488)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !151, line: 1917, size: 384, elements: !817)
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !816, file: !151, line: 1920, baseType: !754, size: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !816, file: !151, line: 1921, baseType: !389, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !816, file: !151, line: 1922, baseType: !514, size: 32, offset: 320)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !714, file: !704, line: 748, baseType: !822, size: 320)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !704, line: 487, size: 320, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !822, file: !704, line: 490, baseType: !717, size: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !822, file: !704, line: 494, baseType: !380, size: 32, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !714, file: !704, line: 749, baseType: !827, size: 384)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !704, line: 500, size: 384, elements: !828)
!828 = !{!829, !830, !831}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !827, file: !704, line: 502, baseType: !717, size: 256)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !827, file: !704, line: 506, baseType: !701, size: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !827, file: !704, line: 510, baseType: !701, size: 64, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !714, file: !704, line: 750, baseType: !833, size: 320)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !704, line: 529, size: 320, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !833, file: !704, line: 531, baseType: !717, size: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !833, file: !704, line: 540, baseType: !701, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !714, file: !704, line: 751, baseType: !838, size: 704)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !704, line: 546, size: 704, elements: !839)
!839 = !{!840, !841, !842, !843, !844, !845, !846}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !838, file: !704, line: 549, baseType: !768, size: 512)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !838, file: !704, line: 553, baseType: !385, size: 64, offset: 512)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !838, file: !704, line: 557, baseType: !379, size: 8, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !838, file: !704, line: 558, baseType: !379, size: 8, offset: 584)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !838, file: !704, line: 559, baseType: !379, size: 8, offset: 592)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !838, file: !704, line: 560, baseType: !379, size: 8, offset: 600)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !838, file: !704, line: 566, baseType: !766, size: 64, offset: 640)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !714, file: !704, line: 752, baseType: !848, size: 384)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !704, line: 571, size: 384, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !848, file: !704, line: 573, baseType: !779, size: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !848, file: !704, line: 577, baseType: !389, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !714, file: !704, line: 753, baseType: !853, size: 576)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !704, line: 600, size: 576, elements: !854)
!854 = !{!855, !856, !857, !860, !869}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !853, file: !704, line: 602, baseType: !779, size: 320)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !853, file: !704, line: 605, baseType: !389, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !853, file: !704, line: 609, baseType: !858, size: 64, offset: 384)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !859, line: 46, baseType: !443)
!859 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!860 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !853, file: !704, line: 612, baseType: !861, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !704, line: 581, size: 320, elements: !863)
!863 = !{!864, !865, !866, !867, !868}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !862, file: !704, line: 583, baseType: !183, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !862, file: !704, line: 586, baseType: !389, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !862, file: !704, line: 589, baseType: !389, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !862, file: !704, line: 592, baseType: !389, size: 64, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !862, file: !704, line: 595, baseType: !389, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !853, file: !704, line: 616, baseType: !701, size: 64, offset: 512)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !714, file: !704, line: 754, baseType: !871, size: 512)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !704, line: 622, size: 512, elements: !872)
!872 = !{!873, !874, !875, !876}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !871, file: !704, line: 624, baseType: !779, size: 320)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !871, file: !704, line: 628, baseType: !389, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !871, file: !704, line: 632, baseType: !389, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !871, file: !704, line: 636, baseType: !389, size: 64, offset: 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !714, file: !704, line: 755, baseType: !878, size: 704)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !704, line: 642, size: 704, elements: !879)
!879 = !{!880, !881, !882, !883}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !878, file: !704, line: 644, baseType: !871, size: 512)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !878, file: !704, line: 648, baseType: !389, size: 64, offset: 512)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !878, file: !704, line: 652, baseType: !389, size: 64, offset: 576)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !878, file: !704, line: 653, baseType: !389, size: 64, offset: 640)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !714, file: !704, line: 756, baseType: !885, size: 448)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !704, line: 663, size: 448, elements: !886)
!886 = !{!887, !888, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !885, file: !704, line: 665, baseType: !779, size: 320)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !885, file: !704, line: 668, baseType: !389, size: 64, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !885, file: !704, line: 673, baseType: !389, size: 64, offset: 384)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !714, file: !704, line: 757, baseType: !891, size: 384)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !704, line: 694, size: 384, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !891, file: !704, line: 696, baseType: !779, size: 320)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !891, file: !704, line: 699, baseType: !389, size: 64, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !714, file: !704, line: 758, baseType: !896, size: 384)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !704, line: 681, size: 384, elements: !897)
!897 = !{!898, !899, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !896, file: !704, line: 683, baseType: !717, size: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !896, file: !704, line: 686, baseType: !389, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !896, file: !704, line: 689, baseType: !389, size: 64, offset: 320)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !714, file: !704, line: 759, baseType: !902, size: 384)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !704, line: 707, size: 384, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !902, file: !704, line: 709, baseType: !717, size: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !902, file: !704, line: 712, baseType: !389, size: 64, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !902, file: !704, line: 712, baseType: !389, size: 64, offset: 320)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !714, file: !704, line: 760, baseType: !908, size: 320)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !704, line: 718, size: 320, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !908, file: !704, line: 720, baseType: !717, size: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !908, file: !704, line: 723, baseType: !389, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !709, file: !704, line: 138, baseType: !708, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !704, line: 139, baseType: !708, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !703, file: !704, line: 146, baseType: !707, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !703, file: !704, line: 152, baseType: !701, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !698, file: !135, line: 130, baseType: !562, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !693, file: !135, line: 134, baseType: !384, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !693, file: !135, line: 137, baseType: !389, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !693, file: !135, line: 138, baseType: !514, size: 32, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !693, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !135, line: 144, baseType: !380, size: 32, offset: 384)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !693, file: !135, line: 145, baseType: !380, size: 32, offset: 416)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !693, file: !135, line: 146, baseType: !924, size: 64, offset: 448)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !445)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !676, file: !135, line: 220, baseType: !679, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !676, file: !135, line: 223, baseType: !384, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !676, file: !135, line: 226, baseType: !928, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !135, line: 185, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !676, file: !135, line: 229, baseType: !931, size: 128, offset: 256)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 128, elements: !630)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !676, file: !135, line: 232, baseType: !675, size: 64, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !676, file: !135, line: 233, baseType: !675, size: 64, offset: 448)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !676, file: !135, line: 238, baseType: !937, size: 64, offset: 512)
!937 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !938)
!938 = !{!939, !945}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !937, file: !135, line: 236, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !941, file: !135, line: 275, baseType: !701, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !941, file: !135, line: 278, baseType: !701, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !937, file: !135, line: 237, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !948)
!948 = !{!949, !950, !951, !952, !953}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !947, file: !135, line: 261, baseType: !562, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !947, file: !135, line: 262, baseType: !562, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !947, file: !135, line: 266, baseType: !562, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !947, file: !135, line: 267, baseType: !562, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !947, file: !135, line: 270, baseType: !380, size: 32, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !676, file: !135, line: 241, baseType: !924, size: 64, offset: 576)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !676, file: !135, line: 244, baseType: !380, size: 32, offset: 640)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !676, file: !135, line: 247, baseType: !380, size: 32, offset: 672)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !676, file: !135, line: 250, baseType: !380, size: 32, offset: 704)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !676, file: !135, line: 253, baseType: !380, size: 32, offset: 736)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !135, line: 256, baseType: !380, size: 32, offset: 768)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !583, file: !565, line: 179, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !565, line: 150, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !565, line: 142, size: 320, elements: !964)
!964 = !{!965, !966, !967, !968, !971, !972}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !963, file: !565, line: 144, baseType: !389, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !963, file: !565, line: 145, baseType: !562, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !963, file: !565, line: 146, baseType: !562, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !963, file: !565, line: 147, baseType: !969, size: 32, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !970, line: 31, baseType: !380)
!970 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!971 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !963, file: !565, line: 148, baseType: !7, size: 32, offset: 224)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !963, file: !565, line: 149, baseType: !379, size: 8, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !583, file: !565, line: 180, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !565, line: 162, baseType: !976)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !565, line: 159, size: 128, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !976, file: !565, line: 160, baseType: !389, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !976, file: !565, line: 161, baseType: !445, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !583, file: !565, line: 181, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !565, line: 181, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !578, file: !565, line: 317, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 64, elements: !488)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !578, file: !565, line: 318, baseType: !986, size: 320)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !565, line: 188, size: 320, elements: !987)
!987 = !{!988, !990, !1013}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !986, file: !565, line: 190, baseType: !989, size: 192)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 192, elements: !463)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !986, file: !565, line: 193, baseType: !991, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !565, line: 206, size: 320, elements: !993)
!993 = !{!994, !998, !999, !1000, !1012}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !992, file: !565, line: 208, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !390, line: 62, baseType: !997)
!997 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !390, line: 61, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !992, file: !565, line: 211, baseType: !7, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !992, file: !565, line: 214, baseType: !445, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !992, file: !565, line: 224, baseType: !1001, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !565, line: 202, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !565, line: 202, size: 128, elements: !1004)
!1004 = !{!1005}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1003, file: !565, line: 202, baseType: !1006, size: 128)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !565, line: 200, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !565, line: 200, size: 128, elements: !1008)
!1008 = !{!1009, !1010, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1007, file: !565, line: 200, baseType: !7, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1007, file: !565, line: 200, baseType: !7, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1007, file: !565, line: 200, baseType: !596, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !992, file: !565, line: 234, baseType: !1001, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !986, file: !565, line: 197, baseType: !445, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !578, file: !565, line: 319, baseType: !452, size: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !578, file: !565, line: 320, baseType: !471, size: 192)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !392, file: !151, line: 3384, baseType: !1017, size: 1472)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !151, line: 3114, size: 1472, elements: !1018)
!1018 = !{!1019, !1040, !1041, !1042, !1043}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1017, file: !151, line: 3115, baseType: !1020, size: 1216)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !151, line: 2984, size: 1216, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1020, file: !151, line: 2985, baseType: !558, size: 960)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1020, file: !151, line: 2986, baseType: !389, size: 64, offset: 960)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1020, file: !151, line: 2987, baseType: !389, size: 64, offset: 1024)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1020, file: !151, line: 2988, baseType: !389, size: 64, offset: 1088)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1020, file: !151, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1020, file: !151, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1020, file: !151, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1020, file: !151, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1020, file: !151, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1020, file: !151, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1020, file: !151, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1020, file: !151, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1020, file: !151, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1020, file: !151, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1020, file: !151, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1020, file: !151, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1020, file: !151, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1020, file: !151, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1017, file: !151, line: 3117, baseType: !389, size: 64, offset: 1216)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1017, file: !151, line: 3119, baseType: !389, size: 64, offset: 1280)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1017, file: !151, line: 3121, baseType: !389, size: 64, offset: 1344)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1017, file: !151, line: 3123, baseType: !389, size: 64, offset: 1408)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !392, file: !151, line: 3385, baseType: !1045, size: 1088)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !151, line: 2874, size: 1088, elements: !1046)
!1046 = !{!1047, !1048, !1049}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1045, file: !151, line: 2875, baseType: !558, size: 960)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1045, file: !151, line: 2876, baseType: !562, size: 64, offset: 960)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1045, file: !151, line: 2877, baseType: !1050, size: 64, offset: 1024)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1052, line: 172, size: 128, elements: !1053)
!1052 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059, !1060}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1051, file: !1052, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1051, file: !1052, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1051, file: !1052, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1051, file: !1052, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1051, file: !1052, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1051, file: !1052, line: 195, baseType: !7, size: 32, offset: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1051, file: !1052, line: 199, baseType: !389, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !392, file: !151, line: 3386, baseType: !1020, size: 1216)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !392, file: !151, line: 3387, baseType: !1063, size: 1280)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !151, line: 3093, size: 1280, elements: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1063, file: !151, line: 3094, baseType: !1020, size: 1216)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1063, file: !151, line: 3095, baseType: !1050, size: 64, offset: 1216)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !392, file: !151, line: 3388, baseType: !1068, size: 1216)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !151, line: 2824, size: 1216, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1068, file: !151, line: 2825, baseType: !520, size: 896)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1068, file: !151, line: 2827, baseType: !389, size: 64, offset: 896)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1068, file: !151, line: 2828, baseType: !389, size: 64, offset: 960)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1068, file: !151, line: 2829, baseType: !389, size: 64, offset: 1024)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1068, file: !151, line: 2830, baseType: !389, size: 64, offset: 1088)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1068, file: !151, line: 2831, baseType: !389, size: 64, offset: 1152)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !392, file: !151, line: 3389, baseType: !1077, size: 1024)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !151, line: 2850, size: 1024, elements: !1078)
!1078 = !{!1079, !1080, !1081}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1077, file: !151, line: 2851, baseType: !558, size: 960)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1077, file: !151, line: 2852, baseType: !380, size: 32, offset: 960)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1077, file: !151, line: 2853, baseType: !380, size: 32, offset: 992)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !392, file: !151, line: 3390, baseType: !1083, size: 1024)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !151, line: 2857, size: 1024, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1083, file: !151, line: 2858, baseType: !558, size: 960)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1083, file: !151, line: 2859, baseType: !1050, size: 64, offset: 960)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !392, file: !151, line: 3391, baseType: !1088, size: 960)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !151, line: 2862, size: 960, elements: !1089)
!1089 = !{!1090}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1088, file: !151, line: 2863, baseType: !558, size: 960)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !392, file: !151, line: 3392, baseType: !1092, size: 1472)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !151, line: 3304, size: 1472, elements: !1093)
!1093 = !{!1094}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1092, file: !151, line: 3305, baseType: !1017, size: 1472)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !392, file: !151, line: 3393, baseType: !1096, size: 1792)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !151, line: 3248, size: 1792, elements: !1097)
!1097 = !{!1098, !1099, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1096, file: !151, line: 3249, baseType: !1017, size: 1472)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1096, file: !151, line: 3251, baseType: !1100, size: 64, offset: 1472)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1102, line: 463, size: 1152, elements: !1103)
!1102 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1103 = !{!1104, !1107, !1138, !1139, !1254, !1257, !1258, !1259, !1260, !1261, !1262, !1286, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1101, file: !1102, line: 464, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1102, line: 464, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1101, file: !1102, line: 467, baseType: !1108, size: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !1110)
!1110 = !{!1111, !1113, !1114, !1127, !1128, !1129, !1130, !1131, !1132, !1134, !1136, !1137}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1109, file: !135, line: 377, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !390, line: 111, baseType: !675)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1109, file: !135, line: 378, baseType: !1112, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1109, file: !135, line: 381, baseType: !1115, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !1118)
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1117, file: !135, line: 282, baseType: !1120, size: 128)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !1122)
!1122 = !{!1123, !1124, !1125}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1121, file: !135, line: 281, baseType: !7, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1121, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1121, file: !135, line: 281, baseType: !1126, size: 64, offset: 64)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1112, size: 64, elements: !488)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1109, file: !135, line: 384, baseType: !380, size: 32, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1109, file: !135, line: 387, baseType: !380, size: 32, offset: 224)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1109, file: !135, line: 390, baseType: !380, size: 32, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1109, file: !135, line: 394, baseType: !1115, size: 64, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1109, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1109, file: !135, line: 399, baseType: !1133, size: 64, offset: 416)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !630)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1109, file: !135, line: 402, baseType: !1135, size: 64, offset: 480)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !630)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1109, file: !135, line: 406, baseType: !380, size: 32, offset: 544)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1109, file: !135, line: 409, baseType: !380, size: 32, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1101, file: !1102, line: 470, baseType: !702, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1101, file: !1102, line: 473, baseType: !1140, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1052, line: 39, size: 1152, elements: !1142)
!1142 = !{!1143, !1193, !1206, !1218, !1219, !1231, !1232, !1236, !1237, !1238, !1239, !1240}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1141, file: !1052, line: 41, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1145, line: 144, baseType: !1146)
!1145 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1145, line: 100, size: 896, elements: !1148)
!1148 = !{!1149, !1157, !1162, !1167, !1169, !1170, !1171, !1172, !1173, !1174, !1179, !1181, !1182, !1187, !1192}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1147, file: !1145, line: 102, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1145, line: 52, baseType: !1151)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1145, line: 47, baseType: !7)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1147, file: !1145, line: 105, baseType: !1158, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1145, line: 59, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!380, !1155, !1155}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1147, file: !1145, line: 108, baseType: !1163, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1145, line: 63, baseType: !1164)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null, !384}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1147, file: !1145, line: 111, baseType: !1168, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1147, file: !1145, line: 114, baseType: !858, size: 64, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1147, file: !1145, line: 117, baseType: !858, size: 64, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1147, file: !1145, line: 120, baseType: !858, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1147, file: !1145, line: 124, baseType: !7, size: 32, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1147, file: !1145, line: 128, baseType: !7, size: 32, offset: 480)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1147, file: !1145, line: 131, baseType: !1175, size: 64, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1145, line: 75, baseType: !1176)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!384, !858, !858}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1147, file: !1145, line: 132, baseType: !1180, size: 64, offset: 576)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1145, line: 78, baseType: !1164)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1147, file: !1145, line: 135, baseType: !384, size: 64, offset: 640)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1147, file: !1145, line: 136, baseType: !1183, size: 64, offset: 704)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1145, line: 82, baseType: !1184)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!384, !384, !858, !858}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1147, file: !1145, line: 137, baseType: !1188, size: 64, offset: 768)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1145, line: 83, baseType: !1189)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !384, !384}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1147, file: !1145, line: 141, baseType: !7, size: 32, offset: 832)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1141, file: !1052, line: 48, baseType: !1194, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !704, line: 35, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !704, line: 35, size: 128, elements: !1197)
!1197 = !{!1198}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1196, file: !704, line: 35, baseType: !1199, size: 128)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !704, line: 33, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !704, line: 33, size: 128, elements: !1201)
!1201 = !{!1202, !1203, !1204}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1200, file: !704, line: 33, baseType: !7, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1200, file: !704, line: 33, baseType: !7, size: 32, offset: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1200, file: !704, line: 33, baseType: !1205, size: 64, offset: 64)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 64, elements: !488)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1141, file: !1052, line: 51, baseType: !1207, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !151, line: 183, baseType: !1209)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !151, line: 183, size: 128, elements: !1210)
!1210 = !{!1211}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1209, file: !151, line: 183, baseType: !1212, size: 128)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !151, line: 182, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !151, line: 182, size: 128, elements: !1214)
!1214 = !{!1215, !1216, !1217}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1213, file: !151, line: 182, baseType: !7, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1213, file: !151, line: 182, baseType: !7, size: 32, offset: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1213, file: !151, line: 182, baseType: !766, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1141, file: !1052, line: 54, baseType: !389, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1141, file: !1052, line: 57, baseType: !1220, size: 128, offset: 256)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1221, line: 31, size: 128, elements: !1222)
!1221 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1222 = !{!1223, !1224, !1225, !1226, !1227, !1228, !1229}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1220, file: !1221, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1220, file: !1221, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1220, file: !1221, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1220, file: !1221, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1220, file: !1221, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1220, file: !1221, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1220, file: !1221, line: 56, baseType: !1230, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !390, line: 47, baseType: !614)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1141, file: !1052, line: 60, baseType: !1220, size: 128, offset: 384)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1141, file: !1052, line: 64, baseType: !1233, size: 64, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1235, line: 33, flags: DIFlagFwdDecl)
!1235 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1141, file: !1052, line: 67, baseType: !389, size: 64, offset: 576)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1141, file: !1052, line: 73, baseType: !1144, size: 64, offset: 640)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1141, file: !1052, line: 77, baseType: !1230, size: 64, offset: 704)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1141, file: !1052, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1141, file: !1052, line: 82, baseType: !1241, size: 320, offset: 832)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !743, line: 62, size: 320, elements: !1242)
!1242 = !{!1243, !1249, !1250, !1251, !1252, !1253}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1241, file: !743, line: 63, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !743, line: 56, size: 128, elements: !1246)
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1245, file: !743, line: 57, baseType: !1244, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1245, file: !743, line: 58, baseType: !487, size: 8, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1241, file: !743, line: 64, baseType: !7, size: 32, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1241, file: !743, line: 66, baseType: !7, size: 32, offset: 96)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1241, file: !743, line: 68, baseType: !379, size: 8, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1241, file: !743, line: 70, baseType: !741, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1241, file: !743, line: 71, baseType: !749, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1101, file: !1102, line: 476, baseType: !1255, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1102, line: 476, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1101, file: !1102, line: 479, baseType: !1144, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1101, file: !1102, line: 484, baseType: !389, size: 64, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1101, file: !1102, line: 488, baseType: !389, size: 64, offset: 448)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1101, file: !1102, line: 493, baseType: !389, size: 64, offset: 512)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1101, file: !1102, line: 496, baseType: !389, size: 64, offset: 576)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1101, file: !1102, line: 501, baseType: !1263, size: 64, offset: 640)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !146, line: 2355, size: 576, elements: !1265)
!1265 = !{!1266, !1269, !1270, !1271, !1272, !1274, !1275, !1280, !1281, !1282, !1283, !1284, !1285}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1264, file: !146, line: 2356, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !146, line: 2356, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1264, file: !146, line: 2357, baseType: !385, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1264, file: !146, line: 2358, baseType: !380, size: 32, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1264, file: !146, line: 2359, baseType: !380, size: 32, offset: 160)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1264, file: !146, line: 2360, baseType: !1273, size: 128, offset: 192)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 128, elements: !654)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1264, file: !146, line: 2364, baseType: !380, size: 32, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1264, file: !146, line: 2367, baseType: !1276, size: 128, offset: 384)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !146, line: 2349, size: 128, elements: !1277)
!1277 = !{!1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1276, file: !146, line: 2351, baseType: !562, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1276, file: !146, line: 2352, baseType: !445, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1264, file: !146, line: 2371, baseType: !145, size: 32, offset: 512)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1264, file: !146, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1264, file: !146, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1264, file: !146, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1264, file: !146, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1264, file: !146, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1101, file: !1102, line: 504, baseType: !1287, size: 64, offset: 704)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1102, line: 504, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1101, file: !1102, line: 507, baseType: !1144, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1101, file: !1102, line: 510, baseType: !380, size: 32, offset: 832)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1101, file: !1102, line: 513, baseType: !380, size: 32, offset: 864)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1101, file: !1102, line: 516, baseType: !514, size: 32, offset: 896)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1101, file: !1102, line: 519, baseType: !514, size: 32, offset: 928)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1101, file: !1102, line: 522, baseType: !7, size: 32, offset: 960)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1101, file: !1102, line: 523, baseType: !7, size: 32, offset: 992)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1101, file: !1102, line: 528, baseType: !385, size: 64, offset: 1024)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1101, file: !1102, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1101, file: !1102, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1101, file: !1102, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1101, file: !1102, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1101, file: !1102, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1101, file: !1102, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1101, file: !1102, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1101, file: !1102, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1101, file: !1102, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1101, file: !1102, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1101, file: !1102, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1101, file: !1102, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1101, file: !1102, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1101, file: !1102, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1101, file: !1102, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1101, file: !1102, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1096, file: !151, line: 3254, baseType: !389, size: 64, offset: 1536)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1096, file: !151, line: 3257, baseType: !389, size: 64, offset: 1600)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1096, file: !151, line: 3258, baseType: !389, size: 64, offset: 1664)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1096, file: !151, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1096, file: !151, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1096, file: !151, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1096, file: !151, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1096, file: !151, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1096, file: !151, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1096, file: !151, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1096, file: !151, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1096, file: !151, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1096, file: !151, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1096, file: !151, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1096, file: !151, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1096, file: !151, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1096, file: !151, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1096, file: !151, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1096, file: !151, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1096, file: !151, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1096, file: !151, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !392, file: !151, line: 3394, baseType: !1335, size: 1344)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !151, line: 2279, size: 1344, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1335, file: !151, line: 2280, baseType: !428, size: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1335, file: !151, line: 2281, baseType: !389, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1335, file: !151, line: 2282, baseType: !389, size: 64, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1335, file: !151, line: 2283, baseType: !389, size: 64, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1335, file: !151, line: 2284, baseType: !389, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1335, file: !151, line: 2285, baseType: !7, size: 32, offset: 448)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1335, file: !151, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1335, file: !151, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1335, file: !151, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1335, file: !151, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1335, file: !151, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1335, file: !151, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1335, file: !151, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1335, file: !151, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1335, file: !151, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1335, file: !151, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1335, file: !151, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1335, file: !151, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1335, file: !151, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1335, file: !151, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1335, file: !151, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1335, file: !151, line: 2305, baseType: !7, size: 32, offset: 512)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1335, file: !151, line: 2306, baseType: !969, size: 32, offset: 544)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1335, file: !151, line: 2307, baseType: !389, size: 64, offset: 576)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1335, file: !151, line: 2308, baseType: !389, size: 64, offset: 640)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1335, file: !151, line: 2314, baseType: !1363, size: 64, offset: 704)
!1363 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !151, line: 2309, size: 64, elements: !1364)
!1364 = !{!1365, !1366, !1367}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1363, file: !151, line: 2310, baseType: !380, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1363, file: !151, line: 2311, baseType: !385, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1363, file: !151, line: 2312, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !151, line: 2277, flags: DIFlagFwdDecl)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1335, file: !151, line: 2315, baseType: !389, size: 64, offset: 768)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1335, file: !151, line: 2316, baseType: !389, size: 64, offset: 832)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1335, file: !151, line: 2317, baseType: !389, size: 64, offset: 896)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1335, file: !151, line: 2318, baseType: !389, size: 64, offset: 960)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1335, file: !151, line: 2319, baseType: !389, size: 64, offset: 1024)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1335, file: !151, line: 2320, baseType: !389, size: 64, offset: 1088)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1335, file: !151, line: 2321, baseType: !389, size: 64, offset: 1152)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1335, file: !151, line: 2322, baseType: !389, size: 64, offset: 1216)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1335, file: !151, line: 2324, baseType: !1379, size: 64, offset: 1280)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !151, line: 2324, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !392, file: !151, line: 3395, baseType: !1382, size: 320)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !151, line: 1469, size: 320, elements: !1383)
!1383 = !{!1384, !1385, !1386}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1382, file: !151, line: 1470, baseType: !428, size: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1382, file: !151, line: 1471, baseType: !389, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1382, file: !151, line: 1472, baseType: !389, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !392, file: !151, line: 3396, baseType: !1388, size: 320)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !151, line: 1482, size: 320, elements: !1389)
!1389 = !{!1390, !1391, !1392}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1388, file: !151, line: 1483, baseType: !428, size: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1388, file: !151, line: 1484, baseType: !380, size: 32, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1388, file: !151, line: 1485, baseType: !766, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !392, file: !151, line: 3397, baseType: !1394, size: 384)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !151, line: 1829, size: 384, elements: !1395)
!1395 = !{!1396, !1397, !1398, !1399}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1394, file: !151, line: 1830, baseType: !428, size: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1394, file: !151, line: 1831, baseType: !514, size: 32, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1394, file: !151, line: 1832, baseType: !389, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1394, file: !151, line: 1835, baseType: !766, size: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !392, file: !151, line: 3398, baseType: !1401, size: 704)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !151, line: 1898, size: 704, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1412}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1401, file: !151, line: 1899, baseType: !428, size: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1401, file: !151, line: 1902, baseType: !389, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1401, file: !151, line: 1905, baseType: !712, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1401, file: !151, line: 1908, baseType: !7, size: 32, offset: 320)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1401, file: !151, line: 1911, baseType: !1408, size: 64, offset: 384)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1052, line: 117, size: 128, elements: !1410)
!1410 = !{!1411}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1409, file: !1052, line: 120, baseType: !1220, size: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1401, file: !151, line: 1914, baseType: !754, size: 256, offset: 448)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !392, file: !151, line: 3399, baseType: !1414, size: 704)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !151, line: 2008, size: 704, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1414, file: !151, line: 2009, baseType: !428, size: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1414, file: !151, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1414, file: !151, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1414, file: !151, line: 2014, baseType: !514, size: 32, offset: 224)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1414, file: !151, line: 2016, baseType: !389, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1414, file: !151, line: 2017, baseType: !1207, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1414, file: !151, line: 2019, baseType: !389, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1414, file: !151, line: 2020, baseType: !389, size: 64, offset: 448)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1414, file: !151, line: 2021, baseType: !389, size: 64, offset: 512)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1414, file: !151, line: 2022, baseType: !389, size: 64, offset: 576)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1414, file: !151, line: 2023, baseType: !389, size: 64, offset: 640)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !392, file: !151, line: 3400, baseType: !1428, size: 832)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !151, line: 2430, size: 832, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1428, file: !151, line: 2431, baseType: !428, size: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1428, file: !151, line: 2433, baseType: !389, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1428, file: !151, line: 2434, baseType: !389, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1428, file: !151, line: 2435, baseType: !389, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1428, file: !151, line: 2436, baseType: !389, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1428, file: !151, line: 2437, baseType: !1207, size: 64, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1428, file: !151, line: 2438, baseType: !389, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1428, file: !151, line: 2440, baseType: !389, size: 64, offset: 576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1428, file: !151, line: 2441, baseType: !389, size: 64, offset: 640)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1428, file: !151, line: 2443, baseType: !1440, size: 128, offset: 704)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !151, line: 182, baseType: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !151, line: 182, size: 128, elements: !1442)
!1442 = !{!1443}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1441, file: !151, line: 182, baseType: !1212, size: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !392, file: !151, line: 3401, baseType: !1445, size: 320)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !151, line: 3327, size: 320, elements: !1446)
!1446 = !{!1447, !1448, !1455}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1445, file: !151, line: 3329, baseType: !428, size: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1445, file: !151, line: 3330, baseType: !1449, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !151, line: 3320, size: 192, elements: !1451)
!1451 = !{!1452, !1453, !1454}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1450, file: !151, line: 3322, baseType: !1449, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1450, file: !151, line: 3323, baseType: !1449, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1450, file: !151, line: 3324, baseType: !389, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1445, file: !151, line: 3331, baseType: !1449, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !392, file: !151, line: 3402, baseType: !1457, size: 256)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !151, line: 1540, size: 256, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1457, file: !151, line: 1541, baseType: !428, size: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1457, file: !151, line: 1542, baseType: !1461, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !151, line: 1538, baseType: !1463)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !151, line: 1538, size: 192, elements: !1464)
!1464 = !{!1465}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1463, file: !151, line: 1538, baseType: !1466, size: 192)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !151, line: 1537, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !151, line: 1537, size: 192, elements: !1468)
!1468 = !{!1469, !1470, !1471}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1467, file: !151, line: 1537, baseType: !7, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1467, file: !151, line: 1537, baseType: !7, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1467, file: !151, line: 1537, baseType: !1472, size: 128, offset: 64)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1473, size: 128, elements: !488)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !151, line: 1535, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !151, line: 1532, size: 128, elements: !1475)
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1474, file: !151, line: 1533, baseType: !389, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1474, file: !151, line: 1534, baseType: !389, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !392, file: !151, line: 3403, baseType: !1479, size: 512)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !151, line: 1938, size: 512, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1484, !1490, !1491, !1492}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1479, file: !151, line: 1939, baseType: !428, size: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1479, file: !151, line: 1940, baseType: !514, size: 32, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1479, file: !151, line: 1941, baseType: !150, size: 32, offset: 224)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1479, file: !151, line: 1946, baseType: !1485, size: 32, offset: 256)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !151, line: 1942, size: 32, elements: !1486)
!1486 = !{!1487, !1488, !1489}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1485, file: !151, line: 1943, baseType: !169, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1485, file: !151, line: 1944, baseType: !176, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1485, file: !151, line: 1945, baseType: !183, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1479, file: !151, line: 1950, baseType: !701, size: 64, offset: 320)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1479, file: !151, line: 1951, baseType: !701, size: 64, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1479, file: !151, line: 1953, baseType: !766, size: 64, offset: 448)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !392, file: !151, line: 3404, baseType: !1494, size: 1664)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !151, line: 3337, size: 1664, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1494, file: !151, line: 3338, baseType: !428, size: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1494, file: !151, line: 3341, baseType: !1498, size: 1472, offset: 192)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1499, line: 410, size: 1472, elements: !1500)
!1499 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1498, file: !1499, line: 412, baseType: !380, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1498, file: !1499, line: 413, baseType: !380, size: 32, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1498, file: !1499, line: 414, baseType: !380, size: 32, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1498, file: !1499, line: 415, baseType: !380, size: 32, offset: 96)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1498, file: !1499, line: 416, baseType: !380, size: 32, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1498, file: !1499, line: 417, baseType: !380, size: 32, offset: 160)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1498, file: !1499, line: 418, baseType: !379, size: 8, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1498, file: !1499, line: 419, baseType: !379, size: 8, offset: 200)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1498, file: !1499, line: 420, baseType: !1510, size: 8, offset: 208)
!1510 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1498, file: !1499, line: 421, baseType: !1510, size: 8, offset: 216)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1498, file: !1499, line: 422, baseType: !1510, size: 8, offset: 224)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1498, file: !1499, line: 423, baseType: !1510, size: 8, offset: 232)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1498, file: !1499, line: 424, baseType: !1510, size: 8, offset: 240)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1498, file: !1499, line: 425, baseType: !1510, size: 8, offset: 248)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1498, file: !1499, line: 426, baseType: !1510, size: 8, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1498, file: !1499, line: 427, baseType: !1510, size: 8, offset: 264)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1498, file: !1499, line: 428, baseType: !1510, size: 8, offset: 272)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1498, file: !1499, line: 429, baseType: !1510, size: 8, offset: 280)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1498, file: !1499, line: 430, baseType: !1510, size: 8, offset: 288)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1498, file: !1499, line: 431, baseType: !1510, size: 8, offset: 296)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1498, file: !1499, line: 432, baseType: !1510, size: 8, offset: 304)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1498, file: !1499, line: 433, baseType: !1510, size: 8, offset: 312)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1498, file: !1499, line: 434, baseType: !1510, size: 8, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1498, file: !1499, line: 435, baseType: !1510, size: 8, offset: 328)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1498, file: !1499, line: 436, baseType: !1510, size: 8, offset: 336)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1498, file: !1499, line: 437, baseType: !1510, size: 8, offset: 344)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1498, file: !1499, line: 438, baseType: !1510, size: 8, offset: 352)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1498, file: !1499, line: 439, baseType: !1510, size: 8, offset: 360)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1498, file: !1499, line: 440, baseType: !1510, size: 8, offset: 368)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1498, file: !1499, line: 441, baseType: !1510, size: 8, offset: 376)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1498, file: !1499, line: 442, baseType: !1510, size: 8, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1498, file: !1499, line: 443, baseType: !1510, size: 8, offset: 392)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1498, file: !1499, line: 444, baseType: !1510, size: 8, offset: 400)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1498, file: !1499, line: 445, baseType: !1510, size: 8, offset: 408)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1498, file: !1499, line: 446, baseType: !1510, size: 8, offset: 416)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1498, file: !1499, line: 447, baseType: !1510, size: 8, offset: 424)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1498, file: !1499, line: 448, baseType: !1510, size: 8, offset: 432)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1498, file: !1499, line: 449, baseType: !1510, size: 8, offset: 440)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1498, file: !1499, line: 450, baseType: !1510, size: 8, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1498, file: !1499, line: 451, baseType: !1510, size: 8, offset: 456)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1498, file: !1499, line: 452, baseType: !1510, size: 8, offset: 464)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1498, file: !1499, line: 453, baseType: !1510, size: 8, offset: 472)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1498, file: !1499, line: 454, baseType: !1510, size: 8, offset: 480)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1498, file: !1499, line: 455, baseType: !1510, size: 8, offset: 488)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1498, file: !1499, line: 456, baseType: !1510, size: 8, offset: 496)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1498, file: !1499, line: 457, baseType: !1510, size: 8, offset: 504)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1498, file: !1499, line: 458, baseType: !1510, size: 8, offset: 512)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1498, file: !1499, line: 459, baseType: !1510, size: 8, offset: 520)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1498, file: !1499, line: 460, baseType: !1510, size: 8, offset: 528)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1498, file: !1499, line: 461, baseType: !1510, size: 8, offset: 536)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1498, file: !1499, line: 462, baseType: !1510, size: 8, offset: 544)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1498, file: !1499, line: 463, baseType: !1510, size: 8, offset: 552)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1498, file: !1499, line: 464, baseType: !1510, size: 8, offset: 560)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1498, file: !1499, line: 465, baseType: !1510, size: 8, offset: 568)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1498, file: !1499, line: 466, baseType: !1510, size: 8, offset: 576)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1498, file: !1499, line: 467, baseType: !1510, size: 8, offset: 584)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1498, file: !1499, line: 468, baseType: !1510, size: 8, offset: 592)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1498, file: !1499, line: 469, baseType: !1510, size: 8, offset: 600)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1498, file: !1499, line: 470, baseType: !1510, size: 8, offset: 608)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1498, file: !1499, line: 471, baseType: !1510, size: 8, offset: 616)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1498, file: !1499, line: 472, baseType: !1510, size: 8, offset: 624)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1498, file: !1499, line: 473, baseType: !1510, size: 8, offset: 632)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1498, file: !1499, line: 474, baseType: !1510, size: 8, offset: 640)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1498, file: !1499, line: 475, baseType: !1510, size: 8, offset: 648)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1498, file: !1499, line: 476, baseType: !1510, size: 8, offset: 656)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1498, file: !1499, line: 477, baseType: !1510, size: 8, offset: 664)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1498, file: !1499, line: 478, baseType: !1510, size: 8, offset: 672)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1498, file: !1499, line: 479, baseType: !1510, size: 8, offset: 680)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1498, file: !1499, line: 480, baseType: !1510, size: 8, offset: 688)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1498, file: !1499, line: 481, baseType: !1510, size: 8, offset: 696)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1498, file: !1499, line: 482, baseType: !1510, size: 8, offset: 704)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1498, file: !1499, line: 483, baseType: !1510, size: 8, offset: 712)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1498, file: !1499, line: 484, baseType: !1510, size: 8, offset: 720)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1498, file: !1499, line: 485, baseType: !1510, size: 8, offset: 728)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1498, file: !1499, line: 486, baseType: !1510, size: 8, offset: 736)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1498, file: !1499, line: 487, baseType: !1510, size: 8, offset: 744)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1498, file: !1499, line: 488, baseType: !1510, size: 8, offset: 752)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1498, file: !1499, line: 489, baseType: !1510, size: 8, offset: 760)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1498, file: !1499, line: 490, baseType: !1510, size: 8, offset: 768)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1498, file: !1499, line: 491, baseType: !1510, size: 8, offset: 776)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1498, file: !1499, line: 492, baseType: !1510, size: 8, offset: 784)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1498, file: !1499, line: 493, baseType: !1510, size: 8, offset: 792)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1498, file: !1499, line: 494, baseType: !1510, size: 8, offset: 800)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1498, file: !1499, line: 495, baseType: !1510, size: 8, offset: 808)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1498, file: !1499, line: 496, baseType: !1510, size: 8, offset: 816)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1498, file: !1499, line: 497, baseType: !1510, size: 8, offset: 824)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1498, file: !1499, line: 498, baseType: !1510, size: 8, offset: 832)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1498, file: !1499, line: 499, baseType: !1510, size: 8, offset: 840)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1498, file: !1499, line: 500, baseType: !1510, size: 8, offset: 848)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1498, file: !1499, line: 501, baseType: !1510, size: 8, offset: 856)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1498, file: !1499, line: 502, baseType: !1510, size: 8, offset: 864)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1498, file: !1499, line: 503, baseType: !1510, size: 8, offset: 872)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1498, file: !1499, line: 504, baseType: !1510, size: 8, offset: 880)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1498, file: !1499, line: 505, baseType: !1510, size: 8, offset: 888)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1498, file: !1499, line: 506, baseType: !1510, size: 8, offset: 896)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1498, file: !1499, line: 507, baseType: !1510, size: 8, offset: 904)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1498, file: !1499, line: 508, baseType: !1510, size: 8, offset: 912)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1498, file: !1499, line: 509, baseType: !1510, size: 8, offset: 920)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1498, file: !1499, line: 510, baseType: !1510, size: 8, offset: 928)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1498, file: !1499, line: 511, baseType: !1510, size: 8, offset: 936)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1498, file: !1499, line: 512, baseType: !1510, size: 8, offset: 944)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1498, file: !1499, line: 513, baseType: !1510, size: 8, offset: 952)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1498, file: !1499, line: 514, baseType: !1510, size: 8, offset: 960)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1498, file: !1499, line: 515, baseType: !1510, size: 8, offset: 968)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1498, file: !1499, line: 516, baseType: !1510, size: 8, offset: 976)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1498, file: !1499, line: 517, baseType: !1510, size: 8, offset: 984)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1498, file: !1499, line: 518, baseType: !1510, size: 8, offset: 992)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1498, file: !1499, line: 519, baseType: !1510, size: 8, offset: 1000)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1498, file: !1499, line: 520, baseType: !1510, size: 8, offset: 1008)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1498, file: !1499, line: 521, baseType: !1510, size: 8, offset: 1016)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1498, file: !1499, line: 522, baseType: !1510, size: 8, offset: 1024)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1498, file: !1499, line: 523, baseType: !1510, size: 8, offset: 1032)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1498, file: !1499, line: 524, baseType: !1510, size: 8, offset: 1040)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1498, file: !1499, line: 525, baseType: !1510, size: 8, offset: 1048)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1498, file: !1499, line: 526, baseType: !1510, size: 8, offset: 1056)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1498, file: !1499, line: 527, baseType: !1510, size: 8, offset: 1064)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1498, file: !1499, line: 528, baseType: !1510, size: 8, offset: 1072)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1498, file: !1499, line: 529, baseType: !1510, size: 8, offset: 1080)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1498, file: !1499, line: 530, baseType: !1510, size: 8, offset: 1088)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1498, file: !1499, line: 531, baseType: !1510, size: 8, offset: 1096)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1498, file: !1499, line: 532, baseType: !1510, size: 8, offset: 1104)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1498, file: !1499, line: 533, baseType: !1510, size: 8, offset: 1112)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1498, file: !1499, line: 534, baseType: !1510, size: 8, offset: 1120)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1498, file: !1499, line: 535, baseType: !1510, size: 8, offset: 1128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1498, file: !1499, line: 536, baseType: !1510, size: 8, offset: 1136)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1498, file: !1499, line: 537, baseType: !1510, size: 8, offset: 1144)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1498, file: !1499, line: 538, baseType: !1510, size: 8, offset: 1152)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1498, file: !1499, line: 539, baseType: !1510, size: 8, offset: 1160)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1498, file: !1499, line: 540, baseType: !1510, size: 8, offset: 1168)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1498, file: !1499, line: 541, baseType: !1510, size: 8, offset: 1176)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1498, file: !1499, line: 542, baseType: !1510, size: 8, offset: 1184)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1498, file: !1499, line: 543, baseType: !1510, size: 8, offset: 1192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1498, file: !1499, line: 544, baseType: !1510, size: 8, offset: 1200)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1498, file: !1499, line: 545, baseType: !1510, size: 8, offset: 1208)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1498, file: !1499, line: 546, baseType: !1510, size: 8, offset: 1216)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1498, file: !1499, line: 547, baseType: !1510, size: 8, offset: 1224)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1498, file: !1499, line: 548, baseType: !1510, size: 8, offset: 1232)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1498, file: !1499, line: 549, baseType: !1510, size: 8, offset: 1240)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1498, file: !1499, line: 550, baseType: !1510, size: 8, offset: 1248)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1498, file: !1499, line: 551, baseType: !1510, size: 8, offset: 1256)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1498, file: !1499, line: 552, baseType: !1510, size: 8, offset: 1264)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1498, file: !1499, line: 553, baseType: !1510, size: 8, offset: 1272)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1498, file: !1499, line: 554, baseType: !1510, size: 8, offset: 1280)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1498, file: !1499, line: 555, baseType: !1510, size: 8, offset: 1288)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1498, file: !1499, line: 556, baseType: !1510, size: 8, offset: 1296)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1498, file: !1499, line: 557, baseType: !1510, size: 8, offset: 1304)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1498, file: !1499, line: 558, baseType: !1510, size: 8, offset: 1312)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1498, file: !1499, line: 559, baseType: !1510, size: 8, offset: 1320)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1498, file: !1499, line: 560, baseType: !1510, size: 8, offset: 1328)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1498, file: !1499, line: 561, baseType: !1510, size: 8, offset: 1336)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1498, file: !1499, line: 562, baseType: !1510, size: 8, offset: 1344)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1498, file: !1499, line: 563, baseType: !1510, size: 8, offset: 1352)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1498, file: !1499, line: 564, baseType: !1510, size: 8, offset: 1360)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1498, file: !1499, line: 565, baseType: !1510, size: 8, offset: 1368)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1498, file: !1499, line: 566, baseType: !1510, size: 8, offset: 1376)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1498, file: !1499, line: 567, baseType: !1510, size: 8, offset: 1384)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1498, file: !1499, line: 568, baseType: !1510, size: 8, offset: 1392)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1498, file: !1499, line: 569, baseType: !1510, size: 8, offset: 1400)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1498, file: !1499, line: 570, baseType: !1510, size: 8, offset: 1408)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1498, file: !1499, line: 571, baseType: !1510, size: 8, offset: 1416)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1498, file: !1499, line: 572, baseType: !1510, size: 8, offset: 1424)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1498, file: !1499, line: 573, baseType: !1510, size: 8, offset: 1432)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1498, file: !1499, line: 574, baseType: !1510, size: 8, offset: 1440)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !392, file: !151, line: 3405, baseType: !1666, size: 384)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !151, line: 3352, size: 384, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1666, file: !151, line: 3353, baseType: !428, size: 192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1666, file: !151, line: 3356, baseType: !1670, size: 192, offset: 192)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1499, line: 578, size: 192, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1670, file: !1499, line: 580, baseType: !380, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1670, file: !1499, line: 581, baseType: !380, size: 32, offset: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1670, file: !1499, line: 582, baseType: !380, size: 32, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1670, file: !1499, line: 583, baseType: !380, size: 32, offset: 96)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1670, file: !1499, line: 584, baseType: !379, size: 8, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1670, file: !1499, line: 585, baseType: !379, size: 8, offset: 136)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1670, file: !1499, line: 586, baseType: !379, size: 8, offset: 144)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1670, file: !1499, line: 587, baseType: !379, size: 8, offset: 152)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1670, file: !1499, line: 588, baseType: !379, size: 8, offset: 160)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1670, file: !1499, line: 589, baseType: !379, size: 8, offset: 168)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1670, file: !1499, line: 590, baseType: !379, size: 8, offset: 176)
!1683 = !{!1684, !0, !1698}
!1684 = !DIGlobalVariableExpression(var: !1685, expr: !DIExpression())
!1685 = distinct !DIGlobalVariable(name: "gt_ggc_rd_gt_tree_phinodes_h", scope: !2, file: !1686, line: 24, type: !1687, isLocal: false, isDefinition: true)
!1686 = !DIFile(filename: "./gt-tree-phinodes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1688, size: 640, elements: !630)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1690, line: 69, size: 320, elements: !1691)
!1690 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1691 = !{!1692, !1693, !1694, !1695, !1697}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1689, file: !1690, line: 70, baseType: !384, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1689, file: !1690, line: 71, baseType: !858, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1689, file: !1690, line: 72, baseType: !858, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1689, file: !1690, line: 73, baseType: !1696, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1690, line: 65, baseType: !1164)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1689, file: !1690, line: 74, baseType: !1696, size: 64, offset: 256)
!1698 = !DIGlobalVariableExpression(var: !1699, expr: !DIExpression())
!1699 = distinct !DIGlobalVariable(name: "free_phinode_count", scope: !2, file: !3, line: 81, type: !443, isLocal: true, isDefinition: true)
!1700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1194, size: 512, elements: !1701)
!1701 = !{!1702}
!1702 = !DISubrange(count: 8)
!1703 = !{i32 2, !"Dwarf Version", i32 4}
!1704 = !{i32 2, !"Debug Info Version", i32 3}
!1705 = !{i32 1, !"wchar_size", i32 4}
!1706 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1707 = distinct !DISubprogram(name: "vprintf", scope: !1708, file: !1708, line: 39, type: !1709, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1719)
!1708 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!380, !1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !385)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1714)
!1714 = !{!1715, !1716, !1717, !1718}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1713, file: !3, baseType: !7, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1713, file: !3, baseType: !7, size: 32, offset: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1713, file: !3, baseType: !384, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1713, file: !3, baseType: !384, size: 64, offset: 128)
!1719 = !{!1720, !1721}
!1720 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1707, file: !1708, line: 39, type: !1711)
!1721 = !DILocalVariable(name: "__arg", arg: 2, scope: !1707, file: !1708, line: 39, type: !1712)
!1722 = !DILocation(line: 0, scope: !1707)
!1723 = !DILocation(line: 41, column: 20, scope: !1707)
!1724 = !DILocation(line: 41, column: 10, scope: !1707)
!1725 = !DILocation(line: 41, column: 3, scope: !1707)
!1726 = distinct !DISubprogram(name: "getchar", scope: !1708, file: !1708, line: 47, type: !1727, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!380}
!1729 = !{}
!1730 = !DILocation(line: 49, column: 16, scope: !1726)
!1731 = !DILocation(line: 49, column: 10, scope: !1726)
!1732 = !DILocation(line: 49, column: 3, scope: !1726)
!1733 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1708, file: !1708, line: 56, type: !1734, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1787)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!380, !1736}
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1738, line: 7, baseType: !1739)
!1738 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1740, line: 49, size: 1728, elements: !1741)
!1740 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1757, !1759, !1760, !1761, !1764, !1766, !1767, !1768, !1771, !1773, !1776, !1779, !1780, !1781, !1782, !1783}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1739, file: !1740, line: 51, baseType: !380, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1739, file: !1740, line: 54, baseType: !382, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1739, file: !1740, line: 55, baseType: !382, size: 64, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1739, file: !1740, line: 56, baseType: !382, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1739, file: !1740, line: 57, baseType: !382, size: 64, offset: 256)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1739, file: !1740, line: 58, baseType: !382, size: 64, offset: 320)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1739, file: !1740, line: 59, baseType: !382, size: 64, offset: 384)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1739, file: !1740, line: 60, baseType: !382, size: 64, offset: 448)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1739, file: !1740, line: 61, baseType: !382, size: 64, offset: 512)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1739, file: !1740, line: 64, baseType: !382, size: 64, offset: 576)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1739, file: !1740, line: 65, baseType: !382, size: 64, offset: 640)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1739, file: !1740, line: 66, baseType: !382, size: 64, offset: 704)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1739, file: !1740, line: 68, baseType: !1755, size: 64, offset: 768)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1740, line: 36, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1739, file: !1740, line: 70, baseType: !1758, size: 64, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1739, file: !1740, line: 72, baseType: !380, size: 32, offset: 896)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1739, file: !1740, line: 73, baseType: !380, size: 32, offset: 928)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1739, file: !1740, line: 74, baseType: !1762, size: 64, offset: 960)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1763, line: 152, baseType: !445)
!1763 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1739, file: !1740, line: 77, baseType: !1765, size: 16, offset: 1024)
!1765 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1739, file: !1740, line: 78, baseType: !1510, size: 8, offset: 1040)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1739, file: !1740, line: 79, baseType: !487, size: 8, offset: 1048)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1739, file: !1740, line: 81, baseType: !1769, size: 64, offset: 1088)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1740, line: 43, baseType: null)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1739, file: !1740, line: 89, baseType: !1772, size: 64, offset: 1152)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1763, line: 153, baseType: !445)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1739, file: !1740, line: 91, baseType: !1774, size: 64, offset: 1216)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1740, line: 37, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1739, file: !1740, line: 92, baseType: !1777, size: 64, offset: 1280)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1740, line: 38, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1739, file: !1740, line: 93, baseType: !1758, size: 64, offset: 1344)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1739, file: !1740, line: 94, baseType: !384, size: 64, offset: 1408)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1739, file: !1740, line: 95, baseType: !858, size: 64, offset: 1472)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1739, file: !1740, line: 96, baseType: !380, size: 32, offset: 1536)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1739, file: !1740, line: 98, baseType: !1784, size: 160, offset: 1568)
!1784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 160, elements: !1785)
!1785 = !{!1786}
!1786 = !DISubrange(count: 20)
!1787 = !{!1788}
!1788 = !DILocalVariable(name: "__fp", arg: 1, scope: !1733, file: !1708, line: 56, type: !1736)
!1789 = !DILocation(line: 0, scope: !1733)
!1790 = !DILocation(line: 58, column: 10, scope: !1733)
!1791 = !DILocation(line: 58, column: 3, scope: !1733)
!1792 = distinct !DISubprogram(name: "getc_unlocked", scope: !1708, file: !1708, line: 66, type: !1734, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1793)
!1793 = !{!1794}
!1794 = !DILocalVariable(name: "__fp", arg: 1, scope: !1792, file: !1708, line: 66, type: !1736)
!1795 = !DILocation(line: 0, scope: !1792)
!1796 = !DILocation(line: 68, column: 10, scope: !1792)
!1797 = !DILocation(line: 68, column: 3, scope: !1792)
!1798 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1708, file: !1708, line: 73, type: !1727, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1729)
!1799 = !DILocation(line: 75, column: 10, scope: !1798)
!1800 = !DILocation(line: 75, column: 3, scope: !1798)
!1801 = distinct !DISubprogram(name: "putchar", scope: !1708, file: !1708, line: 82, type: !1802, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1804)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!380, !380}
!1804 = !{!1805}
!1805 = !DILocalVariable(name: "__c", arg: 1, scope: !1801, file: !1708, line: 82, type: !380)
!1806 = !DILocation(line: 0, scope: !1801)
!1807 = !DILocation(line: 84, column: 21, scope: !1801)
!1808 = !DILocation(line: 84, column: 10, scope: !1801)
!1809 = !DILocation(line: 84, column: 3, scope: !1801)
!1810 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1708, file: !1708, line: 91, type: !1811, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!380, !380, !1736}
!1813 = !{!1814, !1815}
!1814 = !DILocalVariable(name: "__c", arg: 1, scope: !1810, file: !1708, line: 91, type: !380)
!1815 = !DILocalVariable(name: "__stream", arg: 2, scope: !1810, file: !1708, line: 91, type: !1736)
!1816 = !DILocation(line: 0, scope: !1810)
!1817 = !DILocation(line: 93, column: 10, scope: !1810)
!1818 = !DILocation(line: 93, column: 3, scope: !1810)
!1819 = distinct !DISubprogram(name: "putc_unlocked", scope: !1708, file: !1708, line: 101, type: !1811, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1820)
!1820 = !{!1821, !1822}
!1821 = !DILocalVariable(name: "__c", arg: 1, scope: !1819, file: !1708, line: 101, type: !380)
!1822 = !DILocalVariable(name: "__stream", arg: 2, scope: !1819, file: !1708, line: 101, type: !1736)
!1823 = !DILocation(line: 0, scope: !1819)
!1824 = !DILocation(line: 103, column: 10, scope: !1819)
!1825 = !DILocation(line: 103, column: 3, scope: !1819)
!1826 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1708, file: !1708, line: 108, type: !1802, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1827)
!1827 = !{!1828}
!1828 = !DILocalVariable(name: "__c", arg: 1, scope: !1826, file: !1708, line: 108, type: !380)
!1829 = !DILocation(line: 0, scope: !1826)
!1830 = !DILocation(line: 110, column: 10, scope: !1826)
!1831 = !DILocation(line: 110, column: 3, scope: !1826)
!1832 = distinct !DISubprogram(name: "getline", scope: !1708, file: !1708, line: 118, type: !1833, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1837)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1835, !381, !1836, !1736}
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1763, line: 193, baseType: !445)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!1837 = !{!1838, !1839, !1840}
!1838 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1832, file: !1708, line: 118, type: !381)
!1839 = !DILocalVariable(name: "__n", arg: 2, scope: !1832, file: !1708, line: 118, type: !1836)
!1840 = !DILocalVariable(name: "__stream", arg: 3, scope: !1832, file: !1708, line: 118, type: !1736)
!1841 = !DILocation(line: 0, scope: !1832)
!1842 = !DILocation(line: 120, column: 10, scope: !1832)
!1843 = !DILocation(line: 120, column: 3, scope: !1832)
!1844 = distinct !DISubprogram(name: "feof_unlocked", scope: !1708, file: !1708, line: 128, type: !1734, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1845)
!1845 = !{!1846}
!1846 = !DILocalVariable(name: "__stream", arg: 1, scope: !1844, file: !1708, line: 128, type: !1736)
!1847 = !DILocation(line: 0, scope: !1844)
!1848 = !DILocation(line: 130, column: 10, scope: !1844)
!1849 = !DILocation(line: 130, column: 3, scope: !1844)
!1850 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1708, file: !1708, line: 135, type: !1734, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1851)
!1851 = !{!1852}
!1852 = !DILocalVariable(name: "__stream", arg: 1, scope: !1850, file: !1708, line: 135, type: !1736)
!1853 = !DILocation(line: 0, scope: !1850)
!1854 = !DILocation(line: 137, column: 10, scope: !1850)
!1855 = !DILocation(line: 137, column: 3, scope: !1850)
!1856 = distinct !DISubprogram(name: "tolower", scope: !1857, file: !1857, line: 207, type: !1802, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1858)
!1857 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1858 = !{!1859}
!1859 = !DILocalVariable(name: "__c", arg: 1, scope: !1856, file: !1857, line: 207, type: !380)
!1860 = !DILocation(line: 0, scope: !1856)
!1861 = !DILocation(line: 209, column: 22, scope: !1856)
!1862 = !DILocation(line: 209, column: 39, scope: !1856)
!1863 = !DILocation(line: 209, column: 38, scope: !1856)
!1864 = !DILocation(line: 209, column: 37, scope: !1856)
!1865 = !DILocation(line: 209, column: 10, scope: !1856)
!1866 = !DILocation(line: 209, column: 3, scope: !1856)
!1867 = distinct !DISubprogram(name: "toupper", scope: !1857, file: !1857, line: 213, type: !1802, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1868)
!1868 = !{!1869}
!1869 = !DILocalVariable(name: "__c", arg: 1, scope: !1867, file: !1857, line: 213, type: !380)
!1870 = !DILocation(line: 0, scope: !1867)
!1871 = !DILocation(line: 215, column: 22, scope: !1867)
!1872 = !DILocation(line: 215, column: 39, scope: !1867)
!1873 = !DILocation(line: 215, column: 38, scope: !1867)
!1874 = !DILocation(line: 215, column: 37, scope: !1867)
!1875 = !DILocation(line: 215, column: 10, scope: !1867)
!1876 = !DILocation(line: 215, column: 3, scope: !1867)
!1877 = distinct !DISubprogram(name: "atoi", scope: !1878, file: !1878, line: 361, type: !1879, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1881)
!1878 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!380, !385}
!1881 = !{!1882}
!1882 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1877, file: !1878, line: 361, type: !385)
!1883 = !DILocation(line: 0, scope: !1877)
!1884 = !DILocation(line: 363, column: 16, scope: !1877)
!1885 = !DILocation(line: 363, column: 10, scope: !1877)
!1886 = !DILocation(line: 363, column: 3, scope: !1877)
!1887 = distinct !DISubprogram(name: "atol", scope: !1878, file: !1878, line: 366, type: !1888, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1890)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!445, !385}
!1890 = !{!1891}
!1891 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1887, file: !1878, line: 366, type: !385)
!1892 = !DILocation(line: 0, scope: !1887)
!1893 = !DILocation(line: 368, column: 10, scope: !1887)
!1894 = !DILocation(line: 368, column: 3, scope: !1887)
!1895 = distinct !DISubprogram(name: "atoll", scope: !1878, file: !1878, line: 373, type: !1896, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1899)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!1898, !385}
!1898 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1899 = !{!1900}
!1900 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1895, file: !1878, line: 373, type: !385)
!1901 = !DILocation(line: 0, scope: !1895)
!1902 = !DILocation(line: 375, column: 10, scope: !1895)
!1903 = !DILocation(line: 375, column: 3, scope: !1895)
!1904 = distinct !DISubprogram(name: "bsearch", scope: !1905, file: !1905, line: 20, type: !1906, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1909)
!1905 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!384, !1155, !1155, !858, !858, !1908}
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1878, line: 808, baseType: !1159)
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919}
!1910 = !DILocalVariable(name: "__key", arg: 1, scope: !1904, file: !1905, line: 20, type: !1155)
!1911 = !DILocalVariable(name: "__base", arg: 2, scope: !1904, file: !1905, line: 20, type: !1155)
!1912 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1904, file: !1905, line: 20, type: !858)
!1913 = !DILocalVariable(name: "__size", arg: 4, scope: !1904, file: !1905, line: 20, type: !858)
!1914 = !DILocalVariable(name: "__compar", arg: 5, scope: !1904, file: !1905, line: 21, type: !1908)
!1915 = !DILocalVariable(name: "__l", scope: !1904, file: !1905, line: 23, type: !858)
!1916 = !DILocalVariable(name: "__u", scope: !1904, file: !1905, line: 23, type: !858)
!1917 = !DILocalVariable(name: "__idx", scope: !1904, file: !1905, line: 23, type: !858)
!1918 = !DILocalVariable(name: "__p", scope: !1904, file: !1905, line: 24, type: !1155)
!1919 = !DILocalVariable(name: "__comparison", scope: !1904, file: !1905, line: 25, type: !380)
!1920 = !DILocation(line: 0, scope: !1904)
!1921 = !DILocation(line: 29, column: 3, scope: !1904)
!1922 = !DILocation(line: 27, column: 7, scope: !1904)
!1923 = !DILocation(line: 29, column: 14, scope: !1904)
!1924 = !DILocation(line: 31, column: 20, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1904, file: !1905, line: 30, column: 5)
!1926 = !DILocation(line: 31, column: 27, scope: !1925)
!1927 = !DILocation(line: 32, column: 56, scope: !1925)
!1928 = !DILocation(line: 32, column: 47, scope: !1925)
!1929 = !DILocation(line: 33, column: 22, scope: !1925)
!1930 = !DILocation(line: 34, column: 24, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1925, file: !1905, line: 34, column: 11)
!1932 = !DILocation(line: 34, column: 11, scope: !1925)
!1933 = !DILocation(line: 36, column: 29, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1931, file: !1905, line: 36, column: 16)
!1935 = !DILocation(line: 36, column: 16, scope: !1931)
!1936 = !DILocation(line: 37, column: 14, scope: !1934)
!1937 = distinct !{!1937, !1921, !1938}
!1938 = !DILocation(line: 40, column: 5, scope: !1904)
!1939 = !DILocation(line: 43, column: 1, scope: !1904)
!1940 = distinct !DISubprogram(name: "atof", scope: !1941, file: !1941, line: 25, type: !1942, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1945)
!1941 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!1944, !385}
!1944 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1945 = !{!1946}
!1946 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1940, file: !1941, line: 25, type: !385)
!1947 = !DILocation(line: 0, scope: !1940)
!1948 = !DILocation(line: 27, column: 10, scope: !1940)
!1949 = !DILocation(line: 27, column: 3, scope: !1940)
!1950 = distinct !DISubprogram(name: "strtoimax", scope: !1951, file: !1951, line: 324, type: !1952, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1958)
!1951 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!1954, !1711, !1957, !380}
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1955, line: 101, baseType: !1956)
!1955 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1763, line: 72, baseType: !445)
!1957 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !381)
!1958 = !{!1959, !1960, !1961}
!1959 = !DILocalVariable(name: "nptr", arg: 1, scope: !1950, file: !1951, line: 324, type: !1711)
!1960 = !DILocalVariable(name: "endptr", arg: 2, scope: !1950, file: !1951, line: 324, type: !1957)
!1961 = !DILocalVariable(name: "base", arg: 3, scope: !1950, file: !1951, line: 324, type: !380)
!1962 = !DILocation(line: 0, scope: !1950)
!1963 = !DILocation(line: 327, column: 10, scope: !1950)
!1964 = !DILocation(line: 327, column: 3, scope: !1950)
!1965 = distinct !DISubprogram(name: "strtoumax", scope: !1951, file: !1951, line: 336, type: !1966, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1970)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!1968, !1711, !1957, !380}
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1955, line: 102, baseType: !1969)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1763, line: 73, baseType: !443)
!1970 = !{!1971, !1972, !1973}
!1971 = !DILocalVariable(name: "nptr", arg: 1, scope: !1965, file: !1951, line: 336, type: !1711)
!1972 = !DILocalVariable(name: "endptr", arg: 2, scope: !1965, file: !1951, line: 336, type: !1957)
!1973 = !DILocalVariable(name: "base", arg: 3, scope: !1965, file: !1951, line: 336, type: !380)
!1974 = !DILocation(line: 0, scope: !1965)
!1975 = !DILocation(line: 339, column: 10, scope: !1965)
!1976 = !DILocation(line: 339, column: 3, scope: !1965)
!1977 = distinct !DISubprogram(name: "wcstoimax", scope: !1951, file: !1951, line: 348, type: !1978, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1987)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!1954, !1980, !1984, !380}
!1980 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1981)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1983)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1951, line: 34, baseType: !380)
!1984 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1985)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1987 = !{!1988, !1989, !1990}
!1988 = !DILocalVariable(name: "nptr", arg: 1, scope: !1977, file: !1951, line: 348, type: !1980)
!1989 = !DILocalVariable(name: "endptr", arg: 2, scope: !1977, file: !1951, line: 348, type: !1984)
!1990 = !DILocalVariable(name: "base", arg: 3, scope: !1977, file: !1951, line: 348, type: !380)
!1991 = !DILocation(line: 0, scope: !1977)
!1992 = !DILocation(line: 351, column: 10, scope: !1977)
!1993 = !DILocation(line: 351, column: 3, scope: !1977)
!1994 = distinct !DISubprogram(name: "wcstoumax", scope: !1951, file: !1951, line: 362, type: !1995, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!1968, !1980, !1984, !380}
!1997 = !{!1998, !1999, !2000}
!1998 = !DILocalVariable(name: "nptr", arg: 1, scope: !1994, file: !1951, line: 362, type: !1980)
!1999 = !DILocalVariable(name: "endptr", arg: 2, scope: !1994, file: !1951, line: 362, type: !1984)
!2000 = !DILocalVariable(name: "base", arg: 3, scope: !1994, file: !1951, line: 362, type: !380)
!2001 = !DILocation(line: 0, scope: !1994)
!2002 = !DILocation(line: 365, column: 10, scope: !1994)
!2003 = !DILocation(line: 365, column: 3, scope: !1994)
!2004 = distinct !DISubprogram(name: "stat", scope: !2005, file: !2005, line: 453, type: !2006, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2005 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!380, !385, !2008}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2010, line: 46, size: 1152, elements: !2011)
!2010 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2011 = !{!2012, !2014, !2016, !2018, !2020, !2022, !2024, !2025, !2026, !2027, !2029, !2031, !2039, !2040, !2041}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2009, file: !2010, line: 48, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1763, line: 145, baseType: !443)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2009, file: !2010, line: 53, baseType: !2015, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1763, line: 148, baseType: !443)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2009, file: !2010, line: 61, baseType: !2017, size: 64, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1763, line: 151, baseType: !443)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2009, file: !2010, line: 62, baseType: !2019, size: 32, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1763, line: 150, baseType: !7)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2009, file: !2010, line: 64, baseType: !2021, size: 32, offset: 224)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1763, line: 146, baseType: !7)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2009, file: !2010, line: 65, baseType: !2023, size: 32, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1763, line: 147, baseType: !7)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2009, file: !2010, line: 67, baseType: !380, size: 32, offset: 288)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2009, file: !2010, line: 69, baseType: !2013, size: 64, offset: 320)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2009, file: !2010, line: 74, baseType: !1762, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2009, file: !2010, line: 78, baseType: !2028, size: 64, offset: 448)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1763, line: 174, baseType: !445)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2009, file: !2010, line: 80, baseType: !2030, size: 64, offset: 512)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1763, line: 179, baseType: !445)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2009, file: !2010, line: 91, baseType: !2032, size: 128, offset: 576)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2033, line: 10, size: 128, elements: !2034)
!2033 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2034 = !{!2035, !2037}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2032, file: !2033, line: 12, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1763, line: 160, baseType: !445)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2032, file: !2033, line: 16, baseType: !2038, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1763, line: 196, baseType: !445)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2009, file: !2010, line: 92, baseType: !2032, size: 128, offset: 704)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2009, file: !2010, line: 93, baseType: !2032, size: 128, offset: 832)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2009, file: !2010, line: 106, baseType: !2042, size: 192, offset: 960)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2038, size: 192, elements: !463)
!2043 = !{!2044, !2045}
!2044 = !DILocalVariable(name: "__path", arg: 1, scope: !2004, file: !2005, line: 453, type: !385)
!2045 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2004, file: !2005, line: 453, type: !2008)
!2046 = !DILocation(line: 0, scope: !2004)
!2047 = !DILocation(line: 455, column: 10, scope: !2004)
!2048 = !DILocation(line: 455, column: 3, scope: !2004)
!2049 = distinct !DISubprogram(name: "lstat", scope: !2005, file: !2005, line: 460, type: !2006, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!2050 = !{!2051, !2052}
!2051 = !DILocalVariable(name: "__path", arg: 1, scope: !2049, file: !2005, line: 460, type: !385)
!2052 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2049, file: !2005, line: 460, type: !2008)
!2053 = !DILocation(line: 0, scope: !2049)
!2054 = !DILocation(line: 462, column: 10, scope: !2049)
!2055 = !DILocation(line: 462, column: 3, scope: !2049)
!2056 = distinct !DISubprogram(name: "fstat", scope: !2005, file: !2005, line: 467, type: !2057, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!380, !380, !2008}
!2059 = !{!2060, !2061}
!2060 = !DILocalVariable(name: "__fd", arg: 1, scope: !2056, file: !2005, line: 467, type: !380)
!2061 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2056, file: !2005, line: 467, type: !2008)
!2062 = !DILocation(line: 0, scope: !2056)
!2063 = !DILocation(line: 469, column: 10, scope: !2056)
!2064 = !DILocation(line: 469, column: 3, scope: !2056)
!2065 = distinct !DISubprogram(name: "fstatat", scope: !2005, file: !2005, line: 474, type: !2066, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!380, !380, !385, !2008, !380}
!2068 = !{!2069, !2070, !2071, !2072}
!2069 = !DILocalVariable(name: "__fd", arg: 1, scope: !2065, file: !2005, line: 474, type: !380)
!2070 = !DILocalVariable(name: "__filename", arg: 2, scope: !2065, file: !2005, line: 474, type: !385)
!2071 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2065, file: !2005, line: 474, type: !2008)
!2072 = !DILocalVariable(name: "__flag", arg: 4, scope: !2065, file: !2005, line: 474, type: !380)
!2073 = !DILocation(line: 0, scope: !2065)
!2074 = !DILocation(line: 477, column: 10, scope: !2065)
!2075 = !DILocation(line: 477, column: 3, scope: !2065)
!2076 = distinct !DISubprogram(name: "mknod", scope: !2005, file: !2005, line: 483, type: !2077, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2079)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!380, !385, !2019, !2013}
!2079 = !{!2080, !2081, !2082}
!2080 = !DILocalVariable(name: "__path", arg: 1, scope: !2076, file: !2005, line: 483, type: !385)
!2081 = !DILocalVariable(name: "__mode", arg: 2, scope: !2076, file: !2005, line: 483, type: !2019)
!2082 = !DILocalVariable(name: "__dev", arg: 3, scope: !2076, file: !2005, line: 483, type: !2013)
!2083 = !DILocation(line: 0, scope: !2076)
!2084 = !DILocation(line: 485, column: 10, scope: !2076)
!2085 = !DILocation(line: 485, column: 3, scope: !2076)
!2086 = distinct !DISubprogram(name: "mknodat", scope: !2005, file: !2005, line: 491, type: !2087, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!380, !380, !385, !2019, !2013}
!2089 = !{!2090, !2091, !2092, !2093}
!2090 = !DILocalVariable(name: "__fd", arg: 1, scope: !2086, file: !2005, line: 491, type: !380)
!2091 = !DILocalVariable(name: "__path", arg: 2, scope: !2086, file: !2005, line: 491, type: !385)
!2092 = !DILocalVariable(name: "__mode", arg: 3, scope: !2086, file: !2005, line: 491, type: !2019)
!2093 = !DILocalVariable(name: "__dev", arg: 4, scope: !2086, file: !2005, line: 491, type: !2013)
!2094 = !DILocation(line: 0, scope: !2086)
!2095 = !DILocation(line: 494, column: 10, scope: !2086)
!2096 = !DILocation(line: 494, column: 3, scope: !2086)
!2097 = distinct !DISubprogram(name: "stat64", scope: !2005, file: !2005, line: 502, type: !2098, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2120)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!380, !385, !2100}
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2010, line: 119, size: 1152, elements: !2102)
!2102 = !{!2103, !2104, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2116, !2117, !2118, !2119}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2101, file: !2010, line: 121, baseType: !2013, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2101, file: !2010, line: 123, baseType: !2105, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1763, line: 149, baseType: !443)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2101, file: !2010, line: 124, baseType: !2017, size: 64, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2101, file: !2010, line: 125, baseType: !2019, size: 32, offset: 192)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2101, file: !2010, line: 132, baseType: !2021, size: 32, offset: 224)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2101, file: !2010, line: 133, baseType: !2023, size: 32, offset: 256)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2101, file: !2010, line: 135, baseType: !380, size: 32, offset: 288)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2101, file: !2010, line: 136, baseType: !2013, size: 64, offset: 320)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2101, file: !2010, line: 137, baseType: !1762, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2101, file: !2010, line: 143, baseType: !2028, size: 64, offset: 448)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2101, file: !2010, line: 144, baseType: !2115, size: 64, offset: 512)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1763, line: 180, baseType: !445)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2101, file: !2010, line: 152, baseType: !2032, size: 128, offset: 576)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2101, file: !2010, line: 153, baseType: !2032, size: 128, offset: 704)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2101, file: !2010, line: 154, baseType: !2032, size: 128, offset: 832)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2101, file: !2010, line: 164, baseType: !2042, size: 192, offset: 960)
!2120 = !{!2121, !2122}
!2121 = !DILocalVariable(name: "__path", arg: 1, scope: !2097, file: !2005, line: 502, type: !385)
!2122 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2097, file: !2005, line: 502, type: !2100)
!2123 = !DILocation(line: 0, scope: !2097)
!2124 = !DILocation(line: 504, column: 10, scope: !2097)
!2125 = !DILocation(line: 504, column: 3, scope: !2097)
!2126 = distinct !DISubprogram(name: "lstat64", scope: !2005, file: !2005, line: 509, type: !2098, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2127)
!2127 = !{!2128, !2129}
!2128 = !DILocalVariable(name: "__path", arg: 1, scope: !2126, file: !2005, line: 509, type: !385)
!2129 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2126, file: !2005, line: 509, type: !2100)
!2130 = !DILocation(line: 0, scope: !2126)
!2131 = !DILocation(line: 511, column: 10, scope: !2126)
!2132 = !DILocation(line: 511, column: 3, scope: !2126)
!2133 = distinct !DISubprogram(name: "fstat64", scope: !2005, file: !2005, line: 516, type: !2134, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2136)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!380, !380, !2100}
!2136 = !{!2137, !2138}
!2137 = !DILocalVariable(name: "__fd", arg: 1, scope: !2133, file: !2005, line: 516, type: !380)
!2138 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2133, file: !2005, line: 516, type: !2100)
!2139 = !DILocation(line: 0, scope: !2133)
!2140 = !DILocation(line: 518, column: 10, scope: !2133)
!2141 = !DILocation(line: 518, column: 3, scope: !2133)
!2142 = distinct !DISubprogram(name: "fstatat64", scope: !2005, file: !2005, line: 523, type: !2143, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!380, !380, !385, !2100, !380}
!2145 = !{!2146, !2147, !2148, !2149}
!2146 = !DILocalVariable(name: "__fd", arg: 1, scope: !2142, file: !2005, line: 523, type: !380)
!2147 = !DILocalVariable(name: "__filename", arg: 2, scope: !2142, file: !2005, line: 523, type: !385)
!2148 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2142, file: !2005, line: 523, type: !2100)
!2149 = !DILocalVariable(name: "__flag", arg: 4, scope: !2142, file: !2005, line: 523, type: !380)
!2150 = !DILocation(line: 0, scope: !2142)
!2151 = !DILocation(line: 526, column: 10, scope: !2142)
!2152 = !DILocation(line: 526, column: 3, scope: !2142)
!2153 = distinct !DISubprogram(name: "init_phinodes", scope: !3, file: !3, line: 93, type: !2154, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2156)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{null}
!2156 = !{!2157}
!2157 = !DILocalVariable(name: "i", scope: !2153, file: !3, line: 95, type: !380)
!2158 = !DILocation(line: 0, scope: !2153)
!2159 = !DILocation(line: 97, column: 8, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 97, column: 3)
!2161 = !DILocation(line: 0, scope: !2160)
!2162 = !DILocation(line: 97, column: 17, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 97, column: 3)
!2164 = !DILocation(line: 97, column: 3, scope: !2160)
!2165 = !DILocation(line: 98, column: 5, scope: !2163)
!2166 = !DILocation(line: 98, column: 22, scope: !2163)
!2167 = !DILocation(line: 97, column: 37, scope: !2163)
!2168 = !DILocation(line: 97, column: 3, scope: !2163)
!2169 = distinct !{!2169, !2164, !2170}
!2170 = !DILocation(line: 98, column: 24, scope: !2160)
!2171 = !DILocation(line: 99, column: 22, scope: !2153)
!2172 = !DILocation(line: 100, column: 1, scope: !2153)
!2173 = distinct !DISubprogram(name: "fini_phinodes", scope: !3, file: !3, line: 105, type: !2154, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2174)
!2174 = !{!2175}
!2175 = !DILocalVariable(name: "i", scope: !2173, file: !3, line: 107, type: !380)
!2176 = !DILocation(line: 0, scope: !2173)
!2177 = !DILocation(line: 109, column: 8, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 109, column: 3)
!2179 = !DILocation(line: 0, scope: !2178)
!2180 = !DILocation(line: 109, column: 17, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 109, column: 3)
!2182 = !DILocation(line: 109, column: 3, scope: !2178)
!2183 = !DILocation(line: 110, column: 5, scope: !2181)
!2184 = !DILocation(line: 110, column: 22, scope: !2181)
!2185 = !DILocation(line: 109, column: 37, scope: !2181)
!2186 = !DILocation(line: 109, column: 3, scope: !2181)
!2187 = distinct !{!2187, !2182, !2188}
!2188 = !DILocation(line: 110, column: 24, scope: !2178)
!2189 = !DILocation(line: 111, column: 22, scope: !2173)
!2190 = !DILocation(line: 112, column: 1, scope: !2173)
!2191 = distinct !DISubprogram(name: "make_phi_node", scope: !3, file: !3, line: 208, type: !2192, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2194)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!712, !389, !380}
!2194 = !{!2195, !2196, !2197, !2198, !2199, !2200}
!2195 = !DILocalVariable(name: "var", arg: 1, scope: !2191, file: !3, line: 208, type: !389)
!2196 = !DILocalVariable(name: "len", arg: 2, scope: !2191, file: !3, line: 208, type: !380)
!2197 = !DILocalVariable(name: "phi", scope: !2191, file: !3, line: 210, type: !712)
!2198 = !DILocalVariable(name: "capacity", scope: !2191, file: !3, line: 211, type: !380)
!2199 = !DILocalVariable(name: "i", scope: !2191, file: !3, line: 211, type: !380)
!2200 = !DILocalVariable(name: "imm", scope: !2201, file: !3, line: 233, type: !2204)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 232, column: 5)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 231, column: 3)
!2203 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 231, column: 3)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !743, line: 30, baseType: !2205)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !151, line: 1893, baseType: !754)
!2207 = !DILocation(line: 0, scope: !2191)
!2208 = !DILocation(line: 213, column: 14, scope: !2191)
!2209 = !DILocation(line: 215, column: 28, scope: !2191)
!2210 = !DILocation(line: 215, column: 9, scope: !2191)
!2211 = !DILocation(line: 220, column: 11, scope: !2191)
!2212 = !DILocation(line: 222, column: 36, scope: !2191)
!2213 = !DILocation(line: 222, column: 34, scope: !2191)
!2214 = !DILocation(line: 222, column: 6, scope: !2191)
!2215 = !DILocation(line: 220, column: 3, scope: !2191)
!2216 = !DILocation(line: 223, column: 15, scope: !2191)
!2217 = !DILocation(line: 223, column: 20, scope: !2191)
!2218 = !DILocation(line: 224, column: 19, scope: !2191)
!2219 = !DILocation(line: 224, column: 25, scope: !2191)
!2220 = !DILocation(line: 225, column: 19, scope: !2191)
!2221 = !DILocation(line: 225, column: 28, scope: !2191)
!2222 = !DILocation(line: 226, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 226, column: 7)
!2224 = !DILocation(line: 226, column: 23, scope: !2223)
!2225 = !DILocation(line: 226, column: 7, scope: !2191)
!2226 = !DILocation(line: 227, column: 5, scope: !2223)
!2227 = !DILocation(line: 229, column: 33, scope: !2223)
!2228 = !DILocation(line: 229, column: 5, scope: !2223)
!2229 = !DILocation(line: 231, column: 8, scope: !2203)
!2230 = !DILocation(line: 0, scope: !2203)
!2231 = !DILocation(line: 231, column: 17, scope: !2202)
!2232 = !DILocation(line: 231, column: 3, scope: !2203)
!2233 = !DILocation(line: 235, column: 7, scope: !2201)
!2234 = !DILocation(line: 236, column: 13, scope: !2201)
!2235 = !DILocation(line: 0, scope: !2201)
!2236 = !DILocation(line: 237, column: 18, scope: !2201)
!2237 = !DILocation(line: 237, column: 12, scope: !2201)
!2238 = !DILocation(line: 237, column: 16, scope: !2201)
!2239 = !DILocation(line: 238, column: 12, scope: !2201)
!2240 = !DILocation(line: 238, column: 17, scope: !2201)
!2241 = !DILocation(line: 239, column: 12, scope: !2201)
!2242 = !DILocation(line: 239, column: 17, scope: !2201)
!2243 = !DILocation(line: 240, column: 16, scope: !2201)
!2244 = !DILocation(line: 240, column: 21, scope: !2201)
!2245 = !DILocation(line: 231, column: 30, scope: !2202)
!2246 = !DILocation(line: 231, column: 3, scope: !2202)
!2247 = distinct !{!2247, !2232, !2248}
!2248 = !DILocation(line: 241, column: 5, scope: !2203)
!2249 = !DILocation(line: 243, column: 3, scope: !2191)
!2250 = distinct !DISubprogram(name: "ideal_phi_node_len", scope: !3, file: !3, line: 182, type: !1802, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2251)
!2251 = !{!2252, !2253, !2254, !2255, !2256}
!2252 = !DILocalVariable(name: "len", arg: 1, scope: !2250, file: !3, line: 182, type: !380)
!2253 = !DILocalVariable(name: "size", scope: !2250, file: !3, line: 184, type: !858)
!2254 = !DILocalVariable(name: "new_size", scope: !2250, file: !3, line: 184, type: !858)
!2255 = !DILocalVariable(name: "log2", scope: !2250, file: !3, line: 185, type: !380)
!2256 = !DILocalVariable(name: "new_len", scope: !2250, file: !3, line: 185, type: !380)
!2257 = !DILocation(line: 0, scope: !2250)
!2258 = !DILocation(line: 188, column: 7, scope: !2250)
!2259 = !DILocation(line: 193, column: 10, scope: !2250)
!2260 = !DILocation(line: 193, column: 5, scope: !2250)
!2261 = !DILocation(line: 193, column: 15, scope: !2250)
!2262 = !DILocation(line: 193, column: 3, scope: !2250)
!2263 = !DILocation(line: 196, column: 10, scope: !2250)
!2264 = !DILocation(line: 197, column: 16, scope: !2250)
!2265 = !DILocation(line: 197, column: 14, scope: !2250)
!2266 = !DILocation(line: 201, column: 29, scope: !2250)
!2267 = !DILocation(line: 201, column: 37, scope: !2250)
!2268 = !DILocation(line: 201, column: 13, scope: !2250)
!2269 = !DILocation(line: 202, column: 3, scope: !2250)
!2270 = distinct !DISubprogram(name: "allocate_phi_node", scope: !3, file: !3, line: 130, type: !2271, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!712, !858}
!2273 = !{!2274, !2275, !2276, !2277}
!2274 = !DILocalVariable(name: "len", arg: 1, scope: !2270, file: !3, line: 130, type: !858)
!2275 = !DILocalVariable(name: "phi", scope: !2270, file: !3, line: 132, type: !712)
!2276 = !DILocalVariable(name: "bucket", scope: !2270, file: !3, line: 133, type: !858)
!2277 = !DILocalVariable(name: "size", scope: !2270, file: !3, line: 134, type: !858)
!2278 = !DILocation(line: 0, scope: !2270)
!2279 = !DILocation(line: 135, column: 22, scope: !2270)
!2280 = !DILocation(line: 135, column: 10, scope: !2270)
!2281 = !DILocation(line: 137, column: 7, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 137, column: 7)
!2283 = !DILocation(line: 137, column: 7, scope: !2270)
!2284 = !DILocation(line: 138, column: 23, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 138, column: 5)
!2286 = !DILocation(line: 138, column: 10, scope: !2285)
!2287 = !DILocation(line: 0, scope: !2285)
!2288 = !DILocation(line: 138, column: 35, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 138, column: 5)
!2290 = !DILocation(line: 138, column: 5, scope: !2285)
!2291 = !DILocation(line: 139, column: 11, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 139, column: 11)
!2293 = !DILocation(line: 139, column: 11, scope: !2289)
!2294 = !DILocation(line: 138, column: 60, scope: !2289)
!2295 = !DILocation(line: 138, column: 5, scope: !2289)
!2296 = distinct !{!2296, !2290, !2297}
!2297 = !DILocation(line: 140, column: 2, scope: !2285)
!2298 = !DILocation(line: 143, column: 14, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 143, column: 7)
!2300 = !DILocation(line: 144, column: 7, scope: !2299)
!2301 = !DILocation(line: 144, column: 31, scope: !2299)
!2302 = !DILocation(line: 144, column: 10, scope: !2299)
!2303 = !DILocation(line: 145, column: 3, scope: !2299)
!2304 = !DILocation(line: 143, column: 7, scope: !2270)
!2305 = !DILocation(line: 147, column: 25, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 146, column: 5)
!2307 = !DILocation(line: 148, column: 13, scope: !2306)
!2308 = !DILocation(line: 149, column: 11, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 149, column: 11)
!2310 = !DILocation(line: 149, column: 11, scope: !2306)
!2311 = !DILocation(line: 150, column: 2, scope: !2309)
!2312 = !DILocation(line: 157, column: 22, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 156, column: 5)
!2314 = !DILocation(line: 157, column: 13, scope: !2313)
!2315 = !DILocation(line: 0, scope: !2299)
!2316 = !DILocation(line: 168, column: 3, scope: !2270)
!2317 = distinct !DISubprogram(name: "gimple_phi_set_result", scope: !704, file: !704, line: 3089, type: !2318, scopeLine: 3090, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{null, !712, !389}
!2320 = !{!2321, !2322}
!2321 = !DILocalVariable(name: "gs", arg: 1, scope: !2317, file: !704, line: 3089, type: !712)
!2322 = !DILocalVariable(name: "result", arg: 2, scope: !2317, file: !704, line: 3089, type: !389)
!2323 = !DILocation(line: 0, scope: !2317)
!2324 = !DILocation(line: 3092, column: 18, scope: !2317)
!2325 = !DILocation(line: 3092, column: 25, scope: !2317)
!2326 = !DILocation(line: 3093, column: 1, scope: !2317)
!2327 = distinct !DISubprogram(name: "make_ssa_name", scope: !2328, file: !2328, line: 1245, type: !2329, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2331)
!2328 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!389, !389, !712}
!2331 = !{!2332, !2333}
!2332 = !DILocalVariable(name: "var", arg: 1, scope: !2327, file: !2328, line: 1245, type: !389)
!2333 = !DILocalVariable(name: "stmt", arg: 2, scope: !2327, file: !2328, line: 1245, type: !712)
!2334 = !DILocation(line: 0, scope: !2327)
!2335 = !DILocation(line: 1247, column: 28, scope: !2327)
!2336 = !DILocation(line: 1247, column: 10, scope: !2327)
!2337 = !DILocation(line: 1247, column: 3, scope: !2327)
!2338 = distinct !DISubprogram(name: "gimple_phi_arg_set_location", scope: !2328, file: !2328, line: 491, type: !2339, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null, !712, !858, !387}
!2341 = !{!2342, !2343, !2344}
!2342 = !DILocalVariable(name: "gs", arg: 1, scope: !2338, file: !2328, line: 491, type: !712)
!2343 = !DILocalVariable(name: "i", arg: 2, scope: !2338, file: !2328, line: 491, type: !858)
!2344 = !DILocalVariable(name: "loc", arg: 3, scope: !2338, file: !2328, line: 491, type: !387)
!2345 = !DILocation(line: 0, scope: !2338)
!2346 = !DILocation(line: 493, column: 23, scope: !2338)
!2347 = !DILocation(line: 493, column: 3, scope: !2338)
!2348 = !DILocation(line: 493, column: 27, scope: !2338)
!2349 = !DILocation(line: 493, column: 33, scope: !2338)
!2350 = !DILocation(line: 494, column: 1, scope: !2338)
!2351 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2328, file: !2328, line: 442, type: !2352, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2354)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!2204, !712, !380}
!2354 = !{!2355, !2356}
!2355 = !DILocalVariable(name: "gs", arg: 1, scope: !2351, file: !2328, line: 442, type: !712)
!2356 = !DILocalVariable(name: "i", arg: 2, scope: !2351, file: !2328, line: 442, type: !380)
!2357 = !DILocation(line: 0, scope: !2351)
!2358 = !DILocation(line: 444, column: 11, scope: !2351)
!2359 = !DILocation(line: 444, column: 35, scope: !2351)
!2360 = !DILocation(line: 444, column: 3, scope: !2351)
!2361 = distinct !DISubprogram(name: "gimple_phi_arg_def_ptr", scope: !2328, file: !2328, line: 459, type: !2362, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!747, !712, !858}
!2364 = !{!2365, !2366}
!2365 = !DILocalVariable(name: "gs", arg: 1, scope: !2361, file: !2328, line: 459, type: !712)
!2366 = !DILocalVariable(name: "index", arg: 2, scope: !2361, file: !2328, line: 459, type: !858)
!2367 = !DILocation(line: 0, scope: !2361)
!2368 = !DILocation(line: 461, column: 31, scope: !2361)
!2369 = !DILocation(line: 461, column: 11, scope: !2361)
!2370 = !DILocation(line: 461, column: 39, scope: !2361)
!2371 = !DILocation(line: 461, column: 3, scope: !2361)
!2372 = distinct !DISubprogram(name: "release_phi_node", scope: !3, file: !3, line: 249, type: !2373, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2375)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !712}
!2375 = !{!2376, !2377, !2378, !2379, !2380}
!2376 = !DILocalVariable(name: "phi", arg: 1, scope: !2372, file: !3, line: 249, type: !712)
!2377 = !DILocalVariable(name: "bucket", scope: !2372, file: !3, line: 251, type: !858)
!2378 = !DILocalVariable(name: "len", scope: !2372, file: !3, line: 252, type: !858)
!2379 = !DILocalVariable(name: "x", scope: !2372, file: !3, line: 253, type: !858)
!2380 = !DILocalVariable(name: "imm", scope: !2381, file: !3, line: 257, type: !2204)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 256, column: 5)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 255, column: 3)
!2383 = distinct !DILexicalBlock(scope: !2372, file: !3, line: 255, column: 3)
!2384 = !DILocation(line: 0, scope: !2372)
!2385 = !DILocation(line: 252, column: 16, scope: !2372)
!2386 = !DILocation(line: 255, column: 8, scope: !2383)
!2387 = !DILocation(line: 0, scope: !2383)
!2388 = !DILocation(line: 255, column: 19, scope: !2382)
!2389 = !DILocation(line: 255, column: 17, scope: !2382)
!2390 = !DILocation(line: 255, column: 3, scope: !2383)
!2391 = !DILocation(line: 258, column: 46, scope: !2381)
!2392 = !DILocation(line: 258, column: 13, scope: !2381)
!2393 = !DILocation(line: 0, scope: !2381)
!2394 = !DILocation(line: 259, column: 7, scope: !2381)
!2395 = !DILocation(line: 255, column: 47, scope: !2382)
!2396 = !DILocation(line: 255, column: 3, scope: !2382)
!2397 = distinct !{!2397, !2390, !2398}
!2398 = !DILocation(line: 260, column: 5, scope: !2383)
!2399 = !DILocation(line: 262, column: 12, scope: !2372)
!2400 = !DILocation(line: 263, column: 10, scope: !2372)
!2401 = !DILocation(line: 264, column: 3, scope: !2372)
!2402 = !DILocation(line: 265, column: 21, scope: !2372)
!2403 = !DILocation(line: 266, column: 1, scope: !2372)
!2404 = distinct !DISubprogram(name: "gimple_phi_capacity", scope: !704, file: !704, line: 3049, type: !2405, scopeLine: 3050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2410)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!7, !2407}
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !390, line: 60, baseType: !2408)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!2410 = !{!2411}
!2411 = !DILocalVariable(name: "gs", arg: 1, scope: !2404, file: !704, line: 3049, type: !2407)
!2412 = !DILocation(line: 0, scope: !2404)
!2413 = !DILocation(line: 3052, column: 25, scope: !2404)
!2414 = !DILocation(line: 3052, column: 3, scope: !2404)
!2415 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !704, file: !704, line: 3061, type: !2405, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2416)
!2416 = !{!2417}
!2417 = !DILocalVariable(name: "gs", arg: 1, scope: !2415, file: !704, line: 3061, type: !2407)
!2418 = !DILocation(line: 0, scope: !2415)
!2419 = !DILocation(line: 3064, column: 25, scope: !2415)
!2420 = !DILocation(line: 3064, column: 3, scope: !2415)
!2421 = distinct !DISubprogram(name: "delink_imm_use", scope: !2328, file: !2328, line: 188, type: !2422, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{null, !2205}
!2424 = !{!2425}
!2425 = !DILocalVariable(name: "linknode", arg: 1, scope: !2421, file: !2328, line: 188, type: !2205)
!2426 = !DILocation(line: 0, scope: !2421)
!2427 = !DILocation(line: 191, column: 17, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2421, file: !2328, line: 191, column: 7)
!2429 = !DILocation(line: 191, column: 22, scope: !2428)
!2430 = !DILocation(line: 191, column: 7, scope: !2421)
!2431 = !DILocation(line: 194, column: 36, scope: !2421)
!2432 = !DILocation(line: 194, column: 19, scope: !2421)
!2433 = !DILocation(line: 194, column: 24, scope: !2421)
!2434 = !DILocation(line: 195, column: 36, scope: !2421)
!2435 = !DILocation(line: 195, column: 13, scope: !2421)
!2436 = !DILocation(line: 195, column: 24, scope: !2421)
!2437 = !DILocation(line: 196, column: 18, scope: !2421)
!2438 = !DILocation(line: 197, column: 18, scope: !2421)
!2439 = !DILocation(line: 198, column: 1, scope: !2421)
!2440 = distinct !DISubprogram(name: "VEC_gimple_gc_safe_push", scope: !704, file: !704, line: 35, type: !2441, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2445)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!2443, !2444, !712}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!2445 = !{!2446, !2447}
!2446 = !DILocalVariable(name: "vec_", arg: 1, scope: !2440, file: !704, line: 35, type: !2444)
!2447 = !DILocalVariable(name: "obj_", arg: 2, scope: !2440, file: !704, line: 35, type: !712)
!2448 = !DILocation(line: 0, scope: !2440)
!2449 = !DILocation(line: 35, column: 1, scope: !2440)
!2450 = distinct !DISubprogram(name: "reserve_phi_args_for_new_edge", scope: !3, file: !3, line: 319, type: !2451, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null, !1112}
!2453 = !{!2454, !2455, !2456, !2457, !2464, !2468}
!2454 = !DILocalVariable(name: "bb", arg: 1, scope: !2450, file: !3, line: 319, type: !1112)
!2455 = !DILocalVariable(name: "len", scope: !2450, file: !3, line: 321, type: !858)
!2456 = !DILocalVariable(name: "cap", scope: !2450, file: !3, line: 322, type: !858)
!2457 = !DILocalVariable(name: "gsi", scope: !2450, file: !3, line: 323, type: !2458)
!2458 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !704, line: 265, baseType: !2459)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !704, line: 254, size: 192, elements: !2460)
!2460 = !{!2461, !2462, !2463}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2459, file: !704, line: 257, baseType: !707, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2459, file: !704, line: 263, baseType: !701, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2459, file: !704, line: 264, baseType: !1112, size: 64, offset: 128)
!2464 = !DILocalVariable(name: "loc", scope: !2465, file: !3, line: 327, type: !2443)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 326, column: 5)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 325, column: 3)
!2467 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 325, column: 3)
!2468 = !DILocalVariable(name: "old_phi", scope: !2469, file: !3, line: 331, type: !712)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 330, column: 2)
!2470 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 329, column: 11)
!2471 = !DILocation(line: 0, scope: !2450)
!2472 = !DILocation(line: 321, column: 16, scope: !2450)
!2473 = !DILocation(line: 322, column: 40, scope: !2450)
!2474 = !DILocation(line: 322, column: 16, scope: !2450)
!2475 = !DILocation(line: 323, column: 3, scope: !2450)
!2476 = !DILocation(line: 325, column: 14, scope: !2467)
!2477 = !DILocation(line: 0, scope: !2465)
!2478 = !DILocation(line: 325, column: 8, scope: !2467)
!2479 = !DILocation(line: 325, column: 36, scope: !2466)
!2480 = !DILocation(line: 325, column: 35, scope: !2466)
!2481 = !DILocation(line: 325, column: 3, scope: !2467)
!2482 = !DILocation(line: 327, column: 21, scope: !2465)
!2483 = !DILocation(line: 329, column: 38, scope: !2470)
!2484 = !DILocation(line: 329, column: 17, scope: !2470)
!2485 = !DILocation(line: 329, column: 15, scope: !2470)
!2486 = !DILocation(line: 329, column: 11, scope: !2465)
!2487 = !DILocation(line: 331, column: 21, scope: !2469)
!2488 = !DILocation(line: 0, scope: !2469)
!2489 = !DILocation(line: 333, column: 4, scope: !2469)
!2490 = !DILocation(line: 336, column: 51, scope: !2469)
!2491 = !DILocation(line: 336, column: 4, scope: !2469)
!2492 = !DILocation(line: 336, column: 49, scope: !2469)
!2493 = !DILocation(line: 338, column: 4, scope: !2469)
!2494 = !DILocation(line: 339, column: 2, scope: !2469)
!2495 = !DILocation(line: 348, column: 7, scope: !2465)
!2496 = !DILocation(line: 350, column: 8, scope: !2465)
!2497 = !DILocation(line: 350, column: 26, scope: !2465)
!2498 = !DILocation(line: 350, column: 31, scope: !2465)
!2499 = !DILocation(line: 325, column: 53, scope: !2466)
!2500 = !DILocation(line: 325, column: 3, scope: !2466)
!2501 = distinct !{!2501, !2481, !2502}
!2502 = !DILocation(line: 351, column: 5, scope: !2467)
!2503 = !DILocation(line: 352, column: 1, scope: !2450)
!2504 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !135, file: !135, line: 150, type: !2505, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2509)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!7, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!2509 = !{!2510}
!2510 = !DILocalVariable(name: "vec_", arg: 1, scope: !2504, file: !135, line: 150, type: !2507)
!2511 = !DILocation(line: 0, scope: !2504)
!2512 = !DILocation(line: 150, column: 1, scope: !2504)
!2513 = distinct !DISubprogram(name: "gsi_end_p", scope: !704, file: !704, line: 4467, type: !2514, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!379, !2458}
!2516 = !{!2517}
!2517 = !DILocalVariable(name: "i", arg: 1, scope: !2513, file: !704, line: 4467, type: !2458)
!2518 = !DILocation(line: 4467, column: 33, scope: !2513)
!2519 = !DILocation(line: 4469, column: 12, scope: !2513)
!2520 = !DILocation(line: 4469, column: 16, scope: !2513)
!2521 = !DILocation(line: 4469, column: 10, scope: !2513)
!2522 = !DILocation(line: 4469, column: 3, scope: !2513)
!2523 = distinct !DISubprogram(name: "gsi_stmt_ptr", scope: !704, file: !704, line: 4579, type: !2524, scopeLine: 4580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2527)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!2443, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2527 = !{!2528}
!2528 = !DILocalVariable(name: "i", arg: 1, scope: !2523, file: !704, line: 4579, type: !2526)
!2529 = !DILocation(line: 0, scope: !2523)
!2530 = !DILocation(line: 4581, column: 14, scope: !2523)
!2531 = !DILocation(line: 4581, column: 19, scope: !2523)
!2532 = !DILocation(line: 4581, column: 3, scope: !2523)
!2533 = distinct !DISubprogram(name: "resize_phi_node", scope: !3, file: !3, line: 273, type: !2534, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{null, !2443, !858}
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2542, !2546, !2547}
!2537 = !DILocalVariable(name: "phi", arg: 1, scope: !2533, file: !3, line: 273, type: !2443)
!2538 = !DILocalVariable(name: "len", arg: 2, scope: !2533, file: !3, line: 273, type: !858)
!2539 = !DILocalVariable(name: "old_size", scope: !2533, file: !3, line: 275, type: !858)
!2540 = !DILocalVariable(name: "i", scope: !2533, file: !3, line: 275, type: !858)
!2541 = !DILocalVariable(name: "new_phi", scope: !2533, file: !3, line: 276, type: !712)
!2542 = !DILocalVariable(name: "imm", scope: !2543, file: !3, line: 292, type: !2204)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 291, column: 5)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 290, column: 3)
!2545 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 290, column: 3)
!2546 = !DILocalVariable(name: "old_imm", scope: !2543, file: !3, line: 292, type: !2204)
!2547 = !DILocalVariable(name: "imm", scope: !2548, file: !3, line: 303, type: !2204)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 302, column: 5)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 301, column: 3)
!2550 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 301, column: 3)
!2551 = !DILocation(line: 0, scope: !2533)
!2552 = !DILocation(line: 278, column: 3, scope: !2533)
!2553 = !DILocation(line: 284, column: 31, scope: !2533)
!2554 = !DILocation(line: 284, column: 10, scope: !2533)
!2555 = !DILocation(line: 284, column: 37, scope: !2533)
!2556 = !DILocation(line: 284, column: 9, scope: !2533)
!2557 = !DILocation(line: 284, column: 42, scope: !2533)
!2558 = !DILocation(line: 284, column: 7, scope: !2533)
!2559 = !DILocation(line: 286, column: 13, scope: !2533)
!2560 = !DILocation(line: 288, column: 11, scope: !2533)
!2561 = !DILocation(line: 288, column: 20, scope: !2533)
!2562 = !DILocation(line: 288, column: 3, scope: !2533)
!2563 = !DILocation(line: 290, column: 8, scope: !2545)
!2564 = !DILocation(line: 0, scope: !2545)
!2565 = !DILocation(line: 290, column: 19, scope: !2544)
!2566 = !DILocation(line: 290, column: 17, scope: !2544)
!2567 = !DILocation(line: 290, column: 3, scope: !2545)
!2568 = !DILocation(line: 293, column: 50, scope: !2543)
!2569 = !DILocation(line: 293, column: 13, scope: !2543)
!2570 = !DILocation(line: 0, scope: !2543)
!2571 = !DILocation(line: 294, column: 45, scope: !2543)
!2572 = !DILocation(line: 294, column: 17, scope: !2543)
!2573 = !DILocation(line: 295, column: 18, scope: !2543)
!2574 = !DILocation(line: 295, column: 12, scope: !2543)
!2575 = !DILocation(line: 295, column: 16, scope: !2543)
!2576 = !DILocation(line: 296, column: 7, scope: !2543)
!2577 = !DILocation(line: 290, column: 51, scope: !2544)
!2578 = !DILocation(line: 290, column: 3, scope: !2544)
!2579 = distinct !{!2579, !2567, !2580}
!2580 = !DILocation(line: 297, column: 5, scope: !2545)
!2581 = !DILocation(line: 299, column: 34, scope: !2533)
!2582 = !DILocation(line: 299, column: 23, scope: !2533)
!2583 = !DILocation(line: 299, column: 32, scope: !2533)
!2584 = !DILocation(line: 301, column: 12, scope: !2550)
!2585 = !DILocation(line: 301, column: 8, scope: !2550)
!2586 = !DILocation(line: 0, scope: !2550)
!2587 = !DILocation(line: 301, column: 45, scope: !2549)
!2588 = !DILocation(line: 301, column: 3, scope: !2550)
!2589 = !DILocation(line: 305, column: 7, scope: !2548)
!2590 = !DILocation(line: 306, column: 50, scope: !2548)
!2591 = !DILocation(line: 306, column: 13, scope: !2548)
!2592 = !DILocation(line: 0, scope: !2548)
!2593 = !DILocation(line: 307, column: 18, scope: !2548)
!2594 = !DILocation(line: 307, column: 12, scope: !2548)
!2595 = !DILocation(line: 307, column: 16, scope: !2548)
!2596 = !DILocation(line: 308, column: 12, scope: !2548)
!2597 = !DILocation(line: 308, column: 17, scope: !2548)
!2598 = !DILocation(line: 309, column: 12, scope: !2548)
!2599 = !DILocation(line: 309, column: 17, scope: !2548)
!2600 = !DILocation(line: 310, column: 16, scope: !2548)
!2601 = !DILocation(line: 310, column: 21, scope: !2548)
!2602 = !DILocation(line: 301, column: 53, scope: !2549)
!2603 = !DILocation(line: 301, column: 3, scope: !2549)
!2604 = distinct !{!2604, !2588, !2605}
!2605 = !DILocation(line: 311, column: 5, scope: !2550)
!2606 = !DILocation(line: 313, column: 8, scope: !2533)
!2607 = !DILocation(line: 314, column: 1, scope: !2533)
!2608 = distinct !DISubprogram(name: "gimple_phi_result", scope: !704, file: !704, line: 3071, type: !2609, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2611)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!389, !2407}
!2611 = !{!2612}
!2612 = !DILocalVariable(name: "gs", arg: 1, scope: !2608, file: !704, line: 3071, type: !2407)
!2613 = !DILocation(line: 0, scope: !2608)
!2614 = !DILocation(line: 3074, column: 25, scope: !2608)
!2615 = !DILocation(line: 3074, column: 3, scope: !2608)
!2616 = distinct !DISubprogram(name: "set_ssa_use_from_ptr", scope: !2328, file: !2328, line: 233, type: !2617, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{null, !2204, !389}
!2619 = !{!2620, !2621}
!2620 = !DILocalVariable(name: "use", arg: 1, scope: !2616, file: !2328, line: 233, type: !2204)
!2621 = !DILocalVariable(name: "val", arg: 2, scope: !2616, file: !2328, line: 233, type: !389)
!2622 = !DILocation(line: 0, scope: !2616)
!2623 = !DILocation(line: 235, column: 3, scope: !2616)
!2624 = !DILocation(line: 236, column: 10, scope: !2616)
!2625 = !DILocation(line: 236, column: 15, scope: !2616)
!2626 = !DILocation(line: 237, column: 3, scope: !2616)
!2627 = !DILocation(line: 238, column: 1, scope: !2616)
!2628 = distinct !DISubprogram(name: "gsi_next", scope: !704, file: !704, line: 4485, type: !2629, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{null, !2526}
!2631 = !{!2632}
!2632 = !DILocalVariable(name: "i", arg: 1, scope: !2628, file: !704, line: 4485, type: !2526)
!2633 = !DILocation(line: 0, scope: !2628)
!2634 = !DILocation(line: 4487, column: 15, scope: !2628)
!2635 = !DILocation(line: 4487, column: 20, scope: !2628)
!2636 = !DILocation(line: 4487, column: 10, scope: !2628)
!2637 = !DILocation(line: 4488, column: 1, scope: !2628)
!2638 = distinct !DISubprogram(name: "add_phi_node_to_bb", scope: !3, file: !3, line: 357, type: !2639, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !712, !1112}
!2641 = !{!2642, !2643, !2644}
!2642 = !DILocalVariable(name: "phi", arg: 1, scope: !2638, file: !3, line: 357, type: !712)
!2643 = !DILocalVariable(name: "bb", arg: 2, scope: !2638, file: !3, line: 357, type: !1112)
!2644 = !DILocalVariable(name: "gsi", scope: !2638, file: !3, line: 359, type: !2458)
!2645 = !DILocation(line: 0, scope: !2638)
!2646 = !DILocation(line: 359, column: 3, scope: !2638)
!2647 = !DILocation(line: 361, column: 7, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 361, column: 7)
!2649 = !DILocation(line: 361, column: 22, scope: !2648)
!2650 = !DILocation(line: 361, column: 7, scope: !2638)
!2651 = !DILocation(line: 362, column: 24, scope: !2648)
!2652 = !DILocation(line: 362, column: 5, scope: !2648)
!2653 = !DILocation(line: 364, column: 9, scope: !2638)
!2654 = !DILocation(line: 364, column: 19, scope: !2638)
!2655 = !DILocation(line: 365, column: 3, scope: !2638)
!2656 = !DILocation(line: 368, column: 3, scope: !2638)
!2657 = !DILocation(line: 370, column: 1, scope: !2638)
!2658 = distinct !DISubprogram(name: "phi_nodes", scope: !2328, file: !2328, line: 508, type: !2659, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2664)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!701, !2661}
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !390, line: 112, baseType: !2662)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!2664 = !{!2665}
!2665 = !DILocalVariable(name: "bb", arg: 1, scope: !2658, file: !2328, line: 508, type: !2661)
!2666 = !DILocation(line: 0, scope: !2658)
!2667 = !DILocation(line: 510, column: 3, scope: !2658)
!2668 = !DILocation(line: 511, column: 15, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2658, file: !2328, line: 511, column: 7)
!2670 = !DILocation(line: 511, column: 8, scope: !2669)
!2671 = !DILocation(line: 511, column: 7, scope: !2658)
!2672 = !DILocation(line: 513, column: 25, scope: !2658)
!2673 = !DILocation(line: 513, column: 3, scope: !2658)
!2674 = !DILocation(line: 514, column: 1, scope: !2658)
!2675 = distinct !DISubprogram(name: "set_phi_nodes", scope: !2328, file: !2328, line: 519, type: !2676, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{null, !1112, !701}
!2678 = !{!2679, !2680, !2681}
!2679 = !DILocalVariable(name: "bb", arg: 1, scope: !2675, file: !2328, line: 519, type: !1112)
!2680 = !DILocalVariable(name: "seq", arg: 2, scope: !2675, file: !2328, line: 519, type: !701)
!2681 = !DILocalVariable(name: "i", scope: !2675, file: !2328, line: 521, type: !2458)
!2682 = !DILocation(line: 0, scope: !2675)
!2683 = !DILocation(line: 521, column: 3, scope: !2675)
!2684 = !DILocation(line: 523, column: 3, scope: !2675)
!2685 = !DILocation(line: 524, column: 10, scope: !2675)
!2686 = !DILocation(line: 524, column: 18, scope: !2675)
!2687 = !DILocation(line: 524, column: 28, scope: !2675)
!2688 = !DILocation(line: 525, column: 7, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2675, file: !2328, line: 525, column: 7)
!2690 = !DILocation(line: 525, column: 7, scope: !2675)
!2691 = !DILocation(line: 526, column: 14, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2689, file: !2328, line: 526, column: 5)
!2693 = !DILocation(line: 526, column: 10, scope: !2692)
!2694 = !DILocation(line: 526, column: 32, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2692, file: !2328, line: 526, column: 5)
!2696 = !DILocation(line: 526, column: 31, scope: !2695)
!2697 = !DILocation(line: 526, column: 5, scope: !2692)
!2698 = !DILocation(line: 527, column: 22, scope: !2695)
!2699 = !DILocation(line: 527, column: 7, scope: !2695)
!2700 = !DILocation(line: 526, column: 47, scope: !2695)
!2701 = !DILocation(line: 526, column: 5, scope: !2695)
!2702 = distinct !{!2702, !2697, !2703}
!2703 = !DILocation(line: 527, column: 38, scope: !2692)
!2704 = !DILocation(line: 528, column: 1, scope: !2675)
!2705 = distinct !DISubprogram(name: "gsi_last", scope: !704, file: !704, line: 4435, type: !2706, scopeLine: 4436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2708)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!2458, !701}
!2708 = !{!2709, !2710}
!2709 = !DILocalVariable(name: "seq", arg: 1, scope: !2705, file: !704, line: 4435, type: !701)
!2710 = !DILocalVariable(name: "i", scope: !2705, file: !704, line: 4437, type: !2458)
!2711 = !DILocation(line: 0, scope: !2705)
!2712 = !DILocation(line: 4437, column: 24, scope: !2705)
!2713 = !DILocation(line: 4439, column: 11, scope: !2705)
!2714 = !DILocation(line: 4439, column: 5, scope: !2705)
!2715 = !DILocation(line: 4439, column: 9, scope: !2705)
!2716 = !DILocation(line: 4440, column: 5, scope: !2705)
!2717 = !DILocation(line: 4440, column: 9, scope: !2705)
!2718 = !DILocation(line: 4441, column: 11, scope: !2705)
!2719 = !DILocation(line: 4441, column: 17, scope: !2705)
!2720 = !DILocation(line: 4441, column: 27, scope: !2705)
!2721 = !DILocation(line: 4441, column: 20, scope: !2705)
!2722 = !DILocation(line: 4441, column: 10, scope: !2705)
!2723 = !DILocation(line: 4441, column: 35, scope: !2705)
!2724 = !DILocation(line: 4441, column: 5, scope: !2705)
!2725 = !DILocation(line: 4441, column: 8, scope: !2705)
!2726 = !DILocation(line: 4443, column: 3, scope: !2705)
!2727 = distinct !DISubprogram(name: "create_phi_node", scope: !3, file: !3, line: 375, type: !2728, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!712, !389, !1112}
!2730 = !{!2731, !2732, !2733}
!2731 = !DILocalVariable(name: "var", arg: 1, scope: !2727, file: !3, line: 375, type: !389)
!2732 = !DILocalVariable(name: "bb", arg: 2, scope: !2727, file: !3, line: 375, type: !1112)
!2733 = !DILocalVariable(name: "phi", scope: !2727, file: !3, line: 377, type: !712)
!2734 = !DILocation(line: 0, scope: !2727)
!2735 = !DILocation(line: 377, column: 36, scope: !2727)
!2736 = !DILocation(line: 377, column: 16, scope: !2727)
!2737 = !DILocation(line: 379, column: 3, scope: !2727)
!2738 = !DILocation(line: 380, column: 3, scope: !2727)
!2739 = distinct !DISubprogram(name: "add_phi_arg", scope: !3, file: !3, line: 391, type: !2740, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{null, !712, !389, !691, !387}
!2742 = !{!2743, !2744, !2745, !2746, !2747}
!2743 = !DILocalVariable(name: "phi", arg: 1, scope: !2739, file: !3, line: 391, type: !712)
!2744 = !DILocalVariable(name: "def", arg: 2, scope: !2739, file: !3, line: 391, type: !389)
!2745 = !DILocalVariable(name: "e", arg: 3, scope: !2739, file: !3, line: 391, type: !691)
!2746 = !DILocalVariable(name: "locus", arg: 4, scope: !2739, file: !3, line: 391, type: !387)
!2747 = !DILocalVariable(name: "bb", scope: !2739, file: !3, line: 393, type: !1112)
!2748 = !DILocation(line: 0, scope: !2739)
!2749 = !DILocation(line: 393, column: 23, scope: !2739)
!2750 = !DILocation(line: 395, column: 3, scope: !2739)
!2751 = !DILocation(line: 399, column: 3, scope: !2739)
!2752 = !DILocation(line: 403, column: 3, scope: !2739)
!2753 = !DILocation(line: 407, column: 10, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 407, column: 7)
!2755 = !DILocation(line: 407, column: 16, scope: !2754)
!2756 = !DILocation(line: 407, column: 7, scope: !2739)
!2757 = !DILocation(line: 409, column: 7, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 408, column: 5)
!2759 = !DILocation(line: 409, column: 45, scope: !2758)
!2760 = !DILocation(line: 410, column: 7, scope: !2758)
!2761 = !DILocation(line: 410, column: 58, scope: !2758)
!2762 = !DILocation(line: 411, column: 5, scope: !2758)
!2763 = !DILocation(line: 413, column: 3, scope: !2739)
!2764 = !DILocation(line: 414, column: 40, scope: !2739)
!2765 = !DILocation(line: 414, column: 37, scope: !2739)
!2766 = !DILocation(line: 414, column: 3, scope: !2739)
!2767 = !DILocation(line: 415, column: 1, scope: !2739)
!2768 = distinct !DISubprogram(name: "gimple_bb", scope: !704, file: !704, line: 1112, type: !2769, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2771)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!675, !2407}
!2771 = !{!2772}
!2772 = !DILocalVariable(name: "g", arg: 1, scope: !2768, file: !704, line: 1112, type: !2407)
!2773 = !DILocation(line: 0, scope: !2768)
!2774 = !DILocation(line: 1114, column: 20, scope: !2768)
!2775 = !DILocation(line: 1114, column: 3, scope: !2768)
!2776 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2328, file: !2328, line: 434, type: !2777, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2780)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!389, !2779}
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !743, line: 27, baseType: !747)
!2780 = !{!2781}
!2781 = !DILocalVariable(name: "def", arg: 1, scope: !2776, file: !2328, line: 434, type: !2779)
!2782 = !DILocation(line: 0, scope: !2776)
!2783 = !DILocation(line: 436, column: 10, scope: !2776)
!2784 = !DILocation(line: 436, column: 3, scope: !2776)
!2785 = distinct !DISubprogram(name: "gimple_phi_result_ptr", scope: !704, file: !704, line: 3080, type: !2786, scopeLine: 3081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!747, !712}
!2788 = !{!2789}
!2789 = !DILocalVariable(name: "gs", arg: 1, scope: !2785, file: !704, line: 3080, type: !712)
!2790 = !DILocation(line: 0, scope: !2785)
!2791 = !DILocation(line: 3083, column: 26, scope: !2785)
!2792 = !DILocation(line: 3083, column: 3, scope: !2785)
!2793 = distinct !DISubprogram(name: "remove_phi_args", scope: !3, file: !3, line: 458, type: !2794, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !691}
!2796 = !{!2797, !2798}
!2797 = !DILocalVariable(name: "e", arg: 1, scope: !2793, file: !3, line: 458, type: !691)
!2798 = !DILocalVariable(name: "gsi", scope: !2793, file: !3, line: 460, type: !2458)
!2799 = !DILocation(line: 0, scope: !2793)
!2800 = !DILocation(line: 460, column: 3, scope: !2793)
!2801 = !DILocation(line: 462, column: 14, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 462, column: 3)
!2803 = !DILocation(line: 462, column: 33, scope: !2802)
!2804 = !DILocation(line: 0, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 462, column: 3)
!2806 = !DILocation(line: 462, column: 8, scope: !2802)
!2807 = !DILocation(line: 462, column: 41, scope: !2805)
!2808 = !DILocation(line: 462, column: 40, scope: !2805)
!2809 = !DILocation(line: 462, column: 3, scope: !2802)
!2810 = !DILocation(line: 463, column: 25, scope: !2805)
!2811 = !DILocation(line: 463, column: 44, scope: !2805)
!2812 = !DILocation(line: 463, column: 5, scope: !2805)
!2813 = !DILocation(line: 462, column: 58, scope: !2805)
!2814 = !DILocation(line: 462, column: 3, scope: !2805)
!2815 = distinct !{!2815, !2809, !2816}
!2816 = !DILocation(line: 463, column: 52, scope: !2802)
!2817 = !DILocation(line: 464, column: 1, scope: !2793)
!2818 = distinct !DISubprogram(name: "remove_phi_arg_num", scope: !3, file: !3, line: 424, type: !2819, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !712, !380}
!2821 = !{!2822, !2823, !2824, !2825, !2828}
!2822 = !DILocalVariable(name: "phi", arg: 1, scope: !2818, file: !3, line: 424, type: !712)
!2823 = !DILocalVariable(name: "i", arg: 2, scope: !2818, file: !3, line: 424, type: !380)
!2824 = !DILocalVariable(name: "num_elem", scope: !2818, file: !3, line: 426, type: !380)
!2825 = !DILocalVariable(name: "old_p", scope: !2826, file: !3, line: 437, type: !2204)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 436, column: 5)
!2827 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 435, column: 7)
!2828 = !DILocalVariable(name: "new_p", scope: !2826, file: !3, line: 437, type: !2204)
!2829 = !DILocation(line: 0, scope: !2818)
!2830 = !DILocation(line: 426, column: 18, scope: !2818)
!2831 = !DILocation(line: 428, column: 3, scope: !2818)
!2832 = !DILocation(line: 431, column: 19, scope: !2818)
!2833 = !DILocation(line: 431, column: 3, scope: !2818)
!2834 = !DILocation(line: 435, column: 21, scope: !2827)
!2835 = !DILocation(line: 435, column: 9, scope: !2827)
!2836 = !DILocation(line: 435, column: 7, scope: !2818)
!2837 = !DILocation(line: 438, column: 15, scope: !2826)
!2838 = !DILocation(line: 0, scope: !2826)
!2839 = !DILocation(line: 439, column: 15, scope: !2826)
!2840 = !DILocation(line: 441, column: 32, scope: !2826)
!2841 = !DILocation(line: 441, column: 23, scope: !2826)
!2842 = !DILocation(line: 441, column: 16, scope: !2826)
!2843 = !DILocation(line: 441, column: 21, scope: !2826)
!2844 = !DILocation(line: 442, column: 7, scope: !2826)
!2845 = !DILocation(line: 444, column: 41, scope: !2826)
!2846 = !DILocation(line: 445, column: 38, scope: !2826)
!2847 = !DILocation(line: 445, column: 8, scope: !2826)
!2848 = !DILocation(line: 444, column: 7, scope: !2826)
!2849 = !DILocation(line: 446, column: 5, scope: !2826)
!2850 = !DILocation(line: 451, column: 19, scope: !2818)
!2851 = !DILocation(line: 451, column: 24, scope: !2818)
!2852 = !DILocation(line: 452, column: 1, scope: !2818)
!2853 = distinct !DISubprogram(name: "gsi_stmt", scope: !704, file: !704, line: 4501, type: !2854, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!712, !2458}
!2856 = !{!2857}
!2857 = !DILocalVariable(name: "i", arg: 1, scope: !2853, file: !704, line: 4501, type: !2458)
!2858 = !DILocation(line: 4501, column: 32, scope: !2853)
!2859 = !DILocation(line: 4503, column: 12, scope: !2853)
!2860 = !DILocation(line: 4503, column: 17, scope: !2853)
!2861 = !DILocation(line: 4503, column: 3, scope: !2853)
!2862 = distinct !DISubprogram(name: "remove_phi_node", scope: !3, file: !3, line: 473, type: !2863, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{null, !2526, !379}
!2865 = !{!2866, !2867, !2868}
!2866 = !DILocalVariable(name: "gsi", arg: 1, scope: !2862, file: !3, line: 473, type: !2526)
!2867 = !DILocalVariable(name: "release_lhs_p", arg: 2, scope: !2862, file: !3, line: 473, type: !379)
!2868 = !DILocalVariable(name: "phi", scope: !2862, file: !3, line: 475, type: !712)
!2869 = !DILocation(line: 0, scope: !2862)
!2870 = !DILocation(line: 475, column: 16, scope: !2862)
!2871 = !DILocation(line: 477, column: 7, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 477, column: 7)
!2873 = !DILocation(line: 477, column: 7, scope: !2862)
!2874 = !DILocation(line: 478, column: 5, scope: !2872)
!2875 = !DILocation(line: 480, column: 3, scope: !2862)
!2876 = !DILocation(line: 484, column: 3, scope: !2862)
!2877 = !DILocation(line: 485, column: 7, scope: !2862)
!2878 = !DILocation(line: 486, column: 23, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 485, column: 7)
!2880 = !DILocation(line: 486, column: 5, scope: !2879)
!2881 = !DILocation(line: 487, column: 1, scope: !2862)
!2882 = distinct !DISubprogram(name: "remove_phi_nodes", scope: !3, file: !3, line: 492, type: !2451, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2883)
!2883 = !{!2884, !2885}
!2884 = !DILocalVariable(name: "bb", arg: 1, scope: !2882, file: !3, line: 492, type: !1112)
!2885 = !DILocalVariable(name: "gsi", scope: !2882, file: !3, line: 494, type: !2458)
!2886 = !DILocation(line: 0, scope: !2882)
!2887 = !DILocation(line: 494, column: 3, scope: !2882)
!2888 = !DILocation(line: 496, column: 14, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 496, column: 3)
!2890 = !DILocation(line: 496, column: 8, scope: !2889)
!2891 = !DILocation(line: 496, column: 36, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 496, column: 3)
!2893 = !DILocation(line: 496, column: 35, scope: !2892)
!2894 = !DILocation(line: 496, column: 3, scope: !2889)
!2895 = !DILocation(line: 497, column: 5, scope: !2892)
!2896 = !DILocation(line: 496, column: 3, scope: !2892)
!2897 = distinct !{!2897, !2894, !2898}
!2898 = !DILocation(line: 497, column: 32, scope: !2889)
!2899 = !DILocation(line: 499, column: 3, scope: !2882)
!2900 = !DILocation(line: 500, column: 1, scope: !2882)
!2901 = distinct !DISubprogram(name: "VEC_gimple_base_index", scope: !704, file: !704, line: 33, type: !2902, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2906)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!712, !2904, !7}
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!2906 = !{!2907, !2908}
!2907 = !DILocalVariable(name: "vec_", arg: 1, scope: !2901, file: !704, line: 33, type: !2904)
!2908 = !DILocalVariable(name: "ix_", arg: 2, scope: !2901, file: !704, line: 33, type: !7)
!2909 = !DILocation(line: 0, scope: !2901)
!2910 = !DILocation(line: 33, column: 1, scope: !2901)
!2911 = distinct !DISubprogram(name: "VEC_gimple_base_pop", scope: !704, file: !704, line: 33, type: !2912, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2915)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!712, !2914}
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!2915 = !{!2916, !2917}
!2916 = !DILocalVariable(name: "vec_", arg: 1, scope: !2911, file: !704, line: 33, type: !2914)
!2917 = !DILocalVariable(name: "obj_", scope: !2911, file: !704, line: 33, type: !712)
!2918 = !DILocation(line: 0, scope: !2911)
!2919 = !DILocation(line: 33, column: 1, scope: !2911)
!2920 = distinct !DISubprogram(name: "VEC_gimple_base_length", scope: !704, file: !704, line: 33, type: !2921, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!7, !2904}
!2923 = !{!2924}
!2924 = !DILocalVariable(name: "vec_", arg: 1, scope: !2920, file: !704, line: 33, type: !2904)
!2925 = !DILocation(line: 0, scope: !2920)
!2926 = !DILocation(line: 33, column: 1, scope: !2920)
!2927 = distinct !DISubprogram(name: "VEC_gimple_gc_free", scope: !704, file: !704, line: 35, type: !2928, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{null, !2444}
!2930 = !{!2931}
!2931 = !DILocalVariable(name: "vec_", arg: 1, scope: !2927, file: !704, line: 35, type: !2444)
!2932 = !DILocation(line: 0, scope: !2927)
!2933 = !DILocation(line: 35, column: 1, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2927, file: !704, line: 35, column: 1)
!2935 = !DILocation(line: 35, column: 1, scope: !2927)
!2936 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !704, file: !704, line: 3100, type: !2937, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2940)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!2939, !712, !7}
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!2940 = !{!2941, !2942}
!2941 = !DILocalVariable(name: "gs", arg: 1, scope: !2936, file: !704, line: 3100, type: !712)
!2942 = !DILocalVariable(name: "index", arg: 2, scope: !2936, file: !704, line: 3100, type: !7)
!2943 = !DILocation(line: 0, scope: !2936)
!2944 = !DILocation(line: 3103, column: 3, scope: !2936)
!2945 = !DILocation(line: 3104, column: 12, scope: !2936)
!2946 = !DILocation(line: 3104, column: 3, scope: !2936)
!2947 = distinct !DISubprogram(name: "VEC_gimple_gc_reserve", scope: !704, file: !704, line: 35, type: !2948, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!380, !2444, !380}
!2950 = !{!2951, !2952, !2953}
!2951 = !DILocalVariable(name: "vec_", arg: 1, scope: !2947, file: !704, line: 35, type: !2444)
!2952 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2947, file: !704, line: 35, type: !380)
!2953 = !DILocalVariable(name: "extend", scope: !2947, file: !704, line: 35, type: !380)
!2954 = !DILocation(line: 0, scope: !2947)
!2955 = !DILocation(line: 35, column: 1, scope: !2947)
!2956 = !DILocation(line: 35, column: 1, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2947, file: !704, line: 35, column: 1)
!2958 = distinct !DISubprogram(name: "VEC_gimple_base_quick_push", scope: !704, file: !704, line: 33, type: !2959, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2961)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!2443, !2914, !712}
!2961 = !{!2962, !2963, !2964}
!2962 = !DILocalVariable(name: "vec_", arg: 1, scope: !2958, file: !704, line: 33, type: !2914)
!2963 = !DILocalVariable(name: "obj_", arg: 2, scope: !2958, file: !704, line: 33, type: !712)
!2964 = !DILocalVariable(name: "slot_", scope: !2958, file: !704, line: 33, type: !2443)
!2965 = !DILocation(line: 0, scope: !2958)
!2966 = !DILocation(line: 33, column: 1, scope: !2958)
!2967 = distinct !DISubprogram(name: "VEC_gimple_base_space", scope: !704, file: !704, line: 33, type: !2968, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!380, !2914, !380}
!2970 = !{!2971, !2972}
!2971 = !DILocalVariable(name: "vec_", arg: 1, scope: !2967, file: !704, line: 33, type: !2914)
!2972 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2967, file: !704, line: 33, type: !380)
!2973 = !DILocation(line: 0, scope: !2967)
!2974 = !DILocation(line: 33, column: 1, scope: !2967)
!2975 = distinct !DISubprogram(name: "relink_imm_use_stmt", scope: !2328, file: !2328, line: 272, type: !2976, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{null, !2205, !2205, !712}
!2978 = !{!2979, !2980, !2981}
!2979 = !DILocalVariable(name: "linknode", arg: 1, scope: !2975, file: !2328, line: 272, type: !2205)
!2980 = !DILocalVariable(name: "old", arg: 2, scope: !2975, file: !2328, line: 272, type: !2205)
!2981 = !DILocalVariable(name: "stmt", arg: 3, scope: !2975, file: !2328, line: 273, type: !712)
!2982 = !DILocation(line: 0, scope: !2975)
!2983 = !DILocation(line: 275, column: 7, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2975, file: !2328, line: 275, column: 7)
!2985 = !DILocation(line: 275, column: 7, scope: !2975)
!2986 = !DILocation(line: 276, column: 5, scope: !2984)
!2987 = !DILocation(line: 278, column: 5, scope: !2984)
!2988 = !DILocation(line: 279, column: 17, scope: !2975)
!2989 = !DILocation(line: 279, column: 22, scope: !2975)
!2990 = !DILocation(line: 280, column: 1, scope: !2975)
!2991 = distinct !DISubprogram(name: "relink_imm_use", scope: !2328, file: !2328, line: 254, type: !2992, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{null, !2205, !2205}
!2994 = !{!2995, !2996}
!2995 = !DILocalVariable(name: "node", arg: 1, scope: !2991, file: !2328, line: 254, type: !2205)
!2996 = !DILocalVariable(name: "old", arg: 2, scope: !2991, file: !2328, line: 254, type: !2205)
!2997 = !DILocation(line: 0, scope: !2991)
!2998 = !DILocation(line: 257, column: 3, scope: !2991)
!2999 = !DILocation(line: 258, column: 21, scope: !2991)
!3000 = !DILocation(line: 258, column: 14, scope: !2991)
!3001 = !DILocation(line: 259, column: 21, scope: !2991)
!3002 = !DILocation(line: 259, column: 9, scope: !2991)
!3003 = !DILocation(line: 259, column: 14, scope: !2991)
!3004 = !DILocation(line: 260, column: 12, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2991, file: !2328, line: 260, column: 7)
!3006 = !DILocation(line: 260, column: 7, scope: !3005)
!3007 = !DILocation(line: 260, column: 7, scope: !2991)
!3008 = !DILocation(line: 262, column: 18, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3005, file: !2328, line: 261, column: 5)
!3010 = !DILocation(line: 262, column: 23, scope: !3009)
!3011 = !DILocation(line: 263, column: 12, scope: !3009)
!3012 = !DILocation(line: 263, column: 18, scope: !3009)
!3013 = !DILocation(line: 263, column: 23, scope: !3009)
!3014 = !DILocation(line: 265, column: 17, scope: !3009)
!3015 = !DILocation(line: 266, column: 5, scope: !3009)
!3016 = !DILocation(line: 267, column: 1, scope: !2991)
!3017 = distinct !DISubprogram(name: "link_imm_use", scope: !2328, file: !2328, line: 214, type: !3018, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !2205, !389}
!3020 = !{!3021, !3022, !3023}
!3021 = !DILocalVariable(name: "linknode", arg: 1, scope: !3017, file: !2328, line: 214, type: !2205)
!3022 = !DILocalVariable(name: "def", arg: 2, scope: !3017, file: !2328, line: 214, type: !389)
!3023 = !DILocalVariable(name: "root", scope: !3017, file: !2328, line: 216, type: !2205)
!3024 = !DILocation(line: 0, scope: !3017)
!3025 = !DILocation(line: 218, column: 8, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3017, file: !2328, line: 218, column: 7)
!3027 = !DILocation(line: 218, column: 12, scope: !3026)
!3028 = !DILocation(line: 218, column: 15, scope: !3026)
!3029 = !DILocation(line: 218, column: 31, scope: !3026)
!3030 = !DILocation(line: 218, column: 7, scope: !3017)
!3031 = !DILocation(line: 219, column: 15, scope: !3026)
!3032 = !DILocation(line: 219, column: 20, scope: !3026)
!3033 = !DILocation(line: 219, column: 5, scope: !3026)
!3034 = !DILocation(line: 222, column: 16, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3026, file: !2328, line: 221, column: 5)
!3036 = !DILocation(line: 227, column: 7, scope: !3035)
!3037 = !DILocation(line: 229, column: 1, scope: !3017)
!3038 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !2328, file: !2328, line: 202, type: !2992, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3039)
!3039 = !{!3040, !3041}
!3040 = !DILocalVariable(name: "linknode", arg: 1, scope: !3038, file: !2328, line: 202, type: !2205)
!3041 = !DILocalVariable(name: "list", arg: 2, scope: !3038, file: !2328, line: 202, type: !2205)
!3042 = !DILocation(line: 0, scope: !3038)
!3043 = !DILocation(line: 206, column: 13, scope: !3038)
!3044 = !DILocation(line: 206, column: 18, scope: !3038)
!3045 = !DILocation(line: 207, column: 26, scope: !3038)
!3046 = !DILocation(line: 207, column: 13, scope: !3038)
!3047 = !DILocation(line: 207, column: 18, scope: !3038)
!3048 = !DILocation(line: 208, column: 9, scope: !3038)
!3049 = !DILocation(line: 208, column: 15, scope: !3038)
!3050 = !DILocation(line: 208, column: 20, scope: !3038)
!3051 = !DILocation(line: 209, column: 14, scope: !3038)
!3052 = !DILocation(line: 210, column: 1, scope: !3038)
!3053 = distinct !DISubprogram(name: "gsi_start", scope: !704, file: !704, line: 4403, type: !2706, scopeLine: 4404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3054)
!3054 = !{!3055, !3056}
!3055 = !DILocalVariable(name: "seq", arg: 1, scope: !3053, file: !704, line: 4403, type: !701)
!3056 = !DILocalVariable(name: "i", scope: !3053, file: !704, line: 4405, type: !2458)
!3057 = !DILocation(line: 0, scope: !3053)
!3058 = !DILocation(line: 4405, column: 24, scope: !3053)
!3059 = !DILocation(line: 4407, column: 11, scope: !3053)
!3060 = !DILocation(line: 4407, column: 5, scope: !3053)
!3061 = !DILocation(line: 4407, column: 9, scope: !3053)
!3062 = !DILocation(line: 4408, column: 5, scope: !3053)
!3063 = !DILocation(line: 4408, column: 9, scope: !3053)
!3064 = !DILocation(line: 4409, column: 11, scope: !3053)
!3065 = !DILocation(line: 4409, column: 17, scope: !3053)
!3066 = !DILocation(line: 4409, column: 27, scope: !3053)
!3067 = !DILocation(line: 4409, column: 20, scope: !3053)
!3068 = !DILocation(line: 4409, column: 10, scope: !3053)
!3069 = !DILocation(line: 4409, column: 35, scope: !3053)
!3070 = !DILocation(line: 4409, column: 5, scope: !3053)
!3071 = !DILocation(line: 4409, column: 8, scope: !3053)
!3072 = !DILocation(line: 4411, column: 3, scope: !3053)
!3073 = distinct !DISubprogram(name: "gimple_seq_first", scope: !704, file: !704, line: 159, type: !3074, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3079)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!707, !3076}
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !390, line: 67, baseType: !3077)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!3079 = !{!3080}
!3080 = !DILocalVariable(name: "s", arg: 1, scope: !3073, file: !704, line: 159, type: !3076)
!3081 = !DILocation(line: 0, scope: !3073)
!3082 = !DILocation(line: 161, column: 10, scope: !3073)
!3083 = !DILocation(line: 161, column: 17, scope: !3073)
!3084 = !DILocation(line: 161, column: 3, scope: !3073)
!3085 = distinct !DISubprogram(name: "gimple_seq_last", scope: !704, file: !704, line: 178, type: !3074, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3086)
!3086 = !{!3087}
!3087 = !DILocalVariable(name: "s", arg: 1, scope: !3085, file: !704, line: 178, type: !3076)
!3088 = !DILocation(line: 0, scope: !3085)
!3089 = !DILocation(line: 180, column: 10, scope: !3085)
!3090 = !DILocation(line: 180, column: 17, scope: !3085)
!3091 = !DILocation(line: 180, column: 3, scope: !3085)
!3092 = distinct !DISubprogram(name: "gimple_phi_arg_location", scope: !2328, file: !2328, line: 475, type: !3093, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!387, !712, !858}
!3095 = !{!3096, !3097}
!3096 = !DILocalVariable(name: "gs", arg: 1, scope: !3092, file: !2328, line: 475, type: !712)
!3097 = !DILocalVariable(name: "i", arg: 2, scope: !3092, file: !2328, line: 475, type: !858)
!3098 = !DILocation(line: 0, scope: !3092)
!3099 = !DILocation(line: 477, column: 30, scope: !3092)
!3100 = !DILocation(line: 477, column: 10, scope: !3092)
!3101 = !DILocation(line: 477, column: 34, scope: !3092)
!3102 = !DILocation(line: 477, column: 3, scope: !3092)
