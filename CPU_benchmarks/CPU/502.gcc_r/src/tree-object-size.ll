; ModuleID = 'tree-object-size.bc'
source_filename = "tree-object-size.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
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
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.object_size_info = type { i32, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32, i8, i32*, i32*, i32* }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [19 x i8] c"tree-object-size.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@offset_limit = internal unnamed_addr global i64 0, align 8, !dbg !0
@object_sizes = internal unnamed_addr global [4 x i64*] zeroinitializer, align 16, !dbg !1720
@computed = internal unnamed_addr global [4 x %struct.bitmap_head_def*] zeroinitializer, align 16, !dbg !1723
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Computing %s %sobject size for \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"Reexamining \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@unknown = internal unnamed_addr constant [4 x i64] [i64 -1, i64 -1, i64 0, i64 0], align 16, !dbg !1726
@.str.10 = private unnamed_addr constant [24 x i8] c": %s %sobject size %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"objsz\00", align 1
@pass_object_sizes = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8 ()* null, i32 ()* @compute_object_sizes, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8, !dbg !1692
@sizetype_tab = external dso_local local_unnamed_addr global [4 x %union.tree_node*], align 16
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@.str.12 = private unnamed_addr constant [28 x i8] c"Found a dependency loop at \00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Visiting use-def links for \00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Need to reexamine \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"alloc_size\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Simplified\0A  \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"to\0A  \00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1733 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1746, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1747, metadata !DIExpression()), !dbg !1748
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1749
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1750
  ret i32 %call, !dbg !1751
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1752 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1756
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1757
  ret i32 %call, !dbg !1758
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1759 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1814, metadata !DIExpression()), !dbg !1815
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1816
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1816
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1816
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1816
  %cmp = icmp uge i8* %0, %1, !dbg !1816
  %conv1 = zext i1 %cmp to i64, !dbg !1816
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1816
  %tobool = icmp eq i64 %expval, 0, !dbg !1816
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1816

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1816
  br label %cond.end, !dbg !1816

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1816
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1816
  %2 = load i8, i8* %0, align 1, !dbg !1816
  %conv3 = zext i8 %2 to i32, !dbg !1816
  br label %cond.end, !dbg !1816

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1816
  ret i32 %cond, !dbg !1817
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1818 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1820, metadata !DIExpression()), !dbg !1821
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1822
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1822
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1822
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1822
  %cmp = icmp uge i8* %0, %1, !dbg !1822
  %conv1 = zext i1 %cmp to i64, !dbg !1822
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1822
  %tobool = icmp eq i64 %expval, 0, !dbg !1822
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1822

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1822
  br label %cond.end, !dbg !1822

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1822
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1822
  %2 = load i8, i8* %0, align 1, !dbg !1822
  %conv3 = zext i8 %2 to i32, !dbg !1822
  br label %cond.end, !dbg !1822

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1822
  ret i32 %cond, !dbg !1823
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1824 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1825
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1825
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1825
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1825
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1825
  %cmp = icmp uge i8* %1, %2, !dbg !1825
  %conv1 = zext i1 %cmp to i64, !dbg !1825
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1825
  %tobool = icmp eq i64 %expval, 0, !dbg !1825
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1825

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1825
  br label %cond.end, !dbg !1825

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1825
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1825
  %3 = load i8, i8* %1, align 1, !dbg !1825
  %conv3 = zext i8 %3 to i32, !dbg !1825
  br label %cond.end, !dbg !1825

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1825
  ret i32 %cond, !dbg !1826
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1827 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1831, metadata !DIExpression()), !dbg !1832
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1833
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1834
  ret i32 %call, !dbg !1835
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1836 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1840, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1841, metadata !DIExpression()), !dbg !1842
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1843
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1843
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1843
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1843
  %cmp = icmp uge i8* %0, %1, !dbg !1843
  %conv1 = zext i1 %cmp to i64, !dbg !1843
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1843
  %tobool = icmp eq i64 %expval, 0, !dbg !1843
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1843

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1843
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1843
  br label %cond.end, !dbg !1843

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1843
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1843
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1843
  store i8 %conv2, i8* %0, align 1, !dbg !1843
  %conv6 = and i32 %__c, 255, !dbg !1843
  br label %cond.end, !dbg !1843

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1843
  ret i32 %cond, !dbg !1844
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1845 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1847, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1848, metadata !DIExpression()), !dbg !1849
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1850
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1850
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1850
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1850
  %cmp = icmp uge i8* %0, %1, !dbg !1850
  %conv1 = zext i1 %cmp to i64, !dbg !1850
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1850
  %tobool = icmp eq i64 %expval, 0, !dbg !1850
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1850

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1850
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1850
  br label %cond.end, !dbg !1850

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1850
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1850
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1850
  store i8 %conv2, i8* %0, align 1, !dbg !1850
  %conv6 = and i32 %__c, 255, !dbg !1850
  br label %cond.end, !dbg !1850

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1850
  ret i32 %cond, !dbg !1851
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1852 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1854, metadata !DIExpression()), !dbg !1855
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1856
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1856
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1856
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1856
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1856
  %cmp = icmp uge i8* %1, %2, !dbg !1856
  %conv1 = zext i1 %cmp to i64, !dbg !1856
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1856
  %tobool = icmp eq i64 %expval, 0, !dbg !1856
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1856

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1856
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1856
  br label %cond.end, !dbg !1856

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1856
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1856
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1856
  store i8 %conv4, i8* %1, align 1, !dbg !1856
  %conv6 = and i32 %__c, 255, !dbg !1856
  br label %cond.end, !dbg !1856

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1856
  ret i32 %cond, !dbg !1857
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1858 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1864, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1865, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1866, metadata !DIExpression()), !dbg !1867
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1868
  ret i64 %call, !dbg !1869
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1870 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1872, metadata !DIExpression()), !dbg !1873
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1874
  %0 = load i32, i32* %_flags, align 8, !dbg !1874
  %and = lshr i32 %0, 4, !dbg !1874
  %and.lobit = and i32 %and, 1, !dbg !1874
  ret i32 %and.lobit, !dbg !1875
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1876 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1878, metadata !DIExpression()), !dbg !1879
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1880
  %0 = load i32, i32* %_flags, align 8, !dbg !1880
  %and = lshr i32 %0, 5, !dbg !1880
  %and.lobit = and i32 %and, 1, !dbg !1880
  ret i32 %and.lobit, !dbg !1881
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1882 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1885, metadata !DIExpression()), !dbg !1886
  %__c.off = add i32 %__c, 128, !dbg !1887
  %0 = icmp ult i32 %__c.off, 384, !dbg !1887
  br i1 %0, label %cond.true, label %cond.end, !dbg !1887

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1888
  %1 = load i32*, i32** %call, align 8, !dbg !1889
  %idxprom = sext i32 %__c to i64, !dbg !1890
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1890
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1890
  br label %cond.end, !dbg !1891

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1891
  ret i32 %cond, !dbg !1892
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1893 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1895, metadata !DIExpression()), !dbg !1896
  %__c.off = add i32 %__c, 128, !dbg !1897
  %0 = icmp ult i32 %__c.off, 384, !dbg !1897
  br i1 %0, label %cond.true, label %cond.end, !dbg !1897

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1898
  %1 = load i32*, i32** %call, align 8, !dbg !1899
  %idxprom = sext i32 %__c to i64, !dbg !1900
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1900
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1900
  br label %cond.end, !dbg !1901

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1901
  ret i32 %cond, !dbg !1902
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1903 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1908, metadata !DIExpression()), !dbg !1909
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1910
  %conv = trunc i64 %call to i32, !dbg !1911
  ret i32 %conv, !dbg !1912
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1913 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1917, metadata !DIExpression()), !dbg !1918
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1919
  ret i64 %call, !dbg !1920
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1921 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1926, metadata !DIExpression()), !dbg !1927
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1928
  ret i64 %call, !dbg !1929
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1930 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1936, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1937, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1938, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1939, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1940, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 0, metadata !1941, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1942, metadata !DIExpression()), !dbg !1946
  br label %while.cond, !dbg !1947

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1948
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1946
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1942, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1941, metadata !DIExpression()), !dbg !1946
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1949
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1947

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1950
  %div = lshr i64 %add, 1, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %div, metadata !1943, metadata !DIExpression()), !dbg !1946
  %mul = mul i64 %div, %__size, !dbg !1953
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1954
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1944, metadata !DIExpression()), !dbg !1946
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1955
  call void @llvm.dbg.value(metadata i32 %call, metadata !1945, metadata !DIExpression()), !dbg !1946
  %cmp1 = icmp slt i32 %call, 0, !dbg !1956
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1958

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1959
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1961

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1962
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1941, metadata !DIExpression()), !dbg !1946
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1946
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1946
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1942, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1941, metadata !DIExpression()), !dbg !1946
  br label %while.cond, !dbg !1947, !llvm.loop !1963

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1946
  ret i8* %retval.0, !dbg !1965
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1966 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1972, metadata !DIExpression()), !dbg !1973
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1974
  ret double %call, !dbg !1975
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1976 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1985, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1986, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %base, metadata !1987, metadata !DIExpression()), !dbg !1988
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1989
  ret i64 %call, !dbg !1990
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1991 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1997, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1998, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %base, metadata !1999, metadata !DIExpression()), !dbg !2000
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2001
  ret i64 %call, !dbg !2002
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2003 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2014, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2015, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32 %base, metadata !2016, metadata !DIExpression()), !dbg !2017
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2018
  ret i64 %call, !dbg !2019
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2020 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2024, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2025, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i32 %base, metadata !2026, metadata !DIExpression()), !dbg !2027
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2028
  ret i64 %call, !dbg !2029
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2030 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2072, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2073, metadata !DIExpression()), !dbg !2074
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2075
  ret i32 %call, !dbg !2076
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2077 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2079, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2080, metadata !DIExpression()), !dbg !2081
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2082
  ret i32 %call, !dbg !2083
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2084 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2088, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2089, metadata !DIExpression()), !dbg !2090
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2091
  ret i32 %call, !dbg !2092
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2093 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2097, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2098, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2099, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2100, metadata !DIExpression()), !dbg !2101
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2102
  ret i32 %call, !dbg !2103
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2104 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2108, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2109, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2110, metadata !DIExpression()), !dbg !2111
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2110, metadata !DIExpression(DW_OP_deref)), !dbg !2111
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2112
  ret i32 %call, !dbg !2113
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2114 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2118, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2119, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2120, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2121, metadata !DIExpression()), !dbg !2122
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2121, metadata !DIExpression(DW_OP_deref)), !dbg !2122
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2123
  ret i32 %call, !dbg !2124
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2125 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2149, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2150, metadata !DIExpression()), !dbg !2151
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2152
  ret i32 %call, !dbg !2153
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2154 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2156, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2157, metadata !DIExpression()), !dbg !2158
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2159
  ret i32 %call, !dbg !2160
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2161 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2165, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2166, metadata !DIExpression()), !dbg !2167
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2168
  ret i32 %call, !dbg !2169
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2170 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2174, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2175, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2176, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2177, metadata !DIExpression()), !dbg !2178
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2179
  ret i32 %call, !dbg !2180
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @compute_builtin_object_size(%union.tree_node* %ptr, i32 %object_size_type) local_unnamed_addr #5 !dbg !2181 {
entry:
  %osi = alloca %struct.object_size_info, align 8
  %bi = alloca %struct.bitmap_iterator, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr, metadata !2185, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i32 %object_size_type, metadata !2186, metadata !DIExpression()), !dbg !2214
  %0 = icmp ult i32 %object_size_type, 4, !dbg !2215
  br i1 %0, label %cond.end, label %cond.true, !dbg !2215

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 463, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2215
  br label %cond.end, !dbg !2215

cond.end:                                         ; preds = %entry, %cond.true
  %1 = load i64, i64* @offset_limit, align 8, !dbg !2216
  %tobool = icmp eq i64 %1, 0, !dbg !2216
  br i1 %tobool, label %if.then, label %if.end, !dbg !2218

if.then:                                          ; preds = %cond.end
  tail call fastcc void @init_offset_limit() #7, !dbg !2219
  br label %if.end, !dbg !2219

if.end:                                           ; preds = %cond.end, %if.then
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2220
  %bf.load = load i64, i64* %2, align 8, !dbg !2220
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2222
  %cmp2 = icmp eq i64 %bf.cast1, 121, !dbg !2222
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2223

if.then3:                                         ; preds = %if.end
  %call = tail call fastcc i64 @addr_object_size(%struct.object_size_info* null, %union.tree_node* %ptr, i32 %object_size_type) #7, !dbg !2224
  br label %return, !dbg !2225

if.end4:                                          ; preds = %if.end
  %cmp9 = icmp eq i64 %bf.cast1, 141, !dbg !2226
  br i1 %cmp9, label %land.lhs.true10, label %if.end226, !dbg !2227

land.lhs.true10:                                  ; preds = %if.end4
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2228
  %3 = bitcast %union.tree_node** %type to i64**, !dbg !2228
  %4 = load i64*, i64** %3, align 8, !dbg !2228
  %bf.load12 = load i64, i64* %4, align 8, !dbg !2228
  %bf.cast143 = and i64 %bf.load12, 65535, !dbg !2228
  %cmp15 = icmp eq i64 %bf.cast143, 10, !dbg !2228
  br i1 %cmp15, label %land.lhs.true23, label %lor.lhs.false, !dbg !2228

lor.lhs.false:                                    ; preds = %land.lhs.true10
  %cmp22 = icmp eq i64 %bf.cast143, 12, !dbg !2228
  br i1 %cmp22, label %land.lhs.true23, label %if.end226, !dbg !2229

land.lhs.true23:                                  ; preds = %lor.lhs.false, %land.lhs.true10
  %idxprom = sext i32 %object_size_type to i64, !dbg !2230
  %arrayidx = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %idxprom, !dbg !2230
  %5 = load i64*, i64** %arrayidx, align 8, !dbg !2230
  %cmp24 = icmp eq i64* %5, null, !dbg !2231
  br i1 %cmp24, label %if.end226, label %if.then25, !dbg !2232

if.then25:                                        ; preds = %land.lhs.true23
  %arrayidx27 = getelementptr inbounds [4 x %struct.bitmap_head_def*], [4 x %struct.bitmap_head_def*]* @computed, i64 0, i64 %idxprom, !dbg !2233
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx27, align 8, !dbg !2233
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2234
  %7 = bitcast %union.tree_node** %version to i32*, !dbg !2234
  %8 = load i32, i32* %7, align 8, !dbg !2234
  %call28 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %6, i32 %8) #6, !dbg !2235
  %tobool29 = icmp eq i32 %call28, 0, !dbg !2235
  br i1 %tobool29, label %if.then30, label %if.end219, !dbg !2236

if.then30:                                        ; preds = %if.then25
  %9 = bitcast %struct.object_size_info* %osi to i8*, !dbg !2237
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %9) #8, !dbg !2237
  %10 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2238
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #8, !dbg !2238
  %11 = bitcast i32* %i to i8*, !dbg !2239
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #8, !dbg !2239
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2240
  %tobool31 = icmp eq %struct._IO_FILE* %12, null, !dbg !2240
  br i1 %tobool31, label %if.end40, label %if.then32, !dbg !2242

if.then32:                                        ; preds = %if.then30
  %and = and i32 %object_size_type, 2, !dbg !2243
  %tobool33 = icmp eq i32 %and, 0, !dbg !2245
  %cond34 = select i1 %tobool33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), !dbg !2245
  %and35 = and i32 %object_size_type, 1, !dbg !2246
  %tobool36 = icmp eq i32 %and35, 0, !dbg !2247
  %cond37 = select i1 %tobool36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), !dbg !2247
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %cond34, i8* %cond37) #6, !dbg !2248
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2249
  %14 = load i32, i32* @dump_flags, align 4, !dbg !2250
  tail call void @print_generic_expr(%struct._IO_FILE* %13, %union.tree_node* %ptr, i32 %14) #6, !dbg !2251
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2252
  %call39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2253
  br label %if.end40, !dbg !2254

if.end40:                                         ; preds = %if.then30, %if.then32
  %call41 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2255
  %visited = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 1, !dbg !2256
  store %struct.bitmap_head_def* %call41, %struct.bitmap_head_def** %visited, align 8, !dbg !2257
  %call42 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2258
  %reexamine = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 2, !dbg !2259
  store %struct.bitmap_head_def* %call42, %struct.bitmap_head_def** %reexamine, align 8, !dbg !2260
  %object_size_type43 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 0, !dbg !2261
  store i32 %object_size_type, i32* %object_size_type43, align 8, !dbg !2262
  %depths = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 5, !dbg !2263
  store i32* null, i32** %depths, align 8, !dbg !2264
  %stack = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 6, !dbg !2265
  store i32* null, i32** %stack, align 8, !dbg !2266
  %tos = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 7, !dbg !2267
  store i32* null, i32** %tos, align 8, !dbg !2268
  %pass = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 3, !dbg !2269
  store i32 0, i32* %pass, align 8, !dbg !2270
  %changed = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 4, !dbg !2271
  store i8 0, i8* %changed, align 4, !dbg !2272
  call void @llvm.dbg.value(metadata %struct.object_size_info* %osi, metadata !2187, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call fastcc void @collect_object_sizes_for(%struct.object_size_info* nonnull %osi, %union.tree_node* %ptr) #7, !dbg !2274
  %16 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reexamine, align 8, !dbg !2275
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %16, i64 0, i32 0, !dbg !2275
  %17 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2275
  %tobool45 = icmp eq %struct.bitmap_element_def* %17, null, !dbg !2275
  br i1 %tobool45, label %if.end160, label %if.then46, !dbg !2276

if.then46:                                        ; preds = %if.end40
  %call48 = call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2277
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call48, metadata !2211, metadata !DIExpression()), !dbg !2278
  %and49 = and i32 %object_size_type, 2, !dbg !2279
  %tobool50 = icmp eq i32 %and49, 0, !dbg !2279
  br i1 %tobool50, label %if.end109, label %if.then51, !dbg !2281

if.then51:                                        ; preds = %if.then46
  %18 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2282
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %18, i64 0, i32 3, !dbg !2282
  %19 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2282
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %19, i64 0, i32 2, !dbg !2282
  %20 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2282
  %tobool52 = icmp eq %struct.VEC_tree_gc* %20, null, !dbg !2282
  br i1 %tobool52, label %cond.end59, label %cond.true53, !dbg !2282

cond.true53:                                      ; preds = %if.then51
  %base57 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %20, i64 0, i32 0, !dbg !2282
  br label %cond.end59, !dbg !2282

cond.end59:                                       ; preds = %if.then51, %cond.true53
  %cond60 = phi %struct.VEC_tree_base* [ %base57, %cond.true53 ], [ null, %if.then51 ], !dbg !2282
  %call61 = call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond60) #7, !dbg !2282
  %conv = zext i32 %call61 to i64, !dbg !2282
  %call62 = call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !2282
  %21 = bitcast i32** %depths to i8**, !dbg !2284
  store i8* %call62, i8** %21, align 8, !dbg !2284
  %22 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2285
  %gimple_df65 = getelementptr inbounds %struct.function, %struct.function* %22, i64 0, i32 3, !dbg !2285
  %23 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df65, align 8, !dbg !2285
  %ssa_names66 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %23, i64 0, i32 2, !dbg !2285
  %24 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names66, align 8, !dbg !2285
  %tobool67 = icmp eq %struct.VEC_tree_gc* %24, null, !dbg !2285
  br i1 %tobool67, label %cond.end74, label %cond.true68, !dbg !2285

cond.true68:                                      ; preds = %cond.end59
  %base72 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %24, i64 0, i32 0, !dbg !2285
  br label %cond.end74, !dbg !2285

cond.end74:                                       ; preds = %cond.end59, %cond.true68
  %cond75 = phi %struct.VEC_tree_base* [ %base72, %cond.true68 ], [ null, %cond.end59 ], !dbg !2285
  %call76 = call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond75) #7, !dbg !2285
  %conv77 = zext i32 %call76 to i64, !dbg !2285
  %mul = shl nuw nsw i64 %conv77, 2, !dbg !2285
  %call78 = call i8* @xmalloc(i64 %mul) #6, !dbg !2285
  %25 = bitcast i32** %stack to i8**, !dbg !2286
  store i8* %call78, i8** %25, align 8, !dbg !2286
  %.cast = ptrtoint i8* %call78 to i64, !dbg !2287
  %26 = bitcast i32** %tos to i64*, !dbg !2288
  store i64 %.cast, i64* %26, align 8, !dbg !2288
  store i32 1, i32* %pass, align 8, !dbg !2289
  %27 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reexamine, align 8, !dbg !2290
  call void @bitmap_copy(%struct.bitmap_head_def* %call48, %struct.bitmap_head_def* %27) #6, !dbg !2291
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2202, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call void @llvm.dbg.value(metadata i32* %i, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %call48, i32 0, i32* nonnull %i) #7, !dbg !2292
  br label %for.cond, !dbg !2292

for.cond:                                         ; preds = %for.inc, %cond.end74
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2202, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call void @llvm.dbg.value(metadata i32* %i, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  %call84 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !2294
  %tobool85 = icmp eq i8 %call84, 0, !dbg !2292
  br i1 %tobool85, label %for.end, label %for.body, !dbg !2292

for.body:                                         ; preds = %for.cond
  %28 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reexamine, align 8, !dbg !2296
  %29 = load i32, i32* %i, align 4, !dbg !2298
  call void @llvm.dbg.value(metadata i32 %29, metadata !2210, metadata !DIExpression()), !dbg !2273
  %call87 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %28, i32 %29) #6, !dbg !2299
  %tobool88 = icmp eq i32 %call87, 0, !dbg !2299
  br i1 %tobool88, label %for.inc, label %if.then89, !dbg !2300

if.then89:                                        ; preds = %for.body
  %30 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2301
  %gimple_df91 = getelementptr inbounds %struct.function, %struct.function* %30, i64 0, i32 3, !dbg !2301
  %31 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df91, align 8, !dbg !2301
  %ssa_names92 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %31, i64 0, i32 2, !dbg !2301
  %32 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names92, align 8, !dbg !2301
  %tobool93 = icmp eq %struct.VEC_tree_gc* %32, null, !dbg !2301
  br i1 %tobool93, label %cond.end100, label %cond.true94, !dbg !2301

cond.true94:                                      ; preds = %if.then89
  %base98 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %32, i64 0, i32 0, !dbg !2301
  br label %cond.end100, !dbg !2301

cond.end100:                                      ; preds = %if.then89, %cond.true94
  %cond101 = phi %struct.VEC_tree_base* [ %base98, %cond.true94 ], [ null, %if.then89 ], !dbg !2301
  %33 = load i32, i32* %i, align 4, !dbg !2301
  call void @llvm.dbg.value(metadata i32 %33, metadata !2210, metadata !DIExpression()), !dbg !2273
  %call102 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond101, i32 %33) #7, !dbg !2301
  call void @llvm.dbg.value(metadata %struct.object_size_info* %osi, metadata !2187, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call fastcc void @check_for_plus_in_loops(%struct.object_size_info* nonnull %osi, %union.tree_node* %call102) #7, !dbg !2302
  br label %for.inc, !dbg !2302

for.inc:                                          ; preds = %for.body, %cond.end100
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2202, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call void @llvm.dbg.value(metadata i32* %i, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !2294
  br label %for.cond, !dbg !2294, !llvm.loop !2303

for.end:                                          ; preds = %for.cond
  %34 = load i8*, i8** %21, align 8, !dbg !2305
  call void @free(i8* %34) #6, !dbg !2306
  store i32* null, i32** %depths, align 8, !dbg !2307
  %35 = load i8*, i8** %25, align 8, !dbg !2308
  call void @free(i8* %35) #6, !dbg !2309
  store i32* null, i32** %stack, align 8, !dbg !2310
  store i32* null, i32** %tos, align 8, !dbg !2311
  br label %if.end109, !dbg !2312

if.end109:                                        ; preds = %if.then46, %for.end
  br label %do.body, !dbg !2313

do.body:                                          ; preds = %do.cond, %if.end109
  store i32 2, i32* %pass, align 8, !dbg !2314
  store i8 0, i8* %changed, align 4, !dbg !2316
  %36 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reexamine, align 8, !dbg !2317
  call void @bitmap_copy(%struct.bitmap_head_def* %call48, %struct.bitmap_head_def* %36) #6, !dbg !2318
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2202, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call void @llvm.dbg.value(metadata i32* %i, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %call48, i32 0, i32* nonnull %i) #7, !dbg !2319
  br label %for.cond113, !dbg !2319

for.cond113:                                      ; preds = %for.inc156, %do.body
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2202, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call void @llvm.dbg.value(metadata i32* %i, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  %call114 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !2321
  %tobool115 = icmp eq i8 %call114, 0, !dbg !2319
  br i1 %tobool115, label %do.cond, label %for.body116, !dbg !2319

for.body116:                                      ; preds = %for.cond113
  %37 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reexamine, align 8, !dbg !2323
  %38 = load i32, i32* %i, align 4, !dbg !2325
  call void @llvm.dbg.value(metadata i32 %38, metadata !2210, metadata !DIExpression()), !dbg !2273
  %call118 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %37, i32 %38) #6, !dbg !2326
  %tobool119 = icmp eq i32 %call118, 0, !dbg !2326
  br i1 %tobool119, label %for.inc156, label %if.then120, !dbg !2327

if.then120:                                       ; preds = %for.body116
  %39 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2328
  %gimple_df122 = getelementptr inbounds %struct.function, %struct.function* %39, i64 0, i32 3, !dbg !2328
  %40 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df122, align 8, !dbg !2328
  %ssa_names123 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %40, i64 0, i32 2, !dbg !2328
  %41 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names123, align 8, !dbg !2328
  %tobool124 = icmp eq %struct.VEC_tree_gc* %41, null, !dbg !2328
  br i1 %tobool124, label %cond.end131, label %cond.true125, !dbg !2328

cond.true125:                                     ; preds = %if.then120
  %base129 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %41, i64 0, i32 0, !dbg !2328
  br label %cond.end131, !dbg !2328

cond.end131:                                      ; preds = %if.then120, %cond.true125
  %cond132 = phi %struct.VEC_tree_base* [ %base129, %cond.true125 ], [ null, %if.then120 ], !dbg !2328
  %42 = load i32, i32* %i, align 4, !dbg !2328
  call void @llvm.dbg.value(metadata i32 %42, metadata !2210, metadata !DIExpression()), !dbg !2273
  %call133 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond132, i32 %42) #7, !dbg !2328
  call void @llvm.dbg.value(metadata %struct.object_size_info* %osi, metadata !2187, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call fastcc void @collect_object_sizes_for(%struct.object_size_info* nonnull %osi, %union.tree_node* %call133) #7, !dbg !2330
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2331
  %tobool134 = icmp eq %struct._IO_FILE* %43, null, !dbg !2331
  br i1 %tobool134, label %for.inc156, label %land.lhs.true135, !dbg !2333

land.lhs.true135:                                 ; preds = %cond.end131
  %44 = load i32, i32* @dump_flags, align 4, !dbg !2334
  %and136 = and i32 %44, 8, !dbg !2335
  %tobool137 = icmp eq i32 %and136, 0, !dbg !2335
  br i1 %tobool137, label %for.inc156, label %if.then138, !dbg !2336

if.then138:                                       ; preds = %land.lhs.true135
  %call139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2337
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2339
  %46 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2340
  %gimple_df141 = getelementptr inbounds %struct.function, %struct.function* %46, i64 0, i32 3, !dbg !2340
  %47 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df141, align 8, !dbg !2340
  %ssa_names142 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %47, i64 0, i32 2, !dbg !2340
  %48 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names142, align 8, !dbg !2340
  %tobool143 = icmp eq %struct.VEC_tree_gc* %48, null, !dbg !2340
  br i1 %tobool143, label %cond.end150, label %cond.true144, !dbg !2340

cond.true144:                                     ; preds = %if.then138
  %base148 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %48, i64 0, i32 0, !dbg !2340
  br label %cond.end150, !dbg !2340

cond.end150:                                      ; preds = %if.then138, %cond.true144
  %cond151 = phi %struct.VEC_tree_base* [ %base148, %cond.true144 ], [ null, %if.then138 ], !dbg !2340
  %49 = load i32, i32* %i, align 4, !dbg !2340
  call void @llvm.dbg.value(metadata i32 %49, metadata !2210, metadata !DIExpression()), !dbg !2273
  %call152 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond151, i32 %49) #7, !dbg !2340
  %50 = load i32, i32* @dump_flags, align 4, !dbg !2341
  call void @print_generic_expr(%struct._IO_FILE* %45, %union.tree_node* %call152, i32 %50) #6, !dbg !2342
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2343
  %call153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2344
  br label %for.inc156, !dbg !2345

for.inc156:                                       ; preds = %land.lhs.true135, %cond.end131, %for.body116, %cond.end150
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2202, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call void @llvm.dbg.value(metadata i32* %i, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !2321
  br label %for.cond113, !dbg !2321, !llvm.loop !2346

do.cond:                                          ; preds = %for.cond113
  %52 = load i8, i8* %changed, align 4, !dbg !2348
  %tobool159 = icmp eq i8 %52, 0, !dbg !2349
  br i1 %tobool159, label %do.end, label %do.body, !dbg !2349, !llvm.loop !2350

do.end:                                           ; preds = %do.cond
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call48) #6, !dbg !2352
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2211, metadata !DIExpression()), !dbg !2278
  %.pre = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reexamine, align 8, !dbg !2353
  br label %if.end160, !dbg !2355

if.end160:                                        ; preds = %if.end40, %do.end
  %53 = phi %struct.bitmap_head_def* [ %16, %if.end40 ], [ %.pre, %do.end ], !dbg !2353
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2202, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call void @llvm.dbg.value(metadata i32* %i, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %53, i32 0, i32* nonnull %i) #7, !dbg !2353
  br label %for.cond162, !dbg !2353

for.cond162:                                      ; preds = %for.body165, %if.end160
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2202, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call void @llvm.dbg.value(metadata i32* %i, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  %call163 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !2356
  %tobool164 = icmp eq i8 %call163, 0, !dbg !2353
  br i1 %tobool164, label %for.end170, label %for.body165, !dbg !2353

for.body165:                                      ; preds = %for.cond162
  %54 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx27, align 8, !dbg !2358
  %55 = load i32, i32* %i, align 4, !dbg !2359
  call void @llvm.dbg.value(metadata i32 %55, metadata !2210, metadata !DIExpression()), !dbg !2273
  %call168 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %54, i32 %55) #6, !dbg !2360
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2202, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call void @llvm.dbg.value(metadata i32* %i, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !2356
  br label %for.cond162, !dbg !2356, !llvm.loop !2361

for.end170:                                       ; preds = %for.cond162
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2363
  %tobool171 = icmp eq %struct._IO_FILE* %56, null, !dbg !2363
  br i1 %tobool171, label %if.end214, label %if.then172, !dbg !2365

if.then172:                                       ; preds = %for.end170
  %57 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !2366
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2202, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call void @llvm.dbg.value(metadata i32* %i, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %57, i32 0, i32* nonnull %i) #7, !dbg !2366
  %arrayidx183 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom, !dbg !2369
  %and200 = and i32 %object_size_type, 2, !dbg !2372
  %tobool201 = icmp eq i32 %and200, 0, !dbg !2372
  %cond202 = select i1 %tobool201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), !dbg !2372
  %and203 = and i32 %object_size_type, 1, !dbg !2372
  %tobool204 = icmp eq i32 %and203, 0, !dbg !2372
  %cond205 = select i1 %tobool204, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), !dbg !2372
  br label %for.cond174, !dbg !2366

for.cond174:                                      ; preds = %for.inc212, %if.then172
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2202, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call void @llvm.dbg.value(metadata i32* %i, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  %call175 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !2374
  %tobool176 = icmp eq i8 %call175, 0, !dbg !2366
  br i1 %tobool176, label %if.end214.loopexit, label %for.body177, !dbg !2366

for.body177:                                      ; preds = %for.cond174
  %58 = load i64*, i64** %arrayidx, align 8, !dbg !2375
  %59 = load i32, i32* %i, align 4, !dbg !2376
  call void @llvm.dbg.value(metadata i32 %59, metadata !2210, metadata !DIExpression()), !dbg !2273
  %idxprom180 = zext i32 %59 to i64, !dbg !2375
  %arrayidx181 = getelementptr inbounds i64, i64* %58, i64 %idxprom180, !dbg !2375
  %60 = load i64, i64* %arrayidx181, align 8, !dbg !2375
  %61 = load i64, i64* %arrayidx183, align 8, !dbg !2377
  %cmp184 = icmp eq i64 %60, %61, !dbg !2378
  br i1 %cmp184, label %for.inc212, label %if.then186, !dbg !2379

if.then186:                                       ; preds = %for.body177
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2380
  %63 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2381
  %gimple_df188 = getelementptr inbounds %struct.function, %struct.function* %63, i64 0, i32 3, !dbg !2381
  %64 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df188, align 8, !dbg !2381
  %ssa_names189 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %64, i64 0, i32 2, !dbg !2381
  %65 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names189, align 8, !dbg !2381
  %tobool190 = icmp eq %struct.VEC_tree_gc* %65, null, !dbg !2381
  br i1 %tobool190, label %cond.end197, label %cond.true191, !dbg !2381

cond.true191:                                     ; preds = %if.then186
  %base195 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %65, i64 0, i32 0, !dbg !2381
  br label %cond.end197, !dbg !2381

cond.end197:                                      ; preds = %if.then186, %cond.true191
  %cond198 = phi %struct.VEC_tree_base* [ %base195, %cond.true191 ], [ null, %if.then186 ], !dbg !2381
  call void @llvm.dbg.value(metadata i32 %59, metadata !2210, metadata !DIExpression()), !dbg !2273
  %call199 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond198, i32 %59) #7, !dbg !2381
  %66 = load i32, i32* @dump_flags, align 4, !dbg !2382
  call void @print_generic_expr(%struct._IO_FILE* %62, %union.tree_node* %call199, i32 %66) #6, !dbg !2383
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2384
  %68 = load i64*, i64** %arrayidx, align 8, !dbg !2385
  %69 = load i32, i32* %i, align 4, !dbg !2386
  call void @llvm.dbg.value(metadata i32 %69, metadata !2210, metadata !DIExpression()), !dbg !2273
  %idxprom208 = zext i32 %69 to i64, !dbg !2385
  %arrayidx209 = getelementptr inbounds i64, i64* %68, i64 %idxprom208, !dbg !2385
  %70 = load i64, i64* %arrayidx209, align 8, !dbg !2385
  %call210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %cond202, i8* %cond205, i64 %70) #6, !dbg !2387
  br label %for.inc212, !dbg !2388

for.inc212:                                       ; preds = %for.body177, %cond.end197
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2202, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call void @llvm.dbg.value(metadata i32* %i, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2273
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !2374
  br label %for.cond174, !dbg !2374, !llvm.loop !2389

if.end214.loopexit:                               ; preds = %for.cond174
  br label %if.end214, !dbg !2391

if.end214:                                        ; preds = %if.end214.loopexit, %for.end170
  %71 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reexamine, align 8, !dbg !2391
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %71) #6, !dbg !2391
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %reexamine, align 8, !dbg !2391
  %72 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !2392
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %72) #6, !dbg !2392
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #8, !dbg !2393
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #8, !dbg !2393
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %9) #8, !dbg !2393
  br label %if.end219, !dbg !2394

if.end219:                                        ; preds = %if.then25, %if.end214
  %73 = load i64*, i64** %arrayidx, align 8, !dbg !2395
  %74 = load i32, i32* %7, align 8, !dbg !2396
  %idxprom224 = zext i32 %74 to i64, !dbg !2395
  %arrayidx225 = getelementptr inbounds i64, i64* %73, i64 %idxprom224, !dbg !2395
  %75 = load i64, i64* %arrayidx225, align 8, !dbg !2395
  br label %return, !dbg !2397

if.end226:                                        ; preds = %land.lhs.true23, %lor.lhs.false, %if.end4
  %idxprom227 = sext i32 %object_size_type to i64, !dbg !2398
  %arrayidx228 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom227, !dbg !2398
  %76 = load i64, i64* %arrayidx228, align 8, !dbg !2398
  br label %return, !dbg !2399

return:                                           ; preds = %if.end226, %if.end219, %if.then3
  %retval.0 = phi i64 [ %call, %if.then3 ], [ %75, %if.end219 ], [ %76, %if.end226 ], !dbg !2214
  ret i64 %retval.0, !dbg !2400
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @init_offset_limit() unnamed_addr #5 !dbg !2401 {
entry:
  %0 = load %struct.tree_type*, %struct.tree_type** bitcast ([4 x %union.tree_node*]* @sizetype_tab to %struct.tree_type**), align 16, !dbg !2404
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %0, i64 0, i32 14, !dbg !2404
  %1 = load %union.tree_node*, %union.tree_node** %maxval, align 8, !dbg !2404
  %call = tail call i32 @host_integerp(%union.tree_node* %1, i32 1) #6, !dbg !2406
  %tobool = icmp eq i32 %call, 0, !dbg !2406
  br i1 %tobool, label %if.else, label %if.then, !dbg !2407

if.then:                                          ; preds = %entry
  %2 = load %struct.tree_type*, %struct.tree_type** bitcast ([4 x %union.tree_node*]* @sizetype_tab to %struct.tree_type**), align 16, !dbg !2408
  %maxval2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %2, i64 0, i32 14, !dbg !2408
  %3 = load %union.tree_node*, %union.tree_node** %maxval2, align 8, !dbg !2408
  %call3 = tail call i64 @tree_low_cst(%union.tree_node* %3, i32 1) #6, !dbg !2409
  %phitmp = lshr i64 %call3, 1, !dbg !2410
  br label %if.end, !dbg !2410

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i64 [ 9223372036854775807, %if.else ], [ %phitmp, %if.then ]
  store i64 %storemerge, i64* @offset_limit, align 8, !dbg !2411
  ret void, !dbg !2412
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @addr_object_size(%struct.object_size_info* %osi, %union.tree_node* %ptr, i32 %object_size_type) unnamed_addr #5 !dbg !2413 {
entry:
  call void @llvm.dbg.value(metadata %struct.object_size_info* %osi, metadata !2421, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr, metadata !2422, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 %object_size_type, metadata !2423, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2425, metadata !DIExpression()), !dbg !2453
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2454
  %bf.load = load i64, i64* %0, align 8, !dbg !2454
  %bf.cast14 = and i64 %bf.load, 65535, !dbg !2454
  %cmp = icmp eq i64 %bf.cast14, 121, !dbg !2454
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2454

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2454
  br label %cond.end, !dbg !2454

cond.end:                                         ; preds = %entry, %cond.true
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2455
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2455
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2424, metadata !DIExpression()), !dbg !2453
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2456
  %bf.load2 = load i64, i64* %2, align 8, !dbg !2456
  %bf.cast4 = and i64 %bf.load2, 65535, !dbg !2456
  %arrayidx5 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast4, !dbg !2456
  %3 = load i32, i32* %arrayidx5, align 4, !dbg !2456
  %cmp6 = icmp eq i32 %3, 4, !dbg !2456
  br i1 %cmp6, label %if.then, label %if.end, !dbg !2458

if.then:                                          ; preds = %cond.end
  %call = tail call %union.tree_node* @get_base_address(%union.tree_node* %1) #6, !dbg !2459
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2424, metadata !DIExpression()), !dbg !2453
  br label %if.end, !dbg !2460

if.end:                                           ; preds = %if.then, %cond.end
  %pt_var.0 = phi %union.tree_node* [ %call, %if.then ], [ %1, %cond.end ], !dbg !2453
  call void @llvm.dbg.value(metadata %union.tree_node* %pt_var.0, metadata !2424, metadata !DIExpression()), !dbg !2453
  %cond = icmp eq %union.tree_node* %pt_var.0, null, !dbg !2461
  br i1 %cond, label %if.else160, label %land.lhs.true, !dbg !2461

land.lhs.true:                                    ; preds = %if.end
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %pt_var.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2462
  %bf.load8 = load i64, i64* %4, align 8, !dbg !2462
  %bf.cast1015 = and i64 %bf.load8, 65535, !dbg !2463
  %cmp11 = icmp eq i64 %bf.cast1015, 47, !dbg !2463
  br i1 %cmp11, label %land.lhs.true12, label %if.else80, !dbg !2464

land.lhs.true12:                                  ; preds = %land.lhs.true
  %operands14 = getelementptr inbounds %union.tree_node, %union.tree_node* %pt_var.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2465
  %5 = bitcast %union.tree_node** %operands14 to i64**, !dbg !2465
  %6 = load i64*, i64** %5, align 8, !dbg !2465
  %bf.load17 = load i64, i64* %6, align 8, !dbg !2465
  %bf.cast1947 = and i64 %bf.load17, 65535, !dbg !2466
  %cmp20 = icmp eq i64 %bf.cast1947, 141, !dbg !2466
  %7 = bitcast i64* %6 to %union.tree_node*, !dbg !2467
  br i1 %cmp20, label %land.lhs.true21, label %if.else80, !dbg !2467

land.lhs.true21:                                  ; preds = %land.lhs.true12
  %type = getelementptr inbounds i64, i64* %6, i64 2, !dbg !2468
  %8 = bitcast i64* %type to i64**, !dbg !2468
  %9 = load i64*, i64** %8, align 8, !dbg !2468
  %bf.load26 = load i64, i64* %9, align 8, !dbg !2468
  %bf.cast2848 = and i64 %bf.load26, 65535, !dbg !2468
  %cmp29 = icmp eq i64 %bf.cast2848, 10, !dbg !2468
  br i1 %cmp29, label %if.then40, label %lor.lhs.false, !dbg !2468

lor.lhs.false:                                    ; preds = %land.lhs.true21
  %cmp39 = icmp eq i64 %bf.cast2848, 12, !dbg !2468
  br i1 %cmp39, label %if.then40, label %if.else80, !dbg !2469

if.then40:                                        ; preds = %lor.lhs.false, %land.lhs.true21
  %tobool41 = icmp eq %struct.object_size_info* %osi, null, !dbg !2470
  %and = and i32 %object_size_type, 1, !dbg !2471
  %cmp43 = icmp ne i32 %and, 0, !dbg !2472
  %or.cond = or i1 %tobool41, %cmp43, !dbg !2473
  br i1 %or.cond, label %if.then44, label %if.else, !dbg !2473

if.then44:                                        ; preds = %if.then40
  %and48 = and i32 %object_size_type, -2, !dbg !2474
  %call49 = tail call i64 @compute_builtin_object_size(%union.tree_node* %7, i32 %and48) #7, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %call49, metadata !2428, metadata !DIExpression()), !dbg !2476
  %.pre = sext i32 %object_size_type to i64, !dbg !2477
  br label %if.end71, !dbg !2479

if.else:                                          ; preds = %if.then40
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !2431, metadata !DIExpression()), !dbg !2480
  %pass = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 3, !dbg !2481
  %10 = load i32, i32* %pass, align 8, !dbg !2481
  %cmp53 = icmp eq i32 %10, 0, !dbg !2483
  br i1 %cmp53, label %if.then54, label %if.end55, !dbg !2484

if.then54:                                        ; preds = %if.else
  tail call fastcc void @collect_object_sizes_for(%struct.object_size_info* %osi, %union.tree_node* %7) #7, !dbg !2485
  br label %if.end55, !dbg !2485

if.end55:                                         ; preds = %if.then54, %if.else
  %idxprom56 = sext i32 %object_size_type to i64, !dbg !2486
  %arrayidx57 = getelementptr inbounds [4 x %struct.bitmap_head_def*], [4 x %struct.bitmap_head_def*]* @computed, i64 0, i64 %idxprom56, !dbg !2486
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx57, align 8, !dbg !2486
  %version = getelementptr inbounds i64, i64* %6, i64 5, !dbg !2488
  %12 = bitcast i64* %version to i32*, !dbg !2488
  %13 = load i32, i32* %12, align 8, !dbg !2488
  %call58 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %11, i32 %13) #6, !dbg !2489
  %tobool59 = icmp eq i32 %call58, 0, !dbg !2489
  br i1 %tobool59, label %if.else67, label %if.then60, !dbg !2490

if.then60:                                        ; preds = %if.end55
  %arrayidx62 = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %idxprom56, !dbg !2491
  %14 = load i64*, i64** %arrayidx62, align 8, !dbg !2491
  %15 = load i32, i32* %12, align 8, !dbg !2492
  %idxprom65 = zext i32 %15 to i64, !dbg !2491
  %arrayidx66 = getelementptr inbounds i64, i64* %14, i64 %idxprom65, !dbg !2491
  %16 = load i64, i64* %arrayidx66, align 8, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %16, metadata !2428, metadata !DIExpression()), !dbg !2476
  br label %if.end71, !dbg !2493

if.else67:                                        ; preds = %if.end55
  %arrayidx69 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom56, !dbg !2494
  %17 = load i64, i64* %arrayidx69, align 8, !dbg !2494
  call void @llvm.dbg.value(metadata i64 %17, metadata !2428, metadata !DIExpression()), !dbg !2476
  br label %if.end71

if.end71:                                         ; preds = %if.then60, %if.else67, %if.then44
  %idxprom72.pre-phi = phi i64 [ %idxprom56, %if.then60 ], [ %idxprom56, %if.else67 ], [ %.pre, %if.then44 ], !dbg !2477
  %sz.1 = phi i64 [ %16, %if.then60 ], [ %17, %if.else67 ], [ %call49, %if.then44 ], !dbg !2495
  call void @llvm.dbg.value(metadata i64 %sz.1, metadata !2428, metadata !DIExpression()), !dbg !2476
  %arrayidx73 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom72.pre-phi, !dbg !2477
  %18 = load i64, i64* %arrayidx73, align 8, !dbg !2477
  %cmp74 = icmp ne i64 %sz.1, %18, !dbg !2496
  %19 = load i64, i64* @offset_limit, align 8, !dbg !2497
  %cmp76 = icmp ult i64 %sz.1, %19, !dbg !2498
  %or.cond2 = and i1 %cmp74, %cmp76, !dbg !2499
  br i1 %or.cond2, label %if.then77, label %if.end164, !dbg !2499

if.then77:                                        ; preds = %if.end71
  %call78 = tail call %union.tree_node* @size_int_kind(i64 %sz.1, i32 0) #6, !dbg !2500
  call void @llvm.dbg.value(metadata %union.tree_node* %call78, metadata !2425, metadata !DIExpression()), !dbg !2453
  br label %if.end164, !dbg !2501

if.else80:                                        ; preds = %lor.lhs.false, %land.lhs.true12, %land.lhs.true
  %cmp87 = icmp eq i64 %bf.cast1015, 32, !dbg !2502
  br i1 %cmp87, label %land.lhs.true136, label %lor.lhs.false88, !dbg !2502

lor.lhs.false88:                                  ; preds = %if.else80
  %cmp93 = icmp eq i64 %bf.cast1015, 34, !dbg !2502
  br i1 %cmp93, label %land.lhs.true136, label %lor.lhs.false94, !dbg !2502

lor.lhs.false94:                                  ; preds = %lor.lhs.false88
  %cmp99 = icmp eq i64 %bf.cast1015, 36, !dbg !2502
  br i1 %cmp99, label %land.lhs.true136, label %lor.lhs.false100, !dbg !2502

lor.lhs.false100:                                 ; preds = %lor.lhs.false94
  %cmp105 = icmp eq i64 %bf.cast1015, 141, !dbg !2502
  br i1 %cmp105, label %land.lhs.true106, label %lor.lhs.false130, !dbg !2502

land.lhs.true106:                                 ; preds = %lor.lhs.false100
  %var108 = getelementptr inbounds %union.tree_node, %union.tree_node* %pt_var.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2502
  %20 = bitcast i32* %var108 to i64**, !dbg !2502
  %21 = load i64*, i64** %20, align 8, !dbg !2502
  %bf.load110 = load i64, i64* %21, align 8, !dbg !2502
  %bf.cast11244 = and i64 %bf.load110, 65535, !dbg !2502
  %cmp113 = icmp eq i64 %bf.cast11244, 32, !dbg !2502
  br i1 %cmp113, label %land.lhs.true136, label %lor.lhs.false114, !dbg !2502

lor.lhs.false114:                                 ; preds = %land.lhs.true106
  %cmp121 = icmp eq i64 %bf.cast11244, 34, !dbg !2502
  br i1 %cmp121, label %land.lhs.true136, label %lor.lhs.false122, !dbg !2502

lor.lhs.false122:                                 ; preds = %lor.lhs.false114
  %cmp129 = icmp eq i64 %bf.cast11244, 36, !dbg !2502
  br i1 %cmp129, label %land.lhs.true136, label %lor.lhs.false130, !dbg !2504

lor.lhs.false130:                                 ; preds = %lor.lhs.false122, %lor.lhs.false100
  %cmp135 = icmp eq i64 %bf.cast1015, 28, !dbg !2505
  br i1 %cmp135, label %land.lhs.true136, label %if.else160, !dbg !2506

land.lhs.true136:                                 ; preds = %lor.lhs.false130, %lor.lhs.false122, %lor.lhs.false114, %land.lhs.true106, %lor.lhs.false94, %lor.lhs.false88, %if.else80
  %type138 = getelementptr inbounds %union.tree_node, %union.tree_node* %pt_var.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2507
  %22 = bitcast %union.tree_node** %type138 to %struct.tree_type**, !dbg !2507
  %23 = load %struct.tree_type*, %struct.tree_type** %22, align 8, !dbg !2507
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %23, i64 0, i32 3, !dbg !2507
  %24 = load %union.tree_node*, %union.tree_node** %size_unit, align 8, !dbg !2507
  %tobool140 = icmp eq %union.tree_node* %24, null, !dbg !2507
  br i1 %tobool140, label %if.else160, label %land.lhs.true141, !dbg !2508

land.lhs.true141:                                 ; preds = %land.lhs.true136
  %call146 = tail call i32 @host_integerp(%union.tree_node* nonnull %24, i32 1) #6, !dbg !2509
  %tobool147 = icmp eq i32 %call146, 0, !dbg !2509
  br i1 %tobool147, label %if.else160, label %land.lhs.true148, !dbg !2510

land.lhs.true148:                                 ; preds = %land.lhs.true141
  %25 = load %struct.tree_type*, %struct.tree_type** %22, align 8, !dbg !2511
  %size_unit152 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %25, i64 0, i32 3, !dbg !2511
  %26 = load %union.tree_node*, %union.tree_node** %size_unit152, align 8, !dbg !2511
  %call153 = tail call i64 @tree_low_cst(%union.tree_node* %26, i32 1) #6, !dbg !2512
  %27 = load i64, i64* @offset_limit, align 8, !dbg !2513
  %cmp154 = icmp ult i64 %call153, %27, !dbg !2514
  br i1 %cmp154, label %if.then155, label %if.else160, !dbg !2515

if.then155:                                       ; preds = %land.lhs.true148
  %28 = load %struct.tree_type*, %struct.tree_type** %22, align 8, !dbg !2516
  %size_unit159 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %28, i64 0, i32 3, !dbg !2516
  %29 = load %union.tree_node*, %union.tree_node** %size_unit159, align 8, !dbg !2516
  call void @llvm.dbg.value(metadata %union.tree_node* %29, metadata !2425, metadata !DIExpression()), !dbg !2453
  br label %if.end164

if.else160:                                       ; preds = %land.lhs.true141, %land.lhs.true136, %if.end, %land.lhs.true148, %lor.lhs.false130
  %idxprom161 = sext i32 %object_size_type to i64, !dbg !2517
  %arrayidx162 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom161, !dbg !2517
  %30 = load i64, i64* %arrayidx162, align 8, !dbg !2517
  br label %cleanup543, !dbg !2518

if.end164:                                        ; preds = %if.end71, %if.then77, %if.then155
  %pt_var_size.1 = phi %union.tree_node* [ %29, %if.then155 ], [ %call78, %if.then77 ], [ null, %if.end71 ], !dbg !2519
  call void @llvm.dbg.value(metadata %union.tree_node* %pt_var_size.1, metadata !2425, metadata !DIExpression()), !dbg !2453
  %31 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2520
  %cmp168 = icmp eq %union.tree_node* %pt_var.0, %31, !dbg !2521
  br i1 %cmp168, label %if.else528, label %if.then169, !dbg !2522

if.then169:                                       ; preds = %if.end164
  %and171 = and i32 %object_size_type, 1, !dbg !2523
  %tobool172 = icmp eq i32 %and171, 0, !dbg !2523
  br i1 %tobool172, label %if.end458, label %if.then173, !dbg !2524

if.then173:                                       ; preds = %if.then169
  br label %while.cond, !dbg !2525

while.cond:                                       ; preds = %while.body, %if.then173
  %var170.0 = phi %union.tree_node* [ %31, %if.then173 ], [ %var170.0.pre, %while.body ], !dbg !2526
  call void @llvm.dbg.value(metadata %union.tree_node* %var170.0, metadata !2434, metadata !DIExpression()), !dbg !2527
  %cmp177 = icmp eq %union.tree_node* %var170.0, %pt_var.0, !dbg !2528
  br i1 %cmp177, label %while.end, label %land.lhs.true178, !dbg !2529

land.lhs.true178:                                 ; preds = %while.cond
  %32 = getelementptr inbounds %union.tree_node, %union.tree_node* %var170.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2530
  %bf.load180 = load i64, i64* %32, align 8, !dbg !2530
  %bf.cast18238 = and i64 %bf.load180, 65535, !dbg !2531
  %33 = and i64 %bf.load180, 65531, !dbg !2532
  %34 = add nsw i64 %33, -41, !dbg !2532
  %35 = icmp ult i64 %34, 2, !dbg !2532
  %36 = add nsw i64 %bf.cast18238, -43, !dbg !2532
  %37 = icmp ult i64 %36, 2, !dbg !2532
  %38 = or i1 %37, %35, !dbg !2532
  br i1 %38, label %while.end, label %while.body, !dbg !2532

while.body:                                       ; preds = %land.lhs.true178
  %var170.0.in.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %var170.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2526
  %var170.0.pre = load %union.tree_node*, %union.tree_node** %var170.0.in.phi.trans.insert, align 8, !dbg !2526
  br label %while.cond, !dbg !2525, !llvm.loop !2533

while.end:                                        ; preds = %land.lhs.true178, %while.cond
  %var170.0.lcssa = phi %union.tree_node* [ %var170.0, %land.lhs.true178 ], [ %var170.0, %while.cond ], !dbg !2526
  %cmp177.lcssa = phi i1 [ %cmp177, %land.lhs.true178 ], [ %cmp177, %while.cond ], !dbg !2528
  call void @llvm.dbg.value(metadata %union.tree_node* %var170.0.lcssa, metadata !2434, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata %union.tree_node* %var170.0.lcssa, metadata !2434, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata %union.tree_node* %var170.0.lcssa, metadata !2434, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata %union.tree_node* %var170.0.lcssa, metadata !2434, metadata !DIExpression()), !dbg !2527
  br i1 %cmp177.lcssa, label %if.end227, label %land.lhs.true217, !dbg !2535

land.lhs.true217:                                 ; preds = %while.end
  %39 = getelementptr inbounds %union.tree_node, %union.tree_node* %var170.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2537
  %bf.load219 = load i64, i64* %39, align 8, !dbg !2537
  %bf.cast22137 = and i64 %bf.load219, 65535, !dbg !2538
  %cmp222 = icmp eq i64 %bf.cast22137, 45, !dbg !2538
  br i1 %cmp222, label %if.then223, label %if.end227, !dbg !2539

if.then223:                                       ; preds = %land.lhs.true217
  %operands225 = getelementptr inbounds %union.tree_node, %union.tree_node* %var170.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2540
  %40 = load %union.tree_node*, %union.tree_node** %operands225, align 8, !dbg !2540
  call void @llvm.dbg.value(metadata %union.tree_node* %40, metadata !2434, metadata !DIExpression()), !dbg !2527
  br label %if.end227, !dbg !2541

if.end227:                                        ; preds = %while.end, %if.then223, %land.lhs.true217
  %var170.1 = phi %union.tree_node* [ %40, %if.then223 ], [ %var170.0.lcssa, %land.lhs.true217 ], [ %pt_var.0, %while.end ], !dbg !2526
  call void @llvm.dbg.value(metadata %union.tree_node* %var170.1, metadata !2434, metadata !DIExpression()), !dbg !2527
  %type229 = getelementptr inbounds %union.tree_node, %union.tree_node* %var170.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2542
  %41 = bitcast %union.tree_node** %type229 to %struct.tree_type**, !dbg !2542
  %42 = load %struct.tree_type*, %struct.tree_type** %41, align 8, !dbg !2542
  %size_unit231 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %42, i64 0, i32 3, !dbg !2542
  %43 = load %union.tree_node*, %union.tree_node** %size_unit231, align 8, !dbg !2542
  %tobool232 = icmp eq %union.tree_node* %43, null, !dbg !2542
  br i1 %tobool232, label %if.end458, label %lor.lhs.false233, !dbg !2543

lor.lhs.false233:                                 ; preds = %if.end227
  %call238 = tail call i32 @host_integerp(%union.tree_node* nonnull %43, i32 1) #6, !dbg !2544
  %tobool239 = icmp eq i32 %call238, 0, !dbg !2544
  br i1 %tobool239, label %if.end458, label %lor.lhs.false240, !dbg !2545

lor.lhs.false240:                                 ; preds = %lor.lhs.false233
  %tobool241 = icmp eq %union.tree_node* %pt_var_size.1, null, !dbg !2546
  br i1 %tobool241, label %if.else250, label %land.lhs.true242, !dbg !2547

land.lhs.true242:                                 ; preds = %lor.lhs.false240
  %44 = load %struct.tree_type*, %struct.tree_type** %41, align 8, !dbg !2548
  %size_unit246 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %44, i64 0, i32 3, !dbg !2548
  %45 = load %union.tree_node*, %union.tree_node** %size_unit246, align 8, !dbg !2548
  %call247 = tail call i32 @tree_int_cst_lt(%union.tree_node* nonnull %pt_var_size.1, %union.tree_node* %45) #6, !dbg !2549
  %tobool248 = icmp eq i32 %call247, 0, !dbg !2549
  br i1 %tobool248, label %if.else250, label %if.end458, !dbg !2550

if.else250:                                       ; preds = %land.lhs.true242, %lor.lhs.false240
  %cmp251 = icmp eq %union.tree_node* %var170.1, %pt_var.0, !dbg !2551
  br i1 %cmp251, label %if.end458, label %land.lhs.true252, !dbg !2552

land.lhs.true252:                                 ; preds = %if.else250
  %bf.load254 = load i64, i64* %4, align 8, !dbg !2553
  %bf.cast25624 = and i64 %bf.load254, 65535, !dbg !2554
  %cmp257 = icmp eq i64 %bf.cast25624, 47, !dbg !2554
  br i1 %cmp257, label %while.cond259.preheader, label %if.end458, !dbg !2555

while.cond259.preheader:                          ; preds = %land.lhs.true252
  br label %while.cond259, !dbg !2556

while.cond259:                                    ; preds = %while.cond259.preheader, %sw.epilog
  %v.0 = phi %union.tree_node* [ %v.8, %sw.epilog ], [ %var170.1, %while.cond259.preheader ], !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.0, metadata !2437, metadata !DIExpression()), !dbg !2557
  %tobool260 = icmp ne %union.tree_node* %v.0, null, !dbg !2558
  %cmp262 = icmp ne %union.tree_node* %v.0, %pt_var.0, !dbg !2559
  %spec.select = and i1 %cmp262, %tobool260, !dbg !2560
  br i1 %spec.select, label %while.body264, label %while.end451, !dbg !2556

while.body264:                                    ; preds = %while.cond259
  %46 = getelementptr inbounds %union.tree_node, %union.tree_node* %v.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2561
  %bf.load266 = load i64, i64* %46, align 8, !dbg !2561
  %47 = trunc i64 %bf.load266 to i16, !dbg !2561
  switch i16 %47, label %sw.default [
    i16 45, label %sw.bb
    i16 43, label %sw.epilog
    i16 44, label %sw.epilog
    i16 41, label %sw.bb320
  ], !dbg !2562

sw.bb:                                            ; preds = %while.body264
  %operands270 = getelementptr inbounds %union.tree_node, %union.tree_node* %v.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2563
  %48 = bitcast %union.tree_node** %operands270 to %struct.tree_common**, !dbg !2563
  %49 = load %struct.tree_common*, %struct.tree_common** %48, align 8, !dbg !2563
  %type273 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %49, i64 0, i32 2, !dbg !2563
  %50 = bitcast %union.tree_node** %type273 to %struct.tree_type**, !dbg !2563
  %51 = load %struct.tree_type*, %struct.tree_type** %50, align 8, !dbg !2563
  %size_unit275 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %51, i64 0, i32 3, !dbg !2563
  %52 = load %union.tree_node*, %union.tree_node** %size_unit275, align 8, !dbg !2563
  %tobool276 = icmp eq %union.tree_node* %52, null, !dbg !2563
  %53 = bitcast %struct.tree_common* %49 to %union.tree_node*, !dbg !2564
  br i1 %tobool276, label %if.end315, label %land.lhs.true277, !dbg !2564

land.lhs.true277:                                 ; preds = %sw.bb
  %arrayidx280 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands270, i64 1, !dbg !2565
  %54 = bitcast %union.tree_node** %arrayidx280 to i64**, !dbg !2565
  %55 = load i64*, i64** %54, align 8, !dbg !2565
  %bf.load282 = load i64, i64* %55, align 8, !dbg !2565
  %bf.cast28435 = and i64 %bf.load282, 65535, !dbg !2566
  %cmp285 = icmp eq i64 %bf.cast28435, 23, !dbg !2566
  %56 = bitcast i64* %55 to %union.tree_node*, !dbg !2567
  br i1 %cmp285, label %if.then286, label %if.end315, !dbg !2567

if.then286:                                       ; preds = %land.lhs.true277
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %51, i64 0, i32 1, !dbg !2568
  %57 = load %union.tree_node*, %union.tree_node** %values, align 8, !dbg !2568
  call void @llvm.dbg.value(metadata %union.tree_node* %57, metadata !2443, metadata !DIExpression()), !dbg !2569
  %tobool293 = icmp eq %union.tree_node* %57, null, !dbg !2570
  br i1 %tobool293, label %if.end314, label %land.lhs.true294, !dbg !2572

land.lhs.true294:                                 ; preds = %if.then286
  %maxval = getelementptr inbounds %union.tree_node, %union.tree_node* %57, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2573
  %58 = bitcast %struct.rtx_def** %maxval to %union.tree_node**, !dbg !2573
  %59 = load %union.tree_node*, %union.tree_node** %58, align 8, !dbg !2573
  %tobool296 = icmp eq %union.tree_node* %59, null, !dbg !2573
  br i1 %tobool296, label %if.end314, label %land.lhs.true297, !dbg !2574

land.lhs.true297:                                 ; preds = %land.lhs.true294
  %60 = getelementptr inbounds %union.tree_node, %union.tree_node* %59, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2574
  %bf.load301 = load i64, i64* %60, align 8, !dbg !2575
  %bf.cast30336 = and i64 %bf.load301, 65535, !dbg !2576
  %cmp304 = icmp eq i64 %bf.cast30336, 23, !dbg !2576
  br i1 %cmp304, label %land.lhs.true305, label %if.end314, !dbg !2577

land.lhs.true305:                                 ; preds = %land.lhs.true297
  %call311 = tail call i32 @tree_int_cst_lt(%union.tree_node* %56, %union.tree_node* nonnull %59) #6, !dbg !2578
  %tobool312 = icmp eq i32 %call311, 0, !dbg !2578
  br i1 %tobool312, label %if.end314, label %cleanup, !dbg !2579

if.end314:                                        ; preds = %land.lhs.true305, %land.lhs.true294, %if.then286, %land.lhs.true297
  br label %cleanup, !dbg !2580

cleanup:                                          ; preds = %land.lhs.true305, %if.end314
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end314 ], [ false, %land.lhs.true305 ]
  %v.1 = phi %union.tree_node* [ %v.0, %if.end314 ], [ null, %land.lhs.true305 ], !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.1, metadata !2437, metadata !DIExpression()), !dbg !2557
  br i1 %cleanup.dest.slot.0, label %cleanup.if.end315_crit_edge, label %sw.epilog

cleanup.if.end315_crit_edge:                      ; preds = %cleanup
  %operands317.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %v.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2581
  %.pre52 = load %union.tree_node*, %union.tree_node** %operands317.phi.trans.insert, align 8, !dbg !2582
  br label %if.end315

if.end315:                                        ; preds = %cleanup.if.end315_crit_edge, %sw.bb, %land.lhs.true277
  %61 = phi %union.tree_node* [ %53, %land.lhs.true277 ], [ %53, %sw.bb ], [ %.pre52, %cleanup.if.end315_crit_edge ], !dbg !2582
  call void @llvm.dbg.value(metadata %union.tree_node* %61, metadata !2437, metadata !DIExpression()), !dbg !2557
  br label %sw.epilog, !dbg !2583

sw.bb320:                                         ; preds = %while.body264
  %type322 = getelementptr inbounds %union.tree_node, %union.tree_node* %v.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2584
  %62 = bitcast %union.tree_node** %type322 to i64**, !dbg !2584
  %63 = load i64*, i64** %62, align 8, !dbg !2584
  %bf.load324 = load i64, i64* %63, align 8, !dbg !2584
  %bf.cast32625 = and i64 %bf.load324, 65535, !dbg !2586
  %cmp327 = icmp eq i64 %bf.cast32625, 15, !dbg !2586
  br i1 %cmp327, label %while.cond330.preheader, label %sw.epilog, !dbg !2587

while.cond330.preheader:                          ; preds = %sw.bb320
  br label %while.cond330, !dbg !2588

while.cond330:                                    ; preds = %while.cond330.preheader, %if.else362
  %v.3 = phi %union.tree_node* [ %69, %if.else362 ], [ %v.0, %while.cond330.preheader ], !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.3, metadata !2437, metadata !DIExpression()), !dbg !2557
  %cmp331 = icmp eq %union.tree_node* %v.3, %pt_var.0, !dbg !2589
  br i1 %cmp331, label %while.cond330.while.end367_crit_edge, label %land.rhs332, !dbg !2590

while.cond330.while.end367_crit_edge:             ; preds = %while.cond330
  %v.3.lcssa = phi %union.tree_node* [ %v.3, %while.cond330 ], !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.3.lcssa, metadata !2437, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.3.lcssa, metadata !2437, metadata !DIExpression()), !dbg !2557
  %bf.load369.pre = load i64, i64* %4, align 8, !dbg !2591
  br label %while.end367, !dbg !2590

land.rhs332:                                      ; preds = %while.cond330
  %64 = getelementptr inbounds %union.tree_node, %union.tree_node* %v.3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2592
  %bf.load334 = load i64, i64* %64, align 8, !dbg !2592
  %bf.cast33632 = and i64 %bf.load334, 65535, !dbg !2593
  %cmp337 = icmp eq i64 %bf.cast33632, 41, !dbg !2593
  br i1 %cmp337, label %while.body339, label %while.end367.loopexit, !dbg !2588

while.body339:                                    ; preds = %land.rhs332
  %operands341 = getelementptr inbounds %union.tree_node, %union.tree_node* %v.3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2594
  %65 = bitcast %union.tree_node** %operands341 to %struct.tree_common**, !dbg !2594
  %66 = load %struct.tree_common*, %struct.tree_common** %65, align 8, !dbg !2594
  %type344 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %66, i64 0, i32 2, !dbg !2594
  %67 = bitcast %union.tree_node** %type344 to i64**, !dbg !2594
  %68 = load i64*, i64** %67, align 8, !dbg !2594
  %bf.load346 = load i64, i64* %68, align 8, !dbg !2594
  %bf.cast34833 = and i64 %bf.load346, 65535, !dbg !2596
  %cmp349 = icmp eq i64 %bf.cast34833, 17, !dbg !2596
  %69 = bitcast %struct.tree_common* %66 to %union.tree_node*, !dbg !2597
  br i1 %cmp349, label %if.else362, label %land.lhs.true350, !dbg !2597

land.lhs.true350:                                 ; preds = %while.body339
  %cmp360 = icmp eq i64 %bf.cast34833, 18, !dbg !2598
  br i1 %cmp360, label %if.else362, label %while.end367.loopexit, !dbg !2599

if.else362:                                       ; preds = %land.lhs.true350, %while.body339
  call void @llvm.dbg.value(metadata %union.tree_node* %69, metadata !2437, metadata !DIExpression()), !dbg !2557
  br label %while.cond330, !dbg !2588, !llvm.loop !2600

while.end367.loopexit:                            ; preds = %land.rhs332, %land.lhs.true350
  %bf.load334.lcssa = phi i64 [ %bf.load334, %land.rhs332 ], [ %bf.load334, %land.lhs.true350 ], !dbg !2592
  %v.3.lcssa61 = phi %union.tree_node* [ %v.3, %land.rhs332 ], [ %v.3, %land.lhs.true350 ], !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.3.lcssa61, metadata !2437, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.3.lcssa61, metadata !2437, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.3.lcssa61, metadata !2437, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.3.lcssa61, metadata !2437, metadata !DIExpression()), !dbg !2557
  br label %while.end367, !dbg !2602

while.end367:                                     ; preds = %while.end367.loopexit, %while.cond330.while.end367_crit_edge
  %v.362 = phi %union.tree_node* [ %v.3.lcssa, %while.cond330.while.end367_crit_edge ], [ %v.3.lcssa61, %while.end367.loopexit ]
  %bf.load369 = phi i64 [ %bf.load369.pre, %while.cond330.while.end367_crit_edge ], [ %bf.load334.lcssa, %while.end367.loopexit ], !dbg !2591
  call void @llvm.dbg.value(metadata %union.tree_node* %v.362, metadata !2437, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.362, metadata !2437, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.362, metadata !2437, metadata !DIExpression()), !dbg !2557
  %bf.cast37126 = and i64 %bf.load369, 65535, !dbg !2602
  %cmp372 = icmp eq i64 %bf.cast37126, 41, !dbg !2602
  br i1 %cmp372, label %land.lhs.true373, label %if.end408, !dbg !2603

land.lhs.true373:                                 ; preds = %while.end367
  %operands375 = getelementptr inbounds %union.tree_node, %union.tree_node* %v.362, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2604
  %70 = bitcast %union.tree_node** %operands375 to %struct.tree_common**, !dbg !2604
  %71 = load %struct.tree_common*, %struct.tree_common** %70, align 8, !dbg !2604
  %type378 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %71, i64 0, i32 2, !dbg !2604
  %72 = bitcast %union.tree_node** %type378 to i64**, !dbg !2604
  %73 = load i64*, i64** %72, align 8, !dbg !2604
  %bf.load380 = load i64, i64* %73, align 8, !dbg !2604
  %bf.cast38230 = and i64 %bf.load380, 65535, !dbg !2605
  %cmp383 = icmp eq i64 %bf.cast38230, 16, !dbg !2605
  %74 = bitcast %struct.tree_common* %71 to %union.tree_node*, !dbg !2606
  br i1 %cmp383, label %if.then384, label %if.end408, !dbg !2606

if.then384:                                       ; preds = %land.lhs.true373
  %arrayidx387 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands375, i64 1, !dbg !2607
  %75 = bitcast %union.tree_node** %arrayidx387 to %struct.tree_common**, !dbg !2607
  %76 = load %struct.tree_common*, %struct.tree_common** %75, align 8, !dbg !2607
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %76, i64 0, i32 1, !dbg !2607
  br label %for.cond, !dbg !2608

for.cond:                                         ; preds = %for.inc, %if.then384
  %fld_chain.0.in = phi %union.tree_node** [ %chain, %if.then384 ], [ %chain398, %for.inc ]
  %fld_chain.0 = load %union.tree_node*, %union.tree_node** %fld_chain.0.in, align 8, !dbg !2609
  call void @llvm.dbg.value(metadata %union.tree_node* %fld_chain.0, metadata !2447, metadata !DIExpression()), !dbg !2609
  %cond13 = icmp eq %union.tree_node* %fld_chain.0, null, !dbg !2610
  br i1 %cond13, label %if.end401.loopexit, label %for.body, !dbg !2610

for.body:                                         ; preds = %for.cond
  %77 = getelementptr inbounds %union.tree_node, %union.tree_node* %fld_chain.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2612
  %bf.load391 = load i64, i64* %77, align 8, !dbg !2612
  %bf.cast39331 = and i64 %bf.load391, 65535, !dbg !2615
  %cmp394 = icmp eq i64 %bf.cast39331, 31, !dbg !2615
  br i1 %cmp394, label %for.end, label %for.inc, !dbg !2616

for.inc:                                          ; preds = %for.body
  %chain398 = getelementptr inbounds %union.tree_node, %union.tree_node* %fld_chain.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2617
  br label %for.cond, !dbg !2618, !llvm.loop !2619

for.end:                                          ; preds = %for.body
  br label %cleanup405, !dbg !2621

if.end401.loopexit:                               ; preds = %for.cond
  call void @llvm.dbg.value(metadata %union.tree_node* %74, metadata !2437, metadata !DIExpression()), !dbg !2557
  br label %cleanup405, !dbg !2622

cleanup405:                                       ; preds = %for.end, %if.end401.loopexit
  %cleanup.dest.slot.1 = phi i1 [ true, %if.end401.loopexit ], [ false, %for.end ]
  %v.4 = phi %union.tree_node* [ %74, %if.end401.loopexit ], [ null, %for.end ], !dbg !2609
  call void @llvm.dbg.value(metadata %union.tree_node* %v.4, metadata !2437, metadata !DIExpression()), !dbg !2557
  br i1 %cleanup.dest.slot.1, label %if.end408, label %sw.epilog

if.end408:                                        ; preds = %cleanup405, %land.lhs.true373, %while.end367
  %v.5 = phi %union.tree_node* [ %v.362, %land.lhs.true373 ], [ %v.362, %while.end367 ], [ %v.4, %cleanup405 ], !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.5, metadata !2437, metadata !DIExpression()), !dbg !2557
  br label %while.cond409, !dbg !2623

while.cond409:                                    ; preds = %if.else441, %if.end408
  %v.6 = phi %union.tree_node* [ %v.5, %if.end408 ], [ %85, %if.else441 ], !dbg !2581
  call void @llvm.dbg.value(metadata %union.tree_node* %v.6, metadata !2437, metadata !DIExpression()), !dbg !2557
  %cmp410 = icmp eq %union.tree_node* %v.6, %pt_var.0, !dbg !2624
  br i1 %cmp410, label %while.end446, label %land.rhs411, !dbg !2625

land.rhs411:                                      ; preds = %while.cond409
  %78 = getelementptr inbounds %union.tree_node, %union.tree_node* %v.6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2626
  %bf.load413 = load i64, i64* %78, align 8, !dbg !2626
  %bf.cast41527 = and i64 %bf.load413, 65535, !dbg !2627
  %cmp416 = icmp eq i64 %bf.cast41527, 41, !dbg !2627
  br i1 %cmp416, label %while.body418, label %while.end446, !dbg !2623

while.body418:                                    ; preds = %land.rhs411
  %operands420 = getelementptr inbounds %union.tree_node, %union.tree_node* %v.6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2628
  %79 = bitcast %union.tree_node** %operands420 to %struct.tree_common**, !dbg !2628
  %80 = load %struct.tree_common*, %struct.tree_common** %79, align 8, !dbg !2628
  %type423 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %80, i64 0, i32 2, !dbg !2628
  %81 = bitcast %union.tree_node** %type423 to i64**, !dbg !2628
  %82 = load i64*, i64** %81, align 8, !dbg !2628
  %bf.load425 = load i64, i64* %82, align 8, !dbg !2628
  %bf.cast42728 = and i64 %bf.load425, 65535, !dbg !2630
  %83 = add nsw i64 %bf.cast42728, -17, !dbg !2631
  %84 = icmp ult i64 %83, 2, !dbg !2631
  br i1 %84, label %if.else441, label %while.end446, !dbg !2631

if.else441:                                       ; preds = %while.body418
  %85 = bitcast %struct.tree_common* %80 to %union.tree_node*, !dbg !2631
  call void @llvm.dbg.value(metadata %union.tree_node* %85, metadata !2437, metadata !DIExpression()), !dbg !2557
  br label %while.cond409, !dbg !2623, !llvm.loop !2632

while.end446:                                     ; preds = %while.body418, %while.cond409, %land.rhs411
  %cmp410.lcssa = phi i1 [ %cmp410, %while.body418 ], [ %cmp410, %while.cond409 ], [ %cmp410, %land.rhs411 ], !dbg !2624
  call void @llvm.dbg.value(metadata %union.tree_node* %v.6, metadata !2437, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.6, metadata !2437, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.6, metadata !2437, metadata !DIExpression()), !dbg !2557
  %.pt_var.0 = select i1 %cmp410.lcssa, %union.tree_node* %pt_var.0, %union.tree_node* null
  call void @llvm.dbg.value(metadata %union.tree_node* %.pt_var.0, metadata !2437, metadata !DIExpression()), !dbg !2557
  br label %sw.epilog, !dbg !2634

sw.default:                                       ; preds = %while.body264
  call void @llvm.dbg.value(metadata %union.tree_node* %pt_var.0, metadata !2437, metadata !DIExpression()), !dbg !2557
  br label %sw.epilog, !dbg !2635

sw.epilog:                                        ; preds = %sw.bb320, %cleanup405, %while.body264, %while.body264, %cleanup, %sw.default, %while.end446, %if.end315
  %v.8 = phi %union.tree_node* [ %pt_var.0, %sw.default ], [ %v.4, %cleanup405 ], [ %.pt_var.0, %while.end446 ], [ %v.1, %cleanup ], [ %61, %if.end315 ], [ null, %while.body264 ], [ null, %while.body264 ], [ null, %sw.bb320 ], !dbg !2581
  call void @llvm.dbg.value(metadata %union.tree_node* %v.8, metadata !2437, metadata !DIExpression()), !dbg !2557
  br label %while.cond259, !dbg !2556, !llvm.loop !2636

while.end451:                                     ; preds = %while.cond259
  %v.0.lcssa = phi %union.tree_node* [ %v.0, %while.cond259 ], !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.0.lcssa, metadata !2437, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.0.lcssa, metadata !2437, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata %union.tree_node* %v.0.lcssa, metadata !2437, metadata !DIExpression()), !dbg !2557
  %cmp452 = icmp eq %union.tree_node* %v.0.lcssa, %pt_var.0, !dbg !2638
  %spec.select10 = select i1 %cmp452, %union.tree_node* %pt_var.0, %union.tree_node* %var170.1, !dbg !2640
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select10, metadata !2434, metadata !DIExpression()), !dbg !2527
  br label %if.end458, !dbg !2641

if.end458:                                        ; preds = %land.lhs.true242, %if.else250, %lor.lhs.false233, %if.end227, %if.then169, %while.end451, %land.lhs.true252
  %var170.5 = phi %union.tree_node* [ %pt_var.0, %land.lhs.true242 ], [ %pt_var.0, %lor.lhs.false233 ], [ %pt_var.0, %if.end227 ], [ %spec.select10, %while.end451 ], [ %var170.1, %land.lhs.true252 ], [ %pt_var.0, %if.else250 ], [ %pt_var.0, %if.then169 ], !dbg !2642
  call void @llvm.dbg.value(metadata %union.tree_node* %var170.5, metadata !2434, metadata !DIExpression()), !dbg !2527
  %cmp459 = icmp eq %union.tree_node* %var170.5, %pt_var.0, !dbg !2643
  br i1 %cmp459, label %if.else465, label %if.then460, !dbg !2645

if.then460:                                       ; preds = %if.end458
  %type462 = getelementptr inbounds %union.tree_node, %union.tree_node* %var170.5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2646
  %86 = bitcast %union.tree_node** %type462 to %struct.tree_type**, !dbg !2646
  %87 = load %struct.tree_type*, %struct.tree_type** %86, align 8, !dbg !2646
  %size_unit464 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %87, i64 0, i32 3, !dbg !2646
  %88 = load %union.tree_node*, %union.tree_node** %size_unit464, align 8, !dbg !2646
  call void @llvm.dbg.value(metadata %union.tree_node* %88, metadata !2426, metadata !DIExpression()), !dbg !2453
  br label %if.end472, !dbg !2647

if.else465:                                       ; preds = %if.end458
  %tobool466 = icmp eq %union.tree_node* %pt_var_size.1, null, !dbg !2648
  br i1 %tobool466, label %if.then467, label %if.end472, !dbg !2650

if.then467:                                       ; preds = %if.else465
  %idxprom468 = sext i32 %object_size_type to i64, !dbg !2651
  %arrayidx469 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom468, !dbg !2651
  %89 = load i64, i64* %arrayidx469, align 8, !dbg !2651
  br label %cleanup525, !dbg !2652

if.end472:                                        ; preds = %if.else465, %if.then460
  %var_size.0 = phi %union.tree_node* [ %88, %if.then460 ], [ %pt_var_size.1, %if.else465 ], !dbg !2653
  call void @llvm.dbg.value(metadata %union.tree_node* %var_size.0, metadata !2426, metadata !DIExpression()), !dbg !2453
  %90 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2654
  %call476 = tail call fastcc %union.tree_node* @compute_object_offset(%union.tree_node* %90, %union.tree_node* %var170.5) #7, !dbg !2655
  call void @llvm.dbg.value(metadata %union.tree_node* %call476, metadata !2427, metadata !DIExpression()), !dbg !2453
  %91 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2656
  %cmp477 = icmp eq %union.tree_node* %call476, %91, !dbg !2658
  br i1 %cmp477, label %if.end491, label %if.then478, !dbg !2659

if.then478:                                       ; preds = %if.end472
  %92 = getelementptr inbounds %union.tree_node, %union.tree_node* %call476, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2660
  %bf.load480 = load i64, i64* %92, align 8, !dbg !2660
  %bf.cast48223 = and i64 %bf.load480, 65535, !dbg !2663
  %cmp483 = icmp eq i64 %bf.cast48223, 23, !dbg !2663
  br i1 %cmp483, label %land.lhs.true484, label %if.else488, !dbg !2664

land.lhs.true484:                                 ; preds = %if.then478
  %call485 = tail call i32 @tree_int_cst_lt(%union.tree_node* %var_size.0, %union.tree_node* %call476) #6, !dbg !2665
  %tobool486 = icmp eq i32 %call485, 0, !dbg !2665
  br i1 %tobool486, label %if.else488, label %if.then487, !dbg !2666

if.then487:                                       ; preds = %land.lhs.true484
  %93 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 17), align 8, !dbg !2667
  call void @llvm.dbg.value(metadata %union.tree_node* %93, metadata !2427, metadata !DIExpression()), !dbg !2453
  br label %if.end491, !dbg !2668

if.else488:                                       ; preds = %land.lhs.true484, %if.then478
  %call489 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 64, %union.tree_node* %var_size.0, %union.tree_node* %call476) #6, !dbg !2669
  call void @llvm.dbg.value(metadata %union.tree_node* %call489, metadata !2427, metadata !DIExpression()), !dbg !2453
  br label %if.end491

if.end491:                                        ; preds = %if.end472, %if.then487, %if.else488
  %bytes.1 = phi %union.tree_node* [ %call476, %if.end472 ], [ %93, %if.then487 ], [ %call489, %if.else488 ], !dbg !2527
  call void @llvm.dbg.value(metadata %union.tree_node* %bytes.1, metadata !2427, metadata !DIExpression()), !dbg !2453
  %cmp492 = icmp ne %union.tree_node* %var170.5, %pt_var.0, !dbg !2670
  %tobool494 = icmp ne %union.tree_node* %pt_var_size.1, null, !dbg !2671
  %or.cond11 = and i1 %cmp492, %tobool494, !dbg !2672
  br i1 %or.cond11, label %land.lhs.true495, label %cleanup525, !dbg !2672

land.lhs.true495:                                 ; preds = %if.end491
  %bf.load497 = load i64, i64* %4, align 8, !dbg !2673
  %bf.cast49921 = and i64 %bf.load497, 65535, !dbg !2674
  %cmp500 = icmp eq i64 %bf.cast49921, 47, !dbg !2674
  %94 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2675
  %cmp502 = icmp ne %union.tree_node* %bytes.1, %94, !dbg !2676
  %or.cond12 = and i1 %cmp500, %cmp502, !dbg !2677
  br i1 %or.cond12, label %if.then503, label %cleanup525, !dbg !2677

if.then503:                                       ; preds = %land.lhs.true495
  %95 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2678
  %call507 = tail call fastcc %union.tree_node* @compute_object_offset(%union.tree_node* %95, %union.tree_node* nonnull %pt_var.0) #7, !dbg !2679
  call void @llvm.dbg.value(metadata %union.tree_node* %call507, metadata !2450, metadata !DIExpression()), !dbg !2680
  %96 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2681
  %cmp508 = icmp eq %union.tree_node* %call507, %96, !dbg !2683
  br i1 %cmp508, label %cleanup525, label %if.then509, !dbg !2684

if.then509:                                       ; preds = %if.then503
  %97 = getelementptr inbounds %union.tree_node, %union.tree_node* %call507, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2685
  %bf.load511 = load i64, i64* %97, align 8, !dbg !2685
  %bf.cast51322 = and i64 %bf.load511, 65535, !dbg !2688
  %cmp514 = icmp eq i64 %bf.cast51322, 23, !dbg !2688
  br i1 %cmp514, label %land.lhs.true515, label %if.else519, !dbg !2689

land.lhs.true515:                                 ; preds = %if.then509
  %call516 = tail call i32 @tree_int_cst_lt(%union.tree_node* nonnull %pt_var_size.1, %union.tree_node* %call507) #6, !dbg !2690
  %tobool517 = icmp eq i32 %call516, 0, !dbg !2690
  br i1 %tobool517, label %if.else519, label %if.then518, !dbg !2691

if.then518:                                       ; preds = %land.lhs.true515
  %98 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 17), align 8, !dbg !2692
  call void @llvm.dbg.value(metadata %union.tree_node* %98, metadata !2450, metadata !DIExpression()), !dbg !2680
  br label %if.end521, !dbg !2693

if.else519:                                       ; preds = %land.lhs.true515, %if.then509
  %call520 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 64, %union.tree_node* nonnull %pt_var_size.1, %union.tree_node* %call507) #6, !dbg !2694
  call void @llvm.dbg.value(metadata %union.tree_node* %call520, metadata !2450, metadata !DIExpression()), !dbg !2680
  br label %if.end521

if.end521:                                        ; preds = %if.else519, %if.then518
  %bytes2.0 = phi %union.tree_node* [ %98, %if.then518 ], [ %call520, %if.else519 ], !dbg !2695
  call void @llvm.dbg.value(metadata %union.tree_node* %bytes2.0, metadata !2450, metadata !DIExpression()), !dbg !2680
  %call522 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 80, %union.tree_node* %bytes.1, %union.tree_node* %bytes2.0) #6, !dbg !2696
  call void @llvm.dbg.value(metadata %union.tree_node* %call522, metadata !2427, metadata !DIExpression()), !dbg !2453
  br label %cleanup525, !dbg !2697

cleanup525:                                       ; preds = %if.then503, %if.end491, %land.lhs.true495, %if.end521, %if.then467
  %cleanup.dest.slot.2 = phi i1 [ false, %if.then467 ], [ true, %if.then503 ], [ true, %if.end521 ], [ true, %land.lhs.true495 ], [ true, %if.end491 ]
  %bytes.4 = phi %union.tree_node* [ undef, %if.then467 ], [ %bytes.1, %if.then503 ], [ %call522, %if.end521 ], [ %bytes.1, %land.lhs.true495 ], [ %bytes.1, %if.end491 ]
  %retval.0 = phi i64 [ %89, %if.then467 ], [ undef, %if.then503 ], [ undef, %if.end521 ], [ undef, %land.lhs.true495 ], [ undef, %if.end491 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %bytes.4, metadata !2427, metadata !DIExpression()), !dbg !2453
  br i1 %cleanup.dest.slot.2, label %if.end535, label %cleanup543

if.else528:                                       ; preds = %if.end164
  %tobool529 = icmp eq %union.tree_node* %pt_var_size.1, null, !dbg !2698
  br i1 %tobool529, label %if.then530, label %if.end535, !dbg !2700

if.then530:                                       ; preds = %if.else528
  %idxprom531 = sext i32 %object_size_type to i64, !dbg !2701
  %arrayidx532 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom531, !dbg !2701
  %99 = load i64, i64* %arrayidx532, align 8, !dbg !2701
  br label %cleanup543, !dbg !2702

if.end535:                                        ; preds = %if.else528, %cleanup525
  %bytes.5 = phi %union.tree_node* [ %bytes.4, %cleanup525 ], [ %pt_var_size.1, %if.else528 ], !dbg !2703
  call void @llvm.dbg.value(metadata %union.tree_node* %bytes.5, metadata !2427, metadata !DIExpression()), !dbg !2453
  %call536 = tail call i32 @host_integerp(%union.tree_node* %bytes.5, i32 1) #6, !dbg !2704
  %tobool537 = icmp eq i32 %call536, 0, !dbg !2704
  br i1 %tobool537, label %if.end540, label %if.then538, !dbg !2706

if.then538:                                       ; preds = %if.end535
  %call539 = tail call i64 @tree_low_cst(%union.tree_node* %bytes.5, i32 1) #6, !dbg !2707
  br label %cleanup543, !dbg !2708

if.end540:                                        ; preds = %if.end535
  %idxprom541 = sext i32 %object_size_type to i64, !dbg !2709
  %arrayidx542 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom541, !dbg !2709
  %100 = load i64, i64* %arrayidx542, align 8, !dbg !2709
  br label %cleanup543, !dbg !2710

cleanup543:                                       ; preds = %cleanup525, %if.end540, %if.then538, %if.then530, %if.else160
  %retval.1 = phi i64 [ %retval.0, %cleanup525 ], [ %call539, %if.then538 ], [ %100, %if.end540 ], [ %99, %if.then530 ], [ %30, %if.else160 ]
  ret i64 %retval.1, !dbg !2711
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @collect_object_sizes_for(%struct.object_size_info* %osi, %union.tree_node* %var) unnamed_addr #5 !dbg !2712 {
entry:
  call void @llvm.dbg.value(metadata %struct.object_size_info* %osi, metadata !2716, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2717, metadata !DIExpression()), !dbg !2738
  %object_size_type1 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 0, !dbg !2739
  %0 = load i32, i32* %object_size_type1, align 8, !dbg !2739
  call void @llvm.dbg.value(metadata i32 %0, metadata !2718, metadata !DIExpression()), !dbg !2738
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2740
  %1 = bitcast %union.tree_node** %version to i32*, !dbg !2740
  %2 = load i32, i32* %1, align 8, !dbg !2740
  call void @llvm.dbg.value(metadata i32 %2, metadata !2719, metadata !DIExpression()), !dbg !2738
  %idxprom = sext i32 %0 to i64, !dbg !2741
  %arrayidx = getelementptr inbounds [4 x %struct.bitmap_head_def*], [4 x %struct.bitmap_head_def*]* @computed, i64 0, i64 %idxprom, !dbg !2741
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !2741
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %3, i32 %2) #6, !dbg !2743
  %tobool = icmp eq i32 %call, 0, !dbg !2743
  br i1 %tobool, label %if.end, label %cleanup.cont218, !dbg !2744

if.end:                                           ; preds = %entry
  %pass = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 3, !dbg !2745
  %4 = load i32, i32* %pass, align 8, !dbg !2745
  %cmp = icmp eq i32 %4, 0, !dbg !2747
  br i1 %cmp, label %if.then2, label %if.end23, !dbg !2748

if.then2:                                         ; preds = %if.end
  %visited = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 1, !dbg !2749
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !2749
  %call3 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %5, i32 %2) #6, !dbg !2752
  %tobool4 = icmp eq i32 %call3, 0, !dbg !2752
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !2753

if.then5:                                         ; preds = %if.then2
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !2754
  %call7 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %6, i32 %2) #6, !dbg !2756
  %7 = shl i32 %0, 30, !dbg !2757
  %sext = ashr i32 %7, 31, !dbg !2757
  %conv = sext i32 %sext to i64, !dbg !2757
  %arrayidx10 = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %idxprom, !dbg !2758
  %8 = load i64*, i64** %arrayidx10, align 8, !dbg !2758
  %idxprom11 = zext i32 %2 to i64, !dbg !2758
  %arrayidx12 = getelementptr inbounds i64, i64* %8, i64 %idxprom11, !dbg !2758
  store i64 %conv, i64* %arrayidx12, align 8, !dbg !2759
  br label %if.end23, !dbg !2760

if.else:                                          ; preds = %if.then2
  %reexamine13 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 2, !dbg !2761
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reexamine13, align 8, !dbg !2761
  %call14 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %9, i32 %2) #6, !dbg !2763
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2764
  %tobool15 = icmp eq %struct._IO_FILE* %10, null, !dbg !2764
  br i1 %tobool15, label %cleanup.cont218, label %land.lhs.true, !dbg !2766

land.lhs.true:                                    ; preds = %if.else
  %11 = load i32, i32* @dump_flags, align 4, !dbg !2767
  %and16 = and i32 %11, 8, !dbg !2768
  %tobool17 = icmp eq i32 %and16, 0, !dbg !2768
  br i1 %tobool17, label %cleanup.cont218, label %if.then18, !dbg !2769

if.then18:                                        ; preds = %land.lhs.true
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2770
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2772
  %13 = load i32, i32* @dump_flags, align 4, !dbg !2773
  tail call void @print_generic_expr(%struct._IO_FILE* %12, %union.tree_node* %var, i32 %13) #6, !dbg !2774
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2775
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2776
  br label %cleanup.cont218, !dbg !2777

if.end23:                                         ; preds = %if.then5, %if.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2778
  %tobool24 = icmp eq %struct._IO_FILE* %15, null, !dbg !2778
  br i1 %tobool24, label %if.end31, label %land.lhs.true25, !dbg !2780

land.lhs.true25:                                  ; preds = %if.end23
  %16 = load i32, i32* @dump_flags, align 4, !dbg !2781
  %and26 = and i32 %16, 8, !dbg !2782
  %tobool27 = icmp eq i32 %and26, 0, !dbg !2782
  br i1 %tobool27, label %if.end31, label %if.then28, !dbg !2783

if.then28:                                        ; preds = %land.lhs.true25
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2784
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2786
  %18 = load i32, i32* @dump_flags, align 4, !dbg !2787
  tail call void @print_generic_expr(%struct._IO_FILE* %17, %union.tree_node* %var, i32 %18) #6, !dbg !2788
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2789
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2790
  br label %if.end31, !dbg !2791

if.end31:                                         ; preds = %land.lhs.true25, %if.end23, %if.then28
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2792
  %20 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2792
  %21 = load %union.gimple_statement_d*, %union.gimple_statement_d** %20, align 8, !dbg !2792
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %21, metadata !2720, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 0, metadata !2721, metadata !DIExpression()), !dbg !2738
  %call33 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %21) #7, !dbg !2793
  switch i32 %call33, label %sw.default [
    i32 6, label %sw.bb
    i32 8, label %sw.bb83
    i32 7, label %sw.bb127
    i32 18, label %sw.bb134
    i32 16, label %for.cond.preheader
  ], !dbg !2794

for.cond.preheader:                               ; preds = %if.end31
  %arrayidx157 = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %idxprom, !dbg !2795
  %idxprom158 = zext i32 %2 to i64, !dbg !2795
  %arrayidx161 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom, !dbg !2795
  br label %for.cond, !dbg !2797

sw.bb:                                            ; preds = %if.end31
  %call34 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %21) #7, !dbg !2798
  %cmp35 = icmp eq i32 %call34, 66, !dbg !2799
  br i1 %cmp35, label %if.then37, label %if.else39, !dbg !2800

if.then37:                                        ; preds = %sw.bb
  %call38 = tail call fastcc zeroext i8 @plus_stmt_object_size(%struct.object_size_info* %osi, %union.tree_node* %var, %union.gimple_statement_d* %21) #7, !dbg !2801
  call void @llvm.dbg.value(metadata i8 %call38, metadata !2721, metadata !DIExpression()), !dbg !2738
  br label %sw.epilog, !dbg !2802

if.else39:                                        ; preds = %sw.bb
  %call40 = tail call zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d* %21) #6, !dbg !2803
  %tobool42 = icmp eq i8 %call40, 0, !dbg !2803
  br i1 %tobool42, label %lor.lhs.false, label %if.then46, !dbg !2804

lor.lhs.false:                                    ; preds = %if.else39
  %call43 = tail call zeroext i8 @gimple_assign_unary_nop_p(%union.gimple_statement_d* %21) #6, !dbg !2805
  %tobool45 = icmp eq i8 %call43, 0, !dbg !2805
  br i1 %tobool45, label %if.else80, label %if.then46, !dbg !2806

if.then46:                                        ; preds = %lor.lhs.false, %if.else39
  %call47 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %21) #7, !dbg !2807
  call void @llvm.dbg.value(metadata %union.tree_node* %call47, metadata !2722, metadata !DIExpression()), !dbg !2808
  %22 = getelementptr inbounds %union.tree_node, %union.tree_node* %call47, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2809
  %bf.load = load i64, i64* %22, align 8, !dbg !2809
  %bf.cast8 = and i64 %bf.load, 65535, !dbg !2811
  %cmp48 = icmp eq i64 %bf.cast8, 141, !dbg !2811
  br i1 %cmp48, label %land.lhs.true50, label %if.else68, !dbg !2812

land.lhs.true50:                                  ; preds = %if.then46
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call47, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2813
  %23 = bitcast %union.tree_node** %type to i64**, !dbg !2813
  %24 = load i64*, i64** %23, align 8, !dbg !2813
  %bf.load52 = load i64, i64* %24, align 8, !dbg !2813
  %bf.cast5410 = and i64 %bf.load52, 65535, !dbg !2813
  %cmp55 = icmp eq i64 %bf.cast5410, 10, !dbg !2813
  br i1 %cmp55, label %if.then66, label %lor.lhs.false57, !dbg !2813

lor.lhs.false57:                                  ; preds = %land.lhs.true50
  %cmp64 = icmp eq i64 %bf.cast5410, 12, !dbg !2813
  br i1 %cmp64, label %if.then66, label %if.else68, !dbg !2814

if.then66:                                        ; preds = %lor.lhs.false57, %land.lhs.true50
  %call67 = tail call fastcc zeroext i8 @merge_object_sizes(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* %call47, i64 0) #7, !dbg !2815
  call void @llvm.dbg.value(metadata i8 %call67, metadata !2721, metadata !DIExpression()), !dbg !2738
  br label %sw.epilog, !dbg !2816

if.else68:                                        ; preds = %lor.lhs.false57, %if.then46
  %cmp73 = icmp eq i64 %bf.cast8, 56, !dbg !2817
  br i1 %cmp73, label %if.then75, label %if.else77, !dbg !2819

if.then75:                                        ; preds = %if.else68
  %call76 = tail call fastcc zeroext i8 @cond_expr_object_size(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* %call47) #7, !dbg !2820
  call void @llvm.dbg.value(metadata i8 %call76, metadata !2721, metadata !DIExpression()), !dbg !2738
  br label %sw.epilog, !dbg !2821

if.else77:                                        ; preds = %if.else68
  tail call fastcc void @expr_object_size(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* %call47) #7, !dbg !2822
  br label %sw.epilog

if.else80:                                        ; preds = %lor.lhs.false
  tail call fastcc void @unknown_object_size(%struct.object_size_info* %osi, %union.tree_node* %var) #7, !dbg !2823
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end31
  %call84 = tail call fastcc %union.tree_node* @pass_through_call(%union.gimple_statement_d* %21) #7, !dbg !2824
  call void @llvm.dbg.value(metadata %union.tree_node* %call84, metadata !2728, metadata !DIExpression()), !dbg !2825
  %tobool85 = icmp eq %union.tree_node* %call84, null, !dbg !2826
  br i1 %tobool85, label %if.else125, label %if.then86, !dbg !2828

if.then86:                                        ; preds = %sw.bb83
  %25 = getelementptr inbounds %union.tree_node, %union.tree_node* %call84, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2829
  %bf.load88 = load i64, i64* %25, align 8, !dbg !2829
  %bf.cast904 = and i64 %bf.load88, 65535, !dbg !2832
  %cmp91 = icmp eq i64 %bf.cast904, 141, !dbg !2832
  br i1 %cmp91, label %land.lhs.true93, label %if.else113, !dbg !2833

land.lhs.true93:                                  ; preds = %if.then86
  %type95 = getelementptr inbounds %union.tree_node, %union.tree_node* %call84, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2834
  %26 = bitcast %union.tree_node** %type95 to i64**, !dbg !2834
  %27 = load i64*, i64** %26, align 8, !dbg !2834
  %bf.load97 = load i64, i64* %27, align 8, !dbg !2834
  %bf.cast996 = and i64 %bf.load97, 65535, !dbg !2834
  %cmp100 = icmp eq i64 %bf.cast996, 10, !dbg !2834
  br i1 %cmp100, label %if.then111, label %lor.lhs.false102, !dbg !2834

lor.lhs.false102:                                 ; preds = %land.lhs.true93
  %cmp109 = icmp eq i64 %bf.cast996, 12, !dbg !2834
  br i1 %cmp109, label %if.then111, label %if.else113, !dbg !2835

if.then111:                                       ; preds = %lor.lhs.false102, %land.lhs.true93
  %call112 = tail call fastcc zeroext i8 @merge_object_sizes(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* nonnull %call84, i64 0) #7, !dbg !2836
  call void @llvm.dbg.value(metadata i8 %call112, metadata !2721, metadata !DIExpression()), !dbg !2738
  br label %sw.epilog, !dbg !2837

if.else113:                                       ; preds = %lor.lhs.false102, %if.then86
  %cmp118 = icmp eq i64 %bf.cast904, 56, !dbg !2838
  br i1 %cmp118, label %if.then120, label %if.else122, !dbg !2840

if.then120:                                       ; preds = %if.else113
  %call121 = tail call fastcc zeroext i8 @cond_expr_object_size(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* nonnull %call84) #7, !dbg !2841
  call void @llvm.dbg.value(metadata i8 %call121, metadata !2721, metadata !DIExpression()), !dbg !2738
  br label %sw.epilog, !dbg !2842

if.else122:                                       ; preds = %if.else113
  tail call fastcc void @expr_object_size(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* nonnull %call84) #7, !dbg !2843
  br label %sw.epilog

if.else125:                                       ; preds = %sw.bb83
  tail call fastcc void @call_object_size(%struct.object_size_info* %osi, %union.tree_node* %var, %union.gimple_statement_d* %21) #7, !dbg !2844
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.end31
  %arrayidx129 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom, !dbg !2845
  %28 = load i64, i64* %arrayidx129, align 8, !dbg !2845
  %arrayidx131 = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %idxprom, !dbg !2846
  %29 = load i64*, i64** %arrayidx131, align 8, !dbg !2846
  %idxprom132 = zext i32 %2 to i64, !dbg !2846
  %arrayidx133 = getelementptr inbounds i64, i64* %29, i64 %idxprom132, !dbg !2846
  store i64 %28, i64* %arrayidx133, align 8, !dbg !2847
  br label %sw.epilog, !dbg !2848

sw.bb134:                                         ; preds = %if.end31
  %var136 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2849
  %30 = bitcast i32* %var136 to %union.tree_node**, !dbg !2849
  %31 = load %union.tree_node*, %union.tree_node** %30, align 8, !dbg !2849
  call void @llvm.dbg.value(metadata %union.tree_node* %31, metadata !2730, metadata !DIExpression()), !dbg !2850
  %32 = getelementptr inbounds %union.tree_node, %union.tree_node* %31, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2851
  %bf.load138 = load i64, i64* %32, align 8, !dbg !2851
  %bf.cast1403 = and i64 %bf.load138, 65535, !dbg !2853
  %cmp141 = icmp eq i64 %bf.cast1403, 34, !dbg !2853
  br i1 %cmp141, label %if.else148, label %land.lhs.true143, !dbg !2854

land.lhs.true143:                                 ; preds = %sw.bb134
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %31, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2855
  %33 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2855
  %tobool144 = icmp eq %union.tree_node* %33, null, !dbg !2855
  br i1 %tobool144, label %if.else148, label %if.then145, !dbg !2856

if.then145:                                       ; preds = %land.lhs.true143
  tail call fastcc void @expr_object_size(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* nonnull %33) #7, !dbg !2857
  br label %sw.epilog, !dbg !2857

if.else148:                                       ; preds = %land.lhs.true143, %sw.bb134
  tail call fastcc void @expr_object_size(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* %31) #7, !dbg !2858
  br label %sw.epilog

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %reexamine.7 = phi i8 [ %reexamine.9, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2859
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2860
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2732, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8 %reexamine.7, metadata !2721, metadata !DIExpression()), !dbg !2738
  %call151 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %21) #7, !dbg !2862
  %cmp152 = icmp ult i32 %i.0, %call151, !dbg !2863
  br i1 %cmp152, label %for.body, label %sw.epilog.loopexit, !dbg !2797

for.body:                                         ; preds = %for.cond
  %call155 = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %21, i32 %i.0) #7, !dbg !2864
  %def = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call155, i64 0, i32 1, !dbg !2865
  %34 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !2865
  call void @llvm.dbg.value(metadata %union.tree_node* %34, metadata !2734, metadata !DIExpression()), !dbg !2866
  %35 = load i64*, i64** %arrayidx157, align 8, !dbg !2867
  %arrayidx159 = getelementptr inbounds i64, i64* %35, i64 %idxprom158, !dbg !2867
  %36 = load i64, i64* %arrayidx159, align 8, !dbg !2867
  %37 = load i64, i64* %arrayidx161, align 8, !dbg !2868
  %cmp162 = icmp eq i64 %36, %37, !dbg !2869
  br i1 %cmp162, label %cleanup, label %if.end165, !dbg !2870

if.end165:                                        ; preds = %for.body
  %38 = getelementptr inbounds %union.tree_node, %union.tree_node* %34, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2871
  %bf.load167 = load i64, i64* %38, align 8, !dbg !2871
  %bf.cast1691 = and i64 %bf.load167, 65535, !dbg !2873
  %cmp170 = icmp eq i64 %bf.cast1691, 141, !dbg !2873
  br i1 %cmp170, label %if.then172, label %if.else177, !dbg !2874

if.then172:                                       ; preds = %if.end165
  %call173 = tail call fastcc zeroext i8 @merge_object_sizes(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* %34, i64 0) #7, !dbg !2875
  %or2 = or i8 %reexamine.7, %call173, !dbg !2876
  call void @llvm.dbg.value(metadata i8 %or2, metadata !2721, metadata !DIExpression()), !dbg !2738
  br label %cleanup, !dbg !2877

if.else177:                                       ; preds = %if.end165
  %39 = load i32, i32* %pass, align 8, !dbg !2878
  %cmp179 = icmp eq i32 %39, 0, !dbg !2880
  br i1 %cmp179, label %if.then181, label %cleanup, !dbg !2881

if.then181:                                       ; preds = %if.else177
  tail call fastcc void @expr_object_size(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* %34) #7, !dbg !2882
  br label %cleanup, !dbg !2882

cleanup:                                          ; preds = %if.then172, %if.then181, %if.else177, %for.body
  %reexamine.9 = phi i8 [ %reexamine.7, %for.body ], [ %or2, %if.then172 ], [ %reexamine.7, %if.then181 ], [ %reexamine.7, %if.else177 ], !dbg !2738
  %cleanup.dest.slot.0 = phi i1 [ false, %for.body ], [ true, %if.then172 ], [ true, %if.then181 ], [ true, %if.else177 ]
  call void @llvm.dbg.value(metadata i8 %reexamine.9, metadata !2721, metadata !DIExpression()), !dbg !2738
  br i1 %cleanup.dest.slot.0, label %for.inc, label %sw.epilog.loopexit

for.inc:                                          ; preds = %cleanup
  %inc = add i32 %i.0, 1, !dbg !2883
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2732, metadata !DIExpression()), !dbg !2861
  br label %for.cond, !dbg !2884, !llvm.loop !2885

sw.default:                                       ; preds = %if.end31
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 974, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2887
  br label %sw.epilog, !dbg !2888

sw.epilog.loopexit:                               ; preds = %cleanup, %for.cond
  %reexamine.11.ph = phi i8 [ %reexamine.7, %for.cond ], [ %reexamine.9, %cleanup ]
  br label %sw.epilog, !dbg !2889

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %if.then145, %if.else148, %if.else125, %if.then120, %if.else122, %if.then111, %if.then37, %if.then66, %if.else77, %if.then75, %if.else80, %sw.default, %sw.bb127
  %reexamine.11 = phi i8 [ 0, %sw.default ], [ 0, %sw.bb127 ], [ %call38, %if.then37 ], [ 0, %if.else80 ], [ %call67, %if.then66 ], [ %call76, %if.then75 ], [ 0, %if.else77 ], [ 0, %if.else125 ], [ %call112, %if.then111 ], [ %call121, %if.then120 ], [ 0, %if.else122 ], [ 0, %if.else148 ], [ 0, %if.then145 ], [ %reexamine.11.ph, %sw.epilog.loopexit ], !dbg !2738
  call void @llvm.dbg.value(metadata i8 %reexamine.11, metadata !2721, metadata !DIExpression()), !dbg !2738
  %tobool185 = icmp eq i8 %reexamine.11, 0, !dbg !2889
  br i1 %tobool185, label %if.then195, label %lor.lhs.false186, !dbg !2891

lor.lhs.false186:                                 ; preds = %sw.epilog
  %arrayidx188 = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %idxprom, !dbg !2892
  %40 = load i64*, i64** %arrayidx188, align 8, !dbg !2892
  %idxprom189 = zext i32 %2 to i64, !dbg !2892
  %arrayidx190 = getelementptr inbounds i64, i64* %40, i64 %idxprom189, !dbg !2892
  %41 = load i64, i64* %arrayidx190, align 8, !dbg !2892
  %arrayidx192 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom, !dbg !2893
  %42 = load i64, i64* %arrayidx192, align 8, !dbg !2893
  %cmp193 = icmp eq i64 %41, %42, !dbg !2894
  br i1 %cmp193, label %if.then195, label %if.else201, !dbg !2895

if.then195:                                       ; preds = %sw.epilog, %lor.lhs.false186
  %43 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !2896
  %call198 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %43, i32 %2) #6, !dbg !2898
  %reexamine199 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 2, !dbg !2899
  %44 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reexamine199, align 8, !dbg !2899
  %call200 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %44, i32 %2) #6, !dbg !2900
  br label %cleanup.cont218, !dbg !2901

if.else201:                                       ; preds = %lor.lhs.false186
  %reexamine202 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 2, !dbg !2902
  %45 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reexamine202, align 8, !dbg !2902
  %call203 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %45, i32 %2) #6, !dbg !2904
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2905
  %tobool204 = icmp eq %struct._IO_FILE* %46, null, !dbg !2905
  br i1 %tobool204, label %cleanup.cont218, label %land.lhs.true205, !dbg !2907

land.lhs.true205:                                 ; preds = %if.else201
  %47 = load i32, i32* @dump_flags, align 4, !dbg !2908
  %and206 = and i32 %47, 8, !dbg !2909
  %tobool207 = icmp eq i32 %and206, 0, !dbg !2909
  br i1 %tobool207, label %cleanup.cont218, label %if.then208, !dbg !2910

if.then208:                                       ; preds = %land.lhs.true205
  %call209 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2911
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2913
  %49 = load i32, i32* @dump_flags, align 4, !dbg !2914
  tail call void @print_generic_expr(%struct._IO_FILE* %48, %union.tree_node* %var, i32 %49) #6, !dbg !2915
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2916
  %call210 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2917
  br label %cleanup.cont218, !dbg !2918

cleanup.cont218:                                  ; preds = %land.lhs.true, %if.else, %land.lhs.true205, %if.else201, %entry, %if.then18, %if.then208, %if.then195
  ret void, !dbg !2919
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !2920 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2926, metadata !DIExpression()), !dbg !2927
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2928
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2928

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2928
  %0 = load i32, i32* %num, align 8, !dbg !2928
  br label %cond.end, !dbg !2928

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2928
  ret i32 %cond, !dbg !2928
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !2929 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2937, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !2938, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 0, metadata !2939, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2940, metadata !DIExpression()), !dbg !2941
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !2942
  %1 = load i64, i64* %0, align 8, !dbg !2942
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !2943
  store i64 %1, i64* %2, align 8, !dbg !2943
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !2944
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !2945
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !2946
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !2949
  br label %while.body, !dbg !2949

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !2950
  br i1 %tobool, label %if.then, label %if.end, !dbg !2951

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !2952
  br label %while.end, !dbg !2954

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !2955

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !2949, !llvm.loop !2956

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !2958

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !2958
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !2960
  %7 = load i32, i32* %indx9, align 8, !dbg !2960
  %cmp11 = icmp eq i32 %7, 0, !dbg !2961
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !2962

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !2963
  %8 = load i32, i32* %indx14, align 8, !dbg !2963
  %mul = shl i32 %8, 7, !dbg !2964
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2939, metadata !DIExpression()), !dbg !2941
  br label %if.end15, !dbg !2965

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !2939, metadata !DIExpression()), !dbg !2941
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !2966
  store i32 0, i32* %word_no, align 8, !dbg !2967
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !2968
  %9 = load i64, i64* %arrayidx, align 8, !dbg !2968
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2969
  store i64 %9, i64* %bits21, align 8, !dbg !2970
  %tobool23 = icmp eq i64 %9, 0, !dbg !2971
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !2971
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !2972
  call void @llvm.dbg.value(metadata i32 %add, metadata !2939, metadata !DIExpression()), !dbg !2941
  store i32 %add, i32* %bit_no, align 4, !dbg !2973
  ret void, !dbg !2974
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !2975 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2979, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2980, metadata !DIExpression()), !dbg !2984
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2985
  %0 = load i64, i64* %bits, align 8, !dbg !2985
  %tobool = icmp eq i64 %0, 0, !dbg !2986
  br i1 %tobool, label %if.end, label %next_bit, !dbg !2987

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !2988
  br label %next_bit, !dbg !2991

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !2981), !dbg !2992
  br label %while.cond, !dbg !2991

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !2993
  %and = and i64 %2, 1, !dbg !2994
  %tobool2 = icmp eq i64 %and, 0, !dbg !2995
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !2991

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !2996
  store i64 %shr, i64* %bits, align 8, !dbg !2996
  %3 = load i32, i32* %bit_no, align 4, !dbg !2998
  %add = add i32 %3, 1, !dbg !2998
  store i32 %add, i32* %bit_no, align 4, !dbg !2998
  %.pre = load i64, i64* %bits, align 8, !dbg !2993
  br label %while.cond, !dbg !2991, !llvm.loop !2999

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !3001
  %sub = add i32 %4, 63, !dbg !3002
  %div = and i32 %sub, -64, !dbg !3003
  store i32 %div, i32* %bit_no, align 4, !dbg !3004
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3005
  %5 = load i32, i32* %word_no, align 8, !dbg !3006
  %inc = add i32 %5, 1, !dbg !3006
  store i32 %inc, i32* %word_no, align 8, !dbg !3006
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3007
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3007
  br label %while.body6, !dbg !3008

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !3009

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !3010
  %cmp = icmp eq i32 %8, 2, !dbg !3011
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !3007
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !3009

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !2988
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !2988
  %10 = load i64, i64* %arrayidx, align 8, !dbg !2988
  store i64 %10, i64* %bits, align 8, !dbg !3012
  %tobool14 = icmp eq i64 %10, 0, !dbg !3013
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !3015

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !3016
  %add17 = add i32 %11, 64, !dbg !3016
  store i32 %add17, i32* %bit_no, align 4, !dbg !3016
  %12 = load i32, i32* %word_no, align 8, !dbg !3017
  %inc19 = add i32 %12, 1, !dbg !3017
  store i32 %inc19, i32* %word_no, align 8, !dbg !3017
  br label %while.cond7, !dbg !3009, !llvm.loop !3018

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !3007
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !3020
  %14 = load i64, i64* %13, align 8, !dbg !3020
  store i64 %14, i64* %6, align 8, !dbg !3021
  %tobool24 = icmp eq i64 %14, 0, !dbg !3022
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !3024

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !3024
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !3025
  %16 = load i32, i32* %indx, align 8, !dbg !3025
  %mul28 = shl i32 %16, 7, !dbg !3026
  store i32 %mul28, i32* %bit_no, align 4, !dbg !3027
  store i32 0, i32* %word_no, align 8, !dbg !3028
  br label %while.body6, !dbg !3008, !llvm.loop !3029

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !3031

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !3031

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !2984
  ret i8 %retval.0, !dbg !3031
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_for_plus_in_loops(%struct.object_size_info* %osi, %union.tree_node* %var) unnamed_addr #5 !dbg !3032 {
entry:
  call void @llvm.dbg.value(metadata %struct.object_size_info* %osi, metadata !3034, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3035, metadata !DIExpression()), !dbg !3041
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3042
  %0 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3042
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %0, align 8, !dbg !3042
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !3036, metadata !DIExpression()), !dbg !3041
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %1) #7, !dbg !3043
  %tobool = icmp eq i8 %call, 0, !dbg !3043
  br i1 %tobool, label %cleanup.cont24, label %land.lhs.true, !dbg !3044

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %1) #7, !dbg !3045
  %cmp = icmp eq i32 %call1, 66, !dbg !3046
  br i1 %cmp, label %if.then, label %cleanup.cont24, !dbg !3047

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %1) #7, !dbg !3048
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3037, metadata !DIExpression()), !dbg !3049
  %call4 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %1) #7, !dbg !3050
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !3040, metadata !DIExpression()), !dbg !3049
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3051
  %bf.load = load i64, i64* %2, align 8, !dbg !3051
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !3051
  %cmp5 = icmp eq i64 %bf.cast2, 23, !dbg !3051
  br i1 %cmp5, label %cond.end, label %cond.true, !dbg !3051

cond.true:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 1115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3051
  br label %cond.end, !dbg !3051

cond.end:                                         ; preds = %if.then, %cond.true
  %call7 = tail call i32 @integer_zerop(%union.tree_node* %call4) #6, !dbg !3052
  %tobool8 = icmp eq i32 %call7, 0, !dbg !3052
  br i1 %tobool8, label %if.end, label %cleanup, !dbg !3054

if.end:                                           ; preds = %cond.end
  %depths = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 5, !dbg !3055
  %3 = load i32*, i32** %depths, align 8, !dbg !3055
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3056
  %4 = bitcast %union.tree_node** %version to i32*, !dbg !3056
  %5 = load i32, i32* %4, align 8, !dbg !3056
  %idxprom = zext i32 %5 to i64, !dbg !3057
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom, !dbg !3057
  store i32 1, i32* %arrayidx, align 4, !dbg !3058
  %6 = load i32, i32* %4, align 8, !dbg !3059
  %tos = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 7, !dbg !3060
  %7 = load i32*, i32** %tos, align 8, !dbg !3061
  %incdec.ptr = getelementptr inbounds i32, i32* %7, i64 1, !dbg !3061
  store i32* %incdec.ptr, i32** %tos, align 8, !dbg !3061
  store i32 %6, i32* %7, align 4, !dbg !3062
  tail call fastcc void @check_for_plus_in_loops_1(%struct.object_size_info* %osi, %union.tree_node* %var, i32 2) #7, !dbg !3063
  %8 = load i32*, i32** %depths, align 8, !dbg !3064
  %9 = load i32, i32* %4, align 8, !dbg !3065
  %idxprom16 = zext i32 %9 to i64, !dbg !3066
  %arrayidx17 = getelementptr inbounds i32, i32* %8, i64 %idxprom16, !dbg !3066
  store i32 0, i32* %arrayidx17, align 4, !dbg !3067
  %10 = load i32*, i32** %tos, align 8, !dbg !3068
  %incdec.ptr19 = getelementptr inbounds i32, i32* %10, i64 -1, !dbg !3068
  store i32* %incdec.ptr19, i32** %tos, align 8, !dbg !3068
  br label %cleanup, !dbg !3069

cleanup:                                          ; preds = %cond.end, %if.end
  ret void

cleanup.cont24:                                   ; preds = %entry, %land.lhs.true
  ret void, !dbg !3070
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3071 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3075, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3076, metadata !DIExpression()), !dbg !3077
  br label %land.end, !dbg !3078

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3078
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3078
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3078
  ret %union.tree_node* %0, !dbg !3078
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3079 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3083, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3084, metadata !DIExpression()), !dbg !3085
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3086
  %0 = load i64, i64* %bits, align 8, !dbg !3087
  %shr = lshr i64 %0, 1, !dbg !3087
  store i64 %shr, i64* %bits, align 8, !dbg !3087
  %1 = load i32, i32* %bit_no, align 4, !dbg !3088
  %add = add i32 %1, 1, !dbg !3088
  store i32 %add, i32* %bit_no, align 4, !dbg !3088
  ret void, !dbg !3089
}

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @init_object_sizes() local_unnamed_addr #5 !dbg !3090 {
entry:
  %0 = load i64*, i64** getelementptr inbounds ([4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 0), align 16, !dbg !3093
  %tobool = icmp eq i64* %0, null, !dbg !3093
  br i1 %tobool, label %for.cond.preheader, label %cleanup.cont, !dbg !3095

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !3096

for.cond:                                         ; preds = %for.cond.preheader, %cond.end
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %cond.end ], !dbg !3098
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3092, metadata !DIExpression()), !dbg !3099
  %exitcond = icmp eq i64 %indvars.iv, 4, !dbg !3100
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3096

for.body:                                         ; preds = %for.cond
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3102
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 3, !dbg !3102
  %2 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3102
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %2, i64 0, i32 2, !dbg !3102
  %3 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !3102
  %tobool1 = icmp eq %struct.VEC_tree_gc* %3, null, !dbg !3102
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3102

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %3, i64 0, i32 0, !dbg !3102
  br label %cond.end, !dbg !3102

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !3102
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !3102
  %conv = zext i32 %call to i64, !dbg !3102
  %mul = shl nuw nsw i64 %conv, 3, !dbg !3102
  %call5 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3102
  %arrayidx = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %indvars.iv, !dbg !3104
  %4 = bitcast i64** %arrayidx to i8**, !dbg !3105
  store i8* %call5, i8** %4, align 8, !dbg !3105
  %call6 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3106
  %arrayidx8 = getelementptr inbounds [4 x %struct.bitmap_head_def*], [4 x %struct.bitmap_head_def*]* @computed, i64 0, i64 %indvars.iv, !dbg !3107
  store %struct.bitmap_head_def* %call6, %struct.bitmap_head_def** %arrayidx8, align 8, !dbg !3108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3109
  call void @llvm.dbg.value(metadata i32 undef, metadata !3092, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3099
  br label %for.cond, !dbg !3110, !llvm.loop !3111

for.end:                                          ; preds = %for.cond
  tail call fastcc void @init_offset_limit() #7, !dbg !3113
  br label %cleanup.cont, !dbg !3114

cleanup.cont:                                     ; preds = %entry, %for.end
  ret void, !dbg !3114
}

; Function Attrs: nounwind uwtable
define dso_local void @fini_object_sizes() local_unnamed_addr #5 !dbg !3115 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !3117, metadata !DIExpression()), !dbg !3118
  br label %for.cond, !dbg !3119

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3121
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3117, metadata !DIExpression()), !dbg !3118
  %exitcond = icmp eq i64 %indvars.iv, 4, !dbg !3122
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3124

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %indvars.iv, !dbg !3125
  %0 = bitcast i64** %arrayidx to i8**, !dbg !3125
  %1 = load i8*, i8** %0, align 8, !dbg !3125
  tail call void @free(i8* %1) #6, !dbg !3127
  %arrayidx2 = getelementptr inbounds [4 x %struct.bitmap_head_def*], [4 x %struct.bitmap_head_def*]* @computed, i64 0, i64 %indvars.iv, !dbg !3128
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx2, align 8, !dbg !3128
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %2) #6, !dbg !3128
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %arrayidx2, align 8, !dbg !3128
  store i64* null, i64** %arrayidx, align 8, !dbg !3129
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3130
  call void @llvm.dbg.value(metadata i32 undef, metadata !3117, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3118
  br label %for.cond, !dbg !3131, !llvm.loop !3132

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3134
}

; Function Attrs: nounwind uwtable
define internal i32 @compute_object_sizes() #5 !dbg !3135 {
entry:
  %i = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3162
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3162
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3162
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !3162
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3162
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i8*, !dbg !3163
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3164
  br label %for.cond, !dbg !3162

for.cond:                                         ; preds = %for.end, %entry
  %5 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre3, %for.end ], !dbg !3165
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.end ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3166
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3166
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3137, metadata !DIExpression()), !dbg !3167
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !3165
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3165
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %6, !dbg !3165
  br i1 %cmp, label %for.end78, label %for.body, !dbg !3162

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !3168
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3169
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #7, !dbg !3169
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !3169
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3169
  br label %for.cond3, !dbg !3170

for.cond3:                                        ; preds = %cleanup, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3138, metadata !DIExpression(DW_OP_deref)), !dbg !3163
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !3171
  %tobool = icmp eq i8 %call, 0, !dbg !3172
  br i1 %tobool, label %for.body4, label %for.end, !dbg !3173

for.body4:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3138, metadata !DIExpression(DW_OP_deref)), !dbg !3163
  %call6 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !3174
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call6, metadata !3153, metadata !DIExpression()), !dbg !3175
  %call7 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call6) #7, !dbg !3176
  %cmp8 = icmp eq i32 %call7, 8, !dbg !3178
  br i1 %cmp8, label %if.end, label %cleanup, !dbg !3179

if.end:                                           ; preds = %for.body4
  %call9 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call6) #7, !dbg !3180
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !3148, metadata !DIExpression()), !dbg !3175
  %tobool10 = icmp eq %union.tree_node* %call9, null, !dbg !3181
  br i1 %tobool10, label %cleanup, label %lor.lhs.false, !dbg !3183

lor.lhs.false:                                    ; preds = %if.end
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call9, i64 0, i32 0, i32 5, !dbg !3184
  %bf.load = load i32, i32* %built_in_class, align 8, !dbg !3184
  %bf.clear = and i32 %bf.load, 6144, !dbg !3184
  %cmp11 = icmp eq i32 %bf.clear, 6144, !dbg !3185
  br i1 %cmp11, label %lor.lhs.false12, label %cleanup, !dbg !3186

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %bf.clear15 = and i32 %bf.load, 2047, !dbg !3187
  %cmp16 = icmp eq i32 %bf.clear15, 528, !dbg !3188
  br i1 %cmp16, label %if.end18, label %cleanup, !dbg !3189

if.end18:                                         ; preds = %lor.lhs.false12
  call void @init_object_sizes() #7, !dbg !3190
  %call19 = call %union.tree_node* @fold_call_stmt(%union.gimple_statement_d* %call6, i8 zeroext 0) #6, !dbg !3191
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !3152, metadata !DIExpression()), !dbg !3175
  %tobool20 = icmp eq %union.tree_node* %call19, null, !dbg !3192
  br i1 %tobool20, label %if.then21, label %if.end55, !dbg !3193

if.then21:                                        ; preds = %if.end18
  %call22 = call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call6) #7, !dbg !3194
  %cmp23 = icmp eq i32 %call22, 2, !dbg !3195
  br i1 %cmp23, label %land.lhs.true, label %if.end51, !dbg !3196

land.lhs.true:                                    ; preds = %if.then21
  %call24 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call6, i32 0) #7, !dbg !3197
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call24, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3197
  %7 = bitcast %union.tree_node** %type to i64**, !dbg !3197
  %8 = load i64*, i64** %7, align 8, !dbg !3197
  %bf.load25 = load i64, i64* %8, align 8, !dbg !3197
  %bf.cast1 = and i64 %bf.load25, 65535, !dbg !3197
  %cmp27 = icmp eq i64 %bf.cast1, 10, !dbg !3197
  br i1 %cmp27, label %if.then37, label %lor.lhs.false28, !dbg !3197

lor.lhs.false28:                                  ; preds = %land.lhs.true
  %call29 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call6, i32 0) #7, !dbg !3197
  %type31 = getelementptr inbounds %union.tree_node, %union.tree_node* %call29, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3197
  %9 = bitcast %union.tree_node** %type31 to i64**, !dbg !3197
  %10 = load i64*, i64** %9, align 8, !dbg !3197
  %bf.load33 = load i64, i64* %10, align 8, !dbg !3197
  %bf.cast352 = and i64 %bf.load33, 65535, !dbg !3197
  %cmp36 = icmp eq i64 %bf.cast352, 12, !dbg !3197
  br i1 %cmp36, label %if.then37, label %if.end51, !dbg !3198

if.then37:                                        ; preds = %lor.lhs.false28, %land.lhs.true
  %call38 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call6, i32 1) #7, !dbg !3199
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !3154, metadata !DIExpression()), !dbg !3200
  %call39 = call i32 @host_integerp(%union.tree_node* %call38, i32 1) #6, !dbg !3201
  %tobool40 = icmp eq i32 %call39, 0, !dbg !3201
  br i1 %tobool40, label %if.end51, label %if.then41, !dbg !3202

if.then41:                                        ; preds = %if.then37
  %call42 = call i64 @tree_low_cst(%union.tree_node* %call38, i32 1) #6, !dbg !3203
  call void @llvm.dbg.value(metadata i64 %call42, metadata !3159, metadata !DIExpression()), !dbg !3204
  %cmp43 = icmp ult i64 %call42, 2, !dbg !3205
  br i1 %cmp43, label %if.then44, label %if.else, !dbg !3207

if.then44:                                        ; preds = %if.then41
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 41), align 8, !dbg !3208
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 15), align 8, !dbg !3208
  %call45 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %11, %union.tree_node* %12) #6, !dbg !3208
  call void @llvm.dbg.value(metadata %union.tree_node* %call45, metadata !3152, metadata !DIExpression()), !dbg !3175
  br label %if.end51, !dbg !3209

if.else:                                          ; preds = %if.then41
  %cmp46 = icmp ult i64 %call42, 4, !dbg !3210
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 17), align 8, !dbg !3212
  %spec.select = select i1 %cmp46, %union.tree_node* %13, %union.tree_node* null, !dbg !3213
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select, metadata !3152, metadata !DIExpression()), !dbg !3175
  br label %if.end51

if.end51:                                         ; preds = %if.then37, %if.else, %if.then44, %lor.lhs.false28, %if.then21
  %result.3 = phi %union.tree_node* [ null, %lor.lhs.false28 ], [ null, %if.then21 ], [ null, %if.then37 ], [ %call45, %if.then44 ], [ %spec.select, %if.else ], !dbg !3175
  call void @llvm.dbg.value(metadata %union.tree_node* %result.3, metadata !3152, metadata !DIExpression()), !dbg !3175
  %tobool52 = icmp eq %union.tree_node* %result.3, null, !dbg !3214
  br i1 %tobool52, label %cleanup, label %if.end55, !dbg !3216

if.end55:                                         ; preds = %if.end51, %if.end18
  %result.4 = phi %union.tree_node* [ %call19, %if.end18 ], [ %result.3, %if.end51 ], !dbg !3175
  call void @llvm.dbg.value(metadata %union.tree_node* %result.4, metadata !3152, metadata !DIExpression()), !dbg !3175
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3217
  %tobool56 = icmp eq %struct._IO_FILE* %14, null, !dbg !3217
  br i1 %tobool56, label %if.end61, label %land.lhs.true57, !dbg !3219

land.lhs.true57:                                  ; preds = %if.end55
  %15 = load i32, i32* @dump_flags, align 4, !dbg !3220
  %and = and i32 %15, 8, !dbg !3221
  %tobool58 = icmp eq i32 %and, 0, !dbg !3221
  br i1 %tobool58, label %if.end61, label %if.then59, !dbg !3222

if.then59:                                        ; preds = %land.lhs.true57
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !3223
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3225
  %17 = load i32, i32* @dump_flags, align 4, !dbg !3226
  call void @print_gimple_stmt(%struct._IO_FILE* %16, %union.gimple_statement_d* %call6, i32 0, i32 %17) #6, !dbg !3227
  br label %if.end61, !dbg !3228

if.end61:                                         ; preds = %land.lhs.true57, %if.end55, %if.then59
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3138, metadata !DIExpression(DW_OP_deref)), !dbg !3163
  %call62 = call zeroext i8 @update_call_from_tree(%struct.gimple_stmt_iterator* nonnull %i, %union.tree_node* %result.4) #6, !dbg !3229
  %tobool63 = icmp eq i8 %call62, 0, !dbg !3229
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !3231

if.then64:                                        ; preds = %if.end61
  call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 1221, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3232
  br label %if.end65, !dbg !3232

if.end65:                                         ; preds = %if.end61, %if.then64
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3233
  %tobool66 = icmp eq %struct._IO_FILE* %18, null, !dbg !3233
  br i1 %tobool66, label %cleanup, label %land.lhs.true67, !dbg !3235

land.lhs.true67:                                  ; preds = %if.end65
  %19 = load i32, i32* @dump_flags, align 4, !dbg !3236
  %and68 = and i32 %19, 8, !dbg !3237
  %tobool69 = icmp eq i32 %and68, 0, !dbg !3237
  br i1 %tobool69, label %cleanup, label %if.then70, !dbg !3238

if.then70:                                        ; preds = %land.lhs.true67
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !3239
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3241
  %21 = load i32, i32* @dump_flags, align 4, !dbg !3242
  call void @print_gimple_stmt(%struct._IO_FILE* %20, %union.gimple_statement_d* %call6, i32 0, i32 %21) #6, !dbg !3243
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3244
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3245
  br label %cleanup, !dbg !3246

cleanup:                                          ; preds = %land.lhs.true67, %if.end65, %if.end51, %lor.lhs.false12, %lor.lhs.false, %if.end, %for.body4, %if.then70
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3138, metadata !DIExpression(DW_OP_deref)), !dbg !3163
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %i) #7, !dbg !3247
  br label %for.cond3, !dbg !3248, !llvm.loop !3249

for.end:                                          ; preds = %for.cond3
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !3251
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3165
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3252
  %.pre3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3165
  br label %for.cond, !dbg !3165, !llvm.loop !3253

for.end78:                                        ; preds = %for.cond
  call void @fini_object_sizes() #7, !dbg !3255
  ret i32 0, !dbg !3256
}

declare dso_local i32 @host_integerp(%union.tree_node*, i32) local_unnamed_addr #2

declare dso_local i64 @tree_low_cst(%union.tree_node*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_base_address(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @size_int_kind(i64, i32) local_unnamed_addr #2

declare dso_local i32 @tree_int_cst_lt(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @compute_object_offset(%union.tree_node* %expr, %union.tree_node* %var) unnamed_addr #5 !dbg !3257 {
entry:
  br label %tailrecurse, !dbg !3267

tailrecurse:                                      ; preds = %sw.bb12, %entry
  %expr.tr = phi %union.tree_node* [ %expr, %entry ], [ %10, %sw.bb12 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr, metadata !3261, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3262, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i32 63, metadata !3263, metadata !DIExpression()), !dbg !3269
  %cmp = icmp eq %union.tree_node* %expr.tr, %var, !dbg !3270
  br i1 %cmp, label %if.then, label %if.end, !dbg !3272

if.then:                                          ; preds = %tailrecurse
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 17), align 8, !dbg !3273
  br label %cleanup, !dbg !3274

if.end:                                           ; preds = %tailrecurse
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3275
  %bf.load = load i64, i64* %1, align 8, !dbg !3275
  %2 = trunc i64 %bf.load to i16, !dbg !3275
  switch i16 %2, label %sw.default [
    i16 41, label %sw.bb
    i16 43, label %sw.bb12
    i16 116, label %sw.bb12
    i16 113, label %sw.bb12
    i16 118, label %sw.bb12
    i16 117, label %sw.bb12
    i16 44, label %sw.bb17
    i16 45, label %sw.bb26
  ], !dbg !3276

sw.bb:                                            ; preds = %if.end
  %expr.tr.lcssa11 = phi %union.tree_node* [ %expr.tr, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa11, metadata !3261, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa11, metadata !3261, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa11, metadata !3261, metadata !DIExpression()), !dbg !3269
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr.lcssa11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3277
  %3 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3277
  %call = tail call fastcc %union.tree_node* @compute_object_offset(%union.tree_node* %3, %union.tree_node* %var) #7, !dbg !3278
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3264, metadata !DIExpression()), !dbg !3269
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !3279
  %cmp2 = icmp eq %union.tree_node* %call, %4, !dbg !3281
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !3282

if.end4:                                          ; preds = %sw.bb
  %arrayidx7 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3283
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8, !dbg !3283
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3266, metadata !DIExpression()), !dbg !3269
  %offset = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3284
  %6 = bitcast %struct.rtx_def** %offset to %union.tree_node**, !dbg !3284
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8, !dbg !3284
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3284
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8, !dbg !3284
  %call9 = tail call i64 @tree_low_cst(%union.tree_node* %9, i32 1) #6, !dbg !3284
  %div = sdiv i64 %call9, 8, !dbg !3284
  %call10 = tail call %union.tree_node* @size_int_kind(i64 %div, i32 0) #6, !dbg !3284
  %call11 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 63, %union.tree_node* %7, %union.tree_node* %call10) #6, !dbg !3284
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !3265, metadata !DIExpression()), !dbg !3269
  br label %sw.epilog, !dbg !3285

sw.bb12:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %operands14 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3286
  %10 = load %union.tree_node*, %union.tree_node** %operands14, align 8, !dbg !3286
  br label %tailrecurse, !dbg !3267

sw.bb17:                                          ; preds = %if.end
  %expr.tr.lcssa12 = phi %union.tree_node* [ %expr.tr, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa12, metadata !3261, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa12, metadata !3261, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa12, metadata !3261, metadata !DIExpression()), !dbg !3269
  %operands19 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr.lcssa12, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3287
  %11 = load %union.tree_node*, %union.tree_node** %operands19, align 8, !dbg !3287
  %call21 = tail call fastcc %union.tree_node* @compute_object_offset(%union.tree_node* %11, %union.tree_node* %var) #7, !dbg !3288
  call void @llvm.dbg.value(metadata %union.tree_node* %call21, metadata !3264, metadata !DIExpression()), !dbg !3269
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !3289
  %cmp22 = icmp eq %union.tree_node* %call21, %12, !dbg !3291
  br i1 %cmp22, label %cleanup, label %if.end24, !dbg !3292

if.end24:                                         ; preds = %sw.bb17
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr.lcssa12, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3293
  %13 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !3293
  %14 = load %struct.tree_type*, %struct.tree_type** %13, align 8, !dbg !3293
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %14, i64 0, i32 3, !dbg !3293
  %15 = load %union.tree_node*, %union.tree_node** %size_unit, align 8, !dbg !3293
  call void @llvm.dbg.value(metadata %union.tree_node* %15, metadata !3265, metadata !DIExpression()), !dbg !3269
  br label %sw.epilog, !dbg !3294

sw.bb26:                                          ; preds = %if.end
  %expr.tr.lcssa13 = phi %union.tree_node* [ %expr.tr, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa13, metadata !3261, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa13, metadata !3261, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa13, metadata !3261, metadata !DIExpression()), !dbg !3269
  %operands28 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr.lcssa13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3295
  %16 = load %union.tree_node*, %union.tree_node** %operands28, align 8, !dbg !3295
  %call30 = tail call fastcc %union.tree_node* @compute_object_offset(%union.tree_node* %16, %union.tree_node* %var) #7, !dbg !3296
  call void @llvm.dbg.value(metadata %union.tree_node* %call30, metadata !3264, metadata !DIExpression()), !dbg !3269
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !3297
  %cmp31 = icmp eq %union.tree_node* %call30, %17, !dbg !3299
  br i1 %cmp31, label %cleanup, label %if.end33, !dbg !3300

if.end33:                                         ; preds = %sw.bb26
  %arrayidx36 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands28, i64 1, !dbg !3301
  %18 = load %union.tree_node*, %union.tree_node** %arrayidx36, align 8, !dbg !3301
  call void @llvm.dbg.value(metadata %union.tree_node* %18, metadata !3266, metadata !DIExpression()), !dbg !3269
  %19 = getelementptr inbounds %union.tree_node, %union.tree_node* %18, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3302
  %bf.load38 = load i64, i64* %19, align 8, !dbg !3302
  %bf.cast401 = and i64 %bf.load38, 65535, !dbg !3304
  %cmp41 = icmp eq i64 %bf.cast401, 23, !dbg !3304
  br i1 %cmp41, label %land.lhs.true, label %if.end48, !dbg !3305

land.lhs.true:                                    ; preds = %if.end33
  %call42 = tail call i32 @tree_int_cst_sgn(%union.tree_node* %18) #6, !dbg !3306
  %cmp43 = icmp slt i32 %call42, 0, !dbg !3307
  br i1 %cmp43, label %if.then44, label %if.end48, !dbg !3308

if.then44:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32 64, metadata !3263, metadata !DIExpression()), !dbg !3269
  %type46 = getelementptr inbounds %union.tree_node, %union.tree_node* %18, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3309
  %20 = load %union.tree_node*, %union.tree_node** %type46, align 8, !dbg !3309
  %call47 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 79, %union.tree_node* %20, %union.tree_node* %18) #6, !dbg !3309
  call void @llvm.dbg.value(metadata %union.tree_node* %call47, metadata !3266, metadata !DIExpression()), !dbg !3269
  br label %if.end48, !dbg !3311

if.end48:                                         ; preds = %if.then44, %land.lhs.true, %if.end33
  %code.0 = phi i32 [ 64, %if.then44 ], [ 63, %land.lhs.true ], [ 63, %if.end33 ], !dbg !3269
  %t.0 = phi %union.tree_node* [ %call47, %if.then44 ], [ %18, %land.lhs.true ], [ %18, %if.end33 ], !dbg !3312
  call void @llvm.dbg.value(metadata %union.tree_node* %t.0, metadata !3266, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3263, metadata !DIExpression()), !dbg !3269
  %21 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3313
  %call49 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %21, %union.tree_node* %t.0) #6, !dbg !3313
  call void @llvm.dbg.value(metadata %union.tree_node* %call49, metadata !3266, metadata !DIExpression()), !dbg !3269
  %type51 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr.lcssa13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3314
  %22 = bitcast %union.tree_node** %type51 to %struct.tree_type**, !dbg !3314
  %23 = load %struct.tree_type*, %struct.tree_type** %22, align 8, !dbg !3314
  %size_unit53 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %23, i64 0, i32 3, !dbg !3314
  %24 = load %union.tree_node*, %union.tree_node** %size_unit53, align 8, !dbg !3314
  %call54 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 65, %union.tree_node* %24, %union.tree_node* %call49) #6, !dbg !3314
  call void @llvm.dbg.value(metadata %union.tree_node* %call54, metadata !3265, metadata !DIExpression()), !dbg !3269
  br label %sw.epilog, !dbg !3315

sw.default:                                       ; preds = %if.end
  %25 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !3316
  br label %cleanup, !dbg !3317

sw.epilog:                                        ; preds = %if.end48, %if.end24, %if.end4
  %off.0 = phi %union.tree_node* [ %call54, %if.end48 ], [ %15, %if.end24 ], [ %call11, %if.end4 ], !dbg !3312
  %base.0 = phi %union.tree_node* [ %call30, %if.end48 ], [ %call21, %if.end24 ], [ %call, %if.end4 ], !dbg !3312
  %code.1 = phi i32 [ %code.0, %if.end48 ], [ 63, %if.end24 ], [ 63, %if.end4 ], !dbg !3269
  call void @llvm.dbg.value(metadata i32 %code.1, metadata !3263, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata %union.tree_node* %base.0, metadata !3264, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata %union.tree_node* %off.0, metadata !3265, metadata !DIExpression()), !dbg !3269
  %call55 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 %code.1, %union.tree_node* %base.0, %union.tree_node* %off.0) #6, !dbg !3318
  br label %cleanup, !dbg !3319

cleanup:                                          ; preds = %sw.bb26, %sw.bb17, %sw.bb, %sw.epilog, %sw.default, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ %25, %sw.default ], [ %call55, %sw.epilog ], [ %call, %sw.bb ], [ %call21, %sw.bb17 ], [ %call30, %sw.bb26 ], !dbg !3269
  ret %union.tree_node* %retval.0, !dbg !3320
}

declare dso_local %union.tree_node* @size_binop_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @tree_int_cst_sgn(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_build1_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3321 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3326, metadata !DIExpression()), !dbg !3327
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3328
  %bf.load = load i32, i32* %0, align 8, !dbg !3328
  %bf.clear = and i32 %bf.load, 255, !dbg !3328
  ret i32 %bf.clear, !dbg !3329
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3330 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3334, metadata !DIExpression()), !dbg !3336
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !3337
  call void @llvm.dbg.value(metadata i32 %call, metadata !3335, metadata !DIExpression()), !dbg !3336
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !3338
  %cmp = icmp eq i32 %call1, 3, !dbg !3340
  br i1 %cmp, label %if.then, label %if.end, !dbg !3341

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !3342
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3342
  %bf.load = load i64, i64* %0, align 8, !dbg !3342
  %1 = trunc i64 %bf.load to i32, !dbg !3342
  %bf.cast = and i32 %1, 65535, !dbg !3342
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3335, metadata !DIExpression()), !dbg !3336
  br label %if.end, !dbg !3343

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3336
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3335, metadata !DIExpression()), !dbg !3336
  ret i32 %code.0, !dbg !3344
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @plus_stmt_object_size(%struct.object_size_info* %osi, %union.tree_node* %var, %union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !3345 {
entry:
  call void @llvm.dbg.value(metadata %struct.object_size_info* %osi, metadata !3349, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3350, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3351, metadata !DIExpression()), !dbg !3363
  %object_size_type1 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 0, !dbg !3364
  %0 = load i32, i32* %object_size_type1, align 8, !dbg !3364
  call void @llvm.dbg.value(metadata i32 %0, metadata !3352, metadata !DIExpression()), !dbg !3363
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3365
  %1 = bitcast %union.tree_node** %version to i32*, !dbg !3365
  %2 = load i32, i32* %1, align 8, !dbg !3365
  call void @llvm.dbg.value(metadata i32 %2, metadata !3353, metadata !DIExpression()), !dbg !3363
  %call = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !3366
  %cmp = icmp eq i32 %call, 66, !dbg !3366
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3366

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 748, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3366
  br label %cond.end, !dbg !3366

cond.end:                                         ; preds = %entry, %cond.true
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !3367
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3355, metadata !DIExpression()), !dbg !3363
  %call3 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #7, !dbg !3368
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3356, metadata !DIExpression()), !dbg !3363
  %idxprom = sext i32 %0 to i64, !dbg !3369
  %arrayidx = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %idxprom, !dbg !3369
  %3 = load i64*, i64** %arrayidx, align 8, !dbg !3369
  %idxprom4 = zext i32 %2 to i64, !dbg !3369
  %arrayidx5 = getelementptr inbounds i64, i64* %3, i64 %idxprom4, !dbg !3369
  %4 = load i64, i64* %arrayidx5, align 8, !dbg !3369
  %arrayidx7 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom, !dbg !3371
  %5 = load i64, i64* %arrayidx7, align 8, !dbg !3371
  %cmp8 = icmp eq i64 %4, %5, !dbg !3372
  br i1 %cmp8, label %cleanup, label %if.end, !dbg !3373

if.end:                                           ; preds = %cond.end
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3374
  %bf.load = load i64, i64* %6, align 8, !dbg !3374
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3375
  %cmp9 = icmp eq i64 %bf.cast1, 23, !dbg !3375
  br i1 %cmp9, label %land.lhs.true, label %if.else54, !dbg !3376

land.lhs.true:                                    ; preds = %if.end
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3377
  %bf.load11 = load i64, i64* %7, align 8, !dbg !3377
  %bf.cast132 = and i64 %bf.load11, 65535, !dbg !3378
  %cmp14 = icmp eq i64 %bf.cast132, 141, !dbg !3378
  br i1 %cmp14, label %if.then20, label %lor.lhs.false, !dbg !3379

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp19 = icmp eq i64 %bf.cast132, 121, !dbg !3380
  br i1 %cmp19, label %if.then20, label %if.else54, !dbg !3381

if.then20:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %call21 = tail call i32 @host_integerp(%union.tree_node* %call3, i32 1) #6, !dbg !3382
  %tobool = icmp eq i32 %call21, 0, !dbg !3382
  br i1 %tobool, label %if.then22, label %if.else, !dbg !3383

if.then22:                                        ; preds = %if.then20
  call void @llvm.dbg.value(metadata i64 %5, metadata !3354, metadata !DIExpression()), !dbg !3363
  br label %if.end57, !dbg !3384

if.else:                                          ; preds = %if.then20
  %bf.load26 = load i64, i64* %7, align 8, !dbg !3385
  %bf.cast284 = and i64 %bf.load26, 65535, !dbg !3386
  %cmp29 = icmp eq i64 %bf.cast284, 141, !dbg !3386
  %call31 = tail call i64 @tree_low_cst(%union.tree_node* %call3, i32 1) #6, !dbg !3387
  br i1 %cmp29, label %if.then30, label %if.else33, !dbg !3388

if.then30:                                        ; preds = %if.else
  %call32 = tail call fastcc zeroext i8 @merge_object_sizes(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* %call2, i64 %call31) #7, !dbg !3389
  br label %cleanup, !dbg !3390

if.else33:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i64 %call31, metadata !3357, metadata !DIExpression()), !dbg !3391
  %call35 = tail call fastcc i64 @addr_object_size(%struct.object_size_info* %osi, %union.tree_node* %call2, i32 %0) #7, !dbg !3392
  call void @llvm.dbg.value(metadata i64 %call35, metadata !3354, metadata !DIExpression()), !dbg !3363
  %cmp38 = icmp eq i64 %call35, %5, !dbg !3393
  br i1 %cmp38, label %if.end57, label %if.else40, !dbg !3395

if.else40:                                        ; preds = %if.else33
  %8 = load i64, i64* @offset_limit, align 8, !dbg !3396
  %cmp41 = icmp ugt i64 %call31, %8, !dbg !3398
  br i1 %cmp41, label %if.then42, label %if.else45, !dbg !3399

if.then42:                                        ; preds = %if.else40
  call void @llvm.dbg.value(metadata i64 %5, metadata !3354, metadata !DIExpression()), !dbg !3363
  br label %if.end57, !dbg !3400

if.else45:                                        ; preds = %if.else40
  %9 = tail call i64 @llvm.usub.sat.i64(i64 %call35, i64 %call31), !dbg !3401
  br label %if.end57, !dbg !3401

if.else54:                                        ; preds = %lor.lhs.false, %if.end
  call void @llvm.dbg.value(metadata i64 %5, metadata !3354, metadata !DIExpression()), !dbg !3363
  br label %if.end57

if.end57:                                         ; preds = %if.then22, %if.else33, %if.else45, %if.then42, %if.else54
  %bytes.4 = phi i64 [ %5, %if.else54 ], [ %5, %if.then22 ], [ %5, %if.else33 ], [ %5, %if.then42 ], [ %9, %if.else45 ], !dbg !3402
  call void @llvm.dbg.value(metadata i64 %bytes.4, metadata !3354, metadata !DIExpression()), !dbg !3363
  %and = and i32 %0, 2, !dbg !3403
  %cmp58 = icmp eq i32 %and, 0, !dbg !3405
  %10 = load i64*, i64** %arrayidx, align 8, !dbg !3406
  %arrayidx63 = getelementptr inbounds i64, i64* %10, i64 %idxprom4, !dbg !3406
  %11 = load i64, i64* %arrayidx63, align 8, !dbg !3406
  br i1 %cmp58, label %if.then59, label %if.else71, !dbg !3407

if.then59:                                        ; preds = %if.end57
  %cmp64 = icmp ult i64 %11, %bytes.4, !dbg !3408
  br i1 %cmp64, label %if.then65, label %cleanup, !dbg !3411

if.then65:                                        ; preds = %if.then59
  store i64 %bytes.4, i64* %arrayidx63, align 8, !dbg !3412
  br label %cleanup, !dbg !3413

if.else71:                                        ; preds = %if.end57
  %cmp76 = icmp ugt i64 %11, %bytes.4, !dbg !3414
  br i1 %cmp76, label %if.then77, label %cleanup, !dbg !3417

if.then77:                                        ; preds = %if.else71
  store i64 %bytes.4, i64* %arrayidx63, align 8, !dbg !3418
  br label %cleanup, !dbg !3419

cleanup:                                          ; preds = %if.then65, %if.then59, %if.then77, %if.else71, %cond.end, %if.then30
  %retval.0 = phi i8 [ %call32, %if.then30 ], [ 0, %cond.end ], [ 0, %if.else71 ], [ 0, %if.then77 ], [ 0, %if.then59 ], [ 0, %if.then65 ], !dbg !3363
  ret i8 %retval.0, !dbg !3420
}

declare dso_local zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local zeroext i8 @gimple_assign_unary_nop_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3421 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3425, metadata !DIExpression()), !dbg !3426
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3427
  ret %union.tree_node* %call, !dbg !3428
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @merge_object_sizes(%struct.object_size_info* %osi, %union.tree_node* %dest, %union.tree_node* %orig, i64 %offset) unnamed_addr #5 !dbg !3429 {
entry:
  call void @llvm.dbg.value(metadata %struct.object_size_info* %osi, metadata !3433, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata %union.tree_node* %dest, metadata !3434, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata %union.tree_node* %orig, metadata !3435, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %offset, metadata !3436, metadata !DIExpression()), !dbg !3440
  %object_size_type1 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 0, !dbg !3441
  %0 = load i32, i32* %object_size_type1, align 8, !dbg !3441
  call void @llvm.dbg.value(metadata i32 %0, metadata !3437, metadata !DIExpression()), !dbg !3440
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %dest, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3442
  %1 = bitcast %union.tree_node** %version to i32*, !dbg !3442
  %2 = load i32, i32* %1, align 8, !dbg !3442
  call void @llvm.dbg.value(metadata i32 %2, metadata !3438, metadata !DIExpression()), !dbg !3440
  %idxprom = sext i32 %0 to i64, !dbg !3443
  %arrayidx = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %idxprom, !dbg !3443
  %3 = load i64*, i64** %arrayidx, align 8, !dbg !3443
  %idxprom2 = zext i32 %2 to i64, !dbg !3443
  %arrayidx3 = getelementptr inbounds i64, i64* %3, i64 %idxprom2, !dbg !3443
  %4 = load i64, i64* %arrayidx3, align 8, !dbg !3443
  %arrayidx5 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom, !dbg !3445
  %5 = load i64, i64* %arrayidx5, align 8, !dbg !3445
  %cmp = icmp eq i64 %4, %5, !dbg !3446
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3447

if.end:                                           ; preds = %entry
  %6 = load i64, i64* @offset_limit, align 8, !dbg !3448
  %cmp6 = icmp ugt i64 %6, %offset, !dbg !3450
  br i1 %cmp6, label %if.end14, label %if.then7, !dbg !3451

if.then7:                                         ; preds = %if.end
  store i64 %5, i64* %arrayidx3, align 8, !dbg !3452
  br label %cleanup, !dbg !3454

if.end14:                                         ; preds = %if.end
  %pass = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 3, !dbg !3455
  %7 = load i32, i32* %pass, align 8, !dbg !3455
  %cmp15 = icmp eq i32 %7, 0, !dbg !3457
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3458

if.then16:                                        ; preds = %if.end14
  tail call fastcc void @collect_object_sizes_for(%struct.object_size_info* %osi, %union.tree_node* %orig) #7, !dbg !3459
  %.pre = load i64*, i64** %arrayidx, align 8, !dbg !3460
  br label %if.end17, !dbg !3459

if.end17:                                         ; preds = %if.then16, %if.end14
  %8 = phi i64* [ %.pre, %if.then16 ], [ %3, %if.end14 ], !dbg !3460
  %version21 = getelementptr inbounds %union.tree_node, %union.tree_node* %orig, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3461
  %9 = bitcast %union.tree_node** %version21 to i32*, !dbg !3461
  %10 = load i32, i32* %9, align 8, !dbg !3461
  %idxprom22 = zext i32 %10 to i64, !dbg !3460
  %arrayidx23 = getelementptr inbounds i64, i64* %8, i64 %idxprom22, !dbg !3460
  %11 = load i64, i64* %arrayidx23, align 8, !dbg !3460
  call void @llvm.dbg.value(metadata i64 %11, metadata !3439, metadata !DIExpression()), !dbg !3440
  %cmp26 = icmp eq i64 %11, %5, !dbg !3462
  br i1 %cmp26, label %if.end29, label %if.then27, !dbg !3464

if.then27:                                        ; preds = %if.end17
  %12 = tail call i64 @llvm.usub.sat.i64(i64 %11, i64 %offset), !dbg !3465
  br label %if.end29, !dbg !3465

if.end29:                                         ; preds = %if.end17, %if.then27
  %orig_bytes.0 = phi i64 [ %5, %if.end17 ], [ %12, %if.then27 ], !dbg !3440
  call void @llvm.dbg.value(metadata i64 %orig_bytes.0, metadata !3439, metadata !DIExpression()), !dbg !3440
  %and = and i32 %0, 2, !dbg !3466
  %cmp30 = icmp eq i32 %and, 0, !dbg !3468
  %arrayidx35 = getelementptr inbounds i64, i64* %8, i64 %idxprom2, !dbg !3469
  %13 = load i64, i64* %arrayidx35, align 8, !dbg !3469
  br i1 %cmp30, label %if.then31, label %if.else, !dbg !3470

if.then31:                                        ; preds = %if.end29
  %cmp36 = icmp ult i64 %13, %orig_bytes.0, !dbg !3471
  br i1 %cmp36, label %if.then37, label %if.end55, !dbg !3474

if.then37:                                        ; preds = %if.then31
  store i64 %orig_bytes.0, i64* %arrayidx35, align 8, !dbg !3475
  %changed = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 4, !dbg !3477
  store i8 1, i8* %changed, align 4, !dbg !3478
  br label %if.end55, !dbg !3479

if.else:                                          ; preds = %if.end29
  %cmp47 = icmp ugt i64 %13, %orig_bytes.0, !dbg !3480
  br i1 %cmp47, label %if.then48, label %if.end55, !dbg !3483

if.then48:                                        ; preds = %if.else
  store i64 %orig_bytes.0, i64* %arrayidx35, align 8, !dbg !3484
  %changed53 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 4, !dbg !3486
  store i8 1, i8* %changed53, align 4, !dbg !3487
  br label %if.end55, !dbg !3488

if.end55:                                         ; preds = %if.else, %if.then48, %if.then31, %if.then37
  %reexamine = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 2, !dbg !3489
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reexamine, align 8, !dbg !3489
  %15 = load i32, i32* %9, align 8, !dbg !3490
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %14, i32 %15) #6, !dbg !3491
  %conv = trunc i32 %call to i8, !dbg !3491
  br label %cleanup, !dbg !3492

cleanup:                                          ; preds = %entry, %if.end55, %if.then7
  %retval.0 = phi i8 [ 0, %if.then7 ], [ %conv, %if.end55 ], [ 0, %entry ], !dbg !3440
  ret i8 %retval.0, !dbg !3493
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cond_expr_object_size(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* %value) unnamed_addr #5 !dbg !3494 {
entry:
  call void @llvm.dbg.value(metadata %struct.object_size_info* %osi, metadata !3498, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3499, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata %union.tree_node* %value, metadata !3500, metadata !DIExpression()), !dbg !3506
  %object_size_type1 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 0, !dbg !3507
  %0 = load i32, i32* %object_size_type1, align 8, !dbg !3507
  call void @llvm.dbg.value(metadata i32 %0, metadata !3503, metadata !DIExpression()), !dbg !3506
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3508
  %1 = bitcast %union.tree_node** %version to i32*, !dbg !3508
  %2 = load i32, i32* %1, align 8, !dbg !3508
  call void @llvm.dbg.value(metadata i32 %2, metadata !3504, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i8 0, metadata !3505, metadata !DIExpression()), !dbg !3506
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %value, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3509
  %bf.load = load i64, i64* %3, align 8, !dbg !3509
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3509
  %cmp = icmp eq i64 %bf.cast1, 56, !dbg !3509
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3509

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 810, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3509
  br label %cond.end, !dbg !3509

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = sext i32 %0 to i64, !dbg !3510
  %arrayidx = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %idxprom, !dbg !3510
  %4 = load i64*, i64** %arrayidx, align 8, !dbg !3510
  %idxprom2 = zext i32 %2 to i64, !dbg !3510
  %arrayidx3 = getelementptr inbounds i64, i64* %4, i64 %idxprom2, !dbg !3510
  %5 = load i64, i64* %arrayidx3, align 8, !dbg !3510
  %arrayidx5 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom, !dbg !3512
  %6 = load i64, i64* %arrayidx5, align 8, !dbg !3512
  %cmp6 = icmp eq i64 %5, %6, !dbg !3513
  br i1 %cmp6, label %cleanup, label %if.end, !dbg !3514

if.end:                                           ; preds = %cond.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %value, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3515
  %arrayidx7 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3515
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8, !dbg !3515
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !3501, metadata !DIExpression()), !dbg !3506
  %arrayidx10 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3516
  %8 = load %union.tree_node*, %union.tree_node** %arrayidx10, align 8, !dbg !3516
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !3502, metadata !DIExpression()), !dbg !3506
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3517
  %bf.load12 = load i64, i64* %9, align 8, !dbg !3517
  %bf.cast142 = and i64 %bf.load12, 65535, !dbg !3519
  %cmp15 = icmp eq i64 %bf.cast142, 141, !dbg !3519
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !3520

if.then16:                                        ; preds = %if.end
  %call = tail call fastcc zeroext i8 @merge_object_sizes(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* %7, i64 0) #7, !dbg !3521
  call void @llvm.dbg.value(metadata i8 %call, metadata !3505, metadata !DIExpression()), !dbg !3506
  br label %if.end19, !dbg !3522

if.else:                                          ; preds = %if.end
  tail call fastcc void @expr_object_size(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* %7) #7, !dbg !3523
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then16
  %reexamine.0 = phi i8 [ %call, %if.then16 ], [ 0, %if.else ], !dbg !3506
  call void @llvm.dbg.value(metadata i8 %reexamine.0, metadata !3505, metadata !DIExpression()), !dbg !3506
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3524
  %bf.load21 = load i64, i64* %10, align 8, !dbg !3524
  %bf.cast233 = and i64 %bf.load21, 65535, !dbg !3526
  %cmp24 = icmp eq i64 %bf.cast233, 141, !dbg !3526
  br i1 %cmp24, label %if.then26, label %if.else32, !dbg !3527

if.then26:                                        ; preds = %if.end19
  %call27 = tail call fastcc zeroext i8 @merge_object_sizes(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* %8, i64 0) #7, !dbg !3528
  %or304 = or i8 %reexamine.0, %call27, !dbg !3529
  call void @llvm.dbg.value(metadata i8 %or304, metadata !3505, metadata !DIExpression()), !dbg !3506
  br label %cleanup, !dbg !3530

if.else32:                                        ; preds = %if.end19
  tail call fastcc void @expr_object_size(%struct.object_size_info* %osi, %union.tree_node* %var, %union.tree_node* %8) #7, !dbg !3531
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.else32, %cond.end
  %retval.0 = phi i8 [ 0, %cond.end ], [ %or304, %if.then26 ], [ %reexamine.0, %if.else32 ], !dbg !3506
  ret i8 %retval.0, !dbg !3532
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expr_object_size(%struct.object_size_info* %osi, %union.tree_node* %ptr, %union.tree_node* %value) unnamed_addr #5 !dbg !3533 {
entry:
  call void @llvm.dbg.value(metadata %struct.object_size_info* %osi, metadata !3537, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr, metadata !3538, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata %union.tree_node* %value, metadata !3539, metadata !DIExpression()), !dbg !3543
  %object_size_type1 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 0, !dbg !3544
  %0 = load i32, i32* %object_size_type1, align 8, !dbg !3544
  call void @llvm.dbg.value(metadata i32 %0, metadata !3540, metadata !DIExpression()), !dbg !3543
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3545
  %1 = bitcast %union.tree_node** %version to i32*, !dbg !3545
  %2 = load i32, i32* %1, align 8, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %2, metadata !3541, metadata !DIExpression()), !dbg !3543
  %idxprom = sext i32 %0 to i64, !dbg !3546
  %arrayidx = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %idxprom, !dbg !3546
  %3 = load i64*, i64** %arrayidx, align 8, !dbg !3546
  %idxprom2 = zext i32 %2 to i64, !dbg !3546
  %arrayidx3 = getelementptr inbounds i64, i64* %3, i64 %idxprom2, !dbg !3546
  %4 = load i64, i64* %arrayidx3, align 8, !dbg !3546
  %arrayidx5 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom, !dbg !3546
  %5 = load i64, i64* %arrayidx5, align 8, !dbg !3546
  %cmp = icmp eq i64 %4, %5, !dbg !3546
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3546

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 603, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3546
  br label %cond.end, !dbg !3546

cond.end:                                         ; preds = %entry, %cond.true
  %pass = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 3, !dbg !3547
  %6 = load i32, i32* %pass, align 8, !dbg !3547
  %cmp6 = icmp eq i32 %6, 0, !dbg !3547
  br i1 %cmp6, label %cond.end9, label %cond.true7, !dbg !3547

cond.true7:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 604, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3547
  br label %cond.end9, !dbg !3547

cond.end9:                                        ; preds = %cond.end, %cond.true7
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %value, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3548
  %bf.load = load i64, i64* %7, align 8, !dbg !3548
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3550
  %cmp11 = icmp eq i64 %bf.cast1, 150, !dbg !3550
  br i1 %cmp11, label %if.then, label %if.end, !dbg !3551

if.then:                                          ; preds = %cond.end9
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %value, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3552
  %8 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3552
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !3539, metadata !DIExpression()), !dbg !3543
  %.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3543
  %bf.load14.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !3553
  br label %if.end, !dbg !3554

if.end:                                           ; preds = %if.then, %cond.end9
  %bf.load14 = phi i64 [ %bf.load14.pre, %if.then ], [ %bf.load, %cond.end9 ], !dbg !3553
  %value.addr.0 = phi %union.tree_node* [ %8, %if.then ], [ %value, %cond.end9 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %value.addr.0, metadata !3539, metadata !DIExpression()), !dbg !3543
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %value.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3553
  %bf.cast162 = and i64 %bf.load14, 65535, !dbg !3553
  %cmp17 = icmp eq i64 %bf.cast162, 141, !dbg !3553
  br i1 %cmp17, label %lor.lhs.false, label %cond.end33, !dbg !3553

lor.lhs.false:                                    ; preds = %if.end
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %value.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3553
  %10 = bitcast %union.tree_node** %type to i64**, !dbg !3553
  %11 = load i64*, i64** %10, align 8, !dbg !3553
  %bf.load19 = load i64, i64* %11, align 8, !dbg !3553
  %bf.cast213 = and i64 %bf.load19, 65535, !dbg !3553
  %cmp22 = icmp eq i64 %bf.cast213, 10, !dbg !3553
  br i1 %cmp22, label %cond.true31, label %lor.lhs.false23, !dbg !3553

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %cmp30 = icmp eq i64 %bf.cast213, 12, !dbg !3553
  br i1 %cmp30, label %cond.true31, label %cond.end33, !dbg !3553

cond.true31:                                      ; preds = %lor.lhs.false23, %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 611, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3553
  %bf.load36.pre = load i64, i64* %9, align 8, !dbg !3555
  br label %cond.end33, !dbg !3553

cond.end33:                                       ; preds = %if.end, %lor.lhs.false23, %cond.true31
  %bf.load36 = phi i64 [ %bf.load14, %if.end ], [ %bf.load14, %lor.lhs.false23 ], [ %bf.load36.pre, %cond.true31 ], !dbg !3555
  %bf.cast385 = and i64 %bf.load36, 65535, !dbg !3557
  %cmp39 = icmp eq i64 %bf.cast385, 121, !dbg !3557
  br i1 %cmp39, label %if.then40, label %if.else, !dbg !3558

if.then40:                                        ; preds = %cond.end33
  %call = tail call fastcc i64 @addr_object_size(%struct.object_size_info* %osi, %union.tree_node* %value.addr.0, i32 %0) #7, !dbg !3559
  call void @llvm.dbg.value(metadata i64 %call, metadata !3542, metadata !DIExpression()), !dbg !3543
  br label %if.end43, !dbg !3560

if.else:                                          ; preds = %cond.end33
  call void @llvm.dbg.value(metadata i64 %5, metadata !3542, metadata !DIExpression()), !dbg !3543
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then40
  %bytes.0 = phi i64 [ %call, %if.then40 ], [ %5, %if.else ], !dbg !3561
  call void @llvm.dbg.value(metadata i64 %bytes.0, metadata !3542, metadata !DIExpression()), !dbg !3543
  %and = and i32 %0, 2, !dbg !3562
  %cmp44 = icmp eq i32 %and, 0, !dbg !3564
  %12 = load i64*, i64** %arrayidx, align 8, !dbg !3565
  %arrayidx49 = getelementptr inbounds i64, i64* %12, i64 %idxprom2, !dbg !3565
  %13 = load i64, i64* %arrayidx49, align 8, !dbg !3565
  br i1 %cmp44, label %if.then45, label %if.else57, !dbg !3566

if.then45:                                        ; preds = %if.end43
  %cmp50 = icmp ult i64 %13, %bytes.0, !dbg !3567
  br i1 %cmp50, label %if.then51, label %if.end69, !dbg !3570

if.then51:                                        ; preds = %if.then45
  store i64 %bytes.0, i64* %arrayidx49, align 8, !dbg !3571
  br label %if.end69, !dbg !3572

if.else57:                                        ; preds = %if.end43
  %cmp62 = icmp ugt i64 %13, %bytes.0, !dbg !3573
  br i1 %cmp62, label %if.then63, label %if.end69, !dbg !3576

if.then63:                                        ; preds = %if.else57
  store i64 %bytes.0, i64* %arrayidx49, align 8, !dbg !3577
  br label %if.end69, !dbg !3578

if.end69:                                         ; preds = %if.else57, %if.then63, %if.then45, %if.then51
  ret void, !dbg !3579
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unknown_object_size(%struct.object_size_info* %osi, %union.tree_node* %ptr) unnamed_addr #5 !dbg !3580 {
entry:
  call void @llvm.dbg.value(metadata %struct.object_size_info* %osi, metadata !3582, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr, metadata !3583, metadata !DIExpression()), !dbg !3587
  %object_size_type1 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 0, !dbg !3588
  %0 = load i32, i32* %object_size_type1, align 8, !dbg !3588
  call void @llvm.dbg.value(metadata i32 %0, metadata !3584, metadata !DIExpression()), !dbg !3587
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3589
  %1 = bitcast %union.tree_node** %version to i32*, !dbg !3589
  %2 = load i32, i32* %1, align 8, !dbg !3589
  call void @llvm.dbg.value(metadata i32 %2, metadata !3585, metadata !DIExpression()), !dbg !3587
  %idxprom = sext i32 %0 to i64, !dbg !3590
  %arrayidx = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %idxprom, !dbg !3590
  %3 = load i64*, i64** %arrayidx, align 8, !dbg !3590
  %idxprom2 = zext i32 %2 to i64, !dbg !3590
  %arrayidx3 = getelementptr inbounds i64, i64* %3, i64 %idxprom2, !dbg !3590
  %4 = load i64, i64* %arrayidx3, align 8, !dbg !3590
  %arrayidx5 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom, !dbg !3590
  %5 = load i64, i64* %arrayidx5, align 8, !dbg !3590
  %cmp = icmp eq i64 %4, %5, !dbg !3590
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3590

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 671, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3590
  br label %cond.end, !dbg !3590

cond.end:                                         ; preds = %entry, %cond.true
  %pass = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 3, !dbg !3591
  %6 = load i32, i32* %pass, align 8, !dbg !3591
  %cmp6 = icmp eq i32 %6, 0, !dbg !3591
  br i1 %cmp6, label %cond.end9, label %cond.true7, !dbg !3591

cond.true7:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 672, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3591
  br label %cond.end9, !dbg !3591

cond.end9:                                        ; preds = %cond.end, %cond.true7
  call void @llvm.dbg.value(metadata i64 %5, metadata !3586, metadata !DIExpression()), !dbg !3587
  %and = and i32 %0, 2, !dbg !3592
  %cmp13 = icmp eq i32 %and, 0, !dbg !3594
  %7 = load i64*, i64** %arrayidx, align 8, !dbg !3595
  %arrayidx17 = getelementptr inbounds i64, i64* %7, i64 %idxprom2, !dbg !3595
  %8 = load i64, i64* %arrayidx17, align 8, !dbg !3595
  br i1 %cmp13, label %if.then, label %if.else, !dbg !3596

if.then:                                          ; preds = %cond.end9
  %cmp18 = icmp ult i64 %8, %5, !dbg !3597
  br i1 %cmp18, label %if.then19, label %if.end35, !dbg !3600

if.then19:                                        ; preds = %if.then
  store i64 %5, i64* %arrayidx17, align 8, !dbg !3601
  br label %if.end35, !dbg !3602

if.else:                                          ; preds = %cond.end9
  %cmp28 = icmp ugt i64 %8, %5, !dbg !3603
  br i1 %cmp28, label %if.then29, label %if.end35, !dbg !3606

if.then29:                                        ; preds = %if.else
  store i64 %5, i64* %arrayidx17, align 8, !dbg !3607
  br label %if.end35, !dbg !3608

if.end35:                                         ; preds = %if.else, %if.then29, %if.then, %if.then19
  ret void, !dbg !3609
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @pass_through_call(%union.gimple_statement_d* %call) unnamed_addr #5 !dbg !3610 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3612, metadata !DIExpression()), !dbg !3614
  %call1 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call) #7, !dbg !3615
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3613, metadata !DIExpression()), !dbg !3614
  %tobool = icmp eq %union.tree_node* %call1, null, !dbg !3616
  br i1 %tobool, label %cleanup, label %land.lhs.true, !dbg !3618

land.lhs.true:                                    ; preds = %entry
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 5, !dbg !3619
  %bf.load = load i32, i32* %built_in_class, align 8, !dbg !3619
  %bf.clear = and i32 %bf.load, 6144, !dbg !3619
  %cmp = icmp eq i32 %bf.clear, 6144, !dbg !3620
  br i1 %cmp, label %if.then, label %cleanup, !dbg !3621

if.then:                                          ; preds = %land.lhs.true
  %bf.clear4 = and i32 %bf.load, 2047, !dbg !3622
  switch i32 %bf.clear4, label %cleanup [
    i32 330, label %sw.bb
    i32 331, label %sw.bb
    i32 333, label %sw.bb
    i32 341, label %sw.bb
    i32 349, label %sw.bb
    i32 338, label %sw.bb
    i32 347, label %sw.bb
    i32 529, label %sw.bb
    i32 530, label %sw.bb
    i32 532, label %sw.bb
    i32 535, label %sw.bb
    i32 537, label %sw.bb
    i32 534, label %sw.bb
    i32 536, label %sw.bb
  ], !dbg !3623

sw.bb:                                            ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  %call5 = tail call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call) #7, !dbg !3624
  %cmp6 = icmp eq i32 %call5, 0, !dbg !3627
  br i1 %cmp6, label %cleanup, label %if.then7, !dbg !3628

if.then7:                                         ; preds = %sw.bb
  %call8 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 0) #7, !dbg !3629
  br label %cleanup, !dbg !3630

cleanup:                                          ; preds = %sw.bb, %entry, %land.lhs.true, %if.then, %if.then7
  %retval.0 = phi %union.tree_node* [ %call8, %if.then7 ], [ null, %sw.bb ], [ null, %if.then ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3614
  ret %union.tree_node* %retval.0, !dbg !3631
}

; Function Attrs: nounwind uwtable
define internal fastcc void @call_object_size(%struct.object_size_info* %osi, %union.tree_node* %ptr, %union.gimple_statement_d* %call) unnamed_addr #5 !dbg !3632 {
entry:
  call void @llvm.dbg.value(metadata %struct.object_size_info* %osi, metadata !3636, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr, metadata !3637, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3638, metadata !DIExpression()), !dbg !3642
  %object_size_type1 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 0, !dbg !3643
  %0 = load i32, i32* %object_size_type1, align 8, !dbg !3643
  call void @llvm.dbg.value(metadata i32 %0, metadata !3639, metadata !DIExpression()), !dbg !3642
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3644
  %1 = bitcast %union.tree_node** %version to i32*, !dbg !3644
  %2 = load i32, i32* %1, align 8, !dbg !3644
  call void @llvm.dbg.value(metadata i32 %2, metadata !3640, metadata !DIExpression()), !dbg !3642
  %call2 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call) #7, !dbg !3645
  %tobool = icmp eq i8 %call2, 0, !dbg !3645
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3645

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 640, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3645
  br label %cond.end, !dbg !3645

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = sext i32 %0 to i64, !dbg !3646
  %arrayidx = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %idxprom, !dbg !3646
  %3 = load i64*, i64** %arrayidx, align 8, !dbg !3646
  %idxprom3 = zext i32 %2 to i64, !dbg !3646
  %arrayidx4 = getelementptr inbounds i64, i64* %3, i64 %idxprom3, !dbg !3646
  %4 = load i64, i64* %arrayidx4, align 8, !dbg !3646
  %arrayidx6 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom, !dbg !3646
  %5 = load i64, i64* %arrayidx6, align 8, !dbg !3646
  %cmp = icmp eq i64 %4, %5, !dbg !3646
  br i1 %cmp, label %cond.true7, label %cond.end9, !dbg !3646

cond.true7:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 643, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3646
  br label %cond.end9, !dbg !3646

cond.end9:                                        ; preds = %cond.end, %cond.true7
  %pass = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 3, !dbg !3647
  %6 = load i32, i32* %pass, align 8, !dbg !3647
  %cmp11 = icmp eq i32 %6, 0, !dbg !3647
  br i1 %cmp11, label %cond.end14, label %cond.true12, !dbg !3647

cond.true12:                                      ; preds = %cond.end9
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 644, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3647
  br label %cond.end14, !dbg !3647

cond.end14:                                       ; preds = %cond.end9, %cond.true12
  %call16 = tail call fastcc i64 @alloc_object_size(%union.gimple_statement_d* %call, i32 %0) #7, !dbg !3648
  call void @llvm.dbg.value(metadata i64 %call16, metadata !3641, metadata !DIExpression()), !dbg !3642
  %and = and i32 %0, 2, !dbg !3649
  %cmp17 = icmp eq i32 %and, 0, !dbg !3651
  %7 = load i64*, i64** %arrayidx, align 8, !dbg !3652
  %arrayidx21 = getelementptr inbounds i64, i64* %7, i64 %idxprom3, !dbg !3652
  %8 = load i64, i64* %arrayidx21, align 8, !dbg !3652
  br i1 %cmp17, label %if.then, label %if.else, !dbg !3653

if.then:                                          ; preds = %cond.end14
  %cmp22 = icmp ult i64 %8, %call16, !dbg !3654
  br i1 %cmp22, label %if.then23, label %if.end39, !dbg !3657

if.then23:                                        ; preds = %if.then
  store i64 %call16, i64* %arrayidx21, align 8, !dbg !3658
  br label %if.end39, !dbg !3659

if.else:                                          ; preds = %cond.end14
  %cmp32 = icmp ugt i64 %8, %call16, !dbg !3660
  br i1 %cmp32, label %if.then33, label %if.end39, !dbg !3663

if.then33:                                        ; preds = %if.else
  store i64 %call16, i64* %arrayidx21, align 8, !dbg !3664
  br label %if.end39, !dbg !3665

if.end39:                                         ; preds = %if.else, %if.then33, %if.then, %if.then23
  ret void, !dbg !3666
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3667 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3671, metadata !DIExpression()), !dbg !3672
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !3673
  %0 = load i32, i32* %nargs, align 4, !dbg !3673
  ret i32 %0, !dbg !3674
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3675 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3680, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i32 %index, metadata !3681, metadata !DIExpression()), !dbg !3682
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3683
  %0 = load i32, i32* %capacity, align 8, !dbg !3683
  %cmp = icmp ult i32 %0, %index, !dbg !3683
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3683

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3683
  br label %cond.end, !dbg !3683

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3684
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3684
  ret %struct.phi_arg_d* %arrayidx, !dbg !3685
}

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3686 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3688, metadata !DIExpression()), !dbg !3690
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !3691
  call void @llvm.dbg.value(metadata i32 %call, metadata !3689, metadata !DIExpression()), !dbg !3690
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !3692

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3694
  %bf.load = load i32, i32* %0, align 8, !dbg !3694
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3694
  br label %cleanup, !dbg !3695

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3696
  br label %cleanup, !dbg !3698

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3690
  ret i32 %retval.0, !dbg !3699
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3700 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3704, metadata !DIExpression()), !dbg !3705
  %idxprom = sext i32 %code to i64, !dbg !3706
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3706
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3706
  %conv = zext i8 %0 to i32, !dbg !3707
  ret i32 %conv, !dbg !3708
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3709 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3711, metadata !DIExpression()), !dbg !3712
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !3713
  %cmp = icmp ugt i32 %call, 2, !dbg !3715
  br i1 %cmp, label %if.then, label %return, !dbg !3716

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 2) #7, !dbg !3717
  br label %return, !dbg !3718

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %call1, %if.then ], [ null, %entry ], !dbg !3719
  ret %union.tree_node* %retval.0, !dbg !3720
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3721 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3723, metadata !DIExpression()), !dbg !3724
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3725
  %0 = load i32, i32* %num_ops, align 4, !dbg !3725
  ret i32 %0, !dbg !3726
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3727 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3731, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i32 %i, metadata !3732, metadata !DIExpression()), !dbg !3733
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3734
  %tobool = icmp eq i8 %call, 0, !dbg !3734
  br i1 %tobool, label %return, label %if.then, !dbg !3736

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3737
  %idxprom = zext i32 %i to i64, !dbg !3737
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3737
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3737
  br label %return, !dbg !3739

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3740
  ret %union.tree_node* %retval.0, !dbg !3741
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3742 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3746, metadata !DIExpression()), !dbg !3747
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3748
  %cmp = icmp eq i32 %call, 0, !dbg !3749
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3750

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3751
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3752
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3753
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3754 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3758, metadata !DIExpression()), !dbg !3760
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3761
  %idxprom = zext i32 %call to i64, !dbg !3762
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3762
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3762
  call void @llvm.dbg.value(metadata i64 %0, metadata !3759, metadata !DIExpression()), !dbg !3760
  %cmp = icmp eq i64 %0, 0, !dbg !3763
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3763

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3763
  br label %cond.end, !dbg !3763

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3764
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3765
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3766
  ret %union.tree_node** %2, !dbg !3767
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3768 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3772, metadata !DIExpression()), !dbg !3773
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3774
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3775
  ret i32 %call1, !dbg !3776
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3777 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3781, metadata !DIExpression()), !dbg !3782
  %idxprom = zext i32 %code to i64, !dbg !3783
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3783
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3783
  ret i32 %0, !dbg !3784
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3785 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3787, metadata !DIExpression()), !dbg !3789
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #7, !dbg !3790
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3788, metadata !DIExpression()), !dbg !3789
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3791
  %bf.load = load i64, i64* %0, align 8, !dbg !3791
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3793
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !3793
  br i1 %cmp, label %if.then, label %cleanup, !dbg !3794

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3795
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3795
  br label %cleanup, !dbg !3796

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !3789
  ret %union.tree_node* %retval.0, !dbg !3797
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3798 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3800, metadata !DIExpression()), !dbg !3802
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !3803
  call void @llvm.dbg.value(metadata i32 %call, metadata !3801, metadata !DIExpression()), !dbg !3802
  %sub = add i32 %call, -3, !dbg !3804
  ret i32 %sub, !dbg !3805
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3806 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3808, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i32 %index, metadata !3809, metadata !DIExpression()), !dbg !3810
  %add = add i32 %index, 3, !dbg !3811
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add) #7, !dbg !3812
  ret %union.tree_node* %call, !dbg !3813
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3814 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3816, metadata !DIExpression()), !dbg !3817
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3818
  ret %union.tree_node* %call, !dbg !3819
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3820 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3822, metadata !DIExpression()), !dbg !3823
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3824
  %cmp = icmp eq i32 %call, 8, !dbg !3825
  %conv1 = zext i1 %cmp to i8, !dbg !3824
  ret i8 %conv1, !dbg !3826
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @alloc_object_size(%union.gimple_statement_d* %call, i32 %object_size_type) unnamed_addr #5 !dbg !3827 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3831, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i32 %object_size_type, metadata !3832, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3834, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i32 -1, metadata !3836, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i32 -1, metadata !3837, metadata !DIExpression()), !dbg !3841
  %call1 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call) #7, !dbg !3842
  %tobool = icmp eq i8 %call1, 0, !dbg !3842
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3842

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 369, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3842
  br label %cond.end, !dbg !3842

cond.end:                                         ; preds = %entry, %cond.true
  %call2 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call) #7, !dbg !3843
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3833, metadata !DIExpression()), !dbg !3841
  %tobool3 = icmp eq %union.tree_node* %call2, null, !dbg !3844
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3846

if.then:                                          ; preds = %cond.end
  %idxprom = sext i32 %object_size_type to i64, !dbg !3847
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom, !dbg !3847
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3847
  br label %cleanup, !dbg !3848

if.end:                                           ; preds = %cond.end
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3849
  %1 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !3849
  %2 = load %struct.tree_type*, %struct.tree_type** %1, align 8, !dbg !3849
  %attributes = getelementptr inbounds %struct.tree_type, %struct.tree_type* %2, i64 0, i32 4, !dbg !3849
  %3 = load %union.tree_node*, %union.tree_node** %attributes, align 8, !dbg !3849
  %call5 = tail call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), %union.tree_node* %3) #6, !dbg !3850
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !3835, metadata !DIExpression()), !dbg !3841
  %tobool6 = icmp eq %union.tree_node* %call5, null, !dbg !3851
  br i1 %tobool6, label %if.end27, label %land.lhs.true, !dbg !3852

land.lhs.true:                                    ; preds = %if.end
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3853
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8, !dbg !3853
  %tobool7 = icmp eq %union.tree_node* %5, null, !dbg !3853
  br i1 %tobool7, label %if.end27, label %if.then8, !dbg !3854

if.then8:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3838, metadata !DIExpression()), !dbg !3855
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3856
  %7 = bitcast %union.tree_node** %6 to %struct.tree_int_cst**, !dbg !3856
  %8 = load %struct.tree_int_cst*, %struct.tree_int_cst** %7, align 8, !dbg !3856
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %8, i64 0, i32 1, i32 0, !dbg !3856
  %9 = load i64, i64* %low, align 8, !dbg !3856
  %10 = trunc i64 %9 to i32, !dbg !3856
  %conv = add i32 %10, -1, !dbg !3856
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3836, metadata !DIExpression()), !dbg !3841
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3857
  %11 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !3857
  %tobool15 = icmp eq %union.tree_node* %11, null, !dbg !3857
  br i1 %tobool15, label %if.end27, label %if.then16, !dbg !3859

if.then16:                                        ; preds = %if.then8
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3860
  %13 = bitcast %union.tree_node** %12 to %struct.tree_int_cst**, !dbg !3860
  %14 = load %struct.tree_int_cst*, %struct.tree_int_cst** %13, align 8, !dbg !3860
  %low23 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %14, i64 0, i32 1, i32 0, !dbg !3860
  %15 = load i64, i64* %low23, align 8, !dbg !3860
  %16 = trunc i64 %15 to i32, !dbg !3860
  %conv25 = add i32 %16, -1, !dbg !3860
  call void @llvm.dbg.value(metadata i32 %conv25, metadata !3837, metadata !DIExpression()), !dbg !3841
  br label %if.end27, !dbg !3861

if.end27:                                         ; preds = %if.then8, %land.lhs.true, %if.end, %if.then16
  %arg1.0 = phi i32 [ -1, %land.lhs.true ], [ -1, %if.end ], [ %conv, %if.then16 ], [ %conv, %if.then8 ], !dbg !3841
  %arg2.1 = phi i32 [ -1, %land.lhs.true ], [ -1, %if.end ], [ %conv25, %if.then16 ], [ -1, %if.then8 ], !dbg !3841
  call void @llvm.dbg.value(metadata i32 %arg2.1, metadata !3837, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i32 %arg1.0, metadata !3836, metadata !DIExpression()), !dbg !3841
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 5, !dbg !3862
  %bf.load = load i32, i32* %built_in_class, align 8, !dbg !3862
  %bf.clear = and i32 %bf.load, 6144, !dbg !3862
  %cmp = icmp eq i32 %bf.clear, 6144, !dbg !3864
  br i1 %cmp, label %if.then29, label %if.end34, !dbg !3865

if.then29:                                        ; preds = %if.end27
  %bf.clear32 = and i32 %bf.load, 2047, !dbg !3866
  switch i32 %bf.clear32, label %if.end34 [
    i32 422, label %sw.bb
    i32 491, label %sw.bb33
    i32 415, label %sw.bb33
  ], !dbg !3867

sw.bb:                                            ; preds = %if.then29
  call void @llvm.dbg.value(metadata i32 1, metadata !3837, metadata !DIExpression()), !dbg !3841
  br label %sw.bb33, !dbg !3868

sw.bb33:                                          ; preds = %if.then29, %if.then29, %sw.bb
  %arg2.2 = phi i32 [ %arg2.1, %if.then29 ], [ %arg2.1, %if.then29 ], [ 1, %sw.bb ], !dbg !3841
  call void @llvm.dbg.value(metadata i32 %arg2.2, metadata !3837, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i32 0, metadata !3836, metadata !DIExpression()), !dbg !3841
  br label %if.end34, !dbg !3870

if.end34:                                         ; preds = %if.then29, %sw.bb33, %if.end27
  %arg1.2 = phi i32 [ %arg1.0, %if.end27 ], [ %arg1.0, %if.then29 ], [ 0, %sw.bb33 ], !dbg !3871
  %arg2.4 = phi i32 [ %arg2.1, %if.end27 ], [ %arg2.1, %if.then29 ], [ %arg2.2, %sw.bb33 ], !dbg !3872
  call void @llvm.dbg.value(metadata i32 %arg2.4, metadata !3837, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i32 %arg1.2, metadata !3836, metadata !DIExpression()), !dbg !3841
  %cmp35 = icmp slt i32 %arg1.2, 0, !dbg !3873
  br i1 %cmp35, label %if.then61, label %lor.lhs.false, !dbg !3875

lor.lhs.false:                                    ; preds = %if.end34
  %call37 = tail call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call) #7, !dbg !3876
  %cmp38 = icmp slt i32 %arg1.2, %call37, !dbg !3877
  br i1 %cmp38, label %lor.lhs.false40, label %if.then61, !dbg !3878

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %call41 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 %arg1.2) #7, !dbg !3879
  %17 = getelementptr inbounds %union.tree_node, %union.tree_node* %call41, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3879
  %bf.load42 = load i64, i64* %17, align 8, !dbg !3879
  %bf.cast1 = and i64 %bf.load42, 65535, !dbg !3880
  %cmp44 = icmp eq i64 %bf.cast1, 23, !dbg !3880
  br i1 %cmp44, label %lor.lhs.false46, label %if.then61, !dbg !3881

lor.lhs.false46:                                  ; preds = %lor.lhs.false40
  %cmp47 = icmp sgt i32 %arg2.4, -1, !dbg !3882
  br i1 %cmp47, label %land.lhs.true49, label %if.end64, !dbg !3883

land.lhs.true49:                                  ; preds = %lor.lhs.false46
  %call50 = tail call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call) #7, !dbg !3884
  %cmp51 = icmp slt i32 %arg2.4, %call50, !dbg !3885
  br i1 %cmp51, label %lor.lhs.false53, label %if.then61, !dbg !3886

lor.lhs.false53:                                  ; preds = %land.lhs.true49
  %call54 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 %arg2.4) #7, !dbg !3887
  %18 = getelementptr inbounds %union.tree_node, %union.tree_node* %call54, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3887
  %bf.load56 = load i64, i64* %18, align 8, !dbg !3887
  %bf.cast582 = and i64 %bf.load56, 65535, !dbg !3888
  %cmp59 = icmp eq i64 %bf.cast582, 23, !dbg !3888
  br i1 %cmp59, label %if.end64, label %if.then61, !dbg !3889

if.then61:                                        ; preds = %lor.lhs.false53, %land.lhs.true49, %lor.lhs.false40, %lor.lhs.false, %if.end34
  %idxprom62 = sext i32 %object_size_type to i64, !dbg !3890
  %arrayidx63 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom62, !dbg !3890
  %19 = load i64, i64* %arrayidx63, align 8, !dbg !3890
  br label %cleanup, !dbg !3891

if.end64:                                         ; preds = %lor.lhs.false53, %lor.lhs.false46
  br i1 %cmp47, label %if.then67, label %if.else, !dbg !3892

if.then67:                                        ; preds = %if.end64
  %20 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3893
  %call68 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 %arg1.2) #7, !dbg !3893
  %call69 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %20, %union.tree_node* %call68) #6, !dbg !3893
  %21 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3893
  %call70 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 %arg2.4) #7, !dbg !3893
  %call71 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %21, %union.tree_node* %call70) #6, !dbg !3893
  %call72 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 65, %union.tree_node* %call69, %union.tree_node* %call71) #6, !dbg !3893
  call void @llvm.dbg.value(metadata %union.tree_node* %call72, metadata !3834, metadata !DIExpression()), !dbg !3841
  br label %if.end79, !dbg !3895

if.else:                                          ; preds = %if.end64
  %cmp73 = icmp sgt i32 %arg1.2, -1, !dbg !3896
  br i1 %cmp73, label %if.then75, label %if.end79, !dbg !3898

if.then75:                                        ; preds = %if.else
  %22 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3899
  %call76 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 %arg1.2) #7, !dbg !3899
  %call77 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %22, %union.tree_node* %call76) #6, !dbg !3899
  call void @llvm.dbg.value(metadata %union.tree_node* %call77, metadata !3834, metadata !DIExpression()), !dbg !3841
  br label %if.end79, !dbg !3900

if.end79:                                         ; preds = %if.else, %if.then75, %if.then67
  %bytes.1 = phi %union.tree_node* [ %call72, %if.then67 ], [ %call77, %if.then75 ], [ null, %if.else ], !dbg !3901
  call void @llvm.dbg.value(metadata %union.tree_node* %bytes.1, metadata !3834, metadata !DIExpression()), !dbg !3841
  %tobool80 = icmp eq %union.tree_node* %bytes.1, null, !dbg !3902
  br i1 %tobool80, label %if.end86, label %land.lhs.true81, !dbg !3904

land.lhs.true81:                                  ; preds = %if.end79
  %call82 = tail call i32 @host_integerp(%union.tree_node* nonnull %bytes.1, i32 1) #6, !dbg !3905
  %tobool83 = icmp eq i32 %call82, 0, !dbg !3905
  br i1 %tobool83, label %if.end86, label %if.then84, !dbg !3906

if.then84:                                        ; preds = %land.lhs.true81
  %call85 = tail call i64 @tree_low_cst(%union.tree_node* nonnull %bytes.1, i32 1) #6, !dbg !3907
  br label %cleanup, !dbg !3908

if.end86:                                         ; preds = %land.lhs.true81, %if.end79
  %idxprom87 = sext i32 %object_size_type to i64, !dbg !3909
  %arrayidx88 = getelementptr inbounds [4 x i64], [4 x i64]* @unknown, i64 0, i64 %idxprom87, !dbg !3909
  %23 = load i64, i64* %arrayidx88, align 8, !dbg !3909
  br label %cleanup, !dbg !3910

cleanup:                                          ; preds = %if.end86, %if.then84, %if.then61, %if.then
  %retval.0 = phi i64 [ %19, %if.then61 ], [ %call85, %if.then84 ], [ %23, %if.end86 ], [ %0, %if.then ], !dbg !3841
  ret i64 %retval.0, !dbg !3911
}

declare dso_local %union.tree_node* @lookup_attribute(i8*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3912 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3914, metadata !DIExpression()), !dbg !3915
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3916
  %cmp = icmp eq i32 %call, 6, !dbg !3917
  %conv1 = zext i1 %cmp to i8, !dbg !3916
  ret i8 %conv1, !dbg !3918
}

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @check_for_plus_in_loops_1(%struct.object_size_info* %osi, %union.tree_node* %var, i32 %depth) unnamed_addr #5 !dbg !3919 {
entry:
  call void @llvm.dbg.value(metadata %struct.object_size_info* %osi, metadata !3923, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3924, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i32 %depth, metadata !3925, metadata !DIExpression()), !dbg !3950
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3951
  %0 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3951
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %0, align 8, !dbg !3951
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !3926, metadata !DIExpression()), !dbg !3950
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3952
  %2 = bitcast %union.tree_node** %version to i32*, !dbg !3952
  %3 = load i32, i32* %2, align 8, !dbg !3952
  call void @llvm.dbg.value(metadata i32 %3, metadata !3927, metadata !DIExpression()), !dbg !3950
  %depths = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 5, !dbg !3953
  %4 = load i32*, i32** %depths, align 8, !dbg !3953
  %idxprom = zext i32 %3 to i64, !dbg !3954
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !3954
  %5 = load i32, i32* %arrayidx, align 4, !dbg !3954
  %tobool = icmp eq i32 %5, 0, !dbg !3954
  br i1 %tobool, label %if.else, label %if.then, !dbg !3955

if.then:                                          ; preds = %entry
  %cmp = icmp eq i32 %5, %depth, !dbg !3956
  br i1 %cmp, label %cleanup.cont, label %if.then5, !dbg !3957

if.then5:                                         ; preds = %if.then
  %tos = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 7, !dbg !3958
  %6 = load i32*, i32** %tos, align 8, !dbg !3958
  call void @llvm.dbg.value(metadata i32* %6, metadata !3928, metadata !DIExpression()), !dbg !3960
  %stack = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 6, !dbg !3961
  %reexamine = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 2, !dbg !3963
  %object_size_type = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 0, !dbg !3963
  br label %for.cond, !dbg !3965

for.cond:                                         ; preds = %for.body, %if.then5
  %sp.0 = phi i32* [ %6, %if.then5 ], [ %incdec.ptr, %for.body ], !dbg !3966
  call void @llvm.dbg.value(metadata i32* %sp.0, metadata !3928, metadata !DIExpression()), !dbg !3960
  %7 = load i32*, i32** %stack, align 8, !dbg !3967
  %cmp6 = icmp ugt i32* %sp.0, %7, !dbg !3968
  br i1 %cmp6, label %for.body, label %cleanup.cont.loopexit, !dbg !3969

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i32, i32* %sp.0, i64 -1, !dbg !3970
  call void @llvm.dbg.value(metadata i32* %incdec.ptr, metadata !3928, metadata !DIExpression()), !dbg !3960
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reexamine, align 8, !dbg !3971
  %9 = load i32, i32* %incdec.ptr, align 4, !dbg !3972
  %call = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %8, i32 %9) #6, !dbg !3973
  %10 = load i32, i32* %object_size_type, align 8, !dbg !3974
  %idxprom7 = sext i32 %10 to i64, !dbg !3975
  %arrayidx8 = getelementptr inbounds [4 x %struct.bitmap_head_def*], [4 x %struct.bitmap_head_def*]* @computed, i64 0, i64 %idxprom7, !dbg !3975
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx8, align 8, !dbg !3975
  %12 = load i32, i32* %incdec.ptr, align 4, !dbg !3976
  %call9 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %11, i32 %12) #6, !dbg !3977
  %13 = load i32, i32* %object_size_type, align 8, !dbg !3978
  %idxprom11 = sext i32 %13 to i64, !dbg !3979
  %arrayidx12 = getelementptr inbounds [4 x i64*], [4 x i64*]* @object_sizes, i64 0, i64 %idxprom11, !dbg !3979
  %14 = load i64*, i64** %arrayidx12, align 8, !dbg !3979
  %15 = load i32, i32* %incdec.ptr, align 4, !dbg !3980
  %idxprom13 = zext i32 %15 to i64, !dbg !3979
  %arrayidx14 = getelementptr inbounds i64, i64* %14, i64 %idxprom13, !dbg !3979
  store i64 0, i64* %arrayidx14, align 8, !dbg !3981
  %16 = load i32, i32* %incdec.ptr, align 4, !dbg !3982
  %cmp15 = icmp eq i32 %16, %3, !dbg !3984
  br i1 %cmp15, label %cleanup.cont.loopexit, label %for.cond, !dbg !3985, !llvm.loop !3986

if.else:                                          ; preds = %entry
  %reexamine18 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 2, !dbg !3988
  %17 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reexamine18, align 8, !dbg !3988
  %call19 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %17, i32 %3) #6, !dbg !3990
  %tobool20 = icmp eq i32 %call19, 0, !dbg !3990
  br i1 %tobool20, label %cleanup.cont, label %if.end23, !dbg !3991

if.end23:                                         ; preds = %if.else
  %18 = load i32*, i32** %depths, align 8, !dbg !3992
  %arrayidx26 = getelementptr inbounds i32, i32* %18, i64 %idxprom, !dbg !3993
  store i32 %depth, i32* %arrayidx26, align 4, !dbg !3994
  %tos27 = getelementptr inbounds %struct.object_size_info, %struct.object_size_info* %osi, i64 0, i32 7, !dbg !3995
  %19 = load i32*, i32** %tos27, align 8, !dbg !3996
  %incdec.ptr28 = getelementptr inbounds i32, i32* %19, i64 1, !dbg !3996
  store i32* %incdec.ptr28, i32** %tos27, align 8, !dbg !3996
  store i32 %3, i32* %19, align 4, !dbg !3997
  %call29 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %1) #7, !dbg !3998
  switch i32 %call29, label %sw.default [
    i32 6, label %sw.bb
    i32 8, label %sw.bb58
    i32 16, label %for.cond73.preheader
  ], !dbg !3999

for.cond73.preheader:                             ; preds = %if.end23
  br label %for.cond73, !dbg !4000

sw.bb:                                            ; preds = %if.end23
  %call30 = tail call zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d* %1) #6, !dbg !4001
  %tobool31 = icmp eq i8 %call30, 0, !dbg !4001
  br i1 %tobool31, label %lor.lhs.false, label %land.lhs.true, !dbg !4002

lor.lhs.false:                                    ; preds = %sw.bb
  %call32 = tail call zeroext i8 @gimple_assign_unary_nop_p(%union.gimple_statement_d* %1) #6, !dbg !4003
  %tobool34 = icmp eq i8 %call32, 0, !dbg !4003
  br i1 %tobool34, label %if.else40, label %land.lhs.true, !dbg !4004

land.lhs.true:                                    ; preds = %lor.lhs.false, %sw.bb
  %call35 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %1) #7, !dbg !4005
  %20 = getelementptr inbounds %union.tree_node, %union.tree_node* %call35, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4005
  %bf.load = load i64, i64* %20, align 8, !dbg !4005
  %bf.cast4 = and i64 %bf.load, 65535, !dbg !4006
  %cmp36 = icmp eq i64 %bf.cast4, 141, !dbg !4006
  br i1 %cmp36, label %if.then38, label %if.else40, !dbg !4007

if.then38:                                        ; preds = %land.lhs.true
  %call39 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %1) #7, !dbg !4008
  call void @llvm.dbg.value(metadata %union.tree_node* %call39, metadata !3933, metadata !DIExpression()), !dbg !4009
  tail call fastcc void @check_for_plus_in_loops_1(%struct.object_size_info* %osi, %union.tree_node* %call39, i32 %depth) #7, !dbg !4010
  br label %sw.epilog, !dbg !4011

if.else40:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %call41 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %1) #7, !dbg !4012
  %cmp42 = icmp eq i32 %call41, 66, !dbg !4013
  br i1 %cmp42, label %if.then44, label %if.else55, !dbg !4014

if.then44:                                        ; preds = %if.else40
  %call45 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %1) #7, !dbg !4015
  call void @llvm.dbg.value(metadata %union.tree_node* %call45, metadata !3938, metadata !DIExpression()), !dbg !4016
  %call46 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %1) #7, !dbg !4017
  call void @llvm.dbg.value(metadata %union.tree_node* %call46, metadata !3941, metadata !DIExpression()), !dbg !4016
  %21 = getelementptr inbounds %union.tree_node, %union.tree_node* %call46, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4018
  %bf.load48 = load i64, i64* %21, align 8, !dbg !4018
  %bf.cast503 = and i64 %bf.load48, 65535, !dbg !4018
  %cmp51 = icmp eq i64 %bf.cast503, 23, !dbg !4018
  br i1 %cmp51, label %cond.end, label %cond.true, !dbg !4018

cond.true:                                        ; preds = %if.then44
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 1049, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4018
  br label %cond.end, !dbg !4018

cond.end:                                         ; preds = %if.then44, %cond.true
  %call53 = tail call i32 @integer_zerop(%union.tree_node* %call46) #6, !dbg !4019
  %tobool54 = icmp eq i32 %call53, 0, !dbg !4020
  %lnot.ext = zext i1 %tobool54 to i32, !dbg !4020
  %add = add i32 %lnot.ext, %depth, !dbg !4021
  tail call fastcc void @check_for_plus_in_loops_1(%struct.object_size_info* %osi, %union.tree_node* %call45, i32 %add) #7, !dbg !4022
  br label %sw.epilog, !dbg !4023

if.else55:                                        ; preds = %if.else40
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 1055, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4024
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end23
  %call59 = tail call fastcc %union.tree_node* @pass_through_call(%union.gimple_statement_d* %1) #7, !dbg !4025
  call void @llvm.dbg.value(metadata %union.tree_node* %call59, metadata !3942, metadata !DIExpression()), !dbg !4026
  %tobool60 = icmp eq %union.tree_node* %call59, null, !dbg !4027
  br i1 %tobool60, label %sw.epilog, label %if.then61, !dbg !4029

if.then61:                                        ; preds = %sw.bb58
  %22 = getelementptr inbounds %union.tree_node, %union.tree_node* %call59, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4030
  %bf.load63 = load i64, i64* %22, align 8, !dbg !4030
  %bf.cast652 = and i64 %bf.load63, 65535, !dbg !4033
  %cmp66 = icmp eq i64 %bf.cast652, 141, !dbg !4033
  br i1 %cmp66, label %if.then68, label %if.else69, !dbg !4034

if.then68:                                        ; preds = %if.then61
  tail call fastcc void @check_for_plus_in_loops_1(%struct.object_size_info* %osi, %union.tree_node* nonnull %call59, i32 %depth) #7, !dbg !4035
  br label %sw.epilog, !dbg !4035

if.else69:                                        ; preds = %if.then61
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 1067, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4036
  br label %sw.epilog

for.cond73:                                       ; preds = %for.cond73.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond73.preheader ], !dbg !4037
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3944, metadata !DIExpression()), !dbg !4038
  %call74 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %1) #7, !dbg !4039
  %cmp75 = icmp ult i32 %i.0, %call74, !dbg !4040
  br i1 %cmp75, label %for.body77, label %sw.epilog.loopexit, !dbg !4000

for.body77:                                       ; preds = %for.cond73
  %call79 = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %1, i32 %i.0) #7, !dbg !4041
  %def = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call79, i64 0, i32 1, !dbg !4042
  %23 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !4042
  call void @llvm.dbg.value(metadata %union.tree_node* %23, metadata !3946, metadata !DIExpression()), !dbg !4043
  %24 = getelementptr inbounds %union.tree_node, %union.tree_node* %23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4044
  %bf.load81 = load i64, i64* %24, align 8, !dbg !4044
  %bf.cast831 = and i64 %bf.load81, 65535, !dbg !4046
  %cmp84 = icmp eq i64 %bf.cast831, 141, !dbg !4046
  br i1 %cmp84, label %if.then86, label %for.inc, !dbg !4047

if.then86:                                        ; preds = %for.body77
  tail call fastcc void @check_for_plus_in_loops_1(%struct.object_size_info* %osi, %union.tree_node* %23, i32 %depth) #7, !dbg !4048
  br label %for.inc, !dbg !4048

for.inc:                                          ; preds = %for.body77, %if.then86
  %inc = add i32 %i.0, 1, !dbg !4049
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3944, metadata !DIExpression()), !dbg !4038
  br label %for.cond73, !dbg !4050, !llvm.loop !4051

sw.default:                                       ; preds = %if.end23
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 1087, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4053
  br label %sw.epilog, !dbg !4054

sw.epilog.loopexit:                               ; preds = %for.cond73
  br label %sw.epilog, !dbg !4055

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %sw.bb58, %if.else69, %if.then68, %if.then38, %if.else55, %cond.end, %sw.default
  %25 = load i32*, i32** %depths, align 8, !dbg !4055
  %arrayidx91 = getelementptr inbounds i32, i32* %25, i64 %idxprom, !dbg !4056
  store i32 0, i32* %arrayidx91, align 4, !dbg !4057
  %26 = load i32*, i32** %tos27, align 8, !dbg !4058
  %incdec.ptr93 = getelementptr inbounds i32, i32* %26, i64 -1, !dbg !4058
  store i32* %incdec.ptr93, i32** %tos27, align 8, !dbg !4058
  br label %cleanup.cont, !dbg !4059

cleanup.cont.loopexit:                            ; preds = %for.body, %for.cond
  br label %cleanup.cont, !dbg !4059

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %if.then, %if.else, %sw.epilog
  ret void, !dbg !4059
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4060 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4064, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4065, metadata !DIExpression()), !dbg !4068
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !4069
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !4066, metadata !DIExpression()), !dbg !4067
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !4070
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !4071
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4072
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !4073
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !4074
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !4075
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !4076
  ret void, !dbg !4077
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !4078 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !4082, metadata !DIExpression()), !dbg !4083
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4084
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4084
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !4085
  %conv1 = zext i1 %cmp to i8, !dbg !4086
  ret i8 %conv1, !dbg !4087
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !4088 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !4092, metadata !DIExpression()), !dbg !4093
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4094
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4094
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !4095
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4095
  ret %union.gimple_statement_d* %1, !dbg !4096
}

declare dso_local %union.tree_node* @fold_call_stmt(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @update_call_from_tree(%struct.gimple_stmt_iterator*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !4097 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !4102, metadata !DIExpression()), !dbg !4103
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4104
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4104
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !4105
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !4105
  %2 = load i64, i64* %1, align 8, !dbg !4105
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !4106
  store i64 %2, i64* %3, align 8, !dbg !4106
  ret void, !dbg !4107
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4108 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4115, metadata !DIExpression()), !dbg !4116
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4117
  %0 = load i32, i32* %flags, align 8, !dbg !4117
  %and = and i32 %0, 512, !dbg !4118
  %tobool = icmp eq i32 %and, 0, !dbg !4118
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !4119

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4120
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4120
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !4121
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4122

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4123
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4123
  br label %cond.end, !dbg !4122

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !4122
  ret %struct.gimple_seq_d* %cond, !dbg !4124
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4125 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4132, metadata !DIExpression()), !dbg !4133
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4134
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4134

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4135
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4135
  br label %cond.end, !dbg !4134

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4134
  ret %struct.gimple_seq_node_d* %cond, !dbg !4136
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.usub.sat.i64(i64, i64) #1

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
!llvm.module.flags = !{!1729, !1730, !1731}
!llvm.ident = !{!1732}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "offset_limit", scope: !2, file: !3, line: 74, type: !532, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !503, globals: !1691, nameTableKind: None)
!3 = !DIFile(filename: "tree-object-size.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !201, !207, !212, !217, !235, !242, !249, !256, !432, !471, !477}
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
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !250, line: 104, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!251 = !{!252, !253, !254, !255}
!252 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!253 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!254 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!255 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !257, line: 74, baseType: !7, size: 32, elements: !258)
!257 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431}
!259 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!260 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!261 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!262 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!263 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!264 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!265 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!266 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!267 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!268 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!269 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!270 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!271 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!272 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!273 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!274 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!275 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!276 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!277 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!278 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!279 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!280 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!281 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!282 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!283 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!284 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!285 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!286 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!287 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!288 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!289 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!290 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!291 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!292 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!293 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!294 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!295 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!296 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!297 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!298 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!299 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!300 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!301 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!302 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!303 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!304 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!305 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!306 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!307 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!308 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!309 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!310 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!311 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!312 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!313 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!314 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!315 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!316 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!317 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!318 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!319 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!320 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!321 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!322 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!323 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!324 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!325 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!326 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!327 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!328 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!329 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!330 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!331 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!332 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!333 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!334 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!335 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!336 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!337 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!338 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!339 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!340 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!341 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!342 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!343 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!344 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!345 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!346 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!347 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!348 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!349 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!350 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!351 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!352 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!353 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!354 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!355 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!356 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!357 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!358 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!359 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!360 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!361 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!362 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!363 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!364 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!365 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!366 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!367 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!368 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!369 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!370 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!371 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!372 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!373 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!374 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!375 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!376 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!377 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!378 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!379 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!380 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!381 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!382 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!383 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!384 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!385 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!386 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!387 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!388 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!389 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!390 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!391 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!392 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!393 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!394 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!395 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!396 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!397 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!398 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!399 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!400 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!431 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!432 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !433, line: 51, baseType: !7, size: 32, elements: !434)
!433 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!435 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!436 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!437 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!438 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!439 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!440 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!441 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!442 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!443 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!444 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!445 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!446 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!447 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!448 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!449 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!450 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!451 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!452 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!453 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!454 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!455 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!456 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!457 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!458 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!459 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!460 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!461 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!462 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!463 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!464 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!465 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!466 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!467 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!468 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!469 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!470 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!471 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !433, line: 80, baseType: !7, size: 32, elements: !472)
!472 = !{!473, !474, !475, !476}
!473 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!474 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!475 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!476 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!477 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !433, line: 727, baseType: !7, size: 32, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!479 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!480 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!481 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!482 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!483 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!484 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!485 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!486 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!487 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!488 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!489 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!490 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!491 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!492 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!493 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!494 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!495 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!496 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!497 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!498 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!499 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!500 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!501 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!502 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!503 = !{!504, !505, !506, !507, !510, !511, !5, !513, !514, !577, !578, !532, !686, !471, !871, !1689, !905, !508}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!506 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !515, line: 47, baseType: !516)
!515 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !518, line: 75, size: 256, elements: !519)
!518 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!519 = !{!520, !535, !536, !537}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !517, file: !518, line: 76, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !518, line: 68, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !518, line: 63, size: 320, elements: !524)
!524 = !{!525, !527, !528, !529}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !523, file: !518, line: 64, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !523, file: !518, line: 65, baseType: !526, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !523, file: !518, line: 66, baseType: !7, size: 32, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !523, file: !518, line: 67, baseType: !530, size: 128, offset: 192)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 128, elements: !533)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !518, line: 29, baseType: !532)
!532 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!533 = !{!534}
!534 = !DISubrange(count: 2)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !517, file: !518, line: 77, baseType: !521, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !517, file: !518, line: 78, baseType: !7, size: 32, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !517, file: !518, line: 79, baseType: !538, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !518, line: 49, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !518, line: 45, size: 832, elements: !541)
!541 = !{!542, !543, !544}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !540, file: !518, line: 46, baseType: !526, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !540, file: !518, line: 47, baseType: !516, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !540, file: !518, line: 48, baseType: !545, size: 704, offset: 128)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !546, line: 164, size: 704, elements: !547)
!546 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!547 = !{!548, !550, !560, !561, !562, !563, !564, !565, !569, !573, !574, !575, !576}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !545, file: !546, line: 166, baseType: !549, size: 64)
!549 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !545, file: !546, line: 167, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !546, line: 157, size: 192, elements: !553)
!553 = !{!554, !555, !556}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !552, file: !546, line: 159, baseType: !508, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !552, file: !546, line: 160, baseType: !551, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !552, file: !546, line: 161, baseType: !557, size: 32, offset: 128)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 32, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 4)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !545, file: !546, line: 168, baseType: !508, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !545, file: !546, line: 169, baseType: !508, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !545, file: !546, line: 170, baseType: !508, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !545, file: !546, line: 171, baseType: !549, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !545, file: !546, line: 172, baseType: !506, size: 32, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !545, file: !546, line: 176, baseType: !566, size: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!551, !510, !549}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !545, file: !546, line: 177, baseType: !570, size: 64, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !510, !551}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !545, file: !546, line: 178, baseType: !510, size: 64, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !545, file: !546, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !545, file: !546, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !545, file: !546, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !515, line: 56, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !6, line: 3371, size: 1792, elements: !581)
!581 = !{!582, !615, !621, !632, !639, !646, !651, !660, !666, !679, !691, !729, !737, !765, !782, !783, !788, !797, !803, !808, !812, !816, !1338, !1387, !1393, !1399, !1406, !1419, !1433, !1450, !1462, !1484, !1499, !1671}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !580, file: !6, line: 3372, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !6, line: 360, size: 64, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !583, file: !6, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !583, file: !6, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !583, file: !6, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !583, file: !6, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !583, file: !6, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !583, file: !6, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !583, file: !6, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !583, file: !6, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !583, file: !6, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !583, file: !6, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !583, file: !6, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !583, file: !6, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !583, file: !6, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !583, file: !6, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !583, file: !6, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !583, file: !6, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !583, file: !6, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !583, file: !6, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !583, file: !6, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !583, file: !6, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !583, file: !6, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !583, file: !6, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !583, file: !6, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !583, file: !6, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !583, file: !6, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !583, file: !6, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !583, file: !6, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !583, file: !6, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !583, file: !6, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !583, file: !6, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !580, file: !6, line: 3373, baseType: !616, size: 192)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !6, line: 402, size: 192, elements: !617)
!617 = !{!618, !619, !620}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !616, file: !6, line: 403, baseType: !583, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !616, file: !6, line: 404, baseType: !578, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !616, file: !6, line: 405, baseType: !578, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !580, file: !6, line: 3374, baseType: !622, size: 320)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !6, line: 1384, size: 320, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !622, file: !6, line: 1385, baseType: !616, size: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !622, file: !6, line: 1386, baseType: !626, size: 128, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !627, line: 58, baseType: !628)
!627 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !627, line: 54, size: 128, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !628, file: !627, line: 56, baseType: !532, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !628, file: !627, line: 57, baseType: !549, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !580, file: !6, line: 3375, baseType: !633, size: 256)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !6, line: 1397, size: 256, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !633, file: !6, line: 1398, baseType: !616, size: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !633, file: !6, line: 1399, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !6, line: 1392, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !580, file: !6, line: 3376, baseType: !640, size: 256)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !6, line: 1408, size: 256, elements: !641)
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !640, file: !6, line: 1409, baseType: !616, size: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !640, file: !6, line: 1410, baseType: !644, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !6, line: 1403, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !580, file: !6, line: 3377, baseType: !647, size: 256)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !6, line: 1437, size: 256, elements: !648)
!648 = !{!649, !650}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !647, file: !6, line: 1438, baseType: !616, size: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !647, file: !6, line: 1439, baseType: !578, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !580, file: !6, line: 3378, baseType: !652, size: 256)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !6, line: 1418, size: 256, elements: !653)
!653 = !{!654, !655, !656}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !652, file: !6, line: 1419, baseType: !616, size: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !652, file: !6, line: 1420, baseType: !506, size: 32, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !652, file: !6, line: 1421, baseType: !657, size: 8, offset: 224)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 8, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 1)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !580, file: !6, line: 3379, baseType: !661, size: 320)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !6, line: 1428, size: 320, elements: !662)
!662 = !{!663, !664, !665}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !661, file: !6, line: 1429, baseType: !616, size: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !661, file: !6, line: 1430, baseType: !578, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !661, file: !6, line: 1431, baseType: !578, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !580, file: !6, line: 3380, baseType: !667, size: 320)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !6, line: 1460, size: 320, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !667, file: !6, line: 1461, baseType: !616, size: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !667, file: !6, line: 1462, baseType: !671, size: 128, offset: 192)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !672, line: 31, size: 128, elements: !673)
!672 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!673 = !{!674, !677, !678}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !671, file: !672, line: 32, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !671, file: !672, line: 33, baseType: !7, size: 32, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !671, file: !672, line: 34, baseType: !7, size: 32, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !580, file: !6, line: 3381, baseType: !680, size: 384)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !6, line: 2507, size: 384, elements: !681)
!681 = !{!682, !683, !688, !689, !690}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !680, file: !6, line: 2508, baseType: !616, size: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !680, file: !6, line: 2509, baseType: !684, size: 32, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !685, line: 58, baseType: !686)
!685 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !687, line: 44, baseType: !7)
!687 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!688 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !680, file: !6, line: 2510, baseType: !7, size: 32, offset: 224)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !680, file: !6, line: 2511, baseType: !578, size: 64, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !680, file: !6, line: 2512, baseType: !578, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !580, file: !6, line: 3382, baseType: !692, size: 896)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !6, line: 2652, size: 896, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !692, file: !6, line: 2653, baseType: !680, size: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !692, file: !6, line: 2654, baseType: !578, size: 64, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !692, file: !6, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !692, file: !6, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !692, file: !6, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !692, file: !6, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !692, file: !6, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !692, file: !6, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !692, file: !6, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !692, file: !6, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !692, file: !6, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !692, file: !6, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !692, file: !6, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !692, file: !6, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !692, file: !6, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !692, file: !6, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !692, file: !6, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !692, file: !6, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !692, file: !6, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !692, file: !6, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !692, file: !6, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !692, file: !6, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !692, file: !6, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !692, file: !6, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !692, file: !6, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !692, file: !6, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !692, file: !6, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !692, file: !6, line: 2703, baseType: !7, size: 32, offset: 512)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !692, file: !6, line: 2705, baseType: !578, size: 64, offset: 576)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !692, file: !6, line: 2706, baseType: !578, size: 64, offset: 640)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !692, file: !6, line: 2707, baseType: !578, size: 64, offset: 704)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !692, file: !6, line: 2708, baseType: !578, size: 64, offset: 768)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !692, file: !6, line: 2711, baseType: !727, size: 64, offset: 832)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !6, line: 2711, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !580, file: !6, line: 3383, baseType: !730, size: 960)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !6, line: 2756, size: 960, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !730, file: !6, line: 2757, baseType: !692, size: 896)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !730, file: !6, line: 2758, baseType: !734, size: 64, offset: 896)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !515, line: 50, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !515, line: 49, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !580, file: !6, line: 3384, baseType: !738, size: 1472)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !6, line: 3114, size: 1472, elements: !739)
!739 = !{!740, !761, !762, !763, !764}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !738, file: !6, line: 3115, baseType: !741, size: 1216)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !6, line: 2984, size: 1216, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !741, file: !6, line: 2985, baseType: !730, size: 960)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !741, file: !6, line: 2986, baseType: !578, size: 64, offset: 960)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !741, file: !6, line: 2987, baseType: !578, size: 64, offset: 1024)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !741, file: !6, line: 2988, baseType: !578, size: 64, offset: 1088)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !741, file: !6, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !741, file: !6, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !741, file: !6, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !741, file: !6, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !741, file: !6, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !741, file: !6, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !741, file: !6, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !741, file: !6, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !741, file: !6, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !741, file: !6, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !741, file: !6, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !741, file: !6, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !741, file: !6, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !741, file: !6, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !738, file: !6, line: 3117, baseType: !578, size: 64, offset: 1216)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !738, file: !6, line: 3119, baseType: !578, size: 64, offset: 1280)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !738, file: !6, line: 3121, baseType: !578, size: 64, offset: 1344)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !738, file: !6, line: 3123, baseType: !578, size: 64, offset: 1408)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !580, file: !6, line: 3385, baseType: !766, size: 1088)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !6, line: 2874, size: 1088, elements: !767)
!767 = !{!768, !769, !770}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !766, file: !6, line: 2875, baseType: !730, size: 960)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !766, file: !6, line: 2876, baseType: !734, size: 64, offset: 960)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !766, file: !6, line: 2877, baseType: !771, size: 64, offset: 1024)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !773, line: 172, size: 128, elements: !774)
!773 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!774 = !{!775, !776, !777, !778, !779, !780, !781}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !772, file: !773, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !772, file: !773, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !772, file: !773, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !772, file: !773, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !772, file: !773, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !772, file: !773, line: 195, baseType: !7, size: 32, offset: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !772, file: !773, line: 199, baseType: !578, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !580, file: !6, line: 3386, baseType: !741, size: 1216)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !580, file: !6, line: 3387, baseType: !784, size: 1280)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !6, line: 3093, size: 1280, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !784, file: !6, line: 3094, baseType: !741, size: 1216)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !784, file: !6, line: 3095, baseType: !771, size: 64, offset: 1216)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !580, file: !6, line: 3388, baseType: !789, size: 1216)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !6, line: 2824, size: 1216, elements: !790)
!790 = !{!791, !792, !793, !794, !795, !796}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !789, file: !6, line: 2825, baseType: !692, size: 896)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !789, file: !6, line: 2827, baseType: !578, size: 64, offset: 896)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !789, file: !6, line: 2828, baseType: !578, size: 64, offset: 960)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !789, file: !6, line: 2829, baseType: !578, size: 64, offset: 1024)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !789, file: !6, line: 2830, baseType: !578, size: 64, offset: 1088)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !789, file: !6, line: 2831, baseType: !578, size: 64, offset: 1152)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !580, file: !6, line: 3389, baseType: !798, size: 1024)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !6, line: 2850, size: 1024, elements: !799)
!799 = !{!800, !801, !802}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !798, file: !6, line: 2851, baseType: !730, size: 960)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !798, file: !6, line: 2852, baseType: !506, size: 32, offset: 960)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !798, file: !6, line: 2853, baseType: !506, size: 32, offset: 992)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !580, file: !6, line: 3390, baseType: !804, size: 1024)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !6, line: 2857, size: 1024, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !804, file: !6, line: 2858, baseType: !730, size: 960)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !804, file: !6, line: 2859, baseType: !771, size: 64, offset: 960)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !580, file: !6, line: 3391, baseType: !809, size: 960)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !6, line: 2862, size: 960, elements: !810)
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !809, file: !6, line: 2863, baseType: !730, size: 960)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !580, file: !6, line: 3392, baseType: !813, size: 1472)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !6, line: 3304, size: 1472, elements: !814)
!814 = !{!815}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !813, file: !6, line: 3305, baseType: !738, size: 1472)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !580, file: !6, line: 3393, baseType: !817, size: 1792)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !6, line: 3248, size: 1792, elements: !818)
!818 = !{!819, !820, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !817, file: !6, line: 3249, baseType: !738, size: 1472)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !817, file: !6, line: 3251, baseType: !821, size: 64, offset: 1472)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !823, line: 463, size: 1152, elements: !824)
!823 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!824 = !{!825, !828, !1143, !1144, !1258, !1261, !1262, !1263, !1264, !1265, !1266, !1290, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !822, file: !823, line: 464, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !823, line: 464, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !822, file: !823, line: 467, baseType: !829, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !202, line: 374, size: 640, elements: !831)
!831 = !{!832, !1118, !1119, !1132, !1133, !1134, !1135, !1136, !1137, !1139, !1141, !1142}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !830, file: !202, line: 377, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !515, line: 111, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !202, line: 217, size: 832, elements: !836)
!836 = !{!837, !1083, !1084, !1085, !1088, !1092, !1093, !1094, !1112, !1113, !1114, !1115, !1116, !1117}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !835, file: !202, line: 219, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !202, line: 151, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !202, line: 151, size: 128, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !840, file: !202, line: 151, baseType: !843, size: 128)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !202, line: 150, baseType: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !202, line: 150, size: 128, elements: !845)
!845 = !{!846, !847, !848}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !844, file: !202, line: 150, baseType: !7, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !844, file: !202, line: 150, baseType: !7, size: 32, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !844, file: !202, line: 150, baseType: !849, size: 64, offset: 64)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 64, elements: !658)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !515, line: 108, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !202, line: 122, size: 512, elements: !853)
!853 = !{!854, !855, !856, !1075, !1076, !1077, !1078, !1079, !1080, !1081}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !852, file: !202, line: 124, baseType: !834, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !852, file: !202, line: 125, baseType: !834, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !852, file: !202, line: 131, baseType: !857, size: 64, offset: 128)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !202, line: 128, size: 64, elements: !858)
!858 = !{!859, !1074}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !857, file: !202, line: 129, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !515, line: 66, baseType: !861)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !433, line: 143, size: 192, elements: !863)
!863 = !{!864, !1072, !1073}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !862, file: !433, line: 145, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !515, line: 69, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !433, line: 136, size: 192, elements: !868)
!868 = !{!869, !1070, !1071}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !867, file: !433, line: 137, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !515, line: 58, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !433, line: 737, size: 768, elements: !873)
!873 = !{!874, !891, !925, !931, !936, !941, !948, !954, !960, !965, !979, !984, !990, !995, !1005, !1010, !1028, !1035, !1042, !1048, !1053, !1059, !1065}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !872, file: !433, line: 738, baseType: !875, size: 256)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !433, line: 271, size: 256, elements: !876)
!876 = !{!877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !875, file: !433, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !875, file: !433, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !875, file: !433, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !875, file: !433, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !875, file: !433, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !875, file: !433, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !875, file: !433, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !875, file: !433, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !875, file: !433, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !875, file: !433, line: 312, baseType: !7, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !875, file: !433, line: 316, baseType: !684, size: 32, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !875, file: !433, line: 319, baseType: !7, size: 32, offset: 96)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !875, file: !433, line: 323, baseType: !834, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !875, file: !433, line: 327, baseType: !578, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !872, file: !433, line: 739, baseType: !892, size: 448)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !433, line: 350, size: 448, elements: !893)
!893 = !{!894, !923}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !892, file: !433, line: 353, baseType: !895, size: 384)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !433, line: 333, size: 384, elements: !896)
!896 = !{!897, !898, !906}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !895, file: !433, line: 336, baseType: !875, size: 256)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !895, file: !433, line: 343, baseType: !899, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !901, line: 37, size: 128, elements: !902)
!901 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !900, file: !901, line: 39, baseType: !899, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !900, file: !901, line: 40, baseType: !905, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !895, file: !433, line: 344, baseType: !907, size: 64, offset: 320)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !901, line: 45, size: 320, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !908, file: !901, line: 47, baseType: !907, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !908, file: !901, line: 48, baseType: !912, size: 256, offset: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !6, line: 1883, size: 256, elements: !913)
!913 = !{!914, !916, !917, !922}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !912, file: !6, line: 1884, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !912, file: !6, line: 1885, baseType: !915, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !912, file: !6, line: 1891, baseType: !918, size: 64, offset: 128)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !6, line: 1891, size: 64, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !918, file: !6, line: 1891, baseType: !870, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !918, file: !6, line: 1891, baseType: !578, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !912, file: !6, line: 1892, baseType: !905, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !892, file: !433, line: 359, baseType: !924, size: 64, offset: 384)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 64, elements: !658)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !872, file: !433, line: 740, baseType: !926, size: 512)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !433, line: 365, size: 512, elements: !927)
!927 = !{!928, !929, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !926, file: !433, line: 368, baseType: !895, size: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !926, file: !433, line: 373, baseType: !578, size: 64, offset: 384)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !926, file: !433, line: 374, baseType: !578, size: 64, offset: 448)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !872, file: !433, line: 741, baseType: !932, size: 576)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !433, line: 380, size: 576, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !932, file: !433, line: 383, baseType: !926, size: 512)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !932, file: !433, line: 389, baseType: !924, size: 64, offset: 512)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !872, file: !433, line: 742, baseType: !937, size: 320)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !433, line: 395, size: 320, elements: !938)
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !937, file: !433, line: 397, baseType: !875, size: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !937, file: !433, line: 400, baseType: !860, size: 64, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !872, file: !433, line: 743, baseType: !942, size: 448)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !433, line: 406, size: 448, elements: !943)
!943 = !{!944, !945, !946, !947}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !942, file: !433, line: 408, baseType: !875, size: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !942, file: !433, line: 412, baseType: !578, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !942, file: !433, line: 420, baseType: !578, size: 64, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !942, file: !433, line: 423, baseType: !860, size: 64, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !872, file: !433, line: 744, baseType: !949, size: 384)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !433, line: 429, size: 384, elements: !950)
!950 = !{!951, !952, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !949, file: !433, line: 431, baseType: !875, size: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !949, file: !433, line: 434, baseType: !578, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !949, file: !433, line: 437, baseType: !860, size: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !872, file: !433, line: 745, baseType: !955, size: 384)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !433, line: 443, size: 384, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !955, file: !433, line: 445, baseType: !875, size: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !955, file: !433, line: 449, baseType: !578, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !955, file: !433, line: 453, baseType: !860, size: 64, offset: 320)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !872, file: !433, line: 746, baseType: !961, size: 320)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !433, line: 459, size: 320, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !961, file: !433, line: 461, baseType: !875, size: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !961, file: !433, line: 464, baseType: !578, size: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !872, file: !433, line: 747, baseType: !966, size: 768)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !433, line: 469, size: 768, elements: !967)
!967 = !{!968, !969, !970, !971, !972}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !966, file: !433, line: 471, baseType: !875, size: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !966, file: !433, line: 474, baseType: !7, size: 32, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !966, file: !433, line: 475, baseType: !7, size: 32, offset: 288)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !966, file: !433, line: 478, baseType: !578, size: 64, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !966, file: !433, line: 481, baseType: !973, size: 384, offset: 384)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !974, size: 384, elements: !658)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !6, line: 1917, size: 384, elements: !975)
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !974, file: !6, line: 1920, baseType: !912, size: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !974, file: !6, line: 1921, baseType: !578, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !974, file: !6, line: 1922, baseType: !684, size: 32, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !872, file: !433, line: 748, baseType: !980, size: 320)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !433, line: 487, size: 320, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !980, file: !433, line: 490, baseType: !875, size: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !980, file: !433, line: 494, baseType: !506, size: 32, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !872, file: !433, line: 749, baseType: !985, size: 384)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !433, line: 500, size: 384, elements: !986)
!986 = !{!987, !988, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !985, file: !433, line: 502, baseType: !875, size: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !985, file: !433, line: 506, baseType: !860, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !985, file: !433, line: 510, baseType: !860, size: 64, offset: 320)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !872, file: !433, line: 750, baseType: !991, size: 320)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !433, line: 529, size: 320, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !991, file: !433, line: 531, baseType: !875, size: 256)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !991, file: !433, line: 540, baseType: !860, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !872, file: !433, line: 751, baseType: !996, size: 704)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !433, line: 546, size: 704, elements: !997)
!997 = !{!998, !999, !1000, !1001, !1002, !1003, !1004}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !996, file: !433, line: 549, baseType: !926, size: 512)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !996, file: !433, line: 553, baseType: !511, size: 64, offset: 512)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !996, file: !433, line: 557, baseType: !505, size: 8, offset: 576)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !996, file: !433, line: 558, baseType: !505, size: 8, offset: 584)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !996, file: !433, line: 559, baseType: !505, size: 8, offset: 592)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !996, file: !433, line: 560, baseType: !505, size: 8, offset: 600)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !996, file: !433, line: 566, baseType: !924, size: 64, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !872, file: !433, line: 752, baseType: !1006, size: 384)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !433, line: 571, size: 384, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1006, file: !433, line: 573, baseType: !937, size: 320)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1006, file: !433, line: 577, baseType: !578, size: 64, offset: 320)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !872, file: !433, line: 753, baseType: !1011, size: 576)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !433, line: 600, size: 576, elements: !1012)
!1012 = !{!1013, !1014, !1015, !1018, !1027}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1011, file: !433, line: 602, baseType: !937, size: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1011, file: !433, line: 605, baseType: !578, size: 64, offset: 320)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1011, file: !433, line: 609, baseType: !1016, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1017, line: 46, baseType: !532)
!1017 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1011, file: !433, line: 612, baseType: !1019, size: 64, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !433, line: 581, size: 320, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025, !1026}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1020, file: !433, line: 583, baseType: !5, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1020, file: !433, line: 586, baseType: !578, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1020, file: !433, line: 589, baseType: !578, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1020, file: !433, line: 592, baseType: !578, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1020, file: !433, line: 595, baseType: !578, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1011, file: !433, line: 616, baseType: !860, size: 64, offset: 512)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !872, file: !433, line: 754, baseType: !1029, size: 512)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !433, line: 622, size: 512, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1029, file: !433, line: 624, baseType: !937, size: 320)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1029, file: !433, line: 628, baseType: !578, size: 64, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1029, file: !433, line: 632, baseType: !578, size: 64, offset: 384)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1029, file: !433, line: 636, baseType: !578, size: 64, offset: 448)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !872, file: !433, line: 755, baseType: !1036, size: 704)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !433, line: 642, size: 704, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1036, file: !433, line: 644, baseType: !1029, size: 512)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1036, file: !433, line: 648, baseType: !578, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1036, file: !433, line: 652, baseType: !578, size: 64, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1036, file: !433, line: 653, baseType: !578, size: 64, offset: 640)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !872, file: !433, line: 756, baseType: !1043, size: 448)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !433, line: 663, size: 448, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1043, file: !433, line: 665, baseType: !937, size: 320)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1043, file: !433, line: 668, baseType: !578, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1043, file: !433, line: 673, baseType: !578, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !872, file: !433, line: 757, baseType: !1049, size: 384)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !433, line: 694, size: 384, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1049, file: !433, line: 696, baseType: !937, size: 320)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1049, file: !433, line: 699, baseType: !578, size: 64, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !872, file: !433, line: 758, baseType: !1054, size: 384)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !433, line: 681, size: 384, elements: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1054, file: !433, line: 683, baseType: !875, size: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1054, file: !433, line: 686, baseType: !578, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1054, file: !433, line: 689, baseType: !578, size: 64, offset: 320)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !872, file: !433, line: 759, baseType: !1060, size: 384)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !433, line: 707, size: 384, elements: !1061)
!1061 = !{!1062, !1063, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1060, file: !433, line: 709, baseType: !875, size: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1060, file: !433, line: 712, baseType: !578, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1060, file: !433, line: 712, baseType: !578, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !872, file: !433, line: 760, baseType: !1066, size: 320)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !433, line: 718, size: 320, elements: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1066, file: !433, line: 720, baseType: !875, size: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1066, file: !433, line: 723, baseType: !578, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !867, file: !433, line: 138, baseType: !866, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !867, file: !433, line: 139, baseType: !866, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !862, file: !433, line: 146, baseType: !865, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !862, file: !433, line: 152, baseType: !860, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !857, file: !202, line: 130, baseType: !734, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !852, file: !202, line: 134, baseType: !510, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !852, file: !202, line: 137, baseType: !578, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !852, file: !202, line: 138, baseType: !684, size: 32, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !852, file: !202, line: 142, baseType: !7, size: 32, offset: 352)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !852, file: !202, line: 144, baseType: !506, size: 32, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !852, file: !202, line: 145, baseType: !506, size: 32, offset: 416)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !852, file: !202, line: 146, baseType: !1082, size: 64, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !202, line: 119, baseType: !549)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !835, file: !202, line: 220, baseType: !838, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !835, file: !202, line: 223, baseType: !510, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !835, file: !202, line: 226, baseType: !1086, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !202, line: 185, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !835, file: !202, line: 229, baseType: !1089, size: 128, offset: 256)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1090, size: 128, elements: !533)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !202, line: 229, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !835, file: !202, line: 232, baseType: !834, size: 64, offset: 384)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !835, file: !202, line: 233, baseType: !834, size: 64, offset: 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !835, file: !202, line: 238, baseType: !1095, size: 64, offset: 512)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !202, line: 235, size: 64, elements: !1096)
!1096 = !{!1097, !1103}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1095, file: !202, line: 236, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !202, line: 273, size: 128, elements: !1100)
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1099, file: !202, line: 275, baseType: !860, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1099, file: !202, line: 278, baseType: !860, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1095, file: !202, line: 237, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !202, line: 259, size: 320, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1105, file: !202, line: 261, baseType: !734, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1105, file: !202, line: 262, baseType: !734, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1105, file: !202, line: 266, baseType: !734, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1105, file: !202, line: 267, baseType: !734, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1105, file: !202, line: 270, baseType: !506, size: 32, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !835, file: !202, line: 241, baseType: !1082, size: 64, offset: 576)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !835, file: !202, line: 244, baseType: !506, size: 32, offset: 640)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !835, file: !202, line: 247, baseType: !506, size: 32, offset: 672)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !835, file: !202, line: 250, baseType: !506, size: 32, offset: 704)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !835, file: !202, line: 253, baseType: !506, size: 32, offset: 736)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !835, file: !202, line: 256, baseType: !506, size: 32, offset: 768)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !830, file: !202, line: 378, baseType: !833, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !830, file: !202, line: 381, baseType: !1120, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !202, line: 282, baseType: !1122)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !202, line: 282, size: 128, elements: !1123)
!1123 = !{!1124}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1122, file: !202, line: 282, baseType: !1125, size: 128)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !202, line: 281, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !202, line: 281, size: 128, elements: !1127)
!1127 = !{!1128, !1129, !1130}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1126, file: !202, line: 281, baseType: !7, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1126, file: !202, line: 281, baseType: !7, size: 32, offset: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1126, file: !202, line: 281, baseType: !1131, size: 64, offset: 64)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !833, size: 64, elements: !658)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !830, file: !202, line: 384, baseType: !506, size: 32, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !830, file: !202, line: 387, baseType: !506, size: 32, offset: 224)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !830, file: !202, line: 390, baseType: !506, size: 32, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !830, file: !202, line: 394, baseType: !1120, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !830, file: !202, line: 396, baseType: !201, size: 32, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !830, file: !202, line: 399, baseType: !1138, size: 64, offset: 416)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !533)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !830, file: !202, line: 402, baseType: !1140, size: 64, offset: 480)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !533)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !830, file: !202, line: 406, baseType: !506, size: 32, offset: 544)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !830, file: !202, line: 409, baseType: !506, size: 32, offset: 576)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !822, file: !823, line: 470, baseType: !861, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !822, file: !823, line: 473, baseType: !1145, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !773, line: 39, size: 1152, elements: !1147)
!1147 = !{!1148, !1198, !1211, !1223, !1224, !1235, !1236, !1240, !1241, !1242, !1243, !1244}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1146, file: !773, line: 41, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1150, line: 144, baseType: !1151)
!1150 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1150, line: 100, size: 896, elements: !1153)
!1153 = !{!1154, !1162, !1167, !1172, !1174, !1175, !1176, !1177, !1178, !1179, !1184, !1186, !1187, !1192, !1197}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1152, file: !1150, line: 102, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1150, line: 52, baseType: !1156)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1150, line: 47, baseType: !7)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1152, file: !1150, line: 105, baseType: !1163, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1150, line: 59, baseType: !1164)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!506, !1160, !1160}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1152, file: !1150, line: 108, baseType: !1168, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1150, line: 63, baseType: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !510}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1152, file: !1150, line: 111, baseType: !1173, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1152, file: !1150, line: 114, baseType: !1016, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1152, file: !1150, line: 117, baseType: !1016, size: 64, offset: 320)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1152, file: !1150, line: 120, baseType: !1016, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1152, file: !1150, line: 124, baseType: !7, size: 32, offset: 448)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1152, file: !1150, line: 128, baseType: !7, size: 32, offset: 480)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1152, file: !1150, line: 131, baseType: !1180, size: 64, offset: 512)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1150, line: 75, baseType: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!510, !1016, !1016}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1152, file: !1150, line: 132, baseType: !1185, size: 64, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1150, line: 78, baseType: !1169)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1152, file: !1150, line: 135, baseType: !510, size: 64, offset: 640)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1152, file: !1150, line: 136, baseType: !1188, size: 64, offset: 704)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1150, line: 82, baseType: !1189)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!510, !510, !1016, !1016}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1152, file: !1150, line: 137, baseType: !1193, size: 64, offset: 768)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1150, line: 83, baseType: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !510, !510}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1152, file: !1150, line: 141, baseType: !7, size: 32, offset: 832)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1146, file: !773, line: 48, baseType: !1199, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !433, line: 35, baseType: !1201)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !433, line: 35, size: 128, elements: !1202)
!1202 = !{!1203}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1201, file: !433, line: 35, baseType: !1204, size: 128)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !433, line: 33, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !433, line: 33, size: 128, elements: !1206)
!1206 = !{!1207, !1208, !1209}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1205, file: !433, line: 33, baseType: !7, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1205, file: !433, line: 33, baseType: !7, size: 32, offset: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1205, file: !433, line: 33, baseType: !1210, size: 64, offset: 64)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 64, elements: !658)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1146, file: !773, line: 51, baseType: !1212, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !6, line: 183, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !6, line: 183, size: 128, elements: !1215)
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1214, file: !6, line: 183, baseType: !1217, size: 128)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !6, line: 182, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !6, line: 182, size: 128, elements: !1219)
!1219 = !{!1220, !1221, !1222}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1218, file: !6, line: 182, baseType: !7, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1218, file: !6, line: 182, baseType: !7, size: 32, offset: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1218, file: !6, line: 182, baseType: !924, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1146, file: !773, line: 54, baseType: !578, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1146, file: !773, line: 57, baseType: !1225, size: 128, offset: 256)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1226, line: 31, size: 128, elements: !1227)
!1226 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1233, !1234}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1225, file: !1226, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1225, file: !1226, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1225, file: !1226, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1225, file: !1226, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1225, file: !1226, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1225, file: !1226, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1225, file: !1226, line: 56, baseType: !514, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1146, file: !773, line: 60, baseType: !1225, size: 128, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1146, file: !773, line: 64, baseType: !1237, size: 64, offset: 512)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1239, line: 33, flags: DIFlagFwdDecl)
!1239 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1146, file: !773, line: 67, baseType: !578, size: 64, offset: 576)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1146, file: !773, line: 73, baseType: !1149, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1146, file: !773, line: 77, baseType: !514, size: 64, offset: 704)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1146, file: !773, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1146, file: !773, line: 82, baseType: !1245, size: 320, offset: 832)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !901, line: 62, size: 320, elements: !1246)
!1246 = !{!1247, !1253, !1254, !1255, !1256, !1257}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1245, file: !901, line: 63, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !901, line: 56, size: 128, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1249, file: !901, line: 57, baseType: !1248, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1249, file: !901, line: 58, baseType: !657, size: 8, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1245, file: !901, line: 64, baseType: !7, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1245, file: !901, line: 66, baseType: !7, size: 32, offset: 96)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1245, file: !901, line: 68, baseType: !505, size: 8, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1245, file: !901, line: 70, baseType: !899, size: 64, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1245, file: !901, line: 71, baseType: !907, size: 64, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !822, file: !823, line: 476, baseType: !1259, size: 64, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !823, line: 476, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !822, file: !823, line: 479, baseType: !1149, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !822, file: !823, line: 484, baseType: !578, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !822, file: !823, line: 488, baseType: !578, size: 64, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !822, file: !823, line: 493, baseType: !578, size: 64, offset: 512)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !822, file: !823, line: 496, baseType: !578, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !822, file: !823, line: 501, baseType: !1267, size: 64, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !213, line: 2355, size: 576, elements: !1269)
!1269 = !{!1270, !1273, !1274, !1275, !1276, !1278, !1279, !1284, !1285, !1286, !1287, !1288, !1289}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1268, file: !213, line: 2356, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !213, line: 2356, flags: DIFlagFwdDecl)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1268, file: !213, line: 2357, baseType: !511, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1268, file: !213, line: 2358, baseType: !506, size: 32, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1268, file: !213, line: 2359, baseType: !506, size: 32, offset: 160)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1268, file: !213, line: 2360, baseType: !1277, size: 128, offset: 192)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 128, elements: !558)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1268, file: !213, line: 2364, baseType: !506, size: 32, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1268, file: !213, line: 2367, baseType: !1280, size: 128, offset: 384)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !213, line: 2349, size: 128, elements: !1281)
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1280, file: !213, line: 2351, baseType: !734, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1280, file: !213, line: 2352, baseType: !549, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1268, file: !213, line: 2371, baseType: !212, size: 32, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1268, file: !213, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1268, file: !213, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1268, file: !213, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1268, file: !213, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1268, file: !213, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !822, file: !823, line: 504, baseType: !1291, size: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !823, line: 504, flags: DIFlagFwdDecl)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !822, file: !823, line: 507, baseType: !1149, size: 64, offset: 768)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !822, file: !823, line: 510, baseType: !506, size: 32, offset: 832)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !822, file: !823, line: 513, baseType: !506, size: 32, offset: 864)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !822, file: !823, line: 516, baseType: !684, size: 32, offset: 896)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !822, file: !823, line: 519, baseType: !684, size: 32, offset: 928)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !822, file: !823, line: 522, baseType: !7, size: 32, offset: 960)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !822, file: !823, line: 523, baseType: !7, size: 32, offset: 992)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !822, file: !823, line: 528, baseType: !511, size: 64, offset: 1024)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !822, file: !823, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !822, file: !823, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !822, file: !823, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !822, file: !823, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !822, file: !823, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !822, file: !823, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !822, file: !823, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !822, file: !823, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !822, file: !823, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !822, file: !823, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !822, file: !823, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !822, file: !823, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !822, file: !823, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !822, file: !823, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !822, file: !823, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !822, file: !823, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !817, file: !6, line: 3254, baseType: !578, size: 64, offset: 1536)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !817, file: !6, line: 3257, baseType: !578, size: 64, offset: 1600)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !817, file: !6, line: 3258, baseType: !578, size: 64, offset: 1664)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !817, file: !6, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !817, file: !6, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !817, file: !6, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !817, file: !6, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !817, file: !6, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !817, file: !6, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !817, file: !6, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !817, file: !6, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !817, file: !6, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !817, file: !6, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !817, file: !6, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !817, file: !6, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !817, file: !6, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !817, file: !6, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !817, file: !6, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !817, file: !6, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !817, file: !6, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !817, file: !6, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !6, line: 3394, baseType: !1339, size: 1344)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !6, line: 2279, size: 1344, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1366, !1367, !1368, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1339, file: !6, line: 2280, baseType: !616, size: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1339, file: !6, line: 2281, baseType: !578, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1339, file: !6, line: 2282, baseType: !578, size: 64, offset: 256)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1339, file: !6, line: 2283, baseType: !578, size: 64, offset: 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1339, file: !6, line: 2284, baseType: !578, size: 64, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1339, file: !6, line: 2285, baseType: !7, size: 32, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1339, file: !6, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1339, file: !6, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1339, file: !6, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1339, file: !6, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1339, file: !6, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1339, file: !6, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1339, file: !6, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1339, file: !6, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1339, file: !6, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1339, file: !6, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1339, file: !6, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1339, file: !6, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1339, file: !6, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1339, file: !6, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1339, file: !6, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1339, file: !6, line: 2305, baseType: !7, size: 32, offset: 512)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1339, file: !6, line: 2306, baseType: !1364, size: 32, offset: 544)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1365, line: 31, baseType: !506)
!1365 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1339, file: !6, line: 2307, baseType: !578, size: 64, offset: 576)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1339, file: !6, line: 2308, baseType: !578, size: 64, offset: 640)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1339, file: !6, line: 2314, baseType: !1369, size: 64, offset: 704)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !6, line: 2309, size: 64, elements: !1370)
!1370 = !{!1371, !1372, !1373}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1369, file: !6, line: 2310, baseType: !506, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1369, file: !6, line: 2311, baseType: !511, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1369, file: !6, line: 2312, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !6, line: 2277, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1339, file: !6, line: 2315, baseType: !578, size: 64, offset: 768)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1339, file: !6, line: 2316, baseType: !578, size: 64, offset: 832)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1339, file: !6, line: 2317, baseType: !578, size: 64, offset: 896)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1339, file: !6, line: 2318, baseType: !578, size: 64, offset: 960)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1339, file: !6, line: 2319, baseType: !578, size: 64, offset: 1024)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1339, file: !6, line: 2320, baseType: !578, size: 64, offset: 1088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1339, file: !6, line: 2321, baseType: !578, size: 64, offset: 1152)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1339, file: !6, line: 2322, baseType: !578, size: 64, offset: 1216)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1339, file: !6, line: 2324, baseType: !1385, size: 64, offset: 1280)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !6, line: 2324, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !580, file: !6, line: 3395, baseType: !1388, size: 320)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !6, line: 1469, size: 320, elements: !1389)
!1389 = !{!1390, !1391, !1392}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1388, file: !6, line: 1470, baseType: !616, size: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1388, file: !6, line: 1471, baseType: !578, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1388, file: !6, line: 1472, baseType: !578, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !580, file: !6, line: 3396, baseType: !1394, size: 320)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !6, line: 1482, size: 320, elements: !1395)
!1395 = !{!1396, !1397, !1398}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1394, file: !6, line: 1483, baseType: !616, size: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1394, file: !6, line: 1484, baseType: !506, size: 32, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1394, file: !6, line: 1485, baseType: !924, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !580, file: !6, line: 3397, baseType: !1400, size: 384)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !6, line: 1829, size: 384, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1405}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1400, file: !6, line: 1830, baseType: !616, size: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1400, file: !6, line: 1831, baseType: !684, size: 32, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1400, file: !6, line: 1832, baseType: !578, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1400, file: !6, line: 1835, baseType: !924, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !580, file: !6, line: 3398, baseType: !1407, size: 704)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !6, line: 1898, size: 704, elements: !1408)
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1418}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1407, file: !6, line: 1899, baseType: !616, size: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1407, file: !6, line: 1902, baseType: !578, size: 64, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1407, file: !6, line: 1905, baseType: !870, size: 64, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1407, file: !6, line: 1908, baseType: !7, size: 32, offset: 320)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1407, file: !6, line: 1911, baseType: !1414, size: 64, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !773, line: 117, size: 128, elements: !1416)
!1416 = !{!1417}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1415, file: !773, line: 120, baseType: !1225, size: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1407, file: !6, line: 1914, baseType: !912, size: 256, offset: 448)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !580, file: !6, line: 3399, baseType: !1420, size: 704)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !6, line: 2008, size: 704, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1420, file: !6, line: 2009, baseType: !616, size: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1420, file: !6, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1420, file: !6, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1420, file: !6, line: 2014, baseType: !684, size: 32, offset: 224)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1420, file: !6, line: 2016, baseType: !578, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1420, file: !6, line: 2017, baseType: !1212, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1420, file: !6, line: 2019, baseType: !578, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1420, file: !6, line: 2020, baseType: !578, size: 64, offset: 448)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1420, file: !6, line: 2021, baseType: !578, size: 64, offset: 512)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1420, file: !6, line: 2022, baseType: !578, size: 64, offset: 576)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1420, file: !6, line: 2023, baseType: !578, size: 64, offset: 640)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !580, file: !6, line: 3400, baseType: !1434, size: 832)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !6, line: 2430, size: 832, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1434, file: !6, line: 2431, baseType: !616, size: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1434, file: !6, line: 2433, baseType: !578, size: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1434, file: !6, line: 2434, baseType: !578, size: 64, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1434, file: !6, line: 2435, baseType: !578, size: 64, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1434, file: !6, line: 2436, baseType: !578, size: 64, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1434, file: !6, line: 2437, baseType: !1212, size: 64, offset: 448)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1434, file: !6, line: 2438, baseType: !578, size: 64, offset: 512)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1434, file: !6, line: 2440, baseType: !578, size: 64, offset: 576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1434, file: !6, line: 2441, baseType: !578, size: 64, offset: 640)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1434, file: !6, line: 2443, baseType: !1446, size: 128, offset: 704)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !6, line: 182, baseType: !1447)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !6, line: 182, size: 128, elements: !1448)
!1448 = !{!1449}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1447, file: !6, line: 182, baseType: !1217, size: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !580, file: !6, line: 3401, baseType: !1451, size: 320)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !6, line: 3327, size: 320, elements: !1452)
!1452 = !{!1453, !1454, !1461}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1451, file: !6, line: 3329, baseType: !616, size: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1451, file: !6, line: 3330, baseType: !1455, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !6, line: 3320, size: 192, elements: !1457)
!1457 = !{!1458, !1459, !1460}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1456, file: !6, line: 3322, baseType: !1455, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1456, file: !6, line: 3323, baseType: !1455, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1456, file: !6, line: 3324, baseType: !578, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1451, file: !6, line: 3331, baseType: !1455, size: 64, offset: 256)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !580, file: !6, line: 3402, baseType: !1463, size: 256)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !6, line: 1540, size: 256, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1463, file: !6, line: 1541, baseType: !616, size: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1463, file: !6, line: 1542, baseType: !1467, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !6, line: 1538, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !6, line: 1538, size: 192, elements: !1470)
!1470 = !{!1471}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1469, file: !6, line: 1538, baseType: !1472, size: 192)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !6, line: 1537, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !6, line: 1537, size: 192, elements: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1473, file: !6, line: 1537, baseType: !7, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1473, file: !6, line: 1537, baseType: !7, size: 32, offset: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1473, file: !6, line: 1537, baseType: !1478, size: 128, offset: 64)
!1478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1479, size: 128, elements: !658)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !6, line: 1535, baseType: !1480)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !6, line: 1532, size: 128, elements: !1481)
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1480, file: !6, line: 1533, baseType: !578, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1480, file: !6, line: 1534, baseType: !578, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !580, file: !6, line: 3403, baseType: !1485, size: 512)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !6, line: 1938, size: 512, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1490, !1496, !1497, !1498}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1485, file: !6, line: 1939, baseType: !616, size: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1485, file: !6, line: 1940, baseType: !684, size: 32, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1485, file: !6, line: 1941, baseType: !217, size: 32, offset: 224)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1485, file: !6, line: 1946, baseType: !1491, size: 32, offset: 256)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !6, line: 1942, size: 32, elements: !1492)
!1492 = !{!1493, !1494, !1495}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1491, file: !6, line: 1943, baseType: !235, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1491, file: !6, line: 1944, baseType: !242, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1491, file: !6, line: 1945, baseType: !5, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1485, file: !6, line: 1950, baseType: !860, size: 64, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1485, file: !6, line: 1951, baseType: !860, size: 64, offset: 384)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1485, file: !6, line: 1953, baseType: !924, size: 64, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !580, file: !6, line: 3404, baseType: !1500, size: 1664)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !6, line: 3337, size: 1664, elements: !1501)
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1500, file: !6, line: 3338, baseType: !616, size: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1500, file: !6, line: 3341, baseType: !1504, size: 1472, offset: 192)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1505, line: 410, size: 1472, elements: !1506)
!1505 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1506 = !{!1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1504, file: !1505, line: 412, baseType: !506, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1504, file: !1505, line: 413, baseType: !506, size: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1504, file: !1505, line: 414, baseType: !506, size: 32, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1504, file: !1505, line: 415, baseType: !506, size: 32, offset: 96)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1504, file: !1505, line: 416, baseType: !506, size: 32, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1504, file: !1505, line: 417, baseType: !506, size: 32, offset: 160)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1504, file: !1505, line: 418, baseType: !505, size: 8, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1504, file: !1505, line: 419, baseType: !505, size: 8, offset: 200)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1504, file: !1505, line: 420, baseType: !1516, size: 8, offset: 208)
!1516 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1504, file: !1505, line: 421, baseType: !1516, size: 8, offset: 216)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1504, file: !1505, line: 422, baseType: !1516, size: 8, offset: 224)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1504, file: !1505, line: 423, baseType: !1516, size: 8, offset: 232)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1504, file: !1505, line: 424, baseType: !1516, size: 8, offset: 240)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1504, file: !1505, line: 425, baseType: !1516, size: 8, offset: 248)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1504, file: !1505, line: 426, baseType: !1516, size: 8, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1504, file: !1505, line: 427, baseType: !1516, size: 8, offset: 264)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1504, file: !1505, line: 428, baseType: !1516, size: 8, offset: 272)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1504, file: !1505, line: 429, baseType: !1516, size: 8, offset: 280)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1504, file: !1505, line: 430, baseType: !1516, size: 8, offset: 288)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1504, file: !1505, line: 431, baseType: !1516, size: 8, offset: 296)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1504, file: !1505, line: 432, baseType: !1516, size: 8, offset: 304)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1504, file: !1505, line: 433, baseType: !1516, size: 8, offset: 312)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1504, file: !1505, line: 434, baseType: !1516, size: 8, offset: 320)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1504, file: !1505, line: 435, baseType: !1516, size: 8, offset: 328)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1504, file: !1505, line: 436, baseType: !1516, size: 8, offset: 336)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1504, file: !1505, line: 437, baseType: !1516, size: 8, offset: 344)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1504, file: !1505, line: 438, baseType: !1516, size: 8, offset: 352)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1504, file: !1505, line: 439, baseType: !1516, size: 8, offset: 360)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1504, file: !1505, line: 440, baseType: !1516, size: 8, offset: 368)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1504, file: !1505, line: 441, baseType: !1516, size: 8, offset: 376)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1504, file: !1505, line: 442, baseType: !1516, size: 8, offset: 384)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1504, file: !1505, line: 443, baseType: !1516, size: 8, offset: 392)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1504, file: !1505, line: 444, baseType: !1516, size: 8, offset: 400)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1504, file: !1505, line: 445, baseType: !1516, size: 8, offset: 408)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1504, file: !1505, line: 446, baseType: !1516, size: 8, offset: 416)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1504, file: !1505, line: 447, baseType: !1516, size: 8, offset: 424)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1504, file: !1505, line: 448, baseType: !1516, size: 8, offset: 432)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1504, file: !1505, line: 449, baseType: !1516, size: 8, offset: 440)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1504, file: !1505, line: 450, baseType: !1516, size: 8, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1504, file: !1505, line: 451, baseType: !1516, size: 8, offset: 456)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1504, file: !1505, line: 452, baseType: !1516, size: 8, offset: 464)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1504, file: !1505, line: 453, baseType: !1516, size: 8, offset: 472)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1504, file: !1505, line: 454, baseType: !1516, size: 8, offset: 480)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1504, file: !1505, line: 455, baseType: !1516, size: 8, offset: 488)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1504, file: !1505, line: 456, baseType: !1516, size: 8, offset: 496)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1504, file: !1505, line: 457, baseType: !1516, size: 8, offset: 504)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1504, file: !1505, line: 458, baseType: !1516, size: 8, offset: 512)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1504, file: !1505, line: 459, baseType: !1516, size: 8, offset: 520)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1504, file: !1505, line: 460, baseType: !1516, size: 8, offset: 528)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1504, file: !1505, line: 461, baseType: !1516, size: 8, offset: 536)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1504, file: !1505, line: 462, baseType: !1516, size: 8, offset: 544)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1504, file: !1505, line: 463, baseType: !1516, size: 8, offset: 552)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1504, file: !1505, line: 464, baseType: !1516, size: 8, offset: 560)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1504, file: !1505, line: 465, baseType: !1516, size: 8, offset: 568)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1504, file: !1505, line: 466, baseType: !1516, size: 8, offset: 576)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1504, file: !1505, line: 467, baseType: !1516, size: 8, offset: 584)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1504, file: !1505, line: 468, baseType: !1516, size: 8, offset: 592)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1504, file: !1505, line: 469, baseType: !1516, size: 8, offset: 600)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1504, file: !1505, line: 470, baseType: !1516, size: 8, offset: 608)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1504, file: !1505, line: 471, baseType: !1516, size: 8, offset: 616)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1504, file: !1505, line: 472, baseType: !1516, size: 8, offset: 624)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1504, file: !1505, line: 473, baseType: !1516, size: 8, offset: 632)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1504, file: !1505, line: 474, baseType: !1516, size: 8, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1504, file: !1505, line: 475, baseType: !1516, size: 8, offset: 648)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1504, file: !1505, line: 476, baseType: !1516, size: 8, offset: 656)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1504, file: !1505, line: 477, baseType: !1516, size: 8, offset: 664)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1504, file: !1505, line: 478, baseType: !1516, size: 8, offset: 672)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1504, file: !1505, line: 479, baseType: !1516, size: 8, offset: 680)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1504, file: !1505, line: 480, baseType: !1516, size: 8, offset: 688)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1504, file: !1505, line: 481, baseType: !1516, size: 8, offset: 696)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1504, file: !1505, line: 482, baseType: !1516, size: 8, offset: 704)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1504, file: !1505, line: 483, baseType: !1516, size: 8, offset: 712)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1504, file: !1505, line: 484, baseType: !1516, size: 8, offset: 720)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1504, file: !1505, line: 485, baseType: !1516, size: 8, offset: 728)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1504, file: !1505, line: 486, baseType: !1516, size: 8, offset: 736)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1504, file: !1505, line: 487, baseType: !1516, size: 8, offset: 744)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1504, file: !1505, line: 488, baseType: !1516, size: 8, offset: 752)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1504, file: !1505, line: 489, baseType: !1516, size: 8, offset: 760)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1504, file: !1505, line: 490, baseType: !1516, size: 8, offset: 768)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1504, file: !1505, line: 491, baseType: !1516, size: 8, offset: 776)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1504, file: !1505, line: 492, baseType: !1516, size: 8, offset: 784)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1504, file: !1505, line: 493, baseType: !1516, size: 8, offset: 792)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1504, file: !1505, line: 494, baseType: !1516, size: 8, offset: 800)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1504, file: !1505, line: 495, baseType: !1516, size: 8, offset: 808)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1504, file: !1505, line: 496, baseType: !1516, size: 8, offset: 816)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1504, file: !1505, line: 497, baseType: !1516, size: 8, offset: 824)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1504, file: !1505, line: 498, baseType: !1516, size: 8, offset: 832)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1504, file: !1505, line: 499, baseType: !1516, size: 8, offset: 840)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1504, file: !1505, line: 500, baseType: !1516, size: 8, offset: 848)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1504, file: !1505, line: 501, baseType: !1516, size: 8, offset: 856)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1504, file: !1505, line: 502, baseType: !1516, size: 8, offset: 864)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1504, file: !1505, line: 503, baseType: !1516, size: 8, offset: 872)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1504, file: !1505, line: 504, baseType: !1516, size: 8, offset: 880)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1504, file: !1505, line: 505, baseType: !1516, size: 8, offset: 888)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1504, file: !1505, line: 506, baseType: !1516, size: 8, offset: 896)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1504, file: !1505, line: 507, baseType: !1516, size: 8, offset: 904)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1504, file: !1505, line: 508, baseType: !1516, size: 8, offset: 912)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1504, file: !1505, line: 509, baseType: !1516, size: 8, offset: 920)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1504, file: !1505, line: 510, baseType: !1516, size: 8, offset: 928)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1504, file: !1505, line: 511, baseType: !1516, size: 8, offset: 936)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1504, file: !1505, line: 512, baseType: !1516, size: 8, offset: 944)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1504, file: !1505, line: 513, baseType: !1516, size: 8, offset: 952)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1504, file: !1505, line: 514, baseType: !1516, size: 8, offset: 960)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1504, file: !1505, line: 515, baseType: !1516, size: 8, offset: 968)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1504, file: !1505, line: 516, baseType: !1516, size: 8, offset: 976)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1504, file: !1505, line: 517, baseType: !1516, size: 8, offset: 984)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1504, file: !1505, line: 518, baseType: !1516, size: 8, offset: 992)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1504, file: !1505, line: 519, baseType: !1516, size: 8, offset: 1000)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1504, file: !1505, line: 520, baseType: !1516, size: 8, offset: 1008)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1504, file: !1505, line: 521, baseType: !1516, size: 8, offset: 1016)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1504, file: !1505, line: 522, baseType: !1516, size: 8, offset: 1024)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1504, file: !1505, line: 523, baseType: !1516, size: 8, offset: 1032)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1504, file: !1505, line: 524, baseType: !1516, size: 8, offset: 1040)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1504, file: !1505, line: 525, baseType: !1516, size: 8, offset: 1048)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1504, file: !1505, line: 526, baseType: !1516, size: 8, offset: 1056)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1504, file: !1505, line: 527, baseType: !1516, size: 8, offset: 1064)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1504, file: !1505, line: 528, baseType: !1516, size: 8, offset: 1072)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1504, file: !1505, line: 529, baseType: !1516, size: 8, offset: 1080)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1504, file: !1505, line: 530, baseType: !1516, size: 8, offset: 1088)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1504, file: !1505, line: 531, baseType: !1516, size: 8, offset: 1096)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1504, file: !1505, line: 532, baseType: !1516, size: 8, offset: 1104)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1504, file: !1505, line: 533, baseType: !1516, size: 8, offset: 1112)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1504, file: !1505, line: 534, baseType: !1516, size: 8, offset: 1120)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1504, file: !1505, line: 535, baseType: !1516, size: 8, offset: 1128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1504, file: !1505, line: 536, baseType: !1516, size: 8, offset: 1136)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1504, file: !1505, line: 537, baseType: !1516, size: 8, offset: 1144)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1504, file: !1505, line: 538, baseType: !1516, size: 8, offset: 1152)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1504, file: !1505, line: 539, baseType: !1516, size: 8, offset: 1160)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1504, file: !1505, line: 540, baseType: !1516, size: 8, offset: 1168)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1504, file: !1505, line: 541, baseType: !1516, size: 8, offset: 1176)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1504, file: !1505, line: 542, baseType: !1516, size: 8, offset: 1184)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1504, file: !1505, line: 543, baseType: !1516, size: 8, offset: 1192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1504, file: !1505, line: 544, baseType: !1516, size: 8, offset: 1200)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1504, file: !1505, line: 545, baseType: !1516, size: 8, offset: 1208)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1504, file: !1505, line: 546, baseType: !1516, size: 8, offset: 1216)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1504, file: !1505, line: 547, baseType: !1516, size: 8, offset: 1224)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1504, file: !1505, line: 548, baseType: !1516, size: 8, offset: 1232)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1504, file: !1505, line: 549, baseType: !1516, size: 8, offset: 1240)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1504, file: !1505, line: 550, baseType: !1516, size: 8, offset: 1248)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1504, file: !1505, line: 551, baseType: !1516, size: 8, offset: 1256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1504, file: !1505, line: 552, baseType: !1516, size: 8, offset: 1264)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1504, file: !1505, line: 553, baseType: !1516, size: 8, offset: 1272)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1504, file: !1505, line: 554, baseType: !1516, size: 8, offset: 1280)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1504, file: !1505, line: 555, baseType: !1516, size: 8, offset: 1288)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1504, file: !1505, line: 556, baseType: !1516, size: 8, offset: 1296)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1504, file: !1505, line: 557, baseType: !1516, size: 8, offset: 1304)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1504, file: !1505, line: 558, baseType: !1516, size: 8, offset: 1312)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1504, file: !1505, line: 559, baseType: !1516, size: 8, offset: 1320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1504, file: !1505, line: 560, baseType: !1516, size: 8, offset: 1328)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1504, file: !1505, line: 561, baseType: !1516, size: 8, offset: 1336)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1504, file: !1505, line: 562, baseType: !1516, size: 8, offset: 1344)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1504, file: !1505, line: 563, baseType: !1516, size: 8, offset: 1352)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1504, file: !1505, line: 564, baseType: !1516, size: 8, offset: 1360)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1504, file: !1505, line: 565, baseType: !1516, size: 8, offset: 1368)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1504, file: !1505, line: 566, baseType: !1516, size: 8, offset: 1376)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1504, file: !1505, line: 567, baseType: !1516, size: 8, offset: 1384)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1504, file: !1505, line: 568, baseType: !1516, size: 8, offset: 1392)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1504, file: !1505, line: 569, baseType: !1516, size: 8, offset: 1400)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1504, file: !1505, line: 570, baseType: !1516, size: 8, offset: 1408)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1504, file: !1505, line: 571, baseType: !1516, size: 8, offset: 1416)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1504, file: !1505, line: 572, baseType: !1516, size: 8, offset: 1424)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1504, file: !1505, line: 573, baseType: !1516, size: 8, offset: 1432)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1504, file: !1505, line: 574, baseType: !1516, size: 8, offset: 1440)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !580, file: !6, line: 3405, baseType: !1672, size: 384)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !6, line: 3352, size: 384, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1672, file: !6, line: 3353, baseType: !616, size: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1672, file: !6, line: 3356, baseType: !1676, size: 192, offset: 192)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1505, line: 578, size: 192, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1676, file: !1505, line: 580, baseType: !506, size: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1676, file: !1505, line: 581, baseType: !506, size: 32, offset: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1676, file: !1505, line: 582, baseType: !506, size: 32, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1676, file: !1505, line: 583, baseType: !506, size: 32, offset: 96)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1676, file: !1505, line: 584, baseType: !505, size: 8, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1676, file: !1505, line: 585, baseType: !505, size: 8, offset: 136)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1676, file: !1505, line: 586, baseType: !505, size: 8, offset: 144)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1676, file: !1505, line: 587, baseType: !505, size: 8, offset: 152)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1676, file: !1505, line: 588, baseType: !505, size: 8, offset: 160)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1676, file: !1505, line: 589, baseType: !505, size: 8, offset: 168)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1676, file: !1505, line: 590, baseType: !505, size: 8, offset: 176)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !872)
!1691 = !{!1692, !1720, !1723, !0, !1726}
!1692 = !DIGlobalVariableExpression(var: !1693, expr: !DIExpression())
!1693 = distinct !DIGlobalVariable(name: "pass_object_sizes", scope: !2, file: !3, line: 1239, type: !1694, isLocal: false, isDefinition: true)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !250, line: 156, size: 640, elements: !1695)
!1695 = !{!1696}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1694, file: !250, line: 158, baseType: !1697, size: 640)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !250, line: 114, size: 640, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1705, !1709, !1711, !1712, !1713, !1715, !1716, !1717, !1718, !1719}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1697, file: !250, line: 117, baseType: !249, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1697, file: !250, line: 121, baseType: !511, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1697, file: !250, line: 125, baseType: !1702, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!505}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1697, file: !250, line: 130, baseType: !1706, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!7}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1697, file: !250, line: 133, baseType: !1710, size: 64, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1697, file: !250, line: 136, baseType: !1710, size: 64, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1697, file: !250, line: 139, baseType: !506, size: 32, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1697, file: !250, line: 143, baseType: !1714, size: 32, offset: 416)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !257, line: 80, baseType: !256)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1697, file: !250, line: 146, baseType: !7, size: 32, offset: 448)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1697, file: !250, line: 147, baseType: !7, size: 32, offset: 480)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1697, file: !250, line: 148, baseType: !7, size: 32, offset: 512)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1697, file: !250, line: 151, baseType: !7, size: 32, offset: 544)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1697, file: !250, line: 152, baseType: !7, size: 32, offset: 576)
!1720 = !DIGlobalVariableExpression(var: !1721, expr: !DIExpression())
!1721 = distinct !DIGlobalVariable(name: "object_sizes", scope: !2, file: !3, line: 68, type: !1722, isLocal: true, isDefinition: true)
!1722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 256, elements: !558)
!1723 = !DIGlobalVariableExpression(var: !1724, expr: !DIExpression())
!1724 = distinct !DIGlobalVariable(name: "computed", scope: !2, file: !3, line: 71, type: !1725, isLocal: true, isDefinition: true)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 256, elements: !558)
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(name: "unknown", scope: !2, file: !3, line: 43, type: !1728, isLocal: true, isDefinition: true)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 256, elements: !558)
!1729 = !{i32 2, !"Dwarf Version", i32 4}
!1730 = !{i32 2, !"Debug Info Version", i32 3}
!1731 = !{i32 1, !"wchar_size", i32 4}
!1732 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1733 = distinct !DISubprogram(name: "vprintf", scope: !1734, file: !1734, line: 39, type: !1735, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1745)
!1734 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!506, !1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !511)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1740)
!1740 = !{!1741, !1742, !1743, !1744}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1739, file: !3, baseType: !7, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1739, file: !3, baseType: !7, size: 32, offset: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1739, file: !3, baseType: !510, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1739, file: !3, baseType: !510, size: 64, offset: 128)
!1745 = !{!1746, !1747}
!1746 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1733, file: !1734, line: 39, type: !1737)
!1747 = !DILocalVariable(name: "__arg", arg: 2, scope: !1733, file: !1734, line: 39, type: !1738)
!1748 = !DILocation(line: 0, scope: !1733)
!1749 = !DILocation(line: 41, column: 20, scope: !1733)
!1750 = !DILocation(line: 41, column: 10, scope: !1733)
!1751 = !DILocation(line: 41, column: 3, scope: !1733)
!1752 = distinct !DISubprogram(name: "getchar", scope: !1734, file: !1734, line: 47, type: !1753, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1755)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!506}
!1755 = !{}
!1756 = !DILocation(line: 49, column: 16, scope: !1752)
!1757 = !DILocation(line: 49, column: 10, scope: !1752)
!1758 = !DILocation(line: 49, column: 3, scope: !1752)
!1759 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1734, file: !1734, line: 56, type: !1760, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1813)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!506, !1762}
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1764, line: 7, baseType: !1765)
!1764 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1766, line: 49, size: 1728, elements: !1767)
!1766 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1783, !1785, !1786, !1787, !1790, !1792, !1793, !1794, !1797, !1799, !1802, !1805, !1806, !1807, !1808, !1809}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1765, file: !1766, line: 51, baseType: !506, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1765, file: !1766, line: 54, baseType: !508, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1765, file: !1766, line: 55, baseType: !508, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1765, file: !1766, line: 56, baseType: !508, size: 64, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1765, file: !1766, line: 57, baseType: !508, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1765, file: !1766, line: 58, baseType: !508, size: 64, offset: 320)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1765, file: !1766, line: 59, baseType: !508, size: 64, offset: 384)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1765, file: !1766, line: 60, baseType: !508, size: 64, offset: 448)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1765, file: !1766, line: 61, baseType: !508, size: 64, offset: 512)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1765, file: !1766, line: 64, baseType: !508, size: 64, offset: 576)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1765, file: !1766, line: 65, baseType: !508, size: 64, offset: 640)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1765, file: !1766, line: 66, baseType: !508, size: 64, offset: 704)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1765, file: !1766, line: 68, baseType: !1781, size: 64, offset: 768)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1766, line: 36, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1765, file: !1766, line: 70, baseType: !1784, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1765, file: !1766, line: 72, baseType: !506, size: 32, offset: 896)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1765, file: !1766, line: 73, baseType: !506, size: 32, offset: 928)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1765, file: !1766, line: 74, baseType: !1788, size: 64, offset: 960)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1789, line: 152, baseType: !549)
!1789 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1765, file: !1766, line: 77, baseType: !1791, size: 16, offset: 1024)
!1791 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1765, file: !1766, line: 78, baseType: !1516, size: 8, offset: 1040)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1765, file: !1766, line: 79, baseType: !657, size: 8, offset: 1048)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1765, file: !1766, line: 81, baseType: !1795, size: 64, offset: 1088)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1766, line: 43, baseType: null)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1765, file: !1766, line: 89, baseType: !1798, size: 64, offset: 1152)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1789, line: 153, baseType: !549)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1765, file: !1766, line: 91, baseType: !1800, size: 64, offset: 1216)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1766, line: 37, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1765, file: !1766, line: 92, baseType: !1803, size: 64, offset: 1280)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1766, line: 38, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1765, file: !1766, line: 93, baseType: !1784, size: 64, offset: 1344)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1765, file: !1766, line: 94, baseType: !510, size: 64, offset: 1408)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1765, file: !1766, line: 95, baseType: !1016, size: 64, offset: 1472)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1765, file: !1766, line: 96, baseType: !506, size: 32, offset: 1536)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1765, file: !1766, line: 98, baseType: !1810, size: 160, offset: 1568)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 160, elements: !1811)
!1811 = !{!1812}
!1812 = !DISubrange(count: 20)
!1813 = !{!1814}
!1814 = !DILocalVariable(name: "__fp", arg: 1, scope: !1759, file: !1734, line: 56, type: !1762)
!1815 = !DILocation(line: 0, scope: !1759)
!1816 = !DILocation(line: 58, column: 10, scope: !1759)
!1817 = !DILocation(line: 58, column: 3, scope: !1759)
!1818 = distinct !DISubprogram(name: "getc_unlocked", scope: !1734, file: !1734, line: 66, type: !1760, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1819)
!1819 = !{!1820}
!1820 = !DILocalVariable(name: "__fp", arg: 1, scope: !1818, file: !1734, line: 66, type: !1762)
!1821 = !DILocation(line: 0, scope: !1818)
!1822 = !DILocation(line: 68, column: 10, scope: !1818)
!1823 = !DILocation(line: 68, column: 3, scope: !1818)
!1824 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1734, file: !1734, line: 73, type: !1753, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1755)
!1825 = !DILocation(line: 75, column: 10, scope: !1824)
!1826 = !DILocation(line: 75, column: 3, scope: !1824)
!1827 = distinct !DISubprogram(name: "putchar", scope: !1734, file: !1734, line: 82, type: !1828, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1830)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!506, !506}
!1830 = !{!1831}
!1831 = !DILocalVariable(name: "__c", arg: 1, scope: !1827, file: !1734, line: 82, type: !506)
!1832 = !DILocation(line: 0, scope: !1827)
!1833 = !DILocation(line: 84, column: 21, scope: !1827)
!1834 = !DILocation(line: 84, column: 10, scope: !1827)
!1835 = !DILocation(line: 84, column: 3, scope: !1827)
!1836 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1734, file: !1734, line: 91, type: !1837, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!506, !506, !1762}
!1839 = !{!1840, !1841}
!1840 = !DILocalVariable(name: "__c", arg: 1, scope: !1836, file: !1734, line: 91, type: !506)
!1841 = !DILocalVariable(name: "__stream", arg: 2, scope: !1836, file: !1734, line: 91, type: !1762)
!1842 = !DILocation(line: 0, scope: !1836)
!1843 = !DILocation(line: 93, column: 10, scope: !1836)
!1844 = !DILocation(line: 93, column: 3, scope: !1836)
!1845 = distinct !DISubprogram(name: "putc_unlocked", scope: !1734, file: !1734, line: 101, type: !1837, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1846)
!1846 = !{!1847, !1848}
!1847 = !DILocalVariable(name: "__c", arg: 1, scope: !1845, file: !1734, line: 101, type: !506)
!1848 = !DILocalVariable(name: "__stream", arg: 2, scope: !1845, file: !1734, line: 101, type: !1762)
!1849 = !DILocation(line: 0, scope: !1845)
!1850 = !DILocation(line: 103, column: 10, scope: !1845)
!1851 = !DILocation(line: 103, column: 3, scope: !1845)
!1852 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1734, file: !1734, line: 108, type: !1828, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1853)
!1853 = !{!1854}
!1854 = !DILocalVariable(name: "__c", arg: 1, scope: !1852, file: !1734, line: 108, type: !506)
!1855 = !DILocation(line: 0, scope: !1852)
!1856 = !DILocation(line: 110, column: 10, scope: !1852)
!1857 = !DILocation(line: 110, column: 3, scope: !1852)
!1858 = distinct !DISubprogram(name: "getline", scope: !1734, file: !1734, line: 118, type: !1859, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1863)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!1861, !507, !1862, !1762}
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1789, line: 193, baseType: !549)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1863 = !{!1864, !1865, !1866}
!1864 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1858, file: !1734, line: 118, type: !507)
!1865 = !DILocalVariable(name: "__n", arg: 2, scope: !1858, file: !1734, line: 118, type: !1862)
!1866 = !DILocalVariable(name: "__stream", arg: 3, scope: !1858, file: !1734, line: 118, type: !1762)
!1867 = !DILocation(line: 0, scope: !1858)
!1868 = !DILocation(line: 120, column: 10, scope: !1858)
!1869 = !DILocation(line: 120, column: 3, scope: !1858)
!1870 = distinct !DISubprogram(name: "feof_unlocked", scope: !1734, file: !1734, line: 128, type: !1760, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1871)
!1871 = !{!1872}
!1872 = !DILocalVariable(name: "__stream", arg: 1, scope: !1870, file: !1734, line: 128, type: !1762)
!1873 = !DILocation(line: 0, scope: !1870)
!1874 = !DILocation(line: 130, column: 10, scope: !1870)
!1875 = !DILocation(line: 130, column: 3, scope: !1870)
!1876 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1734, file: !1734, line: 135, type: !1760, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1877)
!1877 = !{!1878}
!1878 = !DILocalVariable(name: "__stream", arg: 1, scope: !1876, file: !1734, line: 135, type: !1762)
!1879 = !DILocation(line: 0, scope: !1876)
!1880 = !DILocation(line: 137, column: 10, scope: !1876)
!1881 = !DILocation(line: 137, column: 3, scope: !1876)
!1882 = distinct !DISubprogram(name: "tolower", scope: !1883, file: !1883, line: 207, type: !1828, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1884)
!1883 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1884 = !{!1885}
!1885 = !DILocalVariable(name: "__c", arg: 1, scope: !1882, file: !1883, line: 207, type: !506)
!1886 = !DILocation(line: 0, scope: !1882)
!1887 = !DILocation(line: 209, column: 22, scope: !1882)
!1888 = !DILocation(line: 209, column: 39, scope: !1882)
!1889 = !DILocation(line: 209, column: 38, scope: !1882)
!1890 = !DILocation(line: 209, column: 37, scope: !1882)
!1891 = !DILocation(line: 209, column: 10, scope: !1882)
!1892 = !DILocation(line: 209, column: 3, scope: !1882)
!1893 = distinct !DISubprogram(name: "toupper", scope: !1883, file: !1883, line: 213, type: !1828, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1894)
!1894 = !{!1895}
!1895 = !DILocalVariable(name: "__c", arg: 1, scope: !1893, file: !1883, line: 213, type: !506)
!1896 = !DILocation(line: 0, scope: !1893)
!1897 = !DILocation(line: 215, column: 22, scope: !1893)
!1898 = !DILocation(line: 215, column: 39, scope: !1893)
!1899 = !DILocation(line: 215, column: 38, scope: !1893)
!1900 = !DILocation(line: 215, column: 37, scope: !1893)
!1901 = !DILocation(line: 215, column: 10, scope: !1893)
!1902 = !DILocation(line: 215, column: 3, scope: !1893)
!1903 = distinct !DISubprogram(name: "atoi", scope: !1904, file: !1904, line: 361, type: !1905, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1907)
!1904 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!506, !511}
!1907 = !{!1908}
!1908 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1903, file: !1904, line: 361, type: !511)
!1909 = !DILocation(line: 0, scope: !1903)
!1910 = !DILocation(line: 363, column: 16, scope: !1903)
!1911 = !DILocation(line: 363, column: 10, scope: !1903)
!1912 = !DILocation(line: 363, column: 3, scope: !1903)
!1913 = distinct !DISubprogram(name: "atol", scope: !1904, file: !1904, line: 366, type: !1914, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1916)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!549, !511}
!1916 = !{!1917}
!1917 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1913, file: !1904, line: 366, type: !511)
!1918 = !DILocation(line: 0, scope: !1913)
!1919 = !DILocation(line: 368, column: 10, scope: !1913)
!1920 = !DILocation(line: 368, column: 3, scope: !1913)
!1921 = distinct !DISubprogram(name: "atoll", scope: !1904, file: !1904, line: 373, type: !1922, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1925)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!1924, !511}
!1924 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1925 = !{!1926}
!1926 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1921, file: !1904, line: 373, type: !511)
!1927 = !DILocation(line: 0, scope: !1921)
!1928 = !DILocation(line: 375, column: 10, scope: !1921)
!1929 = !DILocation(line: 375, column: 3, scope: !1921)
!1930 = distinct !DISubprogram(name: "bsearch", scope: !1931, file: !1931, line: 20, type: !1932, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1935)
!1931 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!510, !1160, !1160, !1016, !1016, !1934}
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1904, line: 808, baseType: !1164)
!1935 = !{!1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945}
!1936 = !DILocalVariable(name: "__key", arg: 1, scope: !1930, file: !1931, line: 20, type: !1160)
!1937 = !DILocalVariable(name: "__base", arg: 2, scope: !1930, file: !1931, line: 20, type: !1160)
!1938 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1930, file: !1931, line: 20, type: !1016)
!1939 = !DILocalVariable(name: "__size", arg: 4, scope: !1930, file: !1931, line: 20, type: !1016)
!1940 = !DILocalVariable(name: "__compar", arg: 5, scope: !1930, file: !1931, line: 21, type: !1934)
!1941 = !DILocalVariable(name: "__l", scope: !1930, file: !1931, line: 23, type: !1016)
!1942 = !DILocalVariable(name: "__u", scope: !1930, file: !1931, line: 23, type: !1016)
!1943 = !DILocalVariable(name: "__idx", scope: !1930, file: !1931, line: 23, type: !1016)
!1944 = !DILocalVariable(name: "__p", scope: !1930, file: !1931, line: 24, type: !1160)
!1945 = !DILocalVariable(name: "__comparison", scope: !1930, file: !1931, line: 25, type: !506)
!1946 = !DILocation(line: 0, scope: !1930)
!1947 = !DILocation(line: 29, column: 3, scope: !1930)
!1948 = !DILocation(line: 27, column: 7, scope: !1930)
!1949 = !DILocation(line: 29, column: 14, scope: !1930)
!1950 = !DILocation(line: 31, column: 20, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1930, file: !1931, line: 30, column: 5)
!1952 = !DILocation(line: 31, column: 27, scope: !1951)
!1953 = !DILocation(line: 32, column: 56, scope: !1951)
!1954 = !DILocation(line: 32, column: 47, scope: !1951)
!1955 = !DILocation(line: 33, column: 22, scope: !1951)
!1956 = !DILocation(line: 34, column: 24, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1951, file: !1931, line: 34, column: 11)
!1958 = !DILocation(line: 34, column: 11, scope: !1951)
!1959 = !DILocation(line: 36, column: 29, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1957, file: !1931, line: 36, column: 16)
!1961 = !DILocation(line: 36, column: 16, scope: !1957)
!1962 = !DILocation(line: 37, column: 14, scope: !1960)
!1963 = distinct !{!1963, !1947, !1964}
!1964 = !DILocation(line: 40, column: 5, scope: !1930)
!1965 = !DILocation(line: 43, column: 1, scope: !1930)
!1966 = distinct !DISubprogram(name: "atof", scope: !1967, file: !1967, line: 25, type: !1968, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1971)
!1967 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!1970, !511}
!1970 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1971 = !{!1972}
!1972 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1966, file: !1967, line: 25, type: !511)
!1973 = !DILocation(line: 0, scope: !1966)
!1974 = !DILocation(line: 27, column: 10, scope: !1966)
!1975 = !DILocation(line: 27, column: 3, scope: !1966)
!1976 = distinct !DISubprogram(name: "strtoimax", scope: !1977, file: !1977, line: 324, type: !1978, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1984)
!1977 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!1980, !1737, !1983, !506}
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1981, line: 101, baseType: !1982)
!1981 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1789, line: 72, baseType: !549)
!1983 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !507)
!1984 = !{!1985, !1986, !1987}
!1985 = !DILocalVariable(name: "nptr", arg: 1, scope: !1976, file: !1977, line: 324, type: !1737)
!1986 = !DILocalVariable(name: "endptr", arg: 2, scope: !1976, file: !1977, line: 324, type: !1983)
!1987 = !DILocalVariable(name: "base", arg: 3, scope: !1976, file: !1977, line: 324, type: !506)
!1988 = !DILocation(line: 0, scope: !1976)
!1989 = !DILocation(line: 327, column: 10, scope: !1976)
!1990 = !DILocation(line: 327, column: 3, scope: !1976)
!1991 = distinct !DISubprogram(name: "strtoumax", scope: !1977, file: !1977, line: 336, type: !1992, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1996)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!1994, !1737, !1983, !506}
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1981, line: 102, baseType: !1995)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1789, line: 73, baseType: !532)
!1996 = !{!1997, !1998, !1999}
!1997 = !DILocalVariable(name: "nptr", arg: 1, scope: !1991, file: !1977, line: 336, type: !1737)
!1998 = !DILocalVariable(name: "endptr", arg: 2, scope: !1991, file: !1977, line: 336, type: !1983)
!1999 = !DILocalVariable(name: "base", arg: 3, scope: !1991, file: !1977, line: 336, type: !506)
!2000 = !DILocation(line: 0, scope: !1991)
!2001 = !DILocation(line: 339, column: 10, scope: !1991)
!2002 = !DILocation(line: 339, column: 3, scope: !1991)
!2003 = distinct !DISubprogram(name: "wcstoimax", scope: !1977, file: !1977, line: 348, type: !2004, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!1980, !2006, !2010, !506}
!2006 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2007)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2009)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1977, line: 34, baseType: !506)
!2010 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2011)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2013 = !{!2014, !2015, !2016}
!2014 = !DILocalVariable(name: "nptr", arg: 1, scope: !2003, file: !1977, line: 348, type: !2006)
!2015 = !DILocalVariable(name: "endptr", arg: 2, scope: !2003, file: !1977, line: 348, type: !2010)
!2016 = !DILocalVariable(name: "base", arg: 3, scope: !2003, file: !1977, line: 348, type: !506)
!2017 = !DILocation(line: 0, scope: !2003)
!2018 = !DILocation(line: 351, column: 10, scope: !2003)
!2019 = !DILocation(line: 351, column: 3, scope: !2003)
!2020 = distinct !DISubprogram(name: "wcstoumax", scope: !1977, file: !1977, line: 362, type: !2021, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!1994, !2006, !2010, !506}
!2023 = !{!2024, !2025, !2026}
!2024 = !DILocalVariable(name: "nptr", arg: 1, scope: !2020, file: !1977, line: 362, type: !2006)
!2025 = !DILocalVariable(name: "endptr", arg: 2, scope: !2020, file: !1977, line: 362, type: !2010)
!2026 = !DILocalVariable(name: "base", arg: 3, scope: !2020, file: !1977, line: 362, type: !506)
!2027 = !DILocation(line: 0, scope: !2020)
!2028 = !DILocation(line: 365, column: 10, scope: !2020)
!2029 = !DILocation(line: 365, column: 3, scope: !2020)
!2030 = distinct !DISubprogram(name: "stat", scope: !2031, file: !2031, line: 453, type: !2032, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2071)
!2031 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!506, !511, !2034}
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2036, line: 46, size: 1152, elements: !2037)
!2036 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2037 = !{!2038, !2040, !2042, !2044, !2046, !2048, !2050, !2051, !2052, !2053, !2055, !2057, !2065, !2066, !2067}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2035, file: !2036, line: 48, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1789, line: 145, baseType: !532)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2035, file: !2036, line: 53, baseType: !2041, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1789, line: 148, baseType: !532)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2035, file: !2036, line: 61, baseType: !2043, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1789, line: 151, baseType: !532)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2035, file: !2036, line: 62, baseType: !2045, size: 32, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1789, line: 150, baseType: !7)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2035, file: !2036, line: 64, baseType: !2047, size: 32, offset: 224)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1789, line: 146, baseType: !7)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2035, file: !2036, line: 65, baseType: !2049, size: 32, offset: 256)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1789, line: 147, baseType: !7)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2035, file: !2036, line: 67, baseType: !506, size: 32, offset: 288)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2035, file: !2036, line: 69, baseType: !2039, size: 64, offset: 320)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2035, file: !2036, line: 74, baseType: !1788, size: 64, offset: 384)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2035, file: !2036, line: 78, baseType: !2054, size: 64, offset: 448)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1789, line: 174, baseType: !549)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2035, file: !2036, line: 80, baseType: !2056, size: 64, offset: 512)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1789, line: 179, baseType: !549)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2035, file: !2036, line: 91, baseType: !2058, size: 128, offset: 576)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2059, line: 10, size: 128, elements: !2060)
!2059 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2060 = !{!2061, !2063}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2058, file: !2059, line: 12, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1789, line: 160, baseType: !549)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2058, file: !2059, line: 16, baseType: !2064, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1789, line: 196, baseType: !549)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2035, file: !2036, line: 92, baseType: !2058, size: 128, offset: 704)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2035, file: !2036, line: 93, baseType: !2058, size: 128, offset: 832)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2035, file: !2036, line: 106, baseType: !2068, size: 192, offset: 960)
!2068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2064, size: 192, elements: !2069)
!2069 = !{!2070}
!2070 = !DISubrange(count: 3)
!2071 = !{!2072, !2073}
!2072 = !DILocalVariable(name: "__path", arg: 1, scope: !2030, file: !2031, line: 453, type: !511)
!2073 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2030, file: !2031, line: 453, type: !2034)
!2074 = !DILocation(line: 0, scope: !2030)
!2075 = !DILocation(line: 455, column: 10, scope: !2030)
!2076 = !DILocation(line: 455, column: 3, scope: !2030)
!2077 = distinct !DISubprogram(name: "lstat", scope: !2031, file: !2031, line: 460, type: !2032, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2078)
!2078 = !{!2079, !2080}
!2079 = !DILocalVariable(name: "__path", arg: 1, scope: !2077, file: !2031, line: 460, type: !511)
!2080 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2077, file: !2031, line: 460, type: !2034)
!2081 = !DILocation(line: 0, scope: !2077)
!2082 = !DILocation(line: 462, column: 10, scope: !2077)
!2083 = !DILocation(line: 462, column: 3, scope: !2077)
!2084 = distinct !DISubprogram(name: "fstat", scope: !2031, file: !2031, line: 467, type: !2085, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!506, !506, !2034}
!2087 = !{!2088, !2089}
!2088 = !DILocalVariable(name: "__fd", arg: 1, scope: !2084, file: !2031, line: 467, type: !506)
!2089 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2084, file: !2031, line: 467, type: !2034)
!2090 = !DILocation(line: 0, scope: !2084)
!2091 = !DILocation(line: 469, column: 10, scope: !2084)
!2092 = !DILocation(line: 469, column: 3, scope: !2084)
!2093 = distinct !DISubprogram(name: "fstatat", scope: !2031, file: !2031, line: 474, type: !2094, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2096)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!506, !506, !511, !2034, !506}
!2096 = !{!2097, !2098, !2099, !2100}
!2097 = !DILocalVariable(name: "__fd", arg: 1, scope: !2093, file: !2031, line: 474, type: !506)
!2098 = !DILocalVariable(name: "__filename", arg: 2, scope: !2093, file: !2031, line: 474, type: !511)
!2099 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2093, file: !2031, line: 474, type: !2034)
!2100 = !DILocalVariable(name: "__flag", arg: 4, scope: !2093, file: !2031, line: 474, type: !506)
!2101 = !DILocation(line: 0, scope: !2093)
!2102 = !DILocation(line: 477, column: 10, scope: !2093)
!2103 = !DILocation(line: 477, column: 3, scope: !2093)
!2104 = distinct !DISubprogram(name: "mknod", scope: !2031, file: !2031, line: 483, type: !2105, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!506, !511, !2045, !2039}
!2107 = !{!2108, !2109, !2110}
!2108 = !DILocalVariable(name: "__path", arg: 1, scope: !2104, file: !2031, line: 483, type: !511)
!2109 = !DILocalVariable(name: "__mode", arg: 2, scope: !2104, file: !2031, line: 483, type: !2045)
!2110 = !DILocalVariable(name: "__dev", arg: 3, scope: !2104, file: !2031, line: 483, type: !2039)
!2111 = !DILocation(line: 0, scope: !2104)
!2112 = !DILocation(line: 485, column: 10, scope: !2104)
!2113 = !DILocation(line: 485, column: 3, scope: !2104)
!2114 = distinct !DISubprogram(name: "mknodat", scope: !2031, file: !2031, line: 491, type: !2115, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!506, !506, !511, !2045, !2039}
!2117 = !{!2118, !2119, !2120, !2121}
!2118 = !DILocalVariable(name: "__fd", arg: 1, scope: !2114, file: !2031, line: 491, type: !506)
!2119 = !DILocalVariable(name: "__path", arg: 2, scope: !2114, file: !2031, line: 491, type: !511)
!2120 = !DILocalVariable(name: "__mode", arg: 3, scope: !2114, file: !2031, line: 491, type: !2045)
!2121 = !DILocalVariable(name: "__dev", arg: 4, scope: !2114, file: !2031, line: 491, type: !2039)
!2122 = !DILocation(line: 0, scope: !2114)
!2123 = !DILocation(line: 494, column: 10, scope: !2114)
!2124 = !DILocation(line: 494, column: 3, scope: !2114)
!2125 = distinct !DISubprogram(name: "stat64", scope: !2031, file: !2031, line: 502, type: !2126, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2148)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!506, !511, !2128}
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2036, line: 119, size: 1152, elements: !2130)
!2130 = !{!2131, !2132, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2144, !2145, !2146, !2147}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2129, file: !2036, line: 121, baseType: !2039, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2129, file: !2036, line: 123, baseType: !2133, size: 64, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1789, line: 149, baseType: !532)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2129, file: !2036, line: 124, baseType: !2043, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2129, file: !2036, line: 125, baseType: !2045, size: 32, offset: 192)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2129, file: !2036, line: 132, baseType: !2047, size: 32, offset: 224)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2129, file: !2036, line: 133, baseType: !2049, size: 32, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2129, file: !2036, line: 135, baseType: !506, size: 32, offset: 288)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2129, file: !2036, line: 136, baseType: !2039, size: 64, offset: 320)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2129, file: !2036, line: 137, baseType: !1788, size: 64, offset: 384)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2129, file: !2036, line: 143, baseType: !2054, size: 64, offset: 448)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2129, file: !2036, line: 144, baseType: !2143, size: 64, offset: 512)
!2143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1789, line: 180, baseType: !549)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2129, file: !2036, line: 152, baseType: !2058, size: 128, offset: 576)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2129, file: !2036, line: 153, baseType: !2058, size: 128, offset: 704)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2129, file: !2036, line: 154, baseType: !2058, size: 128, offset: 832)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2129, file: !2036, line: 164, baseType: !2068, size: 192, offset: 960)
!2148 = !{!2149, !2150}
!2149 = !DILocalVariable(name: "__path", arg: 1, scope: !2125, file: !2031, line: 502, type: !511)
!2150 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2125, file: !2031, line: 502, type: !2128)
!2151 = !DILocation(line: 0, scope: !2125)
!2152 = !DILocation(line: 504, column: 10, scope: !2125)
!2153 = !DILocation(line: 504, column: 3, scope: !2125)
!2154 = distinct !DISubprogram(name: "lstat64", scope: !2031, file: !2031, line: 509, type: !2126, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2155)
!2155 = !{!2156, !2157}
!2156 = !DILocalVariable(name: "__path", arg: 1, scope: !2154, file: !2031, line: 509, type: !511)
!2157 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2154, file: !2031, line: 509, type: !2128)
!2158 = !DILocation(line: 0, scope: !2154)
!2159 = !DILocation(line: 511, column: 10, scope: !2154)
!2160 = !DILocation(line: 511, column: 3, scope: !2154)
!2161 = distinct !DISubprogram(name: "fstat64", scope: !2031, file: !2031, line: 516, type: !2162, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!506, !506, !2128}
!2164 = !{!2165, !2166}
!2165 = !DILocalVariable(name: "__fd", arg: 1, scope: !2161, file: !2031, line: 516, type: !506)
!2166 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2161, file: !2031, line: 516, type: !2128)
!2167 = !DILocation(line: 0, scope: !2161)
!2168 = !DILocation(line: 518, column: 10, scope: !2161)
!2169 = !DILocation(line: 518, column: 3, scope: !2161)
!2170 = distinct !DISubprogram(name: "fstatat64", scope: !2031, file: !2031, line: 523, type: !2171, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!506, !506, !511, !2128, !506}
!2173 = !{!2174, !2175, !2176, !2177}
!2174 = !DILocalVariable(name: "__fd", arg: 1, scope: !2170, file: !2031, line: 523, type: !506)
!2175 = !DILocalVariable(name: "__filename", arg: 2, scope: !2170, file: !2031, line: 523, type: !511)
!2176 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2170, file: !2031, line: 523, type: !2128)
!2177 = !DILocalVariable(name: "__flag", arg: 4, scope: !2170, file: !2031, line: 523, type: !506)
!2178 = !DILocation(line: 0, scope: !2170)
!2179 = !DILocation(line: 526, column: 10, scope: !2170)
!2180 = !DILocation(line: 526, column: 3, scope: !2170)
!2181 = distinct !DISubprogram(name: "compute_builtin_object_size", scope: !3, file: !3, line: 461, type: !2182, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2184)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!532, !578, !506}
!2184 = !{!2185, !2186, !2187, !2202, !2210, !2211}
!2185 = !DILocalVariable(name: "ptr", arg: 1, scope: !2181, file: !3, line: 461, type: !578)
!2186 = !DILocalVariable(name: "object_size_type", arg: 2, scope: !2181, file: !3, line: 461, type: !506)
!2187 = !DILocalVariable(name: "osi", scope: !2188, file: !3, line: 477, type: !2192)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 476, column: 2)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 475, column: 11)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 474, column: 5)
!2191 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 471, column: 7)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_size_info", file: !3, line: 33, size: 448, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "object_size_type", scope: !2192, file: !3, line: 35, baseType: !506, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2192, file: !3, line: 36, baseType: !514, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "reexamine", scope: !2192, file: !3, line: 36, baseType: !514, size: 64, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2192, file: !3, line: 37, baseType: !506, size: 32, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2192, file: !3, line: 38, baseType: !505, size: 8, offset: 224)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "depths", scope: !2192, file: !3, line: 39, baseType: !513, size: 64, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2192, file: !3, line: 40, baseType: !513, size: 64, offset: 320)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !2192, file: !3, line: 40, baseType: !513, size: 64, offset: 384)
!2202 = !DILocalVariable(name: "bi", scope: !2188, file: !3, line: 478, type: !2203)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !518, line: 218, baseType: !2204)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 203, size: 256, elements: !2205)
!2205 = !{!2206, !2207, !2208, !2209}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2204, file: !518, line: 206, baseType: !521, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2204, file: !518, line: 209, baseType: !521, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2204, file: !518, line: 212, baseType: !7, size: 32, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2204, file: !518, line: 217, baseType: !531, size: 64, offset: 192)
!2210 = !DILocalVariable(name: "i", scope: !2188, file: !3, line: 479, type: !7)
!2211 = !DILocalVariable(name: "reexamine", scope: !2212, file: !3, line: 510, type: !514)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 509, column: 6)
!2213 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 508, column: 8)
!2214 = !DILocation(line: 0, scope: !2181)
!2215 = !DILocation(line: 463, column: 3, scope: !2181)
!2216 = !DILocation(line: 465, column: 9, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 465, column: 7)
!2218 = !DILocation(line: 465, column: 7, scope: !2181)
!2219 = !DILocation(line: 466, column: 5, scope: !2217)
!2220 = !DILocation(line: 468, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 468, column: 7)
!2222 = !DILocation(line: 468, column: 23, scope: !2221)
!2223 = !DILocation(line: 468, column: 7, scope: !2181)
!2224 = !DILocation(line: 469, column: 12, scope: !2221)
!2225 = !DILocation(line: 469, column: 5, scope: !2221)
!2226 = !DILocation(line: 471, column: 23, scope: !2191)
!2227 = !DILocation(line: 472, column: 7, scope: !2191)
!2228 = !DILocation(line: 472, column: 10, scope: !2191)
!2229 = !DILocation(line: 473, column: 7, scope: !2191)
!2230 = !DILocation(line: 473, column: 10, scope: !2191)
!2231 = !DILocation(line: 473, column: 41, scope: !2191)
!2232 = !DILocation(line: 471, column: 7, scope: !2181)
!2233 = !DILocation(line: 475, column: 26, scope: !2189)
!2234 = !DILocation(line: 475, column: 54, scope: !2189)
!2235 = !DILocation(line: 475, column: 12, scope: !2189)
!2236 = !DILocation(line: 475, column: 11, scope: !2190)
!2237 = !DILocation(line: 477, column: 4, scope: !2188)
!2238 = !DILocation(line: 478, column: 4, scope: !2188)
!2239 = !DILocation(line: 479, column: 4, scope: !2188)
!2240 = !DILocation(line: 481, column: 8, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 481, column: 8)
!2242 = !DILocation(line: 481, column: 8, scope: !2188)
!2243 = !DILocation(line: 484, column: 28, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 482, column: 6)
!2245 = !DILocation(line: 484, column: 10, scope: !2244)
!2246 = !DILocation(line: 485, column: 28, scope: !2244)
!2247 = !DILocation(line: 485, column: 10, scope: !2244)
!2248 = !DILocation(line: 483, column: 8, scope: !2244)
!2249 = !DILocation(line: 486, column: 28, scope: !2244)
!2250 = !DILocation(line: 486, column: 44, scope: !2244)
!2251 = !DILocation(line: 486, column: 8, scope: !2244)
!2252 = !DILocation(line: 487, column: 17, scope: !2244)
!2253 = !DILocation(line: 487, column: 8, scope: !2244)
!2254 = !DILocation(line: 488, column: 6, scope: !2244)
!2255 = !DILocation(line: 490, column: 18, scope: !2188)
!2256 = !DILocation(line: 490, column: 8, scope: !2188)
!2257 = !DILocation(line: 490, column: 16, scope: !2188)
!2258 = !DILocation(line: 491, column: 20, scope: !2188)
!2259 = !DILocation(line: 491, column: 8, scope: !2188)
!2260 = !DILocation(line: 491, column: 18, scope: !2188)
!2261 = !DILocation(line: 492, column: 8, scope: !2188)
!2262 = !DILocation(line: 492, column: 25, scope: !2188)
!2263 = !DILocation(line: 493, column: 8, scope: !2188)
!2264 = !DILocation(line: 493, column: 15, scope: !2188)
!2265 = !DILocation(line: 494, column: 8, scope: !2188)
!2266 = !DILocation(line: 494, column: 14, scope: !2188)
!2267 = !DILocation(line: 495, column: 8, scope: !2188)
!2268 = !DILocation(line: 495, column: 12, scope: !2188)
!2269 = !DILocation(line: 501, column: 8, scope: !2188)
!2270 = !DILocation(line: 501, column: 13, scope: !2188)
!2271 = !DILocation(line: 502, column: 8, scope: !2188)
!2272 = !DILocation(line: 502, column: 16, scope: !2188)
!2273 = !DILocation(line: 0, scope: !2188)
!2274 = !DILocation(line: 503, column: 4, scope: !2188)
!2275 = !DILocation(line: 508, column: 10, scope: !2213)
!2276 = !DILocation(line: 508, column: 8, scope: !2188)
!2277 = !DILocation(line: 510, column: 27, scope: !2212)
!2278 = !DILocation(line: 0, scope: !2212)
!2279 = !DILocation(line: 518, column: 29, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 518, column: 12)
!2281 = !DILocation(line: 518, column: 12, scope: !2212)
!2282 = !DILocation(line: 520, column: 18, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 519, column: 3)
!2284 = !DILocation(line: 520, column: 16, scope: !2283)
!2285 = !DILocation(line: 521, column: 17, scope: !2283)
!2286 = !DILocation(line: 521, column: 15, scope: !2283)
!2287 = !DILocation(line: 522, column: 19, scope: !2283)
!2288 = !DILocation(line: 522, column: 13, scope: !2283)
!2289 = !DILocation(line: 523, column: 14, scope: !2283)
!2290 = !DILocation(line: 526, column: 33, scope: !2283)
!2291 = !DILocation(line: 526, column: 5, scope: !2283)
!2292 = !DILocation(line: 527, column: 5, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 527, column: 5)
!2294 = !DILocation(line: 527, column: 5, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 527, column: 5)
!2296 = !DILocation(line: 528, column: 29, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 528, column: 11)
!2298 = !DILocation(line: 528, column: 40, scope: !2297)
!2299 = !DILocation(line: 528, column: 11, scope: !2297)
!2300 = !DILocation(line: 528, column: 11, scope: !2295)
!2301 = !DILocation(line: 529, column: 40, scope: !2297)
!2302 = !DILocation(line: 529, column: 9, scope: !2297)
!2303 = distinct !{!2303, !2292, !2304}
!2304 = !DILocation(line: 529, column: 52, scope: !2293)
!2305 = !DILocation(line: 531, column: 15, scope: !2283)
!2306 = !DILocation(line: 531, column: 5, scope: !2283)
!2307 = !DILocation(line: 532, column: 16, scope: !2283)
!2308 = !DILocation(line: 533, column: 15, scope: !2283)
!2309 = !DILocation(line: 533, column: 5, scope: !2283)
!2310 = !DILocation(line: 534, column: 15, scope: !2283)
!2311 = !DILocation(line: 535, column: 13, scope: !2283)
!2312 = !DILocation(line: 536, column: 3, scope: !2283)
!2313 = !DILocation(line: 538, column: 8, scope: !2212)
!2314 = !DILocation(line: 540, column: 14, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 539, column: 3)
!2316 = !DILocation(line: 541, column: 17, scope: !2315)
!2317 = !DILocation(line: 544, column: 33, scope: !2315)
!2318 = !DILocation(line: 544, column: 5, scope: !2315)
!2319 = !DILocation(line: 545, column: 5, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 545, column: 5)
!2321 = !DILocation(line: 545, column: 5, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 545, column: 5)
!2323 = !DILocation(line: 546, column: 29, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 546, column: 11)
!2325 = !DILocation(line: 546, column: 40, scope: !2324)
!2326 = !DILocation(line: 546, column: 11, scope: !2324)
!2327 = !DILocation(line: 546, column: 11, scope: !2322)
!2328 = !DILocation(line: 548, column: 36, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 547, column: 9)
!2330 = !DILocation(line: 548, column: 4, scope: !2329)
!2331 = !DILocation(line: 549, column: 8, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 549, column: 8)
!2333 = !DILocation(line: 549, column: 18, scope: !2332)
!2334 = !DILocation(line: 549, column: 22, scope: !2332)
!2335 = !DILocation(line: 549, column: 33, scope: !2332)
!2336 = !DILocation(line: 549, column: 8, scope: !2329)
!2337 = !DILocation(line: 551, column: 8, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 550, column: 6)
!2339 = !DILocation(line: 552, column: 28, scope: !2338)
!2340 = !DILocation(line: 552, column: 39, scope: !2338)
!2341 = !DILocation(line: 553, column: 7, scope: !2338)
!2342 = !DILocation(line: 552, column: 8, scope: !2338)
!2343 = !DILocation(line: 554, column: 17, scope: !2338)
!2344 = !DILocation(line: 554, column: 8, scope: !2338)
!2345 = !DILocation(line: 555, column: 6, scope: !2338)
!2346 = distinct !{!2346, !2319, !2347}
!2347 = !DILocation(line: 556, column: 9, scope: !2320)
!2348 = !DILocation(line: 558, column: 19, scope: !2212)
!2349 = !DILocation(line: 557, column: 3, scope: !2315)
!2350 = distinct !{!2350, !2313, !2351}
!2351 = !DILocation(line: 558, column: 26, scope: !2212)
!2352 = !DILocation(line: 560, column: 8, scope: !2212)
!2353 = !DILocation(line: 562, column: 4, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 562, column: 4)
!2355 = !DILocation(line: 561, column: 6, scope: !2212)
!2356 = !DILocation(line: 562, column: 4, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 562, column: 4)
!2358 = !DILocation(line: 563, column: 22, scope: !2357)
!2359 = !DILocation(line: 563, column: 50, scope: !2357)
!2360 = !DILocation(line: 563, column: 6, scope: !2357)
!2361 = distinct !{!2361, !2353, !2362}
!2362 = !DILocation(line: 563, column: 51, scope: !2354)
!2363 = !DILocation(line: 566, column: 8, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 566, column: 8)
!2365 = !DILocation(line: 566, column: 8, scope: !2188)
!2366 = !DILocation(line: 568, column: 8, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 568, column: 8)
!2368 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 567, column: 6)
!2369 = !DILocation(line: 0, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 569, column: 7)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 568, column: 8)
!2372 = !DILocation(line: 0, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 571, column: 5)
!2374 = !DILocation(line: 568, column: 8, scope: !2371)
!2375 = !DILocation(line: 569, column: 7, scope: !2370)
!2376 = !DILocation(line: 569, column: 38, scope: !2370)
!2377 = !DILocation(line: 570, column: 10, scope: !2370)
!2378 = !DILocation(line: 570, column: 7, scope: !2370)
!2379 = !DILocation(line: 569, column: 7, scope: !2371)
!2380 = !DILocation(line: 572, column: 27, scope: !2373)
!2381 = !DILocation(line: 572, column: 38, scope: !2373)
!2382 = !DILocation(line: 573, column: 6, scope: !2373)
!2383 = !DILocation(line: 572, column: 7, scope: !2373)
!2384 = !DILocation(line: 574, column: 16, scope: !2373)
!2385 = !DILocation(line: 579, column: 9, scope: !2373)
!2386 = !DILocation(line: 579, column: 40, scope: !2373)
!2387 = !DILocation(line: 574, column: 7, scope: !2373)
!2388 = !DILocation(line: 580, column: 5, scope: !2373)
!2389 = distinct !{!2389, !2366, !2390}
!2390 = !DILocation(line: 580, column: 5, scope: !2367)
!2391 = !DILocation(line: 583, column: 4, scope: !2188)
!2392 = !DILocation(line: 584, column: 4, scope: !2188)
!2393 = !DILocation(line: 585, column: 2, scope: !2189)
!2394 = !DILocation(line: 585, column: 2, scope: !2188)
!2395 = !DILocation(line: 587, column: 14, scope: !2190)
!2396 = !DILocation(line: 587, column: 45, scope: !2190)
!2397 = !DILocation(line: 587, column: 7, scope: !2190)
!2398 = !DILocation(line: 590, column: 10, scope: !2181)
!2399 = !DILocation(line: 590, column: 3, scope: !2181)
!2400 = !DILocation(line: 591, column: 1, scope: !2181)
!2401 = distinct !DISubprogram(name: "init_offset_limit", scope: !3, file: !3, line: 79, type: !2402, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1755)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{null}
!2404 = !DILocation(line: 81, column: 22, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 81, column: 7)
!2406 = !DILocation(line: 81, column: 7, scope: !2405)
!2407 = !DILocation(line: 81, column: 7, scope: !2401)
!2408 = !DILocation(line: 82, column: 34, scope: !2405)
!2409 = !DILocation(line: 82, column: 20, scope: !2405)
!2410 = !DILocation(line: 82, column: 5, scope: !2405)
!2411 = !DILocation(line: 85, column: 16, scope: !2401)
!2412 = !DILocation(line: 86, column: 1, scope: !2401)
!2413 = distinct !DISubprogram(name: "addr_object_size", scope: !3, file: !3, line: 156, type: !2414, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2420)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!532, !2416, !2417, !506}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !515, line: 59, baseType: !2418)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!2420 = !{!2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2431, !2434, !2437, !2443, !2447, !2450}
!2421 = !DILocalVariable(name: "osi", arg: 1, scope: !2413, file: !3, line: 156, type: !2416)
!2422 = !DILocalVariable(name: "ptr", arg: 2, scope: !2413, file: !3, line: 156, type: !2417)
!2423 = !DILocalVariable(name: "object_size_type", arg: 3, scope: !2413, file: !3, line: 157, type: !506)
!2424 = !DILocalVariable(name: "pt_var", scope: !2413, file: !3, line: 159, type: !578)
!2425 = !DILocalVariable(name: "pt_var_size", scope: !2413, file: !3, line: 159, type: !578)
!2426 = !DILocalVariable(name: "var_size", scope: !2413, file: !3, line: 159, type: !578)
!2427 = !DILocalVariable(name: "bytes", scope: !2413, file: !3, line: 159, type: !578)
!2428 = !DILocalVariable(name: "sz", scope: !2429, file: !3, line: 172, type: !532)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 171, column: 5)
!2430 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 167, column: 7)
!2431 = !DILocalVariable(name: "var", scope: !2432, file: !3, line: 179, type: !578)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 178, column: 2)
!2433 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 174, column: 11)
!2434 = !DILocalVariable(name: "var", scope: !2435, file: !3, line: 205, type: !578)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 204, column: 5)
!2436 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 203, column: 7)
!2437 = !DILocalVariable(name: "v", scope: !2438, file: !3, line: 229, type: !578)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 228, column: 6)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 227, column: 13)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 221, column: 8)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 208, column: 2)
!2442 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 207, column: 11)
!2443 = !DILocalVariable(name: "domain", scope: !2444, file: !3, line: 240, type: !578)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 239, column: 9)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 237, column: 11)
!2446 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 235, column: 5)
!2447 = !DILocalVariable(name: "fld_chain", scope: !2448, file: !3, line: 277, type: !578)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 276, column: 9)
!2449 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 273, column: 11)
!2450 = !DILocalVariable(name: "bytes2", scope: !2451, file: !3, line: 333, type: !578)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 332, column: 2)
!2452 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 328, column: 11)
!2453 = !DILocation(line: 0, scope: !2413)
!2454 = !DILocation(line: 161, column: 3, scope: !2413)
!2455 = !DILocation(line: 163, column: 12, scope: !2413)
!2456 = !DILocation(line: 164, column: 7, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 164, column: 7)
!2458 = !DILocation(line: 164, column: 7, scope: !2413)
!2459 = !DILocation(line: 165, column: 14, scope: !2457)
!2460 = !DILocation(line: 165, column: 5, scope: !2457)
!2461 = !DILocation(line: 168, column: 7, scope: !2430)
!2462 = !DILocation(line: 168, column: 10, scope: !2430)
!2463 = !DILocation(line: 168, column: 29, scope: !2430)
!2464 = !DILocation(line: 169, column: 7, scope: !2430)
!2465 = !DILocation(line: 169, column: 10, scope: !2430)
!2466 = !DILocation(line: 169, column: 47, scope: !2430)
!2467 = !DILocation(line: 170, column: 7, scope: !2430)
!2468 = !DILocation(line: 170, column: 10, scope: !2430)
!2469 = !DILocation(line: 167, column: 7, scope: !2413)
!2470 = !DILocation(line: 174, column: 12, scope: !2433)
!2471 = !DILocation(line: 174, column: 37, scope: !2433)
!2472 = !DILocation(line: 174, column: 42, scope: !2433)
!2473 = !DILocation(line: 174, column: 16, scope: !2433)
!2474 = !DILocation(line: 176, column: 25, scope: !2433)
!2475 = !DILocation(line: 175, column: 7, scope: !2433)
!2476 = !DILocation(line: 0, scope: !2429)
!2477 = !DILocation(line: 189, column: 17, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 189, column: 11)
!2479 = !DILocation(line: 175, column: 2, scope: !2433)
!2480 = !DILocation(line: 0, scope: !2432)
!2481 = !DILocation(line: 180, column: 13, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 180, column: 8)
!2483 = !DILocation(line: 180, column: 18, scope: !2482)
!2484 = !DILocation(line: 180, column: 8, scope: !2432)
!2485 = !DILocation(line: 181, column: 6, scope: !2482)
!2486 = !DILocation(line: 182, column: 22, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 182, column: 8)
!2488 = !DILocation(line: 183, column: 8, scope: !2487)
!2489 = !DILocation(line: 182, column: 8, scope: !2487)
!2490 = !DILocation(line: 182, column: 8, scope: !2432)
!2491 = !DILocation(line: 184, column: 11, scope: !2487)
!2492 = !DILocation(line: 184, column: 42, scope: !2487)
!2493 = !DILocation(line: 184, column: 6, scope: !2487)
!2494 = !DILocation(line: 186, column: 11, scope: !2487)
!2495 = !DILocation(line: 0, scope: !2433)
!2496 = !DILocation(line: 189, column: 14, scope: !2478)
!2497 = !DILocation(line: 189, column: 51, scope: !2478)
!2498 = !DILocation(line: 189, column: 49, scope: !2478)
!2499 = !DILocation(line: 189, column: 43, scope: !2478)
!2500 = !DILocation(line: 190, column: 16, scope: !2478)
!2501 = !DILocation(line: 190, column: 2, scope: !2478)
!2502 = !DILocation(line: 193, column: 9, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 192, column: 12)
!2504 = !DILocation(line: 193, column: 28, scope: !2503)
!2505 = !DILocation(line: 193, column: 50, scope: !2503)
!2506 = !DILocation(line: 194, column: 5, scope: !2503)
!2507 = !DILocation(line: 194, column: 8, scope: !2503)
!2508 = !DILocation(line: 195, column: 5, scope: !2503)
!2509 = !DILocation(line: 195, column: 8, scope: !2503)
!2510 = !DILocation(line: 196, column: 5, scope: !2503)
!2511 = !DILocation(line: 197, column: 22, scope: !2503)
!2512 = !DILocation(line: 197, column: 8, scope: !2503)
!2513 = !DILocation(line: 198, column: 10, scope: !2503)
!2514 = !DILocation(line: 198, column: 8, scope: !2503)
!2515 = !DILocation(line: 192, column: 12, scope: !2430)
!2516 = !DILocation(line: 199, column: 19, scope: !2503)
!2517 = !DILocation(line: 201, column: 12, scope: !2503)
!2518 = !DILocation(line: 201, column: 5, scope: !2503)
!2519 = !DILocation(line: 0, scope: !2430)
!2520 = !DILocation(line: 203, column: 17, scope: !2436)
!2521 = !DILocation(line: 203, column: 14, scope: !2436)
!2522 = !DILocation(line: 203, column: 7, scope: !2413)
!2523 = !DILocation(line: 207, column: 28, scope: !2442)
!2524 = !DILocation(line: 207, column: 11, scope: !2435)
!2525 = !DILocation(line: 211, column: 4, scope: !2441)
!2526 = !DILocation(line: 0, scope: !2441)
!2527 = !DILocation(line: 0, scope: !2435)
!2528 = !DILocation(line: 211, column: 15, scope: !2441)
!2529 = !DILocation(line: 212, column: 4, scope: !2441)
!2530 = !DILocation(line: 212, column: 7, scope: !2441)
!2531 = !DILocation(line: 212, column: 23, scope: !2441)
!2532 = !DILocation(line: 213, column: 4, scope: !2441)
!2533 = distinct !{!2533, !2525, !2534}
!2534 = !DILocation(line: 218, column: 12, scope: !2441)
!2535 = !DILocation(line: 219, column: 22, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 219, column: 8)
!2537 = !DILocation(line: 219, column: 25, scope: !2536)
!2538 = !DILocation(line: 219, column: 41, scope: !2536)
!2539 = !DILocation(line: 219, column: 8, scope: !2441)
!2540 = !DILocation(line: 220, column: 12, scope: !2536)
!2541 = !DILocation(line: 220, column: 6, scope: !2536)
!2542 = !DILocation(line: 221, column: 10, scope: !2440)
!2543 = !DILocation(line: 222, column: 8, scope: !2440)
!2544 = !DILocation(line: 222, column: 13, scope: !2440)
!2545 = !DILocation(line: 223, column: 8, scope: !2440)
!2546 = !DILocation(line: 223, column: 12, scope: !2440)
!2547 = !DILocation(line: 224, column: 5, scope: !2440)
!2548 = !DILocation(line: 225, column: 11, scope: !2440)
!2549 = !DILocation(line: 224, column: 8, scope: !2440)
!2550 = !DILocation(line: 221, column: 8, scope: !2441)
!2551 = !DILocation(line: 227, column: 17, scope: !2439)
!2552 = !DILocation(line: 227, column: 27, scope: !2439)
!2553 = !DILocation(line: 227, column: 30, scope: !2439)
!2554 = !DILocation(line: 227, column: 49, scope: !2439)
!2555 = !DILocation(line: 227, column: 13, scope: !2440)
!2556 = !DILocation(line: 233, column: 8, scope: !2438)
!2557 = !DILocation(line: 0, scope: !2438)
!2558 = !DILocation(line: 233, column: 15, scope: !2438)
!2559 = !DILocation(line: 233, column: 22, scope: !2438)
!2560 = !DILocation(line: 233, column: 17, scope: !2438)
!2561 = !DILocation(line: 234, column: 11, scope: !2438)
!2562 = !DILocation(line: 234, column: 3, scope: !2438)
!2563 = !DILocation(line: 237, column: 11, scope: !2445)
!2564 = !DILocation(line: 238, column: 4, scope: !2445)
!2565 = !DILocation(line: 238, column: 7, scope: !2445)
!2566 = !DILocation(line: 238, column: 39, scope: !2445)
!2567 = !DILocation(line: 237, column: 11, scope: !2446)
!2568 = !DILocation(line: 241, column: 8, scope: !2444)
!2569 = !DILocation(line: 0, scope: !2444)
!2570 = !DILocation(line: 242, column: 8, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 242, column: 8)
!2572 = !DILocation(line: 243, column: 8, scope: !2571)
!2573 = !DILocation(line: 243, column: 11, scope: !2571)
!2574 = !DILocation(line: 244, column: 8, scope: !2571)
!2575 = !DILocation(line: 244, column: 11, scope: !2571)
!2576 = !DILocation(line: 245, column: 11, scope: !2571)
!2577 = !DILocation(line: 246, column: 8, scope: !2571)
!2578 = !DILocation(line: 246, column: 11, scope: !2571)
!2579 = !DILocation(line: 242, column: 8, scope: !2444)
!2580 = !DILocation(line: 252, column: 9, scope: !2445)
!2581 = !DILocation(line: 0, scope: !2446)
!2582 = !DILocation(line: 253, column: 11, scope: !2446)
!2583 = !DILocation(line: 254, column: 7, scope: !2446)
!2584 = !DILocation(line: 260, column: 11, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 260, column: 11)
!2586 = !DILocation(line: 260, column: 37, scope: !2585)
!2587 = !DILocation(line: 260, column: 11, scope: !2446)
!2588 = !DILocation(line: 265, column: 7, scope: !2446)
!2589 = !DILocation(line: 265, column: 16, scope: !2446)
!2590 = !DILocation(line: 265, column: 26, scope: !2446)
!2591 = !DILocation(line: 273, column: 11, scope: !2449)
!2592 = !DILocation(line: 265, column: 29, scope: !2446)
!2593 = !DILocation(line: 265, column: 43, scope: !2446)
!2594 = !DILocation(line: 266, column: 13, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 266, column: 13)
!2596 = !DILocation(line: 267, column: 6, scope: !2595)
!2597 = !DILocation(line: 268, column: 6, scope: !2595)
!2598 = !DILocation(line: 269, column: 6, scope: !2595)
!2599 = !DILocation(line: 266, column: 13, scope: !2446)
!2600 = distinct !{!2600, !2588, !2601}
!2601 = !DILocation(line: 272, column: 8, scope: !2446)
!2602 = !DILocation(line: 273, column: 25, scope: !2449)
!2603 = !DILocation(line: 274, column: 4, scope: !2449)
!2604 = !DILocation(line: 274, column: 7, scope: !2449)
!2605 = !DILocation(line: 275, column: 7, scope: !2449)
!2606 = !DILocation(line: 273, column: 11, scope: !2446)
!2607 = !DILocation(line: 277, column: 21, scope: !2448)
!2608 = !DILocation(line: 278, column: 4, scope: !2448)
!2609 = !DILocation(line: 0, scope: !2448)
!2610 = !DILocation(line: 278, column: 4, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 278, column: 4)
!2612 = !DILocation(line: 279, column: 10, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 279, column: 10)
!2614 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 278, column: 4)
!2615 = !DILocation(line: 279, column: 32, scope: !2613)
!2616 = !DILocation(line: 279, column: 10, scope: !2614)
!2617 = !DILocation(line: 278, column: 34, scope: !2614)
!2618 = !DILocation(line: 278, column: 4, scope: !2614)
!2619 = distinct !{!2619, !2610, !2620}
!2620 = !DILocation(line: 280, column: 8, scope: !2611)
!2621 = !DILocation(line: 282, column: 8, scope: !2448)
!2622 = !DILocation(line: 288, column: 9, scope: !2449)
!2623 = !DILocation(line: 289, column: 7, scope: !2446)
!2624 = !DILocation(line: 289, column: 16, scope: !2446)
!2625 = !DILocation(line: 289, column: 26, scope: !2446)
!2626 = !DILocation(line: 289, column: 29, scope: !2446)
!2627 = !DILocation(line: 289, column: 43, scope: !2446)
!2628 = !DILocation(line: 290, column: 13, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 290, column: 13)
!2630 = !DILocation(line: 291, column: 6, scope: !2629)
!2631 = !DILocation(line: 292, column: 6, scope: !2629)
!2632 = distinct !{!2632, !2623, !2633}
!2633 = !DILocation(line: 296, column: 8, scope: !2446)
!2634 = !DILocation(line: 301, column: 7, scope: !2446)
!2635 = !DILocation(line: 304, column: 7, scope: !2446)
!2636 = distinct !{!2636, !2556, !2637}
!2637 = !DILocation(line: 305, column: 5, scope: !2438)
!2638 = !DILocation(line: 306, column: 14, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 306, column: 12)
!2640 = !DILocation(line: 306, column: 12, scope: !2438)
!2641 = !DILocation(line: 308, column: 6, scope: !2438)
!2642 = !DILocation(line: 0, scope: !2442)
!2643 = !DILocation(line: 313, column: 15, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 313, column: 11)
!2645 = !DILocation(line: 313, column: 11, scope: !2435)
!2646 = !DILocation(line: 314, column: 13, scope: !2644)
!2647 = !DILocation(line: 314, column: 2, scope: !2644)
!2648 = !DILocation(line: 315, column: 17, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 315, column: 16)
!2650 = !DILocation(line: 315, column: 16, scope: !2644)
!2651 = !DILocation(line: 316, column: 9, scope: !2649)
!2652 = !DILocation(line: 316, column: 2, scope: !2649)
!2653 = !DILocation(line: 0, scope: !2644)
!2654 = !DILocation(line: 319, column: 38, scope: !2435)
!2655 = !DILocation(line: 319, column: 15, scope: !2435)
!2656 = !DILocation(line: 320, column: 20, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 320, column: 11)
!2658 = !DILocation(line: 320, column: 17, scope: !2657)
!2659 = !DILocation(line: 320, column: 11, scope: !2435)
!2660 = !DILocation(line: 322, column: 8, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 322, column: 8)
!2662 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 321, column: 2)
!2663 = !DILocation(line: 322, column: 26, scope: !2661)
!2664 = !DILocation(line: 323, column: 8, scope: !2661)
!2665 = !DILocation(line: 323, column: 11, scope: !2661)
!2666 = !DILocation(line: 322, column: 8, scope: !2662)
!2667 = !DILocation(line: 324, column: 14, scope: !2661)
!2668 = !DILocation(line: 324, column: 6, scope: !2661)
!2669 = !DILocation(line: 326, column: 14, scope: !2661)
!2670 = !DILocation(line: 328, column: 15, scope: !2452)
!2671 = !DILocation(line: 329, column: 7, scope: !2452)
!2672 = !DILocation(line: 329, column: 4, scope: !2452)
!2673 = !DILocation(line: 330, column: 7, scope: !2452)
!2674 = !DILocation(line: 330, column: 26, scope: !2452)
!2675 = !DILocation(line: 331, column: 16, scope: !2452)
!2676 = !DILocation(line: 331, column: 13, scope: !2452)
!2677 = !DILocation(line: 331, column: 4, scope: !2452)
!2678 = !DILocation(line: 333, column: 41, scope: !2451)
!2679 = !DILocation(line: 333, column: 18, scope: !2451)
!2680 = !DILocation(line: 0, scope: !2451)
!2681 = !DILocation(line: 334, column: 18, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 334, column: 8)
!2683 = !DILocation(line: 334, column: 15, scope: !2682)
!2684 = !DILocation(line: 334, column: 8, scope: !2451)
!2685 = !DILocation(line: 336, column: 12, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 336, column: 12)
!2687 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 335, column: 6)
!2688 = !DILocation(line: 336, column: 31, scope: !2686)
!2689 = !DILocation(line: 337, column: 5, scope: !2686)
!2690 = !DILocation(line: 337, column: 8, scope: !2686)
!2691 = !DILocation(line: 336, column: 12, scope: !2687)
!2692 = !DILocation(line: 338, column: 12, scope: !2686)
!2693 = !DILocation(line: 338, column: 3, scope: !2686)
!2694 = !DILocation(line: 340, column: 12, scope: !2686)
!2695 = !DILocation(line: 0, scope: !2686)
!2696 = !DILocation(line: 341, column: 16, scope: !2687)
!2697 = !DILocation(line: 342, column: 6, scope: !2687)
!2698 = !DILocation(line: 345, column: 13, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 345, column: 12)
!2700 = !DILocation(line: 345, column: 12, scope: !2436)
!2701 = !DILocation(line: 346, column: 12, scope: !2699)
!2702 = !DILocation(line: 346, column: 5, scope: !2699)
!2703 = !DILocation(line: 0, scope: !2436)
!2704 = !DILocation(line: 350, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 350, column: 7)
!2706 = !DILocation(line: 350, column: 7, scope: !2413)
!2707 = !DILocation(line: 351, column: 12, scope: !2705)
!2708 = !DILocation(line: 351, column: 5, scope: !2705)
!2709 = !DILocation(line: 353, column: 10, scope: !2413)
!2710 = !DILocation(line: 353, column: 3, scope: !2413)
!2711 = !DILocation(line: 354, column: 1, scope: !2413)
!2712 = distinct !DISubprogram(name: "collect_object_sizes_for", scope: !3, file: !3, line: 852, type: !2713, scopeLine: 853, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !2416, !578}
!2715 = !{!2716, !2717, !2718, !2719, !2720, !2721, !2722, !2728, !2730, !2732, !2734}
!2716 = !DILocalVariable(name: "osi", arg: 1, scope: !2712, file: !3, line: 852, type: !2416)
!2717 = !DILocalVariable(name: "var", arg: 2, scope: !2712, file: !3, line: 852, type: !578)
!2718 = !DILocalVariable(name: "object_size_type", scope: !2712, file: !3, line: 854, type: !506)
!2719 = !DILocalVariable(name: "varno", scope: !2712, file: !3, line: 855, type: !7)
!2720 = !DILocalVariable(name: "stmt", scope: !2712, file: !3, line: 856, type: !870)
!2721 = !DILocalVariable(name: "reexamine", scope: !2712, file: !3, line: 857, type: !505)
!2722 = !DILocalVariable(name: "rhs", scope: !2723, file: !3, line: 904, type: !578)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 903, column: 11)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 901, column: 18)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 899, column: 13)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 898, column: 7)
!2727 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 896, column: 5)
!2728 = !DILocalVariable(name: "arg", scope: !2729, file: !3, line: 921, type: !578)
!2729 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 920, column: 7)
!2730 = !DILocalVariable(name: "decl", scope: !2731, file: !3, line: 944, type: !578)
!2731 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 943, column: 7)
!2732 = !DILocalVariable(name: "i", scope: !2733, file: !3, line: 955, type: !7)
!2733 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 954, column: 7)
!2734 = !DILocalVariable(name: "rhs", scope: !2735, file: !3, line: 959, type: !578)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 958, column: 4)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 957, column: 2)
!2737 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 957, column: 2)
!2738 = !DILocation(line: 0, scope: !2712)
!2739 = !DILocation(line: 854, column: 31, scope: !2712)
!2740 = !DILocation(line: 855, column: 24, scope: !2712)
!2741 = !DILocation(line: 859, column: 21, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 859, column: 7)
!2743 = !DILocation(line: 859, column: 7, scope: !2742)
!2744 = !DILocation(line: 859, column: 7, scope: !2712)
!2745 = !DILocation(line: 862, column: 12, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 862, column: 7)
!2747 = !DILocation(line: 862, column: 17, scope: !2746)
!2748 = !DILocation(line: 862, column: 7, scope: !2712)
!2749 = !DILocation(line: 864, column: 32, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 864, column: 11)
!2751 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 863, column: 5)
!2752 = !DILocation(line: 864, column: 13, scope: !2750)
!2753 = !DILocation(line: 864, column: 11, scope: !2751)
!2754 = !DILocation(line: 866, column: 25, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 865, column: 2)
!2756 = !DILocation(line: 866, column: 4, scope: !2755)
!2757 = !DILocation(line: 868, column: 8, scope: !2755)
!2758 = !DILocation(line: 867, column: 4, scope: !2755)
!2759 = !DILocation(line: 868, column: 6, scope: !2755)
!2760 = !DILocation(line: 883, column: 5, scope: !2751)
!2761 = !DILocation(line: 874, column: 25, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 871, column: 2)
!2763 = !DILocation(line: 874, column: 4, scope: !2762)
!2764 = !DILocation(line: 875, column: 8, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 875, column: 8)
!2766 = !DILocation(line: 875, column: 18, scope: !2765)
!2767 = !DILocation(line: 875, column: 22, scope: !2765)
!2768 = !DILocation(line: 875, column: 33, scope: !2765)
!2769 = !DILocation(line: 875, column: 8, scope: !2762)
!2770 = !DILocation(line: 877, column: 8, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 876, column: 6)
!2772 = !DILocation(line: 878, column: 28, scope: !2771)
!2773 = !DILocation(line: 878, column: 44, scope: !2771)
!2774 = !DILocation(line: 878, column: 8, scope: !2771)
!2775 = !DILocation(line: 879, column: 17, scope: !2771)
!2776 = !DILocation(line: 879, column: 8, scope: !2771)
!2777 = !DILocation(line: 880, column: 6, scope: !2771)
!2778 = !DILocation(line: 885, column: 7, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 885, column: 7)
!2780 = !DILocation(line: 885, column: 17, scope: !2779)
!2781 = !DILocation(line: 885, column: 21, scope: !2779)
!2782 = !DILocation(line: 885, column: 32, scope: !2779)
!2783 = !DILocation(line: 885, column: 7, scope: !2712)
!2784 = !DILocation(line: 887, column: 7, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 886, column: 5)
!2786 = !DILocation(line: 888, column: 27, scope: !2785)
!2787 = !DILocation(line: 888, column: 43, scope: !2785)
!2788 = !DILocation(line: 888, column: 7, scope: !2785)
!2789 = !DILocation(line: 889, column: 16, scope: !2785)
!2790 = !DILocation(line: 889, column: 7, scope: !2785)
!2791 = !DILocation(line: 890, column: 5, scope: !2785)
!2792 = !DILocation(line: 892, column: 10, scope: !2712)
!2793 = !DILocation(line: 895, column: 11, scope: !2712)
!2794 = !DILocation(line: 895, column: 3, scope: !2712)
!2795 = !DILocation(line: 0, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 961, column: 10)
!2797 = !DILocation(line: 957, column: 2, scope: !2737)
!2798 = !DILocation(line: 899, column: 13, scope: !2725)
!2799 = !DILocation(line: 899, column: 43, scope: !2725)
!2800 = !DILocation(line: 899, column: 13, scope: !2726)
!2801 = !DILocation(line: 900, column: 23, scope: !2725)
!2802 = !DILocation(line: 900, column: 11, scope: !2725)
!2803 = !DILocation(line: 901, column: 18, scope: !2724)
!2804 = !DILocation(line: 902, column: 18, scope: !2724)
!2805 = !DILocation(line: 902, column: 21, scope: !2724)
!2806 = !DILocation(line: 901, column: 18, scope: !2725)
!2807 = !DILocation(line: 904, column: 24, scope: !2723)
!2808 = !DILocation(line: 0, scope: !2723)
!2809 = !DILocation(line: 906, column: 17, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 906, column: 17)
!2811 = !DILocation(line: 906, column: 33, scope: !2810)
!2812 = !DILocation(line: 907, column: 17, scope: !2810)
!2813 = !DILocation(line: 907, column: 20, scope: !2810)
!2814 = !DILocation(line: 906, column: 17, scope: !2723)
!2815 = !DILocation(line: 908, column: 27, scope: !2810)
!2816 = !DILocation(line: 908, column: 15, scope: !2810)
!2817 = !DILocation(line: 909, column: 38, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 909, column: 22)
!2819 = !DILocation(line: 909, column: 22, scope: !2810)
!2820 = !DILocation(line: 910, column: 27, scope: !2818)
!2821 = !DILocation(line: 910, column: 15, scope: !2818)
!2822 = !DILocation(line: 912, column: 15, scope: !2818)
!2823 = !DILocation(line: 915, column: 11, scope: !2724)
!2824 = !DILocation(line: 921, column: 20, scope: !2729)
!2825 = !DILocation(line: 0, scope: !2729)
!2826 = !DILocation(line: 922, column: 13, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 922, column: 13)
!2828 = !DILocation(line: 922, column: 13, scope: !2729)
!2829 = !DILocation(line: 924, column: 17, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 924, column: 17)
!2831 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 923, column: 11)
!2832 = !DILocation(line: 924, column: 33, scope: !2830)
!2833 = !DILocation(line: 925, column: 17, scope: !2830)
!2834 = !DILocation(line: 925, column: 20, scope: !2830)
!2835 = !DILocation(line: 924, column: 17, scope: !2831)
!2836 = !DILocation(line: 926, column: 27, scope: !2830)
!2837 = !DILocation(line: 926, column: 15, scope: !2830)
!2838 = !DILocation(line: 927, column: 38, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 927, column: 22)
!2840 = !DILocation(line: 927, column: 22, scope: !2830)
!2841 = !DILocation(line: 928, column: 27, scope: !2839)
!2842 = !DILocation(line: 928, column: 15, scope: !2839)
!2843 = !DILocation(line: 930, column: 15, scope: !2839)
!2844 = !DILocation(line: 933, column: 11, scope: !2827)
!2845 = !DILocation(line: 939, column: 47, scope: !2727)
!2846 = !DILocation(line: 939, column: 7, scope: !2727)
!2847 = !DILocation(line: 939, column: 45, scope: !2727)
!2848 = !DILocation(line: 940, column: 7, scope: !2727)
!2849 = !DILocation(line: 944, column: 14, scope: !2731)
!2850 = !DILocation(line: 0, scope: !2731)
!2851 = !DILocation(line: 946, column: 6, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 946, column: 6)
!2853 = !DILocation(line: 946, column: 23, scope: !2852)
!2854 = !DILocation(line: 946, column: 36, scope: !2852)
!2855 = !DILocation(line: 946, column: 39, scope: !2852)
!2856 = !DILocation(line: 946, column: 6, scope: !2731)
!2857 = !DILocation(line: 947, column: 4, scope: !2852)
!2858 = !DILocation(line: 949, column: 4, scope: !2852)
!2859 = !DILocation(line: 893, column: 13, scope: !2712)
!2860 = !DILocation(line: 0, scope: !2737)
!2861 = !DILocation(line: 0, scope: !2733)
!2862 = !DILocation(line: 957, column: 18, scope: !2736)
!2863 = !DILocation(line: 957, column: 16, scope: !2736)
!2864 = !DILocation(line: 959, column: 17, scope: !2735)
!2865 = !DILocation(line: 959, column: 43, scope: !2735)
!2866 = !DILocation(line: 0, scope: !2735)
!2867 = !DILocation(line: 961, column: 10, scope: !2796)
!2868 = !DILocation(line: 962, column: 6, scope: !2796)
!2869 = !DILocation(line: 962, column: 3, scope: !2796)
!2870 = !DILocation(line: 961, column: 10, scope: !2735)
!2871 = !DILocation(line: 965, column: 10, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 965, column: 10)
!2873 = !DILocation(line: 965, column: 26, scope: !2872)
!2874 = !DILocation(line: 965, column: 10, scope: !2735)
!2875 = !DILocation(line: 966, column: 21, scope: !2872)
!2876 = !DILocation(line: 966, column: 18, scope: !2872)
!2877 = !DILocation(line: 966, column: 8, scope: !2872)
!2878 = !DILocation(line: 967, column: 20, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 967, column: 15)
!2880 = !DILocation(line: 967, column: 25, scope: !2879)
!2881 = !DILocation(line: 967, column: 15, scope: !2872)
!2882 = !DILocation(line: 968, column: 8, scope: !2879)
!2883 = !DILocation(line: 957, column: 47, scope: !2736)
!2884 = !DILocation(line: 957, column: 2, scope: !2736)
!2885 = distinct !{!2885, !2797, !2886}
!2886 = !DILocation(line: 969, column: 4, scope: !2737)
!2887 = !DILocation(line: 974, column: 7, scope: !2727)
!2888 = !DILocation(line: 975, column: 5, scope: !2727)
!2889 = !DILocation(line: 977, column: 9, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 977, column: 7)
!2891 = !DILocation(line: 978, column: 7, scope: !2890)
!2892 = !DILocation(line: 978, column: 10, scope: !2890)
!2893 = !DILocation(line: 978, column: 51, scope: !2890)
!2894 = !DILocation(line: 978, column: 48, scope: !2890)
!2895 = !DILocation(line: 977, column: 7, scope: !2712)
!2896 = !DILocation(line: 980, column: 23, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 979, column: 5)
!2898 = !DILocation(line: 980, column: 7, scope: !2897)
!2899 = !DILocation(line: 981, column: 30, scope: !2897)
!2900 = !DILocation(line: 981, column: 7, scope: !2897)
!2901 = !DILocation(line: 982, column: 5, scope: !2897)
!2902 = !DILocation(line: 985, column: 28, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 984, column: 5)
!2904 = !DILocation(line: 985, column: 7, scope: !2903)
!2905 = !DILocation(line: 986, column: 11, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 986, column: 11)
!2907 = !DILocation(line: 986, column: 21, scope: !2906)
!2908 = !DILocation(line: 986, column: 25, scope: !2906)
!2909 = !DILocation(line: 986, column: 36, scope: !2906)
!2910 = !DILocation(line: 986, column: 11, scope: !2903)
!2911 = !DILocation(line: 988, column: 4, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 987, column: 2)
!2913 = !DILocation(line: 989, column: 24, scope: !2912)
!2914 = !DILocation(line: 989, column: 40, scope: !2912)
!2915 = !DILocation(line: 989, column: 4, scope: !2912)
!2916 = !DILocation(line: 990, column: 13, scope: !2912)
!2917 = !DILocation(line: 990, column: 4, scope: !2912)
!2918 = !DILocation(line: 991, column: 2, scope: !2912)
!2919 = !DILocation(line: 993, column: 1, scope: !2712)
!2920 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !6, file: !6, line: 182, type: !2921, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2925)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!7, !2923}
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1217)
!2925 = !{!2926}
!2926 = !DILocalVariable(name: "vec_", arg: 1, scope: !2920, file: !6, line: 182, type: !2923)
!2927 = !DILocation(line: 0, scope: !2920)
!2928 = !DILocation(line: 182, column: 1, scope: !2920)
!2929 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !518, file: !518, line: 224, type: !2930, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2936)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{null, !2932, !2933, !7, !513}
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !515, line: 48, baseType: !2934)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!2936 = !{!2937, !2938, !2939, !2940}
!2937 = !DILocalVariable(name: "bi", arg: 1, scope: !2929, file: !518, line: 224, type: !2932)
!2938 = !DILocalVariable(name: "map", arg: 2, scope: !2929, file: !518, line: 224, type: !2933)
!2939 = !DILocalVariable(name: "start_bit", arg: 3, scope: !2929, file: !518, line: 225, type: !7)
!2940 = !DILocalVariable(name: "bit_no", arg: 4, scope: !2929, file: !518, line: 225, type: !513)
!2941 = !DILocation(line: 0, scope: !2929)
!2942 = !DILocation(line: 227, column: 19, scope: !2929)
!2943 = !DILocation(line: 227, column: 12, scope: !2929)
!2944 = !DILocation(line: 228, column: 7, scope: !2929)
!2945 = !DILocation(line: 228, column: 12, scope: !2929)
!2946 = !DILocation(line: 0, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !518, line: 233, column: 11)
!2948 = distinct !DILexicalBlock(scope: !2929, file: !518, line: 232, column: 5)
!2949 = !DILocation(line: 231, column: 3, scope: !2929)
!2950 = !DILocation(line: 233, column: 12, scope: !2947)
!2951 = !DILocation(line: 233, column: 11, scope: !2948)
!2952 = !DILocation(line: 235, column: 13, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2947, file: !518, line: 234, column: 2)
!2954 = !DILocation(line: 236, column: 4, scope: !2953)
!2955 = !DILocation(line: 239, column: 11, scope: !2948)
!2956 = distinct !{!2956, !2949, !2957}
!2957 = !DILocation(line: 242, column: 5, scope: !2929)
!2958 = !DILocation(line: 245, column: 11, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2929, file: !518, line: 245, column: 7)
!2960 = !DILocation(line: 245, column: 17, scope: !2959)
!2961 = !DILocation(line: 245, column: 22, scope: !2959)
!2962 = !DILocation(line: 245, column: 7, scope: !2929)
!2963 = !DILocation(line: 246, column: 27, scope: !2959)
!2964 = !DILocation(line: 246, column: 32, scope: !2959)
!2965 = !DILocation(line: 246, column: 5, scope: !2959)
!2966 = !DILocation(line: 249, column: 7, scope: !2929)
!2967 = !DILocation(line: 249, column: 15, scope: !2929)
!2968 = !DILocation(line: 250, column: 14, scope: !2929)
!2969 = !DILocation(line: 251, column: 7, scope: !2929)
!2970 = !DILocation(line: 251, column: 12, scope: !2929)
!2971 = !DILocation(line: 257, column: 16, scope: !2929)
!2972 = !DILocation(line: 257, column: 13, scope: !2929)
!2973 = !DILocation(line: 259, column: 11, scope: !2929)
!2974 = !DILocation(line: 260, column: 1, scope: !2929)
!2975 = distinct !DISubprogram(name: "bmp_iter_set", scope: !518, file: !518, line: 393, type: !2976, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!505, !2932, !513}
!2978 = !{!2979, !2980, !2981}
!2979 = !DILocalVariable(name: "bi", arg: 1, scope: !2975, file: !518, line: 393, type: !2932)
!2980 = !DILocalVariable(name: "bit_no", arg: 2, scope: !2975, file: !518, line: 393, type: !513)
!2981 = !DILabel(scope: !2982, name: "next_bit", file: !518, line: 398)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !518, line: 397, column: 5)
!2983 = distinct !DILexicalBlock(scope: !2975, file: !518, line: 396, column: 7)
!2984 = !DILocation(line: 0, scope: !2975)
!2985 = !DILocation(line: 396, column: 11, scope: !2983)
!2986 = !DILocation(line: 396, column: 7, scope: !2983)
!2987 = !DILocation(line: 396, column: 7, scope: !2975)
!2988 = !DILocation(line: 419, column: 15, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !518, line: 418, column: 2)
!2990 = distinct !DILexicalBlock(scope: !2975, file: !518, line: 415, column: 5)
!2991 = !DILocation(line: 399, column: 7, scope: !2982)
!2992 = !DILocation(line: 398, column: 5, scope: !2982)
!2993 = !DILocation(line: 399, column: 20, scope: !2982)
!2994 = !DILocation(line: 399, column: 25, scope: !2982)
!2995 = !DILocation(line: 399, column: 14, scope: !2982)
!2996 = !DILocation(line: 401, column: 13, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2982, file: !518, line: 400, column: 2)
!2998 = !DILocation(line: 402, column: 12, scope: !2997)
!2999 = distinct !{!2999, !2991, !3000}
!3000 = !DILocation(line: 403, column: 2, scope: !2982)
!3001 = !DILocation(line: 410, column: 15, scope: !2975)
!3002 = !DILocation(line: 410, column: 42, scope: !2975)
!3003 = !DILocation(line: 411, column: 26, scope: !2975)
!3004 = !DILocation(line: 410, column: 11, scope: !2975)
!3005 = !DILocation(line: 412, column: 7, scope: !2975)
!3006 = !DILocation(line: 412, column: 14, scope: !2975)
!3007 = !DILocation(line: 0, scope: !2990)
!3008 = !DILocation(line: 414, column: 3, scope: !2975)
!3009 = !DILocation(line: 417, column: 7, scope: !2990)
!3010 = !DILocation(line: 417, column: 18, scope: !2990)
!3011 = !DILocation(line: 417, column: 26, scope: !2990)
!3012 = !DILocation(line: 419, column: 13, scope: !2989)
!3013 = !DILocation(line: 420, column: 8, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2989, file: !518, line: 420, column: 8)
!3015 = !DILocation(line: 420, column: 8, scope: !2989)
!3016 = !DILocation(line: 422, column: 12, scope: !2989)
!3017 = !DILocation(line: 423, column: 15, scope: !2989)
!3018 = distinct !{!3018, !3009, !3019}
!3019 = !DILocation(line: 424, column: 2, scope: !2990)
!3020 = !DILocation(line: 427, column: 28, scope: !2990)
!3021 = !DILocation(line: 427, column: 16, scope: !2990)
!3022 = !DILocation(line: 428, column: 12, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2990, file: !518, line: 428, column: 11)
!3024 = !DILocation(line: 428, column: 11, scope: !2990)
!3025 = !DILocation(line: 430, column: 27, scope: !2990)
!3026 = !DILocation(line: 430, column: 32, scope: !2990)
!3027 = !DILocation(line: 430, column: 15, scope: !2990)
!3028 = !DILocation(line: 431, column: 19, scope: !2990)
!3029 = distinct !{!3029, !3008, !3030}
!3030 = !DILocation(line: 432, column: 5, scope: !2975)
!3031 = !DILocation(line: 433, column: 1, scope: !2975)
!3032 = distinct !DISubprogram(name: "check_for_plus_in_loops", scope: !3, file: !3, line: 1100, type: !2713, scopeLine: 1101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3033)
!3033 = !{!3034, !3035, !3036, !3037, !3040}
!3034 = !DILocalVariable(name: "osi", arg: 1, scope: !3032, file: !3, line: 1100, type: !2416)
!3035 = !DILocalVariable(name: "var", arg: 2, scope: !3032, file: !3, line: 1100, type: !578)
!3036 = !DILocalVariable(name: "stmt", scope: !3032, file: !3, line: 1102, type: !870)
!3037 = !DILocalVariable(name: "basevar", scope: !3038, file: !3, line: 1112, type: !578)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 1111, column: 5)
!3039 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 1109, column: 7)
!3040 = !DILocalVariable(name: "cst", scope: !3038, file: !3, line: 1113, type: !578)
!3041 = !DILocation(line: 0, scope: !3032)
!3042 = !DILocation(line: 1102, column: 17, scope: !3032)
!3043 = !DILocation(line: 1109, column: 7, scope: !3039)
!3044 = !DILocation(line: 1110, column: 7, scope: !3039)
!3045 = !DILocation(line: 1110, column: 10, scope: !3039)
!3046 = !DILocation(line: 1110, column: 40, scope: !3039)
!3047 = !DILocation(line: 1109, column: 7, scope: !3032)
!3048 = !DILocation(line: 1112, column: 22, scope: !3038)
!3049 = !DILocation(line: 0, scope: !3038)
!3050 = !DILocation(line: 1113, column: 18, scope: !3038)
!3051 = !DILocation(line: 1115, column: 7, scope: !3038)
!3052 = !DILocation(line: 1117, column: 11, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1117, column: 11)
!3054 = !DILocation(line: 1117, column: 11, scope: !3038)
!3055 = !DILocation(line: 1120, column: 12, scope: !3038)
!3056 = !DILocation(line: 1120, column: 19, scope: !3038)
!3057 = !DILocation(line: 1120, column: 7, scope: !3038)
!3058 = !DILocation(line: 1120, column: 47, scope: !3038)
!3059 = !DILocation(line: 1121, column: 21, scope: !3038)
!3060 = !DILocation(line: 1121, column: 13, scope: !3038)
!3061 = !DILocation(line: 1121, column: 16, scope: !3038)
!3062 = !DILocation(line: 1121, column: 19, scope: !3038)
!3063 = !DILocation(line: 1122, column: 7, scope: !3038)
!3064 = !DILocation(line: 1123, column: 12, scope: !3038)
!3065 = !DILocation(line: 1123, column: 19, scope: !3038)
!3066 = !DILocation(line: 1123, column: 7, scope: !3038)
!3067 = !DILocation(line: 1123, column: 47, scope: !3038)
!3068 = !DILocation(line: 1124, column: 15, scope: !3038)
!3069 = !DILocation(line: 1125, column: 5, scope: !3039)
!3070 = !DILocation(line: 1126, column: 1, scope: !3032)
!3071 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !6, file: !6, line: 182, type: !3072, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!578, !2923, !7}
!3074 = !{!3075, !3076}
!3075 = !DILocalVariable(name: "vec_", arg: 1, scope: !3071, file: !6, line: 182, type: !2923)
!3076 = !DILocalVariable(name: "ix_", arg: 2, scope: !3071, file: !6, line: 182, type: !7)
!3077 = !DILocation(line: 0, scope: !3071)
!3078 = !DILocation(line: 182, column: 1, scope: !3071)
!3079 = distinct !DISubprogram(name: "bmp_iter_next", scope: !518, file: !518, line: 382, type: !3080, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3082)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{null, !2932, !513}
!3082 = !{!3083, !3084}
!3083 = !DILocalVariable(name: "bi", arg: 1, scope: !3079, file: !518, line: 382, type: !2932)
!3084 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3079, file: !518, line: 382, type: !513)
!3085 = !DILocation(line: 0, scope: !3079)
!3086 = !DILocation(line: 384, column: 7, scope: !3079)
!3087 = !DILocation(line: 384, column: 12, scope: !3079)
!3088 = !DILocation(line: 385, column: 11, scope: !3079)
!3089 = !DILocation(line: 386, column: 1, scope: !3079)
!3090 = distinct !DISubprogram(name: "init_object_sizes", scope: !3, file: !3, line: 1132, type: !2402, scopeLine: 1133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3091)
!3091 = !{!3092}
!3092 = !DILocalVariable(name: "object_size_type", scope: !3090, file: !3, line: 1134, type: !506)
!3093 = !DILocation(line: 1136, column: 7, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 1136, column: 7)
!3095 = !DILocation(line: 1136, column: 7, scope: !3090)
!3096 = !DILocation(line: 1139, column: 3, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 1139, column: 3)
!3098 = !DILocation(line: 0, scope: !3097)
!3099 = !DILocation(line: 0, scope: !3090)
!3100 = !DILocation(line: 1139, column: 47, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 1139, column: 3)
!3102 = !DILocation(line: 1141, column: 40, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 1140, column: 5)
!3104 = !DILocation(line: 1141, column: 7, scope: !3103)
!3105 = !DILocation(line: 1141, column: 38, scope: !3103)
!3106 = !DILocation(line: 1142, column: 36, scope: !3103)
!3107 = !DILocation(line: 1142, column: 7, scope: !3103)
!3108 = !DILocation(line: 1142, column: 34, scope: !3103)
!3109 = !DILocation(line: 1139, column: 69, scope: !3101)
!3110 = !DILocation(line: 1139, column: 3, scope: !3101)
!3111 = distinct !{!3111, !3096, !3112}
!3112 = !DILocation(line: 1143, column: 5, scope: !3097)
!3113 = !DILocation(line: 1145, column: 3, scope: !3090)
!3114 = !DILocation(line: 1146, column: 1, scope: !3090)
!3115 = distinct !DISubprogram(name: "fini_object_sizes", scope: !3, file: !3, line: 1152, type: !2402, scopeLine: 1153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3116)
!3116 = !{!3117}
!3117 = !DILocalVariable(name: "object_size_type", scope: !3115, file: !3, line: 1154, type: !506)
!3118 = !DILocation(line: 0, scope: !3115)
!3119 = !DILocation(line: 1156, column: 8, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 1156, column: 3)
!3121 = !DILocation(line: 0, scope: !3120)
!3122 = !DILocation(line: 1156, column: 47, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 1156, column: 3)
!3124 = !DILocation(line: 1156, column: 3, scope: !3120)
!3125 = !DILocation(line: 1158, column: 13, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 1157, column: 5)
!3127 = !DILocation(line: 1158, column: 7, scope: !3126)
!3128 = !DILocation(line: 1159, column: 7, scope: !3126)
!3129 = !DILocation(line: 1160, column: 38, scope: !3126)
!3130 = !DILocation(line: 1156, column: 69, scope: !3123)
!3131 = !DILocation(line: 1156, column: 3, scope: !3123)
!3132 = distinct !{!3132, !3124, !3133}
!3133 = !DILocation(line: 1161, column: 5, scope: !3120)
!3134 = !DILocation(line: 1162, column: 1, scope: !3115)
!3135 = distinct !DISubprogram(name: "compute_object_sizes", scope: !3, file: !3, line: 1168, type: !1707, scopeLine: 1169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3136)
!3136 = !{!3137, !3138, !3148, !3152, !3153, !3154, !3159}
!3137 = !DILocalVariable(name: "bb", scope: !3135, file: !3, line: 1170, type: !833)
!3138 = !DILocalVariable(name: "i", scope: !3139, file: !3, line: 1173, type: !3142)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 1172, column: 5)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 1171, column: 3)
!3141 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 1171, column: 3)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !433, line: 265, baseType: !3143)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 254, size: 192, elements: !3144)
!3144 = !{!3145, !3146, !3147}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3143, file: !433, line: 257, baseType: !865, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3143, file: !433, line: 263, baseType: !860, size: 64, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3143, file: !433, line: 264, baseType: !833, size: 64, offset: 128)
!3148 = !DILocalVariable(name: "callee", scope: !3149, file: !3, line: 1176, type: !578)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 1175, column: 2)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 1174, column: 7)
!3151 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 1174, column: 7)
!3152 = !DILocalVariable(name: "result", scope: !3149, file: !3, line: 1176, type: !578)
!3153 = !DILocalVariable(name: "call", scope: !3149, file: !3, line: 1177, type: !870)
!3154 = !DILocalVariable(name: "ost", scope: !3155, file: !3, line: 1195, type: !578)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 1194, column: 3)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 1192, column: 12)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 1191, column: 6)
!3158 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1190, column: 8)
!3159 = !DILocalVariable(name: "object_size_type", scope: !3160, file: !3, line: 1199, type: !532)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 1198, column: 7)
!3161 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 1197, column: 9)
!3162 = !DILocation(line: 1171, column: 3, scope: !3141)
!3163 = !DILocation(line: 0, scope: !3139)
!3164 = !DILocation(line: 0, scope: !3151)
!3165 = !DILocation(line: 1171, column: 3, scope: !3140)
!3166 = !DILocation(line: 0, scope: !3141)
!3167 = !DILocation(line: 0, scope: !3135)
!3168 = !DILocation(line: 1173, column: 7, scope: !3139)
!3169 = !DILocation(line: 1174, column: 16, scope: !3151)
!3170 = !DILocation(line: 1174, column: 12, scope: !3151)
!3171 = !DILocation(line: 1174, column: 36, scope: !3150)
!3172 = !DILocation(line: 1174, column: 35, scope: !3150)
!3173 = !DILocation(line: 1174, column: 7, scope: !3151)
!3174 = !DILocation(line: 1177, column: 18, scope: !3149)
!3175 = !DILocation(line: 0, scope: !3149)
!3176 = !DILocation(line: 1179, column: 15, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1179, column: 15)
!3178 = !DILocation(line: 1179, column: 34, scope: !3177)
!3179 = !DILocation(line: 1179, column: 15, scope: !3149)
!3180 = !DILocation(line: 1182, column: 13, scope: !3149)
!3181 = !DILocation(line: 1183, column: 9, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1183, column: 8)
!3183 = !DILocation(line: 1184, column: 8, scope: !3182)
!3184 = !DILocation(line: 1184, column: 11, scope: !3182)
!3185 = !DILocation(line: 1184, column: 40, scope: !3182)
!3186 = !DILocation(line: 1185, column: 8, scope: !3182)
!3187 = !DILocation(line: 1185, column: 11, scope: !3182)
!3188 = !DILocation(line: 1185, column: 39, scope: !3182)
!3189 = !DILocation(line: 1183, column: 8, scope: !3149)
!3190 = !DILocation(line: 1188, column: 4, scope: !3149)
!3191 = !DILocation(line: 1189, column: 13, scope: !3149)
!3192 = !DILocation(line: 1190, column: 9, scope: !3158)
!3193 = !DILocation(line: 1190, column: 8, scope: !3149)
!3194 = !DILocation(line: 1192, column: 12, scope: !3156)
!3195 = !DILocation(line: 1192, column: 40, scope: !3156)
!3196 = !DILocation(line: 1193, column: 5, scope: !3156)
!3197 = !DILocation(line: 1193, column: 8, scope: !3156)
!3198 = !DILocation(line: 1192, column: 12, scope: !3157)
!3199 = !DILocation(line: 1195, column: 16, scope: !3155)
!3200 = !DILocation(line: 0, scope: !3155)
!3201 = !DILocation(line: 1197, column: 9, scope: !3161)
!3202 = !DILocation(line: 1197, column: 9, scope: !3155)
!3203 = !DILocation(line: 1200, column: 6, scope: !3160)
!3204 = !DILocation(line: 0, scope: !3160)
!3205 = !DILocation(line: 1202, column: 30, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 1202, column: 13)
!3207 = !DILocation(line: 1202, column: 13, scope: !3160)
!3208 = !DILocation(line: 1203, column: 13, scope: !3206)
!3209 = !DILocation(line: 1203, column: 4, scope: !3206)
!3210 = !DILocation(line: 1205, column: 35, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 1205, column: 18)
!3212 = !DILocation(line: 1206, column: 13, scope: !3211)
!3213 = !DILocation(line: 1205, column: 18, scope: !3206)
!3214 = !DILocation(line: 1210, column: 13, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 1210, column: 12)
!3216 = !DILocation(line: 1210, column: 12, scope: !3157)
!3217 = !DILocation(line: 1214, column: 8, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1214, column: 8)
!3219 = !DILocation(line: 1214, column: 18, scope: !3218)
!3220 = !DILocation(line: 1214, column: 22, scope: !3218)
!3221 = !DILocation(line: 1214, column: 33, scope: !3218)
!3222 = !DILocation(line: 1214, column: 8, scope: !3149)
!3223 = !DILocation(line: 1216, column: 8, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 1215, column: 6)
!3225 = !DILocation(line: 1217, column: 27, scope: !3224)
!3226 = !DILocation(line: 1217, column: 47, scope: !3224)
!3227 = !DILocation(line: 1217, column: 8, scope: !3224)
!3228 = !DILocation(line: 1218, column: 6, scope: !3224)
!3229 = !DILocation(line: 1220, column: 9, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1220, column: 8)
!3231 = !DILocation(line: 1220, column: 8, scope: !3149)
!3232 = !DILocation(line: 1221, column: 6, scope: !3230)
!3233 = !DILocation(line: 1226, column: 8, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1226, column: 8)
!3235 = !DILocation(line: 1226, column: 18, scope: !3234)
!3236 = !DILocation(line: 1226, column: 22, scope: !3234)
!3237 = !DILocation(line: 1226, column: 33, scope: !3234)
!3238 = !DILocation(line: 1226, column: 8, scope: !3149)
!3239 = !DILocation(line: 1228, column: 8, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 1227, column: 6)
!3241 = !DILocation(line: 1229, column: 27, scope: !3240)
!3242 = !DILocation(line: 1229, column: 47, scope: !3240)
!3243 = !DILocation(line: 1229, column: 8, scope: !3240)
!3244 = !DILocation(line: 1230, column: 17, scope: !3240)
!3245 = !DILocation(line: 1230, column: 8, scope: !3240)
!3246 = !DILocation(line: 1231, column: 6, scope: !3240)
!3247 = !DILocation(line: 1174, column: 51, scope: !3150)
!3248 = !DILocation(line: 1174, column: 7, scope: !3150)
!3249 = distinct !{!3249, !3173, !3250}
!3250 = !DILocation(line: 1232, column: 2, scope: !3151)
!3251 = !DILocation(line: 1233, column: 5, scope: !3140)
!3252 = !DILocation(line: 0, scope: !3140)
!3253 = distinct !{!3253, !3162, !3254}
!3254 = !DILocation(line: 1233, column: 5, scope: !3141)
!3255 = !DILocation(line: 1235, column: 3, scope: !3135)
!3256 = !DILocation(line: 1236, column: 3, scope: !3135)
!3257 = distinct !DISubprogram(name: "compute_object_offset", scope: !3, file: !3, line: 93, type: !3258, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3260)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!578, !2417, !2417}
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3266}
!3261 = !DILocalVariable(name: "expr", arg: 1, scope: !3257, file: !3, line: 93, type: !2417)
!3262 = !DILocalVariable(name: "var", arg: 2, scope: !3257, file: !3, line: 93, type: !2417)
!3263 = !DILocalVariable(name: "code", scope: !3257, file: !3, line: 95, type: !5)
!3264 = !DILocalVariable(name: "base", scope: !3257, file: !3, line: 96, type: !578)
!3265 = !DILocalVariable(name: "off", scope: !3257, file: !3, line: 96, type: !578)
!3266 = !DILocalVariable(name: "t", scope: !3257, file: !3, line: 96, type: !578)
!3267 = !DILocation(line: 118, column: 14, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3257, file: !3, line: 102, column: 5)
!3269 = !DILocation(line: 0, scope: !3257)
!3270 = !DILocation(line: 98, column: 12, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3257, file: !3, line: 98, column: 7)
!3272 = !DILocation(line: 98, column: 7, scope: !3257)
!3273 = !DILocation(line: 99, column: 12, scope: !3271)
!3274 = !DILocation(line: 99, column: 5, scope: !3271)
!3275 = !DILocation(line: 101, column: 11, scope: !3257)
!3276 = !DILocation(line: 101, column: 3, scope: !3257)
!3277 = !DILocation(line: 104, column: 37, scope: !3268)
!3278 = !DILocation(line: 104, column: 14, scope: !3268)
!3279 = !DILocation(line: 105, column: 19, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 105, column: 11)
!3281 = !DILocation(line: 105, column: 16, scope: !3280)
!3282 = !DILocation(line: 105, column: 11, scope: !3268)
!3283 = !DILocation(line: 108, column: 11, scope: !3268)
!3284 = !DILocation(line: 109, column: 13, scope: !3268)
!3285 = !DILocation(line: 112, column: 7, scope: !3268)
!3286 = !DILocation(line: 118, column: 37, scope: !3268)
!3287 = !DILocation(line: 121, column: 37, scope: !3268)
!3288 = !DILocation(line: 121, column: 14, scope: !3268)
!3289 = !DILocation(line: 122, column: 19, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 122, column: 11)
!3291 = !DILocation(line: 122, column: 16, scope: !3290)
!3292 = !DILocation(line: 122, column: 11, scope: !3268)
!3293 = !DILocation(line: 125, column: 13, scope: !3268)
!3294 = !DILocation(line: 126, column: 7, scope: !3268)
!3295 = !DILocation(line: 129, column: 37, scope: !3268)
!3296 = !DILocation(line: 129, column: 14, scope: !3268)
!3297 = !DILocation(line: 130, column: 19, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 130, column: 11)
!3299 = !DILocation(line: 130, column: 16, scope: !3298)
!3300 = !DILocation(line: 130, column: 11, scope: !3268)
!3301 = !DILocation(line: 133, column: 11, scope: !3268)
!3302 = !DILocation(line: 134, column: 11, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 134, column: 11)
!3304 = !DILocation(line: 134, column: 25, scope: !3303)
!3305 = !DILocation(line: 134, column: 40, scope: !3303)
!3306 = !DILocation(line: 134, column: 43, scope: !3303)
!3307 = !DILocation(line: 134, column: 64, scope: !3303)
!3308 = !DILocation(line: 134, column: 11, scope: !3268)
!3309 = !DILocation(line: 137, column: 8, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 135, column: 2)
!3311 = !DILocation(line: 138, column: 2, scope: !3310)
!3312 = !DILocation(line: 0, scope: !3268)
!3313 = !DILocation(line: 139, column: 11, scope: !3268)
!3314 = !DILocation(line: 140, column: 13, scope: !3268)
!3315 = !DILocation(line: 141, column: 7, scope: !3268)
!3316 = !DILocation(line: 144, column: 14, scope: !3268)
!3317 = !DILocation(line: 144, column: 7, scope: !3268)
!3318 = !DILocation(line: 147, column: 10, scope: !3257)
!3319 = !DILocation(line: 147, column: 3, scope: !3257)
!3320 = !DILocation(line: 148, column: 1, scope: !3257)
!3321 = distinct !DISubprogram(name: "gimple_code", scope: !433, file: !433, line: 1052, type: !3322, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3325)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!432, !3324}
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !515, line: 60, baseType: !1689)
!3325 = !{!3326}
!3326 = !DILocalVariable(name: "g", arg: 1, scope: !3321, file: !433, line: 1052, type: !3324)
!3327 = !DILocation(line: 0, scope: !3321)
!3328 = !DILocation(line: 1054, column: 20, scope: !3321)
!3329 = !DILocation(line: 1054, column: 3, scope: !3321)
!3330 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !433, file: !433, line: 1815, type: !3331, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!5, !3324}
!3333 = !{!3334, !3335}
!3334 = !DILocalVariable(name: "gs", arg: 1, scope: !3330, file: !433, line: 1815, type: !3324)
!3335 = !DILocalVariable(name: "code", scope: !3330, file: !433, line: 1817, type: !5)
!3336 = !DILocation(line: 0, scope: !3330)
!3337 = !DILocation(line: 1820, column: 10, scope: !3330)
!3338 = !DILocation(line: 1821, column: 7, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3330, file: !433, line: 1821, column: 7)
!3340 = !DILocation(line: 1821, column: 35, scope: !3339)
!3341 = !DILocation(line: 1821, column: 7, scope: !3330)
!3342 = !DILocation(line: 1822, column: 12, scope: !3339)
!3343 = !DILocation(line: 1822, column: 5, scope: !3339)
!3344 = !DILocation(line: 1824, column: 3, scope: !3330)
!3345 = distinct !DISubprogram(name: "plus_stmt_object_size", scope: !3, file: !3, line: 741, type: !3346, scopeLine: 742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3348)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!505, !2416, !578, !870}
!3348 = !{!3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357}
!3349 = !DILocalVariable(name: "osi", arg: 1, scope: !3345, file: !3, line: 741, type: !2416)
!3350 = !DILocalVariable(name: "var", arg: 2, scope: !3345, file: !3, line: 741, type: !578)
!3351 = !DILocalVariable(name: "stmt", arg: 3, scope: !3345, file: !3, line: 741, type: !870)
!3352 = !DILocalVariable(name: "object_size_type", scope: !3345, file: !3, line: 743, type: !506)
!3353 = !DILocalVariable(name: "varno", scope: !3345, file: !3, line: 744, type: !7)
!3354 = !DILocalVariable(name: "bytes", scope: !3345, file: !3, line: 745, type: !532)
!3355 = !DILocalVariable(name: "op0", scope: !3345, file: !3, line: 746, type: !578)
!3356 = !DILocalVariable(name: "op1", scope: !3345, file: !3, line: 746, type: !578)
!3357 = !DILocalVariable(name: "off", scope: !3358, file: !3, line: 767, type: !532)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 766, column: 2)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 763, column: 16)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 761, column: 11)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 760, column: 5)
!3362 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 757, column: 7)
!3363 = !DILocation(line: 0, scope: !3345)
!3364 = !DILocation(line: 743, column: 31, scope: !3345)
!3365 = !DILocation(line: 744, column: 24, scope: !3345)
!3366 = !DILocation(line: 748, column: 3, scope: !3345)
!3367 = !DILocation(line: 750, column: 9, scope: !3345)
!3368 = !DILocation(line: 751, column: 9, scope: !3345)
!3369 = !DILocation(line: 753, column: 7, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 753, column: 7)
!3371 = !DILocation(line: 753, column: 48, scope: !3370)
!3372 = !DILocation(line: 753, column: 45, scope: !3370)
!3373 = !DILocation(line: 753, column: 7, scope: !3345)
!3374 = !DILocation(line: 757, column: 7, scope: !3362)
!3375 = !DILocation(line: 757, column: 23, scope: !3362)
!3376 = !DILocation(line: 758, column: 7, scope: !3362)
!3377 = !DILocation(line: 758, column: 11, scope: !3362)
!3378 = !DILocation(line: 758, column: 27, scope: !3362)
!3379 = !DILocation(line: 759, column: 4, scope: !3362)
!3380 = !DILocation(line: 759, column: 23, scope: !3362)
!3381 = !DILocation(line: 757, column: 7, scope: !3345)
!3382 = !DILocation(line: 761, column: 13, scope: !3360)
!3383 = !DILocation(line: 761, column: 11, scope: !3361)
!3384 = !DILocation(line: 762, column: 2, scope: !3360)
!3385 = !DILocation(line: 763, column: 16, scope: !3359)
!3386 = !DILocation(line: 763, column: 32, scope: !3359)
!3387 = !DILocation(line: 0, scope: !3359)
!3388 = !DILocation(line: 763, column: 16, scope: !3360)
!3389 = !DILocation(line: 764, column: 9, scope: !3359)
!3390 = !DILocation(line: 764, column: 2, scope: !3359)
!3391 = !DILocation(line: 0, scope: !3358)
!3392 = !DILocation(line: 770, column: 12, scope: !3358)
!3393 = !DILocation(line: 771, column: 14, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 771, column: 8)
!3395 = !DILocation(line: 771, column: 8, scope: !3358)
!3396 = !DILocation(line: 773, column: 19, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 773, column: 13)
!3398 = !DILocation(line: 773, column: 17, scope: !3397)
!3399 = !DILocation(line: 773, column: 13, scope: !3394)
!3400 = !DILocation(line: 774, column: 6, scope: !3397)
!3401 = !DILocation(line: 775, column: 13, scope: !3397)
!3402 = !DILocation(line: 0, scope: !3362)
!3403 = !DILocation(line: 784, column: 25, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 784, column: 7)
!3405 = !DILocation(line: 784, column: 30, scope: !3404)
!3406 = !DILocation(line: 0, scope: !3404)
!3407 = !DILocation(line: 784, column: 7, scope: !3345)
!3408 = !DILocation(line: 786, column: 49, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 786, column: 11)
!3410 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 785, column: 5)
!3411 = !DILocation(line: 786, column: 11, scope: !3410)
!3412 = !DILocation(line: 787, column: 40, scope: !3409)
!3413 = !DILocation(line: 787, column: 2, scope: !3409)
!3414 = !DILocation(line: 791, column: 49, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 791, column: 11)
!3416 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 790, column: 5)
!3417 = !DILocation(line: 791, column: 11, scope: !3416)
!3418 = !DILocation(line: 792, column: 40, scope: !3415)
!3419 = !DILocation(line: 792, column: 2, scope: !3415)
!3420 = !DILocation(line: 795, column: 1, scope: !3345)
!3421 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !433, file: !433, line: 1727, type: !3422, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3424)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!578, !3324}
!3424 = !{!3425}
!3425 = !DILocalVariable(name: "gs", arg: 1, scope: !3421, file: !433, line: 1727, type: !3324)
!3426 = !DILocation(line: 0, scope: !3421)
!3427 = !DILocation(line: 1730, column: 10, scope: !3421)
!3428 = !DILocation(line: 1730, column: 3, scope: !3421)
!3429 = distinct !DISubprogram(name: "merge_object_sizes", scope: !3, file: !3, line: 693, type: !3430, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!505, !2416, !578, !578, !532}
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438, !3439}
!3433 = !DILocalVariable(name: "osi", arg: 1, scope: !3429, file: !3, line: 693, type: !2416)
!3434 = !DILocalVariable(name: "dest", arg: 2, scope: !3429, file: !3, line: 693, type: !578)
!3435 = !DILocalVariable(name: "orig", arg: 3, scope: !3429, file: !3, line: 693, type: !578)
!3436 = !DILocalVariable(name: "offset", arg: 4, scope: !3429, file: !3, line: 694, type: !532)
!3437 = !DILocalVariable(name: "object_size_type", scope: !3429, file: !3, line: 696, type: !506)
!3438 = !DILocalVariable(name: "varno", scope: !3429, file: !3, line: 697, type: !7)
!3439 = !DILocalVariable(name: "orig_bytes", scope: !3429, file: !3, line: 698, type: !532)
!3440 = !DILocation(line: 0, scope: !3429)
!3441 = !DILocation(line: 696, column: 31, scope: !3429)
!3442 = !DILocation(line: 697, column: 24, scope: !3429)
!3443 = !DILocation(line: 700, column: 7, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 700, column: 7)
!3445 = !DILocation(line: 700, column: 48, scope: !3444)
!3446 = !DILocation(line: 700, column: 45, scope: !3444)
!3447 = !DILocation(line: 700, column: 7, scope: !3429)
!3448 = !DILocation(line: 702, column: 17, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 702, column: 7)
!3450 = !DILocation(line: 702, column: 14, scope: !3449)
!3451 = !DILocation(line: 702, column: 7, scope: !3429)
!3452 = !DILocation(line: 704, column: 45, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 703, column: 5)
!3454 = !DILocation(line: 705, column: 7, scope: !3453)
!3455 = !DILocation(line: 708, column: 12, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 708, column: 7)
!3457 = !DILocation(line: 708, column: 17, scope: !3456)
!3458 = !DILocation(line: 708, column: 7, scope: !3429)
!3459 = !DILocation(line: 709, column: 5, scope: !3456)
!3460 = !DILocation(line: 711, column: 16, scope: !3429)
!3461 = !DILocation(line: 711, column: 47, scope: !3429)
!3462 = !DILocation(line: 712, column: 18, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 712, column: 7)
!3464 = !DILocation(line: 712, column: 7, scope: !3429)
!3465 = !DILocation(line: 713, column: 18, scope: !3463)
!3466 = !DILocation(line: 716, column: 25, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 716, column: 7)
!3468 = !DILocation(line: 716, column: 30, scope: !3467)
!3469 = !DILocation(line: 0, scope: !3467)
!3470 = !DILocation(line: 716, column: 7, scope: !3429)
!3471 = !DILocation(line: 718, column: 49, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 718, column: 11)
!3473 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 717, column: 5)
!3474 = !DILocation(line: 718, column: 11, scope: !3473)
!3475 = !DILocation(line: 720, column: 42, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 719, column: 2)
!3477 = !DILocation(line: 721, column: 9, scope: !3476)
!3478 = !DILocation(line: 721, column: 17, scope: !3476)
!3479 = !DILocation(line: 722, column: 2, scope: !3476)
!3480 = !DILocation(line: 726, column: 49, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 726, column: 11)
!3482 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 725, column: 5)
!3483 = !DILocation(line: 726, column: 11, scope: !3482)
!3484 = !DILocation(line: 728, column: 42, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 727, column: 2)
!3486 = !DILocation(line: 729, column: 9, scope: !3485)
!3487 = !DILocation(line: 729, column: 17, scope: !3485)
!3488 = !DILocation(line: 730, column: 2, scope: !3485)
!3489 = !DILocation(line: 732, column: 29, scope: !3429)
!3490 = !DILocation(line: 732, column: 40, scope: !3429)
!3491 = !DILocation(line: 732, column: 10, scope: !3429)
!3492 = !DILocation(line: 732, column: 3, scope: !3429)
!3493 = !DILocation(line: 733, column: 1, scope: !3429)
!3494 = distinct !DISubprogram(name: "cond_expr_object_size", scope: !3, file: !3, line: 803, type: !3495, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!505, !2416, !578, !578}
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505}
!3498 = !DILocalVariable(name: "osi", arg: 1, scope: !3494, file: !3, line: 803, type: !2416)
!3499 = !DILocalVariable(name: "var", arg: 2, scope: !3494, file: !3, line: 803, type: !578)
!3500 = !DILocalVariable(name: "value", arg: 3, scope: !3494, file: !3, line: 803, type: !578)
!3501 = !DILocalVariable(name: "then_", scope: !3494, file: !3, line: 805, type: !578)
!3502 = !DILocalVariable(name: "else_", scope: !3494, file: !3, line: 805, type: !578)
!3503 = !DILocalVariable(name: "object_size_type", scope: !3494, file: !3, line: 806, type: !506)
!3504 = !DILocalVariable(name: "varno", scope: !3494, file: !3, line: 807, type: !7)
!3505 = !DILocalVariable(name: "reexamine", scope: !3494, file: !3, line: 808, type: !505)
!3506 = !DILocation(line: 0, scope: !3494)
!3507 = !DILocation(line: 806, column: 31, scope: !3494)
!3508 = !DILocation(line: 807, column: 24, scope: !3494)
!3509 = !DILocation(line: 810, column: 3, scope: !3494)
!3510 = !DILocation(line: 812, column: 7, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 812, column: 7)
!3512 = !DILocation(line: 812, column: 48, scope: !3511)
!3513 = !DILocation(line: 812, column: 45, scope: !3511)
!3514 = !DILocation(line: 812, column: 7, scope: !3494)
!3515 = !DILocation(line: 815, column: 11, scope: !3494)
!3516 = !DILocation(line: 816, column: 11, scope: !3494)
!3517 = !DILocation(line: 818, column: 7, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 818, column: 7)
!3519 = !DILocation(line: 818, column: 25, scope: !3518)
!3520 = !DILocation(line: 818, column: 7, scope: !3494)
!3521 = !DILocation(line: 819, column: 18, scope: !3518)
!3522 = !DILocation(line: 819, column: 5, scope: !3518)
!3523 = !DILocation(line: 821, column: 5, scope: !3518)
!3524 = !DILocation(line: 823, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 823, column: 7)
!3526 = !DILocation(line: 823, column: 25, scope: !3525)
!3527 = !DILocation(line: 823, column: 7, scope: !3494)
!3528 = !DILocation(line: 824, column: 18, scope: !3525)
!3529 = !DILocation(line: 824, column: 15, scope: !3525)
!3530 = !DILocation(line: 824, column: 5, scope: !3525)
!3531 = !DILocation(line: 826, column: 5, scope: !3525)
!3532 = !DILocation(line: 829, column: 1, scope: !3494)
!3533 = distinct !DISubprogram(name: "expr_object_size", scope: !3, file: !3, line: 596, type: !3534, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3536)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{null, !2416, !578, !578}
!3536 = !{!3537, !3538, !3539, !3540, !3541, !3542}
!3537 = !DILocalVariable(name: "osi", arg: 1, scope: !3533, file: !3, line: 596, type: !2416)
!3538 = !DILocalVariable(name: "ptr", arg: 2, scope: !3533, file: !3, line: 596, type: !578)
!3539 = !DILocalVariable(name: "value", arg: 3, scope: !3533, file: !3, line: 596, type: !578)
!3540 = !DILocalVariable(name: "object_size_type", scope: !3533, file: !3, line: 598, type: !506)
!3541 = !DILocalVariable(name: "varno", scope: !3533, file: !3, line: 599, type: !7)
!3542 = !DILocalVariable(name: "bytes", scope: !3533, file: !3, line: 600, type: !532)
!3543 = !DILocation(line: 0, scope: !3533)
!3544 = !DILocation(line: 598, column: 31, scope: !3533)
!3545 = !DILocation(line: 599, column: 24, scope: !3533)
!3546 = !DILocation(line: 602, column: 3, scope: !3533)
!3547 = !DILocation(line: 604, column: 3, scope: !3533)
!3548 = !DILocation(line: 606, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 606, column: 7)
!3550 = !DILocation(line: 606, column: 25, scope: !3549)
!3551 = !DILocation(line: 606, column: 7, scope: !3533)
!3552 = !DILocation(line: 607, column: 13, scope: !3549)
!3553 = !DILocation(line: 610, column: 3, scope: !3533)
!3554 = !DILocation(line: 607, column: 5, scope: !3549)
!3555 = !DILocation(line: 613, column: 7, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 613, column: 7)
!3557 = !DILocation(line: 613, column: 25, scope: !3556)
!3558 = !DILocation(line: 613, column: 7, scope: !3533)
!3559 = !DILocation(line: 614, column: 13, scope: !3556)
!3560 = !DILocation(line: 614, column: 5, scope: !3556)
!3561 = !DILocation(line: 0, scope: !3556)
!3562 = !DILocation(line: 618, column: 25, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 618, column: 7)
!3564 = !DILocation(line: 618, column: 30, scope: !3563)
!3565 = !DILocation(line: 0, scope: !3563)
!3566 = !DILocation(line: 618, column: 7, scope: !3533)
!3567 = !DILocation(line: 620, column: 49, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 620, column: 11)
!3569 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 619, column: 5)
!3570 = !DILocation(line: 620, column: 11, scope: !3569)
!3571 = !DILocation(line: 621, column: 40, scope: !3568)
!3572 = !DILocation(line: 621, column: 2, scope: !3568)
!3573 = !DILocation(line: 625, column: 49, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 625, column: 11)
!3575 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 624, column: 5)
!3576 = !DILocation(line: 625, column: 11, scope: !3575)
!3577 = !DILocation(line: 626, column: 40, scope: !3574)
!3578 = !DILocation(line: 626, column: 2, scope: !3574)
!3579 = !DILocation(line: 628, column: 1, scope: !3533)
!3580 = distinct !DISubprogram(name: "unknown_object_size", scope: !3, file: !3, line: 664, type: !2713, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3581)
!3581 = !{!3582, !3583, !3584, !3585, !3586}
!3582 = !DILocalVariable(name: "osi", arg: 1, scope: !3580, file: !3, line: 664, type: !2416)
!3583 = !DILocalVariable(name: "ptr", arg: 2, scope: !3580, file: !3, line: 664, type: !578)
!3584 = !DILocalVariable(name: "object_size_type", scope: !3580, file: !3, line: 666, type: !506)
!3585 = !DILocalVariable(name: "varno", scope: !3580, file: !3, line: 667, type: !7)
!3586 = !DILocalVariable(name: "bytes", scope: !3580, file: !3, line: 668, type: !532)
!3587 = !DILocation(line: 0, scope: !3580)
!3588 = !DILocation(line: 666, column: 31, scope: !3580)
!3589 = !DILocation(line: 667, column: 24, scope: !3580)
!3590 = !DILocation(line: 670, column: 3, scope: !3580)
!3591 = !DILocation(line: 672, column: 3, scope: !3580)
!3592 = !DILocation(line: 676, column: 25, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 676, column: 7)
!3594 = !DILocation(line: 676, column: 30, scope: !3593)
!3595 = !DILocation(line: 0, scope: !3593)
!3596 = !DILocation(line: 676, column: 7, scope: !3580)
!3597 = !DILocation(line: 678, column: 49, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 678, column: 11)
!3599 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 677, column: 5)
!3600 = !DILocation(line: 678, column: 11, scope: !3599)
!3601 = !DILocation(line: 679, column: 40, scope: !3598)
!3602 = !DILocation(line: 679, column: 2, scope: !3598)
!3603 = !DILocation(line: 683, column: 49, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 683, column: 11)
!3605 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 682, column: 5)
!3606 = !DILocation(line: 683, column: 11, scope: !3605)
!3607 = !DILocation(line: 684, column: 40, scope: !3604)
!3608 = !DILocation(line: 684, column: 2, scope: !3604)
!3609 = !DILocation(line: 686, column: 1, scope: !3580)
!3610 = distinct !DISubprogram(name: "pass_through_call", scope: !3, file: !3, line: 424, type: !3422, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3611)
!3611 = !{!3612, !3613}
!3612 = !DILocalVariable(name: "call", arg: 1, scope: !3610, file: !3, line: 424, type: !3324)
!3613 = !DILocalVariable(name: "callee", scope: !3610, file: !3, line: 426, type: !578)
!3614 = !DILocation(line: 0, scope: !3610)
!3615 = !DILocation(line: 426, column: 17, scope: !3610)
!3616 = !DILocation(line: 428, column: 7, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 428, column: 7)
!3618 = !DILocation(line: 429, column: 7, scope: !3617)
!3619 = !DILocation(line: 429, column: 10, scope: !3617)
!3620 = !DILocation(line: 429, column: 39, scope: !3617)
!3621 = !DILocation(line: 428, column: 7, scope: !3610)
!3622 = !DILocation(line: 430, column: 13, scope: !3617)
!3623 = !DILocation(line: 430, column: 5, scope: !3617)
!3624 = !DILocation(line: 446, column: 6, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 446, column: 6)
!3626 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 431, column: 7)
!3627 = !DILocation(line: 446, column: 34, scope: !3625)
!3628 = !DILocation(line: 446, column: 6, scope: !3626)
!3629 = !DILocation(line: 447, column: 11, scope: !3625)
!3630 = !DILocation(line: 447, column: 4, scope: !3625)
!3631 = !DILocation(line: 454, column: 1, scope: !3610)
!3632 = distinct !DISubprogram(name: "call_object_size", scope: !3, file: !3, line: 634, type: !3633, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{null, !2416, !578, !870}
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641}
!3636 = !DILocalVariable(name: "osi", arg: 1, scope: !3632, file: !3, line: 634, type: !2416)
!3637 = !DILocalVariable(name: "ptr", arg: 2, scope: !3632, file: !3, line: 634, type: !578)
!3638 = !DILocalVariable(name: "call", arg: 3, scope: !3632, file: !3, line: 634, type: !870)
!3639 = !DILocalVariable(name: "object_size_type", scope: !3632, file: !3, line: 636, type: !506)
!3640 = !DILocalVariable(name: "varno", scope: !3632, file: !3, line: 637, type: !7)
!3641 = !DILocalVariable(name: "bytes", scope: !3632, file: !3, line: 638, type: !532)
!3642 = !DILocation(line: 0, scope: !3632)
!3643 = !DILocation(line: 636, column: 31, scope: !3632)
!3644 = !DILocation(line: 637, column: 24, scope: !3632)
!3645 = !DILocation(line: 640, column: 3, scope: !3632)
!3646 = !DILocation(line: 642, column: 3, scope: !3632)
!3647 = !DILocation(line: 644, column: 3, scope: !3632)
!3648 = !DILocation(line: 646, column: 11, scope: !3632)
!3649 = !DILocation(line: 648, column: 25, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 648, column: 7)
!3651 = !DILocation(line: 648, column: 30, scope: !3650)
!3652 = !DILocation(line: 0, scope: !3650)
!3653 = !DILocation(line: 648, column: 7, scope: !3632)
!3654 = !DILocation(line: 650, column: 49, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 650, column: 11)
!3656 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 649, column: 5)
!3657 = !DILocation(line: 650, column: 11, scope: !3656)
!3658 = !DILocation(line: 651, column: 40, scope: !3655)
!3659 = !DILocation(line: 651, column: 2, scope: !3655)
!3660 = !DILocation(line: 655, column: 49, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !3, line: 655, column: 11)
!3662 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 654, column: 5)
!3663 = !DILocation(line: 655, column: 11, scope: !3662)
!3664 = !DILocation(line: 656, column: 40, scope: !3661)
!3665 = !DILocation(line: 656, column: 2, scope: !3661)
!3666 = !DILocation(line: 658, column: 1, scope: !3632)
!3667 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !433, file: !433, line: 3061, type: !3668, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!7, !3324}
!3670 = !{!3671}
!3671 = !DILocalVariable(name: "gs", arg: 1, scope: !3667, file: !433, line: 3061, type: !3324)
!3672 = !DILocation(line: 0, scope: !3667)
!3673 = !DILocation(line: 3064, column: 25, scope: !3667)
!3674 = !DILocation(line: 3064, column: 3, scope: !3667)
!3675 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !433, file: !433, line: 3100, type: !3676, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3679)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!3678, !870, !7}
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!3679 = !{!3680, !3681}
!3680 = !DILocalVariable(name: "gs", arg: 1, scope: !3675, file: !433, line: 3100, type: !870)
!3681 = !DILocalVariable(name: "index", arg: 2, scope: !3675, file: !433, line: 3100, type: !7)
!3682 = !DILocation(line: 0, scope: !3675)
!3683 = !DILocation(line: 3103, column: 3, scope: !3675)
!3684 = !DILocation(line: 3104, column: 12, scope: !3675)
!3685 = !DILocation(line: 3104, column: 3, scope: !3675)
!3686 = distinct !DISubprogram(name: "gimple_expr_code", scope: !433, file: !433, line: 1438, type: !3331, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3687)
!3687 = !{!3688, !3689}
!3688 = !DILocalVariable(name: "stmt", arg: 1, scope: !3686, file: !433, line: 1438, type: !3324)
!3689 = !DILocalVariable(name: "code", scope: !3686, file: !433, line: 1440, type: !432)
!3690 = !DILocation(line: 0, scope: !3686)
!3691 = !DILocation(line: 1440, column: 27, scope: !3686)
!3692 = !DILocation(line: 1441, column: 29, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3686, file: !433, line: 1441, column: 7)
!3694 = !DILocation(line: 1442, column: 42, scope: !3693)
!3695 = !DILocation(line: 1442, column: 5, scope: !3693)
!3696 = !DILocation(line: 1446, column: 5, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3693, file: !433, line: 1443, column: 12)
!3698 = !DILocation(line: 1448, column: 5, scope: !3686)
!3699 = !DILocation(line: 1450, column: 1, scope: !3686)
!3700 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !433, file: !433, line: 1686, type: !3701, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!471, !5}
!3703 = !{!3704}
!3704 = !DILocalVariable(name: "code", arg: 1, scope: !3700, file: !433, line: 1686, type: !5)
!3705 = !DILocation(line: 0, scope: !3700)
!3706 = !DILocation(line: 1688, column: 34, scope: !3700)
!3707 = !DILocation(line: 1688, column: 10, scope: !3700)
!3708 = !DILocation(line: 1688, column: 3, scope: !3700)
!3709 = distinct !DISubprogram(name: "gimple_assign_rhs2", scope: !433, file: !433, line: 1759, type: !3422, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3710)
!3710 = !{!3711}
!3711 = !DILocalVariable(name: "gs", arg: 1, scope: !3709, file: !433, line: 1759, type: !3324)
!3712 = !DILocation(line: 0, scope: !3709)
!3713 = !DILocation(line: 1763, column: 7, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3709, file: !433, line: 1763, column: 7)
!3715 = !DILocation(line: 1763, column: 27, scope: !3714)
!3716 = !DILocation(line: 1763, column: 7, scope: !3709)
!3717 = !DILocation(line: 1764, column: 12, scope: !3714)
!3718 = !DILocation(line: 1764, column: 5, scope: !3714)
!3719 = !DILocation(line: 0, scope: !3714)
!3720 = !DILocation(line: 1767, column: 1, scope: !3709)
!3721 = distinct !DISubprogram(name: "gimple_num_ops", scope: !433, file: !433, line: 1596, type: !3668, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3722)
!3722 = !{!3723}
!3723 = !DILocalVariable(name: "gs", arg: 1, scope: !3721, file: !433, line: 1596, type: !3324)
!3724 = !DILocation(line: 0, scope: !3721)
!3725 = !DILocation(line: 1598, column: 21, scope: !3721)
!3726 = !DILocation(line: 1598, column: 3, scope: !3721)
!3727 = distinct !DISubprogram(name: "gimple_op", scope: !433, file: !433, line: 1631, type: !3728, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3730)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!578, !3324, !7}
!3730 = !{!3731, !3732}
!3731 = !DILocalVariable(name: "gs", arg: 1, scope: !3727, file: !433, line: 1631, type: !3324)
!3732 = !DILocalVariable(name: "i", arg: 2, scope: !3727, file: !433, line: 1631, type: !7)
!3733 = !DILocation(line: 0, scope: !3727)
!3734 = !DILocation(line: 1633, column: 7, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3727, file: !433, line: 1633, column: 7)
!3736 = !DILocation(line: 1633, column: 7, scope: !3727)
!3737 = !DILocation(line: 1638, column: 14, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3735, file: !433, line: 1634, column: 5)
!3739 = !DILocation(line: 1638, column: 7, scope: !3738)
!3740 = !DILocation(line: 0, scope: !3735)
!3741 = !DILocation(line: 1642, column: 1, scope: !3727)
!3742 = distinct !DISubprogram(name: "gimple_has_ops", scope: !433, file: !433, line: 1274, type: !3743, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!505, !3324}
!3745 = !{!3746}
!3746 = !DILocalVariable(name: "g", arg: 1, scope: !3742, file: !433, line: 1274, type: !3324)
!3747 = !DILocation(line: 0, scope: !3742)
!3748 = !DILocation(line: 1276, column: 10, scope: !3742)
!3749 = !DILocation(line: 1276, column: 26, scope: !3742)
!3750 = !DILocation(line: 1276, column: 41, scope: !3742)
!3751 = !DILocation(line: 1276, column: 44, scope: !3742)
!3752 = !DILocation(line: 1276, column: 60, scope: !3742)
!3753 = !DILocation(line: 1276, column: 3, scope: !3742)
!3754 = distinct !DISubprogram(name: "gimple_ops", scope: !433, file: !433, line: 1614, type: !3755, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3757)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!905, !870}
!3757 = !{!3758, !3759}
!3758 = !DILocalVariable(name: "gs", arg: 1, scope: !3754, file: !433, line: 1614, type: !870)
!3759 = !DILocalVariable(name: "off", scope: !3754, file: !433, line: 1616, type: !1016)
!3760 = !DILocation(line: 0, scope: !3754)
!3761 = !DILocation(line: 1621, column: 28, scope: !3754)
!3762 = !DILocation(line: 1621, column: 9, scope: !3754)
!3763 = !DILocation(line: 1622, column: 3, scope: !3754)
!3764 = !DILocation(line: 1624, column: 20, scope: !3754)
!3765 = !DILocation(line: 1624, column: 32, scope: !3754)
!3766 = !DILocation(line: 1624, column: 10, scope: !3754)
!3767 = !DILocation(line: 1624, column: 3, scope: !3754)
!3768 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !433, file: !433, line: 1073, type: !3769, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!477, !870}
!3771 = !{!3772}
!3772 = !DILocalVariable(name: "gs", arg: 1, scope: !3768, file: !433, line: 1073, type: !870)
!3773 = !DILocation(line: 0, scope: !3768)
!3774 = !DILocation(line: 1075, column: 24, scope: !3768)
!3775 = !DILocation(line: 1075, column: 10, scope: !3768)
!3776 = !DILocation(line: 1075, column: 3, scope: !3768)
!3777 = distinct !DISubprogram(name: "gss_for_code", scope: !433, file: !433, line: 1061, type: !3778, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3780)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!477, !432}
!3780 = !{!3781}
!3781 = !DILocalVariable(name: "code", arg: 1, scope: !3777, file: !433, line: 1061, type: !432)
!3782 = !DILocation(line: 0, scope: !3777)
!3783 = !DILocation(line: 1066, column: 10, scope: !3777)
!3784 = !DILocation(line: 1066, column: 3, scope: !3777)
!3785 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !433, file: !433, line: 1954, type: !3422, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3786)
!3786 = !{!3787, !3788}
!3787 = !DILocalVariable(name: "gs", arg: 1, scope: !3785, file: !433, line: 1954, type: !3324)
!3788 = !DILocalVariable(name: "addr", scope: !3785, file: !433, line: 1956, type: !578)
!3789 = !DILocation(line: 0, scope: !3785)
!3790 = !DILocation(line: 1956, column: 15, scope: !3785)
!3791 = !DILocation(line: 1957, column: 7, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3785, file: !433, line: 1957, column: 7)
!3793 = !DILocation(line: 1957, column: 24, scope: !3792)
!3794 = !DILocation(line: 1957, column: 7, scope: !3785)
!3795 = !DILocation(line: 1958, column: 12, scope: !3792)
!3796 = !DILocation(line: 1958, column: 5, scope: !3792)
!3797 = !DILocation(line: 1960, column: 1, scope: !3785)
!3798 = distinct !DISubprogram(name: "gimple_call_num_args", scope: !433, file: !433, line: 2013, type: !3668, scopeLine: 2014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3799)
!3799 = !{!3800, !3801}
!3800 = !DILocalVariable(name: "gs", arg: 1, scope: !3798, file: !433, line: 2013, type: !3324)
!3801 = !DILocalVariable(name: "num_ops", scope: !3798, file: !433, line: 2015, type: !7)
!3802 = !DILocation(line: 0, scope: !3798)
!3803 = !DILocation(line: 2017, column: 13, scope: !3798)
!3804 = !DILocation(line: 2018, column: 18, scope: !3798)
!3805 = !DILocation(line: 2018, column: 3, scope: !3798)
!3806 = distinct !DISubprogram(name: "gimple_call_arg", scope: !433, file: !433, line: 2025, type: !3728, scopeLine: 2026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3807)
!3807 = !{!3808, !3809}
!3808 = !DILocalVariable(name: "gs", arg: 1, scope: !3806, file: !433, line: 2025, type: !3324)
!3809 = !DILocalVariable(name: "index", arg: 2, scope: !3806, file: !433, line: 2025, type: !7)
!3810 = !DILocation(line: 0, scope: !3806)
!3811 = !DILocation(line: 2028, column: 31, scope: !3806)
!3812 = !DILocation(line: 2028, column: 10, scope: !3806)
!3813 = !DILocation(line: 2028, column: 3, scope: !3806)
!3814 = distinct !DISubprogram(name: "gimple_call_fn", scope: !433, file: !433, line: 1911, type: !3422, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3815)
!3815 = !{!3816}
!3816 = !DILocalVariable(name: "gs", arg: 1, scope: !3814, file: !433, line: 1911, type: !3324)
!3817 = !DILocation(line: 0, scope: !3814)
!3818 = !DILocation(line: 1914, column: 10, scope: !3814)
!3819 = !DILocation(line: 1914, column: 3, scope: !3814)
!3820 = distinct !DISubprogram(name: "is_gimple_call", scope: !433, file: !433, line: 1870, type: !3743, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3821)
!3821 = !{!3822}
!3822 = !DILocalVariable(name: "gs", arg: 1, scope: !3820, file: !433, line: 1870, type: !3324)
!3823 = !DILocation(line: 0, scope: !3820)
!3824 = !DILocation(line: 1872, column: 10, scope: !3820)
!3825 = !DILocation(line: 1872, column: 27, scope: !3820)
!3826 = !DILocation(line: 1872, column: 3, scope: !3820)
!3827 = distinct !DISubprogram(name: "alloc_object_size", scope: !3, file: !3, line: 363, type: !3828, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3830)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!532, !3324, !506}
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838}
!3831 = !DILocalVariable(name: "call", arg: 1, scope: !3827, file: !3, line: 363, type: !3324)
!3832 = !DILocalVariable(name: "object_size_type", arg: 2, scope: !3827, file: !3, line: 363, type: !506)
!3833 = !DILocalVariable(name: "callee", scope: !3827, file: !3, line: 365, type: !578)
!3834 = !DILocalVariable(name: "bytes", scope: !3827, file: !3, line: 365, type: !578)
!3835 = !DILocalVariable(name: "alloc_size", scope: !3827, file: !3, line: 366, type: !578)
!3836 = !DILocalVariable(name: "arg1", scope: !3827, file: !3, line: 367, type: !506)
!3837 = !DILocalVariable(name: "arg2", scope: !3827, file: !3, line: 367, type: !506)
!3838 = !DILocalVariable(name: "p", scope: !3839, file: !3, line: 378, type: !578)
!3839 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 377, column: 5)
!3840 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 376, column: 7)
!3841 = !DILocation(line: 0, scope: !3827)
!3842 = !DILocation(line: 369, column: 3, scope: !3827)
!3843 = !DILocation(line: 371, column: 12, scope: !3827)
!3844 = !DILocation(line: 372, column: 8, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 372, column: 7)
!3846 = !DILocation(line: 372, column: 7, scope: !3827)
!3847 = !DILocation(line: 373, column: 12, scope: !3845)
!3848 = !DILocation(line: 373, column: 5, scope: !3845)
!3849 = !DILocation(line: 375, column: 48, scope: !3827)
!3850 = !DILocation(line: 375, column: 16, scope: !3827)
!3851 = !DILocation(line: 376, column: 7, scope: !3840)
!3852 = !DILocation(line: 376, column: 18, scope: !3840)
!3853 = !DILocation(line: 376, column: 21, scope: !3840)
!3854 = !DILocation(line: 376, column: 7, scope: !3827)
!3855 = !DILocation(line: 0, scope: !3839)
!3856 = !DILocation(line: 380, column: 14, scope: !3839)
!3857 = !DILocation(line: 381, column: 11, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3839, file: !3, line: 381, column: 11)
!3859 = !DILocation(line: 381, column: 11, scope: !3839)
!3860 = !DILocation(line: 382, column: 16, scope: !3858)
!3861 = !DILocation(line: 382, column: 9, scope: !3858)
!3862 = !DILocation(line: 385, column: 7, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 385, column: 7)
!3864 = !DILocation(line: 385, column: 36, scope: !3863)
!3865 = !DILocation(line: 385, column: 7, scope: !3827)
!3866 = !DILocation(line: 386, column: 13, scope: !3863)
!3867 = !DILocation(line: 386, column: 5, scope: !3863)
!3868 = !DILocation(line: 389, column: 2, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 387, column: 7)
!3870 = !DILocation(line: 393, column: 2, scope: !3869)
!3871 = !DILocation(line: 380, column: 12, scope: !3839)
!3872 = !DILocation(line: 382, column: 14, scope: !3858)
!3873 = !DILocation(line: 398, column: 12, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 398, column: 7)
!3875 = !DILocation(line: 398, column: 16, scope: !3874)
!3876 = !DILocation(line: 398, column: 32, scope: !3874)
!3877 = !DILocation(line: 398, column: 24, scope: !3874)
!3878 = !DILocation(line: 399, column: 7, scope: !3874)
!3879 = !DILocation(line: 399, column: 10, scope: !3874)
!3880 = !DILocation(line: 399, column: 51, scope: !3874)
!3881 = !DILocation(line: 400, column: 7, scope: !3874)
!3882 = !DILocation(line: 400, column: 16, scope: !3874)
!3883 = !DILocation(line: 401, column: 4, scope: !3874)
!3884 = !DILocation(line: 401, column: 21, scope: !3874)
!3885 = !DILocation(line: 401, column: 13, scope: !3874)
!3886 = !DILocation(line: 402, column: 8, scope: !3874)
!3887 = !DILocation(line: 402, column: 11, scope: !3874)
!3888 = !DILocation(line: 402, column: 52, scope: !3874)
!3889 = !DILocation(line: 398, column: 7, scope: !3827)
!3890 = !DILocation(line: 403, column: 12, scope: !3874)
!3891 = !DILocation(line: 403, column: 5, scope: !3874)
!3892 = !DILocation(line: 405, column: 7, scope: !3827)
!3893 = !DILocation(line: 406, column: 13, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 405, column: 7)
!3895 = !DILocation(line: 406, column: 5, scope: !3894)
!3896 = !DILocation(line: 409, column: 17, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 409, column: 12)
!3898 = !DILocation(line: 409, column: 12, scope: !3894)
!3899 = !DILocation(line: 410, column: 13, scope: !3897)
!3900 = !DILocation(line: 410, column: 5, scope: !3897)
!3901 = !DILocation(line: 0, scope: !3894)
!3902 = !DILocation(line: 412, column: 7, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 412, column: 7)
!3904 = !DILocation(line: 412, column: 13, scope: !3903)
!3905 = !DILocation(line: 412, column: 16, scope: !3903)
!3906 = !DILocation(line: 412, column: 7, scope: !3827)
!3907 = !DILocation(line: 413, column: 12, scope: !3903)
!3908 = !DILocation(line: 413, column: 5, scope: !3903)
!3909 = !DILocation(line: 415, column: 10, scope: !3827)
!3910 = !DILocation(line: 415, column: 3, scope: !3827)
!3911 = !DILocation(line: 416, column: 1, scope: !3827)
!3912 = distinct !DISubprogram(name: "is_gimple_assign", scope: !433, file: !433, line: 1677, type: !3743, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3913)
!3913 = !{!3914}
!3914 = !DILocalVariable(name: "gs", arg: 1, scope: !3912, file: !433, line: 1677, type: !3324)
!3915 = !DILocation(line: 0, scope: !3912)
!3916 = !DILocation(line: 1679, column: 10, scope: !3912)
!3917 = !DILocation(line: 1679, column: 27, scope: !3912)
!3918 = !DILocation(line: 1679, column: 3, scope: !3912)
!3919 = distinct !DISubprogram(name: "check_for_plus_in_loops_1", scope: !3, file: !3, line: 1000, type: !3920, scopeLine: 1002, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3922)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{null, !2416, !578, !7}
!3922 = !{!3923, !3924, !3925, !3926, !3927, !3928, !3933, !3938, !3941, !3942, !3944, !3946}
!3923 = !DILocalVariable(name: "osi", arg: 1, scope: !3919, file: !3, line: 1000, type: !2416)
!3924 = !DILocalVariable(name: "var", arg: 2, scope: !3919, file: !3, line: 1000, type: !578)
!3925 = !DILocalVariable(name: "depth", arg: 3, scope: !3919, file: !3, line: 1001, type: !7)
!3926 = !DILocalVariable(name: "stmt", scope: !3919, file: !3, line: 1003, type: !870)
!3927 = !DILocalVariable(name: "varno", scope: !3919, file: !3, line: 1004, type: !7)
!3928 = !DILocalVariable(name: "sp", scope: !3929, file: !3, line: 1010, type: !513)
!3929 = distinct !DILexicalBlock(scope: !3930, file: !3, line: 1009, column: 2)
!3930 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 1008, column: 11)
!3931 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 1007, column: 5)
!3932 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 1006, column: 7)
!3933 = !DILocalVariable(name: "rhs", scope: !3934, file: !3, line: 1040, type: !578)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 1039, column: 11)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 1036, column: 13)
!3936 = distinct !DILexicalBlock(scope: !3937, file: !3, line: 1035, column: 7)
!3937 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 1032, column: 5)
!3938 = !DILocalVariable(name: "basevar", scope: !3939, file: !3, line: 1046, type: !578)
!3939 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 1045, column: 11)
!3940 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 1044, column: 18)
!3941 = !DILocalVariable(name: "cst", scope: !3939, file: !3, line: 1047, type: !578)
!3942 = !DILocalVariable(name: "arg", scope: !3943, file: !3, line: 1061, type: !578)
!3943 = distinct !DILexicalBlock(scope: !3937, file: !3, line: 1060, column: 7)
!3944 = !DILocalVariable(name: "i", scope: !3945, file: !3, line: 1074, type: !7)
!3945 = distinct !DILexicalBlock(scope: !3937, file: !3, line: 1073, column: 7)
!3946 = !DILocalVariable(name: "rhs", scope: !3947, file: !3, line: 1078, type: !578)
!3947 = distinct !DILexicalBlock(scope: !3948, file: !3, line: 1077, column: 4)
!3948 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 1076, column: 2)
!3949 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 1076, column: 2)
!3950 = !DILocation(line: 0, scope: !3919)
!3951 = !DILocation(line: 1003, column: 17, scope: !3919)
!3952 = !DILocation(line: 1004, column: 24, scope: !3919)
!3953 = !DILocation(line: 1006, column: 12, scope: !3932)
!3954 = !DILocation(line: 1006, column: 7, scope: !3932)
!3955 = !DILocation(line: 1006, column: 7, scope: !3919)
!3956 = !DILocation(line: 1008, column: 30, scope: !3930)
!3957 = !DILocation(line: 1008, column: 11, scope: !3931)
!3958 = !DILocation(line: 1013, column: 19, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 1013, column: 4)
!3960 = !DILocation(line: 0, scope: !3929)
!3961 = !DILocation(line: 0, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 1013, column: 4)
!3963 = !DILocation(line: 0, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3962, file: !3, line: 1014, column: 6)
!3965 = !DILocation(line: 1013, column: 9, scope: !3959)
!3966 = !DILocation(line: 0, scope: !3959)
!3967 = !DILocation(line: 1013, column: 34, scope: !3962)
!3968 = !DILocation(line: 1013, column: 27, scope: !3962)
!3969 = !DILocation(line: 1013, column: 4, scope: !3959)
!3970 = !DILocation(line: 1015, column: 8, scope: !3964)
!3971 = !DILocation(line: 1016, column: 31, scope: !3964)
!3972 = !DILocation(line: 1016, column: 42, scope: !3964)
!3973 = !DILocation(line: 1016, column: 8, scope: !3964)
!3974 = !DILocation(line: 1017, column: 38, scope: !3964)
!3975 = !DILocation(line: 1017, column: 24, scope: !3964)
!3976 = !DILocation(line: 1017, column: 57, scope: !3964)
!3977 = !DILocation(line: 1017, column: 8, scope: !3964)
!3978 = !DILocation(line: 1018, column: 26, scope: !3964)
!3979 = !DILocation(line: 1018, column: 8, scope: !3964)
!3980 = !DILocation(line: 1018, column: 44, scope: !3964)
!3981 = !DILocation(line: 1018, column: 49, scope: !3964)
!3982 = !DILocation(line: 1019, column: 12, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 1019, column: 12)
!3984 = !DILocation(line: 1019, column: 16, scope: !3983)
!3985 = !DILocation(line: 1019, column: 12, scope: !3964)
!3986 = distinct !{!3986, !3969, !3987}
!3987 = !DILocation(line: 1021, column: 6, scope: !3959)
!3988 = !DILocation(line: 1025, column: 33, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 1025, column: 12)
!3990 = !DILocation(line: 1025, column: 14, scope: !3989)
!3991 = !DILocation(line: 1025, column: 12, scope: !3932)
!3992 = !DILocation(line: 1028, column: 8, scope: !3919)
!3993 = !DILocation(line: 1028, column: 3, scope: !3919)
!3994 = !DILocation(line: 1028, column: 22, scope: !3919)
!3995 = !DILocation(line: 1029, column: 9, scope: !3919)
!3996 = !DILocation(line: 1029, column: 12, scope: !3919)
!3997 = !DILocation(line: 1029, column: 15, scope: !3919)
!3998 = !DILocation(line: 1031, column: 11, scope: !3919)
!3999 = !DILocation(line: 1031, column: 3, scope: !3919)
!4000 = !DILocation(line: 1076, column: 2, scope: !3949)
!4001 = !DILocation(line: 1036, column: 14, scope: !3935)
!4002 = !DILocation(line: 1037, column: 14, scope: !3935)
!4003 = !DILocation(line: 1037, column: 17, scope: !3935)
!4004 = !DILocation(line: 1038, column: 13, scope: !3935)
!4005 = !DILocation(line: 1038, column: 16, scope: !3935)
!4006 = !DILocation(line: 1038, column: 54, scope: !3935)
!4007 = !DILocation(line: 1036, column: 13, scope: !3936)
!4008 = !DILocation(line: 1040, column: 24, scope: !3934)
!4009 = !DILocation(line: 0, scope: !3934)
!4010 = !DILocation(line: 1042, column: 13, scope: !3934)
!4011 = !DILocation(line: 1043, column: 11, scope: !3934)
!4012 = !DILocation(line: 1044, column: 18, scope: !3940)
!4013 = !DILocation(line: 1044, column: 48, scope: !3940)
!4014 = !DILocation(line: 1044, column: 18, scope: !3935)
!4015 = !DILocation(line: 1046, column: 28, scope: !3939)
!4016 = !DILocation(line: 0, scope: !3939)
!4017 = !DILocation(line: 1047, column: 24, scope: !3939)
!4018 = !DILocation(line: 1049, column: 13, scope: !3939)
!4019 = !DILocation(line: 1052, column: 49, scope: !3939)
!4020 = !DILocation(line: 1052, column: 48, scope: !3939)
!4021 = !DILocation(line: 1052, column: 46, scope: !3939)
!4022 = !DILocation(line: 1051, column: 13, scope: !3939)
!4023 = !DILocation(line: 1053, column: 11, scope: !3939)
!4024 = !DILocation(line: 1055, column: 11, scope: !3940)
!4025 = !DILocation(line: 1061, column: 20, scope: !3943)
!4026 = !DILocation(line: 0, scope: !3943)
!4027 = !DILocation(line: 1062, column: 13, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 1062, column: 13)
!4029 = !DILocation(line: 1062, column: 13, scope: !3943)
!4030 = !DILocation(line: 1064, column: 17, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 1064, column: 17)
!4032 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 1063, column: 11)
!4033 = !DILocation(line: 1064, column: 33, scope: !4031)
!4034 = !DILocation(line: 1064, column: 17, scope: !4032)
!4035 = !DILocation(line: 1065, column: 15, scope: !4031)
!4036 = !DILocation(line: 1067, column: 15, scope: !4031)
!4037 = !DILocation(line: 0, scope: !3949)
!4038 = !DILocation(line: 0, scope: !3945)
!4039 = !DILocation(line: 1076, column: 18, scope: !3948)
!4040 = !DILocation(line: 1076, column: 16, scope: !3948)
!4041 = !DILocation(line: 1078, column: 17, scope: !3947)
!4042 = !DILocation(line: 1078, column: 43, scope: !3947)
!4043 = !DILocation(line: 0, scope: !3947)
!4044 = !DILocation(line: 1080, column: 10, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !3947, file: !3, line: 1080, column: 10)
!4046 = !DILocation(line: 1080, column: 26, scope: !4045)
!4047 = !DILocation(line: 1080, column: 10, scope: !3947)
!4048 = !DILocation(line: 1081, column: 8, scope: !4045)
!4049 = !DILocation(line: 1076, column: 47, scope: !3948)
!4050 = !DILocation(line: 1076, column: 2, scope: !3948)
!4051 = distinct !{!4051, !4000, !4052}
!4052 = !DILocation(line: 1082, column: 4, scope: !3949)
!4053 = !DILocation(line: 1087, column: 7, scope: !3937)
!4054 = !DILocation(line: 1088, column: 5, scope: !3937)
!4055 = !DILocation(line: 1090, column: 8, scope: !3919)
!4056 = !DILocation(line: 1090, column: 3, scope: !3919)
!4057 = !DILocation(line: 1090, column: 22, scope: !3919)
!4058 = !DILocation(line: 1091, column: 11, scope: !3919)
!4059 = !DILocation(line: 1092, column: 1, scope: !3919)
!4060 = distinct !DISubprogram(name: "gsi_start_bb", scope: !433, file: !433, line: 4418, type: !4061, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4063)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!3142, !833}
!4063 = !{!4064, !4065, !4066}
!4064 = !DILocalVariable(name: "bb", arg: 1, scope: !4060, file: !433, line: 4418, type: !833)
!4065 = !DILocalVariable(name: "i", scope: !4060, file: !433, line: 4420, type: !3142)
!4066 = !DILocalVariable(name: "seq", scope: !4060, file: !433, line: 4421, type: !860)
!4067 = !DILocation(line: 0, scope: !4060)
!4068 = !DILocation(line: 4420, column: 24, scope: !4060)
!4069 = !DILocation(line: 4423, column: 9, scope: !4060)
!4070 = !DILocation(line: 4424, column: 11, scope: !4060)
!4071 = !DILocation(line: 4424, column: 5, scope: !4060)
!4072 = !DILocation(line: 4424, column: 9, scope: !4060)
!4073 = !DILocation(line: 4425, column: 5, scope: !4060)
!4074 = !DILocation(line: 4425, column: 9, scope: !4060)
!4075 = !DILocation(line: 4426, column: 5, scope: !4060)
!4076 = !DILocation(line: 4426, column: 8, scope: !4060)
!4077 = !DILocation(line: 4429, column: 1, scope: !4060)
!4078 = distinct !DISubprogram(name: "gsi_end_p", scope: !433, file: !433, line: 4467, type: !4079, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4081)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!505, !3142}
!4081 = !{!4082}
!4082 = !DILocalVariable(name: "i", arg: 1, scope: !4078, file: !433, line: 4467, type: !3142)
!4083 = !DILocation(line: 4467, column: 33, scope: !4078)
!4084 = !DILocation(line: 4469, column: 12, scope: !4078)
!4085 = !DILocation(line: 4469, column: 16, scope: !4078)
!4086 = !DILocation(line: 4469, column: 10, scope: !4078)
!4087 = !DILocation(line: 4469, column: 3, scope: !4078)
!4088 = distinct !DISubprogram(name: "gsi_stmt", scope: !433, file: !433, line: 4501, type: !4089, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4091)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!870, !3142}
!4091 = !{!4092}
!4092 = !DILocalVariable(name: "i", arg: 1, scope: !4088, file: !433, line: 4501, type: !3142)
!4093 = !DILocation(line: 4501, column: 32, scope: !4088)
!4094 = !DILocation(line: 4503, column: 12, scope: !4088)
!4095 = !DILocation(line: 4503, column: 17, scope: !4088)
!4096 = !DILocation(line: 4503, column: 3, scope: !4088)
!4097 = distinct !DISubprogram(name: "gsi_next", scope: !433, file: !433, line: 4485, type: !4098, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4101)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{null, !4100}
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!4101 = !{!4102}
!4102 = !DILocalVariable(name: "i", arg: 1, scope: !4097, file: !433, line: 4485, type: !4100)
!4103 = !DILocation(line: 0, scope: !4097)
!4104 = !DILocation(line: 4487, column: 15, scope: !4097)
!4105 = !DILocation(line: 4487, column: 20, scope: !4097)
!4106 = !DILocation(line: 4487, column: 10, scope: !4097)
!4107 = !DILocation(line: 4488, column: 1, scope: !4097)
!4108 = distinct !DISubprogram(name: "bb_seq", scope: !433, file: !433, line: 237, type: !4109, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4114)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!860, !4111}
!4111 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !515, line: 112, baseType: !4112)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!4114 = !{!4115}
!4115 = !DILocalVariable(name: "bb", arg: 1, scope: !4108, file: !433, line: 237, type: !4111)
!4116 = !DILocation(line: 0, scope: !4108)
!4117 = !DILocation(line: 239, column: 17, scope: !4108)
!4118 = !DILocation(line: 239, column: 23, scope: !4108)
!4119 = !DILocation(line: 239, column: 33, scope: !4108)
!4120 = !DILocation(line: 239, column: 43, scope: !4108)
!4121 = !DILocation(line: 239, column: 36, scope: !4108)
!4122 = !DILocation(line: 239, column: 10, scope: !4108)
!4123 = !DILocation(line: 239, column: 68, scope: !4108)
!4124 = !DILocation(line: 239, column: 3, scope: !4108)
!4125 = distinct !DISubprogram(name: "gimple_seq_first", scope: !433, file: !433, line: 159, type: !4126, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4131)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!865, !4128}
!4128 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !515, line: 67, baseType: !4129)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!4131 = !{!4132}
!4132 = !DILocalVariable(name: "s", arg: 1, scope: !4125, file: !433, line: 159, type: !4128)
!4133 = !DILocation(line: 0, scope: !4125)
!4134 = !DILocation(line: 161, column: 10, scope: !4125)
!4135 = !DILocation(line: 161, column: 17, scope: !4125)
!4136 = !DILocation(line: 161, column: 3, scope: !4125)
