; ModuleID = 'tree-ssa-coalesce.bc'
source_filename = "tree-ssa-coalesce.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct._var_map = type { %struct.partition_def*, i32*, i32*, i32, i32, i32, i32*, %struct.VEC_tree_heap* }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, %struct.partition_elem*, i32 }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.coalesce_list_d = type { %struct.htab*, %struct.coalesce_pair**, i32, %struct.cost_one_pair_d* }
%struct.coalesce_pair = type { i32, i32, i32 }
%struct.cost_one_pair_d = type { i32, i32, %struct.cost_one_pair_d* }
%struct.tree_ssa_name = type { %struct.tree_common, %union.tree_node*, %union.gimple_statement_d*, i32, %struct.ptr_info_def*, %struct.ssa_use_operand_d }
%struct.ptr_info_def = type { %struct.pt_solution }
%struct.tree_live_info_d = type { %struct._var_map*, %struct.bitmap_head_def*, %struct.bitmap_head_def**, i32, i32*, i32*, %struct.bitmap_head_def** }
%struct.ssa_conflicts_d = type { i32, %struct.bitmap_head_def** }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.live_track_d = type { %struct.bitmap_head_def*, %struct.bitmap_head_def**, %struct._var_map* }
%struct.coalesce_pair_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { %struct.htab*, i8**, i8** }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, i8*, i8, i8, i8, i8, [1 x %union.tree_node*] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, %union.tree_node*, %union.tree_node* }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, %struct.def_optype_d*, %struct.use_optype_d* }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@coalesce_ssa_name.ssa_name_hash = internal unnamed_addr global %struct.htab* null, align 8, !dbg !0
@optimize = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"\0AAfter sorting:\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"tree-ssa-coalesce.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_var_tracking_assignments = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c" Corrupt SSA across abnormal edge BB%d->BB%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Argument %d (\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c") is not an SSA_NAME.\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c") does not have the same base variable as the result \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"SSA corruption\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@htab_hash_pointer = external dso_local local_unnamed_addr global i32 (i8*)*, align 8
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"\0AConflict graph:\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Coalesce List:\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" <-> \00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"  (%1d), \00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Sorted Coalesce list:\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"(%d) \00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Abnormal coalesce: \00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Coalesce list: \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c" & (%d)\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c": Already Coalesced.\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c" [map: %d, %d] \00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c": Unable to perform partition union.\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c": Success -> %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c": Fail due to conflict\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"\0AUnable to coalesce ssa_names %d and %d\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c" which are marked as MUST COALESCE.\0A\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c" and  \00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1619 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1633, metadata !DIExpression()), !dbg !1634
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1635
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1636
  ret i32 %call, !dbg !1637
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1638 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1642
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1643
  ret i32 %call, !dbg !1644
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1645 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1700, metadata !DIExpression()), !dbg !1701
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1702
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1702
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1702
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1702
  %cmp = icmp uge i8* %0, %1, !dbg !1702
  %conv1 = zext i1 %cmp to i64, !dbg !1702
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1702
  %tobool = icmp eq i64 %expval, 0, !dbg !1702
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1702

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1702
  br label %cond.end, !dbg !1702

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1702
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1702
  %2 = load i8, i8* %0, align 1, !dbg !1702
  %conv3 = zext i8 %2 to i32, !dbg !1702
  br label %cond.end, !dbg !1702

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1702
  ret i32 %cond, !dbg !1703
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1704 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1706, metadata !DIExpression()), !dbg !1707
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1708
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1708
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1708
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1708
  %cmp = icmp uge i8* %0, %1, !dbg !1708
  %conv1 = zext i1 %cmp to i64, !dbg !1708
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1708
  %tobool = icmp eq i64 %expval, 0, !dbg !1708
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1708

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1708
  br label %cond.end, !dbg !1708

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1708
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1708
  %2 = load i8, i8* %0, align 1, !dbg !1708
  %conv3 = zext i8 %2 to i32, !dbg !1708
  br label %cond.end, !dbg !1708

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1708
  ret i32 %cond, !dbg !1709
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1710 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1711
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1711
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1711
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1711
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1711
  %cmp = icmp uge i8* %1, %2, !dbg !1711
  %conv1 = zext i1 %cmp to i64, !dbg !1711
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1711
  %tobool = icmp eq i64 %expval, 0, !dbg !1711
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1711

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1711
  br label %cond.end, !dbg !1711

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1711
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1711
  %3 = load i8, i8* %1, align 1, !dbg !1711
  %conv3 = zext i8 %3 to i32, !dbg !1711
  br label %cond.end, !dbg !1711

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1711
  ret i32 %cond, !dbg !1712
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1713 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1717, metadata !DIExpression()), !dbg !1718
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1719
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1720
  ret i32 %call, !dbg !1721
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1722 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1726, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1727, metadata !DIExpression()), !dbg !1728
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1729
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1729
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1729
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1729
  %cmp = icmp uge i8* %0, %1, !dbg !1729
  %conv1 = zext i1 %cmp to i64, !dbg !1729
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1729
  %tobool = icmp eq i64 %expval, 0, !dbg !1729
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1729

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1729
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1729
  br label %cond.end, !dbg !1729

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1729
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1729
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1729
  store i8 %conv2, i8* %0, align 1, !dbg !1729
  %conv6 = and i32 %__c, 255, !dbg !1729
  br label %cond.end, !dbg !1729

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1729
  ret i32 %cond, !dbg !1730
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1731 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1733, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1734, metadata !DIExpression()), !dbg !1735
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1736
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1736
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1736
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1736
  %cmp = icmp uge i8* %0, %1, !dbg !1736
  %conv1 = zext i1 %cmp to i64, !dbg !1736
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1736
  %tobool = icmp eq i64 %expval, 0, !dbg !1736
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1736

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1736
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1736
  br label %cond.end, !dbg !1736

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1736
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1736
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1736
  store i8 %conv2, i8* %0, align 1, !dbg !1736
  %conv6 = and i32 %__c, 255, !dbg !1736
  br label %cond.end, !dbg !1736

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1736
  ret i32 %cond, !dbg !1737
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1738 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1740, metadata !DIExpression()), !dbg !1741
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1742
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1742
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1742
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1742
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1742
  %cmp = icmp uge i8* %1, %2, !dbg !1742
  %conv1 = zext i1 %cmp to i64, !dbg !1742
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1742
  %tobool = icmp eq i64 %expval, 0, !dbg !1742
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1742

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1742
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1742
  br label %cond.end, !dbg !1742

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1742
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1742
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1742
  store i8 %conv4, i8* %1, align 1, !dbg !1742
  %conv6 = and i32 %__c, 255, !dbg !1742
  br label %cond.end, !dbg !1742

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1742
  ret i32 %cond, !dbg !1743
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1744 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1750, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1751, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1752, metadata !DIExpression()), !dbg !1753
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1754
  ret i64 %call, !dbg !1755
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1756 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1758, metadata !DIExpression()), !dbg !1759
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1760
  %0 = load i32, i32* %_flags, align 8, !dbg !1760
  %and = lshr i32 %0, 4, !dbg !1760
  %and.lobit = and i32 %and, 1, !dbg !1760
  ret i32 %and.lobit, !dbg !1761
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1762 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1764, metadata !DIExpression()), !dbg !1765
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1766
  %0 = load i32, i32* %_flags, align 8, !dbg !1766
  %and = lshr i32 %0, 5, !dbg !1766
  %and.lobit = and i32 %and, 1, !dbg !1766
  ret i32 %and.lobit, !dbg !1767
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1768 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1771, metadata !DIExpression()), !dbg !1772
  %__c.off = add i32 %__c, 128, !dbg !1773
  %0 = icmp ult i32 %__c.off, 384, !dbg !1773
  br i1 %0, label %cond.true, label %cond.end, !dbg !1773

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1774
  %1 = load i32*, i32** %call, align 8, !dbg !1775
  %idxprom = sext i32 %__c to i64, !dbg !1776
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1776
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1776
  br label %cond.end, !dbg !1777

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1777
  ret i32 %cond, !dbg !1778
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1779 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1781, metadata !DIExpression()), !dbg !1782
  %__c.off = add i32 %__c, 128, !dbg !1783
  %0 = icmp ult i32 %__c.off, 384, !dbg !1783
  br i1 %0, label %cond.true, label %cond.end, !dbg !1783

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1784
  %1 = load i32*, i32** %call, align 8, !dbg !1785
  %idxprom = sext i32 %__c to i64, !dbg !1786
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1786
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1786
  br label %cond.end, !dbg !1787

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1787
  ret i32 %cond, !dbg !1788
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1789 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1794, metadata !DIExpression()), !dbg !1795
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1796
  %conv = trunc i64 %call to i32, !dbg !1797
  ret i32 %conv, !dbg !1798
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1799 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1803, metadata !DIExpression()), !dbg !1804
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1805
  ret i64 %call, !dbg !1806
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1807 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1812, metadata !DIExpression()), !dbg !1813
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1814
  ret i64 %call, !dbg !1815
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1816 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1822, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1823, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1824, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1825, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1826, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 0, metadata !1827, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1828, metadata !DIExpression()), !dbg !1832
  br label %while.cond, !dbg !1833

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1834
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1832
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1828, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1827, metadata !DIExpression()), !dbg !1832
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1835
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1833

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1836
  %div = lshr i64 %add, 1, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %div, metadata !1829, metadata !DIExpression()), !dbg !1832
  %mul = mul i64 %div, %__size, !dbg !1839
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1840
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1830, metadata !DIExpression()), !dbg !1832
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %call, metadata !1831, metadata !DIExpression()), !dbg !1832
  %cmp1 = icmp slt i32 %call, 0, !dbg !1842
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1844

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1845
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1847

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1827, metadata !DIExpression()), !dbg !1832
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1832
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1832
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1828, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1827, metadata !DIExpression()), !dbg !1832
  br label %while.cond, !dbg !1833, !llvm.loop !1849

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1832
  ret i8* %retval.0, !dbg !1851
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1852 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1858, metadata !DIExpression()), !dbg !1859
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1860
  ret double %call, !dbg !1861
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1862 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1871, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1872, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 %base, metadata !1873, metadata !DIExpression()), !dbg !1874
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1875
  ret i64 %call, !dbg !1876
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1877 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1883, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1884, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i32 %base, metadata !1885, metadata !DIExpression()), !dbg !1886
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1887
  ret i64 %call, !dbg !1888
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1889 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1900, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1901, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 %base, metadata !1902, metadata !DIExpression()), !dbg !1903
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1904
  ret i64 %call, !dbg !1905
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1906 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1910, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1911, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i32 %base, metadata !1912, metadata !DIExpression()), !dbg !1913
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1914
  ret i64 %call, !dbg !1915
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1916 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1958, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1959, metadata !DIExpression()), !dbg !1960
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1961
  ret i32 %call, !dbg !1962
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1963 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1965, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1966, metadata !DIExpression()), !dbg !1967
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1968
  ret i32 %call, !dbg !1969
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1970 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1974, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1975, metadata !DIExpression()), !dbg !1976
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1977
  ret i32 %call, !dbg !1978
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1979 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1983, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1984, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1985, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1986, metadata !DIExpression()), !dbg !1987
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1988
  ret i32 %call, !dbg !1989
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1990 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1994, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1995, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1996, metadata !DIExpression()), !dbg !1997
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1996, metadata !DIExpression(DW_OP_deref)), !dbg !1997
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1998
  ret i32 %call, !dbg !1999
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2000 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2004, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2006, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2007, metadata !DIExpression()), !dbg !2008
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2007, metadata !DIExpression(DW_OP_deref)), !dbg !2008
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2009
  ret i32 %call, !dbg !2010
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2011 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2036, metadata !DIExpression()), !dbg !2037
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2038
  ret i32 %call, !dbg !2039
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2040 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2042, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2043, metadata !DIExpression()), !dbg !2044
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2045
  ret i32 %call, !dbg !2046
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2047 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2052, metadata !DIExpression()), !dbg !2053
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2054
  ret i32 %call, !dbg !2055
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2056 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2060, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2061, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2062, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2063, metadata !DIExpression()), !dbg !2064
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2065
  ret i32 %call, !dbg !2066
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct._var_map* @coalesce_ssa_name() local_unnamed_addr #5 !dbg !2 {
entry:
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2067
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !1603, metadata !DIExpression()), !dbg !2068
  %call1 = tail call fastcc %struct.coalesce_list_d* @create_coalesce_list() #7, !dbg !2069
  call void @llvm.dbg.value(metadata %struct.coalesce_list_d* %call1, metadata !1602, metadata !DIExpression()), !dbg !2068
  %call2 = tail call fastcc %struct._var_map* @create_outofssa_var_map(%struct.coalesce_list_d* %call1, %struct.bitmap_head_def* %call) #7, !dbg !2070
  call void @llvm.dbg.value(metadata %struct._var_map* %call2, metadata !1604, metadata !DIExpression()), !dbg !2068
  %0 = load i32, i32* @optimize, align 4, !dbg !2071
  %tobool = icmp eq i32 %0, 0, !dbg !2071
  br i1 %tobool, label %if.then, label %if.end51, !dbg !2072

if.then:                                          ; preds = %entry
  %call3 = tail call %struct.htab* @htab_create(i64 10, i32 (i8*)* nonnull @hash_ssa_name_by_var, i32 (i8*, i8*)* nonnull @eq_ssa_name_by_var, void (i8*)* null) #6, !dbg !2073
  store %struct.htab* %call3, %struct.htab** @coalesce_ssa_name.ssa_name_hash, align 8, !dbg !2074
  call void @llvm.dbg.value(metadata i32 1, metadata !1605, metadata !DIExpression()), !dbg !2068
  br label %for.cond, !dbg !2075

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 1, %if.then ], [ %inc, %for.inc ], !dbg !2076
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1605, metadata !DIExpression()), !dbg !2068
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2077
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 3, !dbg !2077
  %2 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2077
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %2, i64 0, i32 2, !dbg !2077
  %3 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2077
  %tobool4 = icmp eq %struct.VEC_tree_gc* %3, null, !dbg !2077
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !2077

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %3, i64 0, i32 0, !dbg !2077
  br label %cond.end, !dbg !2077

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !2077
  %call8 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !2077
  %cmp = icmp ult i32 %i.0, %call8, !dbg !2078
  br i1 %cmp, label %for.body, label %for.end, !dbg !2079

for.body:                                         ; preds = %cond.end
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2080
  %gimple_df10 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 3, !dbg !2080
  %5 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df10, align 8, !dbg !2080
  %ssa_names11 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %5, i64 0, i32 2, !dbg !2080
  %6 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names11, align 8, !dbg !2080
  %tobool12 = icmp eq %struct.VEC_tree_gc* %6, null, !dbg !2080
  br i1 %tobool12, label %cond.end19, label %cond.true13, !dbg !2080

cond.true13:                                      ; preds = %for.body
  %base17 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %6, i64 0, i32 0, !dbg !2080
  br label %cond.end19, !dbg !2080

cond.end19:                                       ; preds = %for.body, %cond.true13
  %cond20 = phi %struct.VEC_tree_base* [ %base17, %cond.true13 ], [ null, %for.body ], !dbg !2080
  %call21 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond20, i32 %i.0) #7, !dbg !2080
  call void @llvm.dbg.value(metadata %union.tree_node* %call21, metadata !1606, metadata !DIExpression()), !dbg !2081
  %tobool22 = icmp eq %union.tree_node* %call21, null, !dbg !2082
  br i1 %tobool22, label %for.inc, label %land.lhs.true, !dbg !2083

land.lhs.true:                                    ; preds = %cond.end19
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2084
  %7 = bitcast i32* %var to %union.tree_node**, !dbg !2084
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8, !dbg !2084
  %tobool23 = icmp eq %union.tree_node* %8, null, !dbg !2084
  br i1 %tobool23, label %for.inc, label %land.lhs.true24, !dbg !2085

land.lhs.true24:                                  ; preds = %land.lhs.true
  %artificial_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2086
  %9 = bitcast i40* %artificial_flag to i64*, !dbg !2086
  %bf.load = load i64, i64* %9, align 8, !dbg !2086
  %bf.cast1 = and i64 %bf.load, 4096, !dbg !2086
  %tobool27 = icmp eq i64 %bf.cast1, 0, !dbg !2086
  br i1 %tobool27, label %land.lhs.true28, label %for.inc, !dbg !2087

land.lhs.true28:                                  ; preds = %land.lhs.true24
  %call29 = tail call fastcc zeroext i8 @has_zero_uses(%union.tree_node* nonnull %call21) #7, !dbg !2088
  %tobool30 = icmp eq i8 %call29, 0, !dbg !2088
  br i1 %tobool30, label %if.then37, label %lor.lhs.false, !dbg !2089

lor.lhs.false:                                    ; preds = %land.lhs.true28
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2090
  %bf.load32 = load i64, i64* %10, align 8, !dbg !2090
  %bf.cast352 = and i64 %bf.load32, 4294967296, !dbg !2090
  %tobool36 = icmp eq i64 %bf.cast352, 0, !dbg !2090
  br i1 %tobool36, label %if.then37, label %for.inc, !dbg !2091

if.then37:                                        ; preds = %lor.lhs.false, %land.lhs.true28
  %11 = load %struct.htab*, %struct.htab** @coalesce_ssa_name.ssa_name_hash, align 8, !dbg !2092
  %12 = bitcast %union.tree_node* %call21 to i8*, !dbg !2093
  %call38 = tail call i8** @htab_find_slot(%struct.htab* %11, i8* nonnull %12, i32 1) #6, !dbg !2094
  %13 = bitcast i8** %call38 to %union.tree_node**, !dbg !2095
  call void @llvm.dbg.value(metadata %union.tree_node** %13, metadata !1612, metadata !DIExpression()), !dbg !2096
  %14 = load %union.tree_node*, %union.tree_node** %13, align 8, !dbg !2097
  %tobool39 = icmp eq %union.tree_node* %14, null, !dbg !2097
  br i1 %tobool39, label %if.then40, label %if.else, !dbg !2099

if.then40:                                        ; preds = %if.then37
  store %union.tree_node* %call21, %union.tree_node** %13, align 8, !dbg !2100
  br label %for.inc, !dbg !2101

if.else:                                          ; preds = %if.then37
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %call21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2102
  %15 = bitcast %union.tree_node** %version to i32*, !dbg !2102
  %16 = load i32, i32* %15, align 8, !dbg !2102
  %17 = bitcast i8** %call38 to %struct.tree_ssa_name**, !dbg !2104
  %version43 = getelementptr inbounds %union.tree_node, %union.tree_node* %14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2104
  %18 = bitcast %union.tree_node** %version43 to i32*, !dbg !2104
  %19 = load i32, i32* %18, align 8, !dbg !2104
  tail call fastcc void @add_coalesce(%struct.coalesce_list_d* %call1, i32 %16, i32 %19, i32 2147483646) #7, !dbg !2105
  %20 = load i32, i32* %15, align 8, !dbg !2106
  %call46 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call, i32 %20) #6, !dbg !2107
  %21 = load %struct.tree_ssa_name*, %struct.tree_ssa_name** %17, align 8, !dbg !2108
  %version48 = getelementptr inbounds %struct.tree_ssa_name, %struct.tree_ssa_name* %21, i64 0, i32 3, !dbg !2108
  %22 = load i32, i32* %version48, align 8, !dbg !2108
  %call49 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call, i32 %22) #6, !dbg !2109
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %land.lhs.true24, %land.lhs.true, %cond.end19, %if.else, %if.then40
  %inc = add i32 %i.0, 1, !dbg !2110
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1605, metadata !DIExpression()), !dbg !2068
  br label %for.cond, !dbg !2111, !llvm.loop !2112

for.end:                                          ; preds = %cond.end
  %23 = load %struct.htab*, %struct.htab** @coalesce_ssa_name.ssa_name_hash, align 8, !dbg !2114
  tail call void @htab_delete(%struct.htab* %23) #6, !dbg !2115
  br label %if.end51, !dbg !2116

if.end51:                                         ; preds = %entry, %for.end
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2117
  %tobool52 = icmp eq %struct._IO_FILE* %24, null, !dbg !2117
  br i1 %tobool52, label %if.end56, label %land.lhs.true53, !dbg !2119

land.lhs.true53:                                  ; preds = %if.end51
  %25 = load i32, i32* @dump_flags, align 4, !dbg !2120
  %and = and i32 %25, 8, !dbg !2121
  %tobool54 = icmp eq i32 %and, 0, !dbg !2121
  br i1 %tobool54, label %if.end56, label %if.then55, !dbg !2122

if.then55:                                        ; preds = %land.lhs.true53
  tail call void @dump_var_map(%struct._IO_FILE* nonnull %24, %struct._var_map* %call2) #6, !dbg !2123
  br label %if.end56, !dbg !2123

if.end56:                                         ; preds = %land.lhs.true53, %if.end51, %if.then55
  tail call void @partition_view_bitmap(%struct._var_map* %call2, %struct.bitmap_head_def* %call, i8 zeroext 1) #6, !dbg !2124
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !2125
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !1603, metadata !DIExpression()), !dbg !2068
  %call57 = tail call fastcc i32 @num_var_partitions(%struct._var_map* %call2) #7, !dbg !2126
  %cmp58 = icmp eq i32 %call57, 0, !dbg !2128
  br i1 %cmp58, label %if.then59, label %if.end60, !dbg !2129

if.then59:                                        ; preds = %if.end56
  tail call fastcc void @delete_coalesce_list(%struct.coalesce_list_d* %call1) #7, !dbg !2130
  br label %cleanup, !dbg !2132

if.end60:                                         ; preds = %if.end56
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2133
  %tobool61 = icmp eq %struct._IO_FILE* %26, null, !dbg !2133
  br i1 %tobool61, label %if.end66, label %land.lhs.true62, !dbg !2135

land.lhs.true62:                                  ; preds = %if.end60
  %27 = load i32, i32* @dump_flags, align 4, !dbg !2136
  %and63 = and i32 %27, 8, !dbg !2137
  %tobool64 = icmp eq i32 %and63, 0, !dbg !2137
  br i1 %tobool64, label %if.end66, label %if.then65, !dbg !2138

if.then65:                                        ; preds = %land.lhs.true62
  tail call void @dump_var_map(%struct._IO_FILE* nonnull %26, %struct._var_map* %call2) #6, !dbg !2139
  br label %if.end66, !dbg !2139

if.end66:                                         ; preds = %land.lhs.true62, %if.end60, %if.then65
  %call67 = tail call %struct.tree_live_info_d* @calculate_live_ranges(%struct._var_map* %call2) #6, !dbg !2140
  call void @llvm.dbg.value(metadata %struct.tree_live_info_d* %call67, metadata !1588, metadata !DIExpression()), !dbg !2068
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2141
  %tobool68 = icmp eq %struct._IO_FILE* %28, null, !dbg !2141
  br i1 %tobool68, label %if.end73, label %land.lhs.true69, !dbg !2143

land.lhs.true69:                                  ; preds = %if.end66
  %29 = load i32, i32* @dump_flags, align 4, !dbg !2144
  %and70 = and i32 %29, 8, !dbg !2145
  %tobool71 = icmp eq i32 %and70, 0, !dbg !2145
  br i1 %tobool71, label %if.end73, label %if.then72, !dbg !2146

if.then72:                                        ; preds = %land.lhs.true69
  tail call void @dump_live_info(%struct._IO_FILE* nonnull %28, %struct.tree_live_info_d* %call67, i32 1) #6, !dbg !2147
  br label %if.end73, !dbg !2147

if.end73:                                         ; preds = %land.lhs.true69, %if.end66, %if.then72
  %call74 = tail call fastcc %struct.ssa_conflicts_d* @build_ssa_conflict_graph(%struct.tree_live_info_d* %call67) #7, !dbg !2148
  call void @llvm.dbg.value(metadata %struct.ssa_conflicts_d* %call74, metadata !1600, metadata !DIExpression()), !dbg !2068
  tail call void @delete_tree_live_info(%struct.tree_live_info_d* %call67) #6, !dbg !2149
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2150
  %tobool75 = icmp eq %struct._IO_FILE* %30, null, !dbg !2150
  br i1 %tobool75, label %if.end80, label %land.lhs.true76, !dbg !2152

land.lhs.true76:                                  ; preds = %if.end73
  %31 = load i32, i32* @dump_flags, align 4, !dbg !2153
  %and77 = and i32 %31, 8, !dbg !2154
  %tobool78 = icmp eq i32 %and77, 0, !dbg !2154
  br i1 %tobool78, label %if.end80, label %if.then79, !dbg !2155

if.then79:                                        ; preds = %land.lhs.true76
  tail call fastcc void @ssa_conflicts_dump(%struct._IO_FILE* nonnull %30, %struct.ssa_conflicts_d* %call74) #7, !dbg !2156
  br label %if.end80, !dbg !2156

if.end80:                                         ; preds = %land.lhs.true76, %if.end73, %if.then79
  tail call fastcc void @sort_coalesce_list(%struct.coalesce_list_d* %call1) #7, !dbg !2157
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2158
  %tobool81 = icmp eq %struct._IO_FILE* %32, null, !dbg !2158
  br i1 %tobool81, label %if.end87, label %land.lhs.true82, !dbg !2160

land.lhs.true82:                                  ; preds = %if.end80
  %33 = load i32, i32* @dump_flags, align 4, !dbg !2161
  %and83 = and i32 %33, 8, !dbg !2162
  %tobool84 = icmp eq i32 %and83, 0, !dbg !2162
  br i1 %tobool84, label %if.end87, label %if.then85, !dbg !2163

if.then85:                                        ; preds = %land.lhs.true82
  %call86 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2164
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2166
  tail call fastcc void @dump_coalesce_list(%struct._IO_FILE* %34, %struct.coalesce_list_d* %call1) #7, !dbg !2167
  %.pre = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2168
  br label %if.end87, !dbg !2170

if.end87:                                         ; preds = %land.lhs.true82, %if.end80, %if.then85
  %35 = phi %struct._IO_FILE* [ %32, %land.lhs.true82 ], [ null, %if.end80 ], [ %.pre, %if.then85 ], !dbg !2168
  %tobool88 = icmp eq %struct._IO_FILE* %35, null, !dbg !2168
  br i1 %tobool88, label %if.end93, label %land.lhs.true89, !dbg !2171

land.lhs.true89:                                  ; preds = %if.end87
  %36 = load i32, i32* @dump_flags, align 4, !dbg !2172
  %and90 = and i32 %36, 8, !dbg !2173
  %tobool91 = icmp eq i32 %and90, 0, !dbg !2173
  br i1 %tobool91, label %if.end93, label %if.then92, !dbg !2174

if.then92:                                        ; preds = %land.lhs.true89
  tail call void @dump_var_map(%struct._IO_FILE* nonnull %35, %struct._var_map* %call2) #6, !dbg !2175
  %.pre3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2176
  br label %if.end93, !dbg !2175

if.end93:                                         ; preds = %land.lhs.true89, %if.end87, %if.then92
  %37 = phi %struct._IO_FILE* [ %35, %land.lhs.true89 ], [ null, %if.end87 ], [ %.pre3, %if.then92 ], !dbg !2176
  %38 = load i32, i32* @dump_flags, align 4, !dbg !2177
  %and94 = and i32 %38, 8, !dbg !2178
  %tobool95 = icmp eq i32 %and94, 0, !dbg !2178
  %cond99 = select i1 %tobool95, %struct._IO_FILE* null, %struct._IO_FILE* %37, !dbg !2176
  tail call fastcc void @coalesce_partitions(%struct._var_map* %call2, %struct.ssa_conflicts_d* %call74, %struct.coalesce_list_d* %call1, %struct._IO_FILE* %cond99) #7, !dbg !2179
  tail call fastcc void @delete_coalesce_list(%struct.coalesce_list_d* %call1) #7, !dbg !2180
  tail call fastcc void @ssa_conflicts_delete(%struct.ssa_conflicts_d* %call74) #7, !dbg !2181
  br label %cleanup, !dbg !2182

cleanup:                                          ; preds = %if.end93, %if.then59
  ret %struct._var_map* %call2, !dbg !2183
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.coalesce_list_d* @create_coalesce_list() unnamed_addr #0 !dbg !2184 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2190
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !2190
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2190
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 2, !dbg !2190
  %2 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2190
  %tobool = icmp eq %struct.VEC_tree_gc* %2, null, !dbg !2190
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2190

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %2, i64 0, i32 0, !dbg !2190
  br label %cond.end, !dbg !2190

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2190
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !2190
  %mul = mul i32 %call, 3, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2189, metadata !DIExpression()), !dbg !2192
  %3 = icmp ugt i32 %mul, 40, !dbg !2193
  %spec.select = select i1 %3, i32 %mul, i32 40, !dbg !2193
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2189, metadata !DIExpression()), !dbg !2192
  %call4 = tail call i8* @xmalloc(i64 32) #6, !dbg !2194
  %4 = bitcast i8* %call4 to %struct.coalesce_list_d*, !dbg !2195
  call void @llvm.dbg.value(metadata %struct.coalesce_list_d* %4, metadata !2188, metadata !DIExpression()), !dbg !2192
  %conv = zext i32 %spec.select to i64, !dbg !2196
  %call5 = tail call %struct.htab* @htab_create(i64 %conv, i32 (i8*)* nonnull @coalesce_pair_map_hash, i32 (i8*, i8*)* nonnull @coalesce_pair_map_eq, void (i8*)* null) #6, !dbg !2197
  %list6 = bitcast i8* %call4 to %struct.htab**, !dbg !2198
  store %struct.htab* %call5, %struct.htab** %list6, align 8, !dbg !2199
  %sorted = getelementptr inbounds i8, i8* %call4, i64 8, !dbg !2200
  %5 = bitcast i8* %sorted to %struct.coalesce_pair***, !dbg !2200
  store %struct.coalesce_pair** null, %struct.coalesce_pair*** %5, align 8, !dbg !2201
  %num_sorted = getelementptr inbounds i8, i8* %call4, i64 16, !dbg !2202
  %6 = bitcast i8* %num_sorted to i32*, !dbg !2202
  store i32 0, i32* %6, align 8, !dbg !2203
  %cost_one_list = getelementptr inbounds i8, i8* %call4, i64 24, !dbg !2204
  %7 = bitcast i8* %cost_one_list to %struct.cost_one_pair_d**, !dbg !2204
  store %struct.cost_one_pair_d* null, %struct.cost_one_pair_d** %7, align 8, !dbg !2205
  ret %struct.coalesce_list_d* %4, !dbg !2206
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._var_map* @create_outofssa_var_map(%struct.coalesce_list_d* %cl, %struct.bitmap_head_def* %used_in_copy) unnamed_addr #5 !dbg !2207 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp75 = alloca %struct.gimple_stmt_iterator, align 8
  %end = alloca i8*, align 8
  call void @llvm.dbg.value(metadata %struct.coalesce_list_d* %cl, metadata !2211, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %used_in_copy, metadata !2212, metadata !DIExpression()), !dbg !2283
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2284
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2284
  %1 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2285
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #8, !dbg !2285
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2286
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 3, !dbg !2286
  %3 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2286
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %3, i64 0, i32 2, !dbg !2286
  %4 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2286
  %tobool = icmp eq %struct.VEC_tree_gc* %4, null, !dbg !2286
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2286

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %4, i64 0, i32 0, !dbg !2286
  br label %cond.end, !dbg !2286

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2286
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !2286
  %call4 = tail call %struct._var_map* @init_var_map(i32 %call) #6, !dbg !2287
  call void @llvm.dbg.value(metadata %struct._var_map* %call4, metadata !2224, metadata !DIExpression()), !dbg !2283
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2288
  %cfg = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !2288
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2288
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !2288
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2288
  %8 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2289
  %9 = bitcast %struct.gimple_stmt_iterator* %tmp75 to i8*, !dbg !2290
  %10 = bitcast i8** %end to i8*, !dbg !2291
  br label %for.cond, !dbg !2288

for.cond:                                         ; preds = %for.inc212, %cond.end
  %11 = phi %struct.control_flow_graph* [ %6, %cond.end ], [ %.pre8, %for.inc212 ], !dbg !2292
  %12 = phi %struct.function* [ %5, %cond.end ], [ %.pre, %for.inc212 ], !dbg !2292
  %.pn = phi %struct.basic_block_def* [ %7, %cond.end ], [ %bb.0, %for.inc212 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2293
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2293
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2220, metadata !DIExpression()), !dbg !2283
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 1, !dbg !2292
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2292
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %13, !dbg !2292
  br i1 %cmp, label %for.cond215.preheader, label %for.body, !dbg !2288

for.cond215.preheader:                            ; preds = %for.cond
  %.lcssa = phi %struct.function* [ %12, %for.cond ], !dbg !2292
  br label %for.cond215, !dbg !2294

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8, !dbg !2296
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #6, !dbg !2296
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %8, i64 24, i1 false), !dbg !2296
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8, !dbg !2296
  br label %for.cond8, !dbg !2297

for.cond8:                                        ; preds = %for.inc73, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2213, metadata !DIExpression(DW_OP_deref)), !dbg !2283
  %call9 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2298
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2299
  br i1 %tobool10, label %for.body11, label %for.end74, !dbg !2300

for.body11:                                       ; preds = %for.cond8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2213, metadata !DIExpression(DW_OP_deref)), !dbg !2283
  %call12 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2301
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call12, metadata !2246, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8 0, metadata !2253, metadata !DIExpression()), !dbg !2302
  %call14 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call12) #7, !dbg !2303
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !2252, metadata !DIExpression()), !dbg !2302
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %call14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2304
  %14 = bitcast %union.tree_node** %version to i32*, !dbg !2304
  %15 = load i32, i32* %14, align 8, !dbg !2304
  call void @llvm.dbg.value(metadata i32 %15, metadata !2251, metadata !DIExpression()), !dbg !2302
  call fastcc void @register_ssa_partition(%struct._var_map* %call4, %union.tree_node* %call14) #7, !dbg !2305
  call void @llvm.dbg.value(metadata i64 0, metadata !2250, metadata !DIExpression()), !dbg !2302
  %var36 = getelementptr inbounds %union.tree_node, %union.tree_node* %call14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2306
  %16 = bitcast i32* %var36 to %union.tree_node**, !dbg !2306
  br label %for.cond15, !dbg !2307

for.cond15:                                       ; preds = %for.inc, %for.body11
  %i13.0 = phi i64 [ 0, %for.body11 ], [ %inc, %for.inc ], !dbg !2308
  %saw_copy.0 = phi i8 [ 0, %for.body11 ], [ %saw_copy.1, %for.inc ], !dbg !2302
  call void @llvm.dbg.value(metadata i8 %saw_copy.0, metadata !2253, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %i13.0, metadata !2250, metadata !DIExpression()), !dbg !2302
  %call16 = call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %call12) #7, !dbg !2309
  %conv = zext i32 %call16 to i64, !dbg !2309
  %cmp17 = icmp ult i64 %i13.0, %conv, !dbg !2310
  br i1 %cmp17, label %for.body19, label %for.end, !dbg !2311

for.body19:                                       ; preds = %for.cond15
  %call20 = call fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %call12, i64 %i13.0) #7, !dbg !2312
  call void @llvm.dbg.value(metadata %struct.edge_def* %call20, metadata !2254, metadata !DIExpression()), !dbg !2313
  %conv21 = trunc i64 %i13.0 to i32, !dbg !2314
  %call22 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call12, i32 %conv21) #7, !dbg !2314
  %call23 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call22) #7, !dbg !2314
  call void @llvm.dbg.value(metadata %union.tree_node* %call23, metadata !2242, metadata !DIExpression()), !dbg !2315
  %17 = getelementptr inbounds %union.tree_node, %union.tree_node* %call23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2316
  %bf.load = load i64, i64* %17, align 8, !dbg !2316
  %bf.cast6 = and i64 %bf.load, 65535, !dbg !2318
  %cmp25 = icmp eq i64 %bf.cast6, 141, !dbg !2318
  br i1 %cmp25, label %if.then, label %if.end, !dbg !2319

if.then:                                          ; preds = %for.body19
  call fastcc void @register_ssa_partition(%struct._var_map* %call4, %union.tree_node* %call23) #7, !dbg !2320
  %bf.load28.pre = load i64, i64* %17, align 8, !dbg !2321
  br label %if.end, !dbg !2320

if.end:                                           ; preds = %if.then, %for.body19
  %bf.load28 = phi i64 [ %bf.load28.pre, %if.then ], [ %bf.load, %for.body19 ], !dbg !2321
  %bf.cast307 = and i64 %bf.load28, 65535, !dbg !2322
  %cmp31 = icmp eq i64 %bf.cast307, 141, !dbg !2322
  br i1 %cmp31, label %land.lhs.true, label %if.else61, !dbg !2323

land.lhs.true:                                    ; preds = %if.end
  %var34 = getelementptr inbounds %union.tree_node, %union.tree_node* %call23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2324
  %18 = bitcast i32* %var34 to %union.tree_node**, !dbg !2324
  %19 = load %union.tree_node*, %union.tree_node** %18, align 8, !dbg !2324
  %20 = load %union.tree_node*, %union.tree_node** %16, align 8, !dbg !2325
  %cmp37 = icmp eq %union.tree_node* %19, %20, !dbg !2326
  br i1 %cmp37, label %if.then39, label %if.else61, !dbg !2327

if.then39:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i8 1, metadata !2253, metadata !DIExpression()), !dbg !2302
  %version41 = getelementptr inbounds %union.tree_node, %union.tree_node* %call23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2328
  %21 = bitcast %union.tree_node** %version41 to i32*, !dbg !2328
  %22 = load i32, i32* %21, align 8, !dbg !2328
  %call42 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %used_in_copy, i32 %22) #6, !dbg !2329
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call20, i64 0, i32 7, !dbg !2330
  %23 = load i32, i32* %flags, align 8, !dbg !2330
  %and = and i32 %23, 2, !dbg !2331
  %cmp43 = icmp eq i32 %and, 0, !dbg !2332
  br i1 %cmp43, label %if.then45, label %for.inc, !dbg !2333

if.then45:                                        ; preds = %if.then39
  %call47 = call fastcc i32 @coalesce_cost_edge(%struct.edge_def* %call20) #7, !dbg !2334
  call void @llvm.dbg.value(metadata i32 %call47, metadata !2258, metadata !DIExpression()), !dbg !2335
  %cmp48 = icmp eq i32 %call47, 1, !dbg !2336
  br i1 %cmp48, label %land.lhs.true50, label %if.else, !dbg !2338

land.lhs.true50:                                  ; preds = %if.then45
  %call51 = call fastcc zeroext i8 @has_single_use(%union.tree_node* %call23) #7, !dbg !2339
  %tobool53 = icmp eq i8 %call51, 0, !dbg !2339
  br i1 %tobool53, label %if.else, label %if.then54, !dbg !2340

if.then54:                                        ; preds = %land.lhs.true50
  %24 = load i32, i32* %21, align 8, !dbg !2341
  call fastcc void @add_cost_one_coalesce(%struct.coalesce_list_d* %cl, i32 %15, i32 %24) #7, !dbg !2342
  br label %for.inc, !dbg !2342

if.else:                                          ; preds = %land.lhs.true50, %if.then45
  %25 = load i32, i32* %21, align 8, !dbg !2343
  call fastcc void @add_coalesce(%struct.coalesce_list_d* %cl, i32 %15, i32 %25, i32 %call47) #7, !dbg !2344
  br label %for.inc

if.else61:                                        ; preds = %land.lhs.true, %if.end
  %flags62 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call20, i64 0, i32 7, !dbg !2345
  %26 = load i32, i32* %flags62, align 8, !dbg !2345
  %and63 = and i32 %26, 2, !dbg !2347
  %tobool64 = icmp eq i32 %and63, 0, !dbg !2347
  br i1 %tobool64, label %for.inc, label %if.then65, !dbg !2348

if.then65:                                        ; preds = %if.else61
  call fastcc void @abnormal_corrupt(%union.gimple_statement_d* %call12, i32 %conv21) #7, !dbg !2349
  br label %for.inc, !dbg !2349

for.inc:                                          ; preds = %if.else61, %if.then54, %if.else, %if.then39, %if.then65
  %saw_copy.1 = phi i8 [ 1, %if.then54 ], [ 1, %if.else ], [ 1, %if.then39 ], [ %saw_copy.0, %if.then65 ], [ %saw_copy.0, %if.else61 ], !dbg !2302
  call void @llvm.dbg.value(metadata i8 %saw_copy.1, metadata !2253, metadata !DIExpression()), !dbg !2302
  %inc = add nuw nsw i64 %i13.0, 1, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2250, metadata !DIExpression()), !dbg !2302
  br label %for.cond15, !dbg !2351, !llvm.loop !2352

for.end:                                          ; preds = %for.cond15
  %saw_copy.0.lcssa = phi i8 [ %saw_copy.0, %for.cond15 ], !dbg !2302
  call void @llvm.dbg.value(metadata i8 %saw_copy.0.lcssa, metadata !2253, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8 %saw_copy.0.lcssa, metadata !2253, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8 %saw_copy.0.lcssa, metadata !2253, metadata !DIExpression()), !dbg !2302
  %tobool69 = icmp eq i8 %saw_copy.0.lcssa, 0, !dbg !2354
  br i1 %tobool69, label %for.inc73, label %if.then70, !dbg !2356

if.then70:                                        ; preds = %for.end
  %call71 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %used_in_copy, i32 %15) #6, !dbg !2357
  br label %for.inc73, !dbg !2357

for.inc73:                                        ; preds = %for.end, %if.then70
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2213, metadata !DIExpression(DW_OP_deref)), !dbg !2283
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2358
  br label %for.cond8, !dbg !2359, !llvm.loop !2360

for.end74:                                        ; preds = %for.cond8
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #8, !dbg !2362
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp75, %struct.basic_block_def* %bb.0) #7, !dbg !2362
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #8, !dbg !2362
  br label %for.cond76, !dbg !2363

for.cond76:                                       ; preds = %for.inc210, %for.end74
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2213, metadata !DIExpression(DW_OP_deref)), !dbg !2283
  %call77 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2364
  %tobool78 = icmp eq i8 %call77, 0, !dbg !2365
  br i1 %tobool78, label %for.body80, label %for.inc212, !dbg !2366

for.body80:                                       ; preds = %for.cond76
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2213, metadata !DIExpression(DW_OP_deref)), !dbg !2283
  %call81 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2367
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call81, metadata !2222, metadata !DIExpression()), !dbg !2283
  %call82 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call81) #7, !dbg !2368
  %tobool83 = icmp eq i8 %call82, 0, !dbg !2368
  br i1 %tobool83, label %if.end85, label %for.inc210, !dbg !2370

if.end85:                                         ; preds = %for.body80
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2225, metadata !DIExpression(DW_OP_deref)), !dbg !2283
  %call86 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %call81, i32 3) #7, !dbg !2371
  call void @llvm.dbg.value(metadata %union.tree_node* %call86, metadata !2221, metadata !DIExpression()), !dbg !2283
  br label %for.cond87, !dbg !2371

for.cond87:                                       ; preds = %for.body91, %if.end85
  %var.0 = phi %union.tree_node* [ %call86, %if.end85 ], [ %call93, %for.body91 ], !dbg !2373
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !2221, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2225, metadata !DIExpression(DW_OP_deref)), !dbg !2283
  %call88 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2374
  %tobool89 = icmp eq i8 %call88, 0, !dbg !2374
  br i1 %tobool89, label %for.body91, label %for.end94, !dbg !2371

for.body91:                                       ; preds = %for.cond87
  call fastcc void @register_ssa_partition(%struct._var_map* %call4, %union.tree_node* %var.0) #7, !dbg !2376
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2225, metadata !DIExpression(DW_OP_deref)), !dbg !2283
  %call93 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2374
  call void @llvm.dbg.value(metadata %union.tree_node* %call93, metadata !2221, metadata !DIExpression()), !dbg !2283
  br label %for.cond87, !dbg !2374, !llvm.loop !2377

for.end94:                                        ; preds = %for.cond87
  %call95 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call81) #7, !dbg !2379
  switch i32 %call95, label %for.inc210 [
    i32 6, label %sw.bb
    i32 7, label %sw.bb131
  ], !dbg !2380

sw.bb:                                            ; preds = %for.end94
  %call96 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call81) #7, !dbg !2381
  call void @llvm.dbg.value(metadata %union.tree_node* %call96, metadata !2263, metadata !DIExpression()), !dbg !2382
  %call97 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call81) #7, !dbg !2383
  call void @llvm.dbg.value(metadata %union.tree_node* %call97, metadata !2269, metadata !DIExpression()), !dbg !2382
  %call98 = call zeroext i8 @gimple_assign_copy_p(%union.gimple_statement_d* %call81) #6, !dbg !2384
  %tobool100 = icmp eq i8 %call98, 0, !dbg !2384
  br i1 %tobool100, label %for.inc210, label %land.lhs.true101, !dbg !2386

land.lhs.true101:                                 ; preds = %sw.bb
  %27 = getelementptr inbounds %union.tree_node, %union.tree_node* %call96, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2387
  %bf.load103 = load i64, i64* %27, align 8, !dbg !2387
  %bf.cast1054 = and i64 %bf.load103, 65535, !dbg !2388
  %cmp106 = icmp eq i64 %bf.cast1054, 141, !dbg !2388
  br i1 %cmp106, label %land.lhs.true108, label %for.inc210, !dbg !2389

land.lhs.true108:                                 ; preds = %land.lhs.true101
  %28 = getelementptr inbounds %union.tree_node, %union.tree_node* %call97, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2390
  %bf.load110 = load i64, i64* %28, align 8, !dbg !2390
  %bf.cast1125 = and i64 %bf.load110, 65535, !dbg !2391
  %cmp113 = icmp eq i64 %bf.cast1125, 141, !dbg !2391
  br i1 %cmp113, label %land.lhs.true115, label %for.inc210, !dbg !2392

land.lhs.true115:                                 ; preds = %land.lhs.true108
  %var117 = getelementptr inbounds %union.tree_node, %union.tree_node* %call96, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2393
  %29 = bitcast i32* %var117 to %union.tree_node**, !dbg !2393
  %30 = load %union.tree_node*, %union.tree_node** %29, align 8, !dbg !2393
  %var119 = getelementptr inbounds %union.tree_node, %union.tree_node* %call97, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2394
  %31 = bitcast i32* %var119 to %union.tree_node**, !dbg !2394
  %32 = load %union.tree_node*, %union.tree_node** %31, align 8, !dbg !2394
  %cmp120 = icmp eq %union.tree_node* %30, %32, !dbg !2395
  br i1 %cmp120, label %if.then122, label %for.inc210, !dbg !2396

if.then122:                                       ; preds = %land.lhs.true115
  %version124 = getelementptr inbounds %union.tree_node, %union.tree_node* %call96, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2397
  %33 = bitcast %union.tree_node** %version124 to i32*, !dbg !2397
  %34 = load i32, i32* %33, align 8, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %34, metadata !2238, metadata !DIExpression()), !dbg !2283
  %version126 = getelementptr inbounds %union.tree_node, %union.tree_node* %call97, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2399
  %35 = bitcast %union.tree_node** %version126 to i32*, !dbg !2399
  %36 = load i32, i32* %35, align 8, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %36, metadata !2239, metadata !DIExpression()), !dbg !2283
  %call127 = call fastcc i32 @coalesce_cost_bb(%struct.basic_block_def* %bb.0) #7, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %call127, metadata !2240, metadata !DIExpression()), !dbg !2283
  call fastcc void @add_coalesce(%struct.coalesce_list_d* %cl, i32 %34, i32 %36, i32 %call127) #7, !dbg !2401
  %call128 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %used_in_copy, i32 %34) #6, !dbg !2402
  %call129 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %used_in_copy, i32 %36) #6, !dbg !2403
  br label %for.inc210, !dbg !2404

sw.bb131:                                         ; preds = %for.end94
  %call133 = call fastcc i32 @gimple_asm_noutputs(%union.gimple_statement_d* %call81) #7, !dbg !2405
  %conv134 = zext i32 %call133 to i64, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %conv134, metadata !2270, metadata !DIExpression()), !dbg !2406
  %call135 = call fastcc i32 @gimple_asm_ninputs(%union.gimple_statement_d* %call81) #7, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %conv136, metadata !2273, metadata !DIExpression()), !dbg !2406
  %37 = alloca %union.tree_node*, i64 %conv134, align 16, !dbg !2408
  call void @llvm.dbg.value(metadata %union.tree_node** %37, metadata !2274, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i64 0, metadata !2272, metadata !DIExpression()), !dbg !2406
  br label %for.cond137, !dbg !2409

for.cond137:                                      ; preds = %for.body140, %sw.bb131
  %i132.0 = phi i64 [ 0, %sw.bb131 ], [ %inc144, %for.body140 ], !dbg !2411
  call void @llvm.dbg.value(metadata i64 %i132.0, metadata !2272, metadata !DIExpression()), !dbg !2406
  %exitcond = icmp eq i64 %i132.0, %conv134, !dbg !2412
  br i1 %exitcond, label %for.cond146.preheader, label %for.body140, !dbg !2414

for.cond146.preheader:                            ; preds = %for.cond137
  %conv136 = zext i32 %call135 to i64, !dbg !2407
  br label %for.cond146, !dbg !2415

for.body140:                                      ; preds = %for.cond137
  %conv141 = trunc i64 %i132.0 to i32, !dbg !2416
  %call142 = call fastcc %union.tree_node* @gimple_asm_output_op(%union.gimple_statement_d* %call81, i32 %conv141) #7, !dbg !2418
  call void @llvm.dbg.value(metadata %union.tree_node* %call142, metadata !2275, metadata !DIExpression()), !dbg !2406
  %38 = getelementptr inbounds %union.tree_node, %union.tree_node* %call142, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2419
  %39 = bitcast %union.tree_node** %38 to i64*, !dbg !2419
  %40 = load i64, i64* %39, align 8, !dbg !2419
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %37, i64 %i132.0, !dbg !2420
  %41 = bitcast %union.tree_node** %arrayidx to i64*, !dbg !2421
  store i64 %40, i64* %41, align 8, !dbg !2421
  %inc144 = add nuw nsw i64 %i132.0, 1, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %inc144, metadata !2272, metadata !DIExpression()), !dbg !2406
  br label %for.cond137, !dbg !2423, !llvm.loop !2424

for.cond146:                                      ; preds = %for.cond146.preheader, %cleanup
  %i132.1 = phi i64 [ %inc203, %cleanup ], [ 0, %for.cond146.preheader ], !dbg !2426
  call void @llvm.dbg.value(metadata i64 %i132.1, metadata !2272, metadata !DIExpression()), !dbg !2406
  %exitcond12 = icmp eq i64 %i132.1, %conv136, !dbg !2427
  br i1 %exitcond12, label %for.inc210.loopexit, label %for.body149, !dbg !2415

for.body149:                                      ; preds = %for.cond146
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8, !dbg !2428
  %conv150 = trunc i64 %i132.1 to i32, !dbg !2429
  %call151 = call fastcc %union.tree_node* @gimple_asm_input_op(%union.gimple_statement_d* %call81, i32 %conv150) #7, !dbg !2430
  call void @llvm.dbg.value(metadata %union.tree_node* %call151, metadata !2275, metadata !DIExpression()), !dbg !2406
  %purpose = getelementptr inbounds %union.tree_node, %union.tree_node* %call151, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2431
  %42 = bitcast i32* %purpose to %struct.tree_list**, !dbg !2431
  %43 = load %struct.tree_list*, %struct.tree_list** %42, align 8, !dbg !2431
  %value154 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %43, i64 0, i32 2, !dbg !2431
  %44 = bitcast %union.tree_node** %value154 to %struct.tree_string**, !dbg !2431
  %45 = load %struct.tree_string*, %struct.tree_string** %44, align 8, !dbg !2431
  %arraydecay = getelementptr inbounds %struct.tree_string, %struct.tree_string* %45, i64 0, i32 2, i64 0, !dbg !2431
  call void @llvm.dbg.value(metadata i8* %arraydecay, metadata !2276, metadata !DIExpression()), !dbg !2291
  %46 = getelementptr inbounds %union.tree_node, %union.tree_node* %call151, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2432
  %47 = load %union.tree_node*, %union.tree_node** %46, align 8, !dbg !2432
  call void @llvm.dbg.value(metadata %union.tree_node* %47, metadata !2280, metadata !DIExpression()), !dbg !2291
  %48 = getelementptr inbounds %union.tree_node, %union.tree_node* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2433
  %bf.load158 = load i64, i64* %48, align 8, !dbg !2433
  %bf.cast1602 = and i64 %bf.load158, 65535, !dbg !2435
  %cmp161 = icmp eq i64 %bf.cast1602, 141, !dbg !2435
  br i1 %cmp161, label %if.end164, label %cleanup, !dbg !2436

if.end164:                                        ; preds = %for.body149
  call void @llvm.dbg.value(metadata i8** %end, metadata !2281, metadata !DIExpression(DW_OP_deref)), !dbg !2291
  %call165 = call i64 @strtoul(i8* nonnull %arraydecay, i8** nonnull %end, i32 10) #6, !dbg !2437
  call void @llvm.dbg.value(metadata i64 %call165, metadata !2282, metadata !DIExpression()), !dbg !2291
  %cmp166 = icmp uge i64 %call165, %conv134, !dbg !2438
  %49 = load i8*, i8** %end, align 8, !dbg !2440
  call void @llvm.dbg.value(metadata i8* %49, metadata !2281, metadata !DIExpression()), !dbg !2291
  %cmp168 = icmp eq i8* %49, %arraydecay, !dbg !2441
  %or.cond = or i1 %cmp166, %cmp168, !dbg !2442
  br i1 %or.cond, label %cleanup, label %if.end171, !dbg !2442

if.end171:                                        ; preds = %if.end164
  %arrayidx172 = getelementptr inbounds %union.tree_node*, %union.tree_node** %37, i64 %call165, !dbg !2443
  %50 = bitcast %union.tree_node** %arrayidx172 to i64**, !dbg !2443
  %51 = load i64*, i64** %50, align 8, !dbg !2443
  %bf.load174 = load i64, i64* %51, align 8, !dbg !2443
  %bf.cast1763 = and i64 %bf.load174, 65535, !dbg !2445
  %cmp177 = icmp eq i64 %bf.cast1763, 141, !dbg !2445
  br i1 %cmp177, label %if.end180, label %cleanup, !dbg !2446

if.end180:                                        ; preds = %if.end171
  %version183 = getelementptr inbounds i64, i64* %51, i64 5, !dbg !2447
  %52 = bitcast i64* %version183 to i32*, !dbg !2447
  %53 = load i32, i32* %52, align 8, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %53, metadata !2238, metadata !DIExpression()), !dbg !2283
  %version185 = getelementptr inbounds %union.tree_node, %union.tree_node* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2448
  %54 = bitcast %union.tree_node** %version185 to i32*, !dbg !2448
  %55 = load i32, i32* %54, align 8, !dbg !2448
  call void @llvm.dbg.value(metadata i32 %55, metadata !2239, metadata !DIExpression()), !dbg !2283
  %var188 = getelementptr inbounds i64, i64* %51, i64 3, !dbg !2449
  %56 = bitcast i64* %var188 to %union.tree_node**, !dbg !2449
  %57 = load %union.tree_node*, %union.tree_node** %56, align 8, !dbg !2449
  %var190 = getelementptr inbounds %union.tree_node, %union.tree_node* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2451
  %58 = bitcast i32* %var190 to %union.tree_node**, !dbg !2451
  %59 = load %union.tree_node*, %union.tree_node** %58, align 8, !dbg !2451
  %cmp191 = icmp eq %union.tree_node* %57, %59, !dbg !2452
  br i1 %cmp191, label %if.then193, label %cleanup, !dbg !2453

if.then193:                                       ; preds = %if.end180
  %call194 = call zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def* %bb.0) #6, !dbg !2454
  %call195 = call fastcc i32 @coalesce_cost(i32 10000, i8 zeroext %call194) #7, !dbg !2456
  call void @llvm.dbg.value(metadata i32 %call195, metadata !2240, metadata !DIExpression()), !dbg !2283
  call fastcc void @add_coalesce(%struct.coalesce_list_d* %cl, i32 %53, i32 %55, i32 %call195) #7, !dbg !2457
  %call196 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %used_in_copy, i32 %53) #6, !dbg !2458
  %call197 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %used_in_copy, i32 %55) #6, !dbg !2459
  br label %cleanup, !dbg !2460

cleanup:                                          ; preds = %if.end171, %for.body149, %if.end180, %if.then193, %if.end164
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #8, !dbg !2461
  %inc203 = add nuw nsw i64 %i132.1, 1, !dbg !2462
  call void @llvm.dbg.value(metadata i64 %inc203, metadata !2272, metadata !DIExpression()), !dbg !2406
  br label %for.cond146, !dbg !2463, !llvm.loop !2464

for.inc210.loopexit:                              ; preds = %for.cond146
  br label %for.inc210, !dbg !2466

for.inc210:                                       ; preds = %for.inc210.loopexit, %sw.bb, %for.body80, %if.then122, %land.lhs.true115, %land.lhs.true108, %land.lhs.true101, %for.end94
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2213, metadata !DIExpression(DW_OP_deref)), !dbg !2283
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2466
  br label %for.cond76, !dbg !2467, !llvm.loop !2468

for.inc212:                                       ; preds = %for.cond76
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2292
  %cfg7.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2470
  %.pre8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7.phi.trans.insert, align 8, !dbg !2292
  br label %for.cond, !dbg !2292, !llvm.loop !2471

for.cond215:                                      ; preds = %for.cond215.preheader, %for.inc302
  %60 = phi %struct.function* [ %.pre10, %for.inc302 ], [ %.lcssa, %for.cond215.preheader ], !dbg !2473
  %i.0 = phi i32 [ %inc303, %for.inc302 ], [ 1, %for.cond215.preheader ], !dbg !2475
  %first.0 = phi %union.tree_node* [ %first.3, %for.inc302 ], [ null, %for.cond215.preheader ], !dbg !2283
  call void @llvm.dbg.value(metadata %union.tree_node* %first.0, metadata !2223, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2241, metadata !DIExpression()), !dbg !2283
  %gimple_df217 = getelementptr inbounds %struct.function, %struct.function* %60, i64 0, i32 3, !dbg !2473
  %61 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df217, align 8, !dbg !2473
  %ssa_names218 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %61, i64 0, i32 2, !dbg !2473
  %62 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names218, align 8, !dbg !2473
  %tobool219 = icmp eq %struct.VEC_tree_gc* %62, null, !dbg !2473
  br i1 %tobool219, label %cond.end226, label %cond.true220, !dbg !2473

cond.true220:                                     ; preds = %for.cond215
  %base224 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %62, i64 0, i32 0, !dbg !2473
  br label %cond.end226, !dbg !2473

cond.end226:                                      ; preds = %for.cond215, %cond.true220
  %cond227 = phi %struct.VEC_tree_base* [ %base224, %cond.true220 ], [ null, %for.cond215 ], !dbg !2473
  %call228 = call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond227) #7, !dbg !2473
  %cmp229 = icmp ult i32 %i.0, %call228, !dbg !2476
  br i1 %cmp229, label %for.body231, label %for.end304, !dbg !2294

for.body231:                                      ; preds = %cond.end226
  %63 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2477
  %gimple_df233 = getelementptr inbounds %struct.function, %struct.function* %63, i64 0, i32 3, !dbg !2477
  %64 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df233, align 8, !dbg !2477
  %ssa_names234 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %64, i64 0, i32 2, !dbg !2477
  %65 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names234, align 8, !dbg !2477
  %tobool235 = icmp eq %struct.VEC_tree_gc* %65, null, !dbg !2477
  br i1 %tobool235, label %cond.end242, label %cond.true236, !dbg !2477

cond.true236:                                     ; preds = %for.body231
  %base240 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %65, i64 0, i32 0, !dbg !2477
  br label %cond.end242, !dbg !2477

cond.end242:                                      ; preds = %for.body231, %cond.true236
  %cond243 = phi %struct.VEC_tree_base* [ %base240, %cond.true236 ], [ null, %for.body231 ], !dbg !2477
  %call244 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond243, i32 %i.0) #7, !dbg !2477
  call void @llvm.dbg.value(metadata %union.tree_node* %call244, metadata !2221, metadata !DIExpression()), !dbg !2283
  %cmp245 = icmp eq %union.tree_node* %call244, null, !dbg !2479
  br i1 %cmp245, label %for.inc302, label %land.lhs.true247, !dbg !2481

land.lhs.true247:                                 ; preds = %cond.end242
  %call248 = call zeroext i8 @is_gimple_reg(%union.tree_node* nonnull %call244) #6, !dbg !2482
  %tobool250 = icmp eq i8 %call248, 0, !dbg !2482
  br i1 %tobool250, label %for.inc302, label %if.then251, !dbg !2483

if.then251:                                       ; preds = %land.lhs.true247
  %var253 = getelementptr inbounds %union.tree_node, %union.tree_node* %call244, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2484
  %66 = bitcast i32* %var253 to i64**, !dbg !2484
  %67 = load i64*, i64** %66, align 8, !dbg !2484
  %bf.load255 = load i64, i64* %67, align 8, !dbg !2484
  %bf.cast2571 = and i64 %bf.load255, 65535, !dbg !2487
  %cmp258 = icmp eq i64 %bf.cast2571, 36, !dbg !2487
  %68 = bitcast i64* %67 to %union.tree_node*, !dbg !2488
  br i1 %cmp258, label %if.then260, label %if.end286, !dbg !2488

if.then260:                                       ; preds = %if.then251
  %cmp261 = icmp eq %union.tree_node* %first.0, null, !dbg !2489
  br i1 %cmp261, label %if.end286, label %if.else264, !dbg !2492

if.else264:                                       ; preds = %if.then260
  %69 = bitcast i32* %var253 to %union.tree_node**, !dbg !2493
  %var268 = getelementptr inbounds %union.tree_node, %union.tree_node* %first.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2493
  %70 = bitcast i32* %var268 to %union.tree_node**, !dbg !2493
  %71 = load %union.tree_node*, %union.tree_node** %70, align 8, !dbg !2493
  %cmp269 = icmp eq %union.tree_node* %71, %68, !dbg !2493
  br i1 %cmp269, label %cond.end273, label %cond.true271, !dbg !2493

cond.true271:                                     ; preds = %if.else264
  call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2493
  br label %cond.end273, !dbg !2493

cond.end273:                                      ; preds = %if.else264, %cond.true271
  %version276 = getelementptr inbounds %union.tree_node, %union.tree_node* %first.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2495
  %72 = bitcast %union.tree_node** %version276 to i32*, !dbg !2495
  %73 = load i32, i32* %72, align 8, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %73, metadata !2238, metadata !DIExpression()), !dbg !2283
  %version278 = getelementptr inbounds %union.tree_node, %union.tree_node* %call244, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2496
  %74 = bitcast %union.tree_node** %version278 to i32*, !dbg !2496
  %75 = load i32, i32* %74, align 8, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %75, metadata !2239, metadata !DIExpression()), !dbg !2283
  %call279 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %used_in_copy, i32 %73) #6, !dbg !2497
  %call280 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %used_in_copy, i32 %75) #6, !dbg !2498
  %76 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2499
  %cfg282 = getelementptr inbounds %struct.function, %struct.function* %76, i64 0, i32 1, !dbg !2499
  %77 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg282, align 8, !dbg !2499
  %x_exit_block_ptr283 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %77, i64 0, i32 1, !dbg !2499
  %78 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr283, align 8, !dbg !2499
  %call284 = call fastcc i32 @coalesce_cost_bb(%struct.basic_block_def* %78) #7, !dbg !2500
  call void @llvm.dbg.value(metadata i32 %call284, metadata !2240, metadata !DIExpression()), !dbg !2283
  call fastcc void @add_coalesce(%struct.coalesce_list_d* %cl, i32 %73, i32 %75, i32 %call284) #7, !dbg !2501
  %.pre11 = load %union.tree_node*, %union.tree_node** %69, align 8, !dbg !2502
  br label %if.end286

if.end286:                                        ; preds = %cond.end273, %if.then260, %if.then251
  %79 = phi %union.tree_node* [ %68, %if.then251 ], [ %.pre11, %cond.end273 ], [ %68, %if.then260 ], !dbg !2502
  %first.2 = phi %union.tree_node* [ %first.0, %if.then251 ], [ %first.0, %cond.end273 ], [ %call244, %if.then260 ], !dbg !2283
  call void @llvm.dbg.value(metadata %union.tree_node* %first.2, metadata !2223, metadata !DIExpression()), !dbg !2283
  %80 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2504
  %call290 = call %union.tree_node* @gimple_default_def(%struct.function* %80, %union.tree_node* %79) #6, !dbg !2505
  %cmp291 = icmp eq %union.tree_node* %call290, %call244, !dbg !2506
  br i1 %cmp291, label %land.lhs.true293, label %for.inc302, !dbg !2507

land.lhs.true293:                                 ; preds = %if.end286
  %call294 = call fastcc zeroext i8 @has_zero_uses(%union.tree_node* nonnull %call244) #7, !dbg !2508
  %tobool295 = icmp eq i8 %call294, 0, !dbg !2508
  br i1 %tobool295, label %if.then296, label %for.inc302, !dbg !2509

if.then296:                                       ; preds = %land.lhs.true293
  %version298 = getelementptr inbounds %union.tree_node, %union.tree_node* %call244, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2510
  %81 = bitcast %union.tree_node** %version298 to i32*, !dbg !2510
  %82 = load i32, i32* %81, align 8, !dbg !2510
  %call299 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %used_in_copy, i32 %82) #6, !dbg !2511
  br label %for.inc302, !dbg !2511

for.inc302:                                       ; preds = %land.lhs.true293, %land.lhs.true247, %cond.end242, %if.then296, %if.end286
  %first.3 = phi %union.tree_node* [ %first.0, %land.lhs.true247 ], [ %first.0, %cond.end242 ], [ %first.2, %if.then296 ], [ %first.2, %land.lhs.true293 ], [ %first.2, %if.end286 ], !dbg !2283
  call void @llvm.dbg.value(metadata %union.tree_node* %first.3, metadata !2223, metadata !DIExpression()), !dbg !2283
  %inc303 = add i32 %i.0, 1, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %inc303, metadata !2241, metadata !DIExpression()), !dbg !2283
  %.pre10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2473
  br label %for.cond215, !dbg !2513, !llvm.loop !2514

for.end304:                                       ; preds = %cond.end226
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #8, !dbg !2516
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2516
  ret %struct._var_map* %call4, !dbg !2517
}

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @hash_ssa_name_by_var(i8* %p) #5 !dbg !2518 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2520, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8* %p, metadata !2521, metadata !DIExpression()), !dbg !2522
  %0 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !2523
  %var = getelementptr inbounds i8, i8* %p, i64 24, !dbg !2524
  %1 = bitcast i8* %var to i8**, !dbg !2524
  %2 = load i8*, i8** %1, align 8, !dbg !2524
  %call = tail call i32 %0(i8* %2) #6, !dbg !2523
  ret i32 %call, !dbg !2525
}

; Function Attrs: nounwind uwtable
define internal i32 @eq_ssa_name_by_var(i8* %p1, i8* %p2) #5 !dbg !2526 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2528, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2530, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2531, metadata !DIExpression()), !dbg !2532
  %var = getelementptr inbounds i8, i8* %p1, i64 24, !dbg !2533
  %0 = bitcast i8* %var to %union.tree_node**, !dbg !2533
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2533
  %var2 = getelementptr inbounds i8, i8* %p2, i64 24, !dbg !2534
  %2 = bitcast i8* %var2 to %union.tree_node**, !dbg !2534
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !2534
  %cmp = icmp eq %union.tree_node* %1, %3, !dbg !2535
  %conv = zext i1 %cmp to i32, !dbg !2535
  ret i32 %conv, !dbg !2536
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !2537 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2543, metadata !DIExpression()), !dbg !2544
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2545
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2545

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2545
  %0 = load i32, i32* %num, align 8, !dbg !2545
  br label %cond.end, !dbg !2545

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2545
  ret i32 %cond, !dbg !2545
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2546 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2550, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2551, metadata !DIExpression()), !dbg !2552
  br label %land.end, !dbg !2553

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2553
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2553
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2553
  ret %union.tree_node* %0, !dbg !2553
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @has_zero_uses(%union.tree_node* %var) unnamed_addr #0 !dbg !2554 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2559, metadata !DIExpression()), !dbg !2565
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2566
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !2566
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !2560, metadata !DIExpression()), !dbg !2565
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !2567
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !2567
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !2567
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !2569
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2570

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !2571
  %tobool = icmp eq i32 %3, 0, !dbg !2571
  br i1 %tobool, label %cleanup, label %if.end2, !dbg !2573

if.end2:                                          ; preds = %if.end
  %call = tail call zeroext i8 @has_zero_uses_1(%struct.ssa_use_operand_d* nonnull %0) #6, !dbg !2574
  br label %cleanup, !dbg !2575

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i8 [ %call, %if.end2 ], [ 1, %entry ], [ 0, %if.end ], !dbg !2565
  ret i8 %retval.0, !dbg !2576
}

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_coalesce(%struct.coalesce_list_d* %cl, i32 %p1, i32 %p2, i32 %value) unnamed_addr #0 !dbg !2577 {
entry:
  call void @llvm.dbg.value(metadata %struct.coalesce_list_d* %cl, metadata !2581, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 %p1, metadata !2582, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 %p2, metadata !2583, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 %value, metadata !2584, metadata !DIExpression()), !dbg !2586
  %sorted = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 1, !dbg !2587
  %0 = load %struct.coalesce_pair**, %struct.coalesce_pair*** %sorted, align 8, !dbg !2587
  %cmp = icmp eq %struct.coalesce_pair** %0, null, !dbg !2587
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2587

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 314, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2587
  br label %cond.end, !dbg !2587

cond.end:                                         ; preds = %entry, %cond.true
  %cmp1 = icmp eq i32 %p1, %p2, !dbg !2588
  br i1 %cmp1, label %cleanup.cont, label %if.end, !dbg !2590

if.end:                                           ; preds = %cond.end
  %call = tail call fastcc %struct.coalesce_pair* @find_coalesce_pair(%struct.coalesce_list_d* %cl, i32 %p1, i32 %p2, i8 zeroext 1) #7, !dbg !2591
  call void @llvm.dbg.value(metadata %struct.coalesce_pair* %call, metadata !2585, metadata !DIExpression()), !dbg !2586
  %cost = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %call, i64 0, i32 2, !dbg !2592
  %1 = load i32, i32* %cost, align 4, !dbg !2592
  %cmp2 = icmp slt i32 %1, 2147483646, !dbg !2594
  br i1 %cmp2, label %if.then3, label %cleanup.cont, !dbg !2595

if.then3:                                         ; preds = %if.end
  %cmp4 = icmp slt i32 %value, 2147483646, !dbg !2596
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !2599

if.then5:                                         ; preds = %if.then3
  %add = add nsw i32 %1, %value, !dbg !2600
  store i32 %add, i32* %cost, align 4, !dbg !2600
  br label %cleanup.cont, !dbg !2601

if.else:                                          ; preds = %if.then3
  store i32 %value, i32* %cost, align 4, !dbg !2602
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %cond.end, %if.then5, %if.else, %if.end
  ret void, !dbg !2603
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #2

declare dso_local void @dump_var_map(%struct._IO_FILE*, %struct._var_map*) local_unnamed_addr #2

declare dso_local void @partition_view_bitmap(%struct._var_map*, %struct.bitmap_head_def*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @num_var_partitions(%struct._var_map* %map) unnamed_addr #0 !dbg !2604 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !2608, metadata !DIExpression()), !dbg !2609
  %num_partitions = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 3, !dbg !2610
  %0 = load i32, i32* %num_partitions, align 8, !dbg !2610
  ret i32 %0, !dbg !2611
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delete_coalesce_list(%struct.coalesce_list_d* %cl) unnamed_addr #0 !dbg !2612 {
entry:
  call void @llvm.dbg.value(metadata %struct.coalesce_list_d* %cl, metadata !2616, metadata !DIExpression()), !dbg !2617
  %cost_one_list = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 3, !dbg !2618
  %0 = load %struct.cost_one_pair_d*, %struct.cost_one_pair_d** %cost_one_list, align 8, !dbg !2618
  %cmp = icmp eq %struct.cost_one_pair_d* %0, null, !dbg !2618
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2618

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 243, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2618
  br label %cond.end, !dbg !2618

cond.end:                                         ; preds = %entry, %cond.true
  %list = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 0, !dbg !2619
  %1 = load %struct.htab*, %struct.htab** %list, align 8, !dbg !2619
  tail call void @htab_delete(%struct.htab* %1) #6, !dbg !2620
  %sorted = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 1, !dbg !2621
  %2 = load %struct.coalesce_pair**, %struct.coalesce_pair*** %sorted, align 8, !dbg !2621
  %tobool = icmp eq %struct.coalesce_pair** %2, null, !dbg !2623
  br i1 %tobool, label %if.end, label %if.then, !dbg !2624

if.then:                                          ; preds = %cond.end
  %3 = bitcast %struct.coalesce_pair** %2 to i8*, !dbg !2624
  tail call void @free(i8* nonnull %3) #6, !dbg !2625
  br label %if.end, !dbg !2625

if.end:                                           ; preds = %cond.end, %if.then
  %num_sorted = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 2, !dbg !2626
  %4 = load i32, i32* %num_sorted, align 8, !dbg !2626
  %cmp2 = icmp eq i32 %4, 0, !dbg !2626
  br i1 %cmp2, label %cond.end5, label %cond.true3, !dbg !2626

cond.true3:                                       ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 247, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2626
  br label %cond.end5, !dbg !2626

cond.end5:                                        ; preds = %if.end, %cond.true3
  %5 = bitcast %struct.coalesce_list_d* %cl to i8*, !dbg !2627
  tail call void @free(i8* %5) #6, !dbg !2628
  ret void, !dbg !2629
}

declare dso_local %struct.tree_live_info_d* @calculate_live_ranges(%struct._var_map*) local_unnamed_addr #2

declare dso_local void @dump_live_info(%struct._IO_FILE*, %struct.tree_live_info_d*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.ssa_conflicts_d* @build_ssa_conflict_graph(%struct.tree_live_info_d* %liveinfo) unnamed_addr #5 !dbg !2630 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp51 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.tree_live_info_d* %liveinfo, metadata !2634, metadata !DIExpression()), !dbg !2658
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2659
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2659
  %call = tail call fastcc %struct._var_map* @live_var_map(%struct.tree_live_info_d* %liveinfo) #7, !dbg !2660
  call void @llvm.dbg.value(metadata %struct._var_map* %call, metadata !2636, metadata !DIExpression()), !dbg !2658
  %call1 = tail call fastcc i32 @num_var_partitions(%struct._var_map* %call) #7, !dbg !2661
  %call2 = tail call fastcc %struct.ssa_conflicts_d* @ssa_conflicts_new(i32 %call1) #7, !dbg !2662
  call void @llvm.dbg.value(metadata %struct.ssa_conflicts_d* %call2, metadata !2635, metadata !DIExpression()), !dbg !2658
  %call3 = tail call fastcc %struct.live_track_d* @new_live_track(%struct._var_map* %call) #7, !dbg !2663
  call void @llvm.dbg.value(metadata %struct.live_track_d* %call3, metadata !2639, metadata !DIExpression()), !dbg !2658
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2664
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2664
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2664
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !2664
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2664
  %4 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2665
  %5 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2666
  %6 = bitcast %struct.gimple_stmt_iterator* %tmp51 to i8*, !dbg !2667
  br label %for.cond, !dbg !2664

for.cond:                                         ; preds = %for.end65, %entry
  %7 = phi %struct.control_flow_graph* [ %2, %entry ], [ %.pre3, %for.end65 ], !dbg !2668
  %.pn = phi %struct.basic_block_def* [ %3, %entry ], [ %bb.0, %for.end65 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2669
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2669
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2637, metadata !DIExpression()), !dbg !2658
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 1, !dbg !2668
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2668
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %8, !dbg !2668
  br i1 %cmp, label %for.end68, label %for.body, !dbg !2664

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2670
  %call6 = call fastcc %struct.bitmap_head_def* @live_on_exit(%struct.tree_live_info_d* %liveinfo, %struct.basic_block_def* %bb.0) #7, !dbg !2671
  call fastcc void @live_track_init(%struct.live_track_d* %call3, %struct.bitmap_head_def* %call6) #7, !dbg !2672
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8, !dbg !2673
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #7, !dbg !2673
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !2673
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8, !dbg !2673
  br label %for.cond7, !dbg !2674

for.cond7:                                        ; preds = %cleanup, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2640, metadata !DIExpression(DW_OP_deref)), !dbg !2665
  %call8 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2675
  %tobool = icmp eq i8 %call8, 0, !dbg !2676
  br i1 %tobool, label %for.body9, label %for.end50, !dbg !2677

for.body9:                                        ; preds = %for.cond7
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2640, metadata !DIExpression(DW_OP_deref)), !dbg !2665
  %call10 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2678
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call10, metadata !2648, metadata !DIExpression()), !dbg !2679
  %call11 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call10) #7, !dbg !2680
  %tobool12 = icmp eq i8 %call11, 0, !dbg !2680
  br i1 %tobool12, label %if.else, label %if.then, !dbg !2681

if.then:                                          ; preds = %for.body9
  %call13 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call10) #7, !dbg !2682
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !2649, metadata !DIExpression()), !dbg !2683
  %call14 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call10) #7, !dbg !2684
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !2652, metadata !DIExpression()), !dbg !2683
  %call15 = call zeroext i8 @gimple_assign_copy_p(%union.gimple_statement_d* %call10) #6, !dbg !2685
  %tobool16 = icmp eq i8 %call15, 0, !dbg !2685
  br i1 %tobool16, label %if.end31, label %land.lhs.true, !dbg !2687

land.lhs.true:                                    ; preds = %if.then
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %call13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2688
  %bf.load = load i64, i64* %9, align 8, !dbg !2688
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2689
  %cmp17 = icmp eq i64 %bf.cast1, 141, !dbg !2689
  br i1 %cmp17, label %land.lhs.true19, label %if.end31, !dbg !2690

land.lhs.true19:                                  ; preds = %land.lhs.true
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2691
  %bf.load21 = load i64, i64* %10, align 8, !dbg !2691
  %bf.cast232 = and i64 %bf.load21, 65535, !dbg !2692
  %cmp24 = icmp eq i64 %bf.cast232, 141, !dbg !2692
  br i1 %cmp24, label %if.then26, label %if.end31, !dbg !2693

if.then26:                                        ; preds = %land.lhs.true19
  call fastcc void @live_track_clear_var(%struct.live_track_d* %call3, %union.tree_node* %call14) #7, !dbg !2694
  br label %if.end31, !dbg !2694

if.else:                                          ; preds = %for.body9
  %call27 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call10) #7, !dbg !2695
  %tobool28 = icmp eq i8 %call27, 0, !dbg !2695
  br i1 %tobool28, label %if.end31, label %cleanup, !dbg !2697

if.end31:                                         ; preds = %if.then, %if.else, %land.lhs.true, %land.lhs.true19, %if.then26
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2658
  %call32 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %call10, i32 2) #7, !dbg !2698
  call void @llvm.dbg.value(metadata %union.tree_node* %call32, metadata !2644, metadata !DIExpression()), !dbg !2679
  br label %for.cond33, !dbg !2698

for.cond33:                                       ; preds = %for.body37, %if.end31
  %var.0 = phi %union.tree_node* [ %call32, %if.end31 ], [ %call38, %for.body37 ], !dbg !2700
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !2644, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2658
  %call34 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2701
  %tobool35 = icmp eq i8 %call34, 0, !dbg !2701
  br i1 %tobool35, label %for.body37, label %for.end, !dbg !2698

for.body37:                                       ; preds = %for.cond33
  call fastcc void @live_track_process_def(%struct.live_track_d* %call3, %union.tree_node* %var.0, %struct.ssa_conflicts_d* %call2) #7, !dbg !2703
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2658
  %call38 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2701
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !2644, metadata !DIExpression()), !dbg !2679
  br label %for.cond33, !dbg !2701, !llvm.loop !2704

for.end:                                          ; preds = %for.cond33
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2658
  %call39 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %call10, i32 1) #7, !dbg !2706
  call void @llvm.dbg.value(metadata %union.tree_node* %call39, metadata !2644, metadata !DIExpression()), !dbg !2679
  br label %for.cond40, !dbg !2706

for.cond40:                                       ; preds = %for.body44, %for.end
  %var.1 = phi %union.tree_node* [ %call39, %for.end ], [ %call46, %for.body44 ], !dbg !2708
  call void @llvm.dbg.value(metadata %union.tree_node* %var.1, metadata !2644, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2658
  %call41 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2709
  %tobool42 = icmp eq i8 %call41, 0, !dbg !2709
  br i1 %tobool42, label %for.body44, label %cleanup.loopexit, !dbg !2706

for.body44:                                       ; preds = %for.cond40
  call fastcc void @live_track_process_use(%struct.live_track_d* %call3, %union.tree_node* %var.1) #7, !dbg !2711
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2658
  %call46 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2709
  call void @llvm.dbg.value(metadata %union.tree_node* %call46, metadata !2644, metadata !DIExpression()), !dbg !2679
  br label %for.cond40, !dbg !2709, !llvm.loop !2712

cleanup.loopexit:                                 ; preds = %for.cond40
  br label %cleanup, !dbg !2714

cleanup:                                          ; preds = %cleanup.loopexit, %if.else
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2640, metadata !DIExpression(DW_OP_deref)), !dbg !2665
  call fastcc void @gsi_prev(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2714
  br label %for.cond7, !dbg !2715, !llvm.loop !2716

for.end50:                                        ; preds = %for.cond7
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !2718
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp51, %struct.basic_block_def* %bb.0) #6, !dbg !2718
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !2718
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !2718
  br label %for.cond52, !dbg !2719

for.cond52:                                       ; preds = %for.inc64, %for.end50
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2640, metadata !DIExpression(DW_OP_deref)), !dbg !2665
  %call53 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2720
  %tobool54 = icmp eq i8 %call53, 0, !dbg !2721
  br i1 %tobool54, label %for.body56, label %for.end65, !dbg !2722

for.body56:                                       ; preds = %for.cond52
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2640, metadata !DIExpression(DW_OP_deref)), !dbg !2665
  %call57 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2723
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call57, metadata !2653, metadata !DIExpression()), !dbg !2724
  %call58 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call57) #7, !dbg !2725
  %call59 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call58) #7, !dbg !2725
  call void @llvm.dbg.value(metadata %union.tree_node* %call59, metadata !2657, metadata !DIExpression()), !dbg !2724
  %call60 = call fastcc zeroext i8 @live_track_live_p(%struct.live_track_d* %call3, %union.tree_node* %call59) #7, !dbg !2726
  %tobool61 = icmp eq i8 %call60, 0, !dbg !2726
  br i1 %tobool61, label %for.inc64, label %if.then62, !dbg !2728

if.then62:                                        ; preds = %for.body56
  call fastcc void @live_track_process_def(%struct.live_track_d* %call3, %union.tree_node* %call59, %struct.ssa_conflicts_d* %call2) #7, !dbg !2729
  br label %for.inc64, !dbg !2729

for.inc64:                                        ; preds = %for.body56, %if.then62
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2640, metadata !DIExpression(DW_OP_deref)), !dbg !2665
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2730
  br label %for.cond52, !dbg !2731, !llvm.loop !2732

for.end65:                                        ; preds = %for.cond52
  call fastcc void @live_track_clear_base_vars(%struct.live_track_d* %call3) #7, !dbg !2734
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2735
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2668
  %cfg5.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2736
  %.pre3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg5.phi.trans.insert, align 8, !dbg !2668
  br label %for.cond, !dbg !2668, !llvm.loop !2737

for.end68:                                        ; preds = %for.cond
  call fastcc void @delete_live_track(%struct.live_track_d* %call3) #7, !dbg !2739
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2740
  ret %struct.ssa_conflicts_d* %call2, !dbg !2741
}

declare dso_local void @delete_tree_live_info(%struct.tree_live_info_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ssa_conflicts_dump(%struct._IO_FILE* %file, %struct.ssa_conflicts_d* %ptr) unnamed_addr #5 !dbg !2742 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2746, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %struct.ssa_conflicts_d* %ptr, metadata !2747, metadata !DIExpression()), !dbg !2749
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2750
  call void @llvm.dbg.value(metadata i32 0, metadata !2748, metadata !DIExpression()), !dbg !2749
  %size = getelementptr inbounds %struct.ssa_conflicts_d, %struct.ssa_conflicts_d* %ptr, i64 0, i32 0, !dbg !2751
  %conflicts = getelementptr inbounds %struct.ssa_conflicts_d, %struct.ssa_conflicts_d* %ptr, i64 0, i32 1, !dbg !2754
  br label %for.cond, !dbg !2756

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !2757
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2748, metadata !DIExpression()), !dbg !2749
  %0 = load i32, i32* %size, align 8, !dbg !2758
  %1 = zext i32 %0 to i64, !dbg !2759
  %cmp = icmp ult i64 %indvars.iv, %1, !dbg !2759
  br i1 %cmp, label %for.body, label %for.end, !dbg !2760

for.body:                                         ; preds = %for.cond
  %2 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %conflicts, align 8, !dbg !2761
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %2, i64 %indvars.iv, !dbg !2762
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !2762
  %tobool = icmp eq %struct.bitmap_head_def* %3, null, !dbg !2762
  br i1 %tobool, label %for.inc, label %if.then, !dbg !2763

if.then:                                          ; preds = %for.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2764
  %5 = trunc i64 %indvars.iv to i32, !dbg !2766
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %5) #6, !dbg !2766
  %6 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %conflicts, align 8, !dbg !2767
  %arrayidx4 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %6, i64 %indvars.iv, !dbg !2767
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx4, align 8, !dbg !2767
  tail call void @bitmap_print(%struct._IO_FILE* %file, %struct.bitmap_head_def* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2767
  br label %for.inc, !dbg !2768

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2769
  br label %for.cond, !dbg !2770, !llvm.loop !2771

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2773
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sort_coalesce_list(%struct.coalesce_list_d* %cl) unnamed_addr #5 !dbg !2774 {
entry:
  %ppi = alloca %struct.coalesce_pair_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.coalesce_list_d* %cl, metadata !2776, metadata !DIExpression()), !dbg !2791
  %0 = bitcast %struct.coalesce_pair_iterator* %ppi to i8*, !dbg !2792
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2792
  %sorted = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 1, !dbg !2793
  %1 = load %struct.coalesce_pair**, %struct.coalesce_pair*** %sorted, align 8, !dbg !2793
  %cmp = icmp eq %struct.coalesce_pair** %1, null, !dbg !2793
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2793

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 422, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2793
  br label %cond.end, !dbg !2793

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call fastcc i32 @num_coalesce_pairs(%struct.coalesce_list_d* %cl) #7, !dbg !2794
  call void @llvm.dbg.value(metadata i32 %call, metadata !2778, metadata !DIExpression()), !dbg !2791
  %num_sorted = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 2, !dbg !2795
  store i32 %call, i32* %num_sorted, align 8, !dbg !2796
  %cmp1 = icmp eq i32 %call, 0, !dbg !2797
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !2799

if.end:                                           ; preds = %cond.end
  %conv = zext i32 %call to i64, !dbg !2800
  %mul = shl nuw nsw i64 %conv, 3, !dbg !2800
  %call2 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2800
  %2 = bitcast %struct.coalesce_pair*** %sorted to i8**, !dbg !2801
  store i8* %call2, i8** %2, align 8, !dbg !2801
  call void @llvm.dbg.value(metadata i32 0, metadata !2777, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata %struct.coalesce_pair_iterator* %ppi, metadata !2780, metadata !DIExpression(DW_OP_deref)), !dbg !2791
  %call4 = call fastcc %struct.coalesce_pair* @first_coalesce_pair(%struct.coalesce_list_d* %cl, %struct.coalesce_pair_iterator* nonnull %ppi) #7, !dbg !2802
  call void @llvm.dbg.value(metadata %struct.coalesce_pair* %call4, metadata !2779, metadata !DIExpression()), !dbg !2791
  br label %for.cond, !dbg !2802

for.cond:                                         ; preds = %for.body, %if.end
  %p.0 = phi %struct.coalesce_pair* [ %call4, %if.end ], [ %call7, %for.body ], !dbg !2804
  %x.0 = phi i32 [ 0, %if.end ], [ %inc, %for.body ], !dbg !2791
  call void @llvm.dbg.value(metadata i32 %x.0, metadata !2777, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata %struct.coalesce_pair* %p.0, metadata !2779, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata %struct.coalesce_pair_iterator* %ppi, metadata !2780, metadata !DIExpression(DW_OP_deref)), !dbg !2791
  %call5 = call fastcc zeroext i8 @end_coalesce_pair_p(%struct.coalesce_pair_iterator* nonnull %ppi) #7, !dbg !2805
  %tobool = icmp eq i8 %call5, 0, !dbg !2805
  br i1 %tobool, label %for.body, label %for.end, !dbg !2802

for.body:                                         ; preds = %for.cond
  %3 = load %struct.coalesce_pair**, %struct.coalesce_pair*** %sorted, align 8, !dbg !2807
  %inc = add i32 %x.0, 1, !dbg !2808
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2777, metadata !DIExpression()), !dbg !2791
  %idxprom = zext i32 %x.0 to i64, !dbg !2809
  %arrayidx = getelementptr inbounds %struct.coalesce_pair*, %struct.coalesce_pair** %3, i64 %idxprom, !dbg !2809
  store %struct.coalesce_pair* %p.0, %struct.coalesce_pair** %arrayidx, align 8, !dbg !2810
  call void @llvm.dbg.value(metadata %struct.coalesce_pair_iterator* %ppi, metadata !2780, metadata !DIExpression(DW_OP_deref)), !dbg !2791
  %call7 = call fastcc %struct.coalesce_pair* @next_coalesce_pair(%struct.coalesce_pair_iterator* nonnull %ppi) #7, !dbg !2805
  call void @llvm.dbg.value(metadata %struct.coalesce_pair* %call7, metadata !2779, metadata !DIExpression()), !dbg !2791
  br label %for.cond, !dbg !2805, !llvm.loop !2811

for.end:                                          ; preds = %for.cond
  %x.0.lcssa = phi i32 [ %x.0, %for.cond ], !dbg !2791
  call void @llvm.dbg.value(metadata i32 %x.0.lcssa, metadata !2777, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %x.0.lcssa, metadata !2777, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %x.0.lcssa, metadata !2777, metadata !DIExpression()), !dbg !2791
  %cmp8 = icmp eq i32 %x.0.lcssa, %call, !dbg !2813
  br i1 %cmp8, label %cond.end12, label %cond.true10, !dbg !2813

cond.true10:                                      ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 436, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2813
  br label %cond.end12, !dbg !2813

cond.end12:                                       ; preds = %for.end, %cond.true10
  switch i32 %call, label %if.end38 [
    i32 1, label %cleanup
    i32 2, label %if.then20
  ], !dbg !2814

if.then20:                                        ; preds = %cond.end12
  %4 = load %struct.coalesce_pair**, %struct.coalesce_pair*** %sorted, align 8, !dbg !2815
  %5 = load %struct.coalesce_pair*, %struct.coalesce_pair** %4, align 8, !dbg !2819
  %cost = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %5, i64 0, i32 2, !dbg !2820
  %6 = load i32, i32* %cost, align 4, !dbg !2820
  %arrayidx24 = getelementptr inbounds %struct.coalesce_pair*, %struct.coalesce_pair** %4, i64 1, !dbg !2821
  %7 = load %struct.coalesce_pair*, %struct.coalesce_pair** %arrayidx24, align 8, !dbg !2821
  %cost25 = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %7, i64 0, i32 2, !dbg !2822
  %8 = load i32, i32* %cost25, align 4, !dbg !2822
  %cmp26 = icmp sgt i32 %6, %8, !dbg !2823
  br i1 %cmp26, label %if.then28, label %cleanup, !dbg !2824

if.then28:                                        ; preds = %if.then20
  %9 = ptrtoint %struct.coalesce_pair* %7 to i64, !dbg !2824
  %10 = ptrtoint %struct.coalesce_pair* %5 to i64, !dbg !2824
  %11 = bitcast %struct.coalesce_pair** %4 to i64*, !dbg !2824
  store i64 %9, i64* %11, align 8, !dbg !2825
  %12 = load %struct.coalesce_pair**, %struct.coalesce_pair*** %sorted, align 8, !dbg !2827
  %arrayidx36 = getelementptr inbounds %struct.coalesce_pair*, %struct.coalesce_pair** %12, i64 1, !dbg !2828
  %13 = bitcast %struct.coalesce_pair** %arrayidx36 to i64*, !dbg !2829
  store i64 %10, i64* %13, align 8, !dbg !2829
  br label %cleanup, !dbg !2830

if.end38:                                         ; preds = %cond.end12
  %cmp39 = icmp ugt i32 %call, 2, !dbg !2831
  br i1 %cmp39, label %if.then41, label %cleanup, !dbg !2833

if.then41:                                        ; preds = %if.end38
  %14 = load i8*, i8** %2, align 8, !dbg !2834
  call void @spec_qsort(i8* %14, i64 %conv, i64 8, i32 (i8*, i8*)* nonnull @compare_pairs) #6, !dbg !2835
  br label %cleanup, !dbg !2835

cleanup:                                          ; preds = %if.end38, %if.then41, %if.then20, %if.then28, %cond.end12, %cond.end
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2836
  ret void, !dbg !2836
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_coalesce_list(%struct._IO_FILE* %f, %struct.coalesce_list_d* %cl) unnamed_addr #5 !dbg !2837 {
entry:
  %ppi = alloca %struct.coalesce_pair_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !2841, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata %struct.coalesce_list_d* %cl, metadata !2842, metadata !DIExpression()), !dbg !2854
  %0 = bitcast %struct.coalesce_pair_iterator* %ppi to i8*, !dbg !2855
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2855
  %sorted = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 1, !dbg !2856
  %1 = load %struct.coalesce_pair**, %struct.coalesce_pair*** %sorted, align 8, !dbg !2856
  %cmp = icmp eq %struct.coalesce_pair** %1, null, !dbg !2857
  br i1 %cmp, label %if.then, label %if.else, !dbg !2858

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2859
  call void @llvm.dbg.value(metadata %struct.coalesce_pair_iterator* %ppi, metadata !2844, metadata !DIExpression(DW_OP_deref)), !dbg !2854
  %call1 = call fastcc %struct.coalesce_pair* @first_coalesce_pair(%struct.coalesce_list_d* %cl, %struct.coalesce_pair_iterator* nonnull %ppi) #7, !dbg !2860
  call void @llvm.dbg.value(metadata %struct.coalesce_pair* %call1, metadata !2843, metadata !DIExpression()), !dbg !2854
  br label %for.cond, !dbg !2860

for.cond:                                         ; preds = %cond.end18, %if.then
  %node.0 = phi %struct.coalesce_pair* [ %call1, %if.then ], [ %call24, %cond.end18 ], !dbg !2861
  call void @llvm.dbg.value(metadata %struct.coalesce_pair* %node.0, metadata !2843, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata %struct.coalesce_pair_iterator* %ppi, metadata !2844, metadata !DIExpression(DW_OP_deref)), !dbg !2854
  %call2 = call fastcc zeroext i8 @end_coalesce_pair_p(%struct.coalesce_pair_iterator* nonnull %ppi) #7, !dbg !2862
  %tobool = icmp eq i8 %call2, 0, !dbg !2862
  br i1 %tobool, label %for.body, label %if.end.loopexit, !dbg !2860

for.body:                                         ; preds = %for.cond
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2863
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 3, !dbg !2863
  %3 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2863
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %3, i64 0, i32 2, !dbg !2863
  %4 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2863
  %tobool3 = icmp eq %struct.VEC_tree_gc* %4, null, !dbg !2863
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2863

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %4, i64 0, i32 0, !dbg !2863
  br label %cond.end, !dbg !2863

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !2863
  %first_element = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %node.0, i64 0, i32 0, !dbg !2863
  %5 = load i32, i32* %first_element, align 4, !dbg !2863
  %call7 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond, i32 %5) #7, !dbg !2863
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !2847, metadata !DIExpression()), !dbg !2864
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2865
  %gimple_df9 = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 3, !dbg !2865
  %7 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df9, align 8, !dbg !2865
  %ssa_names10 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %7, i64 0, i32 2, !dbg !2865
  %8 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names10, align 8, !dbg !2865
  %tobool11 = icmp eq %struct.VEC_tree_gc* %8, null, !dbg !2865
  br i1 %tobool11, label %cond.end18, label %cond.true12, !dbg !2865

cond.true12:                                      ; preds = %cond.end
  %base16 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %8, i64 0, i32 0, !dbg !2865
  br label %cond.end18, !dbg !2865

cond.end18:                                       ; preds = %cond.end, %cond.true12
  %cond19 = phi %struct.VEC_tree_base* [ %base16, %cond.true12 ], [ null, %cond.end ], !dbg !2865
  %second_element = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %node.0, i64 0, i32 1, !dbg !2865
  %9 = load i32, i32* %second_element, align 4, !dbg !2865
  %call20 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond19, i32 %9) #7, !dbg !2865
  call void @llvm.dbg.value(metadata %union.tree_node* %call20, metadata !2853, metadata !DIExpression()), !dbg !2864
  call void @print_generic_expr(%struct._IO_FILE* %f, %union.tree_node* %call7, i32 2) #6, !dbg !2866
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2867
  call void @print_generic_expr(%struct._IO_FILE* %f, %union.tree_node* %call20, i32 2) #6, !dbg !2868
  %cost = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %node.0, i64 0, i32 2, !dbg !2869
  %10 = load i32, i32* %cost, align 4, !dbg !2869
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 %10) #6, !dbg !2870
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2871
  call void @llvm.dbg.value(metadata %struct.coalesce_pair_iterator* %ppi, metadata !2844, metadata !DIExpression(DW_OP_deref)), !dbg !2854
  %call24 = call fastcc %struct.coalesce_pair* @next_coalesce_pair(%struct.coalesce_pair_iterator* nonnull %ppi) #7, !dbg !2862
  call void @llvm.dbg.value(metadata %struct.coalesce_pair* %call24, metadata !2843, metadata !DIExpression()), !dbg !2854
  br label %for.cond, !dbg !2862, !llvm.loop !2872

if.else:                                          ; preds = %entry
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !2874
  %num_sorted = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 2, !dbg !2876
  %11 = load i32, i32* %num_sorted, align 8, !dbg !2876
  call void @llvm.dbg.value(metadata i32 %11, metadata !2845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2854
  %12 = sext i32 %11 to i64, !dbg !2878
  br label %for.cond26, !dbg !2878

for.cond26:                                       ; preds = %cond.end57, %if.else
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end57 ], [ %12, %if.else ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2879
  call void @llvm.dbg.value(metadata i32 undef, metadata !2845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2854
  %cmp27 = icmp sgt i64 %indvars.iv, 0, !dbg !2880
  br i1 %cmp27, label %for.body28, label %if.end.loopexit1, !dbg !2882

for.body28:                                       ; preds = %for.cond26
  %13 = load %struct.coalesce_pair**, %struct.coalesce_pair*** %sorted, align 8, !dbg !2883
  %arrayidx = getelementptr inbounds %struct.coalesce_pair*, %struct.coalesce_pair** %13, i64 %indvars.iv.next, !dbg !2885
  %14 = load %struct.coalesce_pair*, %struct.coalesce_pair** %arrayidx, align 8, !dbg !2885
  call void @llvm.dbg.value(metadata %struct.coalesce_pair* %14, metadata !2843, metadata !DIExpression()), !dbg !2854
  %cost30 = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %14, i64 0, i32 2, !dbg !2886
  %15 = load i32, i32* %cost30, align 4, !dbg !2886
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %15) #6, !dbg !2887
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2888
  %gimple_df33 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 3, !dbg !2888
  %17 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df33, align 8, !dbg !2888
  %ssa_names34 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %17, i64 0, i32 2, !dbg !2888
  %18 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names34, align 8, !dbg !2888
  %tobool35 = icmp eq %struct.VEC_tree_gc* %18, null, !dbg !2888
  br i1 %tobool35, label %cond.end42, label %cond.true36, !dbg !2888

cond.true36:                                      ; preds = %for.body28
  %base40 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %18, i64 0, i32 0, !dbg !2888
  br label %cond.end42, !dbg !2888

cond.end42:                                       ; preds = %for.body28, %cond.true36
  %cond43 = phi %struct.VEC_tree_base* [ %base40, %cond.true36 ], [ null, %for.body28 ], !dbg !2888
  %first_element44 = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %14, i64 0, i32 0, !dbg !2888
  %19 = load i32, i32* %first_element44, align 4, !dbg !2888
  %call45 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond43, i32 %19) #7, !dbg !2888
  call void @llvm.dbg.value(metadata %union.tree_node* %call45, metadata !2846, metadata !DIExpression()), !dbg !2854
  tail call void @print_generic_expr(%struct._IO_FILE* %f, %union.tree_node* %call45, i32 2) #6, !dbg !2889
  %call46 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2890
  %20 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2891
  %gimple_df48 = getelementptr inbounds %struct.function, %struct.function* %20, i64 0, i32 3, !dbg !2891
  %21 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df48, align 8, !dbg !2891
  %ssa_names49 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %21, i64 0, i32 2, !dbg !2891
  %22 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names49, align 8, !dbg !2891
  %tobool50 = icmp eq %struct.VEC_tree_gc* %22, null, !dbg !2891
  br i1 %tobool50, label %cond.end57, label %cond.true51, !dbg !2891

cond.true51:                                      ; preds = %cond.end42
  %base55 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %22, i64 0, i32 0, !dbg !2891
  br label %cond.end57, !dbg !2891

cond.end57:                                       ; preds = %cond.end42, %cond.true51
  %cond58 = phi %struct.VEC_tree_base* [ %base55, %cond.true51 ], [ null, %cond.end42 ], !dbg !2891
  %second_element59 = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %14, i64 0, i32 1, !dbg !2891
  %23 = load i32, i32* %second_element59, align 4, !dbg !2891
  %call60 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond58, i32 %23) #7, !dbg !2891
  call void @llvm.dbg.value(metadata %union.tree_node* %call60, metadata !2846, metadata !DIExpression()), !dbg !2854
  tail call void @print_generic_expr(%struct._IO_FILE* %f, %union.tree_node* %call60, i32 2) #6, !dbg !2892
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2893
  call void @llvm.dbg.value(metadata i32 undef, metadata !2845, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2854
  br label %for.cond26, !dbg !2894, !llvm.loop !2895

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !2897

if.end.loopexit1:                                 ; preds = %for.cond26
  br label %if.end, !dbg !2897

if.end:                                           ; preds = %if.end.loopexit1, %if.end.loopexit
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2897
  ret void, !dbg !2897
}

; Function Attrs: nounwind uwtable
define internal fastcc void @coalesce_partitions(%struct._var_map* %map, %struct.ssa_conflicts_d* %graph, %struct.coalesce_list_d* %cl, %struct._IO_FILE* %debug) unnamed_addr #5 !dbg !2898 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp7 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !2902, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata %struct.ssa_conflicts_d* %graph, metadata !2903, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata %struct.coalesce_list_d* %cl, metadata !2904, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %debug, metadata !2905, metadata !DIExpression()), !dbg !2936
  %0 = bitcast i32* %x to i8*, !dbg !2937
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2937
  call void @llvm.dbg.value(metadata i32 0, metadata !2906, metadata !DIExpression()), !dbg !2936
  store i32 0, i32* %x, align 4, !dbg !2938
  %1 = bitcast i32* %y to i8*, !dbg !2937
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2937
  call void @llvm.dbg.value(metadata i32 0, metadata !2907, metadata !DIExpression()), !dbg !2936
  store i32 0, i32* %y, align 4, !dbg !2939
  %2 = bitcast %struct.edge_def** %e to i8*, !dbg !2940
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2940
  %3 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2941
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2941
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2942
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2942
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2942
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 0, !dbg !2942
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2942
  %7 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2943
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2943
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2943
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2944
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2944
  %12 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2945
  %13 = bitcast %struct.gimple_stmt_iterator* %tmp7 to i8*, !dbg !2946
  %tobool25 = icmp eq %struct._IO_FILE* %debug, null, !dbg !2947
  br label %for.cond, !dbg !2942

for.cond:                                         ; preds = %for.inc36, %entry
  %14 = phi %struct.control_flow_graph* [ %5, %entry ], [ %.pre1, %for.inc36 ], !dbg !2949
  %.pn = phi %struct.basic_block_def* [ %6, %entry ], [ %bb.0, %for.inc36 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2950
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2950
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2911, metadata !DIExpression()), !dbg !2936
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %14, i64 0, i32 1, !dbg !2949
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2949
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %15, !dbg !2949
  br i1 %cmp, label %while.cond.preheader, label %for.body, !dbg !2942

while.cond.preheader:                             ; preds = %for.cond
  br i1 %tobool25, label %while.cond.preheader.split.us, label %while.cond.preheader.while.cond.preheader.split_crit_edge, !dbg !2951

while.cond.preheader.while.cond.preheader.split_crit_edge: ; preds = %while.cond.preheader
  br label %while.cond, !dbg !2951

while.cond.preheader.split.us:                    ; preds = %while.cond.preheader
  br label %while.cond.us, !dbg !2951

while.cond.us:                                    ; preds = %cond.end67.us, %while.cond.preheader.split.us
  call void @llvm.dbg.value(metadata i32* %x, metadata !2906, metadata !DIExpression(DW_OP_deref)), !dbg !2936
  call void @llvm.dbg.value(metadata i32* %y, metadata !2907, metadata !DIExpression(DW_OP_deref)), !dbg !2936
  %call39.us = call fastcc i32 @pop_best_coalesce(%struct.coalesce_list_d* %cl, i32* nonnull %x, i32* nonnull %y) #7, !dbg !2952
  call void @llvm.dbg.value(metadata i32 %call39.us, metadata !2910, metadata !DIExpression()), !dbg !2936
  %cmp40.us = icmp eq i32 %call39.us, -1, !dbg !2953
  br i1 %cmp40.us, label %while.end.us-lcssa.us, label %while.body.us, !dbg !2951

while.body.us:                                    ; preds = %while.cond.us
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2954
  %gimple_df.us = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 3, !dbg !2954
  %17 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df.us, align 8, !dbg !2954
  %ssa_names.us = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %17, i64 0, i32 2, !dbg !2954
  %18 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names.us, align 8, !dbg !2954
  %tobool42.us = icmp eq %struct.VEC_tree_gc* %18, null, !dbg !2954
  br i1 %tobool42.us, label %cond.end.us, label %cond.true.us, !dbg !2954

cond.true.us:                                     ; preds = %while.body.us
  %base.us = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %18, i64 0, i32 0, !dbg !2954
  br label %cond.end.us, !dbg !2954

cond.end.us:                                      ; preds = %cond.true.us, %while.body.us
  %cond.us = phi %struct.VEC_tree_base* [ %base.us, %cond.true.us ], [ null, %while.body.us ], !dbg !2954
  %19 = load i32, i32* %x, align 4, !dbg !2954
  call void @llvm.dbg.value(metadata i32 %19, metadata !2906, metadata !DIExpression()), !dbg !2936
  %call46.us = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond.us, i32 %19) #7, !dbg !2954
  call void @llvm.dbg.value(metadata %union.tree_node* %call46.us, metadata !2908, metadata !DIExpression()), !dbg !2936
  %20 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2956
  %gimple_df48.us = getelementptr inbounds %struct.function, %struct.function* %20, i64 0, i32 3, !dbg !2956
  %21 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df48.us, align 8, !dbg !2956
  %ssa_names49.us = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %21, i64 0, i32 2, !dbg !2956
  %22 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names49.us, align 8, !dbg !2956
  %tobool50.us = icmp eq %struct.VEC_tree_gc* %22, null, !dbg !2956
  br i1 %tobool50.us, label %cond.end57.us, label %cond.true51.us, !dbg !2956

cond.true51.us:                                   ; preds = %cond.end.us
  %base55.us = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %22, i64 0, i32 0, !dbg !2956
  br label %cond.end57.us, !dbg !2956

cond.end57.us:                                    ; preds = %cond.true51.us, %cond.end.us
  %cond58.us = phi %struct.VEC_tree_base* [ %base55.us, %cond.true51.us ], [ null, %cond.end.us ], !dbg !2956
  %23 = load i32, i32* %y, align 4, !dbg !2956
  call void @llvm.dbg.value(metadata i32 %23, metadata !2907, metadata !DIExpression()), !dbg !2936
  %call59.us = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond58.us, i32 %23) #7, !dbg !2956
  call void @llvm.dbg.value(metadata %union.tree_node* %call59.us, metadata !2909, metadata !DIExpression()), !dbg !2936
  %var61.us = getelementptr inbounds %union.tree_node, %union.tree_node* %call46.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2957
  %24 = bitcast i32* %var61.us to %union.tree_node**, !dbg !2957
  %25 = load %union.tree_node*, %union.tree_node** %24, align 8, !dbg !2957
  %var63.us = getelementptr inbounds %union.tree_node, %union.tree_node* %call59.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2957
  %26 = bitcast i32* %var63.us to %union.tree_node**, !dbg !2957
  %27 = load %union.tree_node*, %union.tree_node** %26, align 8, !dbg !2957
  %cmp64.us = icmp eq %union.tree_node* %25, %27, !dbg !2957
  br i1 %cmp64.us, label %cond.end67.us, label %cond.true65.us, !dbg !2957

cond.true65.us:                                   ; preds = %cond.end57.us
  call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1331, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2957
  br label %cond.end67.us, !dbg !2957

cond.end67.us:                                    ; preds = %cond.true65.us, %cond.end57.us
  %28 = load i32, i32* %x, align 4, !dbg !2958
  call void @llvm.dbg.value(metadata i32 %28, metadata !2906, metadata !DIExpression()), !dbg !2936
  %29 = load i32, i32* %y, align 4, !dbg !2959
  call void @llvm.dbg.value(metadata i32 %29, metadata !2907, metadata !DIExpression()), !dbg !2936
  %call73.us = call fastcc zeroext i8 @attempt_coalesce(%struct._var_map* %map, %struct.ssa_conflicts_d* %graph, i32 %28, i32 %29, %struct._IO_FILE* null) #7, !dbg !2960
  br label %while.cond.us, !dbg !2951, !llvm.loop !2961

while.end.us-lcssa.us:                            ; preds = %while.cond.us
  br label %while.end, !dbg !2963

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8, !dbg !2964
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 0, !dbg !2964
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2964
  %30 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !2964
  store i32 %30, i32* %8, align 8, !dbg !2964
  %31 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !2964
  store %struct.VEC_edge_gc** %31, %struct.VEC_edge_gc*** %9, align 8, !dbg !2964
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !2964
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8, !dbg !2964
  br label %for.cond3, !dbg !2964

for.cond3:                                        ; preds = %for.inc34, %for.body
  %32 = load i32, i32* %10, align 8, !dbg !2965
  %33 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %11, align 8, !dbg !2965
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2912, metadata !DIExpression(DW_OP_deref)), !dbg !2936
  %call4 = call fastcc zeroext i8 @ei_cond(i32 %32, %struct.VEC_edge_gc** %33, %struct.edge_def** nonnull %e) #7, !dbg !2965
  %tobool = icmp eq i8 %call4, 0, !dbg !2964
  br i1 %tobool, label %for.inc36, label %for.body5, !dbg !2964

for.body5:                                        ; preds = %for.cond3
  %34 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2966
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !2912, metadata !DIExpression()), !dbg !2936
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i64 0, i32 7, !dbg !2967
  %35 = load i32, i32* %flags, align 8, !dbg !2967
  %and = and i32 %35, 2, !dbg !2968
  %tobool6 = icmp eq i32 %and, 0, !dbg !2968
  br i1 %tobool6, label %for.inc34, label %if.then, !dbg !2969

if.then:                                          ; preds = %for.body5
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #8, !dbg !2970
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #8, !dbg !2971
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp7, %struct.basic_block_def* %bb.0) #6, !dbg !2971
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %12, i8* nonnull align 8 %13, i64 24, i1 false), !dbg !2971
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #8, !dbg !2971
  br i1 %tobool25, label %if.then.split.us, label %if.then.if.then.split_crit_edge, !dbg !2972

if.then.if.then.split_crit_edge:                  ; preds = %if.then
  br label %for.cond8, !dbg !2972

if.then.split.us:                                 ; preds = %if.then
  br label %for.cond8.us, !dbg !2972

for.cond8.us:                                     ; preds = %for.inc.us, %if.then.split.us
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2920, metadata !DIExpression(DW_OP_deref)), !dbg !2945
  %call9.us = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2973
  %tobool10.us = icmp eq i8 %call9.us, 0, !dbg !2974
  br i1 %tobool10.us, label %for.body11.us, label %for.end.us-lcssa.us, !dbg !2975

for.body11.us:                                    ; preds = %for.cond8.us
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2920, metadata !DIExpression(DW_OP_deref)), !dbg !2945
  %call12.us = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2976
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call12.us, metadata !2928, metadata !DIExpression()), !dbg !2977
  %call13.us = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call12.us) #7, !dbg !2978
  %call14.us = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call13.us) #7, !dbg !2978
  call void @llvm.dbg.value(metadata %union.tree_node* %call14.us, metadata !2932, metadata !DIExpression()), !dbg !2977
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2979
  call void @llvm.dbg.value(metadata %struct.edge_def* %36, metadata !2912, metadata !DIExpression()), !dbg !2936
  %dest_idx.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i64 0, i32 6, !dbg !2979
  %37 = load i32, i32* %dest_idx.us, align 4, !dbg !2979
  %call15.us = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call12.us, i32 %37) #7, !dbg !2979
  %call16.us = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call15.us) #7, !dbg !2979
  call void @llvm.dbg.value(metadata %union.tree_node* %call16.us, metadata !2933, metadata !DIExpression()), !dbg !2977
  %version.us = getelementptr inbounds %union.tree_node, %union.tree_node* %call14.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2980
  %38 = bitcast %union.tree_node** %version.us to i32*, !dbg !2980
  %39 = load i32, i32* %38, align 8, !dbg !2980
  call void @llvm.dbg.value(metadata i32 %39, metadata !2934, metadata !DIExpression()), !dbg !2977
  %version18.us = getelementptr inbounds %union.tree_node, %union.tree_node* %call16.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2981
  %40 = bitcast %union.tree_node** %version18.us to i32*, !dbg !2981
  %41 = load i32, i32* %40, align 8, !dbg !2981
  call void @llvm.dbg.value(metadata i32 %41, metadata !2935, metadata !DIExpression()), !dbg !2977
  %var.us = getelementptr inbounds %union.tree_node, %union.tree_node* %call16.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2982
  %42 = bitcast i32* %var.us to %union.tree_node**, !dbg !2982
  %43 = load %union.tree_node*, %union.tree_node** %42, align 8, !dbg !2982
  %var21.us = getelementptr inbounds %union.tree_node, %union.tree_node* %call14.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2984
  %44 = bitcast i32* %var21.us to %union.tree_node**, !dbg !2984
  %45 = load %union.tree_node*, %union.tree_node** %44, align 8, !dbg !2984
  %cmp22.us = icmp eq %union.tree_node* %43, %45, !dbg !2985
  br i1 %cmp22.us, label %if.end.us, label %if.then23.us, !dbg !2986

if.then23.us:                                     ; preds = %for.body11.us
  %46 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2987
  call void @llvm.dbg.value(metadata %struct.edge_def* %46, metadata !2912, metadata !DIExpression()), !dbg !2936
  %dest_idx24.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %46, i64 0, i32 6, !dbg !2988
  %47 = load i32, i32* %dest_idx24.us, align 4, !dbg !2988
  call fastcc void @abnormal_corrupt(%union.gimple_statement_d* %call12.us, i32 %47) #7, !dbg !2989
  br label %if.end.us, !dbg !2989

if.end.us:                                        ; preds = %if.then23.us, %for.body11.us
  %call29.us = call fastcc zeroext i8 @attempt_coalesce(%struct._var_map* %map, %struct.ssa_conflicts_d* %graph, i32 %39, i32 %41, %struct._IO_FILE* null) #7, !dbg !2990
  %tobool30.us = icmp eq i8 %call29.us, 0, !dbg !2990
  br i1 %tobool30.us, label %if.then31.us, label %for.inc.us, !dbg !2992

if.then31.us:                                     ; preds = %if.end.us
  call fastcc void @fail_abnormal_edge_coalesce(i32 %39, i32 %41) #7, !dbg !2993
  br label %for.inc.us, !dbg !2993

for.inc.us:                                       ; preds = %if.then31.us, %if.end.us
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2920, metadata !DIExpression(DW_OP_deref)), !dbg !2945
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2994
  br label %for.cond8.us, !dbg !2995, !llvm.loop !2996

for.end.us-lcssa.us:                              ; preds = %for.cond8.us
  br label %for.end, !dbg !2998

for.cond8:                                        ; preds = %for.inc, %if.then.if.then.split_crit_edge
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2920, metadata !DIExpression(DW_OP_deref)), !dbg !2945
  %call9 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2973
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2974
  br i1 %tobool10, label %for.body11, label %for.end.us-lcssa, !dbg !2975

for.body11:                                       ; preds = %for.cond8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2920, metadata !DIExpression(DW_OP_deref)), !dbg !2945
  %call12 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2976
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call12, metadata !2928, metadata !DIExpression()), !dbg !2977
  %call13 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call12) #7, !dbg !2978
  %call14 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call13) #7, !dbg !2978
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !2932, metadata !DIExpression()), !dbg !2977
  %48 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2979
  call void @llvm.dbg.value(metadata %struct.edge_def* %48, metadata !2912, metadata !DIExpression()), !dbg !2936
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %48, i64 0, i32 6, !dbg !2979
  %49 = load i32, i32* %dest_idx, align 4, !dbg !2979
  %call15 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call12, i32 %49) #7, !dbg !2979
  %call16 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call15) #7, !dbg !2979
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !2933, metadata !DIExpression()), !dbg !2977
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %call14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2980
  %50 = bitcast %union.tree_node** %version to i32*, !dbg !2980
  %51 = load i32, i32* %50, align 8, !dbg !2980
  call void @llvm.dbg.value(metadata i32 %51, metadata !2934, metadata !DIExpression()), !dbg !2977
  %version18 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2981
  %52 = bitcast %union.tree_node** %version18 to i32*, !dbg !2981
  %53 = load i32, i32* %52, align 8, !dbg !2981
  call void @llvm.dbg.value(metadata i32 %53, metadata !2935, metadata !DIExpression()), !dbg !2977
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2982
  %54 = bitcast i32* %var to %union.tree_node**, !dbg !2982
  %55 = load %union.tree_node*, %union.tree_node** %54, align 8, !dbg !2982
  %var21 = getelementptr inbounds %union.tree_node, %union.tree_node* %call14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2984
  %56 = bitcast i32* %var21 to %union.tree_node**, !dbg !2984
  %57 = load %union.tree_node*, %union.tree_node** %56, align 8, !dbg !2984
  %cmp22 = icmp eq %union.tree_node* %55, %57, !dbg !2985
  br i1 %cmp22, label %if.end, label %if.then23, !dbg !2986

if.then23:                                        ; preds = %for.body11
  %58 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2987
  call void @llvm.dbg.value(metadata %struct.edge_def* %58, metadata !2912, metadata !DIExpression()), !dbg !2936
  %dest_idx24 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %58, i64 0, i32 6, !dbg !2988
  %59 = load i32, i32* %dest_idx24, align 4, !dbg !2988
  call fastcc void @abnormal_corrupt(%union.gimple_statement_d* %call12, i32 %59) #7, !dbg !2989
  br label %if.end, !dbg !2989

if.end:                                           ; preds = %for.body11, %if.then23
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %debug, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !2999
  %call29 = call fastcc zeroext i8 @attempt_coalesce(%struct._var_map* %map, %struct.ssa_conflicts_d* %graph, i32 %51, i32 %53, %struct._IO_FILE* nonnull %debug) #7, !dbg !2990
  %tobool30 = icmp eq i8 %call29, 0, !dbg !2990
  br i1 %tobool30, label %if.then31, label %for.inc, !dbg !2992

if.then31:                                        ; preds = %if.end
  call fastcc void @fail_abnormal_edge_coalesce(i32 %51, i32 %53) #7, !dbg !2993
  br label %for.inc, !dbg !2993

for.inc:                                          ; preds = %if.end, %if.then31
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2920, metadata !DIExpression(DW_OP_deref)), !dbg !2945
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2994
  br label %for.cond8, !dbg !2995, !llvm.loop !2996

for.end.us-lcssa:                                 ; preds = %for.cond8
  br label %for.end, !dbg !2998

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #8, !dbg !2998
  br label %for.inc34, !dbg !3000

for.inc34:                                        ; preds = %for.body5, %for.end
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2913, metadata !DIExpression(DW_OP_deref)), !dbg !2936
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2965
  br label %for.cond3, !dbg !2965, !llvm.loop !3001

for.inc36:                                        ; preds = %for.cond3
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2949
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3003
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2949
  br label %for.cond, !dbg !2949, !llvm.loop !3004

while.cond:                                       ; preds = %while.cond.preheader.while.cond.preheader.split_crit_edge, %cond.end67
  call void @llvm.dbg.value(metadata i32* %x, metadata !2906, metadata !DIExpression(DW_OP_deref)), !dbg !2936
  call void @llvm.dbg.value(metadata i32* %y, metadata !2907, metadata !DIExpression(DW_OP_deref)), !dbg !2936
  %call39 = call fastcc i32 @pop_best_coalesce(%struct.coalesce_list_d* %cl, i32* nonnull %x, i32* nonnull %y) #7, !dbg !2952
  call void @llvm.dbg.value(metadata i32 %call39, metadata !2910, metadata !DIExpression()), !dbg !2936
  %cmp40 = icmp eq i32 %call39, -1, !dbg !2953
  br i1 %cmp40, label %while.end.us-lcssa, label %while.body, !dbg !2951

while.body:                                       ; preds = %while.cond
  %60 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2954
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %60, i64 0, i32 3, !dbg !2954
  %61 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2954
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %61, i64 0, i32 2, !dbg !2954
  %62 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2954
  %tobool42 = icmp eq %struct.VEC_tree_gc* %62, null, !dbg !2954
  br i1 %tobool42, label %cond.end, label %cond.true, !dbg !2954

cond.true:                                        ; preds = %while.body
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %62, i64 0, i32 0, !dbg !2954
  br label %cond.end, !dbg !2954

cond.end:                                         ; preds = %while.body, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %while.body ], !dbg !2954
  %63 = load i32, i32* %x, align 4, !dbg !2954
  call void @llvm.dbg.value(metadata i32 %63, metadata !2906, metadata !DIExpression()), !dbg !2936
  %call46 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond, i32 %63) #7, !dbg !2954
  call void @llvm.dbg.value(metadata %union.tree_node* %call46, metadata !2908, metadata !DIExpression()), !dbg !2936
  %64 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2956
  %gimple_df48 = getelementptr inbounds %struct.function, %struct.function* %64, i64 0, i32 3, !dbg !2956
  %65 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df48, align 8, !dbg !2956
  %ssa_names49 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %65, i64 0, i32 2, !dbg !2956
  %66 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names49, align 8, !dbg !2956
  %tobool50 = icmp eq %struct.VEC_tree_gc* %66, null, !dbg !2956
  br i1 %tobool50, label %cond.end57, label %cond.true51, !dbg !2956

cond.true51:                                      ; preds = %cond.end
  %base55 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %66, i64 0, i32 0, !dbg !2956
  br label %cond.end57, !dbg !2956

cond.end57:                                       ; preds = %cond.end, %cond.true51
  %cond58 = phi %struct.VEC_tree_base* [ %base55, %cond.true51 ], [ null, %cond.end ], !dbg !2956
  %67 = load i32, i32* %y, align 4, !dbg !2956
  call void @llvm.dbg.value(metadata i32 %67, metadata !2907, metadata !DIExpression()), !dbg !2936
  %call59 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond58, i32 %67) #7, !dbg !2956
  call void @llvm.dbg.value(metadata %union.tree_node* %call59, metadata !2909, metadata !DIExpression()), !dbg !2936
  %var61 = getelementptr inbounds %union.tree_node, %union.tree_node* %call46, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2957
  %68 = bitcast i32* %var61 to %union.tree_node**, !dbg !2957
  %69 = load %union.tree_node*, %union.tree_node** %68, align 8, !dbg !2957
  %var63 = getelementptr inbounds %union.tree_node, %union.tree_node* %call59, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2957
  %70 = bitcast i32* %var63 to %union.tree_node**, !dbg !2957
  %71 = load %union.tree_node*, %union.tree_node** %70, align 8, !dbg !2957
  %cmp64 = icmp eq %union.tree_node* %69, %71, !dbg !2957
  br i1 %cmp64, label %cond.end67, label %cond.true65, !dbg !2957

cond.true65:                                      ; preds = %cond.end57
  call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1331, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2957
  br label %cond.end67, !dbg !2957

cond.end67:                                       ; preds = %cond.end57, %cond.true65
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %debug, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !3006
  %72 = load i32, i32* %x, align 4, !dbg !2958
  call void @llvm.dbg.value(metadata i32 %72, metadata !2906, metadata !DIExpression()), !dbg !2936
  %73 = load i32, i32* %y, align 4, !dbg !2959
  call void @llvm.dbg.value(metadata i32 %73, metadata !2907, metadata !DIExpression()), !dbg !2936
  %call73 = call fastcc zeroext i8 @attempt_coalesce(%struct._var_map* %map, %struct.ssa_conflicts_d* %graph, i32 %72, i32 %73, %struct._IO_FILE* nonnull %debug) #7, !dbg !2960
  br label %while.cond, !dbg !2951, !llvm.loop !2961

while.end.us-lcssa:                               ; preds = %while.cond
  br label %while.end, !dbg !2963

while.end:                                        ; preds = %while.end.us-lcssa.us, %while.end.us-lcssa
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2963
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2963
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2963
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2963
  ret void, !dbg !2963
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ssa_conflicts_delete(%struct.ssa_conflicts_d* %ptr) unnamed_addr #0 !dbg !3008 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_conflicts_d* %ptr, metadata !3012, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i32 0, metadata !3013, metadata !DIExpression()), !dbg !3014
  %size = getelementptr inbounds %struct.ssa_conflicts_d, %struct.ssa_conflicts_d* %ptr, i64 0, i32 0, !dbg !3015
  %conflicts = getelementptr inbounds %struct.ssa_conflicts_d, %struct.ssa_conflicts_d* %ptr, i64 0, i32 1, !dbg !3014
  br label %for.cond, !dbg !3018

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !3019
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3013, metadata !DIExpression()), !dbg !3014
  %0 = load i32, i32* %size, align 8, !dbg !3020
  %1 = zext i32 %0 to i64, !dbg !3021
  %cmp = icmp ult i64 %indvars.iv, %1, !dbg !3021
  %2 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %conflicts, align 8, !dbg !3014
  br i1 %cmp, label %for.body, label %for.end, !dbg !3022

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %2, i64 %indvars.iv, !dbg !3023
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3023
  %tobool = icmp eq %struct.bitmap_head_def* %3, null, !dbg !3023
  br i1 %tobool, label %for.inc, label %if.then, !dbg !3025

if.then:                                          ; preds = %for.body
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %3) #6, !dbg !3026
  %4 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %conflicts, align 8, !dbg !3026
  %arrayidx6 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %4, i64 %indvars.iv, !dbg !3026
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %arrayidx6, align 8, !dbg !3026
  br label %for.inc, !dbg !3026

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3027
  br label %for.cond, !dbg !3028, !llvm.loop !3029

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.bitmap_head_def** [ %2, %for.cond ], !dbg !3014
  %5 = bitcast %struct.bitmap_head_def** %.lcssa to i8*, !dbg !3031
  tail call void @free(i8* %5) #6, !dbg !3032
  %6 = bitcast %struct.ssa_conflicts_d* %ptr to i8*, !dbg !3033
  tail call void @free(i8* %6) #6, !dbg !3034
  ret void, !dbg !3035
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @coalesce_pair_map_hash(i8* %pair) #5 !dbg !3036 {
entry:
  call void @llvm.dbg.value(metadata i8* %pair, metadata !3040, metadata !DIExpression()), !dbg !3043
  %first_element = bitcast i8* %pair to i32*, !dbg !3044
  %0 = load i32, i32* %first_element, align 4, !dbg !3044
  call void @llvm.dbg.value(metadata i32 %0, metadata !3041, metadata !DIExpression()), !dbg !3043
  %second_element = getelementptr inbounds i8, i8* %pair, i64 4, !dbg !3045
  %1 = bitcast i8* %second_element to i32*, !dbg !3045
  %2 = load i32, i32* %1, align 4, !dbg !3045
  call void @llvm.dbg.value(metadata i32 %2, metadata !3042, metadata !DIExpression()), !dbg !3043
  %sub = add i32 %2, -1, !dbg !3046
  %mul = mul i32 %2, %sub, !dbg !3046
  %div = lshr i32 %mul, 1, !dbg !3046
  %add = add i32 %div, %0, !dbg !3046
  ret i32 %add, !dbg !3047
}

; Function Attrs: nounwind uwtable
define internal i32 @coalesce_pair_map_eq(i8* %pair1, i8* %pair2) #5 !dbg !3048 {
entry:
  call void @llvm.dbg.value(metadata i8* %pair1, metadata !3050, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8* %pair2, metadata !3051, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8* %pair1, metadata !3052, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8* %pair2, metadata !3053, metadata !DIExpression()), !dbg !3054
  %first_element = bitcast i8* %pair1 to i32*, !dbg !3055
  %0 = load i32, i32* %first_element, align 4, !dbg !3055
  %first_element1 = bitcast i8* %pair2 to i32*, !dbg !3056
  %1 = load i32, i32* %first_element1, align 4, !dbg !3056
  %cmp = icmp eq i32 %0, %1, !dbg !3057
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3058

land.rhs:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %pair2, metadata !3053, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8* %pair1, metadata !3052, metadata !DIExpression()), !dbg !3054
  %second_element = getelementptr inbounds i8, i8* %pair1, i64 4, !dbg !3059
  %2 = bitcast i8* %second_element to i32*, !dbg !3059
  %3 = load i32, i32* %2, align 4, !dbg !3059
  %second_element2 = getelementptr inbounds i8, i8* %pair2, i64 4, !dbg !3060
  %4 = bitcast i8* %second_element2 to i32*, !dbg !3060
  %5 = load i32, i32* %4, align 4, !dbg !3060
  %cmp3 = icmp eq i32 %3, %5, !dbg !3061
  %phitmp = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %6, !dbg !3062
}

declare dso_local %struct._var_map* @init_var_map(i32) local_unnamed_addr #2

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3063 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3067, metadata !DIExpression()), !dbg !3068
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3069
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3069
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3070
  %conv1 = zext i1 %cmp to i8, !dbg !3071
  ret i8 %conv1, !dbg !3072
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3073 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3077, metadata !DIExpression()), !dbg !3078
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3079
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3079
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3080
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3080
  ret %union.gimple_statement_d* %1, !dbg !3081
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3082 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3087, metadata !DIExpression()), !dbg !3088
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3089
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !3089
  ret %union.tree_node* %0, !dbg !3090
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @register_ssa_partition(%struct._var_map* %map, %union.tree_node* %ssa_var) unnamed_addr #0 !dbg !3091 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !3095, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata %union.tree_node* %ssa_var, metadata !3096, metadata !DIExpression()), !dbg !3097
  ret void, !dbg !3098
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3099 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3103, metadata !DIExpression()), !dbg !3104
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !3105
  %0 = load i32, i32* %nargs, align 4, !dbg !3105
  ret i32 %0, !dbg !3106
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %gs, i64 %i) unnamed_addr #0 !dbg !3107 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3111, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %i, metadata !3112, metadata !DIExpression()), !dbg !3113
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #7, !dbg !3114
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 0, !dbg !3114
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3114
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3114
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3114

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #7, !dbg !3114
  %preds2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call1, i64 0, i32 0, !dbg !3114
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds2, align 8, !dbg !3114
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !3114
  br label %cond.end, !dbg !3114

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3114
  %conv = trunc i64 %i to i32, !dbg !3114
  %call3 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %conv) #7, !dbg !3114
  ret %struct.edge_def* %call3, !dbg !3115
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3116 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3122, metadata !DIExpression()), !dbg !3123
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3124
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3124
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3125
  ret %union.tree_node* %1, !dbg !3126
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3127 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3131, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i32 %i, metadata !3132, metadata !DIExpression()), !dbg !3133
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !3134
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3135
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3136
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @coalesce_cost_edge(%struct.edge_def* %e) unnamed_addr #0 !dbg !3137 {
entry:
  %e2 = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3141, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 1, metadata !3142, metadata !DIExpression()), !dbg !3147
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3148
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3148
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 1, !dbg !3148
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3148
  %tobool = icmp eq %struct.VEC_edge_gc* %1, null, !dbg !3148
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3148

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !3148
  br label %cond.end, !dbg !3148

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3148
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3148
  %cmp = icmp ugt i32 %call, 1, !dbg !3148
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3148

land.lhs.true:                                    ; preds = %cond.end
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3148
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3148
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 0, !dbg !3148
  %3 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3148
  %tobool3 = icmp eq %struct.VEC_edge_gc* %3, null, !dbg !3148
  br i1 %tobool3, label %cond.end9, label %cond.true4, !dbg !3148

cond.true4:                                       ; preds = %land.lhs.true
  %base7 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %3, i64 0, i32 0, !dbg !3148
  br label %cond.end9, !dbg !3148

cond.end9:                                        ; preds = %land.lhs.true, %cond.true4
  %cond10 = phi %struct.VEC_edge_base* [ %base7, %cond.true4 ], [ null, %land.lhs.true ], !dbg !3148
  %call11 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond10) #7, !dbg !3148
  %cmp12 = icmp ugt i32 %call11, 1, !dbg !3148
  %spec.select = select i1 %cmp12, i32 2, i32 1, !dbg !3150
  br label %if.end, !dbg !3150

if.end:                                           ; preds = %cond.end9, %cond.end
  %mult.0 = phi i32 [ 1, %cond.end ], [ %spec.select, %cond.end9 ], !dbg !3147
  call void @llvm.dbg.value(metadata i32 %mult.0, metadata !3142, metadata !DIExpression()), !dbg !3147
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 7, !dbg !3151
  %4 = load i32, i32* %flags, align 8, !dbg !3151
  %and = and i32 %4, 2, !dbg !3153
  %tobool13 = icmp eq i32 %and, 0, !dbg !3153
  br i1 %tobool13, label %if.end15, label %cleanup, !dbg !3154

if.end15:                                         ; preds = %if.end
  %and17 = and i32 %4, 8, !dbg !3155
  %tobool18 = icmp eq i32 %and17, 0, !dbg !3155
  br i1 %tobool18, label %if.end36, label %if.then19, !dbg !3156

if.then19:                                        ; preds = %if.end15
  %5 = bitcast %struct.edge_def** %e2 to i8*, !dbg !3157
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !3157
  %6 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3158
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8, !dbg !3158
  %7 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3159
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8, !dbg !3159
  %dest20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3159
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %dest20, align 8, !dbg !3159
  %preds21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i64 0, i32 0, !dbg !3159
  %call22 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds21) #7, !dbg !3159
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3159
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call22, 0, !dbg !3159
  store i32 %10, i32* %9, align 8, !dbg !3159
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3159
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call22, 1, !dbg !3159
  store %struct.VEC_edge_gc** %12, %struct.VEC_edge_gc*** %11, align 8, !dbg !3159
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !3159
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8, !dbg !3159
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3161
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3161
  br label %for.cond, !dbg !3159

for.cond:                                         ; preds = %for.inc, %if.then19
  %mult.1 = phi i32 [ %mult.0, %if.then19 ], [ %mult.3, %for.inc ], !dbg !3147
  call void @llvm.dbg.value(metadata i32 %mult.1, metadata !3142, metadata !DIExpression()), !dbg !3147
  %15 = load i32, i32* %13, align 8, !dbg !3163
  %16 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !3163
  call void @llvm.dbg.value(metadata %struct.edge_def** %e2, metadata !3143, metadata !DIExpression(DW_OP_deref)), !dbg !3164
  %call23 = call fastcc zeroext i8 @ei_cond(i32 %15, %struct.VEC_edge_gc** %16, %struct.edge_def** nonnull %e2) #7, !dbg !3163
  %tobool24 = icmp eq i8 %call23, 0, !dbg !3159
  br i1 %tobool24, label %for.end, label %for.body, !dbg !3159

for.body:                                         ; preds = %for.cond
  %17 = load %struct.edge_def*, %struct.edge_def** %e2, align 8, !dbg !3165
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !3143, metadata !DIExpression()), !dbg !3164
  %cmp25 = icmp eq %struct.edge_def* %17, %e, !dbg !3167
  br i1 %cmp25, label %for.inc, label %if.then26, !dbg !3168

if.then26:                                        ; preds = %for.body
  %18 = icmp sgt i32 %mult.1, 2, !dbg !3169
  %spec.select1 = select i1 %18, i32 %mult.1, i32 2, !dbg !3169
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !3142, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !3143, metadata !DIExpression()), !dbg !3164
  %flags30 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 7, !dbg !3171
  %19 = load i32, i32* %flags30, align 8, !dbg !3171
  %and31 = and i32 %19, 8, !dbg !3173
  %tobool32 = icmp eq i32 %and31, 0, !dbg !3173
  br i1 %tobool32, label %for.inc, label %for.end, !dbg !3174

for.inc:                                          ; preds = %if.then26, %for.body
  %mult.3 = phi i32 [ %mult.1, %for.body ], [ %spec.select1, %if.then26 ], !dbg !3147
  call void @llvm.dbg.value(metadata i32 %mult.3, metadata !3142, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3146, metadata !DIExpression(DW_OP_deref)), !dbg !3164
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3163
  br label %for.cond, !dbg !3163, !llvm.loop !3175

for.end:                                          ; preds = %if.then26, %for.cond
  %mult.4 = phi i32 [ %mult.1, %for.cond ], [ 5, %if.then26 ], !dbg !3147
  call void @llvm.dbg.value(metadata i32 %mult.4, metadata !3142, metadata !DIExpression()), !dbg !3147
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #8, !dbg !3177
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !3177
  br label %if.end36, !dbg !3178

if.end36:                                         ; preds = %if.end15, %for.end
  %mult.5 = phi i32 [ %mult.4, %for.end ], [ %mult.0, %if.end15 ], !dbg !3147
  call void @llvm.dbg.value(metadata i32 %mult.5, metadata !3142, metadata !DIExpression()), !dbg !3147
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3179
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 11, !dbg !3179
  %21 = load i32, i32* %frequency, align 8, !dbg !3179
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 8, !dbg !3179
  %22 = load i32, i32* %probability, align 4, !dbg !3179
  %mul = mul nsw i32 %21, %22, !dbg !3179
  %add = add nsw i32 %mul, 5000, !dbg !3179
  %div = sdiv i32 %add, 10000, !dbg !3179
  %call38 = call zeroext i8 @optimize_edge_for_size_p(%struct.edge_def* %e) #6, !dbg !3180
  %call39 = call fastcc i32 @coalesce_cost(i32 %div, i8 zeroext %call38) #7, !dbg !3181
  %mul40 = mul nsw i32 %call39, %mult.5, !dbg !3182
  br label %cleanup, !dbg !3183

cleanup:                                          ; preds = %if.end, %if.end36
  %retval.0 = phi i32 [ %mul40, %if.end36 ], [ 2147483647, %if.end ], !dbg !3147
  ret i32 %retval.0, !dbg !3184
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @has_single_use(%union.tree_node* %var) unnamed_addr #0 !dbg !3185 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3187, metadata !DIExpression()), !dbg !3189
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3190
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !3190
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !3188, metadata !DIExpression()), !dbg !3189
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !3191
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !3191
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !3191
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !3193
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3194

if.end:                                           ; preds = %entry
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 1, !dbg !3195
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next2, align 8, !dbg !3195
  %cmp3 = icmp eq %struct.ssa_use_operand_d* %3, %0, !dbg !3197
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !3198

if.then4:                                         ; preds = %if.end
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 2, i32 0, !dbg !3199
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3199
  %call = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %4) #7, !dbg !3200
  %tobool = icmp eq i8 %call, 0, !dbg !3201
  %conv = zext i1 %tobool to i8, !dbg !3201
  br label %cleanup, !dbg !3202

if.end6:                                          ; preds = %if.end
  %5 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !3203
  %tobool7 = icmp eq i32 %5, 0, !dbg !3203
  br i1 %tobool7, label %cleanup, label %if.end9, !dbg !3205

if.end9:                                          ; preds = %if.end6
  %call10 = tail call zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d* nonnull %0, %struct.ssa_use_operand_d** null, %union.gimple_statement_d** null) #6, !dbg !3206
  br label %cleanup, !dbg !3207

cleanup:                                          ; preds = %if.end6, %entry, %if.end9, %if.then4
  %retval.0 = phi i8 [ %conv, %if.then4 ], [ %call10, %if.end9 ], [ 0, %entry ], [ 0, %if.end6 ], !dbg !3189
  ret i8 %retval.0, !dbg !3208
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_cost_one_coalesce(%struct.coalesce_list_d* %cl, i32 %p1, i32 %p2) unnamed_addr #0 !dbg !3209 {
entry:
  call void @llvm.dbg.value(metadata %struct.coalesce_list_d* %cl, metadata !3213, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 %p1, metadata !3214, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 %p2, metadata !3215, metadata !DIExpression()), !dbg !3217
  %call = tail call i8* @xmalloc(i64 16) #6, !dbg !3218
  call void @llvm.dbg.value(metadata i8* %call, metadata !3216, metadata !DIExpression()), !dbg !3217
  %first_element = bitcast i8* %call to i32*, !dbg !3219
  store i32 %p1, i32* %first_element, align 8, !dbg !3220
  %second_element = getelementptr inbounds i8, i8* %call, i64 4, !dbg !3221
  %0 = bitcast i8* %second_element to i32*, !dbg !3221
  store i32 %p2, i32* %0, align 4, !dbg !3222
  %cost_one_list = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 3, !dbg !3223
  %1 = bitcast %struct.cost_one_pair_d** %cost_one_list to i64*, !dbg !3223
  %2 = load i64, i64* %1, align 8, !dbg !3223
  %next = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3224
  %3 = bitcast i8* %next to i64*, !dbg !3225
  store i64 %2, i64* %3, align 8, !dbg !3225
  %4 = bitcast %struct.cost_one_pair_d** %cost_one_list to i8**, !dbg !3226
  store i8* %call, i8** %4, align 8, !dbg !3226
  ret void, !dbg !3227
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @abnormal_corrupt(%union.gimple_statement_d* %phi, i32 %i) unnamed_addr #0 !dbg !3228 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3232, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i32 %i, metadata !3233, metadata !DIExpression()), !dbg !3237
  %conv = sext i32 %i to i64, !dbg !3238
  %call = tail call fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %phi, i64 %conv) #7, !dbg !3239
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !3234, metadata !DIExpression()), !dbg !3237
  %call1 = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #7, !dbg !3240
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3235, metadata !DIExpression()), !dbg !3237
  %call3 = tail call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %phi, i64 %conv) #7, !dbg !3241
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3236, metadata !DIExpression()), !dbg !3237
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3242
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !3243
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3243
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 9, !dbg !3244
  %2 = load i32, i32* %index, align 8, !dbg !3244
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !3245
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3245
  %index4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 9, !dbg !3246
  %4 = load i32, i32* %index4, align 8, !dbg !3246
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %2, i32 %4) #6, !dbg !3247
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3248
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %i) #6, !dbg !3249
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3250
  tail call void @print_generic_expr(%struct._IO_FILE* %6, %union.tree_node* %call3, i32 2) #6, !dbg !3251
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3252
  %bf.load = load i64, i64* %7, align 8, !dbg !3252
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3254
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3254
  br i1 %cmp, label %if.else, label %if.then, !dbg !3255

if.then:                                          ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3256
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3257
  br label %if.end, !dbg !3257

if.else:                                          ; preds = %entry
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3258
  %9 = bitcast i32* %var to %union.tree_node**, !dbg !3258
  %10 = load %union.tree_node*, %union.tree_node** %9, align 8, !dbg !3258
  %var10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3258
  %11 = bitcast i32* %var10 to %union.tree_node**, !dbg !3258
  %12 = load %union.tree_node*, %union.tree_node** %11, align 8, !dbg !3258
  %cmp11 = icmp eq %union.tree_node* %10, %12, !dbg !3258
  br i1 %cmp11, label %cond.true, label %cond.end, !dbg !3258

cond.true:                                        ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 958, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3258
  br label %cond.end, !dbg !3258

cond.end:                                         ; preds = %if.else, %cond.true
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3260
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3261
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3262
  tail call void @print_generic_stmt(%struct._IO_FILE* %14, %union.tree_node* %call1, i32 2) #6, !dbg !3263
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3264
  ret void, !dbg !3265
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3266 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3271, metadata !DIExpression()), !dbg !3272
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3273
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3273
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3274
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3274
  %2 = load i64, i64* %1, align 8, !dbg !3274
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3275
  store i64 %2, i64* %3, align 8, !dbg !3275
  ret void, !dbg !3276
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3277 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3281, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3282, metadata !DIExpression()), !dbg !3285
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3286
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3283, metadata !DIExpression()), !dbg !3284
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !3287
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3288
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3289
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3290
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3291
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3292
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3293
  ret void, !dbg !3294
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3295 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3299, metadata !DIExpression()), !dbg !3300
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3301
  %cmp = icmp eq i32 %call, 2, !dbg !3302
  %conv1 = zext i1 %cmp to i8, !dbg !3301
  ret i8 %conv1, !dbg !3303
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3304 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3309, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3310, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3311, metadata !DIExpression()), !dbg !3312
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) #7, !dbg !3313
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3314
  store i32 1, i32* %iter_type, align 4, !dbg !3315
  %call = tail call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !3316
  ret %union.tree_node* %call, !dbg !3317
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3318 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3324, metadata !DIExpression()), !dbg !3325
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3326
  %0 = load i8, i8* %done, align 8, !dbg !3326
  ret i8 %0, !dbg !3327
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3328 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3332, metadata !DIExpression()), !dbg !3334
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3335
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !3335
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !3337
  br i1 %tobool, label %if.end, label %if.then, !dbg !3338

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !3339
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %use_ptr) #7, !dbg !3339
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3333, metadata !DIExpression()), !dbg !3334
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !3341
  %2 = load i64*, i64** %1, align 8, !dbg !3341
  %3 = load i64, i64* %2, align 8, !dbg !3342
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3343
  store i64 %3, i64* %4, align 8, !dbg !3343
  br label %cleanup, !dbg !3344

if.end:                                           ; preds = %entry
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3345
  %5 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !3345
  %tobool4 = icmp eq %struct.def_optype_d* %5, null, !dbg !3347
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !3348

if.then5:                                         ; preds = %if.end
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %5, i64 0, i32 1, !dbg !3349
  %6 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !3349
  %call7 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %6) #7, !dbg !3349
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !3333, metadata !DIExpression()), !dbg !3334
  %7 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !3351
  %8 = load i64*, i64** %7, align 8, !dbg !3351
  %9 = load i64, i64* %8, align 8, !dbg !3352
  %10 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !3353
  store i64 %9, i64* %10, align 8, !dbg !3353
  br label %cleanup, !dbg !3354

if.end11:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3355
  store i8 1, i8* %done, align 8, !dbg !3356
  br label %cleanup, !dbg !3357

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call7, %if.then5 ], [ null, %if.end11 ], !dbg !3334
  ret %union.tree_node* %retval.0, !dbg !3358
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3359 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3363, metadata !DIExpression()), !dbg !3364
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3365
  %bf.load = load i32, i32* %0, align 8, !dbg !3365
  %bf.clear = and i32 %bf.load, 255, !dbg !3365
  ret i32 %bf.clear, !dbg !3366
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3367 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3369, metadata !DIExpression()), !dbg !3370
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3371
  ret %union.tree_node* %call, !dbg !3372
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3373 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3375, metadata !DIExpression()), !dbg !3376
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3377
  ret %union.tree_node* %call, !dbg !3378
}

declare dso_local zeroext i8 @gimple_assign_copy_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @coalesce_cost_bb(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3379 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3383, metadata !DIExpression()), !dbg !3384
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !3385
  %0 = load i32, i32* %frequency, align 8, !dbg !3385
  %call = tail call zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def* %bb) #6, !dbg !3386
  %call1 = tail call fastcc i32 @coalesce_cost(i32 %0, i8 zeroext %call) #7, !dbg !3387
  ret i32 %call1, !dbg !3388
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_asm_noutputs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3389 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3391, metadata !DIExpression()), !dbg !3392
  %gimple_asm = bitcast %union.gimple_statement_d* %gs to %struct.gimple_statement_asm*, !dbg !3393
  %no = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 3, !dbg !3394
  %0 = load i8, i8* %no, align 1, !dbg !3394
  %conv = zext i8 %0 to i32, !dbg !3395
  ret i32 %conv, !dbg !3396
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_asm_ninputs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3397 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3399, metadata !DIExpression()), !dbg !3400
  %ni = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 3, !dbg !3401
  %0 = bitcast %union.tree_node*** %ni to i8*, !dbg !3401
  %1 = load i8, i8* %0, align 8, !dbg !3401
  %conv = zext i8 %1 to i32, !dbg !3402
  ret i32 %conv, !dbg !3403
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_asm_output_op(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3404 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3408, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i32 %index, metadata !3409, metadata !DIExpression()), !dbg !3410
  %gimple_asm = bitcast %union.gimple_statement_d* %gs to %struct.gimple_statement_asm*, !dbg !3411
  %no = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 3, !dbg !3411
  %0 = load i8, i8* %no, align 1, !dbg !3411
  %conv = zext i8 %0 to i32, !dbg !3411
  %cmp = icmp ult i32 %conv, %index, !dbg !3411
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3411

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 2655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3411
  br label %cond.end, !dbg !3411

cond.end:                                         ; preds = %entry, %cond.true
  %ni = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 3, !dbg !3412
  %1 = bitcast %union.tree_node*** %ni to i8*, !dbg !3412
  %2 = load i8, i8* %1, align 8, !dbg !3412
  %conv3 = zext i8 %2 to i32, !dbg !3413
  %add = add i32 %conv3, %index, !dbg !3414
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add) #7, !dbg !3415
  ret %union.tree_node* %call, !dbg !3416
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_asm_input_op(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3417 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3419, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.value(metadata i32 %index, metadata !3420, metadata !DIExpression()), !dbg !3421
  %ni = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 3, !dbg !3422
  %0 = bitcast %union.tree_node*** %ni to i8*, !dbg !3422
  %1 = load i8, i8* %0, align 8, !dbg !3422
  %conv = zext i8 %1 to i32, !dbg !3422
  %cmp = icmp ult i32 %conv, %index, !dbg !3422
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3422

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 2622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3422
  br label %cond.end, !dbg !3422

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %index) #7, !dbg !3423
  ret %union.tree_node* %call, !dbg !3424
}

declare dso_local i64 @strtoul(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @coalesce_cost(i32 %frequency, i8 zeroext %optimize_for_size) unnamed_addr #0 !dbg !3425 {
entry:
  call void @llvm.dbg.value(metadata i32 %frequency, metadata !3429, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i8 %optimize_for_size, metadata !3430, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 %frequency, metadata !3431, metadata !DIExpression()), !dbg !3432
  %tobool = icmp eq i32 %frequency, 0, !dbg !3433
  %spec.select = select i1 %tobool, i32 1, i32 %frequency, !dbg !3435
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3431, metadata !DIExpression()), !dbg !3432
  %tobool1 = icmp eq i8 %optimize_for_size, 0, !dbg !3436
  %cost.1 = select i1 %tobool1, i32 %spec.select, i32 1, !dbg !3438
  call void @llvm.dbg.value(metadata i32 %cost.1, metadata !3431, metadata !DIExpression()), !dbg !3432
  ret i32 %cost.1, !dbg !3439
}

declare dso_local zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @gimple_default_def(%struct.function*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3440 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3446, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3447, metadata !DIExpression()), !dbg !3448
  br label %land.end, !dbg !3449

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3449
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3449
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3449
  ret %struct.edge_def* %0, !dbg !3449
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3450 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3454, metadata !DIExpression()), !dbg !3455
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !3456
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3456
  ret %struct.basic_block_def* %0, !dbg !3457
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3458 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3463, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 %index, metadata !3464, metadata !DIExpression()), !dbg !3465
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3466
  %0 = load i32, i32* %capacity, align 8, !dbg !3466
  %cmp = icmp ult i32 %0, %index, !dbg !3466
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3466

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3466
  br label %cond.end, !dbg !3466

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3467
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3467
  ret %struct.phi_arg_d* %arrayidx, !dbg !3468
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3469 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3473, metadata !DIExpression()), !dbg !3474
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3475
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3475

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3475
  %0 = load i32, i32* %num, align 8, !dbg !3475
  br label %cond.end, !dbg !3475

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3475
  ret i32 %cond, !dbg !3475
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3476 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3480, metadata !DIExpression()), !dbg !3482
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3483
  store i32 0, i32* %index, align 8, !dbg !3484
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3485
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3486
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3487
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3487
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3487
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3488 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3494, metadata !DIExpression()), !dbg !3495
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3496
  %tobool = icmp eq i8 %call, 0, !dbg !3496
  br i1 %tobool, label %if.then, label %if.else, !dbg !3498

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3499
  br label %return, !dbg !3501

if.else:                                          ; preds = %entry
  br label %return, !dbg !3502

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3504
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3504
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3504
  ret i8 %retval.0, !dbg !3505
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3506 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3511, metadata !DIExpression()), !dbg !3512
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3513
  %0 = load i32, i32* %index, align 8, !dbg !3513
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3513
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3513
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !3513
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3513
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3513

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3513
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3513
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !3513
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3513
  br label %cond.end, !dbg !3513

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3513
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3513
  %cmp = icmp ult i32 %0, %call2, !dbg !3513
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3513

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3513
  br label %cond.end5, !dbg !3513

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3514
  %inc = add i32 %5, 1, !dbg !3514
  store i32 %inc, i32* %index, align 8, !dbg !3514
  ret void, !dbg !3515
}

declare dso_local zeroext i8 @optimize_edge_for_size_p(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3516 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3521
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3521
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3521

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3521
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3521
  br label %cond.end, !dbg !3521

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3521
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3521
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3522
  %conv3 = zext i1 %cmp to i8, !dbg !3523
  ret i8 %conv3, !dbg !3524
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3525 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3530
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3530
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3530

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3530
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3530
  br label %cond.end, !dbg !3530

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3530
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3530
  ret %struct.edge_def* %call2, !dbg !3531
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3532 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3537
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3537

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3537
  br label %cond.end, !dbg !3537

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3538
  ret %struct.VEC_edge_gc* %0, !dbg !3539
}

declare dso_local zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d*, %struct.ssa_use_operand_d**, %union.gimple_statement_d**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !3540 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3544, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i64 %index, metadata !3545, metadata !DIExpression()), !dbg !3547
  %conv = trunc i64 %index to i32, !dbg !3548
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #7, !dbg !3549
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call, metadata !3546, metadata !DIExpression()), !dbg !3547
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3550
  %call1 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %imm_use) #7, !dbg !3551
  ret %union.tree_node* %call1, !dbg !3552
}

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local void @print_generic_stmt(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local void @internal_error(i8*, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3553 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3560, metadata !DIExpression()), !dbg !3561
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3562
  %0 = load i32, i32* %flags, align 8, !dbg !3562
  %and = and i32 %0, 512, !dbg !3563
  %tobool = icmp eq i32 %and, 0, !dbg !3563
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3564

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3565
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3565
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3566
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3567

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3568
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3568
  br label %cond.end, !dbg !3567

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3567
  ret %struct.gimple_seq_d* %cond, !dbg !3569
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3570 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3577, metadata !DIExpression()), !dbg !3578
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3579
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3579

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3580
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3580
  br label %cond.end, !dbg !3579

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3579
  ret %struct.gimple_seq_node_d* %cond, !dbg !3581
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3582 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3586, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3587, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3588, metadata !DIExpression()), !dbg !3589
  %0 = and i32 %flags, 10, !dbg !3590
  %1 = icmp eq i32 %0, 8, !dbg !3590
  br i1 %1, label %cond.true, label %land.lhs.true, !dbg !3590

land.lhs.true:                                    ; preds = %entry
  %2 = and i32 %flags, 5, !dbg !3590
  %3 = icmp eq i32 %2, 4, !dbg !3590
  br i1 %3, label %cond.true, label %cond.end, !dbg !3590

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3590
  br label %cond.end, !dbg !3590

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %tobool9 = icmp eq i32 %0, 0, !dbg !3591
  br i1 %tobool9, label %cond.end12, label %cond.true10, !dbg !3592

cond.true10:                                      ; preds = %cond.end
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3593
  br label %cond.end12, !dbg !3592

cond.end12:                                       ; preds = %cond.end, %cond.true10
  %4 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ null, %cond.end ], !dbg !3592
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3594
  store %struct.def_optype_d* %4, %struct.def_optype_d** %defs, align 8, !dbg !3595
  %and14 = and i32 %flags, 8, !dbg !3596
  %tobool15 = icmp eq i32 %and14, 0, !dbg !3596
  br i1 %tobool15, label %land.lhs.true16, label %if.end, !dbg !3598

land.lhs.true16:                                  ; preds = %cond.end12
  %tobool18 = icmp eq %struct.def_optype_d* %4, null, !dbg !3599
  br i1 %tobool18, label %if.end, label %land.lhs.true19, !dbg !3600

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !3601
  %cmp = icmp eq %union.tree_node* %call20, null, !dbg !3602
  br i1 %cmp, label %if.end, label %if.then, !dbg !3603

if.then:                                          ; preds = %land.lhs.true19
  %5 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !3604
  %6 = load i64*, i64** %5, align 8, !dbg !3604
  %7 = load i64, i64* %6, align 8, !dbg !3605
  %8 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !3606
  store i64 %7, i64* %8, align 8, !dbg !3606
  br label %if.end, !dbg !3607

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true16, %cond.end12, %if.then
  %and23 = and i32 %flags, 5, !dbg !3608
  %tobool24 = icmp eq i32 %and23, 0, !dbg !3608
  br i1 %tobool24, label %cond.end28, label %cond.true25, !dbg !3609

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3610
  br label %cond.end28, !dbg !3609

cond.end28:                                       ; preds = %if.end, %cond.true25
  %9 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ null, %if.end ], !dbg !3609
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3611
  store %struct.use_optype_d* %9, %struct.use_optype_d** %uses, align 8, !dbg !3612
  %and30 = and i32 %flags, 4, !dbg !3613
  %tobool31 = icmp eq i32 %and30, 0, !dbg !3613
  br i1 %tobool31, label %land.lhs.true32, label %if.end42, !dbg !3615

land.lhs.true32:                                  ; preds = %cond.end28
  %tobool34 = icmp eq %struct.use_optype_d* %9, null, !dbg !3616
  br i1 %tobool34, label %if.end42, label %land.lhs.true35, !dbg !3617

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %call36 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !3618
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !3619
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !3620

if.then38:                                        ; preds = %land.lhs.true35
  %10 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !3621
  %11 = load i64*, i64** %10, align 8, !dbg !3621
  %12 = load i64, i64* %11, align 8, !dbg !3622
  %13 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3623
  store i64 %12, i64* %13, align 8, !dbg !3623
  br label %if.end42, !dbg !3624

if.end42:                                         ; preds = %land.lhs.true35, %land.lhs.true32, %cond.end28, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3625
  store i8 0, i8* %done, align 8, !dbg !3626
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3627
  store i32 0, i32* %phi_i, align 8, !dbg !3628
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3629
  store i32 0, i32* %num_phi, align 4, !dbg !3630
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3631
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3632
  ret void, !dbg !3633
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3634 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3638, metadata !DIExpression()), !dbg !3639
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !3640
  %tobool = icmp eq i8 %call, 0, !dbg !3640
  br i1 %tobool, label %return, label %if.end, !dbg !3642

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !3643
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !3643
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !3643
  br label %return, !dbg !3644

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3639
  ret %struct.def_optype_d* %retval.0, !dbg !3645
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3646 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3648, metadata !DIExpression()), !dbg !3649
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !3650
  %tobool = icmp eq i8 %call, 0, !dbg !3650
  br i1 %tobool, label %return, label %if.end, !dbg !3652

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !3653
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !3653
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3653
  br label %return, !dbg !3654

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3649
  ret %union.tree_node* %retval.0, !dbg !3655
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3656 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3660, metadata !DIExpression()), !dbg !3661
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !3662
  %tobool = icmp eq i8 %call, 0, !dbg !3662
  br i1 %tobool, label %return, label %if.end, !dbg !3664

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !3665
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !3665
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !3665
  br label %return, !dbg !3666

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3661
  ret %struct.use_optype_d* %retval.0, !dbg !3667
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3668 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3670, metadata !DIExpression()), !dbg !3671
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !3672
  %tobool = icmp eq i8 %call, 0, !dbg !3672
  br i1 %tobool, label %return, label %if.end, !dbg !3674

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !3675
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !3675
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3675
  br label %return, !dbg !3676

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3671
  ret %union.tree_node* %retval.0, !dbg !3677
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3678 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3680, metadata !DIExpression()), !dbg !3681
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3682
  %cmp = icmp eq i32 %call, 0, !dbg !3683
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3684

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3685
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3686
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3687
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3688 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3690, metadata !DIExpression()), !dbg !3691
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3692
  %cmp = icmp ugt i32 %call, 5, !dbg !3693
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3694

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3695
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3696
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3697
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !3698 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !3703, metadata !DIExpression()), !dbg !3704
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !3705
  ret %union.tree_node* %0, !dbg !3706
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3707 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3709, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i32 %i, metadata !3710, metadata !DIExpression()), !dbg !3711
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3712
  %tobool = icmp eq i8 %call, 0, !dbg !3712
  br i1 %tobool, label %return, label %if.then, !dbg !3714

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3715
  %idxprom = zext i32 %i to i64, !dbg !3715
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3715
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3715
  br label %return, !dbg !3717

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3718
  ret %union.tree_node* %retval.0, !dbg !3719
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3720 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3724, metadata !DIExpression()), !dbg !3726
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3727
  %idxprom = zext i32 %call to i64, !dbg !3728
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3728
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3728
  call void @llvm.dbg.value(metadata i64 %0, metadata !3725, metadata !DIExpression()), !dbg !3726
  %cmp = icmp eq i64 %0, 0, !dbg !3729
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3729

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3729
  br label %cond.end, !dbg !3729

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3730
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3731
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3732
  ret %union.tree_node** %2, !dbg !3733
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3734 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3738, metadata !DIExpression()), !dbg !3739
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3740
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3741
  ret i32 %call1, !dbg !3742
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3743 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3747, metadata !DIExpression()), !dbg !3748
  %idxprom = zext i32 %code to i64, !dbg !3749
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3749
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3749
  ret i32 %0, !dbg !3750
}

declare dso_local zeroext i8 @has_zero_uses_1(%struct.ssa_use_operand_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.coalesce_pair* @find_coalesce_pair(%struct.coalesce_list_d* %cl, i32 %p1, i32 %p2, i8 zeroext %create) unnamed_addr #5 !dbg !3751 {
entry:
  %p = alloca %struct.coalesce_pair, align 4
  call void @llvm.dbg.value(metadata %struct.coalesce_list_d* %cl, metadata !3755, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i32 %p1, metadata !3756, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i32 %p2, metadata !3757, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i8 1, metadata !3758, metadata !DIExpression()), !dbg !3765
  %0 = bitcast %struct.coalesce_pair* %p to i8*, !dbg !3766
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #8, !dbg !3766
  %cmp = icmp slt i32 %p2, %p1, !dbg !3767
  %first_element = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %p, i64 0, i32 0, !dbg !3769
  br i1 %cmp, label %if.then, label %if.else, !dbg !3770

if.then:                                          ; preds = %entry
  store i32 %p2, i32* %first_element, align 4, !dbg !3771
  %second_element = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %p, i64 0, i32 1, !dbg !3773
  store i32 %p1, i32* %second_element, align 4, !dbg !3774
  br label %if.end, !dbg !3775

if.else:                                          ; preds = %entry
  store i32 %p1, i32* %first_element, align 4, !dbg !3776
  %second_element2 = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %p, i64 0, i32 1, !dbg !3778
  store i32 %p2, i32* %second_element2, align 4, !dbg !3779
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call i32 @coalesce_pair_map_hash(i8* nonnull %0) #7, !dbg !3780
  call void @llvm.dbg.value(metadata i32 %call, metadata !3761, metadata !DIExpression()), !dbg !3765
  %list = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 0, !dbg !3781
  %1 = load %struct.htab*, %struct.htab** %list, align 8, !dbg !3781
  %call3 = call i8** @htab_find_slot_with_hash(%struct.htab* %1, i8* nonnull %0, i32 %call, i32 1) #6, !dbg !3782
  call void @llvm.dbg.value(metadata i8** %call3, metadata !3760, metadata !DIExpression()), !dbg !3765
  %tobool4 = icmp eq i8** %call3, null, !dbg !3783
  br i1 %tobool4, label %cleanup, label %if.end6, !dbg !3785

if.end6:                                          ; preds = %if.end
  %2 = load i8*, i8** %call3, align 8, !dbg !3786
  %tobool7 = icmp eq i8* %2, null, !dbg !3786
  br i1 %tobool7, label %if.then8, label %if.end17, !dbg !3787

if.then8:                                         ; preds = %if.end6
  %call9 = call i8* @xmalloc(i64 12) #6, !dbg !3788
  call void @llvm.dbg.value(metadata i8* %call9, metadata !3762, metadata !DIExpression()), !dbg !3789
  %sorted = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 1, !dbg !3790
  %3 = load %struct.coalesce_pair**, %struct.coalesce_pair*** %sorted, align 8, !dbg !3790
  %cmp10 = icmp eq %struct.coalesce_pair** %3, null, !dbg !3790
  br i1 %cmp10, label %cond.end, label %cond.true, !dbg !3790

cond.true:                                        ; preds = %if.then8
  call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 284, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3790
  br label %cond.end, !dbg !3790

cond.end:                                         ; preds = %if.then8, %cond.true
  %4 = load i32, i32* %first_element, align 4, !dbg !3791
  %first_element14 = bitcast i8* %call9 to i32*, !dbg !3792
  store i32 %4, i32* %first_element14, align 4, !dbg !3793
  %second_element15 = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %p, i64 0, i32 1, !dbg !3794
  %5 = load i32, i32* %second_element15, align 4, !dbg !3794
  %second_element16 = getelementptr inbounds i8, i8* %call9, i64 4, !dbg !3795
  %6 = bitcast i8* %second_element16 to i32*, !dbg !3795
  store i32 %5, i32* %6, align 4, !dbg !3796
  %cost = getelementptr inbounds i8, i8* %call9, i64 8, !dbg !3797
  %7 = bitcast i8* %cost to i32*, !dbg !3797
  store i32 0, i32* %7, align 4, !dbg !3798
  store i8* %call9, i8** %call3, align 8, !dbg !3799
  br label %if.end17, !dbg !3800

if.end17:                                         ; preds = %if.end6, %cond.end
  %.in = phi i8* [ %2, %if.end6 ], [ %call9, %cond.end ]
  %8 = bitcast i8* %.in to %struct.coalesce_pair*, !dbg !3801
  br label %cleanup, !dbg !3802

cleanup:                                          ; preds = %if.end, %if.end17
  %retval.0 = phi %struct.coalesce_pair* [ %8, %if.end17 ], [ null, %if.end ], !dbg !3765
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #8, !dbg !3803
  ret %struct.coalesce_pair* %retval.0, !dbg !3803
}

declare dso_local i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct._var_map* @live_var_map(%struct.tree_live_info_d* %live) unnamed_addr #0 !dbg !3804 {
entry:
  call void @llvm.dbg.value(metadata %struct.tree_live_info_d* %live, metadata !3808, metadata !DIExpression()), !dbg !3809
  %map = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 0, !dbg !3810
  %0 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !3810
  ret %struct._var_map* %0, !dbg !3811
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_conflicts_d* @ssa_conflicts_new(i32 %size) unnamed_addr #0 !dbg !3812 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !3816, metadata !DIExpression()), !dbg !3818
  %call = tail call i8* @xmalloc(i64 16) #6, !dbg !3819
  %0 = bitcast i8* %call to %struct.ssa_conflicts_d*, !dbg !3819
  call void @llvm.dbg.value(metadata %struct.ssa_conflicts_d* %0, metadata !3817, metadata !DIExpression()), !dbg !3818
  %conv = zext i32 %size to i64, !dbg !3820
  %call1 = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !3820
  %conflicts = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3821
  %1 = bitcast i8* %conflicts to i8**, !dbg !3822
  store i8* %call1, i8** %1, align 8, !dbg !3822
  %size2 = bitcast i8* %call to i32*, !dbg !3823
  store i32 %size, i32* %size2, align 8, !dbg !3824
  ret %struct.ssa_conflicts_d* %0, !dbg !3825
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.live_track_d* @new_live_track(%struct._var_map* %map) unnamed_addr #5 !dbg !3826 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !3830, metadata !DIExpression()), !dbg !3834
  %partition_to_base_index = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 6, !dbg !3835
  %0 = load i32*, i32** %partition_to_base_index, align 8, !dbg !3835
  %cmp = icmp eq i32* %0, null, !dbg !3835
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3835

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 677, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3835
  br label %cond.end, !dbg !3835

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call i8* @xmalloc(i64 24) #6, !dbg !3836
  call void @llvm.dbg.value(metadata %struct.live_track_d* %6, metadata !3831, metadata !DIExpression()), !dbg !3834
  %map1 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3837
  %1 = bitcast i8* %map1 to %struct._var_map**, !dbg !3837
  store %struct._var_map* %map, %struct._var_map** %1, align 8, !dbg !3838
  %call2 = tail call fastcc i32 @num_basevars(%struct._var_map* %map) #7, !dbg !3839
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3832, metadata !DIExpression()), !dbg !3834
  %conv = sext i32 %call2 to i64, !dbg !3840
  %mul = shl nsw i64 %conv, 3, !dbg !3841
  %call3 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3842
  %live_base_partitions = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3843
  %2 = bitcast i8* %live_base_partitions to i8**, !dbg !3844
  store i8* %call3, i8** %2, align 8, !dbg !3844
  %call4 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3845
  %live_base_var = bitcast i8* %call to %struct.bitmap_head_def**, !dbg !3846
  store %struct.bitmap_head_def* %call4, %struct.bitmap_head_def** %live_base_var, align 8, !dbg !3847
  call void @llvm.dbg.value(metadata i32 0, metadata !3833, metadata !DIExpression()), !dbg !3834
  %3 = bitcast i8* %live_base_partitions to %struct.bitmap_head_def***, !dbg !3848
  %4 = sext i32 %call2 to i64, !dbg !3851
  br label %for.cond, !dbg !3851

for.cond:                                         ; preds = %for.body, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %cond.end ], !dbg !3852
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3833, metadata !DIExpression()), !dbg !3834
  %cmp5 = icmp slt i64 %indvars.iv, %4, !dbg !3853
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3854

for.body:                                         ; preds = %for.cond
  %call7 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3855
  %5 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %3, align 8, !dbg !3856
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %5, i64 %indvars.iv, !dbg !3857
  store %struct.bitmap_head_def* %call7, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3858
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3859
  call void @llvm.dbg.value(metadata i32 undef, metadata !3833, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3834
  br label %for.cond, !dbg !3860, !llvm.loop !3861

for.end:                                          ; preds = %for.cond
  %6 = bitcast i8* %call to %struct.live_track_d*, !dbg !3863
  ret %struct.live_track_d* %6, !dbg !3864
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @live_track_init(%struct.live_track_d* %ptr, %struct.bitmap_head_def* %init) unnamed_addr #0 !dbg !3865 {
entry:
  %p = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.live_track_d* %ptr, metadata !3869, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %init, metadata !3870, metadata !DIExpression()), !dbg !3880
  %0 = bitcast i32* %p to i8*, !dbg !3881
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3881
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3882
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3882
  call void @llvm.dbg.value(metadata i32* %p, metadata !3871, metadata !DIExpression(DW_OP_deref)), !dbg !3880
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3872, metadata !DIExpression(DW_OP_deref)), !dbg !3880
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %init, i32 0, i32* nonnull %p) #7, !dbg !3883
  br label %for.cond, !dbg !3883

for.cond:                                         ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata i32* %p, metadata !3871, metadata !DIExpression(DW_OP_deref)), !dbg !3880
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3872, metadata !DIExpression(DW_OP_deref)), !dbg !3880
  %call = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %p) #7, !dbg !3885
  %tobool = icmp eq i8 %call, 0, !dbg !3883
  br i1 %tobool, label %for.end, label %for.body, !dbg !3883

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %p, align 4, !dbg !3887
  call void @llvm.dbg.value(metadata i32 %2, metadata !3871, metadata !DIExpression()), !dbg !3880
  call fastcc void @live_track_add_partition(%struct.live_track_d* %ptr, i32 %2) #7, !dbg !3888
  call void @llvm.dbg.value(metadata i32* %p, metadata !3871, metadata !DIExpression(DW_OP_deref)), !dbg !3880
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3872, metadata !DIExpression(DW_OP_deref)), !dbg !3880
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %p) #7, !dbg !3885
  br label %for.cond, !dbg !3885, !llvm.loop !3889

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3891
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3891
  ret void, !dbg !3891
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.bitmap_head_def* @live_on_exit(%struct.tree_live_info_d* %live, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3892 {
entry:
  call void @llvm.dbg.value(metadata %struct.tree_live_info_d* %live, metadata !3896, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3897, metadata !DIExpression()), !dbg !3898
  %liveout = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 6, !dbg !3899
  %0 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %liveout, align 8, !dbg !3899
  %tobool = icmp eq %struct.bitmap_head_def** %0, null, !dbg !3899
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3899

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 299, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3899
  br label %cond.end, !dbg !3899

cond.end:                                         ; preds = %entry, %cond.true
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3900
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3900
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3900
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !3900
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3900
  %cmp = icmp eq %struct.basic_block_def* %3, %bb, !dbg !3900
  br i1 %cmp, label %cond.true1, label %cond.end3, !dbg !3900

cond.true1:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 300, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3900
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3901
  %cfg6.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3898
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6.phi.trans.insert, align 8, !dbg !3901
  br label %cond.end3, !dbg !3900

cond.end3:                                        ; preds = %cond.end, %cond.true1
  %4 = phi %struct.control_flow_graph* [ %2, %cond.end ], [ %.pre1, %cond.true1 ], !dbg !3901
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !3901
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3901
  %cmp7 = icmp eq %struct.basic_block_def* %5, %bb, !dbg !3901
  br i1 %cmp7, label %cond.true8, label %cond.end10, !dbg !3901

cond.true8:                                       ; preds = %cond.end3
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 301, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3901
  br label %cond.end10, !dbg !3901

cond.end10:                                       ; preds = %cond.end3, %cond.true8
  %6 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %liveout, align 8, !dbg !3902
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3903
  %7 = load i32, i32* %index, align 8, !dbg !3903
  %idxprom = sext i32 %7 to i64, !dbg !3904
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %6, i64 %idxprom, !dbg !3904
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3904
  ret %struct.bitmap_head_def* %8, !dbg !3905
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3906 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3908, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3909, metadata !DIExpression()), !dbg !3912
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3913
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3910, metadata !DIExpression()), !dbg !3911
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #7, !dbg !3914
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3915
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3916
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3917
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3918
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3919
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3920
  ret void, !dbg !3921
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3922 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3924, metadata !DIExpression()), !dbg !3925
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3926
  %cmp = icmp eq i32 %call, 6, !dbg !3927
  %conv1 = zext i1 %cmp to i8, !dbg !3926
  ret i8 %conv1, !dbg !3928
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @live_track_clear_var(%struct.live_track_d* %ptr, %union.tree_node* %var) unnamed_addr #0 !dbg !3929 {
entry:
  call void @llvm.dbg.value(metadata %struct.live_track_d* %ptr, metadata !3933, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3934, metadata !DIExpression()), !dbg !3936
  %map = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 2, !dbg !3937
  %0 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !3937
  %call = tail call fastcc i32 @var_to_partition(%struct._var_map* %0, %union.tree_node* %var) #7, !dbg !3938
  call void @llvm.dbg.value(metadata i32 %call, metadata !3935, metadata !DIExpression()), !dbg !3936
  %cmp = icmp eq i32 %call, -1, !dbg !3939
  br i1 %cmp, label %if.end, label %if.then, !dbg !3941

if.then:                                          ; preds = %entry
  tail call fastcc void @live_track_remove_partition(%struct.live_track_d* %ptr, i32 %call) #7, !dbg !3942
  br label %if.end, !dbg !3942

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3943
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @live_track_process_def(%struct.live_track_d* %ptr, %union.tree_node* %def, %struct.ssa_conflicts_d* %graph) unnamed_addr #0 !dbg !3944 {
entry:
  %x = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.live_track_d* %ptr, metadata !3948, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !3949, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.ssa_conflicts_d* %graph, metadata !3950, metadata !DIExpression()), !dbg !3956
  %0 = bitcast i32* %x to i8*, !dbg !3957
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3957
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3958
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3958
  %map = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 2, !dbg !3959
  %2 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !3959
  %call = tail call fastcc i32 @var_to_partition(%struct._var_map* %2, %union.tree_node* %def) #7, !dbg !3960
  call void @llvm.dbg.value(metadata i32 %call, metadata !3951, metadata !DIExpression()), !dbg !3956
  %cmp = icmp eq i32 %call, -1, !dbg !3961
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3963

if.end:                                           ; preds = %entry
  tail call fastcc void @live_track_remove_partition(%struct.live_track_d* %ptr, i32 %call) #7, !dbg !3964
  %3 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !3965
  %call2 = tail call fastcc i32 @basevar_index(%struct._var_map* %3, i32 %call) #7, !dbg !3966
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3952, metadata !DIExpression()), !dbg !3956
  %live_base_var = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 0, !dbg !3967
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_base_var, align 8, !dbg !3967
  %call3 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %4, i32 %call2) #6, !dbg !3969
  %tobool = icmp eq i32 %call3, 0, !dbg !3969
  br i1 %tobool, label %cleanup, label %if.then4, !dbg !3970

if.then4:                                         ; preds = %if.end
  %live_base_partitions = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 1, !dbg !3971
  %5 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %live_base_partitions, align 8, !dbg !3971
  %idxprom = sext i32 %call2 to i64, !dbg !3973
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %5, i64 %idxprom, !dbg !3973
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3973
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %6, metadata !3953, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32* %x, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3955, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %6, i32 0, i32* nonnull %x) #7, !dbg !3974
  br label %for.cond, !dbg !3974

for.cond:                                         ; preds = %for.body, %if.then4
  call void @llvm.dbg.value(metadata i32* %x, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3955, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  %call5 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %x) #7, !dbg !3976
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3974
  br i1 %tobool6, label %cleanup.loopexit, label %for.body, !dbg !3974

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %x, align 4, !dbg !3978
  call void @llvm.dbg.value(metadata i32 %7, metadata !3954, metadata !DIExpression()), !dbg !3956
  call fastcc void @ssa_conflicts_add(%struct.ssa_conflicts_d* %graph, i32 %call, i32 %7) #7, !dbg !3979
  call void @llvm.dbg.value(metadata i32* %x, metadata !3954, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3955, metadata !DIExpression(DW_OP_deref)), !dbg !3956
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %x) #7, !dbg !3976
  br label %for.cond, !dbg !3976, !llvm.loop !3980

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3982

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3982
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3982
  ret void, !dbg !3982
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @live_track_process_use(%struct.live_track_d* %ptr, %union.tree_node* %use) unnamed_addr #0 !dbg !3983 {
entry:
  call void @llvm.dbg.value(metadata %struct.live_track_d* %ptr, metadata !3985, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata %union.tree_node* %use, metadata !3986, metadata !DIExpression()), !dbg !3988
  %map = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 2, !dbg !3989
  %0 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !3989
  %call = tail call fastcc i32 @var_to_partition(%struct._var_map* %0, %union.tree_node* %use) #7, !dbg !3990
  call void @llvm.dbg.value(metadata i32 %call, metadata !3987, metadata !DIExpression()), !dbg !3988
  %cmp = icmp eq i32 %call, -1, !dbg !3991
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !3993

if.end:                                           ; preds = %entry
  tail call fastcc void @live_track_add_partition(%struct.live_track_d* %ptr, i32 %call) #7, !dbg !3994
  br label %cleanup.cont, !dbg !3995

cleanup.cont:                                     ; preds = %if.end, %entry
  ret void, !dbg !3995
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_prev(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3996 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3998, metadata !DIExpression()), !dbg !3999
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4000
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4000
  %prev = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 1, !dbg !4001
  %1 = bitcast %struct.gimple_seq_node_d** %prev to i64*, !dbg !4001
  %2 = load i64, i64* %1, align 8, !dbg !4001
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !4002
  store i64 %2, i64* %3, align 8, !dbg !4002
  ret void, !dbg !4003
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4004 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4006, metadata !DIExpression()), !dbg !4007
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !4008
  ret %union.tree_node** %result, !dbg !4009
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @live_track_live_p(%struct.live_track_d* %ptr, %union.tree_node* %var) unnamed_addr #0 !dbg !4010 {
entry:
  call void @llvm.dbg.value(metadata %struct.live_track_d* %ptr, metadata !4014, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4015, metadata !DIExpression()), !dbg !4018
  %map = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 2, !dbg !4019
  %0 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !4019
  %call = tail call fastcc i32 @var_to_partition(%struct._var_map* %0, %union.tree_node* %var) #7, !dbg !4020
  call void @llvm.dbg.value(metadata i32 %call, metadata !4016, metadata !DIExpression()), !dbg !4018
  %cmp = icmp eq i32 %call, -1, !dbg !4021
  br i1 %cmp, label %cleanup, label %if.then, !dbg !4023

if.then:                                          ; preds = %entry
  %1 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !4024
  %call2 = tail call fastcc i32 @basevar_index(%struct._var_map* %1, i32 %call) #7, !dbg !4026
  call void @llvm.dbg.value(metadata i32 %call2, metadata !4017, metadata !DIExpression()), !dbg !4018
  %live_base_var = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 0, !dbg !4027
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_base_var, align 8, !dbg !4027
  %call3 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %2, i32 %call2) #6, !dbg !4029
  %tobool = icmp eq i32 %call3, 0, !dbg !4029
  br i1 %tobool, label %cleanup, label %if.then4, !dbg !4030

if.then4:                                         ; preds = %if.then
  %live_base_partitions = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 1, !dbg !4031
  %3 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %live_base_partitions, align 8, !dbg !4031
  %idxprom = sext i32 %call2 to i64, !dbg !4032
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %3, i64 %idxprom, !dbg !4032
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4032
  %call5 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %4, i32 %call) #6, !dbg !4033
  %conv = trunc i32 %call5 to i8, !dbg !4033
  br label %cleanup, !dbg !4034

cleanup:                                          ; preds = %if.then, %entry, %if.then4
  %retval.0 = phi i8 [ %conv, %if.then4 ], [ 0, %if.then ], [ 0, %entry ], !dbg !4018
  ret i8 %retval.0, !dbg !4035
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @live_track_clear_base_vars(%struct.live_track_d* %ptr) unnamed_addr #0 !dbg !4036 {
entry:
  call void @llvm.dbg.value(metadata %struct.live_track_d* %ptr, metadata !4040, metadata !DIExpression()), !dbg !4041
  %live_base_var = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 0, !dbg !4042
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_base_var, align 8, !dbg !4042
  tail call void @bitmap_clear(%struct.bitmap_head_def* %0) #6, !dbg !4043
  ret void, !dbg !4044
}

; Function Attrs: nounwind uwtable
define internal fastcc void @delete_live_track(%struct.live_track_d* %ptr) unnamed_addr #5 !dbg !4045 {
entry:
  call void @llvm.dbg.value(metadata %struct.live_track_d* %ptr, metadata !4047, metadata !DIExpression()), !dbg !4050
  %map = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 2, !dbg !4051
  %0 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !4051
  %call = tail call fastcc i32 @num_basevars(%struct._var_map* %0) #7, !dbg !4052
  call void @llvm.dbg.value(metadata i32 %call, metadata !4049, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4050
  %live_base_partitions = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 1, !dbg !4053
  %1 = sext i32 %call to i64, !dbg !4056
  br label %for.cond, !dbg !4056

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !4057
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4048, metadata !DIExpression()), !dbg !4050
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !4058
  br i1 %cmp, label %for.body, label %for.end, !dbg !4059

for.body:                                         ; preds = %for.cond
  %2 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %live_base_partitions, align 8, !dbg !4060
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %2, i64 %indvars.iv, !dbg !4060
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4060
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %3) #6, !dbg !4060
  %4 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %live_base_partitions, align 8, !dbg !4060
  %arrayidx3 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %4, i64 %indvars.iv, !dbg !4060
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %arrayidx3, align 8, !dbg !4060
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4061
  call void @llvm.dbg.value(metadata i32 undef, metadata !4048, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4050
  br label %for.cond, !dbg !4062, !llvm.loop !4063

for.end:                                          ; preds = %for.cond
  %live_base_var = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 0, !dbg !4065
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_base_var, align 8, !dbg !4065
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %5) #6, !dbg !4065
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %live_base_var, align 8, !dbg !4065
  %6 = bitcast %struct.bitmap_head_def*** %live_base_partitions to i8**, !dbg !4066
  %7 = load i8*, i8** %6, align 8, !dbg !4066
  tail call void @free(i8* %7) #6, !dbg !4067
  %8 = bitcast %struct.live_track_d* %ptr to i8*, !dbg !4068
  tail call void @free(i8* %8) #6, !dbg !4069
  ret void, !dbg !4070
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @num_basevars(%struct._var_map* %map) unnamed_addr #0 !dbg !4071 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !4075, metadata !DIExpression()), !dbg !4076
  %num_basevars = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 5, !dbg !4077
  %0 = load i32, i32* %num_basevars, align 8, !dbg !4077
  ret i32 %0, !dbg !4078
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !4079 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4088, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !4089, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i32 0, metadata !4090, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4091, metadata !DIExpression()), !dbg !4092
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !4093
  %1 = load i64, i64* %0, align 8, !dbg !4093
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4094
  store i64 %1, i64* %2, align 8, !dbg !4094
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !4095
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !4096
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4097
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !4100
  br label %while.body, !dbg !4100

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !4101
  br i1 %tobool, label %if.then, label %if.end, !dbg !4102

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !4103
  br label %while.end, !dbg !4105

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !4106

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !4100, !llvm.loop !4107

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !4109

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !4109
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !4111
  %7 = load i32, i32* %indx9, align 8, !dbg !4111
  %cmp11 = icmp eq i32 %7, 0, !dbg !4112
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !4113

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !4114
  %8 = load i32, i32* %indx14, align 8, !dbg !4114
  %mul = shl i32 %8, 7, !dbg !4115
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4090, metadata !DIExpression()), !dbg !4092
  br label %if.end15, !dbg !4116

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !4090, metadata !DIExpression()), !dbg !4092
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4117
  store i32 0, i32* %word_no, align 8, !dbg !4118
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !4119
  %9 = load i64, i64* %arrayidx, align 8, !dbg !4119
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4120
  store i64 %9, i64* %bits21, align 8, !dbg !4121
  %tobool23 = icmp eq i64 %9, 0, !dbg !4122
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !4122
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !4123
  call void @llvm.dbg.value(metadata i32 %add, metadata !4090, metadata !DIExpression()), !dbg !4092
  store i32 %add, i32* %bit_no, align 4, !dbg !4124
  ret void, !dbg !4125
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4126 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4130, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4131, metadata !DIExpression()), !dbg !4135
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4136
  %0 = load i64, i64* %bits, align 8, !dbg !4136
  %tobool = icmp eq i64 %0, 0, !dbg !4137
  br i1 %tobool, label %if.end, label %next_bit, !dbg !4138

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !4139
  br label %next_bit, !dbg !4142

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !4132), !dbg !4143
  br label %while.cond, !dbg !4142

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !4144
  %and = and i64 %2, 1, !dbg !4145
  %tobool2 = icmp eq i64 %and, 0, !dbg !4146
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !4142

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !4147
  store i64 %shr, i64* %bits, align 8, !dbg !4147
  %3 = load i32, i32* %bit_no, align 4, !dbg !4149
  %add = add i32 %3, 1, !dbg !4149
  store i32 %add, i32* %bit_no, align 4, !dbg !4149
  %.pre = load i64, i64* %bits, align 8, !dbg !4144
  br label %while.cond, !dbg !4142, !llvm.loop !4150

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !4152
  %sub = add i32 %4, 63, !dbg !4153
  %div = and i32 %sub, -64, !dbg !4154
  store i32 %div, i32* %bit_no, align 4, !dbg !4155
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4156
  %5 = load i32, i32* %word_no, align 8, !dbg !4157
  %inc = add i32 %5, 1, !dbg !4157
  store i32 %inc, i32* %word_no, align 8, !dbg !4157
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4158
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4158
  br label %while.body6, !dbg !4159

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !4160

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !4161
  %cmp = icmp eq i32 %8, 2, !dbg !4162
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !4158
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !4160

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !4139
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !4139
  %10 = load i64, i64* %arrayidx, align 8, !dbg !4139
  store i64 %10, i64* %bits, align 8, !dbg !4163
  %tobool14 = icmp eq i64 %10, 0, !dbg !4164
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !4166

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !4167
  %add17 = add i32 %11, 64, !dbg !4167
  store i32 %add17, i32* %bit_no, align 4, !dbg !4167
  %12 = load i32, i32* %word_no, align 8, !dbg !4168
  %inc19 = add i32 %12, 1, !dbg !4168
  store i32 %inc19, i32* %word_no, align 8, !dbg !4168
  br label %while.cond7, !dbg !4160, !llvm.loop !4169

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !4158
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !4171
  %14 = load i64, i64* %13, align 8, !dbg !4171
  store i64 %14, i64* %6, align 8, !dbg !4172
  %tobool24 = icmp eq i64 %14, 0, !dbg !4173
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !4175

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !4175
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !4176
  %16 = load i32, i32* %indx, align 8, !dbg !4176
  %mul28 = shl i32 %16, 7, !dbg !4177
  store i32 %mul28, i32* %bit_no, align 4, !dbg !4178
  store i32 0, i32* %word_no, align 8, !dbg !4179
  br label %while.body6, !dbg !4159, !llvm.loop !4180

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !4182

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !4182

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !4135
  ret i8 %retval.0, !dbg !4182
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @live_track_add_partition(%struct.live_track_d* %ptr, i32 %partition) unnamed_addr #0 !dbg !4183 {
entry:
  call void @llvm.dbg.value(metadata %struct.live_track_d* %ptr, metadata !4187, metadata !DIExpression()), !dbg !4190
  call void @llvm.dbg.value(metadata i32 %partition, metadata !4188, metadata !DIExpression()), !dbg !4190
  %map = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 2, !dbg !4191
  %0 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !4191
  %call = tail call fastcc i32 @basevar_index(%struct._var_map* %0, i32 %partition) #7, !dbg !4192
  call void @llvm.dbg.value(metadata i32 %call, metadata !4189, metadata !DIExpression()), !dbg !4190
  %live_base_var = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 0, !dbg !4193
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_base_var, align 8, !dbg !4193
  %call1 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %1, i32 %call) #6, !dbg !4195
  %tobool = icmp eq i32 %call1, 0, !dbg !4195
  br i1 %tobool, label %if.then, label %entry.if.end_crit_edge, !dbg !4196

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = sext i32 %call to i64, !dbg !4197
  br label %if.end, !dbg !4196

if.then:                                          ; preds = %entry
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_base_var, align 8, !dbg !4198
  %call3 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %2, i32 %call) #6, !dbg !4200
  %live_base_partitions = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 1, !dbg !4201
  %3 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %live_base_partitions, align 8, !dbg !4201
  %idxprom = sext i32 %call to i64, !dbg !4202
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %3, i64 %idxprom, !dbg !4202
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4202
  tail call void @bitmap_clear(%struct.bitmap_head_def* %4) #6, !dbg !4203
  br label %if.end, !dbg !4204

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %idxprom5.pre-phi = phi i64 [ %.pre, %entry.if.end_crit_edge ], [ %idxprom, %if.then ], !dbg !4197
  %live_base_partitions4 = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 1, !dbg !4205
  %5 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %live_base_partitions4, align 8, !dbg !4205
  %arrayidx6 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %5, i64 %idxprom5.pre-phi, !dbg !4197
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx6, align 8, !dbg !4197
  %call7 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %6, i32 %partition) #6, !dbg !4206
  ret void, !dbg !4207
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4208 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4212, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4213, metadata !DIExpression()), !dbg !4214
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4215
  %0 = load i64, i64* %bits, align 8, !dbg !4216
  %shr = lshr i64 %0, 1, !dbg !4216
  store i64 %shr, i64* %bits, align 8, !dbg !4216
  %1 = load i32, i32* %bit_no, align 4, !dbg !4217
  %add = add i32 %1, 1, !dbg !4217
  store i32 %add, i32* %bit_no, align 4, !dbg !4217
  ret void, !dbg !4218
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @basevar_index(%struct._var_map* %map, i32 %partition) unnamed_addr #0 !dbg !4219 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !4223, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i32 %partition, metadata !4224, metadata !DIExpression()), !dbg !4225
  %cmp = icmp sgt i32 %partition, -1, !dbg !4226
  br i1 %cmp, label %land.lhs.true, label %cond.true, !dbg !4226

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @num_var_partitions(%struct._var_map* %map) #7, !dbg !4226
  %cmp1 = icmp slt i32 %call, %partition, !dbg !4226
  br i1 %cmp1, label %cond.true, label %cond.end, !dbg !4226

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4226
  br label %cond.end, !dbg !4226

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %partition_to_base_index = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 6, !dbg !4227
  %0 = load i32*, i32** %partition_to_base_index, align 8, !dbg !4227
  %idxprom = sext i32 %partition to i64, !dbg !4228
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !4228
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4228
  ret i32 %1, !dbg !4229
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4230 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4232, metadata !DIExpression()), !dbg !4233
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4234
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4234

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !4235
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !4235
  br label %cond.end, !dbg !4234

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4234
  ret %struct.gimple_seq_node_d* %cond, !dbg !4236
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @var_to_partition(%struct._var_map* %map, %union.tree_node* %var) unnamed_addr #0 !dbg !4237 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !4241, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4242, metadata !DIExpression()), !dbg !4244
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4245
  %bf.load = load i64, i64* %0, align 8, !dbg !4245
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4245
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4245
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4245

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4245
  br label %cond.end, !dbg !4245

cond.end:                                         ; preds = %entry, %cond.true
  %var_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 0, !dbg !4246
  %1 = load %struct.partition_def*, %struct.partition_def** %var_partition, align 8, !dbg !4246
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4246
  %2 = bitcast %union.tree_node** %version to i32*, !dbg !4246
  %3 = load i32, i32* %2, align 8, !dbg !4246
  %idxprom = zext i32 %3 to i64, !dbg !4246
  %class_element = getelementptr inbounds %struct.partition_def, %struct.partition_def* %1, i64 0, i32 1, i64 %idxprom, i32 0, !dbg !4246
  %4 = load i32, i32* %class_element, align 8, !dbg !4246
  call void @llvm.dbg.value(metadata i32 %4, metadata !4243, metadata !DIExpression()), !dbg !4244
  %partition_to_view = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 1, !dbg !4247
  %5 = load i32*, i32** %partition_to_view, align 8, !dbg !4247
  %tobool = icmp eq i32* %5, null, !dbg !4249
  br i1 %tobool, label %if.end, label %if.then, !dbg !4250

if.then:                                          ; preds = %cond.end
  %idxprom2 = sext i32 %4 to i64, !dbg !4251
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom2, !dbg !4251
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !4251
  call void @llvm.dbg.value(metadata i32 %6, metadata !4243, metadata !DIExpression()), !dbg !4244
  br label %if.end, !dbg !4252

if.end:                                           ; preds = %cond.end, %if.then
  %part.0 = phi i32 [ %6, %if.then ], [ %4, %cond.end ], !dbg !4244
  call void @llvm.dbg.value(metadata i32 %part.0, metadata !4243, metadata !DIExpression()), !dbg !4244
  ret i32 %part.0, !dbg !4253
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @live_track_remove_partition(%struct.live_track_d* %ptr, i32 %partition) unnamed_addr #0 !dbg !4254 {
entry:
  call void @llvm.dbg.value(metadata %struct.live_track_d* %ptr, metadata !4256, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i32 %partition, metadata !4257, metadata !DIExpression()), !dbg !4259
  %map = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 2, !dbg !4260
  %0 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !4260
  %call = tail call fastcc i32 @basevar_index(%struct._var_map* %0, i32 %partition) #7, !dbg !4261
  call void @llvm.dbg.value(metadata i32 %call, metadata !4258, metadata !DIExpression()), !dbg !4259
  %live_base_partitions = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 1, !dbg !4262
  %1 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %live_base_partitions, align 8, !dbg !4262
  %idxprom = sext i32 %call to i64, !dbg !4263
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %1, i64 %idxprom, !dbg !4263
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4263
  %call1 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %2, i32 %partition) #6, !dbg !4264
  %3 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %live_base_partitions, align 8, !dbg !4265
  %arrayidx4 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %3, i64 %idxprom, !dbg !4265
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx4, align 8, !dbg !4265
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %4, i64 0, i32 0, !dbg !4265
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !4265
  %tobool = icmp eq %struct.bitmap_element_def* %5, null, !dbg !4265
  br i1 %tobool, label %if.then, label %if.end, !dbg !4267

if.then:                                          ; preds = %entry
  %live_base_var = getelementptr inbounds %struct.live_track_d, %struct.live_track_d* %ptr, i64 0, i32 0, !dbg !4268
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_base_var, align 8, !dbg !4268
  %call5 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %6, i32 %call) #6, !dbg !4269
  br label %if.end, !dbg !4269

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !4270
}

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ssa_conflicts_add(%struct.ssa_conflicts_d* %ptr, i32 %x, i32 %y) unnamed_addr #0 !dbg !4271 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_conflicts_d* %ptr, metadata !4275, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i32 %x, metadata !4276, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i32 %y, metadata !4277, metadata !DIExpression()), !dbg !4278
  tail call fastcc void @ssa_conflicts_add_one(%struct.ssa_conflicts_d* %ptr, i32 %x, i32 %y) #7, !dbg !4279
  tail call fastcc void @ssa_conflicts_add_one(%struct.ssa_conflicts_d* %ptr, i32 %y, i32 %x) #7, !dbg !4280
  ret void, !dbg !4281
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ssa_conflicts_add_one(%struct.ssa_conflicts_d* %ptr, i32 %x, i32 %y) unnamed_addr #0 !dbg !4282 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_conflicts_d* %ptr, metadata !4284, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i32 %x, metadata !4285, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i32 %y, metadata !4286, metadata !DIExpression()), !dbg !4287
  %conflicts = getelementptr inbounds %struct.ssa_conflicts_d, %struct.ssa_conflicts_d* %ptr, i64 0, i32 1, !dbg !4288
  %0 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %conflicts, align 8, !dbg !4288
  %idxprom = zext i32 %x to i64, !dbg !4290
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %0, i64 %idxprom, !dbg !4290
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4290
  %tobool = icmp eq %struct.bitmap_head_def* %1, null, !dbg !4290
  br i1 %tobool, label %if.then, label %if.end, !dbg !4291

if.then:                                          ; preds = %entry
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !4292
  %2 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %conflicts, align 8, !dbg !4293
  %arrayidx3 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %2, i64 %idxprom, !dbg !4294
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** %arrayidx3, align 8, !dbg !4295
  %.pre = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %conflicts, align 8, !dbg !4296
  %arrayidx6.phi.trans.insert = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %.pre, i64 %idxprom, !dbg !4287
  %.pre1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx6.phi.trans.insert, align 8, !dbg !4297
  br label %if.end, !dbg !4294

if.end:                                           ; preds = %entry, %if.then
  %3 = phi %struct.bitmap_head_def* [ %1, %entry ], [ %.pre1, %if.then ], !dbg !4297
  %call7 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %3, i32 %y) #6, !dbg !4298
  ret void, !dbg !4299
}

declare dso_local void @bitmap_print(%struct._IO_FILE*, %struct.bitmap_head_def*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @num_coalesce_pairs(%struct.coalesce_list_d* %cl) unnamed_addr #0 !dbg !4300 {
entry:
  call void @llvm.dbg.value(metadata %struct.coalesce_list_d* %cl, metadata !4304, metadata !DIExpression()), !dbg !4305
  %list = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 0, !dbg !4306
  %0 = load %struct.htab*, %struct.htab** %list, align 8, !dbg !4306
  %call = tail call i64 @htab_elements(%struct.htab* %0) #6, !dbg !4307
  %conv = trunc i64 %call to i32, !dbg !4307
  ret i32 %conv, !dbg !4308
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.coalesce_pair* @first_coalesce_pair(%struct.coalesce_list_d* %cl, %struct.coalesce_pair_iterator* %iter) unnamed_addr #0 !dbg !4309 {
entry:
  call void @llvm.dbg.value(metadata %struct.coalesce_list_d* %cl, metadata !4314, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata %struct.coalesce_pair_iterator* %iter, metadata !4315, metadata !DIExpression()), !dbg !4317
  %hti = getelementptr inbounds %struct.coalesce_pair_iterator, %struct.coalesce_pair_iterator* %iter, i64 0, i32 0, !dbg !4318
  %list = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 0, !dbg !4319
  %0 = load %struct.htab*, %struct.htab** %list, align 8, !dbg !4319
  %call = tail call fastcc i8* @first_htab_element(%struct.htab_iterator* %hti, %struct.htab* %0) #7, !dbg !4320
  %1 = bitcast i8* %call to %struct.coalesce_pair*, !dbg !4321
  call void @llvm.dbg.value(metadata %struct.coalesce_pair* %1, metadata !4316, metadata !DIExpression()), !dbg !4317
  ret %struct.coalesce_pair* %1, !dbg !4322
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_coalesce_pair_p(%struct.coalesce_pair_iterator* %iter) unnamed_addr #0 !dbg !4323 {
entry:
  call void @llvm.dbg.value(metadata %struct.coalesce_pair_iterator* %iter, metadata !4327, metadata !DIExpression()), !dbg !4328
  %hti = getelementptr inbounds %struct.coalesce_pair_iterator, %struct.coalesce_pair_iterator* %iter, i64 0, i32 0, !dbg !4329
  %call = tail call fastcc zeroext i8 @end_htab_p(%struct.htab_iterator* %hti) #7, !dbg !4330
  ret i8 %call, !dbg !4331
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.coalesce_pair* @next_coalesce_pair(%struct.coalesce_pair_iterator* %iter) unnamed_addr #0 !dbg !4332 {
entry:
  call void @llvm.dbg.value(metadata %struct.coalesce_pair_iterator* %iter, metadata !4336, metadata !DIExpression()), !dbg !4338
  %hti = getelementptr inbounds %struct.coalesce_pair_iterator, %struct.coalesce_pair_iterator* %iter, i64 0, i32 0, !dbg !4339
  %call = tail call fastcc i8* @next_htab_element(%struct.htab_iterator* %hti) #7, !dbg !4340
  %0 = bitcast i8* %call to %struct.coalesce_pair*, !dbg !4341
  call void @llvm.dbg.value(metadata %struct.coalesce_pair* %0, metadata !4337, metadata !DIExpression()), !dbg !4338
  ret %struct.coalesce_pair* %0, !dbg !4342
}

declare dso_local void @spec_qsort(i8*, i64, i64, i32 (i8*, i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @compare_pairs(i8* %p1, i8* %p2) #5 !dbg !4343 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !4345, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata i8* %p2, metadata !4346, metadata !DIExpression()), !dbg !4351
  %0 = bitcast i8* %p1 to %struct.coalesce_pair**, !dbg !4352
  call void @llvm.dbg.value(metadata %struct.coalesce_pair** %0, metadata !4347, metadata !DIExpression()), !dbg !4351
  %1 = bitcast i8* %p2 to %struct.coalesce_pair**, !dbg !4353
  call void @llvm.dbg.value(metadata %struct.coalesce_pair** %1, metadata !4349, metadata !DIExpression()), !dbg !4351
  %2 = load %struct.coalesce_pair*, %struct.coalesce_pair** %0, align 8, !dbg !4354
  %cost = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %2, i64 0, i32 2, !dbg !4355
  %3 = load i32, i32* %cost, align 4, !dbg !4355
  %4 = load %struct.coalesce_pair*, %struct.coalesce_pair** %1, align 8, !dbg !4356
  %cost1 = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %4, i64 0, i32 2, !dbg !4357
  %5 = load i32, i32* %cost1, align 4, !dbg !4357
  %sub = sub nsw i32 %3, %5, !dbg !4358
  call void @llvm.dbg.value(metadata i32 %sub, metadata !4350, metadata !DIExpression()), !dbg !4351
  %cmp = icmp eq i32 %sub, 0, !dbg !4359
  br i1 %cmp, label %if.then, label %if.end8, !dbg !4361

if.then:                                          ; preds = %entry
  %first_element = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %4, i64 0, i32 0, !dbg !4362
  %6 = load i32, i32* %first_element, align 4, !dbg !4362
  %first_element2 = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %2, i64 0, i32 0, !dbg !4364
  %7 = load i32, i32* %first_element2, align 4, !dbg !4364
  %sub3 = sub nsw i32 %6, %7, !dbg !4365
  call void @llvm.dbg.value(metadata i32 %sub3, metadata !4350, metadata !DIExpression()), !dbg !4351
  %cmp4 = icmp eq i32 %sub3, 0, !dbg !4366
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !4368

if.then5:                                         ; preds = %if.then
  %second_element = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %4, i64 0, i32 1, !dbg !4369
  %8 = load i32, i32* %second_element, align 4, !dbg !4369
  %second_element6 = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %2, i64 0, i32 1, !dbg !4370
  %9 = load i32, i32* %second_element6, align 4, !dbg !4370
  %sub7 = sub nsw i32 %8, %9, !dbg !4371
  call void @llvm.dbg.value(metadata i32 %sub7, metadata !4350, metadata !DIExpression()), !dbg !4351
  br label %if.end8, !dbg !4372

if.end8:                                          ; preds = %if.then, %if.then5, %entry
  %result.1 = phi i32 [ %sub, %entry ], [ %sub7, %if.then5 ], [ %sub3, %if.then ], !dbg !4351
  call void @llvm.dbg.value(metadata i32 %result.1, metadata !4350, metadata !DIExpression()), !dbg !4351
  ret i32 %result.1, !dbg !4373
}

declare dso_local i64 @htab_elements(%struct.htab*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @first_htab_element(%struct.htab_iterator* %hti, %struct.htab* %table) unnamed_addr #0 !dbg !4374 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !4379, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata %struct.htab* %table, metadata !4380, metadata !DIExpression()), !dbg !4383
  %htab = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 0, !dbg !4384
  store %struct.htab* %table, %struct.htab** %htab, align 8, !dbg !4385
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %table, i64 0, i32 3, !dbg !4386
  %0 = bitcast i8*** %entries to i64*, !dbg !4386
  %1 = load i64, i64* %0, align 8, !dbg !4386
  %slot = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !4387
  %2 = bitcast i8*** %slot to i64*, !dbg !4388
  store i64 %1, i64* %2, align 8, !dbg !4388
  %.cast = inttoptr i64 %1 to i8**, !dbg !4389
  %call = tail call i64 @htab_size(%struct.htab* %table) #6, !dbg !4390
  %add.ptr = getelementptr inbounds i8*, i8** %.cast, i64 %call, !dbg !4391
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !4392
  store i8** %add.ptr, i8*** %limit, align 8, !dbg !4393
  %.pre3 = load i8**, i8*** %slot, align 8, !dbg !4394
  br label %do.body, !dbg !4395

do.body:                                          ; preds = %do.cond, %entry
  %3 = phi i8** [ %incdec.ptr, %do.cond ], [ %.pre3, %entry ]
  %indvars2 = bitcast i8** %3 to i64*, !dbg !4394
  %4 = load i64, i64* %indvars2, align 8, !dbg !4396
  %switch1 = icmp ult i64 %4, 2, !dbg !4397
  br i1 %switch1, label %do.cond, label %do.end

do.cond:                                          ; preds = %do.body
  %incdec.ptr = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !4399
  store i8** %incdec.ptr, i8*** %slot, align 8, !dbg !4399
  %cmp6 = icmp ult i8** %incdec.ptr, %add.ptr, !dbg !4400
  br i1 %cmp6, label %do.body, label %do.end, !dbg !4401, !llvm.loop !4402

do.end:                                           ; preds = %do.body, %do.cond
  %5 = phi i8** [ %3, %do.body ], [ %incdec.ptr, %do.cond ]
  %6 = phi i8** [ %3, %do.body ], [ %incdec.ptr, %do.cond ], !dbg !4404
  %cmp9 = icmp ult i8** %6, %add.ptr, !dbg !4406
  br i1 %cmp9, label %if.then10, label %return, !dbg !4407

if.then10:                                        ; preds = %do.end
  %7 = load i8*, i8** %5, align 8, !dbg !4408
  br label %return, !dbg !4409

return:                                           ; preds = %do.end, %if.then10
  %retval.0 = phi i8* [ %7, %if.then10 ], [ null, %do.end ], !dbg !4383
  ret i8* %retval.0, !dbg !4410
}

declare dso_local i64 @htab_size(%struct.htab*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_htab_p(%struct.htab_iterator* %hti) unnamed_addr #0 !dbg !4411 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !4417, metadata !DIExpression()), !dbg !4418
  %slot = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !4419
  %0 = load i8**, i8*** %slot, align 8, !dbg !4419
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !4421
  %1 = load i8**, i8*** %limit, align 8, !dbg !4421
  %cmp = icmp uge i8** %0, %1, !dbg !4422
  %. = zext i1 %cmp to i8, !dbg !4418
  ret i8 %., !dbg !4423
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @next_htab_element(%struct.htab_iterator* %hti) unnamed_addr #0 !dbg !4424 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !4428, metadata !DIExpression()), !dbg !4431
  %slot1 = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !4432
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !4431
  %.pre = load i8**, i8*** %slot1, align 8, !dbg !4433
  %.pre3 = load i8**, i8*** %limit, align 8, !dbg !4434
  br label %while.cond, !dbg !4435

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi i8** [ %.pre, %entry ], [ %incdec.ptr, %while.body ], !dbg !4433
  %retval.0 = phi i8* [ undef, %entry ], [ %spec.select2, %while.body ]
  %incdec.ptr = getelementptr inbounds i8*, i8** %0, i64 1, !dbg !4433
  store i8** %incdec.ptr, i8*** %slot1, align 8, !dbg !4433
  %cmp = icmp ult i8** %incdec.ptr, %.pre3, !dbg !4436
  br i1 %cmp, label %while.body, label %return, !dbg !4435

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %incdec.ptr, align 8, !dbg !4437
  call void @llvm.dbg.value(metadata i8* %1, metadata !4429, metadata !DIExpression()), !dbg !4438
  %switch1 = icmp ult i8* %1, inttoptr (i64 2 to i8*), !dbg !4439
  %spec.select2 = select i1 %switch1, i8* %retval.0, i8* %1, !dbg !4439
  br i1 %switch1, label %while.cond, label %return, !llvm.loop !4441

return:                                           ; preds = %while.cond, %while.body
  %retval.2 = phi i8* [ %spec.select2, %while.body ], [ null, %while.cond ], !dbg !4431
  ret i8* %retval.2, !dbg !4443
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @attempt_coalesce(%struct._var_map* %map, %struct.ssa_conflicts_d* %graph, i32 %x, i32 %y, %struct._IO_FILE* %debug) unnamed_addr #0 !dbg !4444 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !4448, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata %struct.ssa_conflicts_d* %graph, metadata !4449, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %x, metadata !4450, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %y, metadata !4451, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %debug, metadata !4452, metadata !DIExpression()), !dbg !4458
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4459
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !4459
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !4459
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 2, !dbg !4459
  %2 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !4459
  %tobool = icmp eq %struct.VEC_tree_gc* %2, null, !dbg !4459
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4459

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %2, i64 0, i32 0, !dbg !4459
  br label %cond.end, !dbg !4459

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4459
  %call = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond, i32 %x) #7, !dbg !4459
  %call4 = tail call fastcc i32 @var_to_partition(%struct._var_map* %map, %union.tree_node* %call) #7, !dbg !4460
  call void @llvm.dbg.value(metadata i32 %call4, metadata !4456, metadata !DIExpression()), !dbg !4458
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4461
  %gimple_df6 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 3, !dbg !4461
  %4 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df6, align 8, !dbg !4461
  %ssa_names7 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %4, i64 0, i32 2, !dbg !4461
  %5 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names7, align 8, !dbg !4461
  %tobool8 = icmp eq %struct.VEC_tree_gc* %5, null, !dbg !4461
  br i1 %tobool8, label %cond.end15, label %cond.true9, !dbg !4461

cond.true9:                                       ; preds = %cond.end
  %base13 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %5, i64 0, i32 0, !dbg !4461
  br label %cond.end15, !dbg !4461

cond.end15:                                       ; preds = %cond.end, %cond.true9
  %cond16 = phi %struct.VEC_tree_base* [ %base13, %cond.true9 ], [ null, %cond.end ], !dbg !4461
  %call17 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond16, i32 %y) #7, !dbg !4461
  %call18 = tail call fastcc i32 @var_to_partition(%struct._var_map* %map, %union.tree_node* %call17) #7, !dbg !4462
  call void @llvm.dbg.value(metadata i32 %call18, metadata !4457, metadata !DIExpression()), !dbg !4458
  %tobool19 = icmp eq %struct._IO_FILE* %debug, null, !dbg !4463
  br i1 %tobool19, label %if.end, label %if.then, !dbg !4465

if.then:                                          ; preds = %cond.end15
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %debug, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %x) #6, !dbg !4466
  %call21 = tail call fastcc %union.tree_node* @partition_to_var(%struct._var_map* %map, i32 %call4) #7, !dbg !4468
  tail call void @print_generic_expr(%struct._IO_FILE* nonnull %debug, %union.tree_node* %call21, i32 2) #6, !dbg !4469
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %debug, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32 %y) #6, !dbg !4470
  %call23 = tail call fastcc %union.tree_node* @partition_to_var(%struct._var_map* %map, i32 %call18) #7, !dbg !4471
  tail call void @print_generic_expr(%struct._IO_FILE* nonnull %debug, %union.tree_node* %call23, i32 2) #6, !dbg !4472
  br label %if.end, !dbg !4473

if.end:                                           ; preds = %cond.end15, %if.then
  %cmp = icmp eq i32 %call4, %call18, !dbg !4474
  %tobool25 = icmp ne %struct._IO_FILE* %debug, null, !dbg !4458
  br i1 %cmp, label %if.then24, label %if.end29, !dbg !4476

if.then24:                                        ; preds = %if.end
  br i1 %tobool25, label %if.then26, label %cleanup, !dbg !4477

if.then26:                                        ; preds = %if.then24
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %debug, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !4479
  br label %cleanup, !dbg !4479

if.end29:                                         ; preds = %if.end
  br i1 %tobool25, label %if.then31, label %if.end33, !dbg !4481

if.then31:                                        ; preds = %if.end29
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %debug, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 %call4, i32 %call18) #6, !dbg !4482
  br label %if.end33, !dbg !4482

if.end33:                                         ; preds = %if.then31, %if.end29
  %call34 = tail call fastcc zeroext i8 @ssa_conflicts_test_p(%struct.ssa_conflicts_d* %graph, i32 %call4, i32 %call18) #7, !dbg !4484
  %tobool35 = icmp eq i8 %call34, 0, !dbg !4484
  br i1 %tobool35, label %if.then36, label %if.end54, !dbg !4486

if.then36:                                        ; preds = %if.end33
  %call37 = tail call fastcc %union.tree_node* @partition_to_var(%struct._var_map* %map, i32 %call4) #7, !dbg !4487
  call void @llvm.dbg.value(metadata %union.tree_node* %call37, metadata !4454, metadata !DIExpression()), !dbg !4458
  %call38 = tail call fastcc %union.tree_node* @partition_to_var(%struct._var_map* %map, i32 %call18) #7, !dbg !4489
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !4455, metadata !DIExpression()), !dbg !4458
  %call39 = tail call i32 @var_union(%struct._var_map* %map, %union.tree_node* %call37, %union.tree_node* %call38) #6, !dbg !4490
  call void @llvm.dbg.value(metadata i32 %call39, metadata !4453, metadata !DIExpression()), !dbg !4458
  %cmp40 = icmp eq i32 %call39, -1, !dbg !4491
  br i1 %cmp40, label %if.then41, label %if.end46, !dbg !4493

if.then41:                                        ; preds = %if.then36
  br i1 %tobool19, label %cleanup, label %if.then43, !dbg !4494

if.then43:                                        ; preds = %if.then41
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %debug, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !4496
  br label %cleanup, !dbg !4496

if.end46:                                         ; preds = %if.then36
  %cmp47 = icmp eq i32 %call39, %call4, !dbg !4498
  br i1 %cmp47, label %if.then48, label %if.else, !dbg !4500

if.then48:                                        ; preds = %if.end46
  tail call fastcc void @ssa_conflicts_merge(%struct.ssa_conflicts_d* %graph, i32 %call4, i32 %call18) #7, !dbg !4501
  br label %if.end49, !dbg !4501

if.else:                                          ; preds = %if.end46
  tail call fastcc void @ssa_conflicts_merge(%struct.ssa_conflicts_d* %graph, i32 %call18, i32 %call4) #7, !dbg !4502
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then48
  br i1 %tobool19, label %cleanup, label %if.then51, !dbg !4503

if.then51:                                        ; preds = %if.end49
  %call52 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %debug, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 %call39) #6, !dbg !4504
  br label %cleanup, !dbg !4504

if.end54:                                         ; preds = %if.end33
  br i1 %tobool19, label %cleanup, label %if.then56, !dbg !4506

if.then56:                                        ; preds = %if.end54
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %debug, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !4507
  br label %cleanup, !dbg !4507

cleanup:                                          ; preds = %if.end54, %if.then41, %if.end49, %if.then56, %if.then51, %if.then43, %if.then24, %if.then26
  %retval.0 = phi i8 [ 1, %if.then26 ], [ 1, %if.then24 ], [ 0, %if.then43 ], [ 0, %if.then41 ], [ 1, %if.then51 ], [ 1, %if.end49 ], [ 0, %if.then56 ], [ 0, %if.end54 ], !dbg !4458
  ret i8 %retval.0, !dbg !4509
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fail_abnormal_edge_coalesce(i32 %x, i32 %y) unnamed_addr #0 !dbg !4510 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !4514, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata i32 %y, metadata !4515, metadata !DIExpression()), !dbg !4516
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4517
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i32 %x, i32 %y) #6, !dbg !4518
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4519
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !4520
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4521
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4522
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 3, !dbg !4522
  %4 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !4522
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %4, i64 0, i32 2, !dbg !4522
  %5 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !4522
  %tobool = icmp eq %struct.VEC_tree_gc* %5, null, !dbg !4522
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4522

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %5, i64 0, i32 0, !dbg !4522
  br label %cond.end, !dbg !4522

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4522
  %call5 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond, i32 %x) #7, !dbg !4522
  tail call void @print_generic_expr(%struct._IO_FILE* %2, %union.tree_node* %call5, i32 2) #6, !dbg !4523
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4524
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !4525
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4526
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4527
  %gimple_df8 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 3, !dbg !4527
  %9 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df8, align 8, !dbg !4527
  %ssa_names9 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %9, i64 0, i32 2, !dbg !4527
  %10 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names9, align 8, !dbg !4527
  %tobool10 = icmp eq %struct.VEC_tree_gc* %10, null, !dbg !4527
  br i1 %tobool10, label %cond.end17, label %cond.true11, !dbg !4527

cond.true11:                                      ; preds = %cond.end
  %base15 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %10, i64 0, i32 0, !dbg !4527
  br label %cond.end17, !dbg !4527

cond.end17:                                       ; preds = %cond.end, %cond.true11
  %cond18 = phi %struct.VEC_tree_base* [ %base15, %cond.true11 ], [ null, %cond.end ], !dbg !4527
  %call19 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond18, i32 %y) #7, !dbg !4527
  tail call void @print_generic_stmt(%struct._IO_FILE* %7, %union.tree_node* %call19, i32 2) #6, !dbg !4528
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !4529
  ret void, !dbg !4530
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @pop_best_coalesce(%struct.coalesce_list_d* %cl, i32* %p1, i32* %p2) unnamed_addr #0 !dbg !4531 {
entry:
  call void @llvm.dbg.value(metadata %struct.coalesce_list_d* %cl, metadata !4535, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i32* %p1, metadata !4536, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i32* %p2, metadata !4537, metadata !DIExpression()), !dbg !4540
  %sorted = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 1, !dbg !4541
  %0 = load %struct.coalesce_pair**, %struct.coalesce_pair*** %sorted, align 8, !dbg !4541
  %cmp = icmp eq %struct.coalesce_pair** %0, null, !dbg !4543
  br i1 %cmp, label %if.then, label %if.end, !dbg !4544

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @pop_cost_one_pair(%struct.coalesce_list_d* %cl, i32* %p1, i32* %p2) #7, !dbg !4545
  br label %cleanup, !dbg !4546

if.end:                                           ; preds = %entry
  %num_sorted = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 2, !dbg !4547
  %1 = load i32, i32* %num_sorted, align 8, !dbg !4547
  %cmp1 = icmp eq i32 %1, 0, !dbg !4549
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !4550

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc i32 @pop_cost_one_pair(%struct.coalesce_list_d* %cl, i32* %p1, i32* %p2) #7, !dbg !4551
  br label %cleanup, !dbg !4552

if.end4:                                          ; preds = %if.end
  %dec = add nsw i32 %1, -1, !dbg !4553
  store i32 %dec, i32* %num_sorted, align 8, !dbg !4553
  %idxprom = sext i32 %dec to i64, !dbg !4554
  %arrayidx = getelementptr inbounds %struct.coalesce_pair*, %struct.coalesce_pair** %0, i64 %idxprom, !dbg !4554
  %2 = load %struct.coalesce_pair*, %struct.coalesce_pair** %arrayidx, align 8, !dbg !4554
  call void @llvm.dbg.value(metadata %struct.coalesce_pair* %2, metadata !4538, metadata !DIExpression()), !dbg !4540
  %first_element = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %2, i64 0, i32 0, !dbg !4555
  %3 = load i32, i32* %first_element, align 4, !dbg !4555
  store i32 %3, i32* %p1, align 4, !dbg !4556
  %second_element = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %2, i64 0, i32 1, !dbg !4557
  %4 = load i32, i32* %second_element, align 4, !dbg !4557
  store i32 %4, i32* %p2, align 4, !dbg !4558
  %cost = getelementptr inbounds %struct.coalesce_pair, %struct.coalesce_pair* %2, i64 0, i32 2, !dbg !4559
  %5 = load i32, i32* %cost, align 4, !dbg !4559
  call void @llvm.dbg.value(metadata i32 %5, metadata !4539, metadata !DIExpression()), !dbg !4540
  %6 = bitcast %struct.coalesce_pair* %2 to i8*, !dbg !4560
  tail call void @free(i8* %6) #6, !dbg !4561
  br label %cleanup, !dbg !4562

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.then2 ], [ %5, %if.end4 ], !dbg !4540
  ret i32 %retval.0, !dbg !4563
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @partition_to_var(%struct._var_map* %map, i32 %i) unnamed_addr #0 !dbg !4564 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !4568, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %i, metadata !4569, metadata !DIExpression()), !dbg !4571
  %view_to_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 2, !dbg !4572
  %0 = load i32*, i32** %view_to_partition, align 8, !dbg !4572
  %tobool = icmp eq i32* %0, null, !dbg !4574
  br i1 %tobool, label %if.end, label %if.then, !dbg !4575

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !4576
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !4576
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4576
  call void @llvm.dbg.value(metadata i32 %1, metadata !4569, metadata !DIExpression()), !dbg !4571
  br label %if.end, !dbg !4577

if.end:                                           ; preds = %entry, %if.then
  %i.addr.0 = phi i32 [ %1, %if.then ], [ %i, %entry ]
  call void @llvm.dbg.value(metadata i32 %i.addr.0, metadata !4569, metadata !DIExpression()), !dbg !4571
  %var_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 0, !dbg !4578
  %2 = load %struct.partition_def*, %struct.partition_def** %var_partition, align 8, !dbg !4578
  %idxprom2 = sext i32 %i.addr.0 to i64, !dbg !4578
  %class_element = getelementptr inbounds %struct.partition_def, %struct.partition_def* %2, i64 0, i32 1, i64 %idxprom2, i32 0, !dbg !4578
  %3 = load i32, i32* %class_element, align 8, !dbg !4578
  call void @llvm.dbg.value(metadata i32 %3, metadata !4569, metadata !DIExpression()), !dbg !4571
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4579
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 3, !dbg !4579
  %5 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !4579
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %5, i64 0, i32 2, !dbg !4579
  %6 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !4579
  %tobool4 = icmp eq %struct.VEC_tree_gc* %6, null, !dbg !4579
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !4579

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %6, i64 0, i32 0, !dbg !4579
  br label %cond.end, !dbg !4579

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !4579
  %call = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond, i32 %3) #7, !dbg !4579
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4570, metadata !DIExpression()), !dbg !4571
  ret %union.tree_node* %call, !dbg !4580
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ssa_conflicts_test_p(%struct.ssa_conflicts_d* %ptr, i32 %x, i32 %y) unnamed_addr #0 !dbg !4581 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_conflicts_d* %ptr, metadata !4585, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i32 %x, metadata !4586, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i32 %y, metadata !4587, metadata !DIExpression()), !dbg !4589
  %conflicts = getelementptr inbounds %struct.ssa_conflicts_d, %struct.ssa_conflicts_d* %ptr, i64 0, i32 1, !dbg !4590
  %0 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %conflicts, align 8, !dbg !4590
  %idxprom = zext i32 %x to i64, !dbg !4591
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %0, i64 %idxprom, !dbg !4591
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4591
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %1, metadata !4588, metadata !DIExpression()), !dbg !4589
  %tobool = icmp eq %struct.bitmap_head_def* %1, null, !dbg !4592
  br i1 %tobool, label %cleanup, label %if.then, !dbg !4594

if.then:                                          ; preds = %entry
  %idxprom2 = zext i32 %y to i64, !dbg !4595
  %arrayidx3 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %0, i64 %idxprom2, !dbg !4595
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx3, align 8, !dbg !4595
  %tobool4 = icmp eq %struct.bitmap_head_def* %2, null, !dbg !4595
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !4595

cond.true:                                        ; preds = %if.then
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull %1, i32 %y) #6, !dbg !4596
  %phitmp = trunc i32 %call to i8, !dbg !4595
  br label %cond.end, !dbg !4595

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i8 [ %phitmp, %cond.true ], [ 0, %if.then ]
  br label %cleanup, !dbg !4597

cleanup:                                          ; preds = %entry, %cond.end
  %retval.0 = phi i8 [ %cond, %cond.end ], [ 0, %entry ], !dbg !4598
  ret i8 %retval.0, !dbg !4599
}

declare dso_local i32 @var_union(%struct._var_map*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ssa_conflicts_merge(%struct.ssa_conflicts_d* %ptr, i32 %x, i32 %y) unnamed_addr #0 !dbg !4600 {
entry:
  %z = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.ssa_conflicts_d* %ptr, metadata !4602, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i32 %x, metadata !4603, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i32 %y, metadata !4604, metadata !DIExpression()), !dbg !4607
  %0 = bitcast i32* %z to i8*, !dbg !4608
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4608
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !4609
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4609
  %cmp = icmp eq i32 %x, %y, !dbg !4610
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4610

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 603, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4610
  br label %cond.end, !dbg !4610

cond.end:                                         ; preds = %entry, %cond.true
  %conflicts = getelementptr inbounds %struct.ssa_conflicts_d, %struct.ssa_conflicts_d* %ptr, i64 0, i32 1, !dbg !4611
  %2 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %conflicts, align 8, !dbg !4611
  %idxprom = zext i32 %y to i64, !dbg !4613
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %2, i64 %idxprom, !dbg !4613
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4613
  %tobool = icmp eq %struct.bitmap_head_def* %3, null, !dbg !4614
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4615

if.end:                                           ; preds = %cond.end
  call void @llvm.dbg.value(metadata i32* %z, metadata !4605, metadata !DIExpression(DW_OP_deref)), !dbg !4607
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4606, metadata !DIExpression(DW_OP_deref)), !dbg !4607
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %3, i32 0, i32* nonnull %z) #7, !dbg !4616
  br label %for.cond, !dbg !4616

for.cond:                                         ; preds = %for.inc, %if.end
  call void @llvm.dbg.value(metadata i32* %z, metadata !4605, metadata !DIExpression(DW_OP_deref)), !dbg !4607
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4606, metadata !DIExpression(DW_OP_deref)), !dbg !4607
  %call = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %z) #7, !dbg !4618
  %tobool4 = icmp eq i8 %call, 0, !dbg !4616
  %4 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %conflicts, align 8, !dbg !4607
  br i1 %tobool4, label %for.end, label %for.body, !dbg !4616

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %z, align 4, !dbg !4620
  call void @llvm.dbg.value(metadata i32 %5, metadata !4605, metadata !DIExpression()), !dbg !4607
  %idxprom6 = zext i32 %5 to i64, !dbg !4622
  %arrayidx7 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %4, i64 %idxprom6, !dbg !4622
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx7, align 8, !dbg !4622
  %tobool8 = icmp eq %struct.bitmap_head_def* %6, null, !dbg !4622
  br i1 %tobool8, label %for.inc, label %if.then9, !dbg !4623

if.then9:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %5, metadata !4605, metadata !DIExpression()), !dbg !4607
  %call13 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull %6, i32 %x) #6, !dbg !4624
  br label %for.inc, !dbg !4624

for.inc:                                          ; preds = %for.body, %if.then9
  call void @llvm.dbg.value(metadata i32* %z, metadata !4605, metadata !DIExpression(DW_OP_deref)), !dbg !4607
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4606, metadata !DIExpression(DW_OP_deref)), !dbg !4607
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %z) #7, !dbg !4618
  br label %for.cond, !dbg !4618, !llvm.loop !4625

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.bitmap_head_def** [ %4, %for.cond ], !dbg !4607
  %idxprom16 = zext i32 %x to i64, !dbg !4627
  %arrayidx17 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %.lcssa, i64 %idxprom16, !dbg !4627
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx17, align 8, !dbg !4627
  %tobool18 = icmp eq %struct.bitmap_head_def* %7, null, !dbg !4627
  br i1 %tobool18, label %if.else, label %if.then19, !dbg !4629

if.then19:                                        ; preds = %for.end
  %arrayidx25 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %.lcssa, i64 %idxprom, !dbg !4630
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx25, align 8, !dbg !4630
  %call26 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* nonnull %7, %struct.bitmap_head_def* %8) #6, !dbg !4632
  %9 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %conflicts, align 8, !dbg !4633
  %arrayidx29 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %9, i64 %idxprom, !dbg !4633
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx29, align 8, !dbg !4633
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %10) #6, !dbg !4633
  %11 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %conflicts, align 8, !dbg !4633
  %arrayidx32 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %11, i64 %idxprom, !dbg !4633
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %arrayidx32, align 8, !dbg !4633
  br label %cleanup, !dbg !4634

if.else:                                          ; preds = %for.end
  %arrayidx35 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %.lcssa, i64 %idxprom, !dbg !4635
  %12 = bitcast %struct.bitmap_head_def** %arrayidx35 to i64*, !dbg !4635
  %13 = load i64, i64* %12, align 8, !dbg !4635
  %14 = bitcast %struct.bitmap_head_def** %arrayidx17 to i64*, !dbg !4637
  store i64 %13, i64* %14, align 8, !dbg !4637
  %15 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %conflicts, align 8, !dbg !4638
  %arrayidx41 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %15, i64 %idxprom, !dbg !4639
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %arrayidx41, align 8, !dbg !4640
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then19, %if.else
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4641
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4641
  ret void, !dbg !4641
}

declare dso_local zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @pop_cost_one_pair(%struct.coalesce_list_d* %cl, i32* %p1, i32* %p2) unnamed_addr #0 !dbg !4642 {
entry:
  call void @llvm.dbg.value(metadata %struct.coalesce_list_d* %cl, metadata !4644, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata i32* %p1, metadata !4645, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata i32* %p2, metadata !4646, metadata !DIExpression()), !dbg !4648
  %cost_one_list = getelementptr inbounds %struct.coalesce_list_d, %struct.coalesce_list_d* %cl, i64 0, i32 3, !dbg !4649
  %0 = load %struct.cost_one_pair_d*, %struct.cost_one_pair_d** %cost_one_list, align 8, !dbg !4649
  call void @llvm.dbg.value(metadata %struct.cost_one_pair_d* %0, metadata !4647, metadata !DIExpression()), !dbg !4648
  %tobool = icmp eq %struct.cost_one_pair_d* %0, null, !dbg !4650
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4652

if.end:                                           ; preds = %entry
  %first_element = getelementptr inbounds %struct.cost_one_pair_d, %struct.cost_one_pair_d* %0, i64 0, i32 0, !dbg !4653
  %1 = load i32, i32* %first_element, align 8, !dbg !4653
  store i32 %1, i32* %p1, align 4, !dbg !4654
  %second_element = getelementptr inbounds %struct.cost_one_pair_d, %struct.cost_one_pair_d* %0, i64 0, i32 1, !dbg !4655
  %2 = load i32, i32* %second_element, align 4, !dbg !4655
  store i32 %2, i32* %p2, align 4, !dbg !4656
  %next = getelementptr inbounds %struct.cost_one_pair_d, %struct.cost_one_pair_d* %0, i64 0, i32 2, !dbg !4657
  %3 = bitcast %struct.cost_one_pair_d** %next to i64*, !dbg !4657
  %4 = load i64, i64* %3, align 8, !dbg !4657
  %5 = bitcast %struct.cost_one_pair_d** %cost_one_list to i64*, !dbg !4658
  store i64 %4, i64* %5, align 8, !dbg !4658
  %6 = bitcast %struct.cost_one_pair_d* %0 to i8*, !dbg !4659
  tail call void @free(i8* nonnull %6) #6, !dbg !4660
  br label %cleanup, !dbg !4661

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -1, %entry ], !dbg !4648
  ret i32 %retval.0, !dbg !4662
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

!llvm.dbg.cu = !{!1465}
!llvm.module.flags = !{!1615, !1616, !1617}
!llvm.ident = !{!1618}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ssa_name_hash", scope: !2, file: !3, line: 1370, type: !835, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "coalesce_ssa_name", scope: !3, file: !3, line: 1362, type: !4, scopeLine: 1363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1587)
!3 = !DIFile(filename: "tree-ssa-coalesce.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "var_map", file: !7, line: 77, baseType: !8)
!7 = !DIFile(filename: "./tree-ssa-live.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_var_map", file: !7, line: 54, size: 448, elements: !10)
!10 = !{!11, !30, !32, !33, !34, !35, !36, !37}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "var_partition", scope: !9, file: !7, line: 57, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "partition", file: !13, line: 65, baseType: !14)
!13 = !DIFile(filename: "./include/partition.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_def", file: !13, line: 59, size: 256, elements: !16)
!16 = !{!17, !19}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "num_elements", scope: !15, file: !13, line: 62, baseType: !18, size: 32)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !15, file: !13, line: 64, baseType: !20, size: 192, offset: 64)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, elements: !28)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_elem", file: !13, line: 46, size: 192, elements: !22)
!22 = !{!23, !24, !26}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "class_element", scope: !21, file: !13, line: 50, baseType: !18, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !21, file: !13, line: 53, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "class_count", scope: !21, file: !13, line: 56, baseType: !27, size: 32, offset: 128)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !{!29}
!29 = !DISubrange(count: 1)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "partition_to_view", scope: !9, file: !7, line: 60, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "view_to_partition", scope: !9, file: !7, line: 61, baseType: !31, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "num_partitions", scope: !9, file: !7, line: 64, baseType: !27, size: 32, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "partition_size", scope: !9, file: !7, line: 67, baseType: !27, size: 32, offset: 224)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "num_basevars", scope: !9, file: !7, line: 70, baseType: !18, size: 32, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "partition_to_base_index", scope: !9, file: !7, line: 73, baseType: !31, size: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "basevars", scope: !9, file: !7, line: 76, baseType: !38, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !40, line: 184, baseType: !41)
!40 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !40, line: 184, size: 128, elements: !42)
!42 = !{!43}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !41, file: !40, line: 184, baseType: !44, size: 128)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !40, line: 182, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !40, line: 182, size: 128, elements: !46)
!46 = !{!47, !48, !49}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !45, file: !40, line: 182, baseType: !27, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !45, file: !40, line: 182, baseType: !27, size: 32, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !45, file: !40, line: 182, baseType: !50, size: 64, offset: 64)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !28)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !52, line: 56, baseType: !53)
!52 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !40, line: 3371, size: 1792, elements: !55)
!55 = !{!56, !89, !95, !108, !115, !122, !127, !135, !141, !155, !167, !205, !213, !241, !258, !259, !264, !273, !279, !284, !288, !292, !1082, !1131, !1137, !1143, !1150, !1163, !1177, !1194, !1206, !1228, !1275, !1447}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !54, file: !40, line: 3372, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !40, line: 360, size: 64, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !57, file: !40, line: 361, baseType: !27, size: 16, flags: DIFlagBitField, extraData: i64 0)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !57, file: !40, line: 363, baseType: !27, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !57, file: !40, line: 364, baseType: !27, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !57, file: !40, line: 365, baseType: !27, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !57, file: !40, line: 366, baseType: !27, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !57, file: !40, line: 367, baseType: !27, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !57, file: !40, line: 368, baseType: !27, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !57, file: !40, line: 369, baseType: !27, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !57, file: !40, line: 370, baseType: !27, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !57, file: !40, line: 372, baseType: !27, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !57, file: !40, line: 373, baseType: !27, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !57, file: !40, line: 374, baseType: !27, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !57, file: !40, line: 375, baseType: !27, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !57, file: !40, line: 376, baseType: !27, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !57, file: !40, line: 377, baseType: !27, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !57, file: !40, line: 378, baseType: !27, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !57, file: !40, line: 379, baseType: !27, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !57, file: !40, line: 381, baseType: !27, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !57, file: !40, line: 382, baseType: !27, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !57, file: !40, line: 383, baseType: !27, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !57, file: !40, line: 384, baseType: !27, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !57, file: !40, line: 385, baseType: !27, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !57, file: !40, line: 386, baseType: !27, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !57, file: !40, line: 387, baseType: !27, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !57, file: !40, line: 388, baseType: !27, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !57, file: !40, line: 390, baseType: !27, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !57, file: !40, line: 391, baseType: !27, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !57, file: !40, line: 392, baseType: !27, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !57, file: !40, line: 394, baseType: !27, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !57, file: !40, line: 399, baseType: !27, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !54, file: !40, line: 3373, baseType: !90, size: 192)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !40, line: 402, size: 192, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !90, file: !40, line: 403, baseType: !57, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !90, file: !40, line: 404, baseType: !51, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !40, line: 405, baseType: !51, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !54, file: !40, line: 3374, baseType: !96, size: 320)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !40, line: 1384, size: 320, elements: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !96, file: !40, line: 1385, baseType: !90, size: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !96, file: !40, line: 1386, baseType: !100, size: 128, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !101, line: 58, baseType: !102)
!101 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 54, size: 128, elements: !103)
!103 = !{!104, !106}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !102, file: !101, line: 56, baseType: !105, size: 64)
!105 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !102, file: !101, line: 57, baseType: !107, size: 64, offset: 64)
!107 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !54, file: !40, line: 3375, baseType: !109, size: 256)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !40, line: 1397, size: 256, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !109, file: !40, line: 1398, baseType: !90, size: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !109, file: !40, line: 1399, baseType: !113, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !40, line: 1392, flags: DIFlagFwdDecl)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !54, file: !40, line: 3376, baseType: !116, size: 256)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !40, line: 1408, size: 256, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !116, file: !40, line: 1409, baseType: !90, size: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !116, file: !40, line: 1410, baseType: !120, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !40, line: 1403, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !54, file: !40, line: 3377, baseType: !123, size: 256)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !40, line: 1437, size: 256, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !123, file: !40, line: 1438, baseType: !90, size: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !123, file: !40, line: 1439, baseType: !51, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !54, file: !40, line: 3378, baseType: !128, size: 256)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !40, line: 1418, size: 256, elements: !129)
!129 = !{!130, !131, !132}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !128, file: !40, line: 1419, baseType: !90, size: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !128, file: !40, line: 1420, baseType: !18, size: 32, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !128, file: !40, line: 1421, baseType: !133, size: 8, offset: 224)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 8, elements: !28)
!134 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !54, file: !40, line: 3379, baseType: !136, size: 320)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !40, line: 1428, size: 320, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !136, file: !40, line: 1429, baseType: !90, size: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !136, file: !40, line: 1430, baseType: !51, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !136, file: !40, line: 1431, baseType: !51, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !54, file: !40, line: 3380, baseType: !142, size: 320)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !40, line: 1460, size: 320, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !142, file: !40, line: 1461, baseType: !90, size: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !142, file: !40, line: 1462, baseType: !146, size: 128, offset: 192)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !147, line: 31, size: 128, elements: !148)
!147 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!148 = !{!149, !153, !154}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !146, file: !147, line: 32, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !146, file: !147, line: 33, baseType: !27, size: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !146, file: !147, line: 34, baseType: !27, size: 32, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !54, file: !40, line: 3381, baseType: !156, size: 384)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !40, line: 2507, size: 384, elements: !157)
!157 = !{!158, !159, !164, !165, !166}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !156, file: !40, line: 2508, baseType: !90, size: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !156, file: !40, line: 2509, baseType: !160, size: 32, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !161, line: 58, baseType: !162)
!161 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !163, line: 44, baseType: !27)
!163 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!164 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !156, file: !40, line: 2510, baseType: !27, size: 32, offset: 224)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !40, line: 2511, baseType: !51, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !156, file: !40, line: 2512, baseType: !51, size: 64, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !54, file: !40, line: 3382, baseType: !168, size: 896)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !40, line: 2652, size: 896, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !168, file: !40, line: 2653, baseType: !156, size: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !168, file: !40, line: 2654, baseType: !51, size: 64, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !168, file: !40, line: 2656, baseType: !27, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !168, file: !40, line: 2658, baseType: !27, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !168, file: !40, line: 2659, baseType: !27, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !168, file: !40, line: 2660, baseType: !27, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !168, file: !40, line: 2661, baseType: !27, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !168, file: !40, line: 2662, baseType: !27, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !168, file: !40, line: 2663, baseType: !27, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !168, file: !40, line: 2664, baseType: !27, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !168, file: !40, line: 2666, baseType: !27, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !168, file: !40, line: 2667, baseType: !27, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !168, file: !40, line: 2668, baseType: !27, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !168, file: !40, line: 2669, baseType: !27, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !168, file: !40, line: 2670, baseType: !27, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !168, file: !40, line: 2671, baseType: !27, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !168, file: !40, line: 2672, baseType: !27, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !168, file: !40, line: 2673, baseType: !27, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !168, file: !40, line: 2674, baseType: !27, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !168, file: !40, line: 2678, baseType: !27, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !168, file: !40, line: 2682, baseType: !27, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !168, file: !40, line: 2685, baseType: !27, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !168, file: !40, line: 2688, baseType: !27, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !168, file: !40, line: 2690, baseType: !27, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !168, file: !40, line: 2692, baseType: !27, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !168, file: !40, line: 2695, baseType: !27, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !168, file: !40, line: 2698, baseType: !27, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !168, file: !40, line: 2703, baseType: !27, size: 32, offset: 512)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !168, file: !40, line: 2705, baseType: !51, size: 64, offset: 576)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !168, file: !40, line: 2706, baseType: !51, size: 64, offset: 640)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !168, file: !40, line: 2707, baseType: !51, size: 64, offset: 704)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !168, file: !40, line: 2708, baseType: !51, size: 64, offset: 768)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !168, file: !40, line: 2711, baseType: !203, size: 64, offset: 832)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !40, line: 2711, flags: DIFlagFwdDecl)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !54, file: !40, line: 3383, baseType: !206, size: 960)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !40, line: 2756, size: 960, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !206, file: !40, line: 2757, baseType: !168, size: 896)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !206, file: !40, line: 2758, baseType: !210, size: 64, offset: 896)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !52, line: 50, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !52, line: 49, flags: DIFlagFwdDecl)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !54, file: !40, line: 3384, baseType: !214, size: 1472)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !40, line: 3114, size: 1472, elements: !215)
!215 = !{!216, !237, !238, !239, !240}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !214, file: !40, line: 3115, baseType: !217, size: 1216)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !40, line: 2984, size: 1216, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !217, file: !40, line: 2985, baseType: !206, size: 960)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !217, file: !40, line: 2986, baseType: !51, size: 64, offset: 960)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !217, file: !40, line: 2987, baseType: !51, size: 64, offset: 1024)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !217, file: !40, line: 2988, baseType: !51, size: 64, offset: 1088)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !217, file: !40, line: 2991, baseType: !27, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !217, file: !40, line: 2992, baseType: !27, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !217, file: !40, line: 2993, baseType: !27, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !217, file: !40, line: 2994, baseType: !27, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !217, file: !40, line: 2995, baseType: !27, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !217, file: !40, line: 2996, baseType: !27, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !217, file: !40, line: 2998, baseType: !27, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !217, file: !40, line: 3000, baseType: !27, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !217, file: !40, line: 3002, baseType: !27, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !217, file: !40, line: 3003, baseType: !27, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !217, file: !40, line: 3004, baseType: !27, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !217, file: !40, line: 3005, baseType: !27, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !217, file: !40, line: 3007, baseType: !27, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !217, file: !40, line: 3010, baseType: !27, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !214, file: !40, line: 3117, baseType: !51, size: 64, offset: 1216)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !214, file: !40, line: 3119, baseType: !51, size: 64, offset: 1280)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !214, file: !40, line: 3121, baseType: !51, size: 64, offset: 1344)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !214, file: !40, line: 3123, baseType: !51, size: 64, offset: 1408)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !54, file: !40, line: 3385, baseType: !242, size: 1088)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !40, line: 2874, size: 1088, elements: !243)
!243 = !{!244, !245, !246}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !242, file: !40, line: 2875, baseType: !206, size: 960)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !242, file: !40, line: 2876, baseType: !210, size: 64, offset: 960)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !242, file: !40, line: 2877, baseType: !247, size: 64, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !249, line: 172, size: 128, elements: !250)
!249 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!250 = !{!251, !252, !253, !254, !255, !256, !257}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !248, file: !249, line: 174, baseType: !27, size: 1, flags: DIFlagBitField, extraData: i64 0)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !248, file: !249, line: 178, baseType: !27, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !248, file: !249, line: 183, baseType: !27, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !248, file: !249, line: 187, baseType: !27, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !248, file: !249, line: 192, baseType: !27, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !248, file: !249, line: 195, baseType: !27, size: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !248, file: !249, line: 199, baseType: !51, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !54, file: !40, line: 3386, baseType: !217, size: 1216)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !54, file: !40, line: 3387, baseType: !260, size: 1280)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !40, line: 3093, size: 1280, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !260, file: !40, line: 3094, baseType: !217, size: 1216)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !260, file: !40, line: 3095, baseType: !247, size: 64, offset: 1216)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !54, file: !40, line: 3388, baseType: !265, size: 1216)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !40, line: 2824, size: 1216, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !265, file: !40, line: 2825, baseType: !168, size: 896)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !265, file: !40, line: 2827, baseType: !51, size: 64, offset: 896)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !265, file: !40, line: 2828, baseType: !51, size: 64, offset: 960)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !265, file: !40, line: 2829, baseType: !51, size: 64, offset: 1024)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !265, file: !40, line: 2830, baseType: !51, size: 64, offset: 1088)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !265, file: !40, line: 2831, baseType: !51, size: 64, offset: 1152)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !54, file: !40, line: 3389, baseType: !274, size: 1024)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !40, line: 2850, size: 1024, elements: !275)
!275 = !{!276, !277, !278}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !274, file: !40, line: 2851, baseType: !206, size: 960)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !274, file: !40, line: 2852, baseType: !18, size: 32, offset: 960)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !274, file: !40, line: 2853, baseType: !18, size: 32, offset: 992)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !54, file: !40, line: 3390, baseType: !280, size: 1024)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !40, line: 2857, size: 1024, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !280, file: !40, line: 2858, baseType: !206, size: 960)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !280, file: !40, line: 2859, baseType: !247, size: 64, offset: 960)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !54, file: !40, line: 3391, baseType: !285, size: 960)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !40, line: 2862, size: 960, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !285, file: !40, line: 2863, baseType: !206, size: 960)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !54, file: !40, line: 3392, baseType: !289, size: 1472)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !40, line: 3304, size: 1472, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !289, file: !40, line: 3305, baseType: !214, size: 1472)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !54, file: !40, line: 3393, baseType: !293, size: 1792)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !40, line: 3248, size: 1792, elements: !294)
!294 = !{!295, !296, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !293, file: !40, line: 3249, baseType: !214, size: 1472)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !293, file: !40, line: 3251, baseType: !297, size: 64, offset: 1472)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !299, line: 463, size: 1152, elements: !300)
!299 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!300 = !{!301, !304, !829, !830, !997, !1000, !1001, !1002, !1003, !1004, !1005, !1034, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !298, file: !299, line: 464, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !299, line: 464, flags: DIFlagFwdDecl)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !298, file: !299, line: 467, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !307, line: 374, size: 640, elements: !308)
!307 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!308 = !{!309, !794, !795, !808, !809, !810, !811, !812, !818, !825, !827, !828}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !306, file: !307, line: 377, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !52, line: 111, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !307, line: 217, size: 832, elements: !313)
!313 = !{!314, !757, !758, !759, !762, !768, !769, !770, !788, !789, !790, !791, !792, !793}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !312, file: !307, line: 219, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !307, line: 151, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !307, line: 151, size: 128, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !317, file: !307, line: 151, baseType: !320, size: 128)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !307, line: 150, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !307, line: 150, size: 128, elements: !322)
!322 = !{!323, !324, !325}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !321, file: !307, line: 150, baseType: !27, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !321, file: !307, line: 150, baseType: !27, size: 32, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !321, file: !307, line: 150, baseType: !326, size: 64, offset: 64)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 64, elements: !28)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !52, line: 108, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !307, line: 122, size: 512, elements: !330)
!330 = !{!331, !332, !333, !748, !750, !751, !752, !753, !754, !755}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !329, file: !307, line: 124, baseType: !311, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !329, file: !307, line: 125, baseType: !311, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !329, file: !307, line: 131, baseType: !334, size: 64, offset: 128)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !307, line: 128, size: 64, elements: !335)
!335 = !{!336, !747}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !334, file: !307, line: 129, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !52, line: 66, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !340, line: 143, size: 192, elements: !341)
!340 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!341 = !{!342, !745, !746}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !339, file: !340, line: 145, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !52, line: 69, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !340, line: 136, size: 192, elements: !346)
!346 = !{!347, !743, !744}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !345, file: !340, line: 137, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !52, line: 58, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !340, line: 737, size: 768, elements: !351)
!351 = !{!352, !369, !402, !408, !413, !418, !425, !431, !437, !442, !456, !461, !467, !472, !484, !489, !701, !708, !715, !721, !726, !732, !738}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !350, file: !340, line: 738, baseType: !353, size: 256)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !340, line: 271, size: 256, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !353, file: !340, line: 274, baseType: !27, size: 8, flags: DIFlagBitField, extraData: i64 0)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !353, file: !340, line: 277, baseType: !27, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !353, file: !340, line: 281, baseType: !27, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !353, file: !340, line: 284, baseType: !27, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !353, file: !340, line: 291, baseType: !27, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !353, file: !340, line: 295, baseType: !27, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !353, file: !340, line: 298, baseType: !27, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !353, file: !340, line: 301, baseType: !27, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !353, file: !340, line: 307, baseType: !27, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !353, file: !340, line: 312, baseType: !27, size: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !353, file: !340, line: 316, baseType: !160, size: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !353, file: !340, line: 319, baseType: !27, size: 32, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !353, file: !340, line: 323, baseType: !311, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !353, file: !340, line: 327, baseType: !51, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !350, file: !340, line: 739, baseType: !370, size: 448)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !340, line: 350, size: 448, elements: !371)
!371 = !{!372, !401}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !370, file: !340, line: 353, baseType: !373, size: 384)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !340, line: 333, size: 384, elements: !374)
!374 = !{!375, !376, !384}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !373, file: !340, line: 336, baseType: !353, size: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !373, file: !340, line: 343, baseType: !377, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !379, line: 37, size: 128, elements: !380)
!379 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !379, line: 39, baseType: !377, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !378, file: !379, line: 40, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !373, file: !340, line: 344, baseType: !385, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !379, line: 45, size: 320, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !379, line: 47, baseType: !385, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !386, file: !379, line: 48, baseType: !390, size: 256, offset: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !40, line: 1883, size: 256, elements: !391)
!391 = !{!392, !394, !395, !400}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !390, file: !40, line: 1884, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !390, file: !40, line: 1885, baseType: !393, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !390, file: !40, line: 1891, baseType: !396, size: 64, offset: 128)
!396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !40, line: 1891, size: 64, elements: !397)
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !396, file: !40, line: 1891, baseType: !348, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !396, file: !40, line: 1891, baseType: !51, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !390, file: !40, line: 1892, baseType: !383, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !370, file: !340, line: 359, baseType: !50, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !350, file: !340, line: 740, baseType: !403, size: 512)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !340, line: 365, size: 512, elements: !404)
!404 = !{!405, !406, !407}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !403, file: !340, line: 368, baseType: !373, size: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !403, file: !340, line: 373, baseType: !51, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !403, file: !340, line: 374, baseType: !51, size: 64, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !350, file: !340, line: 741, baseType: !409, size: 576)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !340, line: 380, size: 576, elements: !410)
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !409, file: !340, line: 383, baseType: !403, size: 512)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !409, file: !340, line: 389, baseType: !50, size: 64, offset: 512)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !350, file: !340, line: 742, baseType: !414, size: 320)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !340, line: 395, size: 320, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !414, file: !340, line: 397, baseType: !353, size: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !414, file: !340, line: 400, baseType: !337, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !350, file: !340, line: 743, baseType: !419, size: 448)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !340, line: 406, size: 448, elements: !420)
!420 = !{!421, !422, !423, !424}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !419, file: !340, line: 408, baseType: !353, size: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !419, file: !340, line: 412, baseType: !51, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !419, file: !340, line: 420, baseType: !51, size: 64, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !419, file: !340, line: 423, baseType: !337, size: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !350, file: !340, line: 744, baseType: !426, size: 384)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !340, line: 429, size: 384, elements: !427)
!427 = !{!428, !429, !430}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !426, file: !340, line: 431, baseType: !353, size: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !426, file: !340, line: 434, baseType: !51, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !426, file: !340, line: 437, baseType: !337, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !350, file: !340, line: 745, baseType: !432, size: 384)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !340, line: 443, size: 384, elements: !433)
!433 = !{!434, !435, !436}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !432, file: !340, line: 445, baseType: !353, size: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !432, file: !340, line: 449, baseType: !51, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !432, file: !340, line: 453, baseType: !337, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !350, file: !340, line: 746, baseType: !438, size: 320)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !340, line: 459, size: 320, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !438, file: !340, line: 461, baseType: !353, size: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !438, file: !340, line: 464, baseType: !51, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !350, file: !340, line: 747, baseType: !443, size: 768)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !340, line: 469, size: 768, elements: !444)
!444 = !{!445, !446, !447, !448, !449}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !443, file: !340, line: 471, baseType: !353, size: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !443, file: !340, line: 474, baseType: !27, size: 32, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !443, file: !340, line: 475, baseType: !27, size: 32, offset: 288)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !443, file: !340, line: 478, baseType: !51, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !443, file: !340, line: 481, baseType: !450, size: 384, offset: 384)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 384, elements: !28)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !40, line: 1917, size: 384, elements: !452)
!452 = !{!453, !454, !455}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !451, file: !40, line: 1920, baseType: !390, size: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !451, file: !40, line: 1921, baseType: !51, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !451, file: !40, line: 1922, baseType: !160, size: 32, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !350, file: !340, line: 748, baseType: !457, size: 320)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !340, line: 487, size: 320, elements: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !457, file: !340, line: 490, baseType: !353, size: 256)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !457, file: !340, line: 494, baseType: !18, size: 32, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !350, file: !340, line: 749, baseType: !462, size: 384)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !340, line: 500, size: 384, elements: !463)
!463 = !{!464, !465, !466}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !462, file: !340, line: 502, baseType: !353, size: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !462, file: !340, line: 506, baseType: !337, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !462, file: !340, line: 510, baseType: !337, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !350, file: !340, line: 750, baseType: !468, size: 320)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !340, line: 529, size: 320, elements: !469)
!469 = !{!470, !471}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !468, file: !340, line: 531, baseType: !353, size: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !468, file: !340, line: 540, baseType: !337, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !350, file: !340, line: 751, baseType: !473, size: 704)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !340, line: 546, size: 704, elements: !474)
!474 = !{!475, !476, !479, !480, !481, !482, !483}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !473, file: !340, line: 549, baseType: !403, size: 512)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !473, file: !340, line: 553, baseType: !477, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !473, file: !340, line: 557, baseType: !152, size: 8, offset: 576)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !473, file: !340, line: 558, baseType: !152, size: 8, offset: 584)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !473, file: !340, line: 559, baseType: !152, size: 8, offset: 592)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !473, file: !340, line: 560, baseType: !152, size: 8, offset: 600)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !473, file: !340, line: 566, baseType: !50, size: 64, offset: 640)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !350, file: !340, line: 752, baseType: !485, size: 384)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !340, line: 571, size: 384, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !485, file: !340, line: 573, baseType: !414, size: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !340, line: 577, baseType: !51, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !350, file: !340, line: 753, baseType: !490, size: 576)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !340, line: 600, size: 576, elements: !491)
!491 = !{!492, !493, !494, !497, !700}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !490, file: !340, line: 602, baseType: !414, size: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !490, file: !340, line: 605, baseType: !51, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !490, file: !340, line: 609, baseType: !495, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !496, line: 46, baseType: !105)
!496 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!497 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !490, file: !340, line: 612, baseType: !498, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !340, line: 581, size: 320, elements: !500)
!500 = !{!501, !696, !697, !698, !699}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !499, file: !340, line: 583, baseType: !502, size: 32)
!502 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !40, line: 39, baseType: !27, size: 32, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!504 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!505 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!506 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!507 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!508 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!509 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!510 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!511 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!512 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!513 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!514 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!515 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!516 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!517 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!518 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!519 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!520 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!521 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!522 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!523 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!524 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!525 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!526 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!527 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!528 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!529 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!530 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!531 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!532 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!533 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!534 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!535 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!536 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!537 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!538 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!539 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!540 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!541 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!542 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!543 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!544 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!545 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!546 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!547 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!548 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!549 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!550 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!551 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!552 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!553 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!554 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!555 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!556 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!557 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!558 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!559 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!560 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!561 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!562 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!563 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!564 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!565 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!566 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!567 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!568 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!569 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!570 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!571 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!572 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!573 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!574 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!575 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!576 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!577 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!578 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!579 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!580 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!581 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!582 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!583 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!584 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!585 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!586 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!587 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!588 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!589 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!590 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!591 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!592 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!593 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!594 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!595 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!596 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!597 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!598 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!599 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!600 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!601 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!602 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!603 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!604 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!605 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!606 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!607 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!608 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!609 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!610 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!611 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!612 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!613 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!614 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!615 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!616 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!617 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!618 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!619 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!620 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!621 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!622 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!623 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!624 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!625 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!626 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!627 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!628 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!629 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!630 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!631 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!632 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!633 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!634 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!635 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!636 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!637 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!638 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!639 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!640 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!641 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!642 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!643 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!644 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!645 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!646 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!647 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!648 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!649 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!650 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!651 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!652 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!653 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!654 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!655 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!656 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!657 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!658 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!659 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!660 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!661 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!662 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!663 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!664 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!665 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!666 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!667 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!668 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!669 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!670 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!671 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!672 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!673 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!674 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!675 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!676 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!677 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!678 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!679 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!680 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!681 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!682 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!683 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!684 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!685 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!686 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!687 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!688 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!689 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!690 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!691 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!692 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!693 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!694 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!695 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !499, file: !340, line: 586, baseType: !51, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !499, file: !340, line: 589, baseType: !51, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !499, file: !340, line: 592, baseType: !51, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !499, file: !340, line: 595, baseType: !51, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !490, file: !340, line: 616, baseType: !337, size: 64, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !350, file: !340, line: 754, baseType: !702, size: 512)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !340, line: 622, size: 512, elements: !703)
!703 = !{!704, !705, !706, !707}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !702, file: !340, line: 624, baseType: !414, size: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !702, file: !340, line: 628, baseType: !51, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !702, file: !340, line: 632, baseType: !51, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !702, file: !340, line: 636, baseType: !51, size: 64, offset: 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !350, file: !340, line: 755, baseType: !709, size: 704)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !340, line: 642, size: 704, elements: !710)
!710 = !{!711, !712, !713, !714}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !709, file: !340, line: 644, baseType: !702, size: 512)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !709, file: !340, line: 648, baseType: !51, size: 64, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !709, file: !340, line: 652, baseType: !51, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !709, file: !340, line: 653, baseType: !51, size: 64, offset: 640)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !350, file: !340, line: 756, baseType: !716, size: 448)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !340, line: 663, size: 448, elements: !717)
!717 = !{!718, !719, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !716, file: !340, line: 665, baseType: !414, size: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !716, file: !340, line: 668, baseType: !51, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !716, file: !340, line: 673, baseType: !51, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !350, file: !340, line: 757, baseType: !722, size: 384)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !340, line: 694, size: 384, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !722, file: !340, line: 696, baseType: !414, size: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !722, file: !340, line: 699, baseType: !51, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !350, file: !340, line: 758, baseType: !727, size: 384)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !340, line: 681, size: 384, elements: !728)
!728 = !{!729, !730, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !727, file: !340, line: 683, baseType: !353, size: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !727, file: !340, line: 686, baseType: !51, size: 64, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !727, file: !340, line: 689, baseType: !51, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !350, file: !340, line: 759, baseType: !733, size: 384)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !340, line: 707, size: 384, elements: !734)
!734 = !{!735, !736, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !733, file: !340, line: 709, baseType: !353, size: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !733, file: !340, line: 712, baseType: !51, size: 64, offset: 256)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !733, file: !340, line: 712, baseType: !51, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !350, file: !340, line: 760, baseType: !739, size: 320)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !340, line: 718, size: 320, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !739, file: !340, line: 720, baseType: !353, size: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !739, file: !340, line: 723, baseType: !51, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !345, file: !340, line: 138, baseType: !344, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !340, line: 139, baseType: !344, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !339, file: !340, line: 146, baseType: !343, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !339, file: !340, line: 152, baseType: !337, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !334, file: !307, line: 130, baseType: !210, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !329, file: !307, line: 134, baseType: !749, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !329, file: !307, line: 137, baseType: !51, size: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !329, file: !307, line: 138, baseType: !160, size: 32, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !329, file: !307, line: 142, baseType: !27, size: 32, offset: 352)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !329, file: !307, line: 144, baseType: !18, size: 32, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !329, file: !307, line: 145, baseType: !18, size: 32, offset: 416)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !329, file: !307, line: 146, baseType: !756, size: 64, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !307, line: 119, baseType: !107)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !312, file: !307, line: 220, baseType: !315, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !312, file: !307, line: 223, baseType: !749, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !312, file: !307, line: 226, baseType: !760, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !307, line: 185, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !312, file: !307, line: 229, baseType: !763, size: 128, offset: 256)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !764, size: 128, elements: !766)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !307, line: 229, flags: DIFlagFwdDecl)
!766 = !{!767}
!767 = !DISubrange(count: 2)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !312, file: !307, line: 232, baseType: !311, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !312, file: !307, line: 233, baseType: !311, size: 64, offset: 448)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !312, file: !307, line: 238, baseType: !771, size: 64, offset: 512)
!771 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !307, line: 235, size: 64, elements: !772)
!772 = !{!773, !779}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !771, file: !307, line: 236, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !307, line: 273, size: 128, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !775, file: !307, line: 275, baseType: !337, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !775, file: !307, line: 278, baseType: !337, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !771, file: !307, line: 237, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !307, line: 259, size: 320, elements: !782)
!782 = !{!783, !784, !785, !786, !787}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !781, file: !307, line: 261, baseType: !210, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !781, file: !307, line: 262, baseType: !210, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !781, file: !307, line: 266, baseType: !210, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !781, file: !307, line: 267, baseType: !210, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !781, file: !307, line: 270, baseType: !18, size: 32, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !312, file: !307, line: 241, baseType: !756, size: 64, offset: 576)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !312, file: !307, line: 244, baseType: !18, size: 32, offset: 640)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !312, file: !307, line: 247, baseType: !18, size: 32, offset: 672)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !312, file: !307, line: 250, baseType: !18, size: 32, offset: 704)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !312, file: !307, line: 253, baseType: !18, size: 32, offset: 736)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !307, line: 256, baseType: !18, size: 32, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !306, file: !307, line: 378, baseType: !310, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !306, file: !307, line: 381, baseType: !796, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !307, line: 282, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !307, line: 282, size: 128, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !798, file: !307, line: 282, baseType: !801, size: 128)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !307, line: 281, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !307, line: 281, size: 128, elements: !803)
!803 = !{!804, !805, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !802, file: !307, line: 281, baseType: !27, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !802, file: !307, line: 281, baseType: !27, size: 32, offset: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !802, file: !307, line: 281, baseType: !807, size: 64, offset: 64)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 64, elements: !28)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !306, file: !307, line: 384, baseType: !18, size: 32, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !306, file: !307, line: 387, baseType: !18, size: 32, offset: 224)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !306, file: !307, line: 390, baseType: !18, size: 32, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !306, file: !307, line: 394, baseType: !796, size: 64, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !306, file: !307, line: 396, baseType: !813, size: 32, offset: 384)
!813 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !307, line: 363, baseType: !27, size: 32, elements: !814)
!814 = !{!815, !816, !817}
!815 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!816 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!817 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !306, file: !307, line: 399, baseType: !819, size: 64, offset: 416)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 64, elements: !766)
!820 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !307, line: 355, baseType: !27, size: 32, elements: !821)
!821 = !{!822, !823, !824}
!822 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!823 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!824 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !306, file: !307, line: 402, baseType: !826, size: 64, offset: 480)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !766)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !306, file: !307, line: 406, baseType: !18, size: 32, offset: 544)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !306, file: !307, line: 409, baseType: !18, size: 32, offset: 576)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !298, file: !299, line: 470, baseType: !338, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !298, file: !299, line: 473, baseType: !831, size: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !249, line: 39, size: 1152, elements: !833)
!833 = !{!834, !884, !897, !903, !904, !974, !975, !979, !980, !981, !982, !983}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !832, file: !249, line: 41, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !836, line: 144, baseType: !837)
!836 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !836, line: 100, size: 896, elements: !839)
!839 = !{!840, !848, !853, !858, !860, !861, !862, !863, !864, !865, !870, !872, !873, !878, !883}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !838, file: !836, line: 102, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !836, line: 52, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !836, line: 47, baseType: !27)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !838, file: !836, line: 105, baseType: !849, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !836, line: 59, baseType: !850)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!18, !846, !846}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !838, file: !836, line: 108, baseType: !854, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !836, line: 63, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !749}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !838, file: !836, line: 111, baseType: !859, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !838, file: !836, line: 114, baseType: !495, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !838, file: !836, line: 117, baseType: !495, size: 64, offset: 320)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !838, file: !836, line: 120, baseType: !495, size: 64, offset: 384)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !838, file: !836, line: 124, baseType: !27, size: 32, offset: 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !838, file: !836, line: 128, baseType: !27, size: 32, offset: 480)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !838, file: !836, line: 131, baseType: !866, size: 64, offset: 512)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !836, line: 75, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!749, !495, !495}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !838, file: !836, line: 132, baseType: !871, size: 64, offset: 576)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !836, line: 78, baseType: !855)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !838, file: !836, line: 135, baseType: !749, size: 64, offset: 640)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !838, file: !836, line: 136, baseType: !874, size: 64, offset: 704)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !836, line: 82, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!749, !749, !495, !495}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !838, file: !836, line: 137, baseType: !879, size: 64, offset: 768)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !836, line: 83, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !749, !749}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !838, file: !836, line: 141, baseType: !27, size: 32, offset: 832)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !832, file: !249, line: 48, baseType: !885, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !340, line: 35, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !340, line: 35, size: 128, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !887, file: !340, line: 35, baseType: !890, size: 128)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !340, line: 33, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !340, line: 33, size: 128, elements: !892)
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !891, file: !340, line: 33, baseType: !27, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !891, file: !340, line: 33, baseType: !27, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !891, file: !340, line: 33, baseType: !896, size: 64, offset: 64)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 64, elements: !28)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !832, file: !249, line: 51, baseType: !898, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !40, line: 183, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !40, line: 183, size: 128, elements: !901)
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !900, file: !40, line: 183, baseType: !44, size: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !832, file: !249, line: 54, baseType: !51, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !832, file: !249, line: 57, baseType: !905, size: 128, offset: 256)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !906, line: 31, size: 128, elements: !907)
!906 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!907 = !{!908, !909, !910, !911, !912, !913, !914}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !905, file: !906, line: 35, baseType: !27, size: 1, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !905, file: !906, line: 39, baseType: !27, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !905, file: !906, line: 42, baseType: !27, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !905, file: !906, line: 46, baseType: !27, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !905, file: !906, line: 50, baseType: !27, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !905, file: !906, line: 53, baseType: !27, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !905, file: !906, line: 56, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !52, line: 47, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !918, line: 75, size: 256, elements: !919)
!918 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!919 = !{!920, !932, !933, !934}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !917, file: !918, line: 76, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !918, line: 68, baseType: !923)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !918, line: 63, size: 320, elements: !924)
!924 = !{!925, !927, !928, !929}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !923, file: !918, line: 64, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !923, file: !918, line: 65, baseType: !926, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !923, file: !918, line: 66, baseType: !27, size: 32, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !923, file: !918, line: 67, baseType: !930, size: 128, offset: 192)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !931, size: 128, elements: !766)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !918, line: 29, baseType: !105)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !917, file: !918, line: 77, baseType: !921, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !917, file: !918, line: 78, baseType: !27, size: 32, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !917, file: !918, line: 79, baseType: !935, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !918, line: 49, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !918, line: 45, size: 832, elements: !938)
!938 = !{!939, !940, !941}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !937, file: !918, line: 46, baseType: !926, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !937, file: !918, line: 47, baseType: !916, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !937, file: !918, line: 48, baseType: !942, size: 704, offset: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !943, line: 164, size: 704, elements: !944)
!943 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!944 = !{!945, !946, !957, !958, !959, !960, !961, !962, !966, !970, !971, !972, !973}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !942, file: !943, line: 166, baseType: !107, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !942, file: !943, line: 167, baseType: !947, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !943, line: 157, size: 192, elements: !949)
!949 = !{!950, !952, !953}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !948, file: !943, line: 159, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !948, file: !943, line: 160, baseType: !947, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !948, file: !943, line: 161, baseType: !954, size: 32, offset: 128)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 32, elements: !955)
!955 = !{!956}
!956 = !DISubrange(count: 4)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !942, file: !943, line: 168, baseType: !951, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !942, file: !943, line: 169, baseType: !951, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !942, file: !943, line: 170, baseType: !951, size: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !942, file: !943, line: 171, baseType: !107, size: 64, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !942, file: !943, line: 172, baseType: !18, size: 32, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !942, file: !943, line: 176, baseType: !963, size: 64, offset: 448)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!947, !749, !107}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !942, file: !943, line: 177, baseType: !967, size: 64, offset: 512)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !749, !947}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !942, file: !943, line: 178, baseType: !749, size: 64, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !942, file: !943, line: 179, baseType: !27, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !942, file: !943, line: 180, baseType: !27, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !942, file: !943, line: 184, baseType: !27, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !832, file: !249, line: 60, baseType: !905, size: 128, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !832, file: !249, line: 64, baseType: !976, size: 64, offset: 512)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !978, line: 33, flags: DIFlagFwdDecl)
!978 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!979 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !832, file: !249, line: 67, baseType: !51, size: 64, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !832, file: !249, line: 73, baseType: !835, size: 64, offset: 640)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !832, file: !249, line: 77, baseType: !915, size: 64, offset: 704)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !832, file: !249, line: 80, baseType: !27, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !832, file: !249, line: 82, baseType: !984, size: 320, offset: 832)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !379, line: 62, size: 320, elements: !985)
!985 = !{!986, !992, !993, !994, !995, !996}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !984, file: !379, line: 63, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !379, line: 56, size: 128, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !988, file: !379, line: 57, baseType: !987, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !988, file: !379, line: 58, baseType: !133, size: 8, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !984, file: !379, line: 64, baseType: !27, size: 32, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !984, file: !379, line: 66, baseType: !27, size: 32, offset: 96)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !984, file: !379, line: 68, baseType: !152, size: 8, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !984, file: !379, line: 70, baseType: !377, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !984, file: !379, line: 71, baseType: !385, size: 64, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !298, file: !299, line: 476, baseType: !998, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !299, line: 476, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !298, file: !299, line: 479, baseType: !835, size: 64, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !298, file: !299, line: 484, baseType: !51, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !298, file: !299, line: 488, baseType: !51, size: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !298, file: !299, line: 493, baseType: !51, size: 64, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !298, file: !299, line: 496, baseType: !51, size: 64, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !298, file: !299, line: 501, baseType: !1006, size: 64, offset: 640)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !1008, line: 2355, size: 576, elements: !1009)
!1008 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1009 = !{!1010, !1013, !1014, !1015, !1016, !1018, !1019, !1024, !1029, !1030, !1031, !1032, !1033}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1007, file: !1008, line: 2356, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !1008, line: 2356, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1007, file: !1008, line: 2357, baseType: !477, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1007, file: !1008, line: 2358, baseType: !18, size: 32, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1007, file: !1008, line: 2359, baseType: !18, size: 32, offset: 160)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1007, file: !1008, line: 2360, baseType: !1017, size: 128, offset: 192)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !955)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1007, file: !1008, line: 2364, baseType: !18, size: 32, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1007, file: !1008, line: 2367, baseType: !1020, size: 128, offset: 384)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !1008, line: 2349, size: 128, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1020, file: !1008, line: 2351, baseType: !210, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1020, file: !1008, line: 2352, baseType: !107, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1007, file: !1008, line: 2371, baseType: !1025, size: 32, offset: 512)
!1025 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !1008, line: 474, baseType: !27, size: 32, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!1028 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1007, file: !1008, line: 2374, baseType: !27, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1007, file: !1008, line: 2377, baseType: !27, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1007, file: !1008, line: 2381, baseType: !27, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1007, file: !1008, line: 2392, baseType: !27, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1007, file: !1008, line: 2396, baseType: !27, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !298, file: !299, line: 504, baseType: !1035, size: 64, offset: 704)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !299, line: 504, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !298, file: !299, line: 507, baseType: !835, size: 64, offset: 768)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !298, file: !299, line: 510, baseType: !18, size: 32, offset: 832)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !298, file: !299, line: 513, baseType: !18, size: 32, offset: 864)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !298, file: !299, line: 516, baseType: !160, size: 32, offset: 896)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !298, file: !299, line: 519, baseType: !160, size: 32, offset: 928)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !298, file: !299, line: 522, baseType: !27, size: 32, offset: 960)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !298, file: !299, line: 523, baseType: !27, size: 32, offset: 992)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !298, file: !299, line: 528, baseType: !477, size: 64, offset: 1024)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !298, file: !299, line: 535, baseType: !27, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !298, file: !299, line: 539, baseType: !27, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !298, file: !299, line: 543, baseType: !27, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !298, file: !299, line: 546, baseType: !27, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !298, file: !299, line: 550, baseType: !27, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !298, file: !299, line: 554, baseType: !27, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !298, file: !299, line: 559, baseType: !27, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !298, file: !299, line: 562, baseType: !27, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !298, file: !299, line: 571, baseType: !27, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !298, file: !299, line: 573, baseType: !27, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !298, file: !299, line: 574, baseType: !27, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !298, file: !299, line: 581, baseType: !27, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !298, file: !299, line: 585, baseType: !27, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !298, file: !299, line: 588, baseType: !27, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !298, file: !299, line: 592, baseType: !27, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !298, file: !299, line: 598, baseType: !27, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !293, file: !40, line: 3254, baseType: !51, size: 64, offset: 1536)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !293, file: !40, line: 3257, baseType: !51, size: 64, offset: 1600)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !293, file: !40, line: 3258, baseType: !51, size: 64, offset: 1664)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !293, file: !40, line: 3264, baseType: !27, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !293, file: !40, line: 3265, baseType: !27, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !293, file: !40, line: 3267, baseType: !27, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !293, file: !40, line: 3268, baseType: !27, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !293, file: !40, line: 3269, baseType: !27, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !293, file: !40, line: 3271, baseType: !27, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !293, file: !40, line: 3272, baseType: !27, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !293, file: !40, line: 3273, baseType: !27, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !293, file: !40, line: 3274, baseType: !27, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !293, file: !40, line: 3275, baseType: !27, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !293, file: !40, line: 3276, baseType: !27, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !293, file: !40, line: 3277, baseType: !27, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !293, file: !40, line: 3279, baseType: !27, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !293, file: !40, line: 3280, baseType: !27, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !293, file: !40, line: 3281, baseType: !27, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !293, file: !40, line: 3282, baseType: !27, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !293, file: !40, line: 3283, baseType: !27, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !293, file: !40, line: 3284, baseType: !27, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !40, line: 3394, baseType: !1083, size: 1344)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !40, line: 2279, size: 1344, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1110, !1111, !1112, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1083, file: !40, line: 2280, baseType: !90, size: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1083, file: !40, line: 2281, baseType: !51, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1083, file: !40, line: 2282, baseType: !51, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1083, file: !40, line: 2283, baseType: !51, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1083, file: !40, line: 2284, baseType: !51, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1083, file: !40, line: 2285, baseType: !27, size: 32, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1083, file: !40, line: 2287, baseType: !27, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1083, file: !40, line: 2288, baseType: !27, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1083, file: !40, line: 2289, baseType: !27, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1083, file: !40, line: 2290, baseType: !27, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1083, file: !40, line: 2291, baseType: !27, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1083, file: !40, line: 2292, baseType: !27, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1083, file: !40, line: 2294, baseType: !27, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1083, file: !40, line: 2296, baseType: !27, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1083, file: !40, line: 2297, baseType: !27, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1083, file: !40, line: 2298, baseType: !27, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1083, file: !40, line: 2299, baseType: !27, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1083, file: !40, line: 2300, baseType: !27, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1083, file: !40, line: 2301, baseType: !27, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1083, file: !40, line: 2302, baseType: !27, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1083, file: !40, line: 2303, baseType: !27, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1083, file: !40, line: 2305, baseType: !27, size: 32, offset: 512)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1083, file: !40, line: 2306, baseType: !1108, size: 32, offset: 544)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1109, line: 31, baseType: !18)
!1109 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1083, file: !40, line: 2307, baseType: !51, size: 64, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1083, file: !40, line: 2308, baseType: !51, size: 64, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1083, file: !40, line: 2314, baseType: !1113, size: 64, offset: 704)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !40, line: 2309, size: 64, elements: !1114)
!1114 = !{!1115, !1116, !1117}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1113, file: !40, line: 2310, baseType: !18, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1113, file: !40, line: 2311, baseType: !477, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1113, file: !40, line: 2312, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !40, line: 2277, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1083, file: !40, line: 2315, baseType: !51, size: 64, offset: 768)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1083, file: !40, line: 2316, baseType: !51, size: 64, offset: 832)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1083, file: !40, line: 2317, baseType: !51, size: 64, offset: 896)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1083, file: !40, line: 2318, baseType: !51, size: 64, offset: 960)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1083, file: !40, line: 2319, baseType: !51, size: 64, offset: 1024)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1083, file: !40, line: 2320, baseType: !51, size: 64, offset: 1088)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1083, file: !40, line: 2321, baseType: !51, size: 64, offset: 1152)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1083, file: !40, line: 2322, baseType: !51, size: 64, offset: 1216)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1083, file: !40, line: 2324, baseType: !1129, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !40, line: 2324, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !54, file: !40, line: 3395, baseType: !1132, size: 320)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !40, line: 1469, size: 320, elements: !1133)
!1133 = !{!1134, !1135, !1136}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1132, file: !40, line: 1470, baseType: !90, size: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1132, file: !40, line: 1471, baseType: !51, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1132, file: !40, line: 1472, baseType: !51, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !54, file: !40, line: 3396, baseType: !1138, size: 320)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !40, line: 1482, size: 320, elements: !1139)
!1139 = !{!1140, !1141, !1142}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1138, file: !40, line: 1483, baseType: !90, size: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1138, file: !40, line: 1484, baseType: !18, size: 32, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1138, file: !40, line: 1485, baseType: !50, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !54, file: !40, line: 3397, baseType: !1144, size: 384)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !40, line: 1829, size: 384, elements: !1145)
!1145 = !{!1146, !1147, !1148, !1149}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1144, file: !40, line: 1830, baseType: !90, size: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1144, file: !40, line: 1831, baseType: !160, size: 32, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1144, file: !40, line: 1832, baseType: !51, size: 64, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1144, file: !40, line: 1835, baseType: !50, size: 64, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !54, file: !40, line: 3398, baseType: !1151, size: 704)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !40, line: 1898, size: 704, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1162}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1151, file: !40, line: 1899, baseType: !90, size: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1151, file: !40, line: 1902, baseType: !51, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1151, file: !40, line: 1905, baseType: !348, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1151, file: !40, line: 1908, baseType: !27, size: 32, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1151, file: !40, line: 1911, baseType: !1158, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !249, line: 117, size: 128, elements: !1160)
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1159, file: !249, line: 120, baseType: !905, size: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1151, file: !40, line: 1914, baseType: !390, size: 256, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !54, file: !40, line: 3399, baseType: !1164, size: 704)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !40, line: 2008, size: 704, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1164, file: !40, line: 2009, baseType: !90, size: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1164, file: !40, line: 2011, baseType: !27, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1164, file: !40, line: 2012, baseType: !27, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1164, file: !40, line: 2014, baseType: !160, size: 32, offset: 224)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1164, file: !40, line: 2016, baseType: !51, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1164, file: !40, line: 2017, baseType: !898, size: 64, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1164, file: !40, line: 2019, baseType: !51, size: 64, offset: 384)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1164, file: !40, line: 2020, baseType: !51, size: 64, offset: 448)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1164, file: !40, line: 2021, baseType: !51, size: 64, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1164, file: !40, line: 2022, baseType: !51, size: 64, offset: 576)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1164, file: !40, line: 2023, baseType: !51, size: 64, offset: 640)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !54, file: !40, line: 3400, baseType: !1178, size: 832)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !40, line: 2430, size: 832, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1178, file: !40, line: 2431, baseType: !90, size: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1178, file: !40, line: 2433, baseType: !51, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1178, file: !40, line: 2434, baseType: !51, size: 64, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1178, file: !40, line: 2435, baseType: !51, size: 64, offset: 320)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1178, file: !40, line: 2436, baseType: !51, size: 64, offset: 384)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1178, file: !40, line: 2437, baseType: !898, size: 64, offset: 448)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1178, file: !40, line: 2438, baseType: !51, size: 64, offset: 512)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1178, file: !40, line: 2440, baseType: !51, size: 64, offset: 576)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1178, file: !40, line: 2441, baseType: !51, size: 64, offset: 640)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1178, file: !40, line: 2443, baseType: !1190, size: 128, offset: 704)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !40, line: 182, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !40, line: 182, size: 128, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1191, file: !40, line: 182, baseType: !44, size: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !54, file: !40, line: 3401, baseType: !1195, size: 320)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !40, line: 3327, size: 320, elements: !1196)
!1196 = !{!1197, !1198, !1205}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1195, file: !40, line: 3329, baseType: !90, size: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1195, file: !40, line: 3330, baseType: !1199, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !40, line: 3320, size: 192, elements: !1201)
!1201 = !{!1202, !1203, !1204}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1200, file: !40, line: 3322, baseType: !1199, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1200, file: !40, line: 3323, baseType: !1199, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1200, file: !40, line: 3324, baseType: !51, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1195, file: !40, line: 3331, baseType: !1199, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !54, file: !40, line: 3402, baseType: !1207, size: 256)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !40, line: 1540, size: 256, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1207, file: !40, line: 1541, baseType: !90, size: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1207, file: !40, line: 1542, baseType: !1211, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !40, line: 1538, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !40, line: 1538, size: 192, elements: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1213, file: !40, line: 1538, baseType: !1216, size: 192)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !40, line: 1537, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !40, line: 1537, size: 192, elements: !1218)
!1218 = !{!1219, !1220, !1221}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1217, file: !40, line: 1537, baseType: !27, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1217, file: !40, line: 1537, baseType: !27, size: 32, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1217, file: !40, line: 1537, baseType: !1222, size: 128, offset: 64)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1223, size: 128, elements: !28)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !40, line: 1535, baseType: !1224)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !40, line: 1532, size: 128, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1224, file: !40, line: 1533, baseType: !51, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1224, file: !40, line: 1534, baseType: !51, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !54, file: !40, line: 3403, baseType: !1229, size: 512)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !40, line: 1938, size: 512, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1252, !1272, !1273, !1274}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1229, file: !40, line: 1939, baseType: !90, size: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1229, file: !40, line: 1940, baseType: !160, size: 32, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1229, file: !40, line: 1941, baseType: !1234, size: 32, offset: 224)
!1234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !40, line: 280, baseType: !27, size: 32, elements: !1235)
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251}
!1236 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!1237 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!1238 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!1239 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!1240 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!1241 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!1242 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!1243 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!1244 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!1245 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!1246 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!1247 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!1248 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!1249 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!1250 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!1251 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1229, file: !40, line: 1946, baseType: !1253, size: 32, offset: 256)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !40, line: 1942, size: 32, elements: !1254)
!1254 = !{!1255, !1263, !1271}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1253, file: !40, line: 1943, baseType: !1256, size: 32)
!1256 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !40, line: 1817, baseType: !27, size: 32, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262}
!1258 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!1259 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!1260 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!1261 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!1262 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1253, file: !40, line: 1944, baseType: !1264, size: 32)
!1264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !40, line: 1805, baseType: !27, size: 32, elements: !1265)
!1265 = !{!1266, !1267, !1268, !1269, !1270}
!1266 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!1267 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!1268 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!1269 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!1270 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1253, file: !40, line: 1945, baseType: !502, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1229, file: !40, line: 1950, baseType: !337, size: 64, offset: 320)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1229, file: !40, line: 1951, baseType: !337, size: 64, offset: 384)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1229, file: !40, line: 1953, baseType: !50, size: 64, offset: 448)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !54, file: !40, line: 3404, baseType: !1276, size: 1664)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !40, line: 3337, size: 1664, elements: !1277)
!1277 = !{!1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1276, file: !40, line: 3338, baseType: !90, size: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1276, file: !40, line: 3341, baseType: !1280, size: 1472, offset: 192)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1281, line: 410, size: 1472, elements: !1282)
!1281 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1282 = !{!1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1280, file: !1281, line: 412, baseType: !18, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1280, file: !1281, line: 413, baseType: !18, size: 32, offset: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1280, file: !1281, line: 414, baseType: !18, size: 32, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1280, file: !1281, line: 415, baseType: !18, size: 32, offset: 96)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1280, file: !1281, line: 416, baseType: !18, size: 32, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1280, file: !1281, line: 417, baseType: !18, size: 32, offset: 160)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1280, file: !1281, line: 418, baseType: !152, size: 8, offset: 192)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1280, file: !1281, line: 419, baseType: !152, size: 8, offset: 200)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1280, file: !1281, line: 420, baseType: !1292, size: 8, offset: 208)
!1292 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1280, file: !1281, line: 421, baseType: !1292, size: 8, offset: 216)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1280, file: !1281, line: 422, baseType: !1292, size: 8, offset: 224)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1280, file: !1281, line: 423, baseType: !1292, size: 8, offset: 232)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1280, file: !1281, line: 424, baseType: !1292, size: 8, offset: 240)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1280, file: !1281, line: 425, baseType: !1292, size: 8, offset: 248)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1280, file: !1281, line: 426, baseType: !1292, size: 8, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1280, file: !1281, line: 427, baseType: !1292, size: 8, offset: 264)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1280, file: !1281, line: 428, baseType: !1292, size: 8, offset: 272)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1280, file: !1281, line: 429, baseType: !1292, size: 8, offset: 280)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1280, file: !1281, line: 430, baseType: !1292, size: 8, offset: 288)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1280, file: !1281, line: 431, baseType: !1292, size: 8, offset: 296)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1280, file: !1281, line: 432, baseType: !1292, size: 8, offset: 304)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1280, file: !1281, line: 433, baseType: !1292, size: 8, offset: 312)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1280, file: !1281, line: 434, baseType: !1292, size: 8, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1280, file: !1281, line: 435, baseType: !1292, size: 8, offset: 328)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1280, file: !1281, line: 436, baseType: !1292, size: 8, offset: 336)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1280, file: !1281, line: 437, baseType: !1292, size: 8, offset: 344)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1280, file: !1281, line: 438, baseType: !1292, size: 8, offset: 352)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1280, file: !1281, line: 439, baseType: !1292, size: 8, offset: 360)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1280, file: !1281, line: 440, baseType: !1292, size: 8, offset: 368)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1280, file: !1281, line: 441, baseType: !1292, size: 8, offset: 376)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1280, file: !1281, line: 442, baseType: !1292, size: 8, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1280, file: !1281, line: 443, baseType: !1292, size: 8, offset: 392)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1280, file: !1281, line: 444, baseType: !1292, size: 8, offset: 400)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1280, file: !1281, line: 445, baseType: !1292, size: 8, offset: 408)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1280, file: !1281, line: 446, baseType: !1292, size: 8, offset: 416)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1280, file: !1281, line: 447, baseType: !1292, size: 8, offset: 424)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1280, file: !1281, line: 448, baseType: !1292, size: 8, offset: 432)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1280, file: !1281, line: 449, baseType: !1292, size: 8, offset: 440)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1280, file: !1281, line: 450, baseType: !1292, size: 8, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1280, file: !1281, line: 451, baseType: !1292, size: 8, offset: 456)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1280, file: !1281, line: 452, baseType: !1292, size: 8, offset: 464)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1280, file: !1281, line: 453, baseType: !1292, size: 8, offset: 472)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1280, file: !1281, line: 454, baseType: !1292, size: 8, offset: 480)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1280, file: !1281, line: 455, baseType: !1292, size: 8, offset: 488)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1280, file: !1281, line: 456, baseType: !1292, size: 8, offset: 496)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1280, file: !1281, line: 457, baseType: !1292, size: 8, offset: 504)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1280, file: !1281, line: 458, baseType: !1292, size: 8, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1280, file: !1281, line: 459, baseType: !1292, size: 8, offset: 520)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1280, file: !1281, line: 460, baseType: !1292, size: 8, offset: 528)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1280, file: !1281, line: 461, baseType: !1292, size: 8, offset: 536)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1280, file: !1281, line: 462, baseType: !1292, size: 8, offset: 544)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1280, file: !1281, line: 463, baseType: !1292, size: 8, offset: 552)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1280, file: !1281, line: 464, baseType: !1292, size: 8, offset: 560)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1280, file: !1281, line: 465, baseType: !1292, size: 8, offset: 568)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1280, file: !1281, line: 466, baseType: !1292, size: 8, offset: 576)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1280, file: !1281, line: 467, baseType: !1292, size: 8, offset: 584)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1280, file: !1281, line: 468, baseType: !1292, size: 8, offset: 592)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1280, file: !1281, line: 469, baseType: !1292, size: 8, offset: 600)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1280, file: !1281, line: 470, baseType: !1292, size: 8, offset: 608)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1280, file: !1281, line: 471, baseType: !1292, size: 8, offset: 616)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1280, file: !1281, line: 472, baseType: !1292, size: 8, offset: 624)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1280, file: !1281, line: 473, baseType: !1292, size: 8, offset: 632)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1280, file: !1281, line: 474, baseType: !1292, size: 8, offset: 640)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1280, file: !1281, line: 475, baseType: !1292, size: 8, offset: 648)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1280, file: !1281, line: 476, baseType: !1292, size: 8, offset: 656)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1280, file: !1281, line: 477, baseType: !1292, size: 8, offset: 664)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1280, file: !1281, line: 478, baseType: !1292, size: 8, offset: 672)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1280, file: !1281, line: 479, baseType: !1292, size: 8, offset: 680)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1280, file: !1281, line: 480, baseType: !1292, size: 8, offset: 688)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1280, file: !1281, line: 481, baseType: !1292, size: 8, offset: 696)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1280, file: !1281, line: 482, baseType: !1292, size: 8, offset: 704)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1280, file: !1281, line: 483, baseType: !1292, size: 8, offset: 712)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1280, file: !1281, line: 484, baseType: !1292, size: 8, offset: 720)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1280, file: !1281, line: 485, baseType: !1292, size: 8, offset: 728)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1280, file: !1281, line: 486, baseType: !1292, size: 8, offset: 736)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1280, file: !1281, line: 487, baseType: !1292, size: 8, offset: 744)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1280, file: !1281, line: 488, baseType: !1292, size: 8, offset: 752)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1280, file: !1281, line: 489, baseType: !1292, size: 8, offset: 760)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1280, file: !1281, line: 490, baseType: !1292, size: 8, offset: 768)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1280, file: !1281, line: 491, baseType: !1292, size: 8, offset: 776)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1280, file: !1281, line: 492, baseType: !1292, size: 8, offset: 784)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1280, file: !1281, line: 493, baseType: !1292, size: 8, offset: 792)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1280, file: !1281, line: 494, baseType: !1292, size: 8, offset: 800)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1280, file: !1281, line: 495, baseType: !1292, size: 8, offset: 808)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1280, file: !1281, line: 496, baseType: !1292, size: 8, offset: 816)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1280, file: !1281, line: 497, baseType: !1292, size: 8, offset: 824)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1280, file: !1281, line: 498, baseType: !1292, size: 8, offset: 832)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1280, file: !1281, line: 499, baseType: !1292, size: 8, offset: 840)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1280, file: !1281, line: 500, baseType: !1292, size: 8, offset: 848)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1280, file: !1281, line: 501, baseType: !1292, size: 8, offset: 856)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1280, file: !1281, line: 502, baseType: !1292, size: 8, offset: 864)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1280, file: !1281, line: 503, baseType: !1292, size: 8, offset: 872)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1280, file: !1281, line: 504, baseType: !1292, size: 8, offset: 880)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1280, file: !1281, line: 505, baseType: !1292, size: 8, offset: 888)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1280, file: !1281, line: 506, baseType: !1292, size: 8, offset: 896)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1280, file: !1281, line: 507, baseType: !1292, size: 8, offset: 904)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1280, file: !1281, line: 508, baseType: !1292, size: 8, offset: 912)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1280, file: !1281, line: 509, baseType: !1292, size: 8, offset: 920)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1280, file: !1281, line: 510, baseType: !1292, size: 8, offset: 928)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1280, file: !1281, line: 511, baseType: !1292, size: 8, offset: 936)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1280, file: !1281, line: 512, baseType: !1292, size: 8, offset: 944)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1280, file: !1281, line: 513, baseType: !1292, size: 8, offset: 952)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1280, file: !1281, line: 514, baseType: !1292, size: 8, offset: 960)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1280, file: !1281, line: 515, baseType: !1292, size: 8, offset: 968)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1280, file: !1281, line: 516, baseType: !1292, size: 8, offset: 976)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1280, file: !1281, line: 517, baseType: !1292, size: 8, offset: 984)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1280, file: !1281, line: 518, baseType: !1292, size: 8, offset: 992)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1280, file: !1281, line: 519, baseType: !1292, size: 8, offset: 1000)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1280, file: !1281, line: 520, baseType: !1292, size: 8, offset: 1008)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1280, file: !1281, line: 521, baseType: !1292, size: 8, offset: 1016)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1280, file: !1281, line: 522, baseType: !1292, size: 8, offset: 1024)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1280, file: !1281, line: 523, baseType: !1292, size: 8, offset: 1032)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1280, file: !1281, line: 524, baseType: !1292, size: 8, offset: 1040)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1280, file: !1281, line: 525, baseType: !1292, size: 8, offset: 1048)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1280, file: !1281, line: 526, baseType: !1292, size: 8, offset: 1056)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1280, file: !1281, line: 527, baseType: !1292, size: 8, offset: 1064)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1280, file: !1281, line: 528, baseType: !1292, size: 8, offset: 1072)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1280, file: !1281, line: 529, baseType: !1292, size: 8, offset: 1080)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1280, file: !1281, line: 530, baseType: !1292, size: 8, offset: 1088)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1280, file: !1281, line: 531, baseType: !1292, size: 8, offset: 1096)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1280, file: !1281, line: 532, baseType: !1292, size: 8, offset: 1104)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1280, file: !1281, line: 533, baseType: !1292, size: 8, offset: 1112)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1280, file: !1281, line: 534, baseType: !1292, size: 8, offset: 1120)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1280, file: !1281, line: 535, baseType: !1292, size: 8, offset: 1128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1280, file: !1281, line: 536, baseType: !1292, size: 8, offset: 1136)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1280, file: !1281, line: 537, baseType: !1292, size: 8, offset: 1144)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1280, file: !1281, line: 538, baseType: !1292, size: 8, offset: 1152)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1280, file: !1281, line: 539, baseType: !1292, size: 8, offset: 1160)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1280, file: !1281, line: 540, baseType: !1292, size: 8, offset: 1168)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1280, file: !1281, line: 541, baseType: !1292, size: 8, offset: 1176)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1280, file: !1281, line: 542, baseType: !1292, size: 8, offset: 1184)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1280, file: !1281, line: 543, baseType: !1292, size: 8, offset: 1192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1280, file: !1281, line: 544, baseType: !1292, size: 8, offset: 1200)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1280, file: !1281, line: 545, baseType: !1292, size: 8, offset: 1208)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1280, file: !1281, line: 546, baseType: !1292, size: 8, offset: 1216)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1280, file: !1281, line: 547, baseType: !1292, size: 8, offset: 1224)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1280, file: !1281, line: 548, baseType: !1292, size: 8, offset: 1232)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1280, file: !1281, line: 549, baseType: !1292, size: 8, offset: 1240)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1280, file: !1281, line: 550, baseType: !1292, size: 8, offset: 1248)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1280, file: !1281, line: 551, baseType: !1292, size: 8, offset: 1256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1280, file: !1281, line: 552, baseType: !1292, size: 8, offset: 1264)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1280, file: !1281, line: 553, baseType: !1292, size: 8, offset: 1272)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1280, file: !1281, line: 554, baseType: !1292, size: 8, offset: 1280)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1280, file: !1281, line: 555, baseType: !1292, size: 8, offset: 1288)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1280, file: !1281, line: 556, baseType: !1292, size: 8, offset: 1296)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1280, file: !1281, line: 557, baseType: !1292, size: 8, offset: 1304)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1280, file: !1281, line: 558, baseType: !1292, size: 8, offset: 1312)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1280, file: !1281, line: 559, baseType: !1292, size: 8, offset: 1320)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1280, file: !1281, line: 560, baseType: !1292, size: 8, offset: 1328)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1280, file: !1281, line: 561, baseType: !1292, size: 8, offset: 1336)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1280, file: !1281, line: 562, baseType: !1292, size: 8, offset: 1344)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1280, file: !1281, line: 563, baseType: !1292, size: 8, offset: 1352)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1280, file: !1281, line: 564, baseType: !1292, size: 8, offset: 1360)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1280, file: !1281, line: 565, baseType: !1292, size: 8, offset: 1368)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1280, file: !1281, line: 566, baseType: !1292, size: 8, offset: 1376)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1280, file: !1281, line: 567, baseType: !1292, size: 8, offset: 1384)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1280, file: !1281, line: 568, baseType: !1292, size: 8, offset: 1392)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1280, file: !1281, line: 569, baseType: !1292, size: 8, offset: 1400)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1280, file: !1281, line: 570, baseType: !1292, size: 8, offset: 1408)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1280, file: !1281, line: 571, baseType: !1292, size: 8, offset: 1416)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1280, file: !1281, line: 572, baseType: !1292, size: 8, offset: 1424)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1280, file: !1281, line: 573, baseType: !1292, size: 8, offset: 1432)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1280, file: !1281, line: 574, baseType: !1292, size: 8, offset: 1440)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !54, file: !40, line: 3405, baseType: !1448, size: 384)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !40, line: 3352, size: 384, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1448, file: !40, line: 3353, baseType: !90, size: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1448, file: !40, line: 3356, baseType: !1452, size: 192, offset: 192)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1281, line: 578, size: 192, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1452, file: !1281, line: 580, baseType: !18, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1452, file: !1281, line: 581, baseType: !18, size: 32, offset: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1452, file: !1281, line: 582, baseType: !18, size: 32, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1452, file: !1281, line: 583, baseType: !18, size: 32, offset: 96)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1452, file: !1281, line: 584, baseType: !152, size: 8, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1452, file: !1281, line: 585, baseType: !152, size: 8, offset: 136)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1452, file: !1281, line: 586, baseType: !152, size: 8, offset: 144)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1452, file: !1281, line: 587, baseType: !152, size: 8, offset: 152)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1452, file: !1281, line: 588, baseType: !152, size: 8, offset: 160)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1452, file: !1281, line: 589, baseType: !152, size: 8, offset: 168)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1452, file: !1281, line: 590, baseType: !152, size: 8, offset: 176)
!1465 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1466, retainedTypes: !1537, globals: !1586, nameTableKind: None)
!1466 = !{!502, !813, !820, !1025, !1234, !1256, !1264, !1467, !1473, !1511}
!1467 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !379, line: 119, baseType: !27, size: 32, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472}
!1469 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!1470 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!1471 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!1472 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!1473 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !340, line: 51, baseType: !27, size: 32, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510}
!1475 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!1476 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!1477 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!1478 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!1479 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!1480 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!1481 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!1482 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!1483 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!1484 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!1485 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!1486 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!1487 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!1488 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!1489 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!1490 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!1491 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!1492 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!1493 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!1494 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!1495 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!1496 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!1497 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!1498 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!1499 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!1500 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!1501 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!1502 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!1503 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!1504 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!1505 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!1506 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!1507 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!1508 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!1509 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!1510 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!1511 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !340, line: 727, baseType: !27, size: 32, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1513 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!1514 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!1515 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!1516 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!1517 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!1518 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!1519 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!1520 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!1521 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!1522 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!1523 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!1524 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!1525 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!1526 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!1527 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!1528 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!1529 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!1530 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!1531 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!1532 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!1533 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!1534 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!1535 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!1536 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!1537 = !{!1538, !152, !18, !1539, !749, !477, !383, !915, !1540, !845, !1563, !502, !51, !1557, !349, !1566, !951, !1568, !1548, !1571, !1576, !1577, !1546, !1547, !1584}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "coalesce_list_p", file: !3, line: 68, baseType: !1541)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "coalesce_list_d", file: !3, line: 62, size: 256, elements: !1543)
!1543 = !{!1544, !1545, !1554, !1555}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1542, file: !3, line: 64, baseType: !835, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !1542, file: !3, line: 65, baseType: !1546, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "coalesce_pair_p", file: !3, line: 50, baseType: !1548)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "coalesce_pair", file: !3, line: 45, size: 96, elements: !1550)
!1550 = !{!1551, !1552, !1553}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "first_element", scope: !1549, file: !3, line: 47, baseType: !18, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "second_element", scope: !1549, file: !3, line: 48, baseType: !18, size: 32, offset: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !1549, file: !3, line: 49, baseType: !18, size: 32, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "num_sorted", scope: !1542, file: !3, line: 66, baseType: !18, size: 32, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "cost_one_list", scope: !1542, file: !3, line: 67, baseType: !1556, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_one_pair_p", file: !3, line: 58, baseType: !1557)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cost_one_pair_d", file: !3, line: 53, size: 128, elements: !1559)
!1559 = !{!1560, !1561, !1562}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "first_element", scope: !1558, file: !3, line: 55, baseType: !18, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "second_element", scope: !1558, file: !3, line: 56, baseType: !18, size: 32, offset: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1558, file: !3, line: 57, baseType: !1557, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_coalesce_pair_p", file: !3, line: 51, baseType: !1564)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !52, line: 59, baseType: !1569)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_conflicts_d", file: !3, line: 510, size: 128, elements: !1573)
!1573 = !{!1574, !1575}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1572, file: !3, line: 512, baseType: !27, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "conflicts", scope: !1572, file: !3, line: 513, baseType: !1576, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "live_track_p", file: !3, line: 664, baseType: !1578)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "live_track_d", file: !3, line: 659, size: 192, elements: !1580)
!1580 = !{!1581, !1582, !1583}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "live_base_var", scope: !1579, file: !3, line: 661, baseType: !915, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "live_base_partitions", scope: !1579, file: !3, line: 662, baseType: !1576, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1579, file: !3, line: 663, baseType: !6, size: 64, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1586 = !{!0}
!1587 = !{!1588, !1600, !1602, !1603, !1604, !1605, !1606, !1612}
!1588 = !DILocalVariable(name: "liveinfo", scope: !2, file: !3, line: 1364, type: !1589)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree_live_info_p", file: !7, line: 256, baseType: !1590)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_live_info_d", file: !7, line: 234, size: 448, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1599}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1591, file: !7, line: 237, baseType: !6, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1591, file: !7, line: 240, baseType: !915, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "livein", scope: !1591, file: !7, line: 243, baseType: !1576, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !1591, file: !7, line: 246, baseType: !18, size: 32, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "work_stack", scope: !1591, file: !7, line: 249, baseType: !31, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "stack_top", scope: !1591, file: !7, line: 252, baseType: !31, size: 64, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "liveout", scope: !1591, file: !7, line: 255, baseType: !1576, size: 64, offset: 384)
!1600 = !DILocalVariable(name: "graph", scope: !2, file: !3, line: 1365, type: !1601)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_conflicts_p", file: !3, line: 514, baseType: !1571)
!1602 = !DILocalVariable(name: "cl", scope: !2, file: !3, line: 1366, type: !1540)
!1603 = !DILocalVariable(name: "used_in_copies", scope: !2, file: !3, line: 1367, type: !915)
!1604 = !DILocalVariable(name: "map", scope: !2, file: !3, line: 1368, type: !6)
!1605 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 1369, type: !27)
!1606 = !DILocalVariable(name: "a", scope: !1607, file: !3, line: 1383, type: !51)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 1382, column: 2)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 1381, column: 7)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 1381, column: 7)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 1378, column: 5)
!1611 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1377, column: 7)
!1612 = !DILocalVariable(name: "slot", scope: !1613, file: !3, line: 1390, type: !383)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 1389, column: 6)
!1614 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 1385, column: 8)
!1615 = !{i32 2, !"Dwarf Version", i32 4}
!1616 = !{i32 2, !"Debug Info Version", i32 3}
!1617 = !{i32 1, !"wchar_size", i32 4}
!1618 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1619 = distinct !DISubprogram(name: "vprintf", scope: !1620, file: !1620, line: 39, type: !1621, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1631)
!1620 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!18, !1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !477)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1630}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1625, file: !3, baseType: !27, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1625, file: !3, baseType: !27, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1625, file: !3, baseType: !749, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1625, file: !3, baseType: !749, size: 64, offset: 128)
!1631 = !{!1632, !1633}
!1632 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1619, file: !1620, line: 39, type: !1623)
!1633 = !DILocalVariable(name: "__arg", arg: 2, scope: !1619, file: !1620, line: 39, type: !1624)
!1634 = !DILocation(line: 0, scope: !1619)
!1635 = !DILocation(line: 41, column: 20, scope: !1619)
!1636 = !DILocation(line: 41, column: 10, scope: !1619)
!1637 = !DILocation(line: 41, column: 3, scope: !1619)
!1638 = distinct !DISubprogram(name: "getchar", scope: !1620, file: !1620, line: 47, type: !1639, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!18}
!1641 = !{}
!1642 = !DILocation(line: 49, column: 16, scope: !1638)
!1643 = !DILocation(line: 49, column: 10, scope: !1638)
!1644 = !DILocation(line: 49, column: 3, scope: !1638)
!1645 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1620, file: !1620, line: 56, type: !1646, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1699)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!18, !1648}
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1650, line: 7, baseType: !1651)
!1650 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1652, line: 49, size: 1728, elements: !1653)
!1652 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1653 = !{!1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1669, !1671, !1672, !1673, !1676, !1678, !1679, !1680, !1683, !1685, !1688, !1691, !1692, !1693, !1694, !1695}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1651, file: !1652, line: 51, baseType: !18, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1651, file: !1652, line: 54, baseType: !951, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1651, file: !1652, line: 55, baseType: !951, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1651, file: !1652, line: 56, baseType: !951, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1651, file: !1652, line: 57, baseType: !951, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1651, file: !1652, line: 58, baseType: !951, size: 64, offset: 320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1651, file: !1652, line: 59, baseType: !951, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1651, file: !1652, line: 60, baseType: !951, size: 64, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1651, file: !1652, line: 61, baseType: !951, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1651, file: !1652, line: 64, baseType: !951, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1651, file: !1652, line: 65, baseType: !951, size: 64, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1651, file: !1652, line: 66, baseType: !951, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1651, file: !1652, line: 68, baseType: !1667, size: 64, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1652, line: 36, flags: DIFlagFwdDecl)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1651, file: !1652, line: 70, baseType: !1670, size: 64, offset: 832)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1651, file: !1652, line: 72, baseType: !18, size: 32, offset: 896)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1651, file: !1652, line: 73, baseType: !18, size: 32, offset: 928)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1651, file: !1652, line: 74, baseType: !1674, size: 64, offset: 960)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1675, line: 152, baseType: !107)
!1675 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1651, file: !1652, line: 77, baseType: !1677, size: 16, offset: 1024)
!1677 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1651, file: !1652, line: 78, baseType: !1292, size: 8, offset: 1040)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1651, file: !1652, line: 79, baseType: !133, size: 8, offset: 1048)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1651, file: !1652, line: 81, baseType: !1681, size: 64, offset: 1088)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1652, line: 43, baseType: null)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1651, file: !1652, line: 89, baseType: !1684, size: 64, offset: 1152)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1675, line: 153, baseType: !107)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1651, file: !1652, line: 91, baseType: !1686, size: 64, offset: 1216)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1652, line: 37, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1651, file: !1652, line: 92, baseType: !1689, size: 64, offset: 1280)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1652, line: 38, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1651, file: !1652, line: 93, baseType: !1670, size: 64, offset: 1344)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1651, file: !1652, line: 94, baseType: !749, size: 64, offset: 1408)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1651, file: !1652, line: 95, baseType: !495, size: 64, offset: 1472)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1651, file: !1652, line: 96, baseType: !18, size: 32, offset: 1536)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1651, file: !1652, line: 98, baseType: !1696, size: 160, offset: 1568)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 160, elements: !1697)
!1697 = !{!1698}
!1698 = !DISubrange(count: 20)
!1699 = !{!1700}
!1700 = !DILocalVariable(name: "__fp", arg: 1, scope: !1645, file: !1620, line: 56, type: !1648)
!1701 = !DILocation(line: 0, scope: !1645)
!1702 = !DILocation(line: 58, column: 10, scope: !1645)
!1703 = !DILocation(line: 58, column: 3, scope: !1645)
!1704 = distinct !DISubprogram(name: "getc_unlocked", scope: !1620, file: !1620, line: 66, type: !1646, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1705)
!1705 = !{!1706}
!1706 = !DILocalVariable(name: "__fp", arg: 1, scope: !1704, file: !1620, line: 66, type: !1648)
!1707 = !DILocation(line: 0, scope: !1704)
!1708 = !DILocation(line: 68, column: 10, scope: !1704)
!1709 = !DILocation(line: 68, column: 3, scope: !1704)
!1710 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1620, file: !1620, line: 73, type: !1639, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1641)
!1711 = !DILocation(line: 75, column: 10, scope: !1710)
!1712 = !DILocation(line: 75, column: 3, scope: !1710)
!1713 = distinct !DISubprogram(name: "putchar", scope: !1620, file: !1620, line: 82, type: !1714, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1716)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!18, !18}
!1716 = !{!1717}
!1717 = !DILocalVariable(name: "__c", arg: 1, scope: !1713, file: !1620, line: 82, type: !18)
!1718 = !DILocation(line: 0, scope: !1713)
!1719 = !DILocation(line: 84, column: 21, scope: !1713)
!1720 = !DILocation(line: 84, column: 10, scope: !1713)
!1721 = !DILocation(line: 84, column: 3, scope: !1713)
!1722 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1620, file: !1620, line: 91, type: !1723, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1725)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!18, !18, !1648}
!1725 = !{!1726, !1727}
!1726 = !DILocalVariable(name: "__c", arg: 1, scope: !1722, file: !1620, line: 91, type: !18)
!1727 = !DILocalVariable(name: "__stream", arg: 2, scope: !1722, file: !1620, line: 91, type: !1648)
!1728 = !DILocation(line: 0, scope: !1722)
!1729 = !DILocation(line: 93, column: 10, scope: !1722)
!1730 = !DILocation(line: 93, column: 3, scope: !1722)
!1731 = distinct !DISubprogram(name: "putc_unlocked", scope: !1620, file: !1620, line: 101, type: !1723, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1732)
!1732 = !{!1733, !1734}
!1733 = !DILocalVariable(name: "__c", arg: 1, scope: !1731, file: !1620, line: 101, type: !18)
!1734 = !DILocalVariable(name: "__stream", arg: 2, scope: !1731, file: !1620, line: 101, type: !1648)
!1735 = !DILocation(line: 0, scope: !1731)
!1736 = !DILocation(line: 103, column: 10, scope: !1731)
!1737 = !DILocation(line: 103, column: 3, scope: !1731)
!1738 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1620, file: !1620, line: 108, type: !1714, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1739)
!1739 = !{!1740}
!1740 = !DILocalVariable(name: "__c", arg: 1, scope: !1738, file: !1620, line: 108, type: !18)
!1741 = !DILocation(line: 0, scope: !1738)
!1742 = !DILocation(line: 110, column: 10, scope: !1738)
!1743 = !DILocation(line: 110, column: 3, scope: !1738)
!1744 = distinct !DISubprogram(name: "getline", scope: !1620, file: !1620, line: 118, type: !1745, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1749)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1747, !1539, !1748, !1648}
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1675, line: 193, baseType: !107)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!1749 = !{!1750, !1751, !1752}
!1750 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1744, file: !1620, line: 118, type: !1539)
!1751 = !DILocalVariable(name: "__n", arg: 2, scope: !1744, file: !1620, line: 118, type: !1748)
!1752 = !DILocalVariable(name: "__stream", arg: 3, scope: !1744, file: !1620, line: 118, type: !1648)
!1753 = !DILocation(line: 0, scope: !1744)
!1754 = !DILocation(line: 120, column: 10, scope: !1744)
!1755 = !DILocation(line: 120, column: 3, scope: !1744)
!1756 = distinct !DISubprogram(name: "feof_unlocked", scope: !1620, file: !1620, line: 128, type: !1646, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1757)
!1757 = !{!1758}
!1758 = !DILocalVariable(name: "__stream", arg: 1, scope: !1756, file: !1620, line: 128, type: !1648)
!1759 = !DILocation(line: 0, scope: !1756)
!1760 = !DILocation(line: 130, column: 10, scope: !1756)
!1761 = !DILocation(line: 130, column: 3, scope: !1756)
!1762 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1620, file: !1620, line: 135, type: !1646, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1763)
!1763 = !{!1764}
!1764 = !DILocalVariable(name: "__stream", arg: 1, scope: !1762, file: !1620, line: 135, type: !1648)
!1765 = !DILocation(line: 0, scope: !1762)
!1766 = !DILocation(line: 137, column: 10, scope: !1762)
!1767 = !DILocation(line: 137, column: 3, scope: !1762)
!1768 = distinct !DISubprogram(name: "tolower", scope: !1769, file: !1769, line: 207, type: !1714, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1770)
!1769 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1770 = !{!1771}
!1771 = !DILocalVariable(name: "__c", arg: 1, scope: !1768, file: !1769, line: 207, type: !18)
!1772 = !DILocation(line: 0, scope: !1768)
!1773 = !DILocation(line: 209, column: 22, scope: !1768)
!1774 = !DILocation(line: 209, column: 39, scope: !1768)
!1775 = !DILocation(line: 209, column: 38, scope: !1768)
!1776 = !DILocation(line: 209, column: 37, scope: !1768)
!1777 = !DILocation(line: 209, column: 10, scope: !1768)
!1778 = !DILocation(line: 209, column: 3, scope: !1768)
!1779 = distinct !DISubprogram(name: "toupper", scope: !1769, file: !1769, line: 213, type: !1714, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1780)
!1780 = !{!1781}
!1781 = !DILocalVariable(name: "__c", arg: 1, scope: !1779, file: !1769, line: 213, type: !18)
!1782 = !DILocation(line: 0, scope: !1779)
!1783 = !DILocation(line: 215, column: 22, scope: !1779)
!1784 = !DILocation(line: 215, column: 39, scope: !1779)
!1785 = !DILocation(line: 215, column: 38, scope: !1779)
!1786 = !DILocation(line: 215, column: 37, scope: !1779)
!1787 = !DILocation(line: 215, column: 10, scope: !1779)
!1788 = !DILocation(line: 215, column: 3, scope: !1779)
!1789 = distinct !DISubprogram(name: "atoi", scope: !1790, file: !1790, line: 361, type: !1791, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1793)
!1790 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!18, !477}
!1793 = !{!1794}
!1794 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1789, file: !1790, line: 361, type: !477)
!1795 = !DILocation(line: 0, scope: !1789)
!1796 = !DILocation(line: 363, column: 16, scope: !1789)
!1797 = !DILocation(line: 363, column: 10, scope: !1789)
!1798 = !DILocation(line: 363, column: 3, scope: !1789)
!1799 = distinct !DISubprogram(name: "atol", scope: !1790, file: !1790, line: 366, type: !1800, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1802)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!107, !477}
!1802 = !{!1803}
!1803 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1799, file: !1790, line: 366, type: !477)
!1804 = !DILocation(line: 0, scope: !1799)
!1805 = !DILocation(line: 368, column: 10, scope: !1799)
!1806 = !DILocation(line: 368, column: 3, scope: !1799)
!1807 = distinct !DISubprogram(name: "atoll", scope: !1790, file: !1790, line: 373, type: !1808, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1811)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!1810, !477}
!1810 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1811 = !{!1812}
!1812 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1807, file: !1790, line: 373, type: !477)
!1813 = !DILocation(line: 0, scope: !1807)
!1814 = !DILocation(line: 375, column: 10, scope: !1807)
!1815 = !DILocation(line: 375, column: 3, scope: !1807)
!1816 = distinct !DISubprogram(name: "bsearch", scope: !1817, file: !1817, line: 20, type: !1818, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1821)
!1817 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!749, !846, !846, !495, !495, !1820}
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1790, line: 808, baseType: !850)
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831}
!1822 = !DILocalVariable(name: "__key", arg: 1, scope: !1816, file: !1817, line: 20, type: !846)
!1823 = !DILocalVariable(name: "__base", arg: 2, scope: !1816, file: !1817, line: 20, type: !846)
!1824 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1816, file: !1817, line: 20, type: !495)
!1825 = !DILocalVariable(name: "__size", arg: 4, scope: !1816, file: !1817, line: 20, type: !495)
!1826 = !DILocalVariable(name: "__compar", arg: 5, scope: !1816, file: !1817, line: 21, type: !1820)
!1827 = !DILocalVariable(name: "__l", scope: !1816, file: !1817, line: 23, type: !495)
!1828 = !DILocalVariable(name: "__u", scope: !1816, file: !1817, line: 23, type: !495)
!1829 = !DILocalVariable(name: "__idx", scope: !1816, file: !1817, line: 23, type: !495)
!1830 = !DILocalVariable(name: "__p", scope: !1816, file: !1817, line: 24, type: !846)
!1831 = !DILocalVariable(name: "__comparison", scope: !1816, file: !1817, line: 25, type: !18)
!1832 = !DILocation(line: 0, scope: !1816)
!1833 = !DILocation(line: 29, column: 3, scope: !1816)
!1834 = !DILocation(line: 27, column: 7, scope: !1816)
!1835 = !DILocation(line: 29, column: 14, scope: !1816)
!1836 = !DILocation(line: 31, column: 20, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1816, file: !1817, line: 30, column: 5)
!1838 = !DILocation(line: 31, column: 27, scope: !1837)
!1839 = !DILocation(line: 32, column: 56, scope: !1837)
!1840 = !DILocation(line: 32, column: 47, scope: !1837)
!1841 = !DILocation(line: 33, column: 22, scope: !1837)
!1842 = !DILocation(line: 34, column: 24, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1837, file: !1817, line: 34, column: 11)
!1844 = !DILocation(line: 34, column: 11, scope: !1837)
!1845 = !DILocation(line: 36, column: 29, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1843, file: !1817, line: 36, column: 16)
!1847 = !DILocation(line: 36, column: 16, scope: !1843)
!1848 = !DILocation(line: 37, column: 14, scope: !1846)
!1849 = distinct !{!1849, !1833, !1850}
!1850 = !DILocation(line: 40, column: 5, scope: !1816)
!1851 = !DILocation(line: 43, column: 1, scope: !1816)
!1852 = distinct !DISubprogram(name: "atof", scope: !1853, file: !1853, line: 25, type: !1854, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1857)
!1853 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!1856, !477}
!1856 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1857 = !{!1858}
!1858 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1852, file: !1853, line: 25, type: !477)
!1859 = !DILocation(line: 0, scope: !1852)
!1860 = !DILocation(line: 27, column: 10, scope: !1852)
!1861 = !DILocation(line: 27, column: 3, scope: !1852)
!1862 = distinct !DISubprogram(name: "strtoimax", scope: !1863, file: !1863, line: 324, type: !1864, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1870)
!1863 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!1866, !1623, !1869, !18}
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1867, line: 101, baseType: !1868)
!1867 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1675, line: 72, baseType: !107)
!1869 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1539)
!1870 = !{!1871, !1872, !1873}
!1871 = !DILocalVariable(name: "nptr", arg: 1, scope: !1862, file: !1863, line: 324, type: !1623)
!1872 = !DILocalVariable(name: "endptr", arg: 2, scope: !1862, file: !1863, line: 324, type: !1869)
!1873 = !DILocalVariable(name: "base", arg: 3, scope: !1862, file: !1863, line: 324, type: !18)
!1874 = !DILocation(line: 0, scope: !1862)
!1875 = !DILocation(line: 327, column: 10, scope: !1862)
!1876 = !DILocation(line: 327, column: 3, scope: !1862)
!1877 = distinct !DISubprogram(name: "strtoumax", scope: !1863, file: !1863, line: 336, type: !1878, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1882)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1880, !1623, !1869, !18}
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1867, line: 102, baseType: !1881)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1675, line: 73, baseType: !105)
!1882 = !{!1883, !1884, !1885}
!1883 = !DILocalVariable(name: "nptr", arg: 1, scope: !1877, file: !1863, line: 336, type: !1623)
!1884 = !DILocalVariable(name: "endptr", arg: 2, scope: !1877, file: !1863, line: 336, type: !1869)
!1885 = !DILocalVariable(name: "base", arg: 3, scope: !1877, file: !1863, line: 336, type: !18)
!1886 = !DILocation(line: 0, scope: !1877)
!1887 = !DILocation(line: 339, column: 10, scope: !1877)
!1888 = !DILocation(line: 339, column: 3, scope: !1877)
!1889 = distinct !DISubprogram(name: "wcstoimax", scope: !1863, file: !1863, line: 348, type: !1890, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1899)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!1866, !1892, !1896, !18}
!1892 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1893)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1895)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1863, line: 34, baseType: !18)
!1896 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1897)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1899 = !{!1900, !1901, !1902}
!1900 = !DILocalVariable(name: "nptr", arg: 1, scope: !1889, file: !1863, line: 348, type: !1892)
!1901 = !DILocalVariable(name: "endptr", arg: 2, scope: !1889, file: !1863, line: 348, type: !1896)
!1902 = !DILocalVariable(name: "base", arg: 3, scope: !1889, file: !1863, line: 348, type: !18)
!1903 = !DILocation(line: 0, scope: !1889)
!1904 = !DILocation(line: 351, column: 10, scope: !1889)
!1905 = !DILocation(line: 351, column: 3, scope: !1889)
!1906 = distinct !DISubprogram(name: "wcstoumax", scope: !1863, file: !1863, line: 362, type: !1907, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!1880, !1892, !1896, !18}
!1909 = !{!1910, !1911, !1912}
!1910 = !DILocalVariable(name: "nptr", arg: 1, scope: !1906, file: !1863, line: 362, type: !1892)
!1911 = !DILocalVariable(name: "endptr", arg: 2, scope: !1906, file: !1863, line: 362, type: !1896)
!1912 = !DILocalVariable(name: "base", arg: 3, scope: !1906, file: !1863, line: 362, type: !18)
!1913 = !DILocation(line: 0, scope: !1906)
!1914 = !DILocation(line: 365, column: 10, scope: !1906)
!1915 = !DILocation(line: 365, column: 3, scope: !1906)
!1916 = distinct !DISubprogram(name: "stat", scope: !1917, file: !1917, line: 453, type: !1918, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1957)
!1917 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!18, !477, !1920}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1922, line: 46, size: 1152, elements: !1923)
!1922 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1923 = !{!1924, !1926, !1928, !1930, !1932, !1934, !1936, !1937, !1938, !1939, !1941, !1943, !1951, !1952, !1953}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1921, file: !1922, line: 48, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1675, line: 145, baseType: !105)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1921, file: !1922, line: 53, baseType: !1927, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1675, line: 148, baseType: !105)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1921, file: !1922, line: 61, baseType: !1929, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1675, line: 151, baseType: !105)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1921, file: !1922, line: 62, baseType: !1931, size: 32, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1675, line: 150, baseType: !27)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1921, file: !1922, line: 64, baseType: !1933, size: 32, offset: 224)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1675, line: 146, baseType: !27)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1921, file: !1922, line: 65, baseType: !1935, size: 32, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1675, line: 147, baseType: !27)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1921, file: !1922, line: 67, baseType: !18, size: 32, offset: 288)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1921, file: !1922, line: 69, baseType: !1925, size: 64, offset: 320)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1921, file: !1922, line: 74, baseType: !1674, size: 64, offset: 384)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1921, file: !1922, line: 78, baseType: !1940, size: 64, offset: 448)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1675, line: 174, baseType: !107)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1921, file: !1922, line: 80, baseType: !1942, size: 64, offset: 512)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1675, line: 179, baseType: !107)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1921, file: !1922, line: 91, baseType: !1944, size: 128, offset: 576)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1945, line: 10, size: 128, elements: !1946)
!1945 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1946 = !{!1947, !1949}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1944, file: !1945, line: 12, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1675, line: 160, baseType: !107)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1944, file: !1945, line: 16, baseType: !1950, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1675, line: 196, baseType: !107)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1921, file: !1922, line: 92, baseType: !1944, size: 128, offset: 704)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1921, file: !1922, line: 93, baseType: !1944, size: 128, offset: 832)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1921, file: !1922, line: 106, baseType: !1954, size: 192, offset: 960)
!1954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1950, size: 192, elements: !1955)
!1955 = !{!1956}
!1956 = !DISubrange(count: 3)
!1957 = !{!1958, !1959}
!1958 = !DILocalVariable(name: "__path", arg: 1, scope: !1916, file: !1917, line: 453, type: !477)
!1959 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1916, file: !1917, line: 453, type: !1920)
!1960 = !DILocation(line: 0, scope: !1916)
!1961 = !DILocation(line: 455, column: 10, scope: !1916)
!1962 = !DILocation(line: 455, column: 3, scope: !1916)
!1963 = distinct !DISubprogram(name: "lstat", scope: !1917, file: !1917, line: 460, type: !1918, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1964)
!1964 = !{!1965, !1966}
!1965 = !DILocalVariable(name: "__path", arg: 1, scope: !1963, file: !1917, line: 460, type: !477)
!1966 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1963, file: !1917, line: 460, type: !1920)
!1967 = !DILocation(line: 0, scope: !1963)
!1968 = !DILocation(line: 462, column: 10, scope: !1963)
!1969 = !DILocation(line: 462, column: 3, scope: !1963)
!1970 = distinct !DISubprogram(name: "fstat", scope: !1917, file: !1917, line: 467, type: !1971, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1973)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!18, !18, !1920}
!1973 = !{!1974, !1975}
!1974 = !DILocalVariable(name: "__fd", arg: 1, scope: !1970, file: !1917, line: 467, type: !18)
!1975 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1970, file: !1917, line: 467, type: !1920)
!1976 = !DILocation(line: 0, scope: !1970)
!1977 = !DILocation(line: 469, column: 10, scope: !1970)
!1978 = !DILocation(line: 469, column: 3, scope: !1970)
!1979 = distinct !DISubprogram(name: "fstatat", scope: !1917, file: !1917, line: 474, type: !1980, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1982)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!18, !18, !477, !1920, !18}
!1982 = !{!1983, !1984, !1985, !1986}
!1983 = !DILocalVariable(name: "__fd", arg: 1, scope: !1979, file: !1917, line: 474, type: !18)
!1984 = !DILocalVariable(name: "__filename", arg: 2, scope: !1979, file: !1917, line: 474, type: !477)
!1985 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1979, file: !1917, line: 474, type: !1920)
!1986 = !DILocalVariable(name: "__flag", arg: 4, scope: !1979, file: !1917, line: 474, type: !18)
!1987 = !DILocation(line: 0, scope: !1979)
!1988 = !DILocation(line: 477, column: 10, scope: !1979)
!1989 = !DILocation(line: 477, column: 3, scope: !1979)
!1990 = distinct !DISubprogram(name: "mknod", scope: !1917, file: !1917, line: 483, type: !1991, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!18, !477, !1931, !1925}
!1993 = !{!1994, !1995, !1996}
!1994 = !DILocalVariable(name: "__path", arg: 1, scope: !1990, file: !1917, line: 483, type: !477)
!1995 = !DILocalVariable(name: "__mode", arg: 2, scope: !1990, file: !1917, line: 483, type: !1931)
!1996 = !DILocalVariable(name: "__dev", arg: 3, scope: !1990, file: !1917, line: 483, type: !1925)
!1997 = !DILocation(line: 0, scope: !1990)
!1998 = !DILocation(line: 485, column: 10, scope: !1990)
!1999 = !DILocation(line: 485, column: 3, scope: !1990)
!2000 = distinct !DISubprogram(name: "mknodat", scope: !1917, file: !1917, line: 491, type: !2001, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!18, !18, !477, !1931, !1925}
!2003 = !{!2004, !2005, !2006, !2007}
!2004 = !DILocalVariable(name: "__fd", arg: 1, scope: !2000, file: !1917, line: 491, type: !18)
!2005 = !DILocalVariable(name: "__path", arg: 2, scope: !2000, file: !1917, line: 491, type: !477)
!2006 = !DILocalVariable(name: "__mode", arg: 3, scope: !2000, file: !1917, line: 491, type: !1931)
!2007 = !DILocalVariable(name: "__dev", arg: 4, scope: !2000, file: !1917, line: 491, type: !1925)
!2008 = !DILocation(line: 0, scope: !2000)
!2009 = !DILocation(line: 494, column: 10, scope: !2000)
!2010 = !DILocation(line: 494, column: 3, scope: !2000)
!2011 = distinct !DISubprogram(name: "stat64", scope: !1917, file: !1917, line: 502, type: !2012, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2034)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!18, !477, !2014}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1922, line: 119, size: 1152, elements: !2016)
!2016 = !{!2017, !2018, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2030, !2031, !2032, !2033}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2015, file: !1922, line: 121, baseType: !1925, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2015, file: !1922, line: 123, baseType: !2019, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1675, line: 149, baseType: !105)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2015, file: !1922, line: 124, baseType: !1929, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2015, file: !1922, line: 125, baseType: !1931, size: 32, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2015, file: !1922, line: 132, baseType: !1933, size: 32, offset: 224)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2015, file: !1922, line: 133, baseType: !1935, size: 32, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2015, file: !1922, line: 135, baseType: !18, size: 32, offset: 288)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2015, file: !1922, line: 136, baseType: !1925, size: 64, offset: 320)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2015, file: !1922, line: 137, baseType: !1674, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2015, file: !1922, line: 143, baseType: !1940, size: 64, offset: 448)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2015, file: !1922, line: 144, baseType: !2029, size: 64, offset: 512)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1675, line: 180, baseType: !107)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2015, file: !1922, line: 152, baseType: !1944, size: 128, offset: 576)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2015, file: !1922, line: 153, baseType: !1944, size: 128, offset: 704)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2015, file: !1922, line: 154, baseType: !1944, size: 128, offset: 832)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2015, file: !1922, line: 164, baseType: !1954, size: 192, offset: 960)
!2034 = !{!2035, !2036}
!2035 = !DILocalVariable(name: "__path", arg: 1, scope: !2011, file: !1917, line: 502, type: !477)
!2036 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2011, file: !1917, line: 502, type: !2014)
!2037 = !DILocation(line: 0, scope: !2011)
!2038 = !DILocation(line: 504, column: 10, scope: !2011)
!2039 = !DILocation(line: 504, column: 3, scope: !2011)
!2040 = distinct !DISubprogram(name: "lstat64", scope: !1917, file: !1917, line: 509, type: !2012, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2041)
!2041 = !{!2042, !2043}
!2042 = !DILocalVariable(name: "__path", arg: 1, scope: !2040, file: !1917, line: 509, type: !477)
!2043 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2040, file: !1917, line: 509, type: !2014)
!2044 = !DILocation(line: 0, scope: !2040)
!2045 = !DILocation(line: 511, column: 10, scope: !2040)
!2046 = !DILocation(line: 511, column: 3, scope: !2040)
!2047 = distinct !DISubprogram(name: "fstat64", scope: !1917, file: !1917, line: 516, type: !2048, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2050)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!18, !18, !2014}
!2050 = !{!2051, !2052}
!2051 = !DILocalVariable(name: "__fd", arg: 1, scope: !2047, file: !1917, line: 516, type: !18)
!2052 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2047, file: !1917, line: 516, type: !2014)
!2053 = !DILocation(line: 0, scope: !2047)
!2054 = !DILocation(line: 518, column: 10, scope: !2047)
!2055 = !DILocation(line: 518, column: 3, scope: !2047)
!2056 = distinct !DISubprogram(name: "fstatat64", scope: !1917, file: !1917, line: 523, type: !2057, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!18, !18, !477, !2014, !18}
!2059 = !{!2060, !2061, !2062, !2063}
!2060 = !DILocalVariable(name: "__fd", arg: 1, scope: !2056, file: !1917, line: 523, type: !18)
!2061 = !DILocalVariable(name: "__filename", arg: 2, scope: !2056, file: !1917, line: 523, type: !477)
!2062 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2056, file: !1917, line: 523, type: !2014)
!2063 = !DILocalVariable(name: "__flag", arg: 4, scope: !2056, file: !1917, line: 523, type: !18)
!2064 = !DILocation(line: 0, scope: !2056)
!2065 = !DILocation(line: 526, column: 10, scope: !2056)
!2066 = !DILocation(line: 526, column: 3, scope: !2056)
!2067 = !DILocation(line: 1367, column: 27, scope: !2)
!2068 = !DILocation(line: 0, scope: !2)
!2069 = !DILocation(line: 1372, column: 8, scope: !2)
!2070 = !DILocation(line: 1373, column: 9, scope: !2)
!2071 = !DILocation(line: 1377, column: 8, scope: !1611)
!2072 = !DILocation(line: 1377, column: 7, scope: !2)
!2073 = !DILocation(line: 1379, column: 23, scope: !1610)
!2074 = !DILocation(line: 1379, column: 21, scope: !1610)
!2075 = !DILocation(line: 1381, column: 12, scope: !1609)
!2076 = !DILocation(line: 0, scope: !1609)
!2077 = !DILocation(line: 1381, column: 23, scope: !1608)
!2078 = !DILocation(line: 1381, column: 21, scope: !1608)
!2079 = !DILocation(line: 1381, column: 7, scope: !1609)
!2080 = !DILocation(line: 1383, column: 13, scope: !1607)
!2081 = !DILocation(line: 0, scope: !1607)
!2082 = !DILocation(line: 1385, column: 8, scope: !1614)
!2083 = !DILocation(line: 1386, column: 8, scope: !1614)
!2084 = !DILocation(line: 1386, column: 11, scope: !1614)
!2085 = !DILocation(line: 1387, column: 8, scope: !1614)
!2086 = !DILocation(line: 1387, column: 12, scope: !1614)
!2087 = !DILocation(line: 1388, column: 8, scope: !1614)
!2088 = !DILocation(line: 1388, column: 13, scope: !1614)
!2089 = !DILocation(line: 1388, column: 31, scope: !1614)
!2090 = !DILocation(line: 1388, column: 35, scope: !1614)
!2091 = !DILocation(line: 1385, column: 8, scope: !1607)
!2092 = !DILocation(line: 1390, column: 46, scope: !1613)
!2093 = !DILocation(line: 1390, column: 61, scope: !1613)
!2094 = !DILocation(line: 1390, column: 30, scope: !1613)
!2095 = !DILocation(line: 1390, column: 21, scope: !1613)
!2096 = !DILocation(line: 0, scope: !1613)
!2097 = !DILocation(line: 1392, column: 13, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 1392, column: 12)
!2099 = !DILocation(line: 1392, column: 12, scope: !1613)
!2100 = !DILocation(line: 1393, column: 9, scope: !2098)
!2101 = !DILocation(line: 1393, column: 3, scope: !2098)
!2102 = !DILocation(line: 1396, column: 23, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 1395, column: 3)
!2104 = !DILocation(line: 1396, column: 45, scope: !2103)
!2105 = !DILocation(line: 1396, column: 5, scope: !2103)
!2106 = !DILocation(line: 1398, column: 37, scope: !2103)
!2107 = !DILocation(line: 1398, column: 5, scope: !2103)
!2108 = !DILocation(line: 1399, column: 37, scope: !2103)
!2109 = !DILocation(line: 1399, column: 5, scope: !2103)
!2110 = !DILocation(line: 1381, column: 39, scope: !1608)
!2111 = !DILocation(line: 1381, column: 7, scope: !1608)
!2112 = distinct !{!2112, !2079, !2113}
!2113 = !DILocation(line: 1402, column: 2, scope: !1609)
!2114 = !DILocation(line: 1403, column: 20, scope: !1610)
!2115 = !DILocation(line: 1403, column: 7, scope: !1610)
!2116 = !DILocation(line: 1404, column: 5, scope: !1610)
!2117 = !DILocation(line: 1405, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1405, column: 7)
!2119 = !DILocation(line: 1405, column: 17, scope: !2118)
!2120 = !DILocation(line: 1405, column: 21, scope: !2118)
!2121 = !DILocation(line: 1405, column: 32, scope: !2118)
!2122 = !DILocation(line: 1405, column: 7, scope: !2)
!2123 = !DILocation(line: 1406, column: 5, scope: !2118)
!2124 = !DILocation(line: 1409, column: 3, scope: !2)
!2125 = !DILocation(line: 1410, column: 3, scope: !2)
!2126 = !DILocation(line: 1412, column: 7, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1412, column: 7)
!2128 = !DILocation(line: 1412, column: 32, scope: !2127)
!2129 = !DILocation(line: 1412, column: 7, scope: !2)
!2130 = !DILocation(line: 1414, column: 7, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 1413, column: 5)
!2132 = !DILocation(line: 1415, column: 7, scope: !2131)
!2133 = !DILocation(line: 1418, column: 7, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1418, column: 7)
!2135 = !DILocation(line: 1418, column: 17, scope: !2134)
!2136 = !DILocation(line: 1418, column: 21, scope: !2134)
!2137 = !DILocation(line: 1418, column: 32, scope: !2134)
!2138 = !DILocation(line: 1418, column: 7, scope: !2)
!2139 = !DILocation(line: 1419, column: 5, scope: !2134)
!2140 = !DILocation(line: 1421, column: 14, scope: !2)
!2141 = !DILocation(line: 1423, column: 7, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1423, column: 7)
!2143 = !DILocation(line: 1423, column: 17, scope: !2142)
!2144 = !DILocation(line: 1423, column: 21, scope: !2142)
!2145 = !DILocation(line: 1423, column: 32, scope: !2142)
!2146 = !DILocation(line: 1423, column: 7, scope: !2)
!2147 = !DILocation(line: 1424, column: 5, scope: !2142)
!2148 = !DILocation(line: 1427, column: 11, scope: !2)
!2149 = !DILocation(line: 1428, column: 3, scope: !2)
!2150 = !DILocation(line: 1429, column: 7, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1429, column: 7)
!2152 = !DILocation(line: 1429, column: 17, scope: !2151)
!2153 = !DILocation(line: 1429, column: 21, scope: !2151)
!2154 = !DILocation(line: 1429, column: 32, scope: !2151)
!2155 = !DILocation(line: 1429, column: 7, scope: !2)
!2156 = !DILocation(line: 1430, column: 5, scope: !2151)
!2157 = !DILocation(line: 1432, column: 3, scope: !2)
!2158 = !DILocation(line: 1434, column: 7, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1434, column: 7)
!2160 = !DILocation(line: 1434, column: 17, scope: !2159)
!2161 = !DILocation(line: 1434, column: 21, scope: !2159)
!2162 = !DILocation(line: 1434, column: 32, scope: !2159)
!2163 = !DILocation(line: 1434, column: 7, scope: !2)
!2164 = !DILocation(line: 1436, column: 7, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 1435, column: 5)
!2166 = !DILocation(line: 1437, column: 27, scope: !2165)
!2167 = !DILocation(line: 1437, column: 7, scope: !2165)
!2168 = !DILocation(line: 1443, column: 7, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1443, column: 7)
!2170 = !DILocation(line: 1438, column: 5, scope: !2165)
!2171 = !DILocation(line: 1443, column: 17, scope: !2169)
!2172 = !DILocation(line: 1443, column: 21, scope: !2169)
!2173 = !DILocation(line: 1443, column: 32, scope: !2169)
!2174 = !DILocation(line: 1443, column: 7, scope: !2)
!2175 = !DILocation(line: 1444, column: 5, scope: !2169)
!2176 = !DILocation(line: 1448, column: 11, scope: !2)
!2177 = !DILocation(line: 1448, column: 12, scope: !2)
!2178 = !DILocation(line: 1448, column: 23, scope: !2)
!2179 = !DILocation(line: 1447, column: 3, scope: !2)
!2180 = !DILocation(line: 1451, column: 3, scope: !2)
!2181 = !DILocation(line: 1452, column: 3, scope: !2)
!2182 = !DILocation(line: 1454, column: 3, scope: !2)
!2183 = !DILocation(line: 1455, column: 1, scope: !2)
!2184 = distinct !DISubprogram(name: "create_coalesce_list", scope: !3, file: !3, line: 220, type: !2185, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!1540}
!2187 = !{!2188, !2189}
!2188 = !DILocalVariable(name: "list", scope: !2184, file: !3, line: 222, type: !1540)
!2189 = !DILocalVariable(name: "size", scope: !2184, file: !3, line: 223, type: !27)
!2190 = !DILocation(line: 223, column: 19, scope: !2184)
!2191 = !DILocation(line: 223, column: 33, scope: !2184)
!2192 = !DILocation(line: 0, scope: !2184)
!2193 = !DILocation(line: 225, column: 7, scope: !2184)
!2194 = !DILocation(line: 228, column: 28, scope: !2184)
!2195 = !DILocation(line: 228, column: 10, scope: !2184)
!2196 = !DILocation(line: 229, column: 29, scope: !2184)
!2197 = !DILocation(line: 229, column: 16, scope: !2184)
!2198 = !DILocation(line: 229, column: 9, scope: !2184)
!2199 = !DILocation(line: 229, column: 14, scope: !2184)
!2200 = !DILocation(line: 231, column: 9, scope: !2184)
!2201 = !DILocation(line: 231, column: 16, scope: !2184)
!2202 = !DILocation(line: 232, column: 9, scope: !2184)
!2203 = !DILocation(line: 232, column: 20, scope: !2184)
!2204 = !DILocation(line: 233, column: 9, scope: !2184)
!2205 = !DILocation(line: 233, column: 23, scope: !2184)
!2206 = !DILocation(line: 234, column: 3, scope: !2184)
!2207 = distinct !DISubprogram(name: "create_outofssa_var_map", scope: !3, file: !3, line: 986, type: !2208, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2210)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!6, !1540, !915}
!2210 = !{!2211, !2212, !2213, !2220, !2221, !2222, !2223, !2224, !2225, !2238, !2239, !2240, !2241, !2242, !2246, !2250, !2251, !2252, !2253, !2254, !2258, !2263, !2269, !2270, !2272, !2273, !2274, !2275, !2276, !2280, !2281, !2282}
!2211 = !DILocalVariable(name: "cl", arg: 1, scope: !2207, file: !3, line: 986, type: !1540)
!2212 = !DILocalVariable(name: "used_in_copy", arg: 2, scope: !2207, file: !3, line: 986, type: !915)
!2213 = !DILocalVariable(name: "gsi", scope: !2207, file: !3, line: 988, type: !2214)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !340, line: 265, baseType: !2215)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 254, size: 192, elements: !2216)
!2216 = !{!2217, !2218, !2219}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2215, file: !340, line: 257, baseType: !343, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2215, file: !340, line: 263, baseType: !337, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2215, file: !340, line: 264, baseType: !310, size: 64, offset: 128)
!2220 = !DILocalVariable(name: "bb", scope: !2207, file: !3, line: 989, type: !310)
!2221 = !DILocalVariable(name: "var", scope: !2207, file: !3, line: 990, type: !51)
!2222 = !DILocalVariable(name: "stmt", scope: !2207, file: !3, line: 991, type: !348)
!2223 = !DILocalVariable(name: "first", scope: !2207, file: !3, line: 992, type: !51)
!2224 = !DILocalVariable(name: "map", scope: !2207, file: !3, line: 993, type: !6)
!2225 = !DILocalVariable(name: "iter", scope: !2207, file: !3, line: 994, type: !2226)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !379, line: 140, baseType: !2227)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !379, line: 131, size: 320, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2233, !2235, !2236, !2237}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2227, file: !379, line: 133, baseType: !152, size: 8)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2227, file: !379, line: 134, baseType: !1467, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2227, file: !379, line: 135, baseType: !2232, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !379, line: 42, baseType: !377)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2227, file: !379, line: 136, baseType: !2234, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !379, line: 50, baseType: !385)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !2227, file: !379, line: 137, baseType: !18, size: 32, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !2227, file: !379, line: 138, baseType: !18, size: 32, offset: 224)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !2227, file: !379, line: 139, baseType: !348, size: 64, offset: 256)
!2238 = !DILocalVariable(name: "v1", scope: !2207, file: !3, line: 995, type: !18)
!2239 = !DILocalVariable(name: "v2", scope: !2207, file: !3, line: 995, type: !18)
!2240 = !DILocalVariable(name: "cost", scope: !2207, file: !3, line: 995, type: !18)
!2241 = !DILocalVariable(name: "i", scope: !2207, file: !3, line: 996, type: !27)
!2242 = !DILocalVariable(name: "arg", scope: !2243, file: !3, line: 1010, type: !51)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 1009, column: 5)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 1008, column: 3)
!2245 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 1008, column: 3)
!2246 = !DILocalVariable(name: "phi", scope: !2247, file: !3, line: 1014, type: !348)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 1013, column: 2)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 1012, column: 7)
!2249 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 1012, column: 7)
!2250 = !DILocalVariable(name: "i", scope: !2247, file: !3, line: 1015, type: !495)
!2251 = !DILocalVariable(name: "ver", scope: !2247, file: !3, line: 1016, type: !18)
!2252 = !DILocalVariable(name: "res", scope: !2247, file: !3, line: 1017, type: !51)
!2253 = !DILocalVariable(name: "saw_copy", scope: !2247, file: !3, line: 1018, type: !152)
!2254 = !DILocalVariable(name: "e", scope: !2255, file: !3, line: 1028, type: !327)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1027, column: 6)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 1026, column: 4)
!2257 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 1026, column: 4)
!2258 = !DILocalVariable(name: "cost", scope: !2259, file: !3, line: 1039, type: !18)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 1038, column: 7)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 1037, column: 9)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1034, column: 10)
!2262 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 1032, column: 12)
!2263 = !DILocalVariable(name: "lhs", scope: !2264, file: !3, line: 1070, type: !51)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 1069, column: 8)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 1067, column: 6)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 1055, column: 9)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 1054, column: 7)
!2268 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 1054, column: 7)
!2269 = !DILocalVariable(name: "rhs1", scope: !2264, file: !3, line: 1071, type: !51)
!2270 = !DILocalVariable(name: "noutputs", scope: !2271, file: !3, line: 1090, type: !105)
!2271 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 1089, column: 8)
!2272 = !DILocalVariable(name: "i", scope: !2271, file: !3, line: 1090, type: !105)
!2273 = !DILocalVariable(name: "ninputs", scope: !2271, file: !3, line: 1091, type: !105)
!2274 = !DILocalVariable(name: "outputs", scope: !2271, file: !3, line: 1092, type: !383)
!2275 = !DILocalVariable(name: "link", scope: !2271, file: !3, line: 1092, type: !51)
!2276 = !DILocalVariable(name: "constraint", scope: !2277, file: !3, line: 1103, type: !477)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 1102, column: 5)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 1101, column: 3)
!2279 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 1101, column: 3)
!2280 = !DILocalVariable(name: "input", scope: !2277, file: !3, line: 1104, type: !51)
!2281 = !DILocalVariable(name: "end", scope: !2277, file: !3, line: 1105, type: !951)
!2282 = !DILocalVariable(name: "match", scope: !2277, file: !3, line: 1106, type: !105)
!2283 = !DILocation(line: 0, scope: !2207)
!2284 = !DILocation(line: 988, column: 3, scope: !2207)
!2285 = !DILocation(line: 994, column: 3, scope: !2207)
!2286 = !DILocation(line: 1006, column: 23, scope: !2207)
!2287 = !DILocation(line: 1006, column: 9, scope: !2207)
!2288 = !DILocation(line: 1008, column: 3, scope: !2245)
!2289 = !DILocation(line: 0, scope: !2249)
!2290 = !DILocation(line: 0, scope: !2268)
!2291 = !DILocation(line: 0, scope: !2277)
!2292 = !DILocation(line: 1008, column: 3, scope: !2244)
!2293 = !DILocation(line: 0, scope: !2245)
!2294 = !DILocation(line: 1158, column: 3, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 1158, column: 3)
!2296 = !DILocation(line: 1012, column: 18, scope: !2249)
!2297 = !DILocation(line: 1012, column: 12, scope: !2249)
!2298 = !DILocation(line: 1012, column: 40, scope: !2248)
!2299 = !DILocation(line: 1012, column: 39, scope: !2248)
!2300 = !DILocation(line: 1012, column: 7, scope: !2249)
!2301 = !DILocation(line: 1014, column: 17, scope: !2247)
!2302 = !DILocation(line: 0, scope: !2247)
!2303 = !DILocation(line: 1020, column: 10, scope: !2247)
!2304 = !DILocation(line: 1021, column: 10, scope: !2247)
!2305 = !DILocation(line: 1022, column: 4, scope: !2247)
!2306 = !DILocation(line: 0, scope: !2262)
!2307 = !DILocation(line: 1026, column: 9, scope: !2257)
!2308 = !DILocation(line: 0, scope: !2257)
!2309 = !DILocation(line: 1026, column: 20, scope: !2256)
!2310 = !DILocation(line: 1026, column: 18, scope: !2256)
!2311 = !DILocation(line: 1026, column: 4, scope: !2257)
!2312 = !DILocation(line: 1028, column: 17, scope: !2255)
!2313 = !DILocation(line: 0, scope: !2255)
!2314 = !DILocation(line: 1029, column: 14, scope: !2255)
!2315 = !DILocation(line: 0, scope: !2243)
!2316 = !DILocation(line: 1030, column: 12, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 1030, column: 12)
!2318 = !DILocation(line: 1030, column: 28, scope: !2317)
!2319 = !DILocation(line: 1030, column: 12, scope: !2255)
!2320 = !DILocation(line: 1031, column: 3, scope: !2317)
!2321 = !DILocation(line: 1032, column: 12, scope: !2262)
!2322 = !DILocation(line: 1032, column: 28, scope: !2262)
!2323 = !DILocation(line: 1033, column: 5, scope: !2262)
!2324 = !DILocation(line: 1033, column: 8, scope: !2262)
!2325 = !DILocation(line: 1033, column: 30, scope: !2262)
!2326 = !DILocation(line: 1033, column: 27, scope: !2262)
!2327 = !DILocation(line: 1032, column: 12, scope: !2255)
!2328 = !DILocation(line: 1036, column: 35, scope: !2261)
!2329 = !DILocation(line: 1036, column: 5, scope: !2261)
!2330 = !DILocation(line: 1037, column: 13, scope: !2260)
!2331 = !DILocation(line: 1037, column: 19, scope: !2260)
!2332 = !DILocation(line: 1037, column: 36, scope: !2260)
!2333 = !DILocation(line: 1037, column: 9, scope: !2261)
!2334 = !DILocation(line: 1039, column: 20, scope: !2259)
!2335 = !DILocation(line: 0, scope: !2259)
!2336 = !DILocation(line: 1040, column: 18, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 1040, column: 13)
!2338 = !DILocation(line: 1040, column: 23, scope: !2337)
!2339 = !DILocation(line: 1040, column: 26, scope: !2337)
!2340 = !DILocation(line: 1040, column: 13, scope: !2259)
!2341 = !DILocation(line: 1041, column: 43, scope: !2337)
!2342 = !DILocation(line: 1041, column: 11, scope: !2337)
!2343 = !DILocation(line: 1043, column: 27, scope: !2337)
!2344 = !DILocation(line: 1043, column: 4, scope: !2337)
!2345 = !DILocation(line: 1047, column: 17, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1047, column: 14)
!2347 = !DILocation(line: 1047, column: 23, scope: !2346)
!2348 = !DILocation(line: 1047, column: 14, scope: !2262)
!2349 = !DILocation(line: 1048, column: 5, scope: !2346)
!2350 = !DILocation(line: 1026, column: 48, scope: !2256)
!2351 = !DILocation(line: 1026, column: 4, scope: !2256)
!2352 = distinct !{!2352, !2311, !2353}
!2353 = !DILocation(line: 1049, column: 6, scope: !2257)
!2354 = !DILocation(line: 1050, column: 8, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 1050, column: 8)
!2356 = !DILocation(line: 1050, column: 8, scope: !2247)
!2357 = !DILocation(line: 1051, column: 6, scope: !2355)
!2358 = !DILocation(line: 1012, column: 57, scope: !2248)
!2359 = !DILocation(line: 1012, column: 7, scope: !2248)
!2360 = distinct !{!2360, !2300, !2361}
!2361 = !DILocation(line: 1052, column: 2, scope: !2249)
!2362 = !DILocation(line: 1054, column: 18, scope: !2268)
!2363 = !DILocation(line: 1054, column: 12, scope: !2268)
!2364 = !DILocation(line: 1054, column: 38, scope: !2267)
!2365 = !DILocation(line: 1054, column: 37, scope: !2267)
!2366 = !DILocation(line: 1054, column: 7, scope: !2268)
!2367 = !DILocation(line: 1056, column: 11, scope: !2266)
!2368 = !DILocation(line: 1058, column: 8, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 1058, column: 8)
!2370 = !DILocation(line: 1058, column: 8, scope: !2266)
!2371 = !DILocation(line: 1062, column: 4, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 1062, column: 4)
!2373 = !DILocation(line: 0, scope: !2372)
!2374 = !DILocation(line: 1062, column: 4, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2372, file: !3, line: 1062, column: 4)
!2376 = !DILocation(line: 1063, column: 6, scope: !2375)
!2377 = distinct !{!2377, !2371, !2378}
!2378 = !DILocation(line: 1063, column: 38, scope: !2372)
!2379 = !DILocation(line: 1066, column: 12, scope: !2266)
!2380 = !DILocation(line: 1066, column: 4, scope: !2266)
!2381 = !DILocation(line: 1070, column: 14, scope: !2264)
!2382 = !DILocation(line: 0, scope: !2264)
!2383 = !DILocation(line: 1071, column: 15, scope: !2264)
!2384 = !DILocation(line: 1073, column: 7, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 1073, column: 7)
!2386 = !DILocation(line: 1074, column: 21, scope: !2385)
!2387 = !DILocation(line: 1074, column: 24, scope: !2385)
!2388 = !DILocation(line: 1074, column: 40, scope: !2385)
!2389 = !DILocation(line: 1075, column: 7, scope: !2385)
!2390 = !DILocation(line: 1075, column: 10, scope: !2385)
!2391 = !DILocation(line: 1075, column: 27, scope: !2385)
!2392 = !DILocation(line: 1076, column: 7, scope: !2385)
!2393 = !DILocation(line: 1076, column: 10, scope: !2385)
!2394 = !DILocation(line: 1076, column: 32, scope: !2385)
!2395 = !DILocation(line: 1076, column: 29, scope: !2385)
!2396 = !DILocation(line: 1073, column: 7, scope: !2264)
!2397 = !DILocation(line: 1078, column: 12, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 1077, column: 5)
!2399 = !DILocation(line: 1079, column: 12, scope: !2398)
!2400 = !DILocation(line: 1080, column: 14, scope: !2398)
!2401 = !DILocation(line: 1081, column: 7, scope: !2398)
!2402 = !DILocation(line: 1082, column: 7, scope: !2398)
!2403 = !DILocation(line: 1083, column: 7, scope: !2398)
!2404 = !DILocation(line: 1084, column: 5, scope: !2398)
!2405 = !DILocation(line: 1093, column: 14, scope: !2271)
!2406 = !DILocation(line: 0, scope: !2271)
!2407 = !DILocation(line: 1094, column: 13, scope: !2271)
!2408 = !DILocation(line: 1095, column: 22, scope: !2271)
!2409 = !DILocation(line: 1096, column: 8, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 1096, column: 3)
!2411 = !DILocation(line: 0, scope: !2410)
!2412 = !DILocation(line: 1096, column: 17, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 1096, column: 3)
!2414 = !DILocation(line: 1096, column: 3, scope: !2410)
!2415 = !DILocation(line: 1101, column: 3, scope: !2279)
!2416 = !DILocation(line: 1097, column: 40, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 1096, column: 34)
!2418 = !DILocation(line: 1097, column: 12, scope: !2417)
!2419 = !DILocation(line: 1098, column: 18, scope: !2417)
!2420 = !DILocation(line: 1098, column: 5, scope: !2417)
!2421 = !DILocation(line: 1098, column: 16, scope: !2417)
!2422 = !DILocation(line: 1096, column: 29, scope: !2413)
!2423 = !DILocation(line: 1096, column: 3, scope: !2413)
!2424 = distinct !{!2424, !2414, !2425}
!2425 = !DILocation(line: 1099, column: 17, scope: !2410)
!2426 = !DILocation(line: 0, scope: !2279)
!2427 = !DILocation(line: 1101, column: 17, scope: !2278)
!2428 = !DILocation(line: 1105, column: 7, scope: !2277)
!2429 = !DILocation(line: 1108, column: 41, scope: !2277)
!2430 = !DILocation(line: 1108, column: 14, scope: !2277)
!2431 = !DILocation(line: 1110, column: 11, scope: !2277)
!2432 = !DILocation(line: 1111, column: 15, scope: !2277)
!2433 = !DILocation(line: 1113, column: 11, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 1113, column: 11)
!2435 = !DILocation(line: 1113, column: 29, scope: !2434)
!2436 = !DILocation(line: 1113, column: 11, scope: !2277)
!2437 = !DILocation(line: 1116, column: 15, scope: !2277)
!2438 = !DILocation(line: 1117, column: 17, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 1117, column: 11)
!2440 = !DILocation(line: 1117, column: 32, scope: !2439)
!2441 = !DILocation(line: 1117, column: 36, scope: !2439)
!2442 = !DILocation(line: 1117, column: 29, scope: !2439)
!2443 = !DILocation(line: 1120, column: 11, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 1120, column: 11)
!2445 = !DILocation(line: 1120, column: 38, scope: !2444)
!2446 = !DILocation(line: 1120, column: 11, scope: !2277)
!2447 = !DILocation(line: 1123, column: 12, scope: !2277)
!2448 = !DILocation(line: 1124, column: 12, scope: !2277)
!2449 = !DILocation(line: 1126, column: 11, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 1126, column: 11)
!2451 = !DILocation(line: 1126, column: 44, scope: !2450)
!2452 = !DILocation(line: 1126, column: 41, scope: !2450)
!2453 = !DILocation(line: 1126, column: 11, scope: !2277)
!2454 = !DILocation(line: 1129, column: 12, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1127, column: 9)
!2456 = !DILocation(line: 1128, column: 11, scope: !2455)
!2457 = !DILocation(line: 1130, column: 4, scope: !2455)
!2458 = !DILocation(line: 1131, column: 4, scope: !2455)
!2459 = !DILocation(line: 1132, column: 4, scope: !2455)
!2460 = !DILocation(line: 1133, column: 9, scope: !2455)
!2461 = !DILocation(line: 1134, column: 5, scope: !2278)
!2462 = !DILocation(line: 1101, column: 28, scope: !2278)
!2463 = !DILocation(line: 1101, column: 3, scope: !2278)
!2464 = distinct !{!2464, !2415, !2465}
!2465 = !DILocation(line: 1134, column: 5, scope: !2279)
!2466 = !DILocation(line: 1054, column: 55, scope: !2267)
!2467 = !DILocation(line: 1054, column: 7, scope: !2267)
!2468 = distinct !{!2468, !2366, !2469}
!2469 = !DILocation(line: 1152, column: 2, scope: !2268)
!2470 = !DILocation(line: 0, scope: !2244)
!2471 = distinct !{!2471, !2288, !2472}
!2472 = !DILocation(line: 1153, column: 5, scope: !2245)
!2473 = !DILocation(line: 1158, column: 19, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 1158, column: 3)
!2475 = !DILocation(line: 0, scope: !2295)
!2476 = !DILocation(line: 1158, column: 17, scope: !2474)
!2477 = !DILocation(line: 1160, column: 13, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1159, column: 5)
!2479 = !DILocation(line: 1161, column: 15, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1161, column: 11)
!2481 = !DILocation(line: 1161, column: 28, scope: !2480)
!2482 = !DILocation(line: 1161, column: 31, scope: !2480)
!2483 = !DILocation(line: 1161, column: 11, scope: !2478)
!2484 = !DILocation(line: 1164, column: 8, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 1164, column: 8)
!2486 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1162, column: 9)
!2487 = !DILocation(line: 1164, column: 39, scope: !2485)
!2488 = !DILocation(line: 1164, column: 8, scope: !2486)
!2489 = !DILocation(line: 1166, column: 18, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 1166, column: 12)
!2491 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 1165, column: 6)
!2492 = !DILocation(line: 1166, column: 12, scope: !2491)
!2493 = !DILocation(line: 1170, column: 5, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 1169, column: 3)
!2495 = !DILocation(line: 1171, column: 10, scope: !2494)
!2496 = !DILocation(line: 1172, column: 10, scope: !2494)
!2497 = !DILocation(line: 1173, column: 5, scope: !2494)
!2498 = !DILocation(line: 1174, column: 5, scope: !2494)
!2499 = !DILocation(line: 1175, column: 30, scope: !2494)
!2500 = !DILocation(line: 1175, column: 12, scope: !2494)
!2501 = !DILocation(line: 1176, column: 5, scope: !2494)
!2502 = !DILocation(line: 1182, column: 34, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 1182, column: 8)
!2504 = !DILocation(line: 1182, column: 28, scope: !2503)
!2505 = !DILocation(line: 1182, column: 8, scope: !2503)
!2506 = !DILocation(line: 1182, column: 54, scope: !2503)
!2507 = !DILocation(line: 1183, column: 8, scope: !2503)
!2508 = !DILocation(line: 1183, column: 12, scope: !2503)
!2509 = !DILocation(line: 1182, column: 8, scope: !2486)
!2510 = !DILocation(line: 1184, column: 36, scope: !2503)
!2511 = !DILocation(line: 1184, column: 6, scope: !2503)
!2512 = !DILocation(line: 1158, column: 35, scope: !2474)
!2513 = !DILocation(line: 1158, column: 3, scope: !2474)
!2514 = distinct !{!2514, !2294, !2515}
!2515 = !DILocation(line: 1186, column: 5, scope: !2295)
!2516 = !DILocation(line: 1210, column: 1, scope: !2207)
!2517 = !DILocation(line: 1209, column: 3, scope: !2207)
!2518 = distinct !DISubprogram(name: "hash_ssa_name_by_var", scope: !3, file: !3, line: 1342, type: !843, scopeLine: 1343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2519)
!2519 = !{!2520, !2521}
!2520 = !DILocalVariable(name: "p", arg: 1, scope: !2518, file: !3, line: 1342, type: !846)
!2521 = !DILocalVariable(name: "n", scope: !2518, file: !3, line: 1344, type: !1568)
!2522 = !DILocation(line: 0, scope: !2518)
!2523 = !DILocation(line: 1345, column: 22, scope: !2518)
!2524 = !DILocation(line: 1345, column: 41, scope: !2518)
!2525 = !DILocation(line: 1345, column: 3, scope: !2518)
!2526 = distinct !DISubprogram(name: "eq_ssa_name_by_var", scope: !3, file: !3, line: 1351, type: !851, scopeLine: 1352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2527)
!2527 = !{!2528, !2529, !2530, !2531}
!2528 = !DILocalVariable(name: "p1", arg: 1, scope: !2526, file: !3, line: 1351, type: !846)
!2529 = !DILocalVariable(name: "p2", arg: 2, scope: !2526, file: !3, line: 1351, type: !846)
!2530 = !DILocalVariable(name: "n1", scope: !2526, file: !3, line: 1353, type: !1568)
!2531 = !DILocalVariable(name: "n2", scope: !2526, file: !3, line: 1354, type: !1568)
!2532 = !DILocation(line: 0, scope: !2526)
!2533 = !DILocation(line: 1355, column: 10, scope: !2526)
!2534 = !DILocation(line: 1355, column: 31, scope: !2526)
!2535 = !DILocation(line: 1355, column: 28, scope: !2526)
!2536 = !DILocation(line: 1355, column: 3, scope: !2526)
!2537 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !40, file: !40, line: 182, type: !2538, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2542)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!27, !2540}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!2542 = !{!2543}
!2543 = !DILocalVariable(name: "vec_", arg: 1, scope: !2537, file: !40, line: 182, type: !2540)
!2544 = !DILocation(line: 0, scope: !2537)
!2545 = !DILocation(line: 182, column: 1, scope: !2537)
!2546 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !40, file: !40, line: 182, type: !2547, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2549)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!51, !2540, !27}
!2549 = !{!2550, !2551}
!2550 = !DILocalVariable(name: "vec_", arg: 1, scope: !2546, file: !40, line: 182, type: !2540)
!2551 = !DILocalVariable(name: "ix_", arg: 2, scope: !2546, file: !40, line: 182, type: !27)
!2552 = !DILocation(line: 0, scope: !2546)
!2553 = !DILocation(line: 182, column: 1, scope: !2546)
!2554 = distinct !DISubprogram(name: "has_zero_uses", scope: !2555, file: !2555, line: 332, type: !2556, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2558)
!2555 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!152, !1568}
!2558 = !{!2559, !2560}
!2559 = !DILocalVariable(name: "var", arg: 1, scope: !2554, file: !2555, line: 332, type: !1568)
!2560 = !DILocalVariable(name: "ptr", scope: !2554, file: !2555, line: 334, type: !2561)
!2561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2562)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2564)
!2564 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !40, line: 1893, baseType: !390)
!2565 = !DILocation(line: 0, scope: !2554)
!2566 = !DILocation(line: 334, column: 42, scope: !2554)
!2567 = !DILocation(line: 337, column: 19, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2554, file: !2555, line: 337, column: 7)
!2569 = !DILocation(line: 337, column: 11, scope: !2568)
!2570 = !DILocation(line: 337, column: 7, scope: !2554)
!2571 = !DILocation(line: 342, column: 8, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2554, file: !2555, line: 342, column: 7)
!2573 = !DILocation(line: 342, column: 7, scope: !2554)
!2574 = !DILocation(line: 345, column: 10, scope: !2554)
!2575 = !DILocation(line: 345, column: 3, scope: !2554)
!2576 = !DILocation(line: 346, column: 1, scope: !2554)
!2577 = distinct !DISubprogram(name: "add_coalesce", scope: !3, file: !3, line: 310, type: !2578, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{null, !1540, !18, !18, !18}
!2580 = !{!2581, !2582, !2583, !2584, !2585}
!2581 = !DILocalVariable(name: "cl", arg: 1, scope: !2577, file: !3, line: 310, type: !1540)
!2582 = !DILocalVariable(name: "p1", arg: 2, scope: !2577, file: !3, line: 310, type: !18)
!2583 = !DILocalVariable(name: "p2", arg: 3, scope: !2577, file: !3, line: 310, type: !18)
!2584 = !DILocalVariable(name: "value", arg: 4, scope: !2577, file: !3, line: 310, type: !18)
!2585 = !DILocalVariable(name: "node", scope: !2577, file: !3, line: 312, type: !1547)
!2586 = !DILocation(line: 0, scope: !2577)
!2587 = !DILocation(line: 314, column: 3, scope: !2577)
!2588 = !DILocation(line: 315, column: 10, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 315, column: 7)
!2590 = !DILocation(line: 315, column: 7, scope: !2577)
!2591 = !DILocation(line: 318, column: 10, scope: !2577)
!2592 = !DILocation(line: 321, column: 13, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 321, column: 7)
!2594 = !DILocation(line: 321, column: 18, scope: !2593)
!2595 = !DILocation(line: 321, column: 7, scope: !2577)
!2596 = !DILocation(line: 323, column: 17, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 323, column: 11)
!2598 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 322, column: 5)
!2599 = !DILocation(line: 323, column: 11, scope: !2598)
!2600 = !DILocation(line: 324, column: 13, scope: !2597)
!2601 = !DILocation(line: 324, column: 2, scope: !2597)
!2602 = !DILocation(line: 326, column: 13, scope: !2597)
!2603 = !DILocation(line: 328, column: 1, scope: !2577)
!2604 = distinct !DISubprogram(name: "num_var_partitions", scope: !7, file: !7, line: 101, type: !2605, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!27, !6}
!2607 = !{!2608}
!2608 = !DILocalVariable(name: "map", arg: 1, scope: !2604, file: !7, line: 101, type: !6)
!2609 = !DILocation(line: 0, scope: !2604)
!2610 = !DILocation(line: 103, column: 15, scope: !2604)
!2611 = !DILocation(line: 103, column: 3, scope: !2604)
!2612 = distinct !DISubprogram(name: "delete_coalesce_list", scope: !3, file: !3, line: 241, type: !2613, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null, !1540}
!2615 = !{!2616}
!2616 = !DILocalVariable(name: "cl", arg: 1, scope: !2612, file: !3, line: 241, type: !1540)
!2617 = !DILocation(line: 0, scope: !2612)
!2618 = !DILocation(line: 243, column: 3, scope: !2612)
!2619 = !DILocation(line: 244, column: 20, scope: !2612)
!2620 = !DILocation(line: 244, column: 3, scope: !2612)
!2621 = !DILocation(line: 245, column: 11, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 245, column: 7)
!2623 = !DILocation(line: 245, column: 7, scope: !2622)
!2624 = !DILocation(line: 245, column: 7, scope: !2612)
!2625 = !DILocation(line: 246, column: 5, scope: !2622)
!2626 = !DILocation(line: 247, column: 3, scope: !2612)
!2627 = !DILocation(line: 248, column: 9, scope: !2612)
!2628 = !DILocation(line: 248, column: 3, scope: !2612)
!2629 = !DILocation(line: 249, column: 1, scope: !2612)
!2630 = distinct !DISubprogram(name: "build_ssa_conflict_graph", scope: !3, file: !3, line: 851, type: !2631, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!1601, !1589}
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639, !2640, !2644, !2648, !2649, !2652, !2653, !2657}
!2634 = !DILocalVariable(name: "liveinfo", arg: 1, scope: !2630, file: !3, line: 851, type: !1589)
!2635 = !DILocalVariable(name: "graph", scope: !2630, file: !3, line: 853, type: !1601)
!2636 = !DILocalVariable(name: "map", scope: !2630, file: !3, line: 854, type: !6)
!2637 = !DILocalVariable(name: "bb", scope: !2630, file: !3, line: 855, type: !310)
!2638 = !DILocalVariable(name: "iter", scope: !2630, file: !3, line: 856, type: !2226)
!2639 = !DILocalVariable(name: "live", scope: !2630, file: !3, line: 857, type: !1577)
!2640 = !DILocalVariable(name: "gsi", scope: !2641, file: !3, line: 866, type: !2214)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 865, column: 5)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 864, column: 3)
!2643 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 864, column: 3)
!2644 = !DILocalVariable(name: "var", scope: !2645, file: !3, line: 873, type: !51)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 872, column: 9)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 871, column: 7)
!2647 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 871, column: 7)
!2648 = !DILocalVariable(name: "stmt", scope: !2645, file: !3, line: 874, type: !348)
!2649 = !DILocalVariable(name: "lhs", scope: !2650, file: !3, line: 885, type: !51)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 884, column: 6)
!2651 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 883, column: 8)
!2652 = !DILocalVariable(name: "rhs1", scope: !2650, file: !3, line: 886, type: !51)
!2653 = !DILocalVariable(name: "phi", scope: !2654, file: !3, line: 910, type: !348)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 909, column: 2)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 908, column: 7)
!2656 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 908, column: 7)
!2657 = !DILocalVariable(name: "result", scope: !2654, file: !3, line: 911, type: !51)
!2658 = !DILocation(line: 0, scope: !2630)
!2659 = !DILocation(line: 856, column: 3, scope: !2630)
!2660 = !DILocation(line: 859, column: 9, scope: !2630)
!2661 = !DILocation(line: 860, column: 30, scope: !2630)
!2662 = !DILocation(line: 860, column: 11, scope: !2630)
!2663 = !DILocation(line: 862, column: 10, scope: !2630)
!2664 = !DILocation(line: 864, column: 3, scope: !2643)
!2665 = !DILocation(line: 0, scope: !2641)
!2666 = !DILocation(line: 0, scope: !2647)
!2667 = !DILocation(line: 0, scope: !2656)
!2668 = !DILocation(line: 864, column: 3, scope: !2642)
!2669 = !DILocation(line: 0, scope: !2643)
!2670 = !DILocation(line: 866, column: 7, scope: !2641)
!2671 = !DILocation(line: 869, column: 30, scope: !2641)
!2672 = !DILocation(line: 869, column: 7, scope: !2641)
!2673 = !DILocation(line: 871, column: 18, scope: !2647)
!2674 = !DILocation(line: 871, column: 12, scope: !2647)
!2675 = !DILocation(line: 871, column: 37, scope: !2646)
!2676 = !DILocation(line: 871, column: 36, scope: !2646)
!2677 = !DILocation(line: 871, column: 7, scope: !2647)
!2678 = !DILocation(line: 874, column: 18, scope: !2645)
!2679 = !DILocation(line: 0, scope: !2645)
!2680 = !DILocation(line: 883, column: 8, scope: !2651)
!2681 = !DILocation(line: 883, column: 8, scope: !2645)
!2682 = !DILocation(line: 885, column: 19, scope: !2650)
!2683 = !DILocation(line: 0, scope: !2650)
!2684 = !DILocation(line: 886, column: 20, scope: !2650)
!2685 = !DILocation(line: 887, column: 12, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 887, column: 12)
!2687 = !DILocation(line: 888, column: 19, scope: !2686)
!2688 = !DILocation(line: 888, column: 22, scope: !2686)
!2689 = !DILocation(line: 888, column: 38, scope: !2686)
!2690 = !DILocation(line: 889, column: 19, scope: !2686)
!2691 = !DILocation(line: 889, column: 22, scope: !2686)
!2692 = !DILocation(line: 889, column: 39, scope: !2686)
!2693 = !DILocation(line: 887, column: 12, scope: !2650)
!2694 = !DILocation(line: 890, column: 3, scope: !2686)
!2695 = !DILocation(line: 892, column: 13, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 892, column: 13)
!2697 = !DILocation(line: 892, column: 13, scope: !2651)
!2698 = !DILocation(line: 895, column: 4, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 895, column: 4)
!2700 = !DILocation(line: 0, scope: !2699)
!2701 = !DILocation(line: 895, column: 4, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 895, column: 4)
!2703 = !DILocation(line: 896, column: 6, scope: !2702)
!2704 = distinct !{!2704, !2698, !2705}
!2705 = !DILocation(line: 896, column: 46, scope: !2699)
!2706 = !DILocation(line: 898, column: 4, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 898, column: 4)
!2708 = !DILocation(line: 0, scope: !2707)
!2709 = !DILocation(line: 898, column: 4, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 898, column: 4)
!2711 = !DILocation(line: 899, column: 6, scope: !2710)
!2712 = distinct !{!2712, !2706, !2713}
!2713 = !DILocation(line: 899, column: 39, scope: !2707)
!2714 = !DILocation(line: 871, column: 54, scope: !2646)
!2715 = !DILocation(line: 871, column: 7, scope: !2646)
!2716 = distinct !{!2716, !2677, !2717}
!2717 = !DILocation(line: 900, column: 2, scope: !2647)
!2718 = !DILocation(line: 908, column: 18, scope: !2656)
!2719 = !DILocation(line: 908, column: 12, scope: !2656)
!2720 = !DILocation(line: 908, column: 40, scope: !2655)
!2721 = !DILocation(line: 908, column: 39, scope: !2655)
!2722 = !DILocation(line: 908, column: 7, scope: !2656)
!2723 = !DILocation(line: 910, column: 17, scope: !2654)
!2724 = !DILocation(line: 0, scope: !2654)
!2725 = !DILocation(line: 911, column: 18, scope: !2654)
!2726 = !DILocation(line: 912, column: 8, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 912, column: 8)
!2728 = !DILocation(line: 912, column: 8, scope: !2654)
!2729 = !DILocation(line: 913, column: 6, scope: !2727)
!2730 = !DILocation(line: 908, column: 57, scope: !2655)
!2731 = !DILocation(line: 908, column: 7, scope: !2655)
!2732 = distinct !{!2732, !2722, !2733}
!2733 = !DILocation(line: 914, column: 2, scope: !2656)
!2734 = !DILocation(line: 916, column: 6, scope: !2641)
!2735 = !DILocation(line: 917, column: 5, scope: !2642)
!2736 = !DILocation(line: 0, scope: !2642)
!2737 = distinct !{!2737, !2664, !2738}
!2738 = !DILocation(line: 917, column: 5, scope: !2643)
!2739 = !DILocation(line: 919, column: 3, scope: !2630)
!2740 = !DILocation(line: 921, column: 1, scope: !2630)
!2741 = !DILocation(line: 920, column: 3, scope: !2630)
!2742 = distinct !DISubprogram(name: "ssa_conflicts_dump", scope: !3, file: !3, line: 632, type: !2743, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{null, !1648, !1601}
!2745 = !{!2746, !2747, !2748}
!2746 = !DILocalVariable(name: "file", arg: 1, scope: !2742, file: !3, line: 632, type: !1648)
!2747 = !DILocalVariable(name: "ptr", arg: 2, scope: !2742, file: !3, line: 632, type: !1601)
!2748 = !DILocalVariable(name: "x", scope: !2742, file: !3, line: 634, type: !27)
!2749 = !DILocation(line: 0, scope: !2742)
!2750 = !DILocation(line: 636, column: 3, scope: !2742)
!2751 = !DILocation(line: 0, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 638, column: 3)
!2753 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 638, column: 3)
!2754 = !DILocation(line: 0, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 639, column: 9)
!2756 = !DILocation(line: 638, column: 8, scope: !2753)
!2757 = !DILocation(line: 0, scope: !2753)
!2758 = !DILocation(line: 638, column: 24, scope: !2752)
!2759 = !DILocation(line: 638, column: 17, scope: !2752)
!2760 = !DILocation(line: 638, column: 3, scope: !2753)
!2761 = !DILocation(line: 639, column: 14, scope: !2755)
!2762 = !DILocation(line: 639, column: 9, scope: !2755)
!2763 = !DILocation(line: 639, column: 9, scope: !2752)
!2764 = !DILocation(line: 641, column: 11, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 640, column: 7)
!2766 = !DILocation(line: 641, column: 2, scope: !2765)
!2767 = !DILocation(line: 642, column: 2, scope: !2765)
!2768 = !DILocation(line: 643, column: 7, scope: !2765)
!2769 = !DILocation(line: 638, column: 31, scope: !2752)
!2770 = !DILocation(line: 638, column: 3, scope: !2752)
!2771 = distinct !{!2771, !2760, !2772}
!2772 = !DILocation(line: 643, column: 7, scope: !2753)
!2773 = !DILocation(line: 644, column: 1, scope: !2742)
!2774 = distinct !DISubprogram(name: "sort_coalesce_list", scope: !3, file: !3, line: 416, type: !2613, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2775)
!2775 = !{!2776, !2777, !2778, !2779, !2780}
!2776 = !DILocalVariable(name: "cl", arg: 1, scope: !2774, file: !3, line: 416, type: !1540)
!2777 = !DILocalVariable(name: "x", scope: !2774, file: !3, line: 418, type: !27)
!2778 = !DILocalVariable(name: "num", scope: !2774, file: !3, line: 418, type: !27)
!2779 = !DILocalVariable(name: "p", scope: !2774, file: !3, line: 419, type: !1547)
!2780 = !DILocalVariable(name: "ppi", scope: !2774, file: !3, line: 420, type: !2781)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "coalesce_pair_iterator", file: !3, line: 368, baseType: !2782)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 365, size: 192, elements: !2783)
!2783 = !{!2784}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "hti", scope: !2782, file: !3, line: 367, baseType: !2785, size: 192)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_iterator", file: !249, line: 98, baseType: !2786)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !249, line: 93, size: 192, elements: !2787)
!2787 = !{!2788, !2789, !2790}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "htab", scope: !2786, file: !249, line: 95, baseType: !835, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2786, file: !249, line: 96, baseType: !859, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2786, file: !249, line: 97, baseType: !859, size: 64, offset: 128)
!2791 = !DILocation(line: 0, scope: !2774)
!2792 = !DILocation(line: 420, column: 3, scope: !2774)
!2793 = !DILocation(line: 422, column: 3, scope: !2774)
!2794 = !DILocation(line: 424, column: 9, scope: !2774)
!2795 = !DILocation(line: 425, column: 7, scope: !2774)
!2796 = !DILocation(line: 425, column: 18, scope: !2774)
!2797 = !DILocation(line: 426, column: 11, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 426, column: 7)
!2799 = !DILocation(line: 426, column: 7, scope: !2774)
!2800 = !DILocation(line: 430, column: 16, scope: !2774)
!2801 = !DILocation(line: 430, column: 14, scope: !2774)
!2802 = !DILocation(line: 434, column: 3, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 434, column: 3)
!2804 = !DILocation(line: 0, scope: !2803)
!2805 = !DILocation(line: 434, column: 3, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 434, column: 3)
!2807 = !DILocation(line: 435, column: 9, scope: !2806)
!2808 = !DILocation(line: 435, column: 17, scope: !2806)
!2809 = !DILocation(line: 435, column: 5, scope: !2806)
!2810 = !DILocation(line: 435, column: 21, scope: !2806)
!2811 = distinct !{!2811, !2802, !2812}
!2812 = !DILocation(line: 435, column: 23, scope: !2803)
!2813 = !DILocation(line: 436, column: 3, scope: !2774)
!2814 = !DILocation(line: 439, column: 7, scope: !2774)
!2815 = !DILocation(line: 445, column: 15, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 445, column: 11)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 444, column: 5)
!2818 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 443, column: 7)
!2819 = !DILocation(line: 445, column: 11, scope: !2816)
!2820 = !DILocation(line: 445, column: 26, scope: !2816)
!2821 = !DILocation(line: 445, column: 33, scope: !2816)
!2822 = !DILocation(line: 445, column: 48, scope: !2816)
!2823 = !DILocation(line: 445, column: 31, scope: !2816)
!2824 = !DILocation(line: 445, column: 11, scope: !2817)
!2825 = !DILocation(line: 448, column: 18, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 446, column: 9)
!2827 = !DILocation(line: 449, column: 8, scope: !2826)
!2828 = !DILocation(line: 449, column: 4, scope: !2826)
!2829 = !DILocation(line: 449, column: 18, scope: !2826)
!2830 = !DILocation(line: 450, column: 2, scope: !2826)
!2831 = !DILocation(line: 455, column: 11, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 455, column: 7)
!2833 = !DILocation(line: 455, column: 7, scope: !2774)
!2834 = !DILocation(line: 457, column: 23, scope: !2832)
!2835 = !DILocation(line: 457, column: 7, scope: !2832)
!2836 = !DILocation(line: 461, column: 1, scope: !2774)
!2837 = distinct !DISubprogram(name: "dump_coalesce_list", scope: !3, file: !3, line: 467, type: !2838, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{null, !1648, !1540}
!2840 = !{!2841, !2842, !2843, !2844, !2845, !2846, !2847, !2853}
!2841 = !DILocalVariable(name: "f", arg: 1, scope: !2837, file: !3, line: 467, type: !1648)
!2842 = !DILocalVariable(name: "cl", arg: 2, scope: !2837, file: !3, line: 467, type: !1540)
!2843 = !DILocalVariable(name: "node", scope: !2837, file: !3, line: 469, type: !1547)
!2844 = !DILocalVariable(name: "ppi", scope: !2837, file: !3, line: 470, type: !2781)
!2845 = !DILocalVariable(name: "x", scope: !2837, file: !3, line: 471, type: !18)
!2846 = !DILocalVariable(name: "var", scope: !2837, file: !3, line: 472, type: !51)
!2847 = !DILocalVariable(name: "var1", scope: !2848, file: !3, line: 479, type: !51)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 478, column: 9)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 477, column: 7)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 477, column: 7)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 475, column: 5)
!2852 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 474, column: 7)
!2853 = !DILocalVariable(name: "var2", scope: !2848, file: !3, line: 480, type: !51)
!2854 = !DILocation(line: 0, scope: !2837)
!2855 = !DILocation(line: 470, column: 3, scope: !2837)
!2856 = !DILocation(line: 474, column: 11, scope: !2852)
!2857 = !DILocation(line: 474, column: 18, scope: !2852)
!2858 = !DILocation(line: 474, column: 7, scope: !2837)
!2859 = !DILocation(line: 476, column: 7, scope: !2851)
!2860 = !DILocation(line: 477, column: 7, scope: !2850)
!2861 = !DILocation(line: 0, scope: !2850)
!2862 = !DILocation(line: 477, column: 7, scope: !2849)
!2863 = !DILocation(line: 479, column: 16, scope: !2848)
!2864 = !DILocation(line: 0, scope: !2848)
!2865 = !DILocation(line: 480, column: 16, scope: !2848)
!2866 = !DILocation(line: 481, column: 4, scope: !2848)
!2867 = !DILocation(line: 482, column: 4, scope: !2848)
!2868 = !DILocation(line: 483, column: 4, scope: !2848)
!2869 = !DILocation(line: 484, column: 35, scope: !2848)
!2870 = !DILocation(line: 484, column: 4, scope: !2848)
!2871 = !DILocation(line: 485, column: 4, scope: !2848)
!2872 = distinct !{!2872, !2860, !2873}
!2873 = !DILocation(line: 486, column: 2, scope: !2850)
!2874 = !DILocation(line: 490, column: 7, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 489, column: 5)
!2876 = !DILocation(line: 491, column: 20, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 491, column: 7)
!2878 = !DILocation(line: 491, column: 12, scope: !2877)
!2879 = !DILocation(line: 0, scope: !2877)
!2880 = !DILocation(line: 491, column: 39, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 491, column: 7)
!2882 = !DILocation(line: 491, column: 7, scope: !2877)
!2883 = !DILocation(line: 493, column: 15, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 492, column: 9)
!2885 = !DILocation(line: 493, column: 11, scope: !2884)
!2886 = !DILocation(line: 494, column: 31, scope: !2884)
!2887 = !DILocation(line: 494, column: 4, scope: !2884)
!2888 = !DILocation(line: 495, column: 10, scope: !2884)
!2889 = !DILocation(line: 496, column: 4, scope: !2884)
!2890 = !DILocation(line: 497, column: 4, scope: !2884)
!2891 = !DILocation(line: 498, column: 10, scope: !2884)
!2892 = !DILocation(line: 499, column: 4, scope: !2884)
!2893 = !DILocation(line: 500, column: 4, scope: !2884)
!2894 = !DILocation(line: 491, column: 7, scope: !2881)
!2895 = distinct !{!2895, !2882, !2896}
!2896 = !DILocation(line: 501, column: 2, scope: !2877)
!2897 = !DILocation(line: 503, column: 1, scope: !2837)
!2898 = distinct !DISubprogram(name: "coalesce_partitions", scope: !3, file: !3, line: 1282, type: !2899, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{null, !6, !1601, !1540, !1648}
!2901 = !{!2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2920, !2928, !2932, !2933, !2934, !2935}
!2902 = !DILocalVariable(name: "map", arg: 1, scope: !2898, file: !3, line: 1282, type: !6)
!2903 = !DILocalVariable(name: "graph", arg: 2, scope: !2898, file: !3, line: 1282, type: !1601)
!2904 = !DILocalVariable(name: "cl", arg: 3, scope: !2898, file: !3, line: 1282, type: !1540)
!2905 = !DILocalVariable(name: "debug", arg: 4, scope: !2898, file: !3, line: 1283, type: !1648)
!2906 = !DILocalVariable(name: "x", scope: !2898, file: !3, line: 1285, type: !18)
!2907 = !DILocalVariable(name: "y", scope: !2898, file: !3, line: 1285, type: !18)
!2908 = !DILocalVariable(name: "var1", scope: !2898, file: !3, line: 1286, type: !51)
!2909 = !DILocalVariable(name: "var2", scope: !2898, file: !3, line: 1286, type: !51)
!2910 = !DILocalVariable(name: "cost", scope: !2898, file: !3, line: 1287, type: !18)
!2911 = !DILocalVariable(name: "bb", scope: !2898, file: !3, line: 1288, type: !310)
!2912 = !DILocalVariable(name: "e", scope: !2898, file: !3, line: 1289, type: !327)
!2913 = !DILocalVariable(name: "ei", scope: !2898, file: !3, line: 1290, type: !2914)
!2914 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !307, line: 682, baseType: !2915)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !307, line: 679, size: 128, elements: !2916)
!2916 = !{!2917, !2918}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2915, file: !307, line: 680, baseType: !27, size: 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2915, file: !307, line: 681, baseType: !2919, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!2920 = !DILocalVariable(name: "gsi", scope: !2921, file: !3, line: 1301, type: !2214)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 1300, column: 4)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 1299, column: 6)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 1298, column: 7)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 1298, column: 7)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 1297, column: 5)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 1296, column: 3)
!2927 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 1296, column: 3)
!2928 = !DILocalVariable(name: "phi", scope: !2929, file: !3, line: 1305, type: !348)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1304, column: 8)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 1302, column: 6)
!2931 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 1302, column: 6)
!2932 = !DILocalVariable(name: "res", scope: !2929, file: !3, line: 1306, type: !51)
!2933 = !DILocalVariable(name: "arg", scope: !2929, file: !3, line: 1307, type: !51)
!2934 = !DILocalVariable(name: "v1", scope: !2929, file: !3, line: 1308, type: !18)
!2935 = !DILocalVariable(name: "v2", scope: !2929, file: !3, line: 1309, type: !18)
!2936 = !DILocation(line: 0, scope: !2898)
!2937 = !DILocation(line: 1285, column: 3, scope: !2898)
!2938 = !DILocation(line: 1285, column: 7, scope: !2898)
!2939 = !DILocation(line: 1285, column: 14, scope: !2898)
!2940 = !DILocation(line: 1289, column: 3, scope: !2898)
!2941 = !DILocation(line: 1290, column: 3, scope: !2898)
!2942 = !DILocation(line: 1296, column: 3, scope: !2927)
!2943 = !DILocation(line: 0, scope: !2924)
!2944 = !DILocation(line: 0, scope: !2923)
!2945 = !DILocation(line: 0, scope: !2921)
!2946 = !DILocation(line: 0, scope: !2931)
!2947 = !DILocation(line: 0, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 1314, column: 7)
!2949 = !DILocation(line: 1296, column: 3, scope: !2926)
!2950 = !DILocation(line: 0, scope: !2927)
!2951 = !DILocation(line: 1325, column: 3, scope: !2898)
!2952 = !DILocation(line: 1325, column: 18, scope: !2898)
!2953 = !DILocation(line: 1325, column: 50, scope: !2898)
!2954 = !DILocation(line: 1327, column: 14, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 1326, column: 5)
!2956 = !DILocation(line: 1328, column: 14, scope: !2955)
!2957 = !DILocation(line: 1331, column: 7, scope: !2955)
!2958 = !DILocation(line: 1335, column: 37, scope: !2955)
!2959 = !DILocation(line: 1335, column: 40, scope: !2955)
!2960 = !DILocation(line: 1335, column: 7, scope: !2955)
!2961 = distinct !{!2961, !2951, !2962}
!2962 = !DILocation(line: 1336, column: 5, scope: !2898)
!2963 = !DILocation(line: 1337, column: 1, scope: !2898)
!2964 = !DILocation(line: 1298, column: 7, scope: !2924)
!2965 = !DILocation(line: 1298, column: 7, scope: !2923)
!2966 = !DILocation(line: 1299, column: 6, scope: !2922)
!2967 = !DILocation(line: 1299, column: 9, scope: !2922)
!2968 = !DILocation(line: 1299, column: 15, scope: !2922)
!2969 = !DILocation(line: 1299, column: 6, scope: !2923)
!2970 = !DILocation(line: 1301, column: 6, scope: !2921)
!2971 = !DILocation(line: 1302, column: 17, scope: !2931)
!2972 = !DILocation(line: 1302, column: 11, scope: !2931)
!2973 = !DILocation(line: 1302, column: 39, scope: !2930)
!2974 = !DILocation(line: 1302, column: 38, scope: !2930)
!2975 = !DILocation(line: 1302, column: 6, scope: !2931)
!2976 = !DILocation(line: 1305, column: 16, scope: !2929)
!2977 = !DILocation(line: 0, scope: !2929)
!2978 = !DILocation(line: 1306, column: 14, scope: !2929)
!2979 = !DILocation(line: 1307, column: 21, scope: !2929)
!2980 = !DILocation(line: 1308, column: 12, scope: !2929)
!2981 = !DILocation(line: 1309, column: 12, scope: !2929)
!2982 = !DILocation(line: 1311, column: 7, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 1311, column: 7)
!2984 = !DILocation(line: 1311, column: 29, scope: !2983)
!2985 = !DILocation(line: 1311, column: 26, scope: !2983)
!2986 = !DILocation(line: 1311, column: 7, scope: !2929)
!2987 = !DILocation(line: 1312, column: 28, scope: !2983)
!2988 = !DILocation(line: 1312, column: 31, scope: !2983)
!2989 = !DILocation(line: 1312, column: 5, scope: !2983)
!2990 = !DILocation(line: 1317, column: 8, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 1317, column: 7)
!2992 = !DILocation(line: 1317, column: 7, scope: !2929)
!2993 = !DILocation(line: 1318, column: 5, scope: !2991)
!2994 = !DILocation(line: 1303, column: 4, scope: !2930)
!2995 = !DILocation(line: 1302, column: 6, scope: !2930)
!2996 = distinct !{!2996, !2975, !2997}
!2997 = !DILocation(line: 1319, column: 8, scope: !2931)
!2998 = !DILocation(line: 1320, column: 4, scope: !2922)
!2999 = !DILocation(line: 1315, column: 5, scope: !2948)
!3000 = !DILocation(line: 1320, column: 4, scope: !2921)
!3001 = distinct !{!3001, !2964, !3002}
!3002 = !DILocation(line: 1320, column: 4, scope: !2924)
!3003 = !DILocation(line: 0, scope: !2926)
!3004 = distinct !{!3004, !2942, !3005}
!3005 = !DILocation(line: 1321, column: 5, scope: !2927)
!3006 = !DILocation(line: 1334, column: 2, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 1333, column: 11)
!3008 = distinct !DISubprogram(name: "ssa_conflicts_delete", scope: !3, file: !3, line: 534, type: !3009, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3011)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{null, !1601}
!3011 = !{!3012, !3013}
!3012 = !DILocalVariable(name: "ptr", arg: 1, scope: !3008, file: !3, line: 534, type: !1601)
!3013 = !DILocalVariable(name: "x", scope: !3008, file: !3, line: 536, type: !27)
!3014 = !DILocation(line: 0, scope: !3008)
!3015 = !DILocation(line: 0, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 537, column: 3)
!3017 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 537, column: 3)
!3018 = !DILocation(line: 537, column: 8, scope: !3017)
!3019 = !DILocation(line: 0, scope: !3017)
!3020 = !DILocation(line: 537, column: 24, scope: !3016)
!3021 = !DILocation(line: 537, column: 17, scope: !3016)
!3022 = !DILocation(line: 537, column: 3, scope: !3017)
!3023 = !DILocation(line: 538, column: 9, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 538, column: 9)
!3025 = !DILocation(line: 538, column: 9, scope: !3016)
!3026 = !DILocation(line: 539, column: 7, scope: !3024)
!3027 = !DILocation(line: 537, column: 31, scope: !3016)
!3028 = !DILocation(line: 537, column: 3, scope: !3016)
!3029 = distinct !{!3029, !3022, !3030}
!3030 = !DILocation(line: 539, column: 7, scope: !3017)
!3031 = !DILocation(line: 541, column: 9, scope: !3008)
!3032 = !DILocation(line: 541, column: 3, scope: !3008)
!3033 = !DILocation(line: 542, column: 9, scope: !3008)
!3034 = !DILocation(line: 542, column: 3, scope: !3008)
!3035 = !DILocation(line: 543, column: 1, scope: !3008)
!3036 = distinct !DISubprogram(name: "coalesce_pair_map_hash", scope: !3, file: !3, line: 194, type: !3037, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!27, !846}
!3039 = !{!3040, !3041, !3042}
!3040 = !DILocalVariable(name: "pair", arg: 1, scope: !3036, file: !3, line: 194, type: !846)
!3041 = !DILocalVariable(name: "a", scope: !3036, file: !3, line: 196, type: !845)
!3042 = !DILocalVariable(name: "b", scope: !3036, file: !3, line: 197, type: !845)
!3043 = !DILocation(line: 0, scope: !3036)
!3044 = !DILocation(line: 196, column: 60, scope: !3036)
!3045 = !DILocation(line: 197, column: 60, scope: !3036)
!3046 = !DILocation(line: 199, column: 10, scope: !3036)
!3047 = !DILocation(line: 199, column: 3, scope: !3036)
!3048 = distinct !DISubprogram(name: "coalesce_pair_map_eq", scope: !3, file: !3, line: 207, type: !851, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3049)
!3049 = !{!3050, !3051, !3052, !3053}
!3050 = !DILocalVariable(name: "pair1", arg: 1, scope: !3048, file: !3, line: 207, type: !846)
!3051 = !DILocalVariable(name: "pair2", arg: 2, scope: !3048, file: !3, line: 207, type: !846)
!3052 = !DILocalVariable(name: "p1", scope: !3048, file: !3, line: 209, type: !1585)
!3053 = !DILocalVariable(name: "p2", scope: !3048, file: !3, line: 210, type: !1585)
!3054 = !DILocation(line: 0, scope: !3048)
!3055 = !DILocation(line: 212, column: 15, scope: !3048)
!3056 = !DILocation(line: 212, column: 36, scope: !3048)
!3057 = !DILocation(line: 212, column: 29, scope: !3048)
!3058 = !DILocation(line: 213, column: 4, scope: !3048)
!3059 = !DILocation(line: 213, column: 11, scope: !3048)
!3060 = !DILocation(line: 213, column: 33, scope: !3048)
!3061 = !DILocation(line: 213, column: 26, scope: !3048)
!3062 = !DILocation(line: 212, column: 3, scope: !3048)
!3063 = distinct !DISubprogram(name: "gsi_end_p", scope: !340, file: !340, line: 4467, type: !3064, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!152, !2214}
!3066 = !{!3067}
!3067 = !DILocalVariable(name: "i", arg: 1, scope: !3063, file: !340, line: 4467, type: !2214)
!3068 = !DILocation(line: 4467, column: 33, scope: !3063)
!3069 = !DILocation(line: 4469, column: 12, scope: !3063)
!3070 = !DILocation(line: 4469, column: 16, scope: !3063)
!3071 = !DILocation(line: 4469, column: 10, scope: !3063)
!3072 = !DILocation(line: 4469, column: 3, scope: !3063)
!3073 = distinct !DISubprogram(name: "gsi_stmt", scope: !340, file: !340, line: 4501, type: !3074, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3076)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!348, !2214}
!3076 = !{!3077}
!3077 = !DILocalVariable(name: "i", arg: 1, scope: !3073, file: !340, line: 4501, type: !2214)
!3078 = !DILocation(line: 4501, column: 32, scope: !3073)
!3079 = !DILocation(line: 4503, column: 12, scope: !3073)
!3080 = !DILocation(line: 4503, column: 17, scope: !3073)
!3081 = !DILocation(line: 4503, column: 3, scope: !3073)
!3082 = distinct !DISubprogram(name: "gimple_phi_result", scope: !340, file: !340, line: 3071, type: !3083, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3086)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!51, !3085}
!3085 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !52, line: 60, baseType: !1566)
!3086 = !{!3087}
!3087 = !DILocalVariable(name: "gs", arg: 1, scope: !3082, file: !340, line: 3071, type: !3085)
!3088 = !DILocation(line: 0, scope: !3082)
!3089 = !DILocation(line: 3074, column: 25, scope: !3082)
!3090 = !DILocation(line: 3074, column: 3, scope: !3082)
!3091 = distinct !DISubprogram(name: "register_ssa_partition", scope: !7, file: !7, line: 195, type: !3092, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{null, !6, !51}
!3094 = !{!3095, !3096}
!3095 = !DILocalVariable(name: "map", arg: 1, scope: !3091, file: !7, line: 195, type: !6)
!3096 = !DILocalVariable(name: "ssa_var", arg: 2, scope: !3091, file: !7, line: 196, type: !51)
!3097 = !DILocation(line: 0, scope: !3091)
!3098 = !DILocation(line: 201, column: 1, scope: !3091)
!3099 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !340, file: !340, line: 3061, type: !3100, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!27, !3085}
!3102 = !{!3103}
!3103 = !DILocalVariable(name: "gs", arg: 1, scope: !3099, file: !340, line: 3061, type: !3085)
!3104 = !DILocation(line: 0, scope: !3099)
!3105 = !DILocation(line: 3064, column: 25, scope: !3099)
!3106 = !DILocation(line: 3064, column: 3, scope: !3099)
!3107 = distinct !DISubprogram(name: "gimple_phi_arg_edge", scope: !2555, file: !2555, line: 467, type: !3108, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!327, !348, !495}
!3110 = !{!3111, !3112}
!3111 = !DILocalVariable(name: "gs", arg: 1, scope: !3107, file: !2555, line: 467, type: !348)
!3112 = !DILocalVariable(name: "i", arg: 2, scope: !3107, file: !2555, line: 467, type: !495)
!3113 = !DILocation(line: 0, scope: !3107)
!3114 = !DILocation(line: 469, column: 10, scope: !3107)
!3115 = !DILocation(line: 469, column: 3, scope: !3107)
!3116 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2555, file: !2555, line: 427, type: !3117, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3121)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!51, !3119}
!3119 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !379, line: 30, baseType: !3120)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!3121 = !{!3122}
!3122 = !DILocalVariable(name: "use", arg: 1, scope: !3116, file: !2555, line: 427, type: !3119)
!3123 = !DILocation(line: 0, scope: !3116)
!3124 = !DILocation(line: 429, column: 17, scope: !3116)
!3125 = !DILocation(line: 429, column: 10, scope: !3116)
!3126 = !DILocation(line: 429, column: 3, scope: !3116)
!3127 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2555, file: !2555, line: 442, type: !3128, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!3119, !348, !18}
!3130 = !{!3131, !3132}
!3131 = !DILocalVariable(name: "gs", arg: 1, scope: !3127, file: !2555, line: 442, type: !348)
!3132 = !DILocalVariable(name: "i", arg: 2, scope: !3127, file: !2555, line: 442, type: !18)
!3133 = !DILocation(line: 0, scope: !3127)
!3134 = !DILocation(line: 444, column: 11, scope: !3127)
!3135 = !DILocation(line: 444, column: 35, scope: !3127)
!3136 = !DILocation(line: 444, column: 3, scope: !3127)
!3137 = distinct !DISubprogram(name: "coalesce_cost_edge", scope: !3, file: !3, line: 104, type: !3138, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!18, !327}
!3140 = !{!3141, !3142, !3143, !3146}
!3141 = !DILocalVariable(name: "e", arg: 1, scope: !3137, file: !3, line: 104, type: !327)
!3142 = !DILocalVariable(name: "mult", scope: !3137, file: !3, line: 106, type: !18)
!3143 = !DILocalVariable(name: "e2", scope: !3144, file: !3, line: 115, type: !327)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 114, column: 5)
!3145 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 113, column: 7)
!3146 = !DILocalVariable(name: "ei", scope: !3144, file: !3, line: 116, type: !2914)
!3147 = !DILocation(line: 0, scope: !3137)
!3148 = !DILocation(line: 109, column: 7, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 109, column: 7)
!3150 = !DILocation(line: 109, column: 7, scope: !3137)
!3151 = !DILocation(line: 111, column: 10, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 111, column: 7)
!3153 = !DILocation(line: 111, column: 16, scope: !3152)
!3154 = !DILocation(line: 111, column: 7, scope: !3137)
!3155 = !DILocation(line: 113, column: 16, scope: !3145)
!3156 = !DILocation(line: 113, column: 7, scope: !3137)
!3157 = !DILocation(line: 115, column: 7, scope: !3144)
!3158 = !DILocation(line: 116, column: 7, scope: !3144)
!3159 = !DILocation(line: 117, column: 7, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 117, column: 7)
!3161 = !DILocation(line: 0, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 117, column: 7)
!3163 = !DILocation(line: 117, column: 7, scope: !3162)
!3164 = !DILocation(line: 0, scope: !3144)
!3165 = !DILocation(line: 118, column: 6, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 118, column: 6)
!3167 = !DILocation(line: 118, column: 9, scope: !3166)
!3168 = !DILocation(line: 118, column: 6, scope: !3162)
!3169 = !DILocation(line: 123, column: 10, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 119, column: 4)
!3171 = !DILocation(line: 128, column: 14, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 128, column: 10)
!3173 = !DILocation(line: 128, column: 20, scope: !3172)
!3174 = !DILocation(line: 128, column: 10, scope: !3170)
!3175 = distinct !{!3175, !3159, !3176}
!3176 = !DILocation(line: 133, column: 4, scope: !3160)
!3177 = !DILocation(line: 134, column: 5, scope: !3145)
!3178 = !DILocation(line: 134, column: 5, scope: !3144)
!3179 = !DILocation(line: 136, column: 25, scope: !3137)
!3180 = !DILocation(line: 137, column: 4, scope: !3137)
!3181 = !DILocation(line: 136, column: 10, scope: !3137)
!3182 = !DILocation(line: 137, column: 34, scope: !3137)
!3183 = !DILocation(line: 136, column: 3, scope: !3137)
!3184 = !DILocation(line: 138, column: 1, scope: !3137)
!3185 = distinct !DISubprogram(name: "has_single_use", scope: !2555, file: !2555, line: 350, type: !2556, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3186)
!3186 = !{!3187, !3188}
!3187 = !DILocalVariable(name: "var", arg: 1, scope: !3185, file: !2555, line: 350, type: !1568)
!3188 = !DILocalVariable(name: "ptr", scope: !3185, file: !2555, line: 352, type: !2561)
!3189 = !DILocation(line: 0, scope: !3185)
!3190 = !DILocation(line: 352, column: 42, scope: !3185)
!3191 = !DILocation(line: 355, column: 19, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3185, file: !2555, line: 355, column: 7)
!3193 = !DILocation(line: 355, column: 11, scope: !3192)
!3194 = !DILocation(line: 355, column: 7, scope: !3185)
!3195 = !DILocation(line: 359, column: 25, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3185, file: !2555, line: 359, column: 7)
!3197 = !DILocation(line: 359, column: 11, scope: !3196)
!3198 = !DILocation(line: 359, column: 7, scope: !3185)
!3199 = !DILocation(line: 360, column: 30, scope: !3196)
!3200 = !DILocation(line: 360, column: 13, scope: !3196)
!3201 = !DILocation(line: 360, column: 12, scope: !3196)
!3202 = !DILocation(line: 360, column: 5, scope: !3196)
!3203 = !DILocation(line: 363, column: 8, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3185, file: !2555, line: 363, column: 7)
!3205 = !DILocation(line: 363, column: 7, scope: !3185)
!3206 = !DILocation(line: 366, column: 10, scope: !3185)
!3207 = !DILocation(line: 366, column: 3, scope: !3185)
!3208 = !DILocation(line: 367, column: 1, scope: !3185)
!3209 = distinct !DISubprogram(name: "add_cost_one_coalesce", scope: !3, file: !3, line: 295, type: !3210, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{null, !1540, !18, !18}
!3212 = !{!3213, !3214, !3215, !3216}
!3213 = !DILocalVariable(name: "cl", arg: 1, scope: !3209, file: !3, line: 295, type: !1540)
!3214 = !DILocalVariable(name: "p1", arg: 2, scope: !3209, file: !3, line: 295, type: !18)
!3215 = !DILocalVariable(name: "p2", arg: 3, scope: !3209, file: !3, line: 295, type: !18)
!3216 = !DILocalVariable(name: "pair", scope: !3209, file: !3, line: 297, type: !1556)
!3217 = !DILocation(line: 0, scope: !3209)
!3218 = !DILocation(line: 299, column: 10, scope: !3209)
!3219 = !DILocation(line: 300, column: 9, scope: !3209)
!3220 = !DILocation(line: 300, column: 23, scope: !3209)
!3221 = !DILocation(line: 301, column: 9, scope: !3209)
!3222 = !DILocation(line: 301, column: 24, scope: !3209)
!3223 = !DILocation(line: 302, column: 20, scope: !3209)
!3224 = !DILocation(line: 302, column: 9, scope: !3209)
!3225 = !DILocation(line: 302, column: 14, scope: !3209)
!3226 = !DILocation(line: 303, column: 21, scope: !3209)
!3227 = !DILocation(line: 304, column: 1, scope: !3209)
!3228 = distinct !DISubprogram(name: "abnormal_corrupt", scope: !3, file: !3, line: 944, type: !3229, scopeLine: 945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !348, !18}
!3231 = !{!3232, !3233, !3234, !3235, !3236}
!3232 = !DILocalVariable(name: "phi", arg: 1, scope: !3228, file: !3, line: 944, type: !348)
!3233 = !DILocalVariable(name: "i", arg: 2, scope: !3228, file: !3, line: 944, type: !18)
!3234 = !DILocalVariable(name: "e", scope: !3228, file: !3, line: 946, type: !327)
!3235 = !DILocalVariable(name: "res", scope: !3228, file: !3, line: 947, type: !51)
!3236 = !DILocalVariable(name: "arg", scope: !3228, file: !3, line: 948, type: !51)
!3237 = !DILocation(line: 0, scope: !3228)
!3238 = !DILocation(line: 946, column: 38, scope: !3228)
!3239 = !DILocation(line: 946, column: 12, scope: !3228)
!3240 = !DILocation(line: 947, column: 14, scope: !3228)
!3241 = !DILocation(line: 948, column: 14, scope: !3228)
!3242 = !DILocation(line: 950, column: 12, scope: !3228)
!3243 = !DILocation(line: 951, column: 8, scope: !3228)
!3244 = !DILocation(line: 951, column: 13, scope: !3228)
!3245 = !DILocation(line: 951, column: 23, scope: !3228)
!3246 = !DILocation(line: 951, column: 29, scope: !3228)
!3247 = !DILocation(line: 950, column: 3, scope: !3228)
!3248 = !DILocation(line: 952, column: 12, scope: !3228)
!3249 = !DILocation(line: 952, column: 3, scope: !3228)
!3250 = !DILocation(line: 953, column: 23, scope: !3228)
!3251 = !DILocation(line: 953, column: 3, scope: !3228)
!3252 = !DILocation(line: 954, column: 7, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 954, column: 7)
!3254 = !DILocation(line: 954, column: 23, scope: !3253)
!3255 = !DILocation(line: 954, column: 7, scope: !3228)
!3256 = !DILocation(line: 955, column: 14, scope: !3253)
!3257 = !DILocation(line: 955, column: 5, scope: !3253)
!3258 = !DILocation(line: 958, column: 7, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 957, column: 5)
!3260 = !DILocation(line: 959, column: 16, scope: !3259)
!3261 = !DILocation(line: 959, column: 7, scope: !3259)
!3262 = !DILocation(line: 960, column: 27, scope: !3259)
!3263 = !DILocation(line: 960, column: 7, scope: !3259)
!3264 = !DILocation(line: 963, column: 3, scope: !3228)
!3265 = !DILocation(line: 964, column: 1, scope: !3228)
!3266 = distinct !DISubprogram(name: "gsi_next", scope: !340, file: !340, line: 4485, type: !3267, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3270)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{null, !3269}
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!3270 = !{!3271}
!3271 = !DILocalVariable(name: "i", arg: 1, scope: !3266, file: !340, line: 4485, type: !3269)
!3272 = !DILocation(line: 0, scope: !3266)
!3273 = !DILocation(line: 4487, column: 15, scope: !3266)
!3274 = !DILocation(line: 4487, column: 20, scope: !3266)
!3275 = !DILocation(line: 4487, column: 10, scope: !3266)
!3276 = !DILocation(line: 4488, column: 1, scope: !3266)
!3277 = distinct !DISubprogram(name: "gsi_start_bb", scope: !340, file: !340, line: 4418, type: !3278, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!2214, !310}
!3280 = !{!3281, !3282, !3283}
!3281 = !DILocalVariable(name: "bb", arg: 1, scope: !3277, file: !340, line: 4418, type: !310)
!3282 = !DILocalVariable(name: "i", scope: !3277, file: !340, line: 4420, type: !2214)
!3283 = !DILocalVariable(name: "seq", scope: !3277, file: !340, line: 4421, type: !337)
!3284 = !DILocation(line: 0, scope: !3277)
!3285 = !DILocation(line: 4420, column: 24, scope: !3277)
!3286 = !DILocation(line: 4423, column: 9, scope: !3277)
!3287 = !DILocation(line: 4424, column: 11, scope: !3277)
!3288 = !DILocation(line: 4424, column: 5, scope: !3277)
!3289 = !DILocation(line: 4424, column: 9, scope: !3277)
!3290 = !DILocation(line: 4425, column: 5, scope: !3277)
!3291 = !DILocation(line: 4425, column: 9, scope: !3277)
!3292 = !DILocation(line: 4426, column: 5, scope: !3277)
!3293 = !DILocation(line: 4426, column: 8, scope: !3277)
!3294 = !DILocation(line: 4429, column: 1, scope: !3277)
!3295 = distinct !DISubprogram(name: "is_gimple_debug", scope: !340, file: !340, line: 3249, type: !3296, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3298)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!152, !3085}
!3298 = !{!3299}
!3299 = !DILocalVariable(name: "gs", arg: 1, scope: !3295, file: !340, line: 3249, type: !3085)
!3300 = !DILocation(line: 0, scope: !3295)
!3301 = !DILocation(line: 3251, column: 10, scope: !3295)
!3302 = !DILocation(line: 3251, column: 27, scope: !3295)
!3303 = !DILocation(line: 3251, column: 3, scope: !3295)
!3304 = distinct !DISubprogram(name: "op_iter_init_tree", scope: !2555, file: !2555, line: 792, type: !3305, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3308)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!51, !3307, !348, !18}
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!3308 = !{!3309, !3310, !3311}
!3309 = !DILocalVariable(name: "ptr", arg: 1, scope: !3304, file: !2555, line: 792, type: !3307)
!3310 = !DILocalVariable(name: "stmt", arg: 2, scope: !3304, file: !2555, line: 792, type: !348)
!3311 = !DILocalVariable(name: "flags", arg: 3, scope: !3304, file: !2555, line: 792, type: !18)
!3312 = !DILocation(line: 0, scope: !3304)
!3313 = !DILocation(line: 794, column: 3, scope: !3304)
!3314 = !DILocation(line: 795, column: 8, scope: !3304)
!3315 = !DILocation(line: 795, column: 18, scope: !3304)
!3316 = !DILocation(line: 796, column: 10, scope: !3304)
!3317 = !DILocation(line: 796, column: 3, scope: !3304)
!3318 = distinct !DISubprogram(name: "op_iter_done", scope: !2555, file: !2555, line: 652, type: !3319, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3323)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!152, !3321}
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2226)
!3323 = !{!3324}
!3324 = !DILocalVariable(name: "ptr", arg: 1, scope: !3318, file: !2555, line: 652, type: !3321)
!3325 = !DILocation(line: 0, scope: !3318)
!3326 = !DILocation(line: 654, column: 15, scope: !3318)
!3327 = !DILocation(line: 654, column: 3, scope: !3318)
!3328 = distinct !DISubprogram(name: "op_iter_next_tree", scope: !2555, file: !2555, line: 699, type: !3329, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3331)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!51, !3307}
!3331 = !{!3332, !3333}
!3332 = !DILocalVariable(name: "ptr", arg: 1, scope: !3328, file: !2555, line: 699, type: !3307)
!3333 = !DILocalVariable(name: "val", scope: !3328, file: !2555, line: 701, type: !51)
!3334 = !DILocation(line: 0, scope: !3328)
!3335 = !DILocation(line: 705, column: 12, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3328, file: !2555, line: 705, column: 7)
!3337 = !DILocation(line: 705, column: 7, scope: !3336)
!3338 = !DILocation(line: 705, column: 7, scope: !3328)
!3339 = !DILocation(line: 707, column: 13, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3336, file: !2555, line: 706, column: 5)
!3341 = !DILocation(line: 708, column: 24, scope: !3340)
!3342 = !DILocation(line: 708, column: 30, scope: !3340)
!3343 = !DILocation(line: 708, column: 17, scope: !3340)
!3344 = !DILocation(line: 709, column: 7, scope: !3340)
!3345 = !DILocation(line: 711, column: 12, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3328, file: !2555, line: 711, column: 7)
!3347 = !DILocation(line: 711, column: 7, scope: !3346)
!3348 = !DILocation(line: 711, column: 7, scope: !3328)
!3349 = !DILocation(line: 713, column: 13, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3346, file: !2555, line: 712, column: 5)
!3351 = !DILocation(line: 714, column: 24, scope: !3350)
!3352 = !DILocation(line: 714, column: 30, scope: !3350)
!3353 = !DILocation(line: 714, column: 17, scope: !3350)
!3354 = !DILocation(line: 715, column: 7, scope: !3350)
!3355 = !DILocation(line: 718, column: 8, scope: !3328)
!3356 = !DILocation(line: 718, column: 13, scope: !3328)
!3357 = !DILocation(line: 719, column: 3, scope: !3328)
!3358 = !DILocation(line: 721, column: 1, scope: !3328)
!3359 = distinct !DISubprogram(name: "gimple_code", scope: !340, file: !340, line: 1052, type: !3360, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!1473, !3085}
!3362 = !{!3363}
!3363 = !DILocalVariable(name: "g", arg: 1, scope: !3359, file: !340, line: 1052, type: !3085)
!3364 = !DILocation(line: 0, scope: !3359)
!3365 = !DILocation(line: 1054, column: 20, scope: !3359)
!3366 = !DILocation(line: 1054, column: 3, scope: !3359)
!3367 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !340, file: !340, line: 1694, type: !3083, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3368)
!3368 = !{!3369}
!3369 = !DILocalVariable(name: "gs", arg: 1, scope: !3367, file: !340, line: 1694, type: !3085)
!3370 = !DILocation(line: 0, scope: !3367)
!3371 = !DILocation(line: 1697, column: 10, scope: !3367)
!3372 = !DILocation(line: 1697, column: 3, scope: !3367)
!3373 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !340, file: !340, line: 1727, type: !3083, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3374)
!3374 = !{!3375}
!3375 = !DILocalVariable(name: "gs", arg: 1, scope: !3373, file: !340, line: 1727, type: !3085)
!3376 = !DILocation(line: 0, scope: !3373)
!3377 = !DILocation(line: 1730, column: 10, scope: !3373)
!3378 = !DILocation(line: 1730, column: 3, scope: !3373)
!3379 = distinct !DISubprogram(name: "coalesce_cost_bb", scope: !3, file: !3, line: 95, type: !3380, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!18, !310}
!3382 = !{!3383}
!3383 = !DILocalVariable(name: "bb", arg: 1, scope: !3379, file: !3, line: 95, type: !310)
!3384 = !DILocation(line: 0, scope: !3379)
!3385 = !DILocation(line: 97, column: 29, scope: !3379)
!3386 = !DILocation(line: 97, column: 40, scope: !3379)
!3387 = !DILocation(line: 97, column: 10, scope: !3379)
!3388 = !DILocation(line: 97, column: 3, scope: !3379)
!3389 = distinct !DISubprogram(name: "gimple_asm_noutputs", scope: !340, file: !340, line: 2591, type: !3100, scopeLine: 2592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3390)
!3390 = !{!3391}
!3391 = !DILocalVariable(name: "gs", arg: 1, scope: !3389, file: !340, line: 2591, type: !3085)
!3392 = !DILocation(line: 0, scope: !3389)
!3393 = !DILocation(line: 2594, column: 14, scope: !3389)
!3394 = !DILocation(line: 2594, column: 25, scope: !3389)
!3395 = !DILocation(line: 2594, column: 10, scope: !3389)
!3396 = !DILocation(line: 2594, column: 3, scope: !3389)
!3397 = distinct !DISubprogram(name: "gimple_asm_ninputs", scope: !340, file: !340, line: 2581, type: !3100, scopeLine: 2582, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3398)
!3398 = !{!3399}
!3399 = !DILocalVariable(name: "gs", arg: 1, scope: !3397, file: !340, line: 2581, type: !3085)
!3400 = !DILocation(line: 0, scope: !3397)
!3401 = !DILocation(line: 2584, column: 25, scope: !3397)
!3402 = !DILocation(line: 2584, column: 10, scope: !3397)
!3403 = !DILocation(line: 2584, column: 3, scope: !3397)
!3404 = distinct !DISubprogram(name: "gimple_asm_output_op", scope: !340, file: !340, line: 2652, type: !3405, scopeLine: 2653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!51, !3085, !27}
!3407 = !{!3408, !3409}
!3408 = !DILocalVariable(name: "gs", arg: 1, scope: !3404, file: !340, line: 2652, type: !3085)
!3409 = !DILocalVariable(name: "index", arg: 2, scope: !3404, file: !340, line: 2652, type: !27)
!3410 = !DILocation(line: 0, scope: !3404)
!3411 = !DILocation(line: 2655, column: 3, scope: !3404)
!3412 = !DILocation(line: 2656, column: 48, scope: !3404)
!3413 = !DILocation(line: 2656, column: 33, scope: !3404)
!3414 = !DILocation(line: 2656, column: 31, scope: !3404)
!3415 = !DILocation(line: 2656, column: 10, scope: !3404)
!3416 = !DILocation(line: 2656, column: 3, scope: !3404)
!3417 = distinct !DISubprogram(name: "gimple_asm_input_op", scope: !340, file: !340, line: 2619, type: !3405, scopeLine: 2620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3418)
!3418 = !{!3419, !3420}
!3419 = !DILocalVariable(name: "gs", arg: 1, scope: !3417, file: !340, line: 2619, type: !3085)
!3420 = !DILocalVariable(name: "index", arg: 2, scope: !3417, file: !340, line: 2619, type: !27)
!3421 = !DILocation(line: 0, scope: !3417)
!3422 = !DILocation(line: 2622, column: 3, scope: !3417)
!3423 = !DILocation(line: 2623, column: 10, scope: !3417)
!3424 = !DILocation(line: 2623, column: 3, scope: !3417)
!3425 = distinct !DISubprogram(name: "coalesce_cost", scope: !3, file: !3, line: 77, type: !3426, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3428)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!18, !18, !152}
!3428 = !{!3429, !3430, !3431}
!3429 = !DILocalVariable(name: "frequency", arg: 1, scope: !3425, file: !3, line: 77, type: !18)
!3430 = !DILocalVariable(name: "optimize_for_size", arg: 2, scope: !3425, file: !3, line: 77, type: !152)
!3431 = !DILocalVariable(name: "cost", scope: !3425, file: !3, line: 80, type: !18)
!3432 = !DILocation(line: 0, scope: !3425)
!3433 = !DILocation(line: 82, column: 8, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3425, file: !3, line: 82, column: 7)
!3435 = !DILocation(line: 82, column: 7, scope: !3425)
!3436 = !DILocation(line: 85, column: 7, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3425, file: !3, line: 85, column: 7)
!3438 = !DILocation(line: 85, column: 7, scope: !3425)
!3439 = !DILocation(line: 88, column: 3, scope: !3425)
!3440 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !307, file: !307, line: 150, type: !3441, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3445)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!327, !3443, !27}
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!3445 = !{!3446, !3447}
!3446 = !DILocalVariable(name: "vec_", arg: 1, scope: !3440, file: !307, line: 150, type: !3443)
!3447 = !DILocalVariable(name: "ix_", arg: 2, scope: !3440, file: !307, line: 150, type: !27)
!3448 = !DILocation(line: 0, scope: !3440)
!3449 = !DILocation(line: 150, column: 1, scope: !3440)
!3450 = distinct !DISubprogram(name: "gimple_bb", scope: !340, file: !340, line: 1112, type: !3451, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!311, !3085}
!3453 = !{!3454}
!3454 = !DILocalVariable(name: "g", arg: 1, scope: !3450, file: !340, line: 1112, type: !3085)
!3455 = !DILocation(line: 0, scope: !3450)
!3456 = !DILocation(line: 1114, column: 20, scope: !3450)
!3457 = !DILocation(line: 1114, column: 3, scope: !3450)
!3458 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !340, file: !340, line: 3100, type: !3459, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3462)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!3461, !348, !27}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!3462 = !{!3463, !3464}
!3463 = !DILocalVariable(name: "gs", arg: 1, scope: !3458, file: !340, line: 3100, type: !348)
!3464 = !DILocalVariable(name: "index", arg: 2, scope: !3458, file: !340, line: 3100, type: !27)
!3465 = !DILocation(line: 0, scope: !3458)
!3466 = !DILocation(line: 3103, column: 3, scope: !3458)
!3467 = !DILocation(line: 3104, column: 12, scope: !3458)
!3468 = !DILocation(line: 3104, column: 3, scope: !3458)
!3469 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !307, file: !307, line: 150, type: !3470, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3472)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!27, !3443}
!3472 = !{!3473}
!3473 = !DILocalVariable(name: "vec_", arg: 1, scope: !3469, file: !307, line: 150, type: !3443)
!3474 = !DILocation(line: 0, scope: !3469)
!3475 = !DILocation(line: 150, column: 1, scope: !3469)
!3476 = distinct !DISubprogram(name: "ei_start_1", scope: !307, file: !307, line: 696, type: !3477, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3479)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!2914, !2919}
!3479 = !{!3480, !3481}
!3480 = !DILocalVariable(name: "ev", arg: 1, scope: !3476, file: !307, line: 696, type: !2919)
!3481 = !DILocalVariable(name: "i", scope: !3476, file: !307, line: 698, type: !2914)
!3482 = !DILocation(line: 0, scope: !3476)
!3483 = !DILocation(line: 700, column: 5, scope: !3476)
!3484 = !DILocation(line: 700, column: 11, scope: !3476)
!3485 = !DILocation(line: 701, column: 5, scope: !3476)
!3486 = !DILocation(line: 701, column: 15, scope: !3476)
!3487 = !DILocation(line: 703, column: 3, scope: !3476)
!3488 = distinct !DISubprogram(name: "ei_cond", scope: !307, file: !307, line: 771, type: !3489, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3492)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!152, !2914, !3491}
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!3492 = !{!3493, !3494}
!3493 = !DILocalVariable(name: "ei", arg: 1, scope: !3488, file: !307, line: 771, type: !2914)
!3494 = !DILocalVariable(name: "p", arg: 2, scope: !3488, file: !307, line: 771, type: !3491)
!3495 = !DILocation(line: 0, scope: !3488)
!3496 = !DILocation(line: 773, column: 8, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3488, file: !307, line: 773, column: 7)
!3498 = !DILocation(line: 773, column: 7, scope: !3488)
!3499 = !DILocation(line: 775, column: 12, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3497, file: !307, line: 774, column: 5)
!3501 = !DILocation(line: 776, column: 7, scope: !3500)
!3502 = !DILocation(line: 781, column: 7, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3497, file: !307, line: 779, column: 5)
!3504 = !DILocation(line: 0, scope: !3497)
!3505 = !DILocation(line: 783, column: 1, scope: !3488)
!3506 = distinct !DISubprogram(name: "ei_next", scope: !307, file: !307, line: 736, type: !3507, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3510)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{null, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!3510 = !{!3511}
!3511 = !DILocalVariable(name: "i", arg: 1, scope: !3506, file: !307, line: 736, type: !3509)
!3512 = !DILocation(line: 0, scope: !3506)
!3513 = !DILocation(line: 738, column: 3, scope: !3506)
!3514 = !DILocation(line: 739, column: 11, scope: !3506)
!3515 = !DILocation(line: 740, column: 1, scope: !3506)
!3516 = distinct !DISubprogram(name: "ei_end_p", scope: !307, file: !307, line: 721, type: !3517, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3519)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!152, !2914}
!3519 = !{!3520}
!3520 = !DILocalVariable(name: "i", arg: 1, scope: !3516, file: !307, line: 721, type: !2914)
!3521 = !DILocation(line: 723, column: 22, scope: !3516)
!3522 = !DILocation(line: 723, column: 19, scope: !3516)
!3523 = !DILocation(line: 723, column: 10, scope: !3516)
!3524 = !DILocation(line: 723, column: 3, scope: !3516)
!3525 = distinct !DISubprogram(name: "ei_edge", scope: !307, file: !307, line: 752, type: !3526, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3528)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!327, !2914}
!3528 = !{!3529}
!3529 = !DILocalVariable(name: "i", arg: 1, scope: !3525, file: !307, line: 752, type: !2914)
!3530 = !DILocation(line: 754, column: 10, scope: !3525)
!3531 = !DILocation(line: 754, column: 3, scope: !3525)
!3532 = distinct !DISubprogram(name: "ei_container", scope: !307, file: !307, line: 685, type: !3533, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3535)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!315, !2914}
!3535 = !{!3536}
!3536 = !DILocalVariable(name: "i", arg: 1, scope: !3532, file: !307, line: 685, type: !2914)
!3537 = !DILocation(line: 687, column: 3, scope: !3532)
!3538 = !DILocation(line: 688, column: 10, scope: !3532)
!3539 = !DILocation(line: 688, column: 3, scope: !3532)
!3540 = distinct !DISubprogram(name: "gimple_phi_arg_def", scope: !2555, file: !2555, line: 450, type: !3541, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!51, !348, !495}
!3543 = !{!3544, !3545, !3546}
!3544 = !DILocalVariable(name: "gs", arg: 1, scope: !3540, file: !2555, line: 450, type: !348)
!3545 = !DILocalVariable(name: "index", arg: 2, scope: !3540, file: !2555, line: 450, type: !495)
!3546 = !DILocalVariable(name: "pd", scope: !3540, file: !2555, line: 452, type: !3461)
!3547 = !DILocation(line: 0, scope: !3540)
!3548 = !DILocation(line: 452, column: 46, scope: !3540)
!3549 = !DILocation(line: 452, column: 26, scope: !3540)
!3550 = !DILocation(line: 453, column: 33, scope: !3540)
!3551 = !DILocation(line: 453, column: 10, scope: !3540)
!3552 = !DILocation(line: 453, column: 3, scope: !3540)
!3553 = distinct !DISubprogram(name: "bb_seq", scope: !340, file: !340, line: 237, type: !3554, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3559)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!337, !3556}
!3556 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !52, line: 112, baseType: !3557)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!3559 = !{!3560}
!3560 = !DILocalVariable(name: "bb", arg: 1, scope: !3553, file: !340, line: 237, type: !3556)
!3561 = !DILocation(line: 0, scope: !3553)
!3562 = !DILocation(line: 239, column: 17, scope: !3553)
!3563 = !DILocation(line: 239, column: 23, scope: !3553)
!3564 = !DILocation(line: 239, column: 33, scope: !3553)
!3565 = !DILocation(line: 239, column: 43, scope: !3553)
!3566 = !DILocation(line: 239, column: 36, scope: !3553)
!3567 = !DILocation(line: 239, column: 10, scope: !3553)
!3568 = !DILocation(line: 239, column: 68, scope: !3553)
!3569 = !DILocation(line: 239, column: 3, scope: !3553)
!3570 = distinct !DISubprogram(name: "gimple_seq_first", scope: !340, file: !340, line: 159, type: !3571, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3576)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!343, !3573}
!3573 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !52, line: 67, baseType: !3574)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!3576 = !{!3577}
!3577 = !DILocalVariable(name: "s", arg: 1, scope: !3570, file: !340, line: 159, type: !3573)
!3578 = !DILocation(line: 0, scope: !3570)
!3579 = !DILocation(line: 161, column: 10, scope: !3570)
!3580 = !DILocation(line: 161, column: 17, scope: !3570)
!3581 = !DILocation(line: 161, column: 3, scope: !3570)
!3582 = distinct !DISubprogram(name: "op_iter_init", scope: !2555, file: !2555, line: 742, type: !3583, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{null, !3307, !348, !18}
!3585 = !{!3586, !3587, !3588}
!3586 = !DILocalVariable(name: "ptr", arg: 1, scope: !3582, file: !2555, line: 742, type: !3307)
!3587 = !DILocalVariable(name: "stmt", arg: 2, scope: !3582, file: !2555, line: 742, type: !348)
!3588 = !DILocalVariable(name: "flags", arg: 3, scope: !3582, file: !2555, line: 742, type: !18)
!3589 = !DILocation(line: 0, scope: !3582)
!3590 = !DILocation(line: 746, column: 3, scope: !3582)
!3591 = !DILocation(line: 748, column: 22, scope: !3582)
!3592 = !DILocation(line: 748, column: 15, scope: !3582)
!3593 = !DILocation(line: 748, column: 52, scope: !3582)
!3594 = !DILocation(line: 748, column: 8, scope: !3582)
!3595 = !DILocation(line: 748, column: 13, scope: !3582)
!3596 = !DILocation(line: 749, column: 15, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3582, file: !2555, line: 749, column: 7)
!3598 = !DILocation(line: 750, column: 7, scope: !3597)
!3599 = !DILocation(line: 750, column: 10, scope: !3597)
!3600 = !DILocation(line: 751, column: 7, scope: !3597)
!3601 = !DILocation(line: 751, column: 10, scope: !3597)
!3602 = !DILocation(line: 751, column: 29, scope: !3597)
!3603 = !DILocation(line: 749, column: 7, scope: !3582)
!3604 = !DILocation(line: 752, column: 22, scope: !3597)
!3605 = !DILocation(line: 752, column: 28, scope: !3597)
!3606 = !DILocation(line: 752, column: 15, scope: !3597)
!3607 = !DILocation(line: 752, column: 5, scope: !3597)
!3608 = !DILocation(line: 753, column: 22, scope: !3582)
!3609 = !DILocation(line: 753, column: 15, scope: !3582)
!3610 = !DILocation(line: 753, column: 52, scope: !3582)
!3611 = !DILocation(line: 753, column: 8, scope: !3582)
!3612 = !DILocation(line: 753, column: 13, scope: !3582)
!3613 = !DILocation(line: 754, column: 15, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3582, file: !2555, line: 754, column: 7)
!3615 = !DILocation(line: 755, column: 7, scope: !3614)
!3616 = !DILocation(line: 755, column: 10, scope: !3614)
!3617 = !DILocation(line: 756, column: 7, scope: !3614)
!3618 = !DILocation(line: 756, column: 10, scope: !3614)
!3619 = !DILocation(line: 756, column: 29, scope: !3614)
!3620 = !DILocation(line: 754, column: 7, scope: !3582)
!3621 = !DILocation(line: 757, column: 22, scope: !3614)
!3622 = !DILocation(line: 757, column: 28, scope: !3614)
!3623 = !DILocation(line: 757, column: 15, scope: !3614)
!3624 = !DILocation(line: 757, column: 5, scope: !3614)
!3625 = !DILocation(line: 758, column: 8, scope: !3582)
!3626 = !DILocation(line: 758, column: 13, scope: !3582)
!3627 = !DILocation(line: 760, column: 8, scope: !3582)
!3628 = !DILocation(line: 760, column: 14, scope: !3582)
!3629 = !DILocation(line: 761, column: 8, scope: !3582)
!3630 = !DILocation(line: 761, column: 16, scope: !3582)
!3631 = !DILocation(line: 762, column: 8, scope: !3582)
!3632 = !DILocation(line: 762, column: 17, scope: !3582)
!3633 = !DILocation(line: 763, column: 1, scope: !3582)
!3634 = distinct !DISubprogram(name: "gimple_def_ops", scope: !340, file: !340, line: 1292, type: !3635, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3637)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!377, !3085}
!3637 = !{!3638}
!3638 = !DILocalVariable(name: "g", arg: 1, scope: !3634, file: !340, line: 1292, type: !3085)
!3639 = !DILocation(line: 0, scope: !3634)
!3640 = !DILocation(line: 1294, column: 8, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3634, file: !340, line: 1294, column: 7)
!3642 = !DILocation(line: 1294, column: 7, scope: !3634)
!3643 = !DILocation(line: 1296, column: 26, scope: !3634)
!3644 = !DILocation(line: 1296, column: 3, scope: !3634)
!3645 = !DILocation(line: 1297, column: 1, scope: !3634)
!3646 = distinct !DISubprogram(name: "gimple_vdef", scope: !340, file: !340, line: 1375, type: !3083, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3647)
!3647 = !{!3648}
!3648 = !DILocalVariable(name: "g", arg: 1, scope: !3646, file: !340, line: 1375, type: !3085)
!3649 = !DILocation(line: 0, scope: !3646)
!3650 = !DILocation(line: 1377, column: 8, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3646, file: !340, line: 1377, column: 7)
!3652 = !DILocation(line: 1377, column: 7, scope: !3646)
!3653 = !DILocation(line: 1379, column: 23, scope: !3646)
!3654 = !DILocation(line: 1379, column: 3, scope: !3646)
!3655 = !DILocation(line: 1380, column: 1, scope: !3646)
!3656 = distinct !DISubprogram(name: "gimple_use_ops", scope: !340, file: !340, line: 1313, type: !3657, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3659)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!385, !3085}
!3659 = !{!3660}
!3660 = !DILocalVariable(name: "g", arg: 1, scope: !3656, file: !340, line: 1313, type: !3085)
!3661 = !DILocation(line: 0, scope: !3656)
!3662 = !DILocation(line: 1315, column: 8, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3656, file: !340, line: 1315, column: 7)
!3664 = !DILocation(line: 1315, column: 7, scope: !3656)
!3665 = !DILocation(line: 1317, column: 26, scope: !3656)
!3666 = !DILocation(line: 1317, column: 3, scope: !3656)
!3667 = !DILocation(line: 1318, column: 1, scope: !3656)
!3668 = distinct !DISubprogram(name: "gimple_vuse", scope: !340, file: !340, line: 1365, type: !3083, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3669)
!3669 = !{!3670}
!3670 = !DILocalVariable(name: "g", arg: 1, scope: !3668, file: !340, line: 1365, type: !3085)
!3671 = !DILocation(line: 0, scope: !3668)
!3672 = !DILocation(line: 1367, column: 8, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3668, file: !340, line: 1367, column: 7)
!3674 = !DILocation(line: 1367, column: 7, scope: !3668)
!3675 = !DILocation(line: 1369, column: 23, scope: !3668)
!3676 = !DILocation(line: 1369, column: 3, scope: !3668)
!3677 = !DILocation(line: 1370, column: 1, scope: !3668)
!3678 = distinct !DISubprogram(name: "gimple_has_ops", scope: !340, file: !340, line: 1274, type: !3296, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3679)
!3679 = !{!3680}
!3680 = !DILocalVariable(name: "g", arg: 1, scope: !3678, file: !340, line: 1274, type: !3085)
!3681 = !DILocation(line: 0, scope: !3678)
!3682 = !DILocation(line: 1276, column: 10, scope: !3678)
!3683 = !DILocation(line: 1276, column: 26, scope: !3678)
!3684 = !DILocation(line: 1276, column: 41, scope: !3678)
!3685 = !DILocation(line: 1276, column: 44, scope: !3678)
!3686 = !DILocation(line: 1276, column: 60, scope: !3678)
!3687 = !DILocation(line: 1276, column: 3, scope: !3678)
!3688 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !340, file: !340, line: 1283, type: !3296, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3689)
!3689 = !{!3690}
!3690 = !DILocalVariable(name: "g", arg: 1, scope: !3688, file: !340, line: 1283, type: !3085)
!3691 = !DILocation(line: 0, scope: !3688)
!3692 = !DILocation(line: 1285, column: 10, scope: !3688)
!3693 = !DILocation(line: 1285, column: 26, scope: !3688)
!3694 = !DILocation(line: 1285, column: 43, scope: !3688)
!3695 = !DILocation(line: 1285, column: 46, scope: !3688)
!3696 = !DILocation(line: 1285, column: 62, scope: !3688)
!3697 = !DILocation(line: 1285, column: 3, scope: !3688)
!3698 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2555, file: !2555, line: 434, type: !3699, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3702)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!51, !3701}
!3701 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !379, line: 27, baseType: !383)
!3702 = !{!3703}
!3703 = !DILocalVariable(name: "def", arg: 1, scope: !3698, file: !2555, line: 434, type: !3701)
!3704 = !DILocation(line: 0, scope: !3698)
!3705 = !DILocation(line: 436, column: 10, scope: !3698)
!3706 = !DILocation(line: 436, column: 3, scope: !3698)
!3707 = distinct !DISubprogram(name: "gimple_op", scope: !340, file: !340, line: 1631, type: !3405, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3708)
!3708 = !{!3709, !3710}
!3709 = !DILocalVariable(name: "gs", arg: 1, scope: !3707, file: !340, line: 1631, type: !3085)
!3710 = !DILocalVariable(name: "i", arg: 2, scope: !3707, file: !340, line: 1631, type: !27)
!3711 = !DILocation(line: 0, scope: !3707)
!3712 = !DILocation(line: 1633, column: 7, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3707, file: !340, line: 1633, column: 7)
!3714 = !DILocation(line: 1633, column: 7, scope: !3707)
!3715 = !DILocation(line: 1638, column: 14, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3713, file: !340, line: 1634, column: 5)
!3717 = !DILocation(line: 1638, column: 7, scope: !3716)
!3718 = !DILocation(line: 0, scope: !3713)
!3719 = !DILocation(line: 1642, column: 1, scope: !3707)
!3720 = distinct !DISubprogram(name: "gimple_ops", scope: !340, file: !340, line: 1614, type: !3721, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!383, !348}
!3723 = !{!3724, !3725}
!3724 = !DILocalVariable(name: "gs", arg: 1, scope: !3720, file: !340, line: 1614, type: !348)
!3725 = !DILocalVariable(name: "off", scope: !3720, file: !340, line: 1616, type: !495)
!3726 = !DILocation(line: 0, scope: !3720)
!3727 = !DILocation(line: 1621, column: 28, scope: !3720)
!3728 = !DILocation(line: 1621, column: 9, scope: !3720)
!3729 = !DILocation(line: 1622, column: 3, scope: !3720)
!3730 = !DILocation(line: 1624, column: 20, scope: !3720)
!3731 = !DILocation(line: 1624, column: 32, scope: !3720)
!3732 = !DILocation(line: 1624, column: 10, scope: !3720)
!3733 = !DILocation(line: 1624, column: 3, scope: !3720)
!3734 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !340, file: !340, line: 1073, type: !3735, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3737)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!1511, !348}
!3737 = !{!3738}
!3738 = !DILocalVariable(name: "gs", arg: 1, scope: !3734, file: !340, line: 1073, type: !348)
!3739 = !DILocation(line: 0, scope: !3734)
!3740 = !DILocation(line: 1075, column: 24, scope: !3734)
!3741 = !DILocation(line: 1075, column: 10, scope: !3734)
!3742 = !DILocation(line: 1075, column: 3, scope: !3734)
!3743 = distinct !DISubprogram(name: "gss_for_code", scope: !340, file: !340, line: 1061, type: !3744, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3746)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!1511, !1473}
!3746 = !{!3747}
!3747 = !DILocalVariable(name: "code", arg: 1, scope: !3743, file: !340, line: 1061, type: !1473)
!3748 = !DILocation(line: 0, scope: !3743)
!3749 = !DILocation(line: 1066, column: 10, scope: !3743)
!3750 = !DILocation(line: 1066, column: 3, scope: !3743)
!3751 = distinct !DISubprogram(name: "find_coalesce_pair", scope: !3, file: !3, line: 257, type: !3752, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3754)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!1547, !1540, !18, !18, !152}
!3754 = !{!3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762}
!3755 = !DILocalVariable(name: "cl", arg: 1, scope: !3751, file: !3, line: 257, type: !1540)
!3756 = !DILocalVariable(name: "p1", arg: 2, scope: !3751, file: !3, line: 257, type: !18)
!3757 = !DILocalVariable(name: "p2", arg: 3, scope: !3751, file: !3, line: 257, type: !18)
!3758 = !DILocalVariable(name: "create", arg: 4, scope: !3751, file: !3, line: 257, type: !152)
!3759 = !DILocalVariable(name: "p", scope: !3751, file: !3, line: 259, type: !1549)
!3760 = !DILocalVariable(name: "slot", scope: !3751, file: !3, line: 260, type: !859)
!3761 = !DILocalVariable(name: "hash", scope: !3751, file: !3, line: 261, type: !27)
!3762 = !DILocalVariable(name: "pair", scope: !3763, file: !3, line: 283, type: !1548)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 282, column: 5)
!3764 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 281, column: 7)
!3765 = !DILocation(line: 0, scope: !3751)
!3766 = !DILocation(line: 259, column: 3, scope: !3751)
!3767 = !DILocation(line: 264, column: 10, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 264, column: 7)
!3769 = !DILocation(line: 0, scope: !3768)
!3770 = !DILocation(line: 264, column: 7, scope: !3751)
!3771 = !DILocation(line: 266, column: 23, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 265, column: 5)
!3773 = !DILocation(line: 267, column: 9, scope: !3772)
!3774 = !DILocation(line: 267, column: 24, scope: !3772)
!3775 = !DILocation(line: 268, column: 5, scope: !3772)
!3776 = !DILocation(line: 271, column: 23, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 270, column: 5)
!3778 = !DILocation(line: 272, column: 9, scope: !3777)
!3779 = !DILocation(line: 272, column: 24, scope: !3777)
!3780 = !DILocation(line: 275, column: 10, scope: !3751)
!3781 = !DILocation(line: 276, column: 40, scope: !3751)
!3782 = !DILocation(line: 276, column: 10, scope: !3751)
!3783 = !DILocation(line: 278, column: 8, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 278, column: 7)
!3785 = !DILocation(line: 278, column: 7, scope: !3751)
!3786 = !DILocation(line: 281, column: 8, scope: !3764)
!3787 = !DILocation(line: 281, column: 7, scope: !3751)
!3788 = !DILocation(line: 283, column: 37, scope: !3763)
!3789 = !DILocation(line: 0, scope: !3763)
!3790 = !DILocation(line: 284, column: 7, scope: !3763)
!3791 = !DILocation(line: 285, column: 31, scope: !3763)
!3792 = !DILocation(line: 285, column: 13, scope: !3763)
!3793 = !DILocation(line: 285, column: 27, scope: !3763)
!3794 = !DILocation(line: 286, column: 32, scope: !3763)
!3795 = !DILocation(line: 286, column: 13, scope: !3763)
!3796 = !DILocation(line: 286, column: 28, scope: !3763)
!3797 = !DILocation(line: 287, column: 13, scope: !3763)
!3798 = !DILocation(line: 287, column: 18, scope: !3763)
!3799 = !DILocation(line: 288, column: 13, scope: !3763)
!3800 = !DILocation(line: 289, column: 5, scope: !3763)
!3801 = !DILocation(line: 291, column: 35, scope: !3751)
!3802 = !DILocation(line: 291, column: 3, scope: !3751)
!3803 = !DILocation(line: 292, column: 1, scope: !3751)
!3804 = distinct !DISubprogram(name: "live_var_map", scope: !7, file: !7, line: 310, type: !3805, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3807)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!6, !1589}
!3807 = !{!3808}
!3808 = !DILocalVariable(name: "live", arg: 1, scope: !3804, file: !7, line: 310, type: !1589)
!3809 = !DILocation(line: 0, scope: !3804)
!3810 = !DILocation(line: 312, column: 16, scope: !3804)
!3811 = !DILocation(line: 312, column: 3, scope: !3804)
!3812 = distinct !DISubprogram(name: "ssa_conflicts_new", scope: !3, file: !3, line: 520, type: !3813, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3815)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!1601, !27}
!3815 = !{!3816, !3817}
!3816 = !DILocalVariable(name: "size", arg: 1, scope: !3812, file: !3, line: 520, type: !27)
!3817 = !DILocalVariable(name: "ptr", scope: !3812, file: !3, line: 522, type: !1601)
!3818 = !DILocation(line: 0, scope: !3812)
!3819 = !DILocation(line: 524, column: 9, scope: !3812)
!3820 = !DILocation(line: 525, column: 20, scope: !3812)
!3821 = !DILocation(line: 525, column: 8, scope: !3812)
!3822 = !DILocation(line: 525, column: 18, scope: !3812)
!3823 = !DILocation(line: 526, column: 8, scope: !3812)
!3824 = !DILocation(line: 526, column: 13, scope: !3812)
!3825 = !DILocation(line: 527, column: 3, scope: !3812)
!3826 = distinct !DISubprogram(name: "new_live_track", scope: !3, file: !3, line: 671, type: !3827, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!1577, !6}
!3829 = !{!3830, !3831, !3832, !3833}
!3830 = !DILocalVariable(name: "map", arg: 1, scope: !3826, file: !3, line: 671, type: !6)
!3831 = !DILocalVariable(name: "ptr", scope: !3826, file: !3, line: 673, type: !1577)
!3832 = !DILocalVariable(name: "lim", scope: !3826, file: !3, line: 674, type: !18)
!3833 = !DILocalVariable(name: "x", scope: !3826, file: !3, line: 674, type: !18)
!3834 = !DILocation(line: 0, scope: !3826)
!3835 = !DILocation(line: 677, column: 3, scope: !3826)
!3836 = !DILocation(line: 679, column: 24, scope: !3826)
!3837 = !DILocation(line: 680, column: 8, scope: !3826)
!3838 = !DILocation(line: 680, column: 12, scope: !3826)
!3839 = !DILocation(line: 681, column: 9, scope: !3826)
!3840 = !DILocation(line: 682, column: 70, scope: !3826)
!3841 = !DILocation(line: 682, column: 68, scope: !3826)
!3842 = !DILocation(line: 682, column: 42, scope: !3826)
!3843 = !DILocation(line: 682, column: 8, scope: !3826)
!3844 = !DILocation(line: 682, column: 29, scope: !3826)
!3845 = !DILocation(line: 683, column: 24, scope: !3826)
!3846 = !DILocation(line: 683, column: 8, scope: !3826)
!3847 = !DILocation(line: 683, column: 22, scope: !3826)
!3848 = !DILocation(line: 0, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 684, column: 3)
!3850 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 684, column: 3)
!3851 = !DILocation(line: 684, column: 8, scope: !3850)
!3852 = !DILocation(line: 0, scope: !3850)
!3853 = !DILocation(line: 684, column: 17, scope: !3849)
!3854 = !DILocation(line: 684, column: 3, scope: !3850)
!3855 = !DILocation(line: 685, column: 36, scope: !3849)
!3856 = !DILocation(line: 685, column: 10, scope: !3849)
!3857 = !DILocation(line: 685, column: 5, scope: !3849)
!3858 = !DILocation(line: 685, column: 34, scope: !3849)
!3859 = !DILocation(line: 684, column: 25, scope: !3849)
!3860 = !DILocation(line: 684, column: 3, scope: !3849)
!3861 = distinct !{!3861, !3854, !3862}
!3862 = !DILocation(line: 685, column: 36, scope: !3850)
!3863 = !DILocation(line: 679, column: 9, scope: !3826)
!3864 = !DILocation(line: 686, column: 3, scope: !3826)
!3865 = distinct !DISubprogram(name: "live_track_init", scope: !3, file: !3, line: 822, type: !3866, scopeLine: 823, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !1577, !915}
!3868 = !{!3869, !3870, !3871, !3872}
!3869 = !DILocalVariable(name: "ptr", arg: 1, scope: !3865, file: !3, line: 822, type: !1577)
!3870 = !DILocalVariable(name: "init", arg: 2, scope: !3865, file: !3, line: 822, type: !915)
!3871 = !DILocalVariable(name: "p", scope: !3865, file: !3, line: 824, type: !27)
!3872 = !DILocalVariable(name: "bi", scope: !3865, file: !3, line: 825, type: !3873)
!3873 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !918, line: 218, baseType: !3874)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !918, line: 203, size: 256, elements: !3875)
!3875 = !{!3876, !3877, !3878, !3879}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !3874, file: !918, line: 206, baseType: !921, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !3874, file: !918, line: 209, baseType: !921, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !3874, file: !918, line: 212, baseType: !27, size: 32, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3874, file: !918, line: 217, baseType: !931, size: 64, offset: 192)
!3880 = !DILocation(line: 0, scope: !3865)
!3881 = !DILocation(line: 824, column: 3, scope: !3865)
!3882 = !DILocation(line: 825, column: 3, scope: !3865)
!3883 = !DILocation(line: 828, column: 3, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 828, column: 3)
!3885 = !DILocation(line: 828, column: 3, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3884, file: !3, line: 828, column: 3)
!3887 = !DILocation(line: 829, column: 36, scope: !3886)
!3888 = !DILocation(line: 829, column: 5, scope: !3886)
!3889 = distinct !{!3889, !3883, !3890}
!3890 = !DILocation(line: 829, column: 37, scope: !3884)
!3891 = !DILocation(line: 830, column: 1, scope: !3865)
!3892 = distinct !DISubprogram(name: "live_on_exit", scope: !7, file: !7, line: 297, type: !3893, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3895)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!915, !1589, !310}
!3895 = !{!3896, !3897}
!3896 = !DILocalVariable(name: "live", arg: 1, scope: !3892, file: !7, line: 297, type: !1589)
!3897 = !DILocalVariable(name: "bb", arg: 2, scope: !3892, file: !7, line: 297, type: !310)
!3898 = !DILocation(line: 0, scope: !3892)
!3899 = !DILocation(line: 299, column: 3, scope: !3892)
!3900 = !DILocation(line: 300, column: 3, scope: !3892)
!3901 = !DILocation(line: 301, column: 3, scope: !3892)
!3902 = !DILocation(line: 303, column: 16, scope: !3892)
!3903 = !DILocation(line: 303, column: 28, scope: !3892)
!3904 = !DILocation(line: 303, column: 10, scope: !3892)
!3905 = !DILocation(line: 303, column: 3, scope: !3892)
!3906 = distinct !DISubprogram(name: "gsi_last_bb", scope: !340, file: !340, line: 4450, type: !3278, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3907)
!3907 = !{!3908, !3909, !3910}
!3908 = !DILocalVariable(name: "bb", arg: 1, scope: !3906, file: !340, line: 4450, type: !310)
!3909 = !DILocalVariable(name: "i", scope: !3906, file: !340, line: 4452, type: !2214)
!3910 = !DILocalVariable(name: "seq", scope: !3906, file: !340, line: 4453, type: !337)
!3911 = !DILocation(line: 0, scope: !3906)
!3912 = !DILocation(line: 4452, column: 24, scope: !3906)
!3913 = !DILocation(line: 4455, column: 9, scope: !3906)
!3914 = !DILocation(line: 4456, column: 11, scope: !3906)
!3915 = !DILocation(line: 4456, column: 5, scope: !3906)
!3916 = !DILocation(line: 4456, column: 9, scope: !3906)
!3917 = !DILocation(line: 4457, column: 5, scope: !3906)
!3918 = !DILocation(line: 4457, column: 9, scope: !3906)
!3919 = !DILocation(line: 4458, column: 5, scope: !3906)
!3920 = !DILocation(line: 4458, column: 8, scope: !3906)
!3921 = !DILocation(line: 4461, column: 1, scope: !3906)
!3922 = distinct !DISubprogram(name: "is_gimple_assign", scope: !340, file: !340, line: 1677, type: !3296, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3923)
!3923 = !{!3924}
!3924 = !DILocalVariable(name: "gs", arg: 1, scope: !3922, file: !340, line: 1677, type: !3085)
!3925 = !DILocation(line: 0, scope: !3922)
!3926 = !DILocation(line: 1679, column: 10, scope: !3922)
!3927 = !DILocation(line: 1679, column: 27, scope: !3922)
!3928 = !DILocation(line: 1679, column: 3, scope: !3922)
!3929 = distinct !DISubprogram(name: "live_track_clear_var", scope: !3, file: !3, line: 744, type: !3930, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3932)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{null, !1577, !51}
!3932 = !{!3933, !3934, !3935}
!3933 = !DILocalVariable(name: "ptr", arg: 1, scope: !3929, file: !3, line: 744, type: !1577)
!3934 = !DILocalVariable(name: "var", arg: 2, scope: !3929, file: !3, line: 744, type: !51)
!3935 = !DILocalVariable(name: "p", scope: !3929, file: !3, line: 746, type: !18)
!3936 = !DILocation(line: 0, scope: !3929)
!3937 = !DILocation(line: 748, column: 30, scope: !3929)
!3938 = !DILocation(line: 748, column: 7, scope: !3929)
!3939 = !DILocation(line: 749, column: 9, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 749, column: 7)
!3941 = !DILocation(line: 749, column: 7, scope: !3929)
!3942 = !DILocation(line: 750, column: 5, scope: !3940)
!3943 = !DILocation(line: 751, column: 1, scope: !3929)
!3944 = distinct !DISubprogram(name: "live_track_process_def", scope: !3, file: !3, line: 794, type: !3945, scopeLine: 795, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !1577, !51, !1601}
!3947 = !{!3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955}
!3948 = !DILocalVariable(name: "ptr", arg: 1, scope: !3944, file: !3, line: 794, type: !1577)
!3949 = !DILocalVariable(name: "def", arg: 2, scope: !3944, file: !3, line: 794, type: !51)
!3950 = !DILocalVariable(name: "graph", arg: 3, scope: !3944, file: !3, line: 794, type: !1601)
!3951 = !DILocalVariable(name: "p", scope: !3944, file: !3, line: 796, type: !18)
!3952 = !DILocalVariable(name: "root", scope: !3944, file: !3, line: 796, type: !18)
!3953 = !DILocalVariable(name: "b", scope: !3944, file: !3, line: 797, type: !915)
!3954 = !DILocalVariable(name: "x", scope: !3944, file: !3, line: 798, type: !27)
!3955 = !DILocalVariable(name: "bi", scope: !3944, file: !3, line: 799, type: !3873)
!3956 = !DILocation(line: 0, scope: !3944)
!3957 = !DILocation(line: 798, column: 3, scope: !3944)
!3958 = !DILocation(line: 799, column: 3, scope: !3944)
!3959 = !DILocation(line: 801, column: 30, scope: !3944)
!3960 = !DILocation(line: 801, column: 7, scope: !3944)
!3961 = !DILocation(line: 802, column: 9, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3944, file: !3, line: 802, column: 7)
!3963 = !DILocation(line: 802, column: 7, scope: !3944)
!3964 = !DILocation(line: 806, column: 3, scope: !3944)
!3965 = !DILocation(line: 809, column: 30, scope: !3944)
!3966 = !DILocation(line: 809, column: 10, scope: !3944)
!3967 = !DILocation(line: 810, column: 26, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3944, file: !3, line: 810, column: 7)
!3969 = !DILocation(line: 810, column: 7, scope: !3968)
!3970 = !DILocation(line: 810, column: 7, scope: !3944)
!3971 = !DILocation(line: 812, column: 16, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 811, column: 5)
!3973 = !DILocation(line: 812, column: 11, scope: !3972)
!3974 = !DILocation(line: 813, column: 7, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 813, column: 7)
!3976 = !DILocation(line: 813, column: 7, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3975, file: !3, line: 813, column: 7)
!3978 = !DILocation(line: 814, column: 38, scope: !3977)
!3979 = !DILocation(line: 814, column: 9, scope: !3977)
!3980 = distinct !{!3980, !3974, !3981}
!3981 = !DILocation(line: 814, column: 39, scope: !3975)
!3982 = !DILocation(line: 816, column: 1, scope: !3944)
!3983 = distinct !DISubprogram(name: "live_track_process_use", scope: !3, file: !3, line: 776, type: !3930, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3984)
!3984 = !{!3985, !3986, !3987}
!3985 = !DILocalVariable(name: "ptr", arg: 1, scope: !3983, file: !3, line: 776, type: !1577)
!3986 = !DILocalVariable(name: "use", arg: 2, scope: !3983, file: !3, line: 776, type: !51)
!3987 = !DILocalVariable(name: "p", scope: !3983, file: !3, line: 778, type: !18)
!3988 = !DILocation(line: 0, scope: !3983)
!3989 = !DILocation(line: 780, column: 30, scope: !3983)
!3990 = !DILocation(line: 780, column: 7, scope: !3983)
!3991 = !DILocation(line: 781, column: 9, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 781, column: 7)
!3993 = !DILocation(line: 781, column: 7, scope: !3983)
!3994 = !DILocation(line: 785, column: 3, scope: !3983)
!3995 = !DILocation(line: 786, column: 1, scope: !3983)
!3996 = distinct !DISubprogram(name: "gsi_prev", scope: !340, file: !340, line: 4493, type: !3267, scopeLine: 4494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !3997)
!3997 = !{!3998}
!3998 = !DILocalVariable(name: "i", arg: 1, scope: !3996, file: !340, line: 4493, type: !3269)
!3999 = !DILocation(line: 0, scope: !3996)
!4000 = !DILocation(line: 4495, column: 15, scope: !3996)
!4001 = !DILocation(line: 4495, column: 20, scope: !3996)
!4002 = !DILocation(line: 4495, column: 10, scope: !3996)
!4003 = !DILocation(line: 4496, column: 1, scope: !3996)
!4004 = distinct !DISubprogram(name: "gimple_phi_result_ptr", scope: !340, file: !340, line: 3080, type: !3721, scopeLine: 3081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4005)
!4005 = !{!4006}
!4006 = !DILocalVariable(name: "gs", arg: 1, scope: !4004, file: !340, line: 3080, type: !348)
!4007 = !DILocation(line: 0, scope: !4004)
!4008 = !DILocation(line: 3083, column: 26, scope: !4004)
!4009 = !DILocation(line: 3083, column: 3, scope: !4004)
!4010 = distinct !DISubprogram(name: "live_track_live_p", scope: !3, file: !3, line: 757, type: !4011, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!152, !1577, !51}
!4013 = !{!4014, !4015, !4016, !4017}
!4014 = !DILocalVariable(name: "ptr", arg: 1, scope: !4010, file: !3, line: 757, type: !1577)
!4015 = !DILocalVariable(name: "var", arg: 2, scope: !4010, file: !3, line: 757, type: !51)
!4016 = !DILocalVariable(name: "p", scope: !4010, file: !3, line: 759, type: !18)
!4017 = !DILocalVariable(name: "root", scope: !4010, file: !3, line: 759, type: !18)
!4018 = !DILocation(line: 0, scope: !4010)
!4019 = !DILocation(line: 761, column: 30, scope: !4010)
!4020 = !DILocation(line: 761, column: 7, scope: !4010)
!4021 = !DILocation(line: 762, column: 9, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 762, column: 7)
!4023 = !DILocation(line: 762, column: 7, scope: !4010)
!4024 = !DILocation(line: 764, column: 34, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 763, column: 5)
!4026 = !DILocation(line: 764, column: 14, scope: !4025)
!4027 = !DILocation(line: 765, column: 30, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 765, column: 11)
!4029 = !DILocation(line: 765, column: 11, scope: !4028)
!4030 = !DILocation(line: 765, column: 11, scope: !4025)
!4031 = !DILocation(line: 766, column: 28, scope: !4028)
!4032 = !DILocation(line: 766, column: 23, scope: !4028)
!4033 = !DILocation(line: 766, column: 9, scope: !4028)
!4034 = !DILocation(line: 766, column: 2, scope: !4028)
!4035 = !DILocation(line: 769, column: 1, scope: !4010)
!4036 = distinct !DISubprogram(name: "live_track_clear_base_vars", scope: !3, file: !3, line: 836, type: !4037, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4039)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{null, !1577}
!4039 = !{!4040}
!4040 = !DILocalVariable(name: "ptr", arg: 1, scope: !4036, file: !3, line: 836, type: !1577)
!4041 = !DILocation(line: 0, scope: !4036)
!4042 = !DILocation(line: 841, column: 22, scope: !4036)
!4043 = !DILocation(line: 841, column: 3, scope: !4036)
!4044 = !DILocation(line: 842, column: 1, scope: !4036)
!4045 = distinct !DISubprogram(name: "delete_live_track", scope: !3, file: !3, line: 693, type: !4037, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4046)
!4046 = !{!4047, !4048, !4049}
!4047 = !DILocalVariable(name: "ptr", arg: 1, scope: !4045, file: !3, line: 693, type: !1577)
!4048 = !DILocalVariable(name: "x", scope: !4045, file: !3, line: 695, type: !18)
!4049 = !DILocalVariable(name: "lim", scope: !4045, file: !3, line: 695, type: !18)
!4050 = !DILocation(line: 0, scope: !4045)
!4051 = !DILocation(line: 697, column: 28, scope: !4045)
!4052 = !DILocation(line: 697, column: 9, scope: !4045)
!4053 = !DILocation(line: 0, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 698, column: 3)
!4055 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 698, column: 3)
!4056 = !DILocation(line: 698, column: 8, scope: !4055)
!4057 = !DILocation(line: 0, scope: !4055)
!4058 = !DILocation(line: 698, column: 17, scope: !4054)
!4059 = !DILocation(line: 698, column: 3, scope: !4055)
!4060 = !DILocation(line: 699, column: 5, scope: !4054)
!4061 = !DILocation(line: 698, column: 25, scope: !4054)
!4062 = !DILocation(line: 698, column: 3, scope: !4054)
!4063 = distinct !{!4063, !4059, !4064}
!4064 = !DILocation(line: 699, column: 5, scope: !4055)
!4065 = !DILocation(line: 700, column: 3, scope: !4045)
!4066 = !DILocation(line: 701, column: 14, scope: !4045)
!4067 = !DILocation(line: 701, column: 3, scope: !4045)
!4068 = !DILocation(line: 702, column: 9, scope: !4045)
!4069 = !DILocation(line: 702, column: 3, scope: !4045)
!4070 = !DILocation(line: 703, column: 1, scope: !4045)
!4071 = distinct !DISubprogram(name: "num_basevars", scope: !7, file: !7, line: 184, type: !4072, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4074)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!18, !6}
!4074 = !{!4075}
!4075 = !DILocalVariable(name: "map", arg: 1, scope: !4071, file: !7, line: 184, type: !6)
!4076 = !DILocation(line: 0, scope: !4071)
!4077 = !DILocation(line: 186, column: 15, scope: !4071)
!4078 = !DILocation(line: 186, column: 3, scope: !4071)
!4079 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !918, file: !918, line: 224, type: !4080, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4087)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{null, !4082, !4083, !27, !4086}
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !52, line: 48, baseType: !4084)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !917)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!4087 = !{!4088, !4089, !4090, !4091}
!4088 = !DILocalVariable(name: "bi", arg: 1, scope: !4079, file: !918, line: 224, type: !4082)
!4089 = !DILocalVariable(name: "map", arg: 2, scope: !4079, file: !918, line: 224, type: !4083)
!4090 = !DILocalVariable(name: "start_bit", arg: 3, scope: !4079, file: !918, line: 225, type: !27)
!4091 = !DILocalVariable(name: "bit_no", arg: 4, scope: !4079, file: !918, line: 225, type: !4086)
!4092 = !DILocation(line: 0, scope: !4079)
!4093 = !DILocation(line: 227, column: 19, scope: !4079)
!4094 = !DILocation(line: 227, column: 12, scope: !4079)
!4095 = !DILocation(line: 228, column: 7, scope: !4079)
!4096 = !DILocation(line: 228, column: 12, scope: !4079)
!4097 = !DILocation(line: 0, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4099, file: !918, line: 233, column: 11)
!4099 = distinct !DILexicalBlock(scope: !4079, file: !918, line: 232, column: 5)
!4100 = !DILocation(line: 231, column: 3, scope: !4079)
!4101 = !DILocation(line: 233, column: 12, scope: !4098)
!4102 = !DILocation(line: 233, column: 11, scope: !4099)
!4103 = !DILocation(line: 235, column: 13, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4098, file: !918, line: 234, column: 2)
!4105 = !DILocation(line: 236, column: 4, scope: !4104)
!4106 = !DILocation(line: 239, column: 11, scope: !4099)
!4107 = distinct !{!4107, !4100, !4108}
!4108 = !DILocation(line: 242, column: 5, scope: !4079)
!4109 = !DILocation(line: 245, column: 11, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4079, file: !918, line: 245, column: 7)
!4111 = !DILocation(line: 245, column: 17, scope: !4110)
!4112 = !DILocation(line: 245, column: 22, scope: !4110)
!4113 = !DILocation(line: 245, column: 7, scope: !4079)
!4114 = !DILocation(line: 246, column: 27, scope: !4110)
!4115 = !DILocation(line: 246, column: 32, scope: !4110)
!4116 = !DILocation(line: 246, column: 5, scope: !4110)
!4117 = !DILocation(line: 249, column: 7, scope: !4079)
!4118 = !DILocation(line: 249, column: 15, scope: !4079)
!4119 = !DILocation(line: 250, column: 14, scope: !4079)
!4120 = !DILocation(line: 251, column: 7, scope: !4079)
!4121 = !DILocation(line: 251, column: 12, scope: !4079)
!4122 = !DILocation(line: 257, column: 16, scope: !4079)
!4123 = !DILocation(line: 257, column: 13, scope: !4079)
!4124 = !DILocation(line: 259, column: 11, scope: !4079)
!4125 = !DILocation(line: 260, column: 1, scope: !4079)
!4126 = distinct !DISubprogram(name: "bmp_iter_set", scope: !918, file: !918, line: 393, type: !4127, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4129)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!152, !4082, !4086}
!4129 = !{!4130, !4131, !4132}
!4130 = !DILocalVariable(name: "bi", arg: 1, scope: !4126, file: !918, line: 393, type: !4082)
!4131 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4126, file: !918, line: 393, type: !4086)
!4132 = !DILabel(scope: !4133, name: "next_bit", file: !918, line: 398)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !918, line: 397, column: 5)
!4134 = distinct !DILexicalBlock(scope: !4126, file: !918, line: 396, column: 7)
!4135 = !DILocation(line: 0, scope: !4126)
!4136 = !DILocation(line: 396, column: 11, scope: !4134)
!4137 = !DILocation(line: 396, column: 7, scope: !4134)
!4138 = !DILocation(line: 396, column: 7, scope: !4126)
!4139 = !DILocation(line: 419, column: 15, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4141, file: !918, line: 418, column: 2)
!4141 = distinct !DILexicalBlock(scope: !4126, file: !918, line: 415, column: 5)
!4142 = !DILocation(line: 399, column: 7, scope: !4133)
!4143 = !DILocation(line: 398, column: 5, scope: !4133)
!4144 = !DILocation(line: 399, column: 20, scope: !4133)
!4145 = !DILocation(line: 399, column: 25, scope: !4133)
!4146 = !DILocation(line: 399, column: 14, scope: !4133)
!4147 = !DILocation(line: 401, column: 13, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4133, file: !918, line: 400, column: 2)
!4149 = !DILocation(line: 402, column: 12, scope: !4148)
!4150 = distinct !{!4150, !4142, !4151}
!4151 = !DILocation(line: 403, column: 2, scope: !4133)
!4152 = !DILocation(line: 410, column: 15, scope: !4126)
!4153 = !DILocation(line: 410, column: 42, scope: !4126)
!4154 = !DILocation(line: 411, column: 26, scope: !4126)
!4155 = !DILocation(line: 410, column: 11, scope: !4126)
!4156 = !DILocation(line: 412, column: 7, scope: !4126)
!4157 = !DILocation(line: 412, column: 14, scope: !4126)
!4158 = !DILocation(line: 0, scope: !4141)
!4159 = !DILocation(line: 414, column: 3, scope: !4126)
!4160 = !DILocation(line: 417, column: 7, scope: !4141)
!4161 = !DILocation(line: 417, column: 18, scope: !4141)
!4162 = !DILocation(line: 417, column: 26, scope: !4141)
!4163 = !DILocation(line: 419, column: 13, scope: !4140)
!4164 = !DILocation(line: 420, column: 8, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4140, file: !918, line: 420, column: 8)
!4166 = !DILocation(line: 420, column: 8, scope: !4140)
!4167 = !DILocation(line: 422, column: 12, scope: !4140)
!4168 = !DILocation(line: 423, column: 15, scope: !4140)
!4169 = distinct !{!4169, !4160, !4170}
!4170 = !DILocation(line: 424, column: 2, scope: !4141)
!4171 = !DILocation(line: 427, column: 28, scope: !4141)
!4172 = !DILocation(line: 427, column: 16, scope: !4141)
!4173 = !DILocation(line: 428, column: 12, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4141, file: !918, line: 428, column: 11)
!4175 = !DILocation(line: 428, column: 11, scope: !4141)
!4176 = !DILocation(line: 430, column: 27, scope: !4141)
!4177 = !DILocation(line: 430, column: 32, scope: !4141)
!4178 = !DILocation(line: 430, column: 15, scope: !4141)
!4179 = !DILocation(line: 431, column: 19, scope: !4141)
!4180 = distinct !{!4180, !4159, !4181}
!4181 = !DILocation(line: 432, column: 5, scope: !4126)
!4182 = !DILocation(line: 433, column: 1, scope: !4126)
!4183 = distinct !DISubprogram(name: "live_track_add_partition", scope: !3, file: !3, line: 724, type: !4184, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4186)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{null, !1577, !18}
!4186 = !{!4187, !4188, !4189}
!4187 = !DILocalVariable(name: "ptr", arg: 1, scope: !4183, file: !3, line: 724, type: !1577)
!4188 = !DILocalVariable(name: "partition", arg: 2, scope: !4183, file: !3, line: 724, type: !18)
!4189 = !DILocalVariable(name: "root", scope: !4183, file: !3, line: 726, type: !18)
!4190 = !DILocation(line: 0, scope: !4183)
!4191 = !DILocation(line: 728, column: 30, scope: !4183)
!4192 = !DILocation(line: 728, column: 10, scope: !4183)
!4193 = !DILocation(line: 731, column: 27, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 731, column: 7)
!4195 = !DILocation(line: 731, column: 8, scope: !4194)
!4196 = !DILocation(line: 731, column: 7, scope: !4183)
!4197 = !DILocation(line: 736, column: 19, scope: !4183)
!4198 = !DILocation(line: 733, column: 28, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4194, file: !3, line: 732, column: 5)
!4200 = !DILocation(line: 733, column: 7, scope: !4199)
!4201 = !DILocation(line: 734, column: 26, scope: !4199)
!4202 = !DILocation(line: 734, column: 21, scope: !4199)
!4203 = !DILocation(line: 734, column: 7, scope: !4199)
!4204 = !DILocation(line: 735, column: 5, scope: !4199)
!4205 = !DILocation(line: 736, column: 24, scope: !4183)
!4206 = !DILocation(line: 736, column: 3, scope: !4183)
!4207 = !DILocation(line: 738, column: 1, scope: !4183)
!4208 = distinct !DISubprogram(name: "bmp_iter_next", scope: !918, file: !918, line: 382, type: !4209, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4211)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{null, !4082, !4086}
!4211 = !{!4212, !4213}
!4212 = !DILocalVariable(name: "bi", arg: 1, scope: !4208, file: !918, line: 382, type: !4082)
!4213 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4208, file: !918, line: 382, type: !4086)
!4214 = !DILocation(line: 0, scope: !4208)
!4215 = !DILocation(line: 384, column: 7, scope: !4208)
!4216 = !DILocation(line: 384, column: 12, scope: !4208)
!4217 = !DILocation(line: 385, column: 11, scope: !4208)
!4218 = !DILocation(line: 386, column: 1, scope: !4208)
!4219 = distinct !DISubprogram(name: "basevar_index", scope: !7, file: !7, line: 173, type: !4220, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4222)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!18, !6, !18}
!4222 = !{!4223, !4224}
!4223 = !DILocalVariable(name: "map", arg: 1, scope: !4219, file: !7, line: 173, type: !6)
!4224 = !DILocalVariable(name: "partition", arg: 2, scope: !4219, file: !7, line: 173, type: !18)
!4225 = !DILocation(line: 0, scope: !4219)
!4226 = !DILocation(line: 175, column: 3, scope: !4219)
!4227 = !DILocation(line: 177, column: 15, scope: !4219)
!4228 = !DILocation(line: 177, column: 10, scope: !4219)
!4229 = !DILocation(line: 177, column: 3, scope: !4219)
!4230 = distinct !DISubprogram(name: "gimple_seq_last", scope: !340, file: !340, line: 178, type: !3571, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4231)
!4231 = !{!4232}
!4232 = !DILocalVariable(name: "s", arg: 1, scope: !4230, file: !340, line: 178, type: !3573)
!4233 = !DILocation(line: 0, scope: !4230)
!4234 = !DILocation(line: 180, column: 10, scope: !4230)
!4235 = !DILocation(line: 180, column: 17, scope: !4230)
!4236 = !DILocation(line: 180, column: 3, scope: !4230)
!4237 = distinct !DISubprogram(name: "var_to_partition", scope: !7, file: !7, line: 143, type: !4238, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4240)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!18, !6, !51}
!4240 = !{!4241, !4242, !4243}
!4241 = !DILocalVariable(name: "map", arg: 1, scope: !4237, file: !7, line: 143, type: !6)
!4242 = !DILocalVariable(name: "var", arg: 2, scope: !4237, file: !7, line: 143, type: !51)
!4243 = !DILocalVariable(name: "part", scope: !4237, file: !7, line: 145, type: !18)
!4244 = !DILocation(line: 0, scope: !4237)
!4245 = !DILocation(line: 147, column: 3, scope: !4237)
!4246 = !DILocation(line: 148, column: 10, scope: !4237)
!4247 = !DILocation(line: 149, column: 12, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4237, file: !7, line: 149, column: 7)
!4249 = !DILocation(line: 149, column: 7, scope: !4248)
!4250 = !DILocation(line: 149, column: 7, scope: !4237)
!4251 = !DILocation(line: 150, column: 12, scope: !4248)
!4252 = !DILocation(line: 150, column: 5, scope: !4248)
!4253 = !DILocation(line: 151, column: 3, scope: !4237)
!4254 = distinct !DISubprogram(name: "live_track_remove_partition", scope: !3, file: !3, line: 709, type: !4184, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4255)
!4255 = !{!4256, !4257, !4258}
!4256 = !DILocalVariable(name: "ptr", arg: 1, scope: !4254, file: !3, line: 709, type: !1577)
!4257 = !DILocalVariable(name: "partition", arg: 2, scope: !4254, file: !3, line: 709, type: !18)
!4258 = !DILocalVariable(name: "root", scope: !4254, file: !3, line: 711, type: !18)
!4259 = !DILocation(line: 0, scope: !4254)
!4260 = !DILocation(line: 713, column: 30, scope: !4254)
!4261 = !DILocation(line: 713, column: 10, scope: !4254)
!4262 = !DILocation(line: 714, column: 26, scope: !4254)
!4263 = !DILocation(line: 714, column: 21, scope: !4254)
!4264 = !DILocation(line: 714, column: 3, scope: !4254)
!4265 = !DILocation(line: 716, column: 7, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 716, column: 7)
!4267 = !DILocation(line: 716, column: 7, scope: !4254)
!4268 = !DILocation(line: 717, column: 28, scope: !4266)
!4269 = !DILocation(line: 717, column: 5, scope: !4266)
!4270 = !DILocation(line: 718, column: 1, scope: !4254)
!4271 = distinct !DISubprogram(name: "ssa_conflicts_add", scope: !3, file: !3, line: 583, type: !4272, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4274)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{null, !1601, !27, !27}
!4274 = !{!4275, !4276, !4277}
!4275 = !DILocalVariable(name: "ptr", arg: 1, scope: !4271, file: !3, line: 583, type: !1601)
!4276 = !DILocalVariable(name: "x", arg: 2, scope: !4271, file: !3, line: 583, type: !27)
!4277 = !DILocalVariable(name: "y", arg: 3, scope: !4271, file: !3, line: 583, type: !27)
!4278 = !DILocation(line: 0, scope: !4271)
!4279 = !DILocation(line: 590, column: 3, scope: !4271)
!4280 = !DILocation(line: 591, column: 3, scope: !4271)
!4281 = !DILocation(line: 592, column: 1, scope: !4271)
!4282 = distinct !DISubprogram(name: "ssa_conflicts_add_one", scope: !3, file: !3, line: 571, type: !4272, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4283)
!4283 = !{!4284, !4285, !4286}
!4284 = !DILocalVariable(name: "ptr", arg: 1, scope: !4282, file: !3, line: 571, type: !1601)
!4285 = !DILocalVariable(name: "x", arg: 2, scope: !4282, file: !3, line: 571, type: !27)
!4286 = !DILocalVariable(name: "y", arg: 3, scope: !4282, file: !3, line: 571, type: !27)
!4287 = !DILocation(line: 0, scope: !4282)
!4288 = !DILocation(line: 574, column: 13, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 574, column: 7)
!4290 = !DILocation(line: 574, column: 8, scope: !4289)
!4291 = !DILocation(line: 574, column: 7, scope: !4282)
!4292 = !DILocation(line: 575, column: 25, scope: !4289)
!4293 = !DILocation(line: 575, column: 10, scope: !4289)
!4294 = !DILocation(line: 575, column: 5, scope: !4289)
!4295 = !DILocation(line: 575, column: 23, scope: !4289)
!4296 = !DILocation(line: 576, column: 24, scope: !4282)
!4297 = !DILocation(line: 576, column: 19, scope: !4282)
!4298 = !DILocation(line: 576, column: 3, scope: !4282)
!4299 = !DILocation(line: 577, column: 1, scope: !4282)
!4300 = distinct !DISubprogram(name: "num_coalesce_pairs", scope: !3, file: !3, line: 358, type: !4301, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4303)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!18, !1540}
!4303 = !{!4304}
!4304 = !DILocalVariable(name: "cl", arg: 1, scope: !4300, file: !3, line: 358, type: !1540)
!4305 = !DILocation(line: 0, scope: !4300)
!4306 = !DILocation(line: 360, column: 29, scope: !4300)
!4307 = !DILocation(line: 360, column: 10, scope: !4300)
!4308 = !DILocation(line: 360, column: 3, scope: !4300)
!4309 = distinct !DISubprogram(name: "first_coalesce_pair", scope: !3, file: !3, line: 374, type: !4310, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4313)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!1547, !1540, !4312}
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!4313 = !{!4314, !4315, !4316}
!4314 = !DILocalVariable(name: "cl", arg: 1, scope: !4309, file: !3, line: 374, type: !1540)
!4315 = !DILocalVariable(name: "iter", arg: 2, scope: !4309, file: !3, line: 374, type: !4312)
!4316 = !DILocalVariable(name: "pair", scope: !4309, file: !3, line: 376, type: !1547)
!4317 = !DILocation(line: 0, scope: !4309)
!4318 = !DILocation(line: 378, column: 56, scope: !4309)
!4319 = !DILocation(line: 378, column: 66, scope: !4309)
!4320 = !DILocation(line: 378, column: 28, scope: !4309)
!4321 = !DILocation(line: 378, column: 10, scope: !4309)
!4322 = !DILocation(line: 379, column: 3, scope: !4309)
!4323 = distinct !DISubprogram(name: "end_coalesce_pair_p", scope: !3, file: !3, line: 386, type: !4324, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4326)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!152, !4312}
!4326 = !{!4327}
!4327 = !DILocalVariable(name: "iter", arg: 1, scope: !4323, file: !3, line: 386, type: !4312)
!4328 = !DILocation(line: 0, scope: !4323)
!4329 = !DILocation(line: 388, column: 30, scope: !4323)
!4330 = !DILocation(line: 388, column: 10, scope: !4323)
!4331 = !DILocation(line: 388, column: 3, scope: !4323)
!4332 = distinct !DISubprogram(name: "next_coalesce_pair", scope: !3, file: !3, line: 395, type: !4333, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4335)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!1547, !4312}
!4335 = !{!4336, !4337}
!4336 = !DILocalVariable(name: "iter", arg: 1, scope: !4332, file: !3, line: 395, type: !4312)
!4337 = !DILocalVariable(name: "pair", scope: !4332, file: !3, line: 397, type: !1547)
!4338 = !DILocation(line: 0, scope: !4332)
!4339 = !DILocation(line: 399, column: 55, scope: !4332)
!4340 = !DILocation(line: 399, column: 28, scope: !4332)
!4341 = !DILocation(line: 399, column: 10, scope: !4332)
!4342 = !DILocation(line: 400, column: 3, scope: !4332)
!4343 = distinct !DISubprogram(name: "compare_pairs", scope: !3, file: !3, line: 334, type: !851, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4344)
!4344 = !{!4345, !4346, !4347, !4349, !4350}
!4345 = !DILocalVariable(name: "p1", arg: 1, scope: !4343, file: !3, line: 334, type: !846)
!4346 = !DILocalVariable(name: "p2", arg: 2, scope: !4343, file: !3, line: 334, type: !846)
!4347 = !DILocalVariable(name: "pp1", scope: !4343, file: !3, line: 336, type: !4348)
!4348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1584)
!4349 = !DILocalVariable(name: "pp2", scope: !4343, file: !3, line: 337, type: !4348)
!4350 = !DILocalVariable(name: "result", scope: !4343, file: !3, line: 338, type: !18)
!4351 = !DILocation(line: 0, scope: !4343)
!4352 = !DILocation(line: 336, column: 44, scope: !4343)
!4353 = !DILocation(line: 337, column: 44, scope: !4343)
!4354 = !DILocation(line: 340, column: 13, scope: !4343)
!4355 = !DILocation(line: 340, column: 21, scope: !4343)
!4356 = !DILocation(line: 340, column: 29, scope: !4343)
!4357 = !DILocation(line: 340, column: 37, scope: !4343)
!4358 = !DILocation(line: 340, column: 26, scope: !4343)
!4359 = !DILocation(line: 344, column: 14, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 344, column: 7)
!4361 = !DILocation(line: 344, column: 7, scope: !4343)
!4362 = !DILocation(line: 346, column: 25, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 345, column: 5)
!4364 = !DILocation(line: 346, column: 50, scope: !4363)
!4365 = !DILocation(line: 346, column: 39, scope: !4363)
!4366 = !DILocation(line: 347, column: 18, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 347, column: 11)
!4368 = !DILocation(line: 347, column: 11, scope: !4363)
!4369 = !DILocation(line: 348, column: 20, scope: !4367)
!4370 = !DILocation(line: 348, column: 46, scope: !4367)
!4371 = !DILocation(line: 348, column: 35, scope: !4367)
!4372 = !DILocation(line: 348, column: 2, scope: !4367)
!4373 = !DILocation(line: 351, column: 3, scope: !4343)
!4374 = distinct !DISubprogram(name: "first_htab_element", scope: !2555, file: !2555, line: 58, type: !4375, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4378)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!749, !4377, !835}
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!4378 = !{!4379, !4380, !4381}
!4379 = !DILocalVariable(name: "hti", arg: 1, scope: !4374, file: !2555, line: 58, type: !4377)
!4380 = !DILocalVariable(name: "table", arg: 2, scope: !4374, file: !2555, line: 58, type: !835)
!4381 = !DILocalVariable(name: "x", scope: !4382, file: !2555, line: 65, type: !749)
!4382 = distinct !DILexicalBlock(scope: !4374, file: !2555, line: 64, column: 5)
!4383 = !DILocation(line: 0, scope: !4374)
!4384 = !DILocation(line: 60, column: 8, scope: !4374)
!4385 = !DILocation(line: 60, column: 13, scope: !4374)
!4386 = !DILocation(line: 61, column: 22, scope: !4374)
!4387 = !DILocation(line: 61, column: 8, scope: !4374)
!4388 = !DILocation(line: 61, column: 13, scope: !4374)
!4389 = !DILocation(line: 62, column: 21, scope: !4374)
!4390 = !DILocation(line: 62, column: 28, scope: !4374)
!4391 = !DILocation(line: 62, column: 26, scope: !4374)
!4392 = !DILocation(line: 62, column: 8, scope: !4374)
!4393 = !DILocation(line: 62, column: 14, scope: !4374)
!4394 = !DILocation(line: 65, column: 22, scope: !4382)
!4395 = !DILocation(line: 63, column: 3, scope: !4374)
!4396 = !DILocation(line: 65, column: 15, scope: !4382)
!4397 = !DILocation(line: 66, column: 33, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4382, file: !2555, line: 66, column: 11)
!4399 = !DILocation(line: 68, column: 14, scope: !4374)
!4400 = !DILocation(line: 68, column: 28, scope: !4374)
!4401 = !DILocation(line: 68, column: 5, scope: !4382)
!4402 = distinct !{!4402, !4395, !4403}
!4403 = !DILocation(line: 68, column: 40, scope: !4374)
!4404 = !DILocation(line: 70, column: 12, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4374, file: !2555, line: 70, column: 7)
!4406 = !DILocation(line: 70, column: 17, scope: !4405)
!4407 = !DILocation(line: 70, column: 7, scope: !4374)
!4408 = !DILocation(line: 71, column: 12, scope: !4405)
!4409 = !DILocation(line: 71, column: 5, scope: !4405)
!4410 = !DILocation(line: 73, column: 1, scope: !4374)
!4411 = distinct !DISubprogram(name: "end_htab_p", scope: !2555, file: !2555, line: 79, type: !4412, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4416)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!152, !4414}
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2785)
!4416 = !{!4417}
!4417 = !DILocalVariable(name: "hti", arg: 1, scope: !4411, file: !2555, line: 79, type: !4414)
!4418 = !DILocation(line: 0, scope: !4411)
!4419 = !DILocation(line: 81, column: 12, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4411, file: !2555, line: 81, column: 7)
!4421 = !DILocation(line: 81, column: 25, scope: !4420)
!4422 = !DILocation(line: 81, column: 17, scope: !4420)
!4423 = !DILocation(line: 84, column: 1, scope: !4411)
!4424 = distinct !DISubprogram(name: "next_htab_element", scope: !2555, file: !2555, line: 90, type: !4425, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4427)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!749, !4377}
!4427 = !{!4428, !4429}
!4428 = !DILocalVariable(name: "hti", arg: 1, scope: !4424, file: !2555, line: 90, type: !4377)
!4429 = !DILocalVariable(name: "x", scope: !4430, file: !2555, line: 94, type: !749)
!4430 = distinct !DILexicalBlock(scope: !4424, file: !2555, line: 93, column: 5)
!4431 = !DILocation(line: 0, scope: !4424)
!4432 = !DILocation(line: 94, column: 22, scope: !4430)
!4433 = !DILocation(line: 92, column: 10, scope: !4424)
!4434 = !DILocation(line: 92, column: 31, scope: !4424)
!4435 = !DILocation(line: 92, column: 3, scope: !4424)
!4436 = !DILocation(line: 92, column: 24, scope: !4424)
!4437 = !DILocation(line: 94, column: 15, scope: !4430)
!4438 = !DILocation(line: 0, scope: !4430)
!4439 = !DILocation(line: 95, column: 33, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4430, file: !2555, line: 95, column: 11)
!4441 = distinct !{!4441, !4435, !4442}
!4442 = !DILocation(line: 97, column: 5, scope: !4424)
!4443 = !DILocation(line: 99, column: 1, scope: !4424)
!4444 = distinct !DISubprogram(name: "attempt_coalesce", scope: !3, file: !3, line: 1218, type: !4445, scopeLine: 1220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4447)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!152, !6, !1601, !18, !18, !1648}
!4447 = !{!4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457}
!4448 = !DILocalVariable(name: "map", arg: 1, scope: !4444, file: !3, line: 1218, type: !6)
!4449 = !DILocalVariable(name: "graph", arg: 2, scope: !4444, file: !3, line: 1218, type: !1601)
!4450 = !DILocalVariable(name: "x", arg: 3, scope: !4444, file: !3, line: 1218, type: !18)
!4451 = !DILocalVariable(name: "y", arg: 4, scope: !4444, file: !3, line: 1218, type: !18)
!4452 = !DILocalVariable(name: "debug", arg: 5, scope: !4444, file: !3, line: 1219, type: !1648)
!4453 = !DILocalVariable(name: "z", scope: !4444, file: !3, line: 1221, type: !18)
!4454 = !DILocalVariable(name: "var1", scope: !4444, file: !3, line: 1222, type: !51)
!4455 = !DILocalVariable(name: "var2", scope: !4444, file: !3, line: 1222, type: !51)
!4456 = !DILocalVariable(name: "p1", scope: !4444, file: !3, line: 1223, type: !18)
!4457 = !DILocalVariable(name: "p2", scope: !4444, file: !3, line: 1223, type: !18)
!4458 = !DILocation(line: 0, scope: !4444)
!4459 = !DILocation(line: 1225, column: 31, scope: !4444)
!4460 = !DILocation(line: 1225, column: 8, scope: !4444)
!4461 = !DILocation(line: 1226, column: 31, scope: !4444)
!4462 = !DILocation(line: 1226, column: 8, scope: !4444)
!4463 = !DILocation(line: 1228, column: 7, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 1228, column: 7)
!4465 = !DILocation(line: 1228, column: 7, scope: !4444)
!4466 = !DILocation(line: 1230, column: 7, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 1229, column: 5)
!4468 = !DILocation(line: 1231, column: 34, scope: !4467)
!4469 = !DILocation(line: 1231, column: 7, scope: !4467)
!4470 = !DILocation(line: 1232, column: 7, scope: !4467)
!4471 = !DILocation(line: 1233, column: 34, scope: !4467)
!4472 = !DILocation(line: 1233, column: 7, scope: !4467)
!4473 = !DILocation(line: 1234, column: 5, scope: !4467)
!4474 = !DILocation(line: 1236, column: 10, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 1236, column: 7)
!4476 = !DILocation(line: 1236, column: 7, scope: !4444)
!4477 = !DILocation(line: 1238, column: 11, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 1237, column: 5)
!4479 = !DILocation(line: 1239, column: 2, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 1238, column: 11)
!4481 = !DILocation(line: 1243, column: 7, scope: !4444)
!4482 = !DILocation(line: 1244, column: 5, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 1243, column: 7)
!4484 = !DILocation(line: 1247, column: 8, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 1247, column: 7)
!4486 = !DILocation(line: 1247, column: 7, scope: !4444)
!4487 = !DILocation(line: 1249, column: 14, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 1248, column: 5)
!4489 = !DILocation(line: 1250, column: 14, scope: !4488)
!4490 = !DILocation(line: 1251, column: 11, scope: !4488)
!4491 = !DILocation(line: 1252, column: 13, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 1252, column: 11)
!4493 = !DILocation(line: 1252, column: 11, scope: !4488)
!4494 = !DILocation(line: 1254, column: 8, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 1253, column: 2)
!4496 = !DILocation(line: 1255, column: 6, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 1254, column: 8)
!4498 = !DILocation(line: 1261, column: 13, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 1261, column: 11)
!4500 = !DILocation(line: 1261, column: 11, scope: !4488)
!4501 = !DILocation(line: 1262, column: 2, scope: !4499)
!4502 = !DILocation(line: 1264, column: 2, scope: !4499)
!4503 = !DILocation(line: 1266, column: 11, scope: !4488)
!4504 = !DILocation(line: 1267, column: 2, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 1266, column: 11)
!4506 = !DILocation(line: 1271, column: 7, scope: !4444)
!4507 = !DILocation(line: 1272, column: 5, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 1271, column: 7)
!4509 = !DILocation(line: 1275, column: 1, scope: !4444)
!4510 = distinct !DISubprogram(name: "fail_abnormal_edge_coalesce", scope: !3, file: !3, line: 970, type: !4511, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4513)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{null, !18, !18}
!4513 = !{!4514, !4515}
!4514 = !DILocalVariable(name: "x", arg: 1, scope: !4510, file: !3, line: 970, type: !18)
!4515 = !DILocalVariable(name: "y", arg: 2, scope: !4510, file: !3, line: 970, type: !18)
!4516 = !DILocation(line: 0, scope: !4510)
!4517 = !DILocation(line: 972, column: 12, scope: !4510)
!4518 = !DILocation(line: 972, column: 3, scope: !4510)
!4519 = !DILocation(line: 973, column: 12, scope: !4510)
!4520 = !DILocation(line: 973, column: 3, scope: !4510)
!4521 = !DILocation(line: 974, column: 23, scope: !4510)
!4522 = !DILocation(line: 974, column: 31, scope: !4510)
!4523 = !DILocation(line: 974, column: 3, scope: !4510)
!4524 = !DILocation(line: 975, column: 12, scope: !4510)
!4525 = !DILocation(line: 975, column: 3, scope: !4510)
!4526 = !DILocation(line: 976, column: 23, scope: !4510)
!4527 = !DILocation(line: 976, column: 31, scope: !4510)
!4528 = !DILocation(line: 976, column: 3, scope: !4510)
!4529 = !DILocation(line: 978, column: 3, scope: !4510)
!4530 = !DILocation(line: 979, column: 1, scope: !4510)
!4531 = distinct !DISubprogram(name: "pop_best_coalesce", scope: !3, file: !3, line: 168, type: !4532, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4534)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!18, !1540, !31, !31}
!4534 = !{!4535, !4536, !4537, !4538, !4539}
!4535 = !DILocalVariable(name: "cl", arg: 1, scope: !4531, file: !3, line: 168, type: !1540)
!4536 = !DILocalVariable(name: "p1", arg: 2, scope: !4531, file: !3, line: 168, type: !31)
!4537 = !DILocalVariable(name: "p2", arg: 3, scope: !4531, file: !3, line: 168, type: !31)
!4538 = !DILocalVariable(name: "node", scope: !4531, file: !3, line: 170, type: !1547)
!4539 = !DILocalVariable(name: "ret", scope: !4531, file: !3, line: 171, type: !18)
!4540 = !DILocation(line: 0, scope: !4531)
!4541 = !DILocation(line: 173, column: 11, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 173, column: 7)
!4543 = !DILocation(line: 173, column: 18, scope: !4542)
!4544 = !DILocation(line: 173, column: 7, scope: !4531)
!4545 = !DILocation(line: 174, column: 12, scope: !4542)
!4546 = !DILocation(line: 174, column: 5, scope: !4542)
!4547 = !DILocation(line: 176, column: 11, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 176, column: 7)
!4549 = !DILocation(line: 176, column: 22, scope: !4548)
!4550 = !DILocation(line: 176, column: 7, scope: !4531)
!4551 = !DILocation(line: 177, column: 12, scope: !4548)
!4552 = !DILocation(line: 177, column: 5, scope: !4548)
!4553 = !DILocation(line: 179, column: 21, scope: !4531)
!4554 = !DILocation(line: 179, column: 10, scope: !4531)
!4555 = !DILocation(line: 180, column: 15, scope: !4531)
!4556 = !DILocation(line: 180, column: 7, scope: !4531)
!4557 = !DILocation(line: 181, column: 15, scope: !4531)
!4558 = !DILocation(line: 181, column: 7, scope: !4531)
!4559 = !DILocation(line: 182, column: 15, scope: !4531)
!4560 = !DILocation(line: 183, column: 9, scope: !4531)
!4561 = !DILocation(line: 183, column: 3, scope: !4531)
!4562 = !DILocation(line: 185, column: 3, scope: !4531)
!4563 = !DILocation(line: 186, column: 1, scope: !4531)
!4564 = distinct !DISubprogram(name: "partition_to_var", scope: !7, file: !7, line: 111, type: !4565, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4567)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!51, !6, !18}
!4567 = !{!4568, !4569, !4570}
!4568 = !DILocalVariable(name: "map", arg: 1, scope: !4564, file: !7, line: 111, type: !6)
!4569 = !DILocalVariable(name: "i", arg: 2, scope: !4564, file: !7, line: 111, type: !18)
!4570 = !DILocalVariable(name: "name", scope: !4564, file: !7, line: 113, type: !51)
!4571 = !DILocation(line: 0, scope: !4564)
!4572 = !DILocation(line: 114, column: 12, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4564, file: !7, line: 114, column: 7)
!4574 = !DILocation(line: 114, column: 7, scope: !4573)
!4575 = !DILocation(line: 114, column: 7, scope: !4564)
!4576 = !DILocation(line: 115, column: 9, scope: !4573)
!4577 = !DILocation(line: 115, column: 5, scope: !4573)
!4578 = !DILocation(line: 116, column: 7, scope: !4564)
!4579 = !DILocation(line: 117, column: 10, scope: !4564)
!4580 = !DILocation(line: 118, column: 3, scope: !4564)
!4581 = distinct !DISubprogram(name: "ssa_conflicts_test_p", scope: !3, file: !3, line: 549, type: !4582, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4584)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!152, !1601, !27, !27}
!4584 = !{!4585, !4586, !4587, !4588}
!4585 = !DILocalVariable(name: "ptr", arg: 1, scope: !4581, file: !3, line: 549, type: !1601)
!4586 = !DILocalVariable(name: "x", arg: 2, scope: !4581, file: !3, line: 549, type: !27)
!4587 = !DILocalVariable(name: "y", arg: 3, scope: !4581, file: !3, line: 549, type: !27)
!4588 = !DILocalVariable(name: "b", scope: !4581, file: !3, line: 551, type: !915)
!4589 = !DILocation(line: 0, scope: !4581)
!4590 = !DILocation(line: 559, column: 12, scope: !4581)
!4591 = !DILocation(line: 559, column: 7, scope: !4581)
!4592 = !DILocation(line: 560, column: 7, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 560, column: 7)
!4594 = !DILocation(line: 560, column: 7, scope: !4581)
!4595 = !DILocation(line: 562, column: 12, scope: !4593)
!4596 = !DILocation(line: 562, column: 32, scope: !4593)
!4597 = !DILocation(line: 562, column: 5, scope: !4593)
!4598 = !DILocation(line: 0, scope: !4593)
!4599 = !DILocation(line: 565, column: 1, scope: !4581)
!4600 = distinct !DISubprogram(name: "ssa_conflicts_merge", scope: !3, file: !3, line: 598, type: !4272, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4601)
!4601 = !{!4602, !4603, !4604, !4605, !4606}
!4602 = !DILocalVariable(name: "ptr", arg: 1, scope: !4600, file: !3, line: 598, type: !1601)
!4603 = !DILocalVariable(name: "x", arg: 2, scope: !4600, file: !3, line: 598, type: !27)
!4604 = !DILocalVariable(name: "y", arg: 3, scope: !4600, file: !3, line: 598, type: !27)
!4605 = !DILocalVariable(name: "z", scope: !4600, file: !3, line: 600, type: !27)
!4606 = !DILocalVariable(name: "bi", scope: !4600, file: !3, line: 601, type: !3873)
!4607 = !DILocation(line: 0, scope: !4600)
!4608 = !DILocation(line: 600, column: 3, scope: !4600)
!4609 = !DILocation(line: 601, column: 3, scope: !4600)
!4610 = !DILocation(line: 603, column: 3, scope: !4600)
!4611 = !DILocation(line: 604, column: 14, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 604, column: 7)
!4613 = !DILocation(line: 604, column: 9, scope: !4612)
!4614 = !DILocation(line: 604, column: 8, scope: !4612)
!4615 = !DILocation(line: 604, column: 7, scope: !4600)
!4616 = !DILocation(line: 610, column: 3, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 610, column: 3)
!4618 = !DILocation(line: 610, column: 3, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4617, file: !3, line: 610, column: 3)
!4620 = !DILocation(line: 611, column: 24, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 611, column: 9)
!4622 = !DILocation(line: 611, column: 9, scope: !4621)
!4623 = !DILocation(line: 611, column: 9, scope: !4619)
!4624 = !DILocation(line: 612, column: 7, scope: !4621)
!4625 = distinct !{!4625, !4616, !4626}
!4626 = !DILocation(line: 612, column: 43, scope: !4617)
!4627 = !DILocation(line: 614, column: 7, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 614, column: 7)
!4629 = !DILocation(line: 614, column: 7, scope: !4600)
!4630 = !DILocation(line: 617, column: 43, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4628, file: !3, line: 615, column: 5)
!4632 = !DILocation(line: 617, column: 7, scope: !4631)
!4633 = !DILocation(line: 618, column: 7, scope: !4631)
!4634 = !DILocation(line: 619, column: 5, scope: !4631)
!4635 = !DILocation(line: 623, column: 27, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4628, file: !3, line: 621, column: 5)
!4637 = !DILocation(line: 623, column: 25, scope: !4636)
!4638 = !DILocation(line: 624, column: 12, scope: !4636)
!4639 = !DILocation(line: 624, column: 7, scope: !4636)
!4640 = !DILocation(line: 624, column: 25, scope: !4636)
!4641 = !DILocation(line: 626, column: 1, scope: !4600)
!4642 = distinct !DISubprogram(name: "pop_cost_one_pair", scope: !3, file: !3, line: 146, type: !4532, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1465, retainedNodes: !4643)
!4643 = !{!4644, !4645, !4646, !4647}
!4644 = !DILocalVariable(name: "cl", arg: 1, scope: !4642, file: !3, line: 146, type: !1540)
!4645 = !DILocalVariable(name: "p1", arg: 2, scope: !4642, file: !3, line: 146, type: !31)
!4646 = !DILocalVariable(name: "p2", arg: 3, scope: !4642, file: !3, line: 146, type: !31)
!4647 = !DILocalVariable(name: "ptr", scope: !4642, file: !3, line: 148, type: !1556)
!4648 = !DILocation(line: 0, scope: !4642)
!4649 = !DILocation(line: 150, column: 13, scope: !4642)
!4650 = !DILocation(line: 151, column: 8, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 151, column: 7)
!4652 = !DILocation(line: 151, column: 7, scope: !4642)
!4653 = !DILocation(line: 154, column: 14, scope: !4642)
!4654 = !DILocation(line: 154, column: 7, scope: !4642)
!4655 = !DILocation(line: 155, column: 14, scope: !4642)
!4656 = !DILocation(line: 155, column: 7, scope: !4642)
!4657 = !DILocation(line: 156, column: 28, scope: !4642)
!4658 = !DILocation(line: 156, column: 21, scope: !4642)
!4659 = !DILocation(line: 158, column: 9, scope: !4642)
!4660 = !DILocation(line: 158, column: 3, scope: !4642)
!4661 = !DILocation(line: 160, column: 3, scope: !4642)
!4662 = !DILocation(line: 161, column: 1, scope: !4642)
