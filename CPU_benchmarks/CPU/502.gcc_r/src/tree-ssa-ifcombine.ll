; ModuleID = 'tree-ssa-ifcombine.bc'
source_filename = "tree-ssa-ifcombine.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [10 x i8] c"ifcombine\00", align 1
@pass_tree_ifcombine = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_ifcombine, i32 ()* @tree_ssa_ifcombine, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 168, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8, !dbg !0
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"optimizing double bit test to \00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c" & T == T\0Awith temporary T = (1 << \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c") | (1 << \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"optimizing two comparisons to \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@integer_types = external dso_local local_unnamed_addr global [11 x %union.tree_node*], align 16
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@flag_var_tracking_assignments = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"optimizing bits or bits test to \00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c" & T != 0\0Awith temporary T = \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" | \00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1720 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1733, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1734, metadata !DIExpression()), !dbg !1735
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1736
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1737
  ret i32 %call, !dbg !1738
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1739 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1743
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1744
  ret i32 %call, !dbg !1745
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1746 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1801, metadata !DIExpression()), !dbg !1802
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1803
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1803
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1803
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1803
  %cmp = icmp uge i8* %0, %1, !dbg !1803
  %conv1 = zext i1 %cmp to i64, !dbg !1803
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1803
  %tobool = icmp eq i64 %expval, 0, !dbg !1803
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1803

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1803
  br label %cond.end, !dbg !1803

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1803
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1803
  %2 = load i8, i8* %0, align 1, !dbg !1803
  %conv3 = zext i8 %2 to i32, !dbg !1803
  br label %cond.end, !dbg !1803

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1803
  ret i32 %cond, !dbg !1804
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1805 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1807, metadata !DIExpression()), !dbg !1808
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1809
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1809
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1809
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1809
  %cmp = icmp uge i8* %0, %1, !dbg !1809
  %conv1 = zext i1 %cmp to i64, !dbg !1809
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1809
  %tobool = icmp eq i64 %expval, 0, !dbg !1809
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1809

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1809
  br label %cond.end, !dbg !1809

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1809
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1809
  %2 = load i8, i8* %0, align 1, !dbg !1809
  %conv3 = zext i8 %2 to i32, !dbg !1809
  br label %cond.end, !dbg !1809

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1809
  ret i32 %cond, !dbg !1810
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1811 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1812
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1812
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1812
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1812
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1812
  %cmp = icmp uge i8* %1, %2, !dbg !1812
  %conv1 = zext i1 %cmp to i64, !dbg !1812
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1812
  %tobool = icmp eq i64 %expval, 0, !dbg !1812
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1812

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1812
  br label %cond.end, !dbg !1812

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1812
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1812
  %3 = load i8, i8* %1, align 1, !dbg !1812
  %conv3 = zext i8 %3 to i32, !dbg !1812
  br label %cond.end, !dbg !1812

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1812
  ret i32 %cond, !dbg !1813
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1814 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1818, metadata !DIExpression()), !dbg !1819
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1820
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1821
  ret i32 %call, !dbg !1822
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1823 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1827, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1828, metadata !DIExpression()), !dbg !1829
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1830
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1830
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1830
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1830
  %cmp = icmp uge i8* %0, %1, !dbg !1830
  %conv1 = zext i1 %cmp to i64, !dbg !1830
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1830
  %tobool = icmp eq i64 %expval, 0, !dbg !1830
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1830

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1830
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1830
  br label %cond.end, !dbg !1830

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1830
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1830
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1830
  store i8 %conv2, i8* %0, align 1, !dbg !1830
  %conv6 = and i32 %__c, 255, !dbg !1830
  br label %cond.end, !dbg !1830

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1830
  ret i32 %cond, !dbg !1831
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1832 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1834, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1835, metadata !DIExpression()), !dbg !1836
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1837
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1837
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1837
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1837
  %cmp = icmp uge i8* %0, %1, !dbg !1837
  %conv1 = zext i1 %cmp to i64, !dbg !1837
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1837
  %tobool = icmp eq i64 %expval, 0, !dbg !1837
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1837

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1837
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1837
  br label %cond.end, !dbg !1837

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1837
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1837
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1837
  store i8 %conv2, i8* %0, align 1, !dbg !1837
  %conv6 = and i32 %__c, 255, !dbg !1837
  br label %cond.end, !dbg !1837

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1837
  ret i32 %cond, !dbg !1838
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1839 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1841, metadata !DIExpression()), !dbg !1842
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1843
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1843
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1843
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1843
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1843
  %cmp = icmp uge i8* %1, %2, !dbg !1843
  %conv1 = zext i1 %cmp to i64, !dbg !1843
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1843
  %tobool = icmp eq i64 %expval, 0, !dbg !1843
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1843

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1843
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1843
  br label %cond.end, !dbg !1843

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1843
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1843
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1843
  store i8 %conv4, i8* %1, align 1, !dbg !1843
  %conv6 = and i32 %__c, 255, !dbg !1843
  br label %cond.end, !dbg !1843

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1843
  ret i32 %cond, !dbg !1844
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1845 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1851, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1852, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1853, metadata !DIExpression()), !dbg !1854
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1855
  ret i64 %call, !dbg !1856
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1857 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1859, metadata !DIExpression()), !dbg !1860
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1861
  %0 = load i32, i32* %_flags, align 8, !dbg !1861
  %and = lshr i32 %0, 4, !dbg !1861
  %and.lobit = and i32 %and, 1, !dbg !1861
  ret i32 %and.lobit, !dbg !1862
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1863 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1865, metadata !DIExpression()), !dbg !1866
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1867
  %0 = load i32, i32* %_flags, align 8, !dbg !1867
  %and = lshr i32 %0, 5, !dbg !1867
  %and.lobit = and i32 %and, 1, !dbg !1867
  ret i32 %and.lobit, !dbg !1868
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1869 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1872, metadata !DIExpression()), !dbg !1873
  %__c.off = add i32 %__c, 128, !dbg !1874
  %0 = icmp ult i32 %__c.off, 384, !dbg !1874
  br i1 %0, label %cond.true, label %cond.end, !dbg !1874

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1875
  %1 = load i32*, i32** %call, align 8, !dbg !1876
  %idxprom = sext i32 %__c to i64, !dbg !1877
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1877
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1877
  br label %cond.end, !dbg !1878

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1878
  ret i32 %cond, !dbg !1879
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1880 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1882, metadata !DIExpression()), !dbg !1883
  %__c.off = add i32 %__c, 128, !dbg !1884
  %0 = icmp ult i32 %__c.off, 384, !dbg !1884
  br i1 %0, label %cond.true, label %cond.end, !dbg !1884

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1885
  %1 = load i32*, i32** %call, align 8, !dbg !1886
  %idxprom = sext i32 %__c to i64, !dbg !1887
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1887
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1887
  br label %cond.end, !dbg !1888

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1888
  ret i32 %cond, !dbg !1889
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1890 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1895, metadata !DIExpression()), !dbg !1896
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1897
  %conv = trunc i64 %call to i32, !dbg !1898
  ret i32 %conv, !dbg !1899
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1900 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1904, metadata !DIExpression()), !dbg !1905
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1906
  ret i64 %call, !dbg !1907
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1908 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1913, metadata !DIExpression()), !dbg !1914
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1915
  ret i64 %call, !dbg !1916
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1917 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1923, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1924, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1925, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1926, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1927, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 0, metadata !1928, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1929, metadata !DIExpression()), !dbg !1933
  br label %while.cond, !dbg !1934

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1935
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1933
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1929, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1928, metadata !DIExpression()), !dbg !1933
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1936
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1934

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1937
  %div = lshr i64 %add, 1, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %div, metadata !1930, metadata !DIExpression()), !dbg !1933
  %mul = mul i64 %div, %__size, !dbg !1940
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1941
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1931, metadata !DIExpression()), !dbg !1933
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1942
  call void @llvm.dbg.value(metadata i32 %call, metadata !1932, metadata !DIExpression()), !dbg !1933
  %cmp1 = icmp slt i32 %call, 0, !dbg !1943
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1945

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1946
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1948

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1928, metadata !DIExpression()), !dbg !1933
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1933
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1933
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1929, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1928, metadata !DIExpression()), !dbg !1933
  br label %while.cond, !dbg !1934, !llvm.loop !1950

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1933
  ret i8* %retval.0, !dbg !1952
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1953 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1959, metadata !DIExpression()), !dbg !1960
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1961
  ret double %call, !dbg !1962
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1963 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1972, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1973, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata i32 %base, metadata !1974, metadata !DIExpression()), !dbg !1975
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1976
  ret i64 %call, !dbg !1977
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1978 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1984, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1985, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i32 %base, metadata !1986, metadata !DIExpression()), !dbg !1987
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1988
  ret i64 %call, !dbg !1989
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1990 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2001, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 %base, metadata !2003, metadata !DIExpression()), !dbg !2004
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2005
  ret i64 %call, !dbg !2006
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2007 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2011, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2012, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 %base, metadata !2013, metadata !DIExpression()), !dbg !2014
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2015
  ret i64 %call, !dbg !2016
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2017 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2059, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2060, metadata !DIExpression()), !dbg !2061
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2062
  ret i32 %call, !dbg !2063
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2064 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2066, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2067, metadata !DIExpression()), !dbg !2068
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2069
  ret i32 %call, !dbg !2070
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2071 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2075, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2076, metadata !DIExpression()), !dbg !2077
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2078
  ret i32 %call, !dbg !2079
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2080 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2084, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2085, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2086, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2087, metadata !DIExpression()), !dbg !2088
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2089
  ret i32 %call, !dbg !2090
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2091 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2095, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2096, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2097, metadata !DIExpression()), !dbg !2098
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2097, metadata !DIExpression(DW_OP_deref)), !dbg !2098
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2099
  ret i32 %call, !dbg !2100
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2101 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2105, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2106, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2107, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2108, metadata !DIExpression()), !dbg !2109
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2108, metadata !DIExpression(DW_OP_deref)), !dbg !2109
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2110
  ret i32 %call, !dbg !2111
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2112 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2136, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2137, metadata !DIExpression()), !dbg !2138
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2139
  ret i32 %call, !dbg !2140
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2141 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2143, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2144, metadata !DIExpression()), !dbg !2145
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2146
  ret i32 %call, !dbg !2147
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2148 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2152, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2153, metadata !DIExpression()), !dbg !2154
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2155
  ret i32 %call, !dbg !2156
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2157 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2161, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2162, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2163, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2164, metadata !DIExpression()), !dbg !2165
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2166
  ret i32 %call, !dbg !2167
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_ifcombine() #5 !dbg !2168 {
entry:
  ret i8 1, !dbg !2169
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_ifcombine() #5 !dbg !2170 {
entry:
  call void @llvm.dbg.value(metadata i8 0, metadata !2174, metadata !DIExpression()), !dbg !2181
  %call = tail call %struct.basic_block_def** @blocks_in_phiopt_order() #6, !dbg !2182
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call, metadata !2172, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i32 0, metadata !2175, metadata !DIExpression()), !dbg !2181
  br label %for.cond, !dbg !2183

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !2181
  %cfg_changed.0 = phi i8 [ %cfg_changed.1, %for.inc ], [ 0, %entry ], !dbg !2181
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2175, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %cfg_changed.0, metadata !2174, metadata !DIExpression()), !dbg !2181
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2184
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2184
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2184
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 3, !dbg !2184
  %2 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2184
  %sub = add nsw i32 %2, -2, !dbg !2185
  %3 = sext i32 %sub to i64, !dbg !2186
  %cmp = icmp slt i64 %indvars.iv, %3, !dbg !2186
  br i1 %cmp, label %for.body, label %for.end, !dbg !2187

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call, i64 %indvars.iv, !dbg !2188
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2188
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %4, metadata !2176, metadata !DIExpression()), !dbg !2189
  %call1 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %4) #6, !dbg !2190
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !2180, metadata !DIExpression()), !dbg !2189
  %tobool = icmp eq %union.gimple_statement_d* %call1, null, !dbg !2191
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !2193

land.lhs.true:                                    ; preds = %for.body
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call1) #7, !dbg !2194
  %cmp3 = icmp eq i32 %call2, 1, !dbg !2195
  br i1 %cmp3, label %if.then, label %for.inc, !dbg !2196

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call fastcc zeroext i8 @tree_ssa_ifcombine_bb(%struct.basic_block_def* %4) #7, !dbg !2197
  %or1 = or i8 %cfg_changed.0, %call4, !dbg !2198
  call void @llvm.dbg.value(metadata i8 %or1, metadata !2174, metadata !DIExpression()), !dbg !2181
  br label %for.inc, !dbg !2199

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %cfg_changed.1 = phi i8 [ %or1, %if.then ], [ %cfg_changed.0, %land.lhs.true ], [ %cfg_changed.0, %for.body ], !dbg !2181
  call void @llvm.dbg.value(metadata i8 %cfg_changed.1, metadata !2174, metadata !DIExpression()), !dbg !2181
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2200
  call void @llvm.dbg.value(metadata i32 undef, metadata !2175, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2181
  br label %for.cond, !dbg !2201, !llvm.loop !2202

for.end:                                          ; preds = %for.cond
  %cfg_changed.0.lcssa = phi i8 [ %cfg_changed.0, %for.cond ], !dbg !2181
  call void @llvm.dbg.value(metadata i8 %cfg_changed.0.lcssa, metadata !2174, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %cfg_changed.0.lcssa, metadata !2174, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 %cfg_changed.0.lcssa, metadata !2174, metadata !DIExpression()), !dbg !2181
  %5 = bitcast %struct.basic_block_def** %call to i8*, !dbg !2204
  tail call void @free(i8* %5) #6, !dbg !2205
  %tobool8 = icmp eq i8 %cfg_changed.0.lcssa, 0, !dbg !2206
  %cond = select i1 %tobool8, i32 0, i32 32, !dbg !2206
  ret i32 %cond, !dbg !2207
}

declare dso_local %struct.basic_block_def** @blocks_in_phiopt_order() local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @last_stmt(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2208 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2213, metadata !DIExpression()), !dbg !2214
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2215
  %bf.load = load i32, i32* %0, align 8, !dbg !2215
  %bf.clear = and i32 %bf.load, 255, !dbg !2215
  ret i32 %bf.clear, !dbg !2216
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @tree_ssa_ifcombine_bb(%struct.basic_block_def* %inner_cond_bb) unnamed_addr #5 !dbg !2217 {
entry:
  %inner_cond_bb.addr = alloca %struct.basic_block_def*, align 8
  %then_bb = alloca %struct.basic_block_def*, align 8
  %else_bb = alloca %struct.basic_block_def*, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %inner_cond_bb, metadata !2221, metadata !DIExpression()), !dbg !2227
  store %struct.basic_block_def* %inner_cond_bb, %struct.basic_block_def** %inner_cond_bb.addr, align 8
  %0 = bitcast %struct.basic_block_def** %then_bb to i8*, !dbg !2228
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2228
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !2222, metadata !DIExpression()), !dbg !2227
  store %struct.basic_block_def* null, %struct.basic_block_def** %then_bb, align 8, !dbg !2229
  %1 = bitcast %struct.basic_block_def** %else_bb to i8*, !dbg !2228
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2228
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !2223, metadata !DIExpression()), !dbg !2227
  store %struct.basic_block_def* null, %struct.basic_block_def** %else_bb, align 8, !dbg !2230
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %inner_cond_bb, metadata !2221, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %then_bb, metadata !2222, metadata !DIExpression(DW_OP_deref)), !dbg !2227
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %else_bb, metadata !2223, metadata !DIExpression(DW_OP_deref)), !dbg !2227
  %call = call fastcc zeroext i8 @recognize_if_then_else(%struct.basic_block_def* %inner_cond_bb, %struct.basic_block_def** nonnull %then_bb, %struct.basic_block_def** nonnull %else_bb) #7, !dbg !2231
  %tobool = icmp eq i8 %call, 0, !dbg !2231
  br i1 %tobool, label %cleanup32, label %if.end, !dbg !2233

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %inner_cond_bb, metadata !2221, metadata !DIExpression()), !dbg !2227
  %call1 = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %inner_cond_bb) #7, !dbg !2234
  %tobool2 = icmp eq i8 %call1, 0, !dbg !2234
  br i1 %tobool2, label %if.end31, label %if.then3, !dbg !2235

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %inner_cond_bb, metadata !2221, metadata !DIExpression()), !dbg !2227
  %call4 = call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %inner_cond_bb) #7, !dbg !2236
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call4, metadata !2224, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %inner_cond_bb.addr, metadata !2221, metadata !DIExpression(DW_OP_deref)), !dbg !2227
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %else_bb, metadata !2223, metadata !DIExpression(DW_OP_deref)), !dbg !2227
  %call5 = call fastcc zeroext i8 @recognize_if_then_else(%struct.basic_block_def* %call4, %struct.basic_block_def** nonnull %inner_cond_bb.addr, %struct.basic_block_def** nonnull %else_bb) #7, !dbg !2238
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2238
  br i1 %tobool6, label %if.end16, label %land.lhs.true, !dbg !2240

land.lhs.true:                                    ; preds = %if.then3
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %inner_cond_bb.addr, align 8, !dbg !2241
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %2, metadata !2221, metadata !DIExpression()), !dbg !2227
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8, !dbg !2242
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %3, metadata !2223, metadata !DIExpression()), !dbg !2227
  %call7 = call fastcc zeroext i8 @same_phi_args_p(%struct.basic_block_def* %call4, %struct.basic_block_def* %2, %struct.basic_block_def* %3) #7, !dbg !2243
  %tobool9 = icmp eq i8 %call7, 0, !dbg !2243
  br i1 %tobool9, label %if.end16, label %land.lhs.true10, !dbg !2244

land.lhs.true10:                                  ; preds = %land.lhs.true
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %inner_cond_bb.addr, align 8, !dbg !2245
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %4, metadata !2221, metadata !DIExpression()), !dbg !2227
  %call11 = call fastcc zeroext i8 @bb_no_side_effects_p(%struct.basic_block_def* %4) #7, !dbg !2246
  %tobool13 = icmp eq i8 %call11, 0, !dbg !2246
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !2247

if.then14:                                        ; preds = %land.lhs.true10
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %inner_cond_bb.addr, align 8, !dbg !2248
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %5, metadata !2221, metadata !DIExpression()), !dbg !2227
  %call15 = call fastcc zeroext i8 @ifcombine_ifandif(%struct.basic_block_def* %5, %struct.basic_block_def* %call4) #7, !dbg !2250
  br label %cleanup, !dbg !2251

if.end16:                                         ; preds = %land.lhs.true10, %land.lhs.true, %if.then3
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %inner_cond_bb.addr, metadata !2221, metadata !DIExpression(DW_OP_deref)), !dbg !2227
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %then_bb, metadata !2222, metadata !DIExpression(DW_OP_deref)), !dbg !2227
  %call17 = call fastcc zeroext i8 @recognize_if_then_else(%struct.basic_block_def* %call4, %struct.basic_block_def** nonnull %then_bb, %struct.basic_block_def** nonnull %inner_cond_bb.addr) #7, !dbg !2252
  %tobool19 = icmp eq i8 %call17, 0, !dbg !2252
  br i1 %tobool19, label %cleanup, label %land.lhs.true20, !dbg !2254

land.lhs.true20:                                  ; preds = %if.end16
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %inner_cond_bb.addr, align 8, !dbg !2255
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %6, metadata !2221, metadata !DIExpression()), !dbg !2227
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8, !dbg !2256
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %7, metadata !2222, metadata !DIExpression()), !dbg !2227
  %call21 = call fastcc zeroext i8 @same_phi_args_p(%struct.basic_block_def* %call4, %struct.basic_block_def* %6, %struct.basic_block_def* %7) #7, !dbg !2257
  %tobool23 = icmp eq i8 %call21, 0, !dbg !2257
  br i1 %tobool23, label %cleanup, label %land.lhs.true24, !dbg !2258

land.lhs.true24:                                  ; preds = %land.lhs.true20
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %inner_cond_bb.addr, align 8, !dbg !2259
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %8, metadata !2221, metadata !DIExpression()), !dbg !2227
  %call25 = call fastcc zeroext i8 @bb_no_side_effects_p(%struct.basic_block_def* %8) #7, !dbg !2260
  %tobool27 = icmp eq i8 %call25, 0, !dbg !2260
  br i1 %tobool27, label %cleanup, label %if.then28, !dbg !2261

if.then28:                                        ; preds = %land.lhs.true24
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %inner_cond_bb.addr, align 8, !dbg !2262
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %9, metadata !2221, metadata !DIExpression()), !dbg !2227
  %call29 = call fastcc zeroext i8 @ifcombine_iforif(%struct.basic_block_def* %9, %struct.basic_block_def* %call4) #7, !dbg !2264
  br label %cleanup, !dbg !2265

cleanup:                                          ; preds = %land.lhs.true24, %land.lhs.true20, %if.end16, %if.then28, %if.then14
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then14 ], [ false, %if.then28 ], [ true, %land.lhs.true24 ], [ true, %land.lhs.true20 ], [ true, %if.end16 ]
  %retval.0 = phi i8 [ %call15, %if.then14 ], [ %call29, %if.then28 ], [ undef, %land.lhs.true24 ], [ undef, %land.lhs.true20 ], [ undef, %if.end16 ]
  br i1 %cleanup.dest.slot.0, label %if.end31, label %cleanup32

if.end31:                                         ; preds = %if.end, %cleanup
  br label %cleanup32, !dbg !2266

cleanup32:                                        ; preds = %entry, %cleanup, %if.end31
  %retval.1 = phi i8 [ %retval.0, %cleanup ], [ 0, %if.end31 ], [ 0, %entry ], !dbg !2227
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2267
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2267
  ret i8 %retval.1, !dbg !2267
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @recognize_if_then_else(%struct.basic_block_def* %cond_bb, %struct.basic_block_def** %then_bb, %struct.basic_block_def** %else_bb) unnamed_addr #5 !dbg !2268 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %cond_bb, metadata !2272, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %then_bb, metadata !2273, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %else_bb, metadata !2274, metadata !DIExpression()), !dbg !2280
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cond_bb, i64 0, i32 1, !dbg !2281
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2281
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2281
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2281

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2281
  br label %cond.end, !dbg !2281

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2281
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2281
  %cmp = icmp eq i32 %call, 2, !dbg !2283
  br i1 %cmp, label %if.end, label %cleanup, !dbg !2284

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2285
  %tobool3 = icmp eq %struct.VEC_edge_gc* %1, null, !dbg !2285
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !2285

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !2285
  br label %cond.end8, !dbg !2285

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_edge_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !2285
  %call10 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond9, i32 0) #7, !dbg !2285
  call void @llvm.dbg.value(metadata %struct.edge_def* %call10, metadata !2275, metadata !DIExpression()), !dbg !2280
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2286
  %tobool12 = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !2286
  br i1 %tobool12, label %cond.end17, label %cond.true13, !dbg !2286

cond.true13:                                      ; preds = %cond.end8
  %base15 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !2286
  br label %cond.end17, !dbg !2286

cond.end17:                                       ; preds = %cond.end8, %cond.true13
  %cond18 = phi %struct.VEC_edge_base* [ %base15, %cond.true13 ], [ null, %cond.end8 ], !dbg !2286
  %call19 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond18, i32 1) #7, !dbg !2286
  call void @llvm.dbg.value(metadata %struct.edge_def* %call19, metadata !2276, metadata !DIExpression()), !dbg !2280
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call10, i64 0, i32 7, !dbg !2287
  %3 = load i32, i32* %flags, align 8, !dbg !2287
  %and = and i32 %3, 1024, !dbg !2288
  %tobool20 = icmp ne i32 %and, 0, !dbg !2288
  %spec.select = select i1 %tobool20, %struct.edge_def* %call10, %struct.edge_def* %call19, !dbg !2289
  %spec.select1 = select i1 %tobool20, %struct.edge_def* %call19, %struct.edge_def* %call10, !dbg !2289
  call void @llvm.dbg.value(metadata %struct.edge_def* %spec.select1, metadata !2276, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata %struct.edge_def* %spec.select, metadata !2275, metadata !DIExpression()), !dbg !2280
  %flags23 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %spec.select, i64 0, i32 7, !dbg !2290
  %4 = load i32, i32* %flags23, align 8, !dbg !2290
  %and24 = and i32 %4, 1024, !dbg !2292
  %tobool25 = icmp eq i32 %and24, 0, !dbg !2292
  br i1 %tobool25, label %cleanup, label %lor.lhs.false, !dbg !2293

lor.lhs.false:                                    ; preds = %cond.end17
  %flags26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %spec.select1, i64 0, i32 7, !dbg !2294
  %5 = load i32, i32* %flags26, align 8, !dbg !2294
  %and27 = and i32 %5, 2048, !dbg !2295
  %tobool28 = icmp eq i32 %and27, 0, !dbg !2295
  br i1 %tobool28, label %cleanup, label %if.end30, !dbg !2296

if.end30:                                         ; preds = %lor.lhs.false
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8, !dbg !2297
  %tobool31 = icmp eq %struct.basic_block_def* %6, null, !dbg !2297
  br i1 %tobool31, label %if.end34, label %land.lhs.true, !dbg !2299

land.lhs.true:                                    ; preds = %if.end30
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %spec.select, i64 0, i32 1, !dbg !2300
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2300
  %cmp32 = icmp eq %struct.basic_block_def* %7, %6, !dbg !2301
  br i1 %cmp32, label %if.end34, label %cleanup, !dbg !2302

if.end34:                                         ; preds = %land.lhs.true, %if.end30
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8, !dbg !2303
  %tobool35 = icmp eq %struct.basic_block_def* %8, null, !dbg !2303
  br i1 %tobool35, label %if.end40, label %land.lhs.true36, !dbg !2305

land.lhs.true36:                                  ; preds = %if.end34
  %dest37 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %spec.select1, i64 0, i32 1, !dbg !2306
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %dest37, align 8, !dbg !2306
  %cmp38 = icmp eq %struct.basic_block_def* %9, %8, !dbg !2307
  br i1 %cmp38, label %if.end40, label %cleanup, !dbg !2308

if.end40:                                         ; preds = %land.lhs.true36, %if.end34
  br i1 %tobool31, label %if.then42, label %if.end44, !dbg !2309

if.then42:                                        ; preds = %if.end40
  %dest43 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %spec.select, i64 0, i32 1, !dbg !2310
  %10 = bitcast %struct.basic_block_def** %dest43 to i64*, !dbg !2310
  %11 = load i64, i64* %10, align 8, !dbg !2310
  %12 = bitcast %struct.basic_block_def** %then_bb to i64*, !dbg !2312
  store i64 %11, i64* %12, align 8, !dbg !2312
  %.pre = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8, !dbg !2313
  br label %if.end44, !dbg !2315

if.end44:                                         ; preds = %if.end40, %if.then42
  %13 = phi %struct.basic_block_def* [ %8, %if.end40 ], [ %.pre, %if.then42 ], !dbg !2313
  %tobool45 = icmp eq %struct.basic_block_def* %13, null, !dbg !2313
  br i1 %tobool45, label %if.then46, label %cleanup, !dbg !2316

if.then46:                                        ; preds = %if.end44
  %dest47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %spec.select1, i64 0, i32 1, !dbg !2317
  %14 = bitcast %struct.basic_block_def** %dest47 to i64*, !dbg !2317
  %15 = load i64, i64* %14, align 8, !dbg !2317
  %16 = bitcast %struct.basic_block_def** %else_bb to i64*, !dbg !2318
  store i64 %15, i64* %16, align 8, !dbg !2318
  br label %cleanup, !dbg !2319

cleanup:                                          ; preds = %land.lhs.true, %land.lhs.true36, %if.end44, %lor.lhs.false, %cond.end17, %cond.end, %if.then46
  %retval.0 = phi i8 [ 0, %cond.end ], [ 0, %lor.lhs.false ], [ 0, %cond.end17 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true36 ], [ 1, %if.then46 ], [ 1, %if.end44 ], !dbg !2280
  ret i8 %retval.0, !dbg !2320
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2321 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2328, metadata !DIExpression()), !dbg !2329
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2330
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2330
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2330
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2330

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2330
  br label %cond.end, !dbg !2330

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2330
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2330
  %cmp = icmp eq i32 %call, 1, !dbg !2331
  %conv2 = zext i1 %cmp to i8, !dbg !2330
  ret i8 %conv2, !dbg !2332
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2333 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2337, metadata !DIExpression()), !dbg !2338
  %call = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) #7, !dbg !2339
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !2340
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2340
  ret %struct.basic_block_def* %0, !dbg !2341
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @same_phi_args_p(%struct.basic_block_def* %bb1, %struct.basic_block_def* %bb2, %struct.basic_block_def* %dest) unnamed_addr #5 !dbg !2342 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb1, metadata !2346, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb2, metadata !2347, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest, metadata !2348, metadata !DIExpression()), !dbg !2359
  %call = tail call %struct.edge_def* @find_edge(%struct.basic_block_def* %bb1, %struct.basic_block_def* %dest) #6, !dbg !2360
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !2349, metadata !DIExpression()), !dbg !2359
  %call1 = tail call %struct.edge_def* @find_edge(%struct.basic_block_def* %bb2, %struct.basic_block_def* %dest) #6, !dbg !2361
  call void @llvm.dbg.value(metadata %struct.edge_def* %call1, metadata !2350, metadata !DIExpression()), !dbg !2359
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2362
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2362
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2363
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2363
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %dest) #6, !dbg !2363
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2363
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2363
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 6, !dbg !2365
  %dest_idx6 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call1, i64 0, i32 6, !dbg !2365
  br label %for.cond, !dbg !2369

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2351, metadata !DIExpression(DW_OP_deref)), !dbg !2359
  %call2 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2370
  %tobool = icmp eq i8 %call2, 0, !dbg !2371
  br i1 %tobool, label %for.body, label %cleanup, !dbg !2372

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2351, metadata !DIExpression(DW_OP_deref)), !dbg !2359
  %call3 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2373
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call3, metadata !2358, metadata !DIExpression()), !dbg !2359
  %2 = load i32, i32* %dest_idx, align 4, !dbg !2374
  %call4 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call3, i32 %2) #7, !dbg !2374
  %call5 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call4) #7, !dbg !2374
  %3 = load i32, i32* %dest_idx6, align 4, !dbg !2375
  %call7 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call3, i32 %3) #7, !dbg !2375
  %call8 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call7) #7, !dbg !2375
  %call9 = call i32 @operand_equal_p(%union.tree_node* %call5, %union.tree_node* %call8, i32 0) #6, !dbg !2376
  %tobool10 = icmp eq i32 %call9, 0, !dbg !2376
  br i1 %tobool10, label %cleanup, label %for.inc, !dbg !2377

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2351, metadata !DIExpression(DW_OP_deref)), !dbg !2359
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2378
  br label %for.cond, !dbg !2379, !llvm.loop !2380

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 0, %for.body ], [ 1, %for.cond ], !dbg !2359
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2382
  ret i8 %retval.0, !dbg !2382
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @bb_no_side_effects_p(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !2383 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2385, metadata !DIExpression()), !dbg !2391
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2392
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2392
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2393
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2393
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb) #7, !dbg !2393
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2393
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2393
  br label %for.cond, !dbg !2394

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2386, metadata !DIExpression(DW_OP_deref)), !dbg !2391
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2395
  %tobool = icmp eq i8 %call, 0, !dbg !2396
  br i1 %tobool, label %for.body, label %cleanup6, !dbg !2397

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2386, metadata !DIExpression(DW_OP_deref)), !dbg !2391
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2398
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !2387, metadata !DIExpression()), !dbg !2399
  %call2 = call fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %call1) #7, !dbg !2400
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2400
  br i1 %tobool3, label %lor.lhs.false, label %cleanup, !dbg !2402

lor.lhs.false:                                    ; preds = %for.body
  %call4 = call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %call1) #7, !dbg !2403
  %tobool5 = icmp ne %union.tree_node* %call4, null, !dbg !2403
  %spec.select = zext i1 %tobool5 to i32, !dbg !2404
  br label %cleanup, !dbg !2404

cleanup:                                          ; preds = %for.body, %lor.lhs.false
  %cleanup.dest.slot.0 = phi i32 [ 1, %for.body ], [ %spec.select, %lor.lhs.false ]
  %cond = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond, label %for.inc, label %cleanup6

for.inc:                                          ; preds = %cleanup
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2386, metadata !DIExpression(DW_OP_deref)), !dbg !2391
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2405
  br label %for.cond, !dbg !2406, !llvm.loop !2407

cleanup6:                                         ; preds = %for.cond, %cleanup
  %retval.2 = phi i8 [ 0, %cleanup ], [ 1, %for.cond ], !dbg !2391
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2409
  ret i8 %retval.2, !dbg !2409
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ifcombine_ifandif(%struct.basic_block_def* %inner_cond_bb, %struct.basic_block_def* %outer_cond_bb) unnamed_addr #5 !dbg !2410 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %name1 = alloca %union.tree_node*, align 8
  %name2 = alloca %union.tree_node*, align 8
  %bit1 = alloca %union.tree_node*, align 8
  %bit2 = alloca %union.tree_node*, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %inner_cond_bb, metadata !2414, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %outer_cond_bb, metadata !2415, metadata !DIExpression()), !dbg !2432
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2433
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2433
  %1 = bitcast %union.tree_node** %name1 to i8*, !dbg !2434
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2434
  %2 = bitcast %union.tree_node** %name2 to i8*, !dbg !2434
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2434
  %3 = bitcast %union.tree_node** %bit1 to i8*, !dbg !2434
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2434
  %4 = bitcast %union.tree_node** %bit2 to i8*, !dbg !2434
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !2434
  %call = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %inner_cond_bb) #6, !dbg !2435
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2417, metadata !DIExpression()), !dbg !2432
  %tobool = icmp eq %union.gimple_statement_d* %call, null, !dbg !2436
  br i1 %tobool, label %cleanup92, label %lor.lhs.false, !dbg !2438

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call) #7, !dbg !2439
  %cmp = icmp eq i32 %call1, 1, !dbg !2440
  br i1 %cmp, label %if.end, label %cleanup92, !dbg !2441

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %outer_cond_bb) #6, !dbg !2442
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !2418, metadata !DIExpression()), !dbg !2432
  %tobool3 = icmp eq %union.gimple_statement_d* %call2, null, !dbg !2443
  br i1 %tobool3, label %cleanup92, label %lor.lhs.false4, !dbg !2445

lor.lhs.false4:                                   ; preds = %if.end
  %call5 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2446
  %cmp6 = icmp eq i32 %call5, 1, !dbg !2447
  br i1 %cmp6, label %if.end8, label %cleanup92, !dbg !2448

if.end8:                                          ; preds = %lor.lhs.false4
  call void @llvm.dbg.value(metadata %union.tree_node** %name1, metadata !2419, metadata !DIExpression(DW_OP_deref)), !dbg !2432
  call void @llvm.dbg.value(metadata %union.tree_node** %bit1, metadata !2421, metadata !DIExpression(DW_OP_deref)), !dbg !2432
  %call9 = call fastcc zeroext i8 @recognize_single_bit_test(%union.gimple_statement_d* nonnull %call, %union.tree_node** nonnull %name1, %union.tree_node** nonnull %bit1) #7, !dbg !2449
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2449
  br i1 %tobool10, label %if.else, label %land.lhs.true, !dbg !2450

land.lhs.true:                                    ; preds = %if.end8
  call void @llvm.dbg.value(metadata %union.tree_node** %name2, metadata !2420, metadata !DIExpression(DW_OP_deref)), !dbg !2432
  call void @llvm.dbg.value(metadata %union.tree_node** %bit2, metadata !2422, metadata !DIExpression(DW_OP_deref)), !dbg !2432
  %call11 = call fastcc zeroext i8 @recognize_single_bit_test(%union.gimple_statement_d* nonnull %call2, %union.tree_node** nonnull %name2, %union.tree_node** nonnull %bit2) #7, !dbg !2451
  %tobool13 = icmp eq i8 %call11, 0, !dbg !2451
  br i1 %tobool13, label %if.else, label %land.lhs.true14, !dbg !2452

land.lhs.true14:                                  ; preds = %land.lhs.true
  %5 = load %union.tree_node*, %union.tree_node** %name1, align 8, !dbg !2453
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !2419, metadata !DIExpression()), !dbg !2432
  %6 = load %union.tree_node*, %union.tree_node** %name2, align 8, !dbg !2454
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !2420, metadata !DIExpression()), !dbg !2432
  %cmp15 = icmp eq %union.tree_node* %5, %6, !dbg !2455
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !2456

if.then17:                                        ; preds = %land.lhs.true14
  %7 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2457
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2457
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* nonnull %call) #6, !dbg !2457
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %7, i64 24, i1 false), !dbg !2457
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2457
  %8 = bitcast %union.tree_node** %name1 to %struct.tree_common**, !dbg !2458
  %9 = load %struct.tree_common*, %struct.tree_common** %8, align 8, !dbg !2458
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %9, i64 0, i32 2, !dbg !2458
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2458
  %call20 = call %union.tree_node* @build_int_cst(%union.tree_node* %10, i64 1) #6, !dbg !2458
  %11 = load %union.tree_node*, %union.tree_node** %bit1, align 8, !dbg !2458
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !2421, metadata !DIExpression()), !dbg !2432
  %call21 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 83, %union.tree_node* %10, %union.tree_node* %call20, %union.tree_node* %11) #6, !dbg !2458
  call void @llvm.dbg.value(metadata %union.tree_node* %call21, metadata !2423, metadata !DIExpression()), !dbg !2459
  %12 = load %struct.tree_common*, %struct.tree_common** %8, align 8, !dbg !2460
  %type23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %12, i64 0, i32 2, !dbg !2460
  %13 = load %union.tree_node*, %union.tree_node** %type23, align 8, !dbg !2460
  %call26 = call %union.tree_node* @build_int_cst(%union.tree_node* %13, i64 1) #6, !dbg !2460
  %14 = load %union.tree_node*, %union.tree_node** %bit2, align 8, !dbg !2460
  call void @llvm.dbg.value(metadata %union.tree_node* %14, metadata !2422, metadata !DIExpression()), !dbg !2432
  %call27 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 83, %union.tree_node* %13, %union.tree_node* %call26, %union.tree_node* %14) #6, !dbg !2460
  call void @llvm.dbg.value(metadata %union.tree_node* %call27, metadata !2426, metadata !DIExpression()), !dbg !2459
  %15 = load %struct.tree_common*, %struct.tree_common** %8, align 8, !dbg !2461
  %type29 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %15, i64 0, i32 2, !dbg !2461
  %16 = load %union.tree_node*, %union.tree_node** %type29, align 8, !dbg !2461
  %call30 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 87, %union.tree_node* %16, %union.tree_node* %call21, %union.tree_node* %call27) #6, !dbg !2461
  call void @llvm.dbg.value(metadata %union.tree_node* %call30, metadata !2423, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2416, metadata !DIExpression(DW_OP_deref)), !dbg !2432
  %call31 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call30, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2462
  call void @llvm.dbg.value(metadata %union.tree_node* %call31, metadata !2423, metadata !DIExpression()), !dbg !2459
  %17 = load %struct.tree_common*, %struct.tree_common** %8, align 8, !dbg !2463
  %type33 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %17, i64 0, i32 2, !dbg !2463
  %18 = load %union.tree_node*, %union.tree_node** %type33, align 8, !dbg !2463
  %.cast = bitcast %struct.tree_common* %17 to %union.tree_node*, !dbg !2463
  call void @llvm.dbg.value(metadata %union.tree_node* %.cast, metadata !2419, metadata !DIExpression()), !dbg !2432
  %call34 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 89, %union.tree_node* %18, %union.tree_node* %.cast, %union.tree_node* %call31) #6, !dbg !2463
  call void @llvm.dbg.value(metadata %union.tree_node* %call34, metadata !2426, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2416, metadata !DIExpression(DW_OP_deref)), !dbg !2432
  %call35 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call34, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2464
  call void @llvm.dbg.value(metadata %union.tree_node* %call35, metadata !2426, metadata !DIExpression()), !dbg !2459
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !2465
  %call36 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 101, %union.tree_node* %19, %union.tree_node* %call35, %union.tree_node* %call31) #6, !dbg !2465
  call void @llvm.dbg.value(metadata %union.tree_node* %call36, metadata !2423, metadata !DIExpression()), !dbg !2459
  %call37 = call %union.tree_node* @canonicalize_cond_expr_cond(%union.tree_node* %call36) #6, !dbg !2466
  call void @llvm.dbg.value(metadata %union.tree_node* %call37, metadata !2423, metadata !DIExpression()), !dbg !2459
  %tobool38 = icmp eq %union.tree_node* %call37, null, !dbg !2467
  br i1 %tobool38, label %cleanup92, label %if.end40, !dbg !2469

if.end40:                                         ; preds = %if.then17
  call void @gimple_cond_set_condition_from_tree(%union.gimple_statement_d* nonnull %call, %union.tree_node* nonnull %call37) #6, !dbg !2470
  call fastcc void @update_stmt(%union.gimple_statement_d* nonnull %call) #7, !dbg !2471
  %20 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !2472
  call void @gimple_cond_set_condition_from_tree(%union.gimple_statement_d* nonnull %call2, %union.tree_node* %20) #6, !dbg !2473
  call fastcc void @update_stmt(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2474
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2475
  %tobool41 = icmp eq %struct._IO_FILE* %21, null, !dbg !2475
  br i1 %tobool41, label %cleanup92, label %if.then42, !dbg !2477

if.then42:                                        ; preds = %if.end40
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2478
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2480
  %23 = load %union.tree_node*, %union.tree_node** %name1, align 8, !dbg !2481
  call void @llvm.dbg.value(metadata %union.tree_node* %23, metadata !2419, metadata !DIExpression()), !dbg !2432
  call void @print_generic_expr(%struct._IO_FILE* %22, %union.tree_node* %23, i32 0) #6, !dbg !2482
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2483
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2484
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2485
  %26 = load %union.tree_node*, %union.tree_node** %bit1, align 8, !dbg !2486
  call void @llvm.dbg.value(metadata %union.tree_node* %26, metadata !2421, metadata !DIExpression()), !dbg !2432
  call void @print_generic_expr(%struct._IO_FILE* %25, %union.tree_node* %26, i32 0) #6, !dbg !2487
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2488
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2489
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2490
  %29 = load %union.tree_node*, %union.tree_node** %bit2, align 8, !dbg !2491
  call void @llvm.dbg.value(metadata %union.tree_node* %29, metadata !2422, metadata !DIExpression()), !dbg !2432
  call void @print_generic_expr(%struct._IO_FILE* %28, %union.tree_node* %29, i32 0) #6, !dbg !2492
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2493
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2494
  br label %cleanup92, !dbg !2495

if.else:                                          ; preds = %land.lhs.true, %if.end8, %land.lhs.true14
  %call49 = call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* nonnull %call) #7, !dbg !2496
  %idxprom = sext i32 %call49 to i64, !dbg !2496
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom, !dbg !2496
  %31 = load i32, i32* %arrayidx, align 4, !dbg !2496
  %cmp50 = icmp eq i32 %31, 5, !dbg !2497
  br i1 %cmp50, label %land.lhs.true52, label %cleanup92, !dbg !2498

land.lhs.true52:                                  ; preds = %if.else
  %call53 = call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2499
  %idxprom54 = sext i32 %call53 to i64, !dbg !2499
  %arrayidx55 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom54, !dbg !2499
  %32 = load i32, i32* %arrayidx55, align 4, !dbg !2499
  %cmp56 = icmp eq i32 %32, 5, !dbg !2500
  br i1 %cmp56, label %land.lhs.true58, label %cleanup92, !dbg !2501

land.lhs.true58:                                  ; preds = %land.lhs.true52
  %call59 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* nonnull %call) #7, !dbg !2502
  %call60 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2503
  %call61 = call i32 @operand_equal_p(%union.tree_node* %call59, %union.tree_node* %call60, i32 0) #6, !dbg !2504
  %tobool62 = icmp eq i32 %call61, 0, !dbg !2504
  br i1 %tobool62, label %cleanup92, label %land.lhs.true63, !dbg !2505

land.lhs.true63:                                  ; preds = %land.lhs.true58
  %call64 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* nonnull %call) #7, !dbg !2506
  %call65 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2507
  %call66 = call i32 @operand_equal_p(%union.tree_node* %call64, %union.tree_node* %call65, i32 0) #6, !dbg !2508
  %tobool67 = icmp eq i32 %call66, 0, !dbg !2508
  br i1 %tobool67, label %cleanup92, label %if.then68, !dbg !2509

if.then68:                                        ; preds = %land.lhs.true63
  %call69 = call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* nonnull %call) #7, !dbg !2510
  call void @llvm.dbg.value(metadata i32 %call69, metadata !2427, metadata !DIExpression()), !dbg !2511
  %call70 = call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %call70, metadata !2430, metadata !DIExpression()), !dbg !2511
  %33 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !2513
  %call72 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2515
  %call73 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2516
  %call74 = call %union.tree_node* @combine_comparisons(i32 0, i32 91, i32 %call69, i32 %call70, %union.tree_node* %33, %union.tree_node* %call72, %union.tree_node* %call73) #6, !dbg !2517
  call void @llvm.dbg.value(metadata %union.tree_node* %call74, metadata !2431, metadata !DIExpression()), !dbg !2511
  %tobool75 = icmp eq %union.tree_node* %call74, null, !dbg !2518
  br i1 %tobool75, label %cleanup92, label %if.end77, !dbg !2519

if.end77:                                         ; preds = %if.then68
  %call78 = call %union.tree_node* @canonicalize_cond_expr_cond(%union.tree_node* nonnull %call74) #6, !dbg !2520
  call void @llvm.dbg.value(metadata %union.tree_node* %call78, metadata !2431, metadata !DIExpression()), !dbg !2511
  %tobool79 = icmp eq %union.tree_node* %call78, null, !dbg !2521
  br i1 %tobool79, label %cleanup92, label %if.end81, !dbg !2523

if.end81:                                         ; preds = %if.end77
  call void @gimple_cond_set_condition_from_tree(%union.gimple_statement_d* nonnull %call, %union.tree_node* nonnull %call78) #6, !dbg !2524
  call fastcc void @update_stmt(%union.gimple_statement_d* nonnull %call) #7, !dbg !2525
  %34 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !2526
  call void @gimple_cond_set_condition_from_tree(%union.gimple_statement_d* nonnull %call2, %union.tree_node* %34) #6, !dbg !2527
  call fastcc void @update_stmt(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2528
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2529
  %tobool82 = icmp eq %struct._IO_FILE* %35, null, !dbg !2529
  br i1 %tobool82, label %cleanup92, label %if.then83, !dbg !2531

if.then83:                                        ; preds = %if.end81
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2532
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2534
  call void @print_generic_expr(%struct._IO_FILE* %36, %union.tree_node* nonnull %call78, i32 0) #6, !dbg !2535
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2536
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2537
  br label %cleanup92, !dbg !2538

cleanup92:                                        ; preds = %if.end40, %if.then17, %if.end81, %if.end77, %if.then68, %land.lhs.true63, %land.lhs.true58, %lor.lhs.false4, %if.end, %lor.lhs.false, %entry, %land.lhs.true52, %if.else, %if.then83, %if.then42
  %retval.2 = phi i8 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %lor.lhs.false4 ], [ 0, %if.end ], [ 0, %if.then17 ], [ 1, %if.then42 ], [ 1, %if.end40 ], [ 0, %if.then68 ], [ 0, %if.end77 ], [ 1, %if.then83 ], [ 1, %if.end81 ], [ 0, %if.else ], [ 0, %land.lhs.true52 ], [ 0, %land.lhs.true58 ], [ 0, %land.lhs.true63 ], !dbg !2432
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !2539
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2539
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2539
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2539
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2539
  ret i8 %retval.2, !dbg !2539
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ifcombine_iforif(%struct.basic_block_def* %inner_cond_bb, %struct.basic_block_def* %outer_cond_bb) unnamed_addr #5 !dbg !2540 {
entry:
  %name1 = alloca %union.tree_node*, align 8
  %name2 = alloca %union.tree_node*, align 8
  %bits1 = alloca %union.tree_node*, align 8
  %bits2 = alloca %union.tree_node*, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %inner_cond_bb, metadata !2542, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %outer_cond_bb, metadata !2543, metadata !DIExpression()), !dbg !2559
  %0 = bitcast %union.tree_node** %name1 to i8*, !dbg !2560
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2560
  %1 = bitcast %union.tree_node** %name2 to i8*, !dbg !2560
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2560
  %2 = bitcast %union.tree_node** %bits1 to i8*, !dbg !2560
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2560
  %3 = bitcast %union.tree_node** %bits2 to i8*, !dbg !2560
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2560
  %call = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %inner_cond_bb) #6, !dbg !2561
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2544, metadata !DIExpression()), !dbg !2559
  %tobool = icmp eq %union.gimple_statement_d* %call, null, !dbg !2562
  br i1 %tobool, label %cleanup142, label %lor.lhs.false, !dbg !2564

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call) #7, !dbg !2565
  %cmp = icmp eq i32 %call1, 1, !dbg !2566
  br i1 %cmp, label %if.end, label %cleanup142, !dbg !2567

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %outer_cond_bb) #6, !dbg !2568
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !2545, metadata !DIExpression()), !dbg !2559
  %tobool3 = icmp eq %union.gimple_statement_d* %call2, null, !dbg !2569
  br i1 %tobool3, label %cleanup142, label %lor.lhs.false4, !dbg !2571

lor.lhs.false4:                                   ; preds = %if.end
  %call5 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2572
  %cmp6 = icmp eq i32 %call5, 1, !dbg !2573
  br i1 %cmp6, label %if.end8, label %cleanup142, !dbg !2574

if.end8:                                          ; preds = %lor.lhs.false4
  call void @llvm.dbg.value(metadata %union.tree_node** %name1, metadata !2546, metadata !DIExpression(DW_OP_deref)), !dbg !2559
  call void @llvm.dbg.value(metadata %union.tree_node** %bits1, metadata !2548, metadata !DIExpression(DW_OP_deref)), !dbg !2559
  %call9 = call fastcc zeroext i8 @recognize_bits_test(%union.gimple_statement_d* nonnull %call, %union.tree_node** nonnull %name1, %union.tree_node** nonnull %bits1) #7, !dbg !2575
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2575
  br i1 %tobool10, label %if.else98, label %land.lhs.true, !dbg !2576

land.lhs.true:                                    ; preds = %if.end8
  call void @llvm.dbg.value(metadata %union.tree_node** %name2, metadata !2547, metadata !DIExpression(DW_OP_deref)), !dbg !2559
  call void @llvm.dbg.value(metadata %union.tree_node** %bits2, metadata !2549, metadata !DIExpression(DW_OP_deref)), !dbg !2559
  %call11 = call fastcc zeroext i8 @recognize_bits_test(%union.gimple_statement_d* nonnull %call2, %union.tree_node** nonnull %name2, %union.tree_node** nonnull %bits2) #7, !dbg !2577
  %tobool13 = icmp eq i8 %call11, 0, !dbg !2577
  br i1 %tobool13, label %if.else98, label %if.then14, !dbg !2578

if.then14:                                        ; preds = %land.lhs.true
  %4 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2579
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2579
  %5 = load %union.tree_node*, %union.tree_node** %name1, align 8, !dbg !2580
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !2546, metadata !DIExpression()), !dbg !2559
  %6 = load %union.tree_node*, %union.tree_node** %name2, align 8, !dbg !2582
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !2547, metadata !DIExpression()), !dbg !2559
  %cmp15 = icmp eq %union.tree_node* %5, %6, !dbg !2583
  %7 = ptrtoint %union.tree_node* %5 to i64, !dbg !2584
  %8 = ptrtoint %union.tree_node* %6 to i64, !dbg !2584
  br i1 %cmp15, label %if.then14.if.end33_crit_edge, label %if.else, !dbg !2584

if.then14.if.end33_crit_edge:                     ; preds = %if.then14
  %.phi.trans.insert = bitcast %union.tree_node** %bits1 to %struct.tree_common**, !dbg !2585
  %.pre = load %struct.tree_common*, %struct.tree_common** %.phi.trans.insert, align 8, !dbg !2587
  %.phi.trans.insert2 = bitcast %union.tree_node** %bits2 to %struct.tree_common**, !dbg !2585
  %.pre3 = load %struct.tree_common*, %struct.tree_common** %.phi.trans.insert2, align 8, !dbg !2588
  br label %if.end33, !dbg !2584

if.else:                                          ; preds = %if.then14
  %9 = load %union.tree_node*, %union.tree_node** %bits1, align 8, !dbg !2589
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !2548, metadata !DIExpression()), !dbg !2559
  %10 = load %union.tree_node*, %union.tree_node** %bits2, align 8, !dbg !2591
  call void @llvm.dbg.value(metadata %union.tree_node* %10, metadata !2549, metadata !DIExpression()), !dbg !2559
  %cmp18 = icmp eq %union.tree_node* %9, %10, !dbg !2592
  %11 = ptrtoint %union.tree_node* %9 to i64, !dbg !2593
  %12 = ptrtoint %union.tree_node* %10 to i64, !dbg !2593
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2593
  %14 = getelementptr inbounds %union.tree_node, %union.tree_node* %10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2593
  br i1 %cmp18, label %if.then20, label %if.else21, !dbg !2593

if.then20:                                        ; preds = %if.else
  %15 = bitcast %union.tree_node** %name2 to i64*, !dbg !2594
  %16 = bitcast %union.tree_node** %bits2 to i64*, !dbg !2596
  store i64 %12, i64* %15, align 8, !dbg !2597
  store i64 %8, i64* %16, align 8, !dbg !2598
  %17 = bitcast %union.tree_node** %name1 to i64*, !dbg !2599
  %18 = bitcast %union.tree_node** %bits1 to i64*, !dbg !2600
  store i64 %11, i64* %17, align 8, !dbg !2601
  store i64 %7, i64* %18, align 8, !dbg !2602
  %19 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2603
  %20 = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2603
  br label %if.end33, !dbg !2603

if.else21:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !2546, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata %union.tree_node* %10, metadata !2549, metadata !DIExpression()), !dbg !2559
  %cmp22 = icmp eq %union.tree_node* %5, %10, !dbg !2604
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !2606

if.then24:                                        ; preds = %if.else21
  %21 = bitcast %union.tree_node** %name2 to i64*, !dbg !2607
  %22 = bitcast %union.tree_node** %bits2 to i64*, !dbg !2609
  store i64 %12, i64* %21, align 8, !dbg !2610
  store i64 %8, i64* %22, align 8, !dbg !2611
  %23 = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2612
  br label %if.end33, !dbg !2612

if.else25:                                        ; preds = %if.else21
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !2548, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !2547, metadata !DIExpression()), !dbg !2559
  %cmp26 = icmp eq %union.tree_node* %9, %6, !dbg !2613
  br i1 %cmp26, label %if.then28, label %cleanup, !dbg !2615

if.then28:                                        ; preds = %if.else25
  %24 = bitcast %union.tree_node** %name1 to i64*, !dbg !2616
  %25 = bitcast %union.tree_node** %bits1 to i64*, !dbg !2618
  store i64 %11, i64* %24, align 8, !dbg !2619
  store i64 %7, i64* %25, align 8, !dbg !2620
  %26 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  br label %if.end33

if.end33:                                         ; preds = %if.then14.if.end33_crit_edge, %if.then20, %if.then28, %if.then24
  %27 = phi %struct.tree_common* [ %.pre3, %if.then14.if.end33_crit_edge ], [ %20, %if.then20 ], [ %14, %if.then28 ], [ %23, %if.then24 ]
  %28 = phi %struct.tree_common* [ %.pre, %if.then14.if.end33_crit_edge ], [ %19, %if.then20 ], [ %26, %if.then28 ], [ %13, %if.then24 ]
  %29 = phi %struct.tree_common* [ %.pre3, %if.then14.if.end33_crit_edge ], [ %20, %if.then20 ], [ %14, %if.then28 ], [ %23, %if.then24 ], !dbg !2588
  %30 = phi %struct.tree_common* [ %.pre, %if.then14.if.end33_crit_edge ], [ %19, %if.then20 ], [ %26, %if.then28 ], [ %13, %if.then24 ], !dbg !2587
  %31 = bitcast %union.tree_node** %bits1 to %struct.tree_common**, !dbg !2587
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %30, i64 0, i32 2, !dbg !2587
  %32 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !2587
  %33 = load %struct.tree_type*, %struct.tree_type** %32, align 8, !dbg !2587
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %33, i64 0, i32 6, !dbg !2587
  %bf.load = load i32, i32* %precision, align 4, !dbg !2587
  %bf.clear = and i32 %bf.load, 1023, !dbg !2587
  %34 = bitcast %union.tree_node** %bits2 to %struct.tree_common**, !dbg !2588
  %type36 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %29, i64 0, i32 2, !dbg !2588
  %35 = bitcast %union.tree_node** %type36 to %struct.tree_type**, !dbg !2588
  %36 = load %struct.tree_type*, %struct.tree_type** %35, align 8, !dbg !2588
  %precision38 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %36, i64 0, i32 6, !dbg !2588
  %bf.load39 = load i32, i32* %precision38, align 4, !dbg !2588
  %bf.clear40 = and i32 %bf.load39, 1023, !dbg !2588
  %cmp41 = icmp ult i32 %bf.clear, %bf.clear40, !dbg !2621
  br i1 %cmp41, label %if.else58, label %if.then43, !dbg !2622

if.then43:                                        ; preds = %if.end33
  %type45 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %28, i64 0, i32 2, !dbg !2623
  %37 = load %union.tree_node*, %union.tree_node** %type45, align 8, !dbg !2623
  %call46 = call %union.tree_node* @unsigned_type_for(%union.tree_node* %37) #6, !dbg !2623
  %38 = load %union.tree_node*, %union.tree_node** %bits1, align 8, !dbg !2623
  call void @llvm.dbg.value(metadata %union.tree_node* %38, metadata !2548, metadata !DIExpression()), !dbg !2559
  %call47 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %call46, %union.tree_node* %38) #6, !dbg !2623
  call void @llvm.dbg.value(metadata %union.tree_node* %call47, metadata !2548, metadata !DIExpression()), !dbg !2559
  store %union.tree_node* %call47, %union.tree_node** %bits1, align 8, !dbg !2625
  %type49 = getelementptr inbounds %union.tree_node, %union.tree_node* %call47, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2626
  %39 = load %union.tree_node*, %union.tree_node** %type49, align 8, !dbg !2626
  %40 = load %union.tree_node*, %union.tree_node** %name1, align 8, !dbg !2626
  call void @llvm.dbg.value(metadata %union.tree_node* %40, metadata !2546, metadata !DIExpression()), !dbg !2559
  %call50 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %39, %union.tree_node* %40) #6, !dbg !2626
  call void @llvm.dbg.value(metadata %union.tree_node* %call50, metadata !2546, metadata !DIExpression()), !dbg !2559
  store %union.tree_node* %call50, %union.tree_node** %name1, align 8, !dbg !2627
  %41 = load %struct.tree_common*, %struct.tree_common** %34, align 8, !dbg !2628
  %type52 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %41, i64 0, i32 2, !dbg !2628
  %42 = load %union.tree_node*, %union.tree_node** %type52, align 8, !dbg !2628
  %call53 = call %union.tree_node* @unsigned_type_for(%union.tree_node* %42) #6, !dbg !2628
  %43 = load %union.tree_node*, %union.tree_node** %bits2, align 8, !dbg !2628
  call void @llvm.dbg.value(metadata %union.tree_node* %43, metadata !2549, metadata !DIExpression()), !dbg !2559
  %call54 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %call53, %union.tree_node* %43) #6, !dbg !2628
  call void @llvm.dbg.value(metadata %union.tree_node* %call54, metadata !2549, metadata !DIExpression()), !dbg !2559
  store %union.tree_node* %call54, %union.tree_node** %bits2, align 8, !dbg !2629
  %44 = load %struct.tree_common*, %struct.tree_common** %31, align 8, !dbg !2630
  %type56 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %44, i64 0, i32 2, !dbg !2630
  %45 = load %union.tree_node*, %union.tree_node** %type56, align 8, !dbg !2630
  call void @llvm.dbg.value(metadata %union.tree_node* %call54, metadata !2549, metadata !DIExpression()), !dbg !2559
  %call57 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %45, %union.tree_node* %call54) #6, !dbg !2630
  call void @llvm.dbg.value(metadata %union.tree_node* %call57, metadata !2549, metadata !DIExpression()), !dbg !2559
  store %union.tree_node* %call57, %union.tree_node** %bits2, align 8, !dbg !2631
  br label %if.end73, !dbg !2632

if.else58:                                        ; preds = %if.end33
  %type60 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %27, i64 0, i32 2, !dbg !2633
  %46 = load %union.tree_node*, %union.tree_node** %type60, align 8, !dbg !2633
  %call61 = call %union.tree_node* @unsigned_type_for(%union.tree_node* %46) #6, !dbg !2633
  %47 = load %union.tree_node*, %union.tree_node** %bits2, align 8, !dbg !2633
  call void @llvm.dbg.value(metadata %union.tree_node* %47, metadata !2549, metadata !DIExpression()), !dbg !2559
  %call62 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %call61, %union.tree_node* %47) #6, !dbg !2633
  call void @llvm.dbg.value(metadata %union.tree_node* %call62, metadata !2549, metadata !DIExpression()), !dbg !2559
  store %union.tree_node* %call62, %union.tree_node** %bits2, align 8, !dbg !2635
  %type64 = getelementptr inbounds %union.tree_node, %union.tree_node* %call62, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2636
  %48 = load %union.tree_node*, %union.tree_node** %type64, align 8, !dbg !2636
  %49 = load %union.tree_node*, %union.tree_node** %name1, align 8, !dbg !2636
  call void @llvm.dbg.value(metadata %union.tree_node* %49, metadata !2546, metadata !DIExpression()), !dbg !2559
  %call65 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %48, %union.tree_node* %49) #6, !dbg !2636
  call void @llvm.dbg.value(metadata %union.tree_node* %call65, metadata !2546, metadata !DIExpression()), !dbg !2559
  store %union.tree_node* %call65, %union.tree_node** %name1, align 8, !dbg !2637
  %50 = load %struct.tree_common*, %struct.tree_common** %31, align 8, !dbg !2638
  %type67 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %50, i64 0, i32 2, !dbg !2638
  %51 = load %union.tree_node*, %union.tree_node** %type67, align 8, !dbg !2638
  %call68 = call %union.tree_node* @unsigned_type_for(%union.tree_node* %51) #6, !dbg !2638
  %52 = load %union.tree_node*, %union.tree_node** %bits1, align 8, !dbg !2638
  call void @llvm.dbg.value(metadata %union.tree_node* %52, metadata !2548, metadata !DIExpression()), !dbg !2559
  %call69 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %call68, %union.tree_node* %52) #6, !dbg !2638
  call void @llvm.dbg.value(metadata %union.tree_node* %call69, metadata !2548, metadata !DIExpression()), !dbg !2559
  store %union.tree_node* %call69, %union.tree_node** %bits1, align 8, !dbg !2639
  %53 = load %struct.tree_common*, %struct.tree_common** %34, align 8, !dbg !2640
  %type71 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %53, i64 0, i32 2, !dbg !2640
  %54 = load %union.tree_node*, %union.tree_node** %type71, align 8, !dbg !2640
  call void @llvm.dbg.value(metadata %union.tree_node* %call69, metadata !2548, metadata !DIExpression()), !dbg !2559
  %call72 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %54, %union.tree_node* %call69) #6, !dbg !2640
  call void @llvm.dbg.value(metadata %union.tree_node* %call72, metadata !2548, metadata !DIExpression()), !dbg !2559
  store %union.tree_node* %call72, %union.tree_node** %bits1, align 8, !dbg !2641
  br label %if.end73

if.end73:                                         ; preds = %if.else58, %if.then43
  %55 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2642
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %55) #8, !dbg !2642
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* nonnull %call) #6, !dbg !2642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %55, i64 24, i1 false), !dbg !2642
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %55) #8, !dbg !2642
  %56 = bitcast %union.tree_node** %name1 to %struct.tree_common**, !dbg !2643
  %57 = load %struct.tree_common*, %struct.tree_common** %56, align 8, !dbg !2643
  %type75 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %57, i64 0, i32 2, !dbg !2643
  %58 = load %union.tree_node*, %union.tree_node** %type75, align 8, !dbg !2643
  %59 = load %union.tree_node*, %union.tree_node** %bits1, align 8, !dbg !2643
  call void @llvm.dbg.value(metadata %union.tree_node* %59, metadata !2548, metadata !DIExpression()), !dbg !2559
  %60 = load %union.tree_node*, %union.tree_node** %bits2, align 8, !dbg !2643
  call void @llvm.dbg.value(metadata %union.tree_node* %60, metadata !2549, metadata !DIExpression()), !dbg !2559
  %call76 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 87, %union.tree_node* %58, %union.tree_node* %59, %union.tree_node* %60) #6, !dbg !2643
  call void @llvm.dbg.value(metadata %union.tree_node* %call76, metadata !2553, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2550, metadata !DIExpression(DW_OP_deref)), !dbg !2644
  %call77 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call76, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2645
  call void @llvm.dbg.value(metadata %union.tree_node* %call77, metadata !2553, metadata !DIExpression()), !dbg !2644
  %61 = load %struct.tree_common*, %struct.tree_common** %56, align 8, !dbg !2646
  %type79 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %61, i64 0, i32 2, !dbg !2646
  %62 = load %union.tree_node*, %union.tree_node** %type79, align 8, !dbg !2646
  %.cast = bitcast %struct.tree_common* %61 to %union.tree_node*, !dbg !2646
  call void @llvm.dbg.value(metadata %union.tree_node* %.cast, metadata !2546, metadata !DIExpression()), !dbg !2559
  %call80 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 89, %union.tree_node* %62, %union.tree_node* %.cast, %union.tree_node* %call77) #6, !dbg !2646
  call void @llvm.dbg.value(metadata %union.tree_node* %call80, metadata !2553, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2550, metadata !DIExpression(DW_OP_deref)), !dbg !2644
  %call81 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call80, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2647
  call void @llvm.dbg.value(metadata %union.tree_node* %call81, metadata !2553, metadata !DIExpression()), !dbg !2644
  %63 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !2648
  %type83 = getelementptr inbounds %union.tree_node, %union.tree_node* %call81, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2648
  %64 = load %union.tree_node*, %union.tree_node** %type83, align 8, !dbg !2648
  %call84 = call %union.tree_node* @build_int_cst(%union.tree_node* %64, i64 0) #6, !dbg !2648
  %call85 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 102, %union.tree_node* %63, %union.tree_node* %call81, %union.tree_node* %call84) #6, !dbg !2648
  call void @llvm.dbg.value(metadata %union.tree_node* %call85, metadata !2553, metadata !DIExpression()), !dbg !2644
  %call86 = call %union.tree_node* @canonicalize_cond_expr_cond(%union.tree_node* %call85) #6, !dbg !2649
  call void @llvm.dbg.value(metadata %union.tree_node* %call86, metadata !2553, metadata !DIExpression()), !dbg !2644
  %tobool87 = icmp eq %union.tree_node* %call86, null, !dbg !2650
  br i1 %tobool87, label %cleanup, label %if.end89, !dbg !2652

if.end89:                                         ; preds = %if.end73
  call void @gimple_cond_set_condition_from_tree(%union.gimple_statement_d* nonnull %call, %union.tree_node* nonnull %call86) #6, !dbg !2653
  call fastcc void @update_stmt(%union.gimple_statement_d* nonnull %call) #7, !dbg !2654
  %65 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 25), align 8, !dbg !2655
  call void @gimple_cond_set_condition_from_tree(%union.gimple_statement_d* nonnull %call2, %union.tree_node* %65) #6, !dbg !2656
  call fastcc void @update_stmt(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2657
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2658
  %tobool90 = icmp eq %struct._IO_FILE* %66, null, !dbg !2658
  br i1 %tobool90, label %cleanup, label %if.then91, !dbg !2660

if.then91:                                        ; preds = %if.end89
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2661
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2663
  %68 = load %union.tree_node*, %union.tree_node** %name1, align 8, !dbg !2664
  call void @llvm.dbg.value(metadata %union.tree_node* %68, metadata !2546, metadata !DIExpression()), !dbg !2559
  call void @print_generic_expr(%struct._IO_FILE* %67, %union.tree_node* %68, i32 0) #6, !dbg !2665
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2666
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2667
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2668
  %71 = load %union.tree_node*, %union.tree_node** %bits1, align 8, !dbg !2669
  call void @llvm.dbg.value(metadata %union.tree_node* %71, metadata !2548, metadata !DIExpression()), !dbg !2559
  call void @print_generic_expr(%struct._IO_FILE* %70, %union.tree_node* %71, i32 0) #6, !dbg !2670
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2671
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2672
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2673
  %74 = load %union.tree_node*, %union.tree_node** %bits2, align 8, !dbg !2674
  call void @llvm.dbg.value(metadata %union.tree_node* %74, metadata !2549, metadata !DIExpression()), !dbg !2559
  call void @print_generic_expr(%struct._IO_FILE* %73, %union.tree_node* %74, i32 0) #6, !dbg !2675
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2676
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2677
  br label %cleanup, !dbg !2678

cleanup:                                          ; preds = %if.end89, %if.end73, %if.then91, %if.else25
  %retval.0 = phi i8 [ 0, %if.else25 ], [ 0, %if.end73 ], [ 1, %if.then91 ], [ 1, %if.end89 ], !dbg !2644
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2679
  br label %cleanup142

if.else98:                                        ; preds = %land.lhs.true, %if.end8
  %call99 = call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* nonnull %call) #7, !dbg !2680
  %idxprom = sext i32 %call99 to i64, !dbg !2680
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom, !dbg !2680
  %76 = load i32, i32* %arrayidx, align 4, !dbg !2680
  %cmp100 = icmp eq i32 %76, 5, !dbg !2681
  br i1 %cmp100, label %land.lhs.true102, label %cleanup142, !dbg !2682

land.lhs.true102:                                 ; preds = %if.else98
  %call103 = call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2683
  %idxprom104 = sext i32 %call103 to i64, !dbg !2683
  %arrayidx105 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom104, !dbg !2683
  %77 = load i32, i32* %arrayidx105, align 4, !dbg !2683
  %cmp106 = icmp eq i32 %77, 5, !dbg !2684
  br i1 %cmp106, label %land.lhs.true108, label %cleanup142, !dbg !2685

land.lhs.true108:                                 ; preds = %land.lhs.true102
  %call109 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* nonnull %call) #7, !dbg !2686
  %call110 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2687
  %call111 = call i32 @operand_equal_p(%union.tree_node* %call109, %union.tree_node* %call110, i32 0) #6, !dbg !2688
  %tobool112 = icmp eq i32 %call111, 0, !dbg !2688
  br i1 %tobool112, label %cleanup142, label %land.lhs.true113, !dbg !2689

land.lhs.true113:                                 ; preds = %land.lhs.true108
  %call114 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* nonnull %call) #7, !dbg !2690
  %call115 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2691
  %call116 = call i32 @operand_equal_p(%union.tree_node* %call114, %union.tree_node* %call115, i32 0) #6, !dbg !2692
  %tobool117 = icmp eq i32 %call116, 0, !dbg !2692
  br i1 %tobool117, label %cleanup142, label %if.then118, !dbg !2693

if.then118:                                       ; preds = %land.lhs.true113
  %call119 = call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* nonnull %call) #7, !dbg !2694
  call void @llvm.dbg.value(metadata i32 %call119, metadata !2554, metadata !DIExpression()), !dbg !2695
  %call120 = call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2696
  call void @llvm.dbg.value(metadata i32 %call120, metadata !2557, metadata !DIExpression()), !dbg !2695
  %78 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !2697
  %call122 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2699
  %call123 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2700
  %call124 = call %union.tree_node* @combine_comparisons(i32 0, i32 92, i32 %call119, i32 %call120, %union.tree_node* %78, %union.tree_node* %call122, %union.tree_node* %call123) #6, !dbg !2701
  call void @llvm.dbg.value(metadata %union.tree_node* %call124, metadata !2558, metadata !DIExpression()), !dbg !2695
  %tobool125 = icmp eq %union.tree_node* %call124, null, !dbg !2702
  br i1 %tobool125, label %cleanup142, label %if.end127, !dbg !2703

if.end127:                                        ; preds = %if.then118
  %call128 = call %union.tree_node* @canonicalize_cond_expr_cond(%union.tree_node* nonnull %call124) #6, !dbg !2704
  call void @llvm.dbg.value(metadata %union.tree_node* %call128, metadata !2558, metadata !DIExpression()), !dbg !2695
  %tobool129 = icmp eq %union.tree_node* %call128, null, !dbg !2705
  br i1 %tobool129, label %cleanup142, label %if.end131, !dbg !2707

if.end131:                                        ; preds = %if.end127
  call void @gimple_cond_set_condition_from_tree(%union.gimple_statement_d* nonnull %call, %union.tree_node* nonnull %call128) #6, !dbg !2708
  call fastcc void @update_stmt(%union.gimple_statement_d* nonnull %call) #7, !dbg !2709
  %79 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 25), align 8, !dbg !2710
  call void @gimple_cond_set_condition_from_tree(%union.gimple_statement_d* nonnull %call2, %union.tree_node* %79) #6, !dbg !2711
  call fastcc void @update_stmt(%union.gimple_statement_d* nonnull %call2) #7, !dbg !2712
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2713
  %tobool132 = icmp eq %struct._IO_FILE* %80, null, !dbg !2713
  br i1 %tobool132, label %cleanup142, label %if.then133, !dbg !2715

if.then133:                                       ; preds = %if.end131
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2716
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2718
  call void @print_generic_expr(%struct._IO_FILE* %81, %union.tree_node* nonnull %call128, i32 0) #6, !dbg !2719
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2720
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2721
  br label %cleanup142, !dbg !2722

cleanup142:                                       ; preds = %if.end131, %if.end127, %if.then118, %land.lhs.true113, %land.lhs.true108, %lor.lhs.false4, %if.end, %lor.lhs.false, %entry, %land.lhs.true102, %if.else98, %if.then133, %cleanup
  %retval.2 = phi i8 [ %retval.0, %cleanup ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %lor.lhs.false4 ], [ 0, %if.end ], [ 0, %if.then118 ], [ 0, %if.end127 ], [ 1, %if.then133 ], [ 1, %if.end131 ], [ 0, %if.else98 ], [ 0, %land.lhs.true102 ], [ 0, %land.lhs.true108 ], [ 0, %land.lhs.true113 ], !dbg !2559
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2723
  ret i8 %retval.2, !dbg !2723
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !2724 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2730, metadata !DIExpression()), !dbg !2731
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2732
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2732

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2732
  %0 = load i32, i32* %num, align 8, !dbg !2732
  br label %cond.end, !dbg !2732

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2732
  ret i32 %cond, !dbg !2732
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2733 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2737, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2738, metadata !DIExpression()), !dbg !2739
  br label %land.end, !dbg !2740

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2740
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2740
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2740
  ret %struct.edge_def* %0, !dbg !2740
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2741 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2745, metadata !DIExpression()), !dbg !2746
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #7, !dbg !2747
  %tobool = icmp eq i8 %call, 0, !dbg !2747
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2747

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2747
  br label %cond.end, !dbg !2747

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2748
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2748
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2748
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2748

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2748
  br label %cond.end5, !dbg !2748

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !2748
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !2748
  ret %struct.edge_def* %call7, !dbg !2749
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2750 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2754, metadata !DIExpression()), !dbg !2755
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2756
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2756
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2757
  %conv1 = zext i1 %cmp to i8, !dbg !2758
  ret i8 %conv1, !dbg !2759
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2760 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2764, metadata !DIExpression()), !dbg !2765
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2766
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2766
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2767
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2767
  ret %union.gimple_statement_d* %1, !dbg !2768
}

declare dso_local i32 @operand_equal_p(%union.tree_node*, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !2769 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !2777, metadata !DIExpression()), !dbg !2778
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !2779
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !2779
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2780
  ret %union.tree_node* %1, !dbg !2781
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !2782 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2786, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %i, metadata !2787, metadata !DIExpression()), !dbg !2788
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !2789
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !2790
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !2791
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2792 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2797, metadata !DIExpression()), !dbg !2798
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2799
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2799
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2800
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2800
  %2 = load i64, i64* %1, align 8, !dbg !2800
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2801
  store i64 %2, i64* %3, align 8, !dbg !2801
  ret void, !dbg !2802
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !2803 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2808, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i32 %index, metadata !2809, metadata !DIExpression()), !dbg !2810
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !2811
  %0 = load i32, i32* %capacity, align 8, !dbg !2811
  %cmp = icmp ult i32 %0, %index, !dbg !2811
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2811

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2811
  br label %cond.end, !dbg !2811

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !2812
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !2812
  ret %struct.phi_arg_d* %arrayidx, !dbg !2813
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2814 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2818, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2819, metadata !DIExpression()), !dbg !2822
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !2823
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2820, metadata !DIExpression()), !dbg !2821
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !2824
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2825
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2826
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2827
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2828
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2829
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2830
  ret void, !dbg !2831
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2832 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2836, metadata !DIExpression()), !dbg !2837
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %stmt) #7, !dbg !2838
  %tobool = icmp eq i8 %call, 0, !dbg !2838
  br i1 %tobool, label %return, label %if.then, !dbg !2840

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !2841
  %bf.load = load i32, i32* %0, align 8, !dbg !2841
  %bf.lshr = lshr i32 %bf.load, 14, !dbg !2841
  %1 = trunc i32 %bf.lshr to i8, !dbg !2842
  %conv = and i8 %1, 1, !dbg !2842
  br label %return, !dbg !2843

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8 [ %conv, %if.then ], [ 0, %entry ], !dbg !2844
  ret i8 %retval.0, !dbg !2845
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2846 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2850, metadata !DIExpression()), !dbg !2851
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !2852
  %tobool = icmp eq i8 %call, 0, !dbg !2852
  br i1 %tobool, label %return, label %if.end, !dbg !2854

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !2855
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !2855
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2855
  br label %return, !dbg !2856

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !2851
  ret %union.tree_node* %retval.0, !dbg !2857
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2858 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2862, metadata !DIExpression()), !dbg !2863
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !2864
  %0 = load i32, i32* %flags, align 8, !dbg !2864
  %and = and i32 %0, 512, !dbg !2865
  %tobool = icmp eq i32 %and, 0, !dbg !2865
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !2866

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !2867
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !2867
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !2868
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !2869

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !2870
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !2870
  br label %cond.end, !dbg !2869

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !2869
  ret %struct.gimple_seq_d* %cond, !dbg !2871
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !2872 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !2879, metadata !DIExpression()), !dbg !2880
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !2881
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2881

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !2882
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !2882
  br label %cond.end, !dbg !2881

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !2881
  ret %struct.gimple_seq_node_d* %cond, !dbg !2883
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2884 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2886, metadata !DIExpression()), !dbg !2887
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2888
  %cmp = icmp ugt i32 %call, 5, !dbg !2889
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2890

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2891
  %cmp2 = icmp ult i32 %call1, 10, !dbg !2892
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2893
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @recognize_single_bit_test(%union.gimple_statement_d* %cond, %union.tree_node** %name, %union.tree_node** %bit) unnamed_addr #5 !dbg !2894 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %cond, metadata !2898, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata %union.tree_node** %name, metadata !2899, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata %union.tree_node** %bit, metadata !2900, metadata !DIExpression()), !dbg !2908
  %call = tail call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %cond) #7, !dbg !2909
  %cmp = icmp eq i32 %call, 102, !dbg !2911
  br i1 %cmp, label %lor.lhs.false, label %cleanup148, !dbg !2912

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %cond) #7, !dbg !2913
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2913
  %bf.load = load i64, i64* %0, align 8, !dbg !2913
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !2914
  %cmp2 = icmp eq i64 %bf.cast2, 141, !dbg !2914
  br i1 %cmp2, label %lor.lhs.false3, label %cleanup148, !dbg !2915

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %cond) #7, !dbg !2916
  %call5 = tail call i32 @integer_zerop(%union.tree_node* %call4) #6, !dbg !2917
  %tobool = icmp eq i32 %call5, 0, !dbg !2917
  br i1 %tobool, label %cleanup148, label %if.end, !dbg !2918

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %cond) #7, !dbg !2919
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2919
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2919
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %1, align 8, !dbg !2919
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %2, metadata !2901, metadata !DIExpression()), !dbg !2908
  %call7 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %2) #7, !dbg !2920
  %tobool8 = icmp eq i8 %call7, 0, !dbg !2920
  br i1 %tobool8, label %cleanup148, label %if.end10, !dbg !2922

if.end10:                                         ; preds = %if.end
  %call11 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %2) #7, !dbg !2923
  %cmp12 = icmp eq i32 %call11, 89, !dbg !2924
  br i1 %cmp12, label %land.lhs.true, label %if.end68, !dbg !2925

land.lhs.true:                                    ; preds = %if.end10
  %call13 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %2) #7, !dbg !2926
  %call14 = tail call i32 @integer_onep(%union.tree_node* %call13) #6, !dbg !2927
  %tobool15 = icmp eq i32 %call14, 0, !dbg !2927
  br i1 %tobool15, label %if.end68, label %land.lhs.true16, !dbg !2928

land.lhs.true16:                                  ; preds = %land.lhs.true
  %call17 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %2) #7, !dbg !2929
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2929
  %bf.load19 = load i64, i64* %3, align 8, !dbg !2929
  %bf.cast216 = and i64 %bf.load19, 65535, !dbg !2930
  %cmp22 = icmp eq i64 %bf.cast216, 141, !dbg !2930
  br i1 %cmp22, label %if.then23, label %if.end68, !dbg !2931

if.then23:                                        ; preds = %land.lhs.true16
  %call24 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %2) #7, !dbg !2932
  call void @llvm.dbg.value(metadata %union.tree_node* %call24, metadata !2902, metadata !DIExpression()), !dbg !2933
  br label %while.cond, !dbg !2934

while.cond:                                       ; preds = %while.body, %if.then23
  %call24.pn = phi %union.tree_node* [ %call24, %if.then23 ], [ %call53, %while.body ]
  %stmt.0.in.in = getelementptr inbounds %union.tree_node, %union.tree_node* %call24.pn, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2933
  %stmt.0.in = bitcast %union.tree_node** %stmt.0.in.in to %union.gimple_statement_d**, !dbg !2933
  %stmt.0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt.0.in, align 8, !dbg !2933
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt.0, metadata !2901, metadata !DIExpression()), !dbg !2908
  %call27 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt.0) #7, !dbg !2935
  %tobool28 = icmp eq i8 %call27, 0, !dbg !2935
  br i1 %tobool28, label %while.end, label %land.rhs, !dbg !2936

land.rhs:                                         ; preds = %while.cond
  %call29 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt.0) #7, !dbg !2937
  %cmp30 = icmp eq i32 %call29, 116, !dbg !2937
  br i1 %cmp30, label %land.lhs.true36, label %lor.lhs.false32, !dbg !2937

lor.lhs.false32:                                  ; preds = %land.rhs
  %call33 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt.0) #7, !dbg !2937
  %cmp34 = icmp eq i32 %call33, 113, !dbg !2937
  br i1 %cmp34, label %land.lhs.true36, label %lor.rhs, !dbg !2938

land.lhs.true36:                                  ; preds = %lor.lhs.false32, %land.rhs
  %call37 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt.0) #7, !dbg !2939
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call37, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2939
  %4 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !2939
  %5 = load %struct.tree_type*, %struct.tree_type** %4, align 8, !dbg !2939
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %5, i64 0, i32 6, !dbg !2939
  %bf.load39 = load i32, i32* %precision, align 4, !dbg !2939
  %bf.clear40 = and i32 %bf.load39, 1023, !dbg !2939
  %call41 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt.0) #7, !dbg !2940
  %type43 = getelementptr inbounds %union.tree_node, %union.tree_node* %call41, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2940
  %6 = bitcast %union.tree_node** %type43 to %struct.tree_type**, !dbg !2940
  %7 = load %struct.tree_type*, %struct.tree_type** %6, align 8, !dbg !2940
  %precision45 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %7, i64 0, i32 6, !dbg !2940
  %bf.load46 = load i32, i32* %precision45, align 4, !dbg !2940
  %bf.clear47 = and i32 %bf.load46, 1023, !dbg !2940
  %cmp48 = icmp ugt i32 %bf.clear40, %bf.clear47, !dbg !2941
  br i1 %cmp48, label %lor.rhs, label %while.body, !dbg !2942

lor.rhs:                                          ; preds = %land.lhs.true36, %lor.lhs.false32
  %call50 = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(%union.gimple_statement_d* %stmt.0) #6, !dbg !2943
  %tobool52 = icmp eq i8 %call50, 0, !dbg !2942
  br i1 %tobool52, label %while.end, label %while.body, !dbg !2934

while.body:                                       ; preds = %land.lhs.true36, %lor.rhs
  %call53 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt.0) #7, !dbg !2944
  br label %while.cond, !dbg !2934, !llvm.loop !2945

while.end:                                        ; preds = %lor.rhs, %while.cond
  %stmt.0.lcssa = phi %union.gimple_statement_d* [ %stmt.0, %lor.rhs ], [ %stmt.0, %while.cond ], !dbg !2933
  %call56 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt.0.lcssa) #7, !dbg !2946
  %tobool58 = icmp eq i8 %call56, 0, !dbg !2946
  br i1 %tobool58, label %if.else, label %land.lhs.true59, !dbg !2948

land.lhs.true59:                                  ; preds = %while.end
  %call60 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt.0.lcssa) #7, !dbg !2949
  %cmp61 = icmp eq i32 %call60, 84, !dbg !2950
  br i1 %cmp61, label %if.then63, label %if.else, !dbg !2951

if.then63:                                        ; preds = %land.lhs.true59
  %call64 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt.0.lcssa) #7, !dbg !2952
  store %union.tree_node* %call64, %union.tree_node** %bit, align 8, !dbg !2954
  %call65 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt.0.lcssa) #7, !dbg !2955
  store %union.tree_node* %call65, %union.tree_node** %name, align 8, !dbg !2956
  br label %cleanup148, !dbg !2957

if.else:                                          ; preds = %while.end, %land.lhs.true59
  %8 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13) to i64*), align 8, !dbg !2958
  %9 = bitcast %union.tree_node** %bit to i64*, !dbg !2960
  store i64 %8, i64* %9, align 8, !dbg !2960
  %call66 = tail call fastcc %union.tree_node* @get_name_for_bit_test(%union.tree_node* %call24) #7, !dbg !2961
  store %union.tree_node* %call66, %union.tree_node** %name, align 8, !dbg !2962
  br label %cleanup148

if.end68:                                         ; preds = %land.lhs.true, %land.lhs.true16, %if.end10
  %call69 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %2) #7, !dbg !2963
  %cmp70 = icmp eq i32 %call69, 89, !dbg !2965
  br i1 %cmp70, label %land.lhs.true72, label %if.end90, !dbg !2966

land.lhs.true72:                                  ; preds = %if.end68
  %call73 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %2) #7, !dbg !2967
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call73, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2967
  %bf.load75 = load i64, i64* %10, align 8, !dbg !2967
  %bf.cast775 = and i64 %bf.load75, 65535, !dbg !2968
  %cmp78 = icmp eq i64 %bf.cast775, 141, !dbg !2968
  br i1 %cmp78, label %land.lhs.true80, label %if.end90, !dbg !2969

land.lhs.true80:                                  ; preds = %land.lhs.true72
  %call81 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %2) #7, !dbg !2970
  %call82 = tail call i32 @integer_pow2p(%union.tree_node* %call81) #6, !dbg !2971
  %tobool83 = icmp eq i32 %call82, 0, !dbg !2971
  br i1 %tobool83, label %if.end90, label %if.then84, !dbg !2972

if.then84:                                        ; preds = %land.lhs.true80
  %call85 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %2) #7, !dbg !2973
  store %union.tree_node* %call85, %union.tree_node** %name, align 8, !dbg !2975
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !2976
  %call86 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %2) #7, !dbg !2977
  %call87 = tail call i32 @tree_log2(%union.tree_node* %call86) #6, !dbg !2978
  %conv88 = sext i32 %call87 to i64, !dbg !2978
  %call89 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %11, i64 %conv88) #6, !dbg !2979
  store %union.tree_node* %call89, %union.tree_node** %bit, align 8, !dbg !2980
  br label %cleanup148, !dbg !2981

if.end90:                                         ; preds = %land.lhs.true80, %land.lhs.true72, %if.end68
  %call91 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %2) #7, !dbg !2982
  %cmp92 = icmp eq i32 %call91, 89, !dbg !2983
  br i1 %cmp92, label %land.lhs.true94, label %if.end147, !dbg !2984

land.lhs.true94:                                  ; preds = %if.end90
  %call95 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %2) #7, !dbg !2985
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %call95, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2985
  %bf.load97 = load i64, i64* %12, align 8, !dbg !2985
  %bf.cast993 = and i64 %bf.load97, 65535, !dbg !2986
  %cmp100 = icmp eq i64 %bf.cast993, 141, !dbg !2986
  br i1 %cmp100, label %land.lhs.true102, label %if.end147, !dbg !2987

land.lhs.true102:                                 ; preds = %land.lhs.true94
  %call103 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %2) #7, !dbg !2988
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %call103, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2988
  %bf.load105 = load i64, i64* %13, align 8, !dbg !2988
  %bf.cast1074 = and i64 %bf.load105, 65535, !dbg !2989
  %cmp108 = icmp eq i64 %bf.cast1074, 141, !dbg !2989
  br i1 %cmp108, label %if.then110, label %if.end147, !dbg !2990

if.then110:                                       ; preds = %land.lhs.true102
  %call111 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %2) #7, !dbg !2991
  %def_stmt113 = getelementptr inbounds %union.tree_node, %union.tree_node* %call111, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2991
  %14 = bitcast %union.tree_node** %def_stmt113 to %union.gimple_statement_d**, !dbg !2991
  %15 = load %union.gimple_statement_d*, %union.gimple_statement_d** %14, align 8, !dbg !2991
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %15, metadata !2905, metadata !DIExpression()), !dbg !2992
  %call114 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %15) #7, !dbg !2993
  %tobool116 = icmp eq i8 %call114, 0, !dbg !2993
  br i1 %tobool116, label %if.end128, label %land.lhs.true117, !dbg !2995

land.lhs.true117:                                 ; preds = %if.then110
  %call118 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %15) #7, !dbg !2996
  %cmp119 = icmp eq i32 %call118, 83, !dbg !2997
  br i1 %cmp119, label %land.lhs.true121, label %if.end128, !dbg !2998

land.lhs.true121:                                 ; preds = %land.lhs.true117
  %call122 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %15) #7, !dbg !2999
  %call123 = tail call i32 @integer_onep(%union.tree_node* %call122) #6, !dbg !3000
  %tobool124 = icmp eq i32 %call123, 0, !dbg !3000
  br i1 %tobool124, label %if.end128, label %if.then125, !dbg !3001

if.then125:                                       ; preds = %land.lhs.true121
  %call126 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %2) #7, !dbg !3002
  store %union.tree_node* %call126, %union.tree_node** %name, align 8, !dbg !3004
  %call127 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %15) #7, !dbg !3005
  store %union.tree_node* %call127, %union.tree_node** %bit, align 8, !dbg !3006
  br label %cleanup, !dbg !3007

if.end128:                                        ; preds = %land.lhs.true121, %if.then110, %land.lhs.true117
  %call129 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %2) #7, !dbg !3008
  %def_stmt131 = getelementptr inbounds %union.tree_node, %union.tree_node* %call129, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3008
  %16 = bitcast %union.tree_node** %def_stmt131 to %union.gimple_statement_d**, !dbg !3008
  %17 = load %union.gimple_statement_d*, %union.gimple_statement_d** %16, align 8, !dbg !3008
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %17, metadata !2905, metadata !DIExpression()), !dbg !2992
  %call132 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %17) #7, !dbg !3009
  %tobool134 = icmp eq i8 %call132, 0, !dbg !3009
  br i1 %tobool134, label %cleanup, label %land.lhs.true135, !dbg !3011

land.lhs.true135:                                 ; preds = %if.end128
  %call136 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %17) #7, !dbg !3012
  %cmp137 = icmp eq i32 %call136, 83, !dbg !3013
  br i1 %cmp137, label %land.lhs.true139, label %cleanup, !dbg !3014

land.lhs.true139:                                 ; preds = %land.lhs.true135
  %call140 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %17) #7, !dbg !3015
  %call141 = tail call i32 @integer_onep(%union.tree_node* %call140) #6, !dbg !3016
  %tobool142 = icmp eq i32 %call141, 0, !dbg !3016
  br i1 %tobool142, label %cleanup, label %if.then143, !dbg !3017

if.then143:                                       ; preds = %land.lhs.true139
  %call144 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %2) #7, !dbg !3018
  store %union.tree_node* %call144, %union.tree_node** %name, align 8, !dbg !3020
  %call145 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %17) #7, !dbg !3021
  store %union.tree_node* %call145, %union.tree_node** %bit, align 8, !dbg !3022
  br label %cleanup, !dbg !3023

cleanup:                                          ; preds = %land.lhs.true139, %if.end128, %land.lhs.true135, %if.then143, %if.then125
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then125 ], [ false, %if.then143 ], [ true, %land.lhs.true139 ], [ true, %land.lhs.true135 ], [ true, %if.end128 ]
  br i1 %cleanup.dest.slot.0, label %if.end147, label %cleanup148

if.end147:                                        ; preds = %cleanup, %land.lhs.true102, %land.lhs.true94, %if.end90
  br label %cleanup148, !dbg !3024

cleanup148:                                       ; preds = %if.end, %lor.lhs.false3, %lor.lhs.false, %entry, %if.then63, %if.else, %cleanup, %if.end147, %if.then84
  %retval.1 = phi i8 [ 1, %if.then84 ], [ 1, %cleanup ], [ 0, %if.end147 ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.else ], [ 1, %if.then63 ], !dbg !2908
  ret i8 %retval.1, !dbg !3025
}

declare dso_local void @gsi_for_stmt(%struct.gimple_stmt_iterator* sret, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #2

declare dso_local %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator*, %union.tree_node*, i8 zeroext, %union.tree_node*, i8 zeroext, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @canonicalize_cond_expr_cond(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @gimple_cond_set_condition_from_tree(%union.gimple_statement_d*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3026 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3030, metadata !DIExpression()), !dbg !3031
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #7, !dbg !3032
  %tobool = icmp eq i8 %call, 0, !dbg !3032
  br i1 %tobool, label %if.end, label %if.then, !dbg !3034

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !3035
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !3037
  br label %if.end, !dbg !3038

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3039
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3040 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3044, metadata !DIExpression()), !dbg !3045
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !3046
  %bf.load = load i32, i32* %0, align 8, !dbg !3046
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3046
  ret i32 %bf.lshr, !dbg !3047
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3048 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3050, metadata !DIExpression()), !dbg !3051
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3052
  ret %union.tree_node* %call, !dbg !3053
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3054 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3056, metadata !DIExpression()), !dbg !3057
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3058
  ret %union.tree_node* %call, !dbg !3059
}

declare dso_local %union.tree_node* @combine_comparisons(i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3060 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3062, metadata !DIExpression()), !dbg !3063
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3064
  %cmp = icmp eq i32 %call, 6, !dbg !3065
  %conv1 = zext i1 %cmp to i8, !dbg !3064
  ret i8 %conv1, !dbg !3066
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3067 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3069, metadata !DIExpression()), !dbg !3071
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !3072
  call void @llvm.dbg.value(metadata i32 %call, metadata !3070, metadata !DIExpression()), !dbg !3071
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !3073
  %cmp = icmp eq i32 %call1, 3, !dbg !3075
  br i1 %cmp, label %if.then, label %if.end, !dbg !3076

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !3077
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3077
  %bf.load = load i64, i64* %0, align 8, !dbg !3077
  %1 = trunc i64 %bf.load to i32, !dbg !3077
  %bf.cast = and i32 %1, 65535, !dbg !3077
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3070, metadata !DIExpression()), !dbg !3071
  br label %if.end, !dbg !3078

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3071
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3070, metadata !DIExpression()), !dbg !3071
  ret i32 %code.0, !dbg !3079
}

declare dso_local i32 @integer_onep(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3080 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3082, metadata !DIExpression()), !dbg !3083
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !3084
  %cmp = icmp ugt i32 %call, 2, !dbg !3086
  br i1 %cmp, label %if.then, label %return, !dbg !3087

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 2) #7, !dbg !3088
  br label %return, !dbg !3089

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %call1, %if.then ], [ null, %entry ], !dbg !3090
  ret %union.tree_node* %retval.0, !dbg !3091
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3092 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3094, metadata !DIExpression()), !dbg !3095
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3096
  ret %union.tree_node* %call, !dbg !3097
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3098 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3100, metadata !DIExpression()), !dbg !3101
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3102
  ret %union.tree_node* %call, !dbg !3103
}

declare dso_local zeroext i8 @gimple_assign_ssa_name_copy_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @get_name_for_bit_test(%union.tree_node* %candidate) unnamed_addr #5 !dbg !3104 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %candidate, metadata !3108, metadata !DIExpression()), !dbg !3112
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %candidate, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3113
  %bf.load = load i64, i64* %0, align 8, !dbg !3113
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3114
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3114
  br i1 %cmp, label %land.lhs.true, label %if.end28, !dbg !3115

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc zeroext i8 @has_single_use(%union.tree_node* %candidate) #7, !dbg !3116
  %tobool = icmp eq i8 %call, 0, !dbg !3116
  br i1 %tobool, label %if.end28, label %if.then, !dbg !3117

if.then:                                          ; preds = %land.lhs.true
  %def_stmt1 = getelementptr inbounds %union.tree_node, %union.tree_node* %candidate, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3118
  %1 = bitcast %union.tree_node** %def_stmt1 to %union.gimple_statement_d**, !dbg !3118
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %1, align 8, !dbg !3118
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %2, metadata !3109, metadata !DIExpression()), !dbg !3119
  %call2 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %2) #7, !dbg !3120
  %tobool4 = icmp eq i8 %call2, 0, !dbg !3120
  br i1 %tobool4, label %cleanup, label %land.lhs.true5, !dbg !3122

land.lhs.true5:                                   ; preds = %if.then
  %call6 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %2) #7, !dbg !3123
  %cmp7 = icmp eq i32 %call6, 116, !dbg !3123
  br i1 %cmp7, label %if.then12, label %lor.lhs.false, !dbg !3123

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %call9 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %2) #7, !dbg !3123
  %cmp10 = icmp eq i32 %call9, 113, !dbg !3123
  br i1 %cmp10, label %if.then12, label %cleanup, !dbg !3124

if.then12:                                        ; preds = %lor.lhs.false, %land.lhs.true5
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %candidate, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3125
  %3 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !3125
  %4 = load %struct.tree_type*, %struct.tree_type** %3, align 8, !dbg !3125
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %4, i64 0, i32 6, !dbg !3125
  %bf.load14 = load i32, i32* %precision, align 4, !dbg !3125
  %bf.clear15 = and i32 %bf.load14, 1023, !dbg !3125
  %call16 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %2) #7, !dbg !3128
  %type18 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3128
  %5 = bitcast %union.tree_node** %type18 to %struct.tree_type**, !dbg !3128
  %6 = load %struct.tree_type*, %struct.tree_type** %5, align 8, !dbg !3128
  %precision20 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %6, i64 0, i32 6, !dbg !3128
  %bf.load21 = load i32, i32* %precision20, align 4, !dbg !3128
  %bf.clear22 = and i32 %bf.load21, 1023, !dbg !3128
  %cmp23 = icmp ugt i32 %bf.clear15, %bf.clear22, !dbg !3129
  br i1 %cmp23, label %cleanup, label %if.then25, !dbg !3130

if.then25:                                        ; preds = %if.then12
  %call26 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %2) #7, !dbg !3131
  br label %cleanup, !dbg !3132

cleanup:                                          ; preds = %if.then12, %if.then, %lor.lhs.false, %if.then25
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then25 ], [ true, %if.then12 ], [ true, %lor.lhs.false ], [ true, %if.then ]
  %retval.0 = phi %union.tree_node* [ %call26, %if.then25 ], [ undef, %if.then12 ], [ undef, %lor.lhs.false ], [ undef, %if.then ]
  br i1 %cleanup.dest.slot.0, label %if.end28, label %return

if.end28:                                         ; preds = %land.lhs.true, %cleanup, %entry
  br label %return, !dbg !3133

return:                                           ; preds = %cleanup, %if.end28
  %retval.1 = phi %union.tree_node* [ %retval.0, %cleanup ], [ %candidate, %if.end28 ], !dbg !3112
  ret %union.tree_node* %retval.1, !dbg !3134
}

declare dso_local i32 @integer_pow2p(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @tree_log2(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3135 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3137, metadata !DIExpression()), !dbg !3139
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !3140
  call void @llvm.dbg.value(metadata i32 %call, metadata !3138, metadata !DIExpression()), !dbg !3139
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !3141

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3143
  %bf.load = load i32, i32* %0, align 8, !dbg !3143
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3143
  br label %cleanup, !dbg !3144

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3145
  br label %cleanup, !dbg !3147

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3139
  ret i32 %retval.0, !dbg !3148
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3149 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3153, metadata !DIExpression()), !dbg !3154
  %idxprom = sext i32 %code to i64, !dbg !3155
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3155
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3155
  %conv = zext i8 %0 to i32, !dbg !3156
  ret i32 %conv, !dbg !3157
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3158 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3162, metadata !DIExpression()), !dbg !3163
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3164
  %0 = load i32, i32* %num_ops, align 4, !dbg !3164
  ret i32 %0, !dbg !3165
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3166 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3170, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i32 %i, metadata !3171, metadata !DIExpression()), !dbg !3172
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3173
  %tobool = icmp eq i8 %call, 0, !dbg !3173
  br i1 %tobool, label %return, label %if.then, !dbg !3175

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3176
  %idxprom = zext i32 %i to i64, !dbg !3176
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3176
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3176
  br label %return, !dbg !3178

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3179
  ret %union.tree_node* %retval.0, !dbg !3180
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3181 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3183, metadata !DIExpression()), !dbg !3184
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3185
  %cmp = icmp eq i32 %call, 0, !dbg !3186
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3187

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3188
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3189
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3190
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3191 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3195, metadata !DIExpression()), !dbg !3197
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3198
  %idxprom = zext i32 %call to i64, !dbg !3199
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3199
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3199
  call void @llvm.dbg.value(metadata i64 %0, metadata !3196, metadata !DIExpression()), !dbg !3197
  %cmp = icmp eq i64 %0, 0, !dbg !3200
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3200

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3200
  br label %cond.end, !dbg !3200

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3201
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3202
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3203
  ret %union.tree_node** %2, !dbg !3204
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3205 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3209, metadata !DIExpression()), !dbg !3210
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3211
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3212
  ret i32 %call1, !dbg !3213
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3214 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3218, metadata !DIExpression()), !dbg !3219
  %idxprom = zext i32 %code to i64, !dbg !3220
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3220
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3220
  ret i32 %0, !dbg !3221
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @has_single_use(%union.tree_node* %var) unnamed_addr #0 !dbg !3222 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3229, metadata !DIExpression()), !dbg !3234
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3235
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !3235
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !3230, metadata !DIExpression()), !dbg !3234
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !3236
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !3236
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !3236
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !3238
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3239

if.end:                                           ; preds = %entry
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 1, !dbg !3240
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next2, align 8, !dbg !3240
  %cmp3 = icmp eq %struct.ssa_use_operand_d* %3, %0, !dbg !3242
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !3243

if.then4:                                         ; preds = %if.end
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 2, i32 0, !dbg !3244
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3244
  %call = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %4) #7, !dbg !3245
  %tobool = icmp eq i8 %call, 0, !dbg !3246
  %conv = zext i1 %tobool to i8, !dbg !3246
  br label %cleanup, !dbg !3247

if.end6:                                          ; preds = %if.end
  %5 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !3248
  %tobool7 = icmp eq i32 %5, 0, !dbg !3248
  br i1 %tobool7, label %cleanup, label %if.end9, !dbg !3250

if.end9:                                          ; preds = %if.end6
  %call10 = tail call zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d* nonnull %0, %struct.ssa_use_operand_d** null, %union.gimple_statement_d** null) #6, !dbg !3251
  br label %cleanup, !dbg !3252

cleanup:                                          ; preds = %if.end6, %entry, %if.end9, %if.then4
  %retval.0 = phi i8 [ %conv, %if.then4 ], [ %call10, %if.end9 ], [ 0, %entry ], [ 0, %if.end6 ], !dbg !3234
  ret i8 %retval.0, !dbg !3253
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3254 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3256, metadata !DIExpression()), !dbg !3257
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3258
  %cmp = icmp eq i32 %call, 2, !dbg !3259
  %conv1 = zext i1 %cmp to i8, !dbg !3258
  ret i8 %conv1, !dbg !3260
}

declare dso_local zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d*, %struct.ssa_use_operand_d**, %union.gimple_statement_d**) local_unnamed_addr #2

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @recognize_bits_test(%union.gimple_statement_d* %cond, %union.tree_node** %name, %union.tree_node** %bits) unnamed_addr #5 !dbg !3261 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %cond, metadata !3263, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata %union.tree_node** %name, metadata !3264, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata %union.tree_node** %bits, metadata !3265, metadata !DIExpression()), !dbg !3267
  %call = tail call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %cond) #7, !dbg !3268
  %cmp = icmp eq i32 %call, 102, !dbg !3270
  br i1 %cmp, label %lor.lhs.false, label %cleanup, !dbg !3271

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %cond) #7, !dbg !3272
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3272
  %bf.load = load i64, i64* %0, align 8, !dbg !3272
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3273
  %cmp2 = icmp eq i64 %bf.cast1, 141, !dbg !3273
  br i1 %cmp2, label %lor.lhs.false3, label %cleanup, !dbg !3274

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %cond) #7, !dbg !3275
  %call5 = tail call i32 @integer_zerop(%union.tree_node* %call4) #6, !dbg !3276
  %tobool = icmp eq i32 %call5, 0, !dbg !3276
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3277

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %cond) #7, !dbg !3278
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3278
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3278
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %1, align 8, !dbg !3278
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %2, metadata !3266, metadata !DIExpression()), !dbg !3267
  %call7 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %2) #7, !dbg !3279
  %tobool8 = icmp eq i8 %call7, 0, !dbg !3279
  br i1 %tobool8, label %cleanup, label %lor.lhs.false9, !dbg !3281

lor.lhs.false9:                                   ; preds = %if.end
  %call10 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %2) #7, !dbg !3282
  %cmp11 = icmp eq i32 %call10, 89, !dbg !3283
  br i1 %cmp11, label %if.end13, label %cleanup, !dbg !3284

if.end13:                                         ; preds = %lor.lhs.false9
  %call14 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %2) #7, !dbg !3285
  %call15 = tail call fastcc %union.tree_node* @get_name_for_bit_test(%union.tree_node* %call14) #7, !dbg !3286
  store %union.tree_node* %call15, %union.tree_node** %name, align 8, !dbg !3287
  %call16 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %2) #7, !dbg !3288
  store %union.tree_node* %call16, %union.tree_node** %bits, align 8, !dbg !3289
  br label %cleanup, !dbg !3290

cleanup:                                          ; preds = %lor.lhs.false9, %if.end, %lor.lhs.false3, %lor.lhs.false, %entry, %if.end13
  %retval.0 = phi i8 [ 1, %if.end13 ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %lor.lhs.false9 ], [ 0, %if.end ], !dbg !3267
  ret i8 %retval.0, !dbg !3291
}

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @unsigned_type_for(%union.tree_node*) local_unnamed_addr #2

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
!llvm.module.flags = !{!1716, !1717, !1718}
!llvm.ident = !{!1719}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_tree_ifcombine", scope: !2, file: !3, line: 660, type: !1690, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !503, globals: !1689, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-ifcombine.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !195, !200, !205, !224, !231, !238, !432, !471, !477}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !6, line: 104, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 74, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!16 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!27 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!28 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!29 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!30 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!31 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!32 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!33 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!34 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!35 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!36 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!37 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!38 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!39 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!40 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!41 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!42 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!43 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!44 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!45 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!46 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!47 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!48 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!49 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!50 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!51 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!52 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!53 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!54 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!55 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!56 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!57 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!58 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!59 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!60 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!61 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!62 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!63 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!64 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!65 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!66 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!67 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!68 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!69 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!70 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!71 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!72 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!73 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!74 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!75 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!76 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!77 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!78 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!79 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!80 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!81 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!82 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!83 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!84 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!85 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!86 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!87 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!88 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!89 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!90 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!91 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!92 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!93 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!94 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!95 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!96 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!97 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!98 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!99 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!100 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!101 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!102 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!103 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!104 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!105 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!106 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!107 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!108 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!109 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!110 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!111 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!112 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!113 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!114 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!115 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!116 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!117 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!118 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!119 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!120 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!121 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!122 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!123 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!124 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!125 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!126 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!127 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!128 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!129 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!130 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!131 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!132 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!133 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!134 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!135 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!136 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!137 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!138 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!139 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!140 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!141 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!142 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!143 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!144 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!145 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!146 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!147 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!148 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!149 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!150 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!151 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!152 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!153 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!154 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!155 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!156 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!157 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!158 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!159 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!160 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!161 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!162 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!163 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!164 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!165 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!166 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!167 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!168 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!169 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!170 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!171 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!172 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!173 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!174 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!175 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!176 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!177 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!178 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!179 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!180 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!181 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!182 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!183 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!184 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!185 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!186 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!187 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!188 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !190, line: 363, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!191 = !{!192, !193, !194}
!192 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !190, line: 355, baseType: !7, size: 32, elements: !196)
!196 = !{!197, !198, !199}
!197 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!198 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!199 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !201, line: 474, baseType: !7, size: 32, elements: !202)
!201 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!202 = !{!203, !204}
!203 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!204 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !206, line: 280, baseType: !7, size: 32, elements: !207)
!206 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223}
!208 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!209 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!210 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!211 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!212 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!213 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!214 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!215 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!216 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!217 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!218 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!219 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!220 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!221 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!222 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!223 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !206, line: 1817, baseType: !7, size: 32, elements: !225)
!225 = !{!226, !227, !228, !229, !230}
!226 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!227 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!228 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!229 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!230 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !206, line: 1805, baseType: !7, size: 32, elements: !232)
!232 = !{!233, !234, !235, !236, !237}
!233 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!234 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!235 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!236 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!237 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !206, line: 39, baseType: !7, size: 32, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431}
!240 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!241 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!242 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!243 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!244 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!245 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!246 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!247 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!248 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!249 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!250 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!251 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!252 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!253 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!254 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!255 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!256 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!257 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!258 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!259 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!260 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!261 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!262 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!263 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!264 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!265 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!266 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!267 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!268 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!269 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!270 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!271 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!272 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!273 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!274 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!275 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!276 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!277 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!278 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!279 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!280 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!281 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!282 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!283 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!284 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!285 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!286 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!287 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!288 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!289 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!290 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!291 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!292 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!293 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!294 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!295 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!296 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!297 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!298 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!299 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!300 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!301 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!302 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!303 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!304 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!305 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!306 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!307 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!308 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!309 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!310 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!311 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!312 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!313 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!314 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!315 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!316 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!317 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!318 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!319 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!320 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!321 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!322 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!323 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!324 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!325 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!326 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!327 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!328 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!329 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!330 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!331 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!332 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!333 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!334 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!335 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!336 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!337 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!338 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!339 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!340 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!341 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!342 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!343 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!344 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!345 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!346 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!347 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!348 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!349 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!350 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!351 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!352 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!353 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!354 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!355 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!356 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!357 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!358 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!359 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!360 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!361 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!362 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!363 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!364 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!365 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!366 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!367 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!368 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!369 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!370 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!371 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!372 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!373 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!374 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!375 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!376 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!377 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!378 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!379 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!380 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!381 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!382 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!383 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!384 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!385 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!386 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!387 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!388 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!389 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!390 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!391 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!392 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!393 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!394 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!395 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!396 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!397 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!398 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!399 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!400 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!401 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!402 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!403 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!404 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!405 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!406 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!407 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!408 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!409 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!410 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!411 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!412 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!413 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!414 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!415 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!416 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!417 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!418 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!419 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!420 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!421 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!422 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!423 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!424 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!425 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!426 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!427 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!428 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!429 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!430 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!431 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
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
!503 = !{!504, !505, !506, !507, !510, !511, !513, !624, !238, !471, !809, !1687, !843, !508}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!506 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !514, line: 56, baseType: !515)
!514 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !206, line: 3371, size: 1792, elements: !517)
!517 = !{!518, !551, !557, !570, !577, !584, !589, !598, !604, !617, !629, !667, !675, !703, !720, !721, !726, !735, !741, !746, !750, !754, !1336, !1385, !1391, !1397, !1404, !1417, !1431, !1448, !1460, !1482, !1497, !1669}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !516, file: !206, line: 3372, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !206, line: 360, size: 64, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !519, file: !206, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !519, file: !206, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !519, file: !206, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !519, file: !206, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !519, file: !206, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !519, file: !206, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !519, file: !206, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !519, file: !206, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !519, file: !206, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !519, file: !206, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !519, file: !206, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !519, file: !206, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !519, file: !206, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !519, file: !206, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !519, file: !206, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !519, file: !206, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !519, file: !206, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !519, file: !206, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !519, file: !206, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !519, file: !206, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !519, file: !206, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !519, file: !206, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !519, file: !206, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !519, file: !206, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !519, file: !206, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !519, file: !206, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !519, file: !206, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !519, file: !206, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !519, file: !206, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !519, file: !206, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !516, file: !206, line: 3373, baseType: !552, size: 192)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !206, line: 402, size: 192, elements: !553)
!553 = !{!554, !555, !556}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !552, file: !206, line: 403, baseType: !519, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !552, file: !206, line: 404, baseType: !513, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !552, file: !206, line: 405, baseType: !513, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !516, file: !206, line: 3374, baseType: !558, size: 320)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !206, line: 1384, size: 320, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !558, file: !206, line: 1385, baseType: !552, size: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !558, file: !206, line: 1386, baseType: !562, size: 128, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !563, line: 58, baseType: !564)
!563 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !563, line: 54, size: 128, elements: !565)
!565 = !{!566, !568}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !564, file: !563, line: 56, baseType: !567, size: 64)
!567 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !564, file: !563, line: 57, baseType: !569, size: 64, offset: 64)
!569 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !516, file: !206, line: 3375, baseType: !571, size: 256)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !206, line: 1397, size: 256, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !571, file: !206, line: 1398, baseType: !552, size: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !571, file: !206, line: 1399, baseType: !575, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !206, line: 1392, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !516, file: !206, line: 3376, baseType: !578, size: 256)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !206, line: 1408, size: 256, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !578, file: !206, line: 1409, baseType: !552, size: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !578, file: !206, line: 1410, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !206, line: 1403, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !516, file: !206, line: 3377, baseType: !585, size: 256)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !206, line: 1437, size: 256, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !585, file: !206, line: 1438, baseType: !552, size: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !585, file: !206, line: 1439, baseType: !513, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !516, file: !206, line: 3378, baseType: !590, size: 256)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !206, line: 1418, size: 256, elements: !591)
!591 = !{!592, !593, !594}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !590, file: !206, line: 1419, baseType: !552, size: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !590, file: !206, line: 1420, baseType: !506, size: 32, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !590, file: !206, line: 1421, baseType: !595, size: 8, offset: 224)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 8, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 1)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !516, file: !206, line: 3379, baseType: !599, size: 320)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !206, line: 1428, size: 320, elements: !600)
!600 = !{!601, !602, !603}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !599, file: !206, line: 1429, baseType: !552, size: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !599, file: !206, line: 1430, baseType: !513, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !599, file: !206, line: 1431, baseType: !513, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !516, file: !206, line: 3380, baseType: !605, size: 320)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !206, line: 1460, size: 320, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !605, file: !206, line: 1461, baseType: !552, size: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !605, file: !206, line: 1462, baseType: !609, size: 128, offset: 192)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !610, line: 31, size: 128, elements: !611)
!610 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!611 = !{!612, !615, !616}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !609, file: !610, line: 32, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !609, file: !610, line: 33, baseType: !7, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !609, file: !610, line: 34, baseType: !7, size: 32, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !516, file: !206, line: 3381, baseType: !618, size: 384)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !206, line: 2507, size: 384, elements: !619)
!619 = !{!620, !621, !626, !627, !628}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !618, file: !206, line: 2508, baseType: !552, size: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !618, file: !206, line: 2509, baseType: !622, size: 32, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !623, line: 58, baseType: !624)
!623 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !625, line: 44, baseType: !7)
!625 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!626 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !618, file: !206, line: 2510, baseType: !7, size: 32, offset: 224)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !618, file: !206, line: 2511, baseType: !513, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !618, file: !206, line: 2512, baseType: !513, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !516, file: !206, line: 3382, baseType: !630, size: 896)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !206, line: 2652, size: 896, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !630, file: !206, line: 2653, baseType: !618, size: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !630, file: !206, line: 2654, baseType: !513, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !630, file: !206, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !630, file: !206, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !630, file: !206, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !630, file: !206, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !630, file: !206, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !630, file: !206, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !630, file: !206, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !630, file: !206, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !630, file: !206, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !630, file: !206, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !630, file: !206, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !630, file: !206, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !630, file: !206, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !630, file: !206, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !630, file: !206, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !630, file: !206, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !630, file: !206, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !630, file: !206, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !630, file: !206, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !630, file: !206, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !630, file: !206, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !630, file: !206, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !630, file: !206, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !630, file: !206, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !630, file: !206, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !630, file: !206, line: 2703, baseType: !7, size: 32, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !630, file: !206, line: 2705, baseType: !513, size: 64, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !630, file: !206, line: 2706, baseType: !513, size: 64, offset: 640)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !630, file: !206, line: 2707, baseType: !513, size: 64, offset: 704)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !630, file: !206, line: 2708, baseType: !513, size: 64, offset: 768)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !630, file: !206, line: 2711, baseType: !665, size: 64, offset: 832)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !206, line: 2711, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !516, file: !206, line: 3383, baseType: !668, size: 960)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !206, line: 2756, size: 960, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !668, file: !206, line: 2757, baseType: !630, size: 896)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !668, file: !206, line: 2758, baseType: !672, size: 64, offset: 896)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !514, line: 50, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !514, line: 49, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !516, file: !206, line: 3384, baseType: !676, size: 1472)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !206, line: 3114, size: 1472, elements: !677)
!677 = !{!678, !699, !700, !701, !702}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !676, file: !206, line: 3115, baseType: !679, size: 1216)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !206, line: 2984, size: 1216, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !679, file: !206, line: 2985, baseType: !668, size: 960)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !679, file: !206, line: 2986, baseType: !513, size: 64, offset: 960)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !679, file: !206, line: 2987, baseType: !513, size: 64, offset: 1024)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !679, file: !206, line: 2988, baseType: !513, size: 64, offset: 1088)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !679, file: !206, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !679, file: !206, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !679, file: !206, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !679, file: !206, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !679, file: !206, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !679, file: !206, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !679, file: !206, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !679, file: !206, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !679, file: !206, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !679, file: !206, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !679, file: !206, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !679, file: !206, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !679, file: !206, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !679, file: !206, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !676, file: !206, line: 3117, baseType: !513, size: 64, offset: 1216)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !676, file: !206, line: 3119, baseType: !513, size: 64, offset: 1280)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !676, file: !206, line: 3121, baseType: !513, size: 64, offset: 1344)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !676, file: !206, line: 3123, baseType: !513, size: 64, offset: 1408)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !516, file: !206, line: 3385, baseType: !704, size: 1088)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !206, line: 2874, size: 1088, elements: !705)
!705 = !{!706, !707, !708}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !704, file: !206, line: 2875, baseType: !668, size: 960)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !704, file: !206, line: 2876, baseType: !672, size: 64, offset: 960)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !704, file: !206, line: 2877, baseType: !709, size: 64, offset: 1024)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !711, line: 172, size: 128, elements: !712)
!711 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!712 = !{!713, !714, !715, !716, !717, !718, !719}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !710, file: !711, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !710, file: !711, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !710, file: !711, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !710, file: !711, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !710, file: !711, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !710, file: !711, line: 195, baseType: !7, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !710, file: !711, line: 199, baseType: !513, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !516, file: !206, line: 3386, baseType: !679, size: 1216)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !516, file: !206, line: 3387, baseType: !722, size: 1280)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !206, line: 3093, size: 1280, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !722, file: !206, line: 3094, baseType: !679, size: 1216)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !722, file: !206, line: 3095, baseType: !709, size: 64, offset: 1216)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !516, file: !206, line: 3388, baseType: !727, size: 1216)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !206, line: 2824, size: 1216, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !727, file: !206, line: 2825, baseType: !630, size: 896)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !727, file: !206, line: 2827, baseType: !513, size: 64, offset: 896)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !727, file: !206, line: 2828, baseType: !513, size: 64, offset: 960)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !727, file: !206, line: 2829, baseType: !513, size: 64, offset: 1024)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !727, file: !206, line: 2830, baseType: !513, size: 64, offset: 1088)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !727, file: !206, line: 2831, baseType: !513, size: 64, offset: 1152)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !516, file: !206, line: 3389, baseType: !736, size: 1024)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !206, line: 2850, size: 1024, elements: !737)
!737 = !{!738, !739, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !736, file: !206, line: 2851, baseType: !668, size: 960)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !736, file: !206, line: 2852, baseType: !506, size: 32, offset: 960)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !736, file: !206, line: 2853, baseType: !506, size: 32, offset: 992)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !516, file: !206, line: 3390, baseType: !742, size: 1024)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !206, line: 2857, size: 1024, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !742, file: !206, line: 2858, baseType: !668, size: 960)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !742, file: !206, line: 2859, baseType: !709, size: 64, offset: 960)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !516, file: !206, line: 3391, baseType: !747, size: 960)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !206, line: 2862, size: 960, elements: !748)
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !747, file: !206, line: 2863, baseType: !668, size: 960)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !516, file: !206, line: 3392, baseType: !751, size: 1472)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !206, line: 3304, size: 1472, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !751, file: !206, line: 3305, baseType: !676, size: 1472)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !516, file: !206, line: 3393, baseType: !755, size: 1792)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !206, line: 3248, size: 1792, elements: !756)
!756 = !{!757, !758, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !755, file: !206, line: 3249, baseType: !676, size: 1472)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !755, file: !206, line: 3251, baseType: !759, size: 64, offset: 1472)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !761, line: 463, size: 1152, elements: !762)
!761 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!762 = !{!763, !766, !1083, !1084, !1256, !1259, !1260, !1261, !1262, !1263, !1264, !1288, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !760, file: !761, line: 464, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !761, line: 464, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !760, file: !761, line: 467, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !190, line: 374, size: 640, elements: !769)
!769 = !{!770, !1058, !1059, !1072, !1073, !1074, !1075, !1076, !1077, !1079, !1081, !1082}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !768, file: !190, line: 377, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !514, line: 111, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !190, line: 217, size: 832, elements: !774)
!774 = !{!775, !1021, !1022, !1023, !1026, !1032, !1033, !1034, !1052, !1053, !1054, !1055, !1056, !1057}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !773, file: !190, line: 219, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !190, line: 151, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !190, line: 151, size: 128, elements: !779)
!779 = !{!780}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !778, file: !190, line: 151, baseType: !781, size: 128)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !190, line: 150, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !190, line: 150, size: 128, elements: !783)
!783 = !{!784, !785, !786}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !782, file: !190, line: 150, baseType: !7, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !782, file: !190, line: 150, baseType: !7, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !782, file: !190, line: 150, baseType: !787, size: 64, offset: 64)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 64, elements: !596)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !514, line: 108, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !190, line: 122, size: 512, elements: !791)
!791 = !{!792, !793, !794, !1013, !1014, !1015, !1016, !1017, !1018, !1019}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !790, file: !190, line: 124, baseType: !772, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !790, file: !190, line: 125, baseType: !772, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !790, file: !190, line: 131, baseType: !795, size: 64, offset: 128)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !190, line: 128, size: 64, elements: !796)
!796 = !{!797, !1012}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !795, file: !190, line: 129, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !514, line: 66, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !433, line: 143, size: 192, elements: !801)
!801 = !{!802, !1010, !1011}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !800, file: !433, line: 145, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !514, line: 69, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !433, line: 136, size: 192, elements: !806)
!806 = !{!807, !1008, !1009}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !805, file: !433, line: 137, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !514, line: 58, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !433, line: 737, size: 768, elements: !811)
!811 = !{!812, !829, !863, !869, !874, !879, !886, !892, !898, !903, !917, !922, !928, !933, !943, !948, !966, !973, !980, !986, !991, !997, !1003}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !810, file: !433, line: 738, baseType: !813, size: 256)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !433, line: 271, size: 256, elements: !814)
!814 = !{!815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !813, file: !433, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !813, file: !433, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !813, file: !433, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !813, file: !433, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !813, file: !433, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !813, file: !433, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !813, file: !433, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !813, file: !433, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !813, file: !433, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !813, file: !433, line: 312, baseType: !7, size: 32, offset: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !813, file: !433, line: 316, baseType: !622, size: 32, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !813, file: !433, line: 319, baseType: !7, size: 32, offset: 96)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !813, file: !433, line: 323, baseType: !772, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !813, file: !433, line: 327, baseType: !513, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !810, file: !433, line: 739, baseType: !830, size: 448)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !433, line: 350, size: 448, elements: !831)
!831 = !{!832, !861}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !830, file: !433, line: 353, baseType: !833, size: 384)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !433, line: 333, size: 384, elements: !834)
!834 = !{!835, !836, !844}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !833, file: !433, line: 336, baseType: !813, size: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !833, file: !433, line: 343, baseType: !837, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !839, line: 37, size: 128, elements: !840)
!839 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !838, file: !839, line: 39, baseType: !837, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !838, file: !839, line: 40, baseType: !843, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !833, file: !433, line: 344, baseType: !845, size: 64, offset: 320)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !839, line: 45, size: 320, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !846, file: !839, line: 47, baseType: !845, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !846, file: !839, line: 48, baseType: !850, size: 256, offset: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !206, line: 1883, size: 256, elements: !851)
!851 = !{!852, !854, !855, !860}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !850, file: !206, line: 1884, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !850, file: !206, line: 1885, baseType: !853, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !850, file: !206, line: 1891, baseType: !856, size: 64, offset: 128)
!856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !206, line: 1891, size: 64, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !856, file: !206, line: 1891, baseType: !808, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !856, file: !206, line: 1891, baseType: !513, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !850, file: !206, line: 1892, baseType: !843, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !830, file: !433, line: 359, baseType: !862, size: 64, offset: 384)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 64, elements: !596)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !810, file: !433, line: 740, baseType: !864, size: 512)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !433, line: 365, size: 512, elements: !865)
!865 = !{!866, !867, !868}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !864, file: !433, line: 368, baseType: !833, size: 384)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !864, file: !433, line: 373, baseType: !513, size: 64, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !864, file: !433, line: 374, baseType: !513, size: 64, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !810, file: !433, line: 741, baseType: !870, size: 576)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !433, line: 380, size: 576, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !870, file: !433, line: 383, baseType: !864, size: 512)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !870, file: !433, line: 389, baseType: !862, size: 64, offset: 512)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !810, file: !433, line: 742, baseType: !875, size: 320)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !433, line: 395, size: 320, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !875, file: !433, line: 397, baseType: !813, size: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !875, file: !433, line: 400, baseType: !798, size: 64, offset: 256)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !810, file: !433, line: 743, baseType: !880, size: 448)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !433, line: 406, size: 448, elements: !881)
!881 = !{!882, !883, !884, !885}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !880, file: !433, line: 408, baseType: !813, size: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !880, file: !433, line: 412, baseType: !513, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !880, file: !433, line: 420, baseType: !513, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !880, file: !433, line: 423, baseType: !798, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !810, file: !433, line: 744, baseType: !887, size: 384)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !433, line: 429, size: 384, elements: !888)
!888 = !{!889, !890, !891}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !887, file: !433, line: 431, baseType: !813, size: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !887, file: !433, line: 434, baseType: !513, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !887, file: !433, line: 437, baseType: !798, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !810, file: !433, line: 745, baseType: !893, size: 384)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !433, line: 443, size: 384, elements: !894)
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !893, file: !433, line: 445, baseType: !813, size: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !893, file: !433, line: 449, baseType: !513, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !893, file: !433, line: 453, baseType: !798, size: 64, offset: 320)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !810, file: !433, line: 746, baseType: !899, size: 320)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !433, line: 459, size: 320, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !899, file: !433, line: 461, baseType: !813, size: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !899, file: !433, line: 464, baseType: !513, size: 64, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !810, file: !433, line: 747, baseType: !904, size: 768)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !433, line: 469, size: 768, elements: !905)
!905 = !{!906, !907, !908, !909, !910}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !904, file: !433, line: 471, baseType: !813, size: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !904, file: !433, line: 474, baseType: !7, size: 32, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !904, file: !433, line: 475, baseType: !7, size: 32, offset: 288)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !904, file: !433, line: 478, baseType: !513, size: 64, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !904, file: !433, line: 481, baseType: !911, size: 384, offset: 384)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !912, size: 384, elements: !596)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !206, line: 1917, size: 384, elements: !913)
!913 = !{!914, !915, !916}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !912, file: !206, line: 1920, baseType: !850, size: 256)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !912, file: !206, line: 1921, baseType: !513, size: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !912, file: !206, line: 1922, baseType: !622, size: 32, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !810, file: !433, line: 748, baseType: !918, size: 320)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !433, line: 487, size: 320, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !918, file: !433, line: 490, baseType: !813, size: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !918, file: !433, line: 494, baseType: !506, size: 32, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !810, file: !433, line: 749, baseType: !923, size: 384)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !433, line: 500, size: 384, elements: !924)
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !923, file: !433, line: 502, baseType: !813, size: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !923, file: !433, line: 506, baseType: !798, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !923, file: !433, line: 510, baseType: !798, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !810, file: !433, line: 750, baseType: !929, size: 320)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !433, line: 529, size: 320, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !929, file: !433, line: 531, baseType: !813, size: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !929, file: !433, line: 540, baseType: !798, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !810, file: !433, line: 751, baseType: !934, size: 704)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !433, line: 546, size: 704, elements: !935)
!935 = !{!936, !937, !938, !939, !940, !941, !942}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !934, file: !433, line: 549, baseType: !864, size: 512)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !934, file: !433, line: 553, baseType: !511, size: 64, offset: 512)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !934, file: !433, line: 557, baseType: !505, size: 8, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !934, file: !433, line: 558, baseType: !505, size: 8, offset: 584)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !934, file: !433, line: 559, baseType: !505, size: 8, offset: 592)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !934, file: !433, line: 560, baseType: !505, size: 8, offset: 600)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !934, file: !433, line: 566, baseType: !862, size: 64, offset: 640)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !810, file: !433, line: 752, baseType: !944, size: 384)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !433, line: 571, size: 384, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !944, file: !433, line: 573, baseType: !875, size: 320)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !944, file: !433, line: 577, baseType: !513, size: 64, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !810, file: !433, line: 753, baseType: !949, size: 576)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !433, line: 600, size: 576, elements: !950)
!950 = !{!951, !952, !953, !956, !965}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !949, file: !433, line: 602, baseType: !875, size: 320)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !949, file: !433, line: 605, baseType: !513, size: 64, offset: 320)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !949, file: !433, line: 609, baseType: !954, size: 64, offset: 384)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !955, line: 46, baseType: !567)
!955 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!956 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !949, file: !433, line: 612, baseType: !957, size: 64, offset: 448)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !433, line: 581, size: 320, elements: !959)
!959 = !{!960, !961, !962, !963, !964}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !958, file: !433, line: 583, baseType: !238, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !958, file: !433, line: 586, baseType: !513, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !958, file: !433, line: 589, baseType: !513, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !958, file: !433, line: 592, baseType: !513, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !958, file: !433, line: 595, baseType: !513, size: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !949, file: !433, line: 616, baseType: !798, size: 64, offset: 512)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !810, file: !433, line: 754, baseType: !967, size: 512)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !433, line: 622, size: 512, elements: !968)
!968 = !{!969, !970, !971, !972}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !967, file: !433, line: 624, baseType: !875, size: 320)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !967, file: !433, line: 628, baseType: !513, size: 64, offset: 320)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !967, file: !433, line: 632, baseType: !513, size: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !967, file: !433, line: 636, baseType: !513, size: 64, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !810, file: !433, line: 755, baseType: !974, size: 704)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !433, line: 642, size: 704, elements: !975)
!975 = !{!976, !977, !978, !979}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !974, file: !433, line: 644, baseType: !967, size: 512)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !974, file: !433, line: 648, baseType: !513, size: 64, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !974, file: !433, line: 652, baseType: !513, size: 64, offset: 576)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !974, file: !433, line: 653, baseType: !513, size: 64, offset: 640)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !810, file: !433, line: 756, baseType: !981, size: 448)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !433, line: 663, size: 448, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !981, file: !433, line: 665, baseType: !875, size: 320)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !981, file: !433, line: 668, baseType: !513, size: 64, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !981, file: !433, line: 673, baseType: !513, size: 64, offset: 384)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !810, file: !433, line: 757, baseType: !987, size: 384)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !433, line: 694, size: 384, elements: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !987, file: !433, line: 696, baseType: !875, size: 320)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !987, file: !433, line: 699, baseType: !513, size: 64, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !810, file: !433, line: 758, baseType: !992, size: 384)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !433, line: 681, size: 384, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !992, file: !433, line: 683, baseType: !813, size: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !992, file: !433, line: 686, baseType: !513, size: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !992, file: !433, line: 689, baseType: !513, size: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !810, file: !433, line: 759, baseType: !998, size: 384)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !433, line: 707, size: 384, elements: !999)
!999 = !{!1000, !1001, !1002}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !998, file: !433, line: 709, baseType: !813, size: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !998, file: !433, line: 712, baseType: !513, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !998, file: !433, line: 712, baseType: !513, size: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !810, file: !433, line: 760, baseType: !1004, size: 320)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !433, line: 718, size: 320, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1004, file: !433, line: 720, baseType: !813, size: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1004, file: !433, line: 723, baseType: !513, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !805, file: !433, line: 138, baseType: !804, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !805, file: !433, line: 139, baseType: !804, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !800, file: !433, line: 146, baseType: !803, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !800, file: !433, line: 152, baseType: !798, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !795, file: !190, line: 130, baseType: !672, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !790, file: !190, line: 134, baseType: !510, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !790, file: !190, line: 137, baseType: !513, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !790, file: !190, line: 138, baseType: !622, size: 32, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !790, file: !190, line: 142, baseType: !7, size: 32, offset: 352)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !190, line: 144, baseType: !506, size: 32, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !790, file: !190, line: 145, baseType: !506, size: 32, offset: 416)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !790, file: !190, line: 146, baseType: !1020, size: 64, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !190, line: 119, baseType: !569)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !773, file: !190, line: 220, baseType: !776, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !773, file: !190, line: 223, baseType: !510, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !773, file: !190, line: 226, baseType: !1024, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !190, line: 185, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !773, file: !190, line: 229, baseType: !1027, size: 128, offset: 256)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1028, size: 128, elements: !1030)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !190, line: 229, flags: DIFlagFwdDecl)
!1030 = !{!1031}
!1031 = !DISubrange(count: 2)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !773, file: !190, line: 232, baseType: !772, size: 64, offset: 384)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !773, file: !190, line: 233, baseType: !772, size: 64, offset: 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !773, file: !190, line: 238, baseType: !1035, size: 64, offset: 512)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !190, line: 235, size: 64, elements: !1036)
!1036 = !{!1037, !1043}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1035, file: !190, line: 236, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !190, line: 273, size: 128, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1039, file: !190, line: 275, baseType: !798, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1039, file: !190, line: 278, baseType: !798, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1035, file: !190, line: 237, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !190, line: 259, size: 320, elements: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1051}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1045, file: !190, line: 261, baseType: !672, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1045, file: !190, line: 262, baseType: !672, size: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1045, file: !190, line: 266, baseType: !672, size: 64, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1045, file: !190, line: 267, baseType: !672, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1045, file: !190, line: 270, baseType: !506, size: 32, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !773, file: !190, line: 241, baseType: !1020, size: 64, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !773, file: !190, line: 244, baseType: !506, size: 32, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !773, file: !190, line: 247, baseType: !506, size: 32, offset: 672)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !773, file: !190, line: 250, baseType: !506, size: 32, offset: 704)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !773, file: !190, line: 253, baseType: !506, size: 32, offset: 736)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !773, file: !190, line: 256, baseType: !506, size: 32, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !768, file: !190, line: 378, baseType: !771, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !768, file: !190, line: 381, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !190, line: 282, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !190, line: 282, size: 128, elements: !1063)
!1063 = !{!1064}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1062, file: !190, line: 282, baseType: !1065, size: 128)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !190, line: 281, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !190, line: 281, size: 128, elements: !1067)
!1067 = !{!1068, !1069, !1070}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1066, file: !190, line: 281, baseType: !7, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1066, file: !190, line: 281, baseType: !7, size: 32, offset: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1066, file: !190, line: 281, baseType: !1071, size: 64, offset: 64)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 64, elements: !596)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !768, file: !190, line: 384, baseType: !506, size: 32, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !768, file: !190, line: 387, baseType: !506, size: 32, offset: 224)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !768, file: !190, line: 390, baseType: !506, size: 32, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !768, file: !190, line: 394, baseType: !1060, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !768, file: !190, line: 396, baseType: !189, size: 32, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !768, file: !190, line: 399, baseType: !1078, size: 64, offset: 416)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 64, elements: !1030)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !768, file: !190, line: 402, baseType: !1080, size: 64, offset: 480)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1030)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !768, file: !190, line: 406, baseType: !506, size: 32, offset: 544)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !768, file: !190, line: 409, baseType: !506, size: 32, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !760, file: !761, line: 470, baseType: !799, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !760, file: !761, line: 473, baseType: !1085, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !711, line: 39, size: 1152, elements: !1087)
!1087 = !{!1088, !1138, !1151, !1163, !1164, !1233, !1234, !1238, !1239, !1240, !1241, !1242}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1086, file: !711, line: 41, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1090, line: 144, baseType: !1091)
!1090 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1090, line: 100, size: 896, elements: !1093)
!1093 = !{!1094, !1102, !1107, !1112, !1114, !1115, !1116, !1117, !1118, !1119, !1124, !1126, !1127, !1132, !1137}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1092, file: !1090, line: 102, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1090, line: 52, baseType: !1096)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1090, line: 47, baseType: !7)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1092, file: !1090, line: 105, baseType: !1103, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1090, line: 59, baseType: !1104)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!506, !1100, !1100}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1092, file: !1090, line: 108, baseType: !1108, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1090, line: 63, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !510}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1092, file: !1090, line: 111, baseType: !1113, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1092, file: !1090, line: 114, baseType: !954, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1092, file: !1090, line: 117, baseType: !954, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1092, file: !1090, line: 120, baseType: !954, size: 64, offset: 384)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1092, file: !1090, line: 124, baseType: !7, size: 32, offset: 448)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1092, file: !1090, line: 128, baseType: !7, size: 32, offset: 480)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1092, file: !1090, line: 131, baseType: !1120, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1090, line: 75, baseType: !1121)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!510, !954, !954}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1092, file: !1090, line: 132, baseType: !1125, size: 64, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1090, line: 78, baseType: !1109)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1092, file: !1090, line: 135, baseType: !510, size: 64, offset: 640)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1092, file: !1090, line: 136, baseType: !1128, size: 64, offset: 704)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1090, line: 82, baseType: !1129)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!510, !510, !954, !954}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1092, file: !1090, line: 137, baseType: !1133, size: 64, offset: 768)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1090, line: 83, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !510, !510}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1092, file: !1090, line: 141, baseType: !7, size: 32, offset: 832)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1086, file: !711, line: 48, baseType: !1139, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !433, line: 35, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !433, line: 35, size: 128, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1141, file: !433, line: 35, baseType: !1144, size: 128)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !433, line: 33, baseType: !1145)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !433, line: 33, size: 128, elements: !1146)
!1146 = !{!1147, !1148, !1149}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1145, file: !433, line: 33, baseType: !7, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1145, file: !433, line: 33, baseType: !7, size: 32, offset: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1145, file: !433, line: 33, baseType: !1150, size: 64, offset: 64)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 64, elements: !596)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1086, file: !711, line: 51, baseType: !1152, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !206, line: 183, baseType: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !206, line: 183, size: 128, elements: !1155)
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1154, file: !206, line: 183, baseType: !1157, size: 128)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !206, line: 182, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !206, line: 182, size: 128, elements: !1159)
!1159 = !{!1160, !1161, !1162}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1158, file: !206, line: 182, baseType: !7, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1158, file: !206, line: 182, baseType: !7, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1158, file: !206, line: 182, baseType: !862, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1086, file: !711, line: 54, baseType: !513, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1086, file: !711, line: 57, baseType: !1165, size: 128, offset: 256)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1166, line: 31, size: 128, elements: !1167)
!1166 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1167 = !{!1168, !1169, !1170, !1171, !1172, !1173, !1174}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1165, file: !1166, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1165, file: !1166, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1165, file: !1166, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1165, file: !1166, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1165, file: !1166, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1165, file: !1166, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1165, file: !1166, line: 56, baseType: !1175, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !514, line: 47, baseType: !1176)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1178, line: 75, size: 256, elements: !1179)
!1178 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1179 = !{!1180, !1192, !1193, !1194}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1177, file: !1178, line: 76, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1178, line: 68, baseType: !1183)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1178, line: 63, size: 320, elements: !1184)
!1184 = !{!1185, !1187, !1188, !1189}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1183, file: !1178, line: 64, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1183, file: !1178, line: 65, baseType: !1186, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1183, file: !1178, line: 66, baseType: !7, size: 32, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1183, file: !1178, line: 67, baseType: !1190, size: 128, offset: 192)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, size: 128, elements: !1030)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1178, line: 29, baseType: !567)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1177, file: !1178, line: 77, baseType: !1181, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1177, file: !1178, line: 78, baseType: !7, size: 32, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1177, file: !1178, line: 79, baseType: !1195, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1178, line: 49, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1178, line: 45, size: 832, elements: !1198)
!1198 = !{!1199, !1200, !1201}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1197, file: !1178, line: 46, baseType: !1186, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1197, file: !1178, line: 47, baseType: !1176, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1197, file: !1178, line: 48, baseType: !1202, size: 704, offset: 128)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1203, line: 164, size: 704, elements: !1204)
!1203 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1204 = !{!1205, !1206, !1216, !1217, !1218, !1219, !1220, !1221, !1225, !1229, !1230, !1231, !1232}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1202, file: !1203, line: 166, baseType: !569, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1202, file: !1203, line: 167, baseType: !1207, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1203, line: 157, size: 192, elements: !1209)
!1209 = !{!1210, !1211, !1212}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1208, file: !1203, line: 159, baseType: !508, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1208, file: !1203, line: 160, baseType: !1207, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1208, file: !1203, line: 161, baseType: !1213, size: 32, offset: 128)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 32, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 4)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1202, file: !1203, line: 168, baseType: !508, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1202, file: !1203, line: 169, baseType: !508, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1202, file: !1203, line: 170, baseType: !508, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1202, file: !1203, line: 171, baseType: !569, size: 64, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1202, file: !1203, line: 172, baseType: !506, size: 32, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1202, file: !1203, line: 176, baseType: !1222, size: 64, offset: 448)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1207, !510, !569}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1202, file: !1203, line: 177, baseType: !1226, size: 64, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !510, !1207}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1202, file: !1203, line: 178, baseType: !510, size: 64, offset: 576)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1202, file: !1203, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1202, file: !1203, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1202, file: !1203, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1086, file: !711, line: 60, baseType: !1165, size: 128, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1086, file: !711, line: 64, baseType: !1235, size: 64, offset: 512)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1237, line: 33, flags: DIFlagFwdDecl)
!1237 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1086, file: !711, line: 67, baseType: !513, size: 64, offset: 576)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1086, file: !711, line: 73, baseType: !1089, size: 64, offset: 640)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1086, file: !711, line: 77, baseType: !1175, size: 64, offset: 704)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1086, file: !711, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1086, file: !711, line: 82, baseType: !1243, size: 320, offset: 832)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !839, line: 62, size: 320, elements: !1244)
!1244 = !{!1245, !1251, !1252, !1253, !1254, !1255}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1243, file: !839, line: 63, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !839, line: 56, size: 128, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1247, file: !839, line: 57, baseType: !1246, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1247, file: !839, line: 58, baseType: !595, size: 8, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1243, file: !839, line: 64, baseType: !7, size: 32, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1243, file: !839, line: 66, baseType: !7, size: 32, offset: 96)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1243, file: !839, line: 68, baseType: !505, size: 8, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1243, file: !839, line: 70, baseType: !837, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1243, file: !839, line: 71, baseType: !845, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !760, file: !761, line: 476, baseType: !1257, size: 64, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !761, line: 476, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !760, file: !761, line: 479, baseType: !1089, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !760, file: !761, line: 484, baseType: !513, size: 64, offset: 384)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !760, file: !761, line: 488, baseType: !513, size: 64, offset: 448)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !760, file: !761, line: 493, baseType: !513, size: 64, offset: 512)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !760, file: !761, line: 496, baseType: !513, size: 64, offset: 576)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !760, file: !761, line: 501, baseType: !1265, size: 64, offset: 640)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !201, line: 2355, size: 576, elements: !1267)
!1267 = !{!1268, !1271, !1272, !1273, !1274, !1276, !1277, !1282, !1283, !1284, !1285, !1286, !1287}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1266, file: !201, line: 2356, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !201, line: 2356, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1266, file: !201, line: 2357, baseType: !511, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1266, file: !201, line: 2358, baseType: !506, size: 32, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1266, file: !201, line: 2359, baseType: !506, size: 32, offset: 160)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1266, file: !201, line: 2360, baseType: !1275, size: 128, offset: 192)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 128, elements: !1214)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1266, file: !201, line: 2364, baseType: !506, size: 32, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1266, file: !201, line: 2367, baseType: !1278, size: 128, offset: 384)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !201, line: 2349, size: 128, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1278, file: !201, line: 2351, baseType: !672, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1278, file: !201, line: 2352, baseType: !569, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1266, file: !201, line: 2371, baseType: !200, size: 32, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1266, file: !201, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1266, file: !201, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1266, file: !201, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1266, file: !201, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1266, file: !201, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !760, file: !761, line: 504, baseType: !1289, size: 64, offset: 704)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !761, line: 504, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !760, file: !761, line: 507, baseType: !1089, size: 64, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !760, file: !761, line: 510, baseType: !506, size: 32, offset: 832)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !760, file: !761, line: 513, baseType: !506, size: 32, offset: 864)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !760, file: !761, line: 516, baseType: !622, size: 32, offset: 896)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !760, file: !761, line: 519, baseType: !622, size: 32, offset: 928)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !760, file: !761, line: 522, baseType: !7, size: 32, offset: 960)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !760, file: !761, line: 523, baseType: !7, size: 32, offset: 992)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !760, file: !761, line: 528, baseType: !511, size: 64, offset: 1024)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !760, file: !761, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !760, file: !761, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !760, file: !761, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !760, file: !761, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !760, file: !761, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !760, file: !761, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !760, file: !761, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !760, file: !761, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !760, file: !761, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !760, file: !761, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !760, file: !761, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !760, file: !761, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !760, file: !761, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !760, file: !761, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !760, file: !761, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !760, file: !761, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !755, file: !206, line: 3254, baseType: !513, size: 64, offset: 1536)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !755, file: !206, line: 3257, baseType: !513, size: 64, offset: 1600)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !755, file: !206, line: 3258, baseType: !513, size: 64, offset: 1664)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !755, file: !206, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !755, file: !206, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !755, file: !206, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !755, file: !206, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !755, file: !206, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !755, file: !206, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !755, file: !206, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !755, file: !206, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !755, file: !206, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !755, file: !206, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !755, file: !206, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !755, file: !206, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !755, file: !206, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !755, file: !206, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !755, file: !206, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !755, file: !206, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !755, file: !206, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !755, file: !206, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !516, file: !206, line: 3394, baseType: !1337, size: 1344)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !206, line: 2279, size: 1344, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1364, !1365, !1366, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1337, file: !206, line: 2280, baseType: !552, size: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1337, file: !206, line: 2281, baseType: !513, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1337, file: !206, line: 2282, baseType: !513, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1337, file: !206, line: 2283, baseType: !513, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1337, file: !206, line: 2284, baseType: !513, size: 64, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1337, file: !206, line: 2285, baseType: !7, size: 32, offset: 448)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1337, file: !206, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1337, file: !206, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1337, file: !206, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1337, file: !206, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1337, file: !206, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1337, file: !206, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1337, file: !206, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1337, file: !206, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1337, file: !206, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1337, file: !206, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1337, file: !206, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1337, file: !206, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1337, file: !206, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1337, file: !206, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1337, file: !206, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1337, file: !206, line: 2305, baseType: !7, size: 32, offset: 512)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1337, file: !206, line: 2306, baseType: !1362, size: 32, offset: 544)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1363, line: 31, baseType: !506)
!1363 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1337, file: !206, line: 2307, baseType: !513, size: 64, offset: 576)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1337, file: !206, line: 2308, baseType: !513, size: 64, offset: 640)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1337, file: !206, line: 2314, baseType: !1367, size: 64, offset: 704)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !206, line: 2309, size: 64, elements: !1368)
!1368 = !{!1369, !1370, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1367, file: !206, line: 2310, baseType: !506, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1367, file: !206, line: 2311, baseType: !511, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1367, file: !206, line: 2312, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !206, line: 2277, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1337, file: !206, line: 2315, baseType: !513, size: 64, offset: 768)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1337, file: !206, line: 2316, baseType: !513, size: 64, offset: 832)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1337, file: !206, line: 2317, baseType: !513, size: 64, offset: 896)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1337, file: !206, line: 2318, baseType: !513, size: 64, offset: 960)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1337, file: !206, line: 2319, baseType: !513, size: 64, offset: 1024)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1337, file: !206, line: 2320, baseType: !513, size: 64, offset: 1088)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1337, file: !206, line: 2321, baseType: !513, size: 64, offset: 1152)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1337, file: !206, line: 2322, baseType: !513, size: 64, offset: 1216)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1337, file: !206, line: 2324, baseType: !1383, size: 64, offset: 1280)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !206, line: 2324, flags: DIFlagFwdDecl)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !516, file: !206, line: 3395, baseType: !1386, size: 320)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !206, line: 1469, size: 320, elements: !1387)
!1387 = !{!1388, !1389, !1390}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1386, file: !206, line: 1470, baseType: !552, size: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1386, file: !206, line: 1471, baseType: !513, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1386, file: !206, line: 1472, baseType: !513, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !516, file: !206, line: 3396, baseType: !1392, size: 320)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !206, line: 1482, size: 320, elements: !1393)
!1393 = !{!1394, !1395, !1396}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1392, file: !206, line: 1483, baseType: !552, size: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1392, file: !206, line: 1484, baseType: !506, size: 32, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1392, file: !206, line: 1485, baseType: !862, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !516, file: !206, line: 3397, baseType: !1398, size: 384)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !206, line: 1829, size: 384, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1403}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1398, file: !206, line: 1830, baseType: !552, size: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1398, file: !206, line: 1831, baseType: !622, size: 32, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1398, file: !206, line: 1832, baseType: !513, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1398, file: !206, line: 1835, baseType: !862, size: 64, offset: 320)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !516, file: !206, line: 3398, baseType: !1405, size: 704)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !206, line: 1898, size: 704, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1416}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1405, file: !206, line: 1899, baseType: !552, size: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1405, file: !206, line: 1902, baseType: !513, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1405, file: !206, line: 1905, baseType: !808, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1405, file: !206, line: 1908, baseType: !7, size: 32, offset: 320)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1405, file: !206, line: 1911, baseType: !1412, size: 64, offset: 384)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !711, line: 117, size: 128, elements: !1414)
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1413, file: !711, line: 120, baseType: !1165, size: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1405, file: !206, line: 1914, baseType: !850, size: 256, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !516, file: !206, line: 3399, baseType: !1418, size: 704)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !206, line: 2008, size: 704, elements: !1419)
!1419 = !{!1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1418, file: !206, line: 2009, baseType: !552, size: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1418, file: !206, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1418, file: !206, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1418, file: !206, line: 2014, baseType: !622, size: 32, offset: 224)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1418, file: !206, line: 2016, baseType: !513, size: 64, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1418, file: !206, line: 2017, baseType: !1152, size: 64, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1418, file: !206, line: 2019, baseType: !513, size: 64, offset: 384)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1418, file: !206, line: 2020, baseType: !513, size: 64, offset: 448)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1418, file: !206, line: 2021, baseType: !513, size: 64, offset: 512)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1418, file: !206, line: 2022, baseType: !513, size: 64, offset: 576)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1418, file: !206, line: 2023, baseType: !513, size: 64, offset: 640)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !516, file: !206, line: 3400, baseType: !1432, size: 832)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !206, line: 2430, size: 832, elements: !1433)
!1433 = !{!1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1432, file: !206, line: 2431, baseType: !552, size: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1432, file: !206, line: 2433, baseType: !513, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1432, file: !206, line: 2434, baseType: !513, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1432, file: !206, line: 2435, baseType: !513, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1432, file: !206, line: 2436, baseType: !513, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1432, file: !206, line: 2437, baseType: !1152, size: 64, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1432, file: !206, line: 2438, baseType: !513, size: 64, offset: 512)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1432, file: !206, line: 2440, baseType: !513, size: 64, offset: 576)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1432, file: !206, line: 2441, baseType: !513, size: 64, offset: 640)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1432, file: !206, line: 2443, baseType: !1444, size: 128, offset: 704)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !206, line: 182, baseType: !1445)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !206, line: 182, size: 128, elements: !1446)
!1446 = !{!1447}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1445, file: !206, line: 182, baseType: !1157, size: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !516, file: !206, line: 3401, baseType: !1449, size: 320)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !206, line: 3327, size: 320, elements: !1450)
!1450 = !{!1451, !1452, !1459}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1449, file: !206, line: 3329, baseType: !552, size: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1449, file: !206, line: 3330, baseType: !1453, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !206, line: 3320, size: 192, elements: !1455)
!1455 = !{!1456, !1457, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1454, file: !206, line: 3322, baseType: !1453, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1454, file: !206, line: 3323, baseType: !1453, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1454, file: !206, line: 3324, baseType: !513, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1449, file: !206, line: 3331, baseType: !1453, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !516, file: !206, line: 3402, baseType: !1461, size: 256)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !206, line: 1540, size: 256, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1461, file: !206, line: 1541, baseType: !552, size: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1461, file: !206, line: 1542, baseType: !1465, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !206, line: 1538, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !206, line: 1538, size: 192, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1467, file: !206, line: 1538, baseType: !1470, size: 192)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !206, line: 1537, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !206, line: 1537, size: 192, elements: !1472)
!1472 = !{!1473, !1474, !1475}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1471, file: !206, line: 1537, baseType: !7, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1471, file: !206, line: 1537, baseType: !7, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1471, file: !206, line: 1537, baseType: !1476, size: 128, offset: 64)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1477, size: 128, elements: !596)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !206, line: 1535, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !206, line: 1532, size: 128, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1478, file: !206, line: 1533, baseType: !513, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1478, file: !206, line: 1534, baseType: !513, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !516, file: !206, line: 3403, baseType: !1483, size: 512)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !206, line: 1938, size: 512, elements: !1484)
!1484 = !{!1485, !1486, !1487, !1488, !1494, !1495, !1496}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1483, file: !206, line: 1939, baseType: !552, size: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1483, file: !206, line: 1940, baseType: !622, size: 32, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1483, file: !206, line: 1941, baseType: !205, size: 32, offset: 224)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1483, file: !206, line: 1946, baseType: !1489, size: 32, offset: 256)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !206, line: 1942, size: 32, elements: !1490)
!1490 = !{!1491, !1492, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1489, file: !206, line: 1943, baseType: !224, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1489, file: !206, line: 1944, baseType: !231, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1489, file: !206, line: 1945, baseType: !238, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1483, file: !206, line: 1950, baseType: !798, size: 64, offset: 320)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1483, file: !206, line: 1951, baseType: !798, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1483, file: !206, line: 1953, baseType: !862, size: 64, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !516, file: !206, line: 3404, baseType: !1498, size: 1664)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !206, line: 3337, size: 1664, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1498, file: !206, line: 3338, baseType: !552, size: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1498, file: !206, line: 3341, baseType: !1502, size: 1472, offset: 192)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1503, line: 410, size: 1472, elements: !1504)
!1503 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1502, file: !1503, line: 412, baseType: !506, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1502, file: !1503, line: 413, baseType: !506, size: 32, offset: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1502, file: !1503, line: 414, baseType: !506, size: 32, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1502, file: !1503, line: 415, baseType: !506, size: 32, offset: 96)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1502, file: !1503, line: 416, baseType: !506, size: 32, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1502, file: !1503, line: 417, baseType: !506, size: 32, offset: 160)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1502, file: !1503, line: 418, baseType: !505, size: 8, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1502, file: !1503, line: 419, baseType: !505, size: 8, offset: 200)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1502, file: !1503, line: 420, baseType: !1514, size: 8, offset: 208)
!1514 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1502, file: !1503, line: 421, baseType: !1514, size: 8, offset: 216)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1502, file: !1503, line: 422, baseType: !1514, size: 8, offset: 224)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1502, file: !1503, line: 423, baseType: !1514, size: 8, offset: 232)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1502, file: !1503, line: 424, baseType: !1514, size: 8, offset: 240)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1502, file: !1503, line: 425, baseType: !1514, size: 8, offset: 248)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1502, file: !1503, line: 426, baseType: !1514, size: 8, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1502, file: !1503, line: 427, baseType: !1514, size: 8, offset: 264)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1502, file: !1503, line: 428, baseType: !1514, size: 8, offset: 272)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1502, file: !1503, line: 429, baseType: !1514, size: 8, offset: 280)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1502, file: !1503, line: 430, baseType: !1514, size: 8, offset: 288)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1502, file: !1503, line: 431, baseType: !1514, size: 8, offset: 296)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1502, file: !1503, line: 432, baseType: !1514, size: 8, offset: 304)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1502, file: !1503, line: 433, baseType: !1514, size: 8, offset: 312)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1502, file: !1503, line: 434, baseType: !1514, size: 8, offset: 320)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1502, file: !1503, line: 435, baseType: !1514, size: 8, offset: 328)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1502, file: !1503, line: 436, baseType: !1514, size: 8, offset: 336)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1502, file: !1503, line: 437, baseType: !1514, size: 8, offset: 344)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1502, file: !1503, line: 438, baseType: !1514, size: 8, offset: 352)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1502, file: !1503, line: 439, baseType: !1514, size: 8, offset: 360)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1502, file: !1503, line: 440, baseType: !1514, size: 8, offset: 368)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1502, file: !1503, line: 441, baseType: !1514, size: 8, offset: 376)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1502, file: !1503, line: 442, baseType: !1514, size: 8, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1502, file: !1503, line: 443, baseType: !1514, size: 8, offset: 392)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1502, file: !1503, line: 444, baseType: !1514, size: 8, offset: 400)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1502, file: !1503, line: 445, baseType: !1514, size: 8, offset: 408)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1502, file: !1503, line: 446, baseType: !1514, size: 8, offset: 416)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1502, file: !1503, line: 447, baseType: !1514, size: 8, offset: 424)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1502, file: !1503, line: 448, baseType: !1514, size: 8, offset: 432)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1502, file: !1503, line: 449, baseType: !1514, size: 8, offset: 440)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1502, file: !1503, line: 450, baseType: !1514, size: 8, offset: 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1502, file: !1503, line: 451, baseType: !1514, size: 8, offset: 456)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1502, file: !1503, line: 452, baseType: !1514, size: 8, offset: 464)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1502, file: !1503, line: 453, baseType: !1514, size: 8, offset: 472)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1502, file: !1503, line: 454, baseType: !1514, size: 8, offset: 480)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1502, file: !1503, line: 455, baseType: !1514, size: 8, offset: 488)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1502, file: !1503, line: 456, baseType: !1514, size: 8, offset: 496)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1502, file: !1503, line: 457, baseType: !1514, size: 8, offset: 504)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1502, file: !1503, line: 458, baseType: !1514, size: 8, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1502, file: !1503, line: 459, baseType: !1514, size: 8, offset: 520)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1502, file: !1503, line: 460, baseType: !1514, size: 8, offset: 528)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1502, file: !1503, line: 461, baseType: !1514, size: 8, offset: 536)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1502, file: !1503, line: 462, baseType: !1514, size: 8, offset: 544)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1502, file: !1503, line: 463, baseType: !1514, size: 8, offset: 552)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1502, file: !1503, line: 464, baseType: !1514, size: 8, offset: 560)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1502, file: !1503, line: 465, baseType: !1514, size: 8, offset: 568)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1502, file: !1503, line: 466, baseType: !1514, size: 8, offset: 576)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1502, file: !1503, line: 467, baseType: !1514, size: 8, offset: 584)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1502, file: !1503, line: 468, baseType: !1514, size: 8, offset: 592)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1502, file: !1503, line: 469, baseType: !1514, size: 8, offset: 600)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1502, file: !1503, line: 470, baseType: !1514, size: 8, offset: 608)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1502, file: !1503, line: 471, baseType: !1514, size: 8, offset: 616)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1502, file: !1503, line: 472, baseType: !1514, size: 8, offset: 624)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1502, file: !1503, line: 473, baseType: !1514, size: 8, offset: 632)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1502, file: !1503, line: 474, baseType: !1514, size: 8, offset: 640)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1502, file: !1503, line: 475, baseType: !1514, size: 8, offset: 648)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1502, file: !1503, line: 476, baseType: !1514, size: 8, offset: 656)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1502, file: !1503, line: 477, baseType: !1514, size: 8, offset: 664)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1502, file: !1503, line: 478, baseType: !1514, size: 8, offset: 672)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1502, file: !1503, line: 479, baseType: !1514, size: 8, offset: 680)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1502, file: !1503, line: 480, baseType: !1514, size: 8, offset: 688)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1502, file: !1503, line: 481, baseType: !1514, size: 8, offset: 696)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1502, file: !1503, line: 482, baseType: !1514, size: 8, offset: 704)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1502, file: !1503, line: 483, baseType: !1514, size: 8, offset: 712)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1502, file: !1503, line: 484, baseType: !1514, size: 8, offset: 720)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1502, file: !1503, line: 485, baseType: !1514, size: 8, offset: 728)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1502, file: !1503, line: 486, baseType: !1514, size: 8, offset: 736)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1502, file: !1503, line: 487, baseType: !1514, size: 8, offset: 744)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1502, file: !1503, line: 488, baseType: !1514, size: 8, offset: 752)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1502, file: !1503, line: 489, baseType: !1514, size: 8, offset: 760)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1502, file: !1503, line: 490, baseType: !1514, size: 8, offset: 768)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1502, file: !1503, line: 491, baseType: !1514, size: 8, offset: 776)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1502, file: !1503, line: 492, baseType: !1514, size: 8, offset: 784)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1502, file: !1503, line: 493, baseType: !1514, size: 8, offset: 792)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1502, file: !1503, line: 494, baseType: !1514, size: 8, offset: 800)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1502, file: !1503, line: 495, baseType: !1514, size: 8, offset: 808)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1502, file: !1503, line: 496, baseType: !1514, size: 8, offset: 816)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1502, file: !1503, line: 497, baseType: !1514, size: 8, offset: 824)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1502, file: !1503, line: 498, baseType: !1514, size: 8, offset: 832)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1502, file: !1503, line: 499, baseType: !1514, size: 8, offset: 840)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1502, file: !1503, line: 500, baseType: !1514, size: 8, offset: 848)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1502, file: !1503, line: 501, baseType: !1514, size: 8, offset: 856)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1502, file: !1503, line: 502, baseType: !1514, size: 8, offset: 864)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1502, file: !1503, line: 503, baseType: !1514, size: 8, offset: 872)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1502, file: !1503, line: 504, baseType: !1514, size: 8, offset: 880)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1502, file: !1503, line: 505, baseType: !1514, size: 8, offset: 888)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1502, file: !1503, line: 506, baseType: !1514, size: 8, offset: 896)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1502, file: !1503, line: 507, baseType: !1514, size: 8, offset: 904)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1502, file: !1503, line: 508, baseType: !1514, size: 8, offset: 912)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1502, file: !1503, line: 509, baseType: !1514, size: 8, offset: 920)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1502, file: !1503, line: 510, baseType: !1514, size: 8, offset: 928)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1502, file: !1503, line: 511, baseType: !1514, size: 8, offset: 936)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1502, file: !1503, line: 512, baseType: !1514, size: 8, offset: 944)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1502, file: !1503, line: 513, baseType: !1514, size: 8, offset: 952)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1502, file: !1503, line: 514, baseType: !1514, size: 8, offset: 960)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1502, file: !1503, line: 515, baseType: !1514, size: 8, offset: 968)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1502, file: !1503, line: 516, baseType: !1514, size: 8, offset: 976)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1502, file: !1503, line: 517, baseType: !1514, size: 8, offset: 984)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1502, file: !1503, line: 518, baseType: !1514, size: 8, offset: 992)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1502, file: !1503, line: 519, baseType: !1514, size: 8, offset: 1000)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1502, file: !1503, line: 520, baseType: !1514, size: 8, offset: 1008)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1502, file: !1503, line: 521, baseType: !1514, size: 8, offset: 1016)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1502, file: !1503, line: 522, baseType: !1514, size: 8, offset: 1024)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1502, file: !1503, line: 523, baseType: !1514, size: 8, offset: 1032)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1502, file: !1503, line: 524, baseType: !1514, size: 8, offset: 1040)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1502, file: !1503, line: 525, baseType: !1514, size: 8, offset: 1048)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1502, file: !1503, line: 526, baseType: !1514, size: 8, offset: 1056)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1502, file: !1503, line: 527, baseType: !1514, size: 8, offset: 1064)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1502, file: !1503, line: 528, baseType: !1514, size: 8, offset: 1072)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1502, file: !1503, line: 529, baseType: !1514, size: 8, offset: 1080)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1502, file: !1503, line: 530, baseType: !1514, size: 8, offset: 1088)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1502, file: !1503, line: 531, baseType: !1514, size: 8, offset: 1096)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1502, file: !1503, line: 532, baseType: !1514, size: 8, offset: 1104)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1502, file: !1503, line: 533, baseType: !1514, size: 8, offset: 1112)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1502, file: !1503, line: 534, baseType: !1514, size: 8, offset: 1120)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1502, file: !1503, line: 535, baseType: !1514, size: 8, offset: 1128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1502, file: !1503, line: 536, baseType: !1514, size: 8, offset: 1136)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1502, file: !1503, line: 537, baseType: !1514, size: 8, offset: 1144)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1502, file: !1503, line: 538, baseType: !1514, size: 8, offset: 1152)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1502, file: !1503, line: 539, baseType: !1514, size: 8, offset: 1160)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1502, file: !1503, line: 540, baseType: !1514, size: 8, offset: 1168)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1502, file: !1503, line: 541, baseType: !1514, size: 8, offset: 1176)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1502, file: !1503, line: 542, baseType: !1514, size: 8, offset: 1184)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1502, file: !1503, line: 543, baseType: !1514, size: 8, offset: 1192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1502, file: !1503, line: 544, baseType: !1514, size: 8, offset: 1200)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1502, file: !1503, line: 545, baseType: !1514, size: 8, offset: 1208)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1502, file: !1503, line: 546, baseType: !1514, size: 8, offset: 1216)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1502, file: !1503, line: 547, baseType: !1514, size: 8, offset: 1224)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1502, file: !1503, line: 548, baseType: !1514, size: 8, offset: 1232)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1502, file: !1503, line: 549, baseType: !1514, size: 8, offset: 1240)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1502, file: !1503, line: 550, baseType: !1514, size: 8, offset: 1248)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1502, file: !1503, line: 551, baseType: !1514, size: 8, offset: 1256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1502, file: !1503, line: 552, baseType: !1514, size: 8, offset: 1264)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1502, file: !1503, line: 553, baseType: !1514, size: 8, offset: 1272)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1502, file: !1503, line: 554, baseType: !1514, size: 8, offset: 1280)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1502, file: !1503, line: 555, baseType: !1514, size: 8, offset: 1288)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1502, file: !1503, line: 556, baseType: !1514, size: 8, offset: 1296)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1502, file: !1503, line: 557, baseType: !1514, size: 8, offset: 1304)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1502, file: !1503, line: 558, baseType: !1514, size: 8, offset: 1312)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1502, file: !1503, line: 559, baseType: !1514, size: 8, offset: 1320)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1502, file: !1503, line: 560, baseType: !1514, size: 8, offset: 1328)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1502, file: !1503, line: 561, baseType: !1514, size: 8, offset: 1336)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1502, file: !1503, line: 562, baseType: !1514, size: 8, offset: 1344)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1502, file: !1503, line: 563, baseType: !1514, size: 8, offset: 1352)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1502, file: !1503, line: 564, baseType: !1514, size: 8, offset: 1360)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1502, file: !1503, line: 565, baseType: !1514, size: 8, offset: 1368)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1502, file: !1503, line: 566, baseType: !1514, size: 8, offset: 1376)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1502, file: !1503, line: 567, baseType: !1514, size: 8, offset: 1384)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1502, file: !1503, line: 568, baseType: !1514, size: 8, offset: 1392)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1502, file: !1503, line: 569, baseType: !1514, size: 8, offset: 1400)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1502, file: !1503, line: 570, baseType: !1514, size: 8, offset: 1408)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1502, file: !1503, line: 571, baseType: !1514, size: 8, offset: 1416)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1502, file: !1503, line: 572, baseType: !1514, size: 8, offset: 1424)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1502, file: !1503, line: 573, baseType: !1514, size: 8, offset: 1432)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1502, file: !1503, line: 574, baseType: !1514, size: 8, offset: 1440)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !516, file: !206, line: 3405, baseType: !1670, size: 384)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !206, line: 3352, size: 384, elements: !1671)
!1671 = !{!1672, !1673}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1670, file: !206, line: 3353, baseType: !552, size: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1670, file: !206, line: 3356, baseType: !1674, size: 192, offset: 192)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1503, line: 578, size: 192, elements: !1675)
!1675 = !{!1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1674, file: !1503, line: 580, baseType: !506, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1674, file: !1503, line: 581, baseType: !506, size: 32, offset: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1674, file: !1503, line: 582, baseType: !506, size: 32, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1674, file: !1503, line: 583, baseType: !506, size: 32, offset: 96)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1674, file: !1503, line: 584, baseType: !505, size: 8, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1674, file: !1503, line: 585, baseType: !505, size: 8, offset: 136)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1674, file: !1503, line: 586, baseType: !505, size: 8, offset: 144)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1674, file: !1503, line: 587, baseType: !505, size: 8, offset: 152)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1674, file: !1503, line: 588, baseType: !505, size: 8, offset: 160)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1674, file: !1503, line: 589, baseType: !505, size: 8, offset: 168)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1674, file: !1503, line: 590, baseType: !505, size: 8, offset: 176)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !810)
!1689 = !{!0}
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !1691)
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1690, file: !6, line: 158, baseType: !1693, size: 640)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1701, !1705, !1707, !1708, !1709, !1711, !1712, !1713, !1714, !1715}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1693, file: !6, line: 117, baseType: !5, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1693, file: !6, line: 121, baseType: !511, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1693, file: !6, line: 125, baseType: !1698, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!505}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1693, file: !6, line: 130, baseType: !1702, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!7}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1693, file: !6, line: 133, baseType: !1706, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1693, file: !6, line: 136, baseType: !1706, size: 64, offset: 320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1693, file: !6, line: 139, baseType: !506, size: 32, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1693, file: !6, line: 143, baseType: !1710, size: 32, offset: 416)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1693, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1693, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1693, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1693, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1693, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1716 = !{i32 2, !"Dwarf Version", i32 4}
!1717 = !{i32 2, !"Debug Info Version", i32 3}
!1718 = !{i32 1, !"wchar_size", i32 4}
!1719 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1720 = distinct !DISubprogram(name: "vprintf", scope: !1721, file: !1721, line: 39, type: !1722, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1732)
!1721 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!506, !1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !511)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1727)
!1727 = !{!1728, !1729, !1730, !1731}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1726, file: !3, baseType: !7, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1726, file: !3, baseType: !7, size: 32, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1726, file: !3, baseType: !510, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1726, file: !3, baseType: !510, size: 64, offset: 128)
!1732 = !{!1733, !1734}
!1733 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1720, file: !1721, line: 39, type: !1724)
!1734 = !DILocalVariable(name: "__arg", arg: 2, scope: !1720, file: !1721, line: 39, type: !1725)
!1735 = !DILocation(line: 0, scope: !1720)
!1736 = !DILocation(line: 41, column: 20, scope: !1720)
!1737 = !DILocation(line: 41, column: 10, scope: !1720)
!1738 = !DILocation(line: 41, column: 3, scope: !1720)
!1739 = distinct !DISubprogram(name: "getchar", scope: !1721, file: !1721, line: 47, type: !1740, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!506}
!1742 = !{}
!1743 = !DILocation(line: 49, column: 16, scope: !1739)
!1744 = !DILocation(line: 49, column: 10, scope: !1739)
!1745 = !DILocation(line: 49, column: 3, scope: !1739)
!1746 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1721, file: !1721, line: 56, type: !1747, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1800)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!506, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1751, line: 7, baseType: !1752)
!1751 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1753, line: 49, size: 1728, elements: !1754)
!1753 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1770, !1772, !1773, !1774, !1777, !1779, !1780, !1781, !1784, !1786, !1789, !1792, !1793, !1794, !1795, !1796}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1752, file: !1753, line: 51, baseType: !506, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1752, file: !1753, line: 54, baseType: !508, size: 64, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1752, file: !1753, line: 55, baseType: !508, size: 64, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1752, file: !1753, line: 56, baseType: !508, size: 64, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1752, file: !1753, line: 57, baseType: !508, size: 64, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1752, file: !1753, line: 58, baseType: !508, size: 64, offset: 320)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1752, file: !1753, line: 59, baseType: !508, size: 64, offset: 384)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1752, file: !1753, line: 60, baseType: !508, size: 64, offset: 448)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1752, file: !1753, line: 61, baseType: !508, size: 64, offset: 512)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1752, file: !1753, line: 64, baseType: !508, size: 64, offset: 576)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1752, file: !1753, line: 65, baseType: !508, size: 64, offset: 640)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1752, file: !1753, line: 66, baseType: !508, size: 64, offset: 704)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1752, file: !1753, line: 68, baseType: !1768, size: 64, offset: 768)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1753, line: 36, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1752, file: !1753, line: 70, baseType: !1771, size: 64, offset: 832)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1752, file: !1753, line: 72, baseType: !506, size: 32, offset: 896)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1752, file: !1753, line: 73, baseType: !506, size: 32, offset: 928)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1752, file: !1753, line: 74, baseType: !1775, size: 64, offset: 960)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1776, line: 152, baseType: !569)
!1776 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1752, file: !1753, line: 77, baseType: !1778, size: 16, offset: 1024)
!1778 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1752, file: !1753, line: 78, baseType: !1514, size: 8, offset: 1040)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1752, file: !1753, line: 79, baseType: !595, size: 8, offset: 1048)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1752, file: !1753, line: 81, baseType: !1782, size: 64, offset: 1088)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1753, line: 43, baseType: null)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1752, file: !1753, line: 89, baseType: !1785, size: 64, offset: 1152)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1776, line: 153, baseType: !569)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1752, file: !1753, line: 91, baseType: !1787, size: 64, offset: 1216)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1753, line: 37, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1752, file: !1753, line: 92, baseType: !1790, size: 64, offset: 1280)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1753, line: 38, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1752, file: !1753, line: 93, baseType: !1771, size: 64, offset: 1344)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1752, file: !1753, line: 94, baseType: !510, size: 64, offset: 1408)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1752, file: !1753, line: 95, baseType: !954, size: 64, offset: 1472)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1752, file: !1753, line: 96, baseType: !506, size: 32, offset: 1536)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1752, file: !1753, line: 98, baseType: !1797, size: 160, offset: 1568)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 160, elements: !1798)
!1798 = !{!1799}
!1799 = !DISubrange(count: 20)
!1800 = !{!1801}
!1801 = !DILocalVariable(name: "__fp", arg: 1, scope: !1746, file: !1721, line: 56, type: !1749)
!1802 = !DILocation(line: 0, scope: !1746)
!1803 = !DILocation(line: 58, column: 10, scope: !1746)
!1804 = !DILocation(line: 58, column: 3, scope: !1746)
!1805 = distinct !DISubprogram(name: "getc_unlocked", scope: !1721, file: !1721, line: 66, type: !1747, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1806)
!1806 = !{!1807}
!1807 = !DILocalVariable(name: "__fp", arg: 1, scope: !1805, file: !1721, line: 66, type: !1749)
!1808 = !DILocation(line: 0, scope: !1805)
!1809 = !DILocation(line: 68, column: 10, scope: !1805)
!1810 = !DILocation(line: 68, column: 3, scope: !1805)
!1811 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1721, file: !1721, line: 73, type: !1740, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1742)
!1812 = !DILocation(line: 75, column: 10, scope: !1811)
!1813 = !DILocation(line: 75, column: 3, scope: !1811)
!1814 = distinct !DISubprogram(name: "putchar", scope: !1721, file: !1721, line: 82, type: !1815, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!506, !506}
!1817 = !{!1818}
!1818 = !DILocalVariable(name: "__c", arg: 1, scope: !1814, file: !1721, line: 82, type: !506)
!1819 = !DILocation(line: 0, scope: !1814)
!1820 = !DILocation(line: 84, column: 21, scope: !1814)
!1821 = !DILocation(line: 84, column: 10, scope: !1814)
!1822 = !DILocation(line: 84, column: 3, scope: !1814)
!1823 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1721, file: !1721, line: 91, type: !1824, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1826)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!506, !506, !1749}
!1826 = !{!1827, !1828}
!1827 = !DILocalVariable(name: "__c", arg: 1, scope: !1823, file: !1721, line: 91, type: !506)
!1828 = !DILocalVariable(name: "__stream", arg: 2, scope: !1823, file: !1721, line: 91, type: !1749)
!1829 = !DILocation(line: 0, scope: !1823)
!1830 = !DILocation(line: 93, column: 10, scope: !1823)
!1831 = !DILocation(line: 93, column: 3, scope: !1823)
!1832 = distinct !DISubprogram(name: "putc_unlocked", scope: !1721, file: !1721, line: 101, type: !1824, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1833)
!1833 = !{!1834, !1835}
!1834 = !DILocalVariable(name: "__c", arg: 1, scope: !1832, file: !1721, line: 101, type: !506)
!1835 = !DILocalVariable(name: "__stream", arg: 2, scope: !1832, file: !1721, line: 101, type: !1749)
!1836 = !DILocation(line: 0, scope: !1832)
!1837 = !DILocation(line: 103, column: 10, scope: !1832)
!1838 = !DILocation(line: 103, column: 3, scope: !1832)
!1839 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1721, file: !1721, line: 108, type: !1815, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1840)
!1840 = !{!1841}
!1841 = !DILocalVariable(name: "__c", arg: 1, scope: !1839, file: !1721, line: 108, type: !506)
!1842 = !DILocation(line: 0, scope: !1839)
!1843 = !DILocation(line: 110, column: 10, scope: !1839)
!1844 = !DILocation(line: 110, column: 3, scope: !1839)
!1845 = distinct !DISubprogram(name: "getline", scope: !1721, file: !1721, line: 118, type: !1846, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1850)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!1848, !507, !1849, !1749}
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1776, line: 193, baseType: !569)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!1850 = !{!1851, !1852, !1853}
!1851 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1845, file: !1721, line: 118, type: !507)
!1852 = !DILocalVariable(name: "__n", arg: 2, scope: !1845, file: !1721, line: 118, type: !1849)
!1853 = !DILocalVariable(name: "__stream", arg: 3, scope: !1845, file: !1721, line: 118, type: !1749)
!1854 = !DILocation(line: 0, scope: !1845)
!1855 = !DILocation(line: 120, column: 10, scope: !1845)
!1856 = !DILocation(line: 120, column: 3, scope: !1845)
!1857 = distinct !DISubprogram(name: "feof_unlocked", scope: !1721, file: !1721, line: 128, type: !1747, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1858)
!1858 = !{!1859}
!1859 = !DILocalVariable(name: "__stream", arg: 1, scope: !1857, file: !1721, line: 128, type: !1749)
!1860 = !DILocation(line: 0, scope: !1857)
!1861 = !DILocation(line: 130, column: 10, scope: !1857)
!1862 = !DILocation(line: 130, column: 3, scope: !1857)
!1863 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1721, file: !1721, line: 135, type: !1747, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1864)
!1864 = !{!1865}
!1865 = !DILocalVariable(name: "__stream", arg: 1, scope: !1863, file: !1721, line: 135, type: !1749)
!1866 = !DILocation(line: 0, scope: !1863)
!1867 = !DILocation(line: 137, column: 10, scope: !1863)
!1868 = !DILocation(line: 137, column: 3, scope: !1863)
!1869 = distinct !DISubprogram(name: "tolower", scope: !1870, file: !1870, line: 207, type: !1815, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1871)
!1870 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1871 = !{!1872}
!1872 = !DILocalVariable(name: "__c", arg: 1, scope: !1869, file: !1870, line: 207, type: !506)
!1873 = !DILocation(line: 0, scope: !1869)
!1874 = !DILocation(line: 209, column: 22, scope: !1869)
!1875 = !DILocation(line: 209, column: 39, scope: !1869)
!1876 = !DILocation(line: 209, column: 38, scope: !1869)
!1877 = !DILocation(line: 209, column: 37, scope: !1869)
!1878 = !DILocation(line: 209, column: 10, scope: !1869)
!1879 = !DILocation(line: 209, column: 3, scope: !1869)
!1880 = distinct !DISubprogram(name: "toupper", scope: !1870, file: !1870, line: 213, type: !1815, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1881)
!1881 = !{!1882}
!1882 = !DILocalVariable(name: "__c", arg: 1, scope: !1880, file: !1870, line: 213, type: !506)
!1883 = !DILocation(line: 0, scope: !1880)
!1884 = !DILocation(line: 215, column: 22, scope: !1880)
!1885 = !DILocation(line: 215, column: 39, scope: !1880)
!1886 = !DILocation(line: 215, column: 38, scope: !1880)
!1887 = !DILocation(line: 215, column: 37, scope: !1880)
!1888 = !DILocation(line: 215, column: 10, scope: !1880)
!1889 = !DILocation(line: 215, column: 3, scope: !1880)
!1890 = distinct !DISubprogram(name: "atoi", scope: !1891, file: !1891, line: 361, type: !1892, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1894)
!1891 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!506, !511}
!1894 = !{!1895}
!1895 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1890, file: !1891, line: 361, type: !511)
!1896 = !DILocation(line: 0, scope: !1890)
!1897 = !DILocation(line: 363, column: 16, scope: !1890)
!1898 = !DILocation(line: 363, column: 10, scope: !1890)
!1899 = !DILocation(line: 363, column: 3, scope: !1890)
!1900 = distinct !DISubprogram(name: "atol", scope: !1891, file: !1891, line: 366, type: !1901, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1903)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!569, !511}
!1903 = !{!1904}
!1904 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1900, file: !1891, line: 366, type: !511)
!1905 = !DILocation(line: 0, scope: !1900)
!1906 = !DILocation(line: 368, column: 10, scope: !1900)
!1907 = !DILocation(line: 368, column: 3, scope: !1900)
!1908 = distinct !DISubprogram(name: "atoll", scope: !1891, file: !1891, line: 373, type: !1909, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1912)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!1911, !511}
!1911 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1912 = !{!1913}
!1913 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1908, file: !1891, line: 373, type: !511)
!1914 = !DILocation(line: 0, scope: !1908)
!1915 = !DILocation(line: 375, column: 10, scope: !1908)
!1916 = !DILocation(line: 375, column: 3, scope: !1908)
!1917 = distinct !DISubprogram(name: "bsearch", scope: !1918, file: !1918, line: 20, type: !1919, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1922)
!1918 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!510, !1100, !1100, !954, !954, !1921}
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1891, line: 808, baseType: !1104)
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932}
!1923 = !DILocalVariable(name: "__key", arg: 1, scope: !1917, file: !1918, line: 20, type: !1100)
!1924 = !DILocalVariable(name: "__base", arg: 2, scope: !1917, file: !1918, line: 20, type: !1100)
!1925 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1917, file: !1918, line: 20, type: !954)
!1926 = !DILocalVariable(name: "__size", arg: 4, scope: !1917, file: !1918, line: 20, type: !954)
!1927 = !DILocalVariable(name: "__compar", arg: 5, scope: !1917, file: !1918, line: 21, type: !1921)
!1928 = !DILocalVariable(name: "__l", scope: !1917, file: !1918, line: 23, type: !954)
!1929 = !DILocalVariable(name: "__u", scope: !1917, file: !1918, line: 23, type: !954)
!1930 = !DILocalVariable(name: "__idx", scope: !1917, file: !1918, line: 23, type: !954)
!1931 = !DILocalVariable(name: "__p", scope: !1917, file: !1918, line: 24, type: !1100)
!1932 = !DILocalVariable(name: "__comparison", scope: !1917, file: !1918, line: 25, type: !506)
!1933 = !DILocation(line: 0, scope: !1917)
!1934 = !DILocation(line: 29, column: 3, scope: !1917)
!1935 = !DILocation(line: 27, column: 7, scope: !1917)
!1936 = !DILocation(line: 29, column: 14, scope: !1917)
!1937 = !DILocation(line: 31, column: 20, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1917, file: !1918, line: 30, column: 5)
!1939 = !DILocation(line: 31, column: 27, scope: !1938)
!1940 = !DILocation(line: 32, column: 56, scope: !1938)
!1941 = !DILocation(line: 32, column: 47, scope: !1938)
!1942 = !DILocation(line: 33, column: 22, scope: !1938)
!1943 = !DILocation(line: 34, column: 24, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1938, file: !1918, line: 34, column: 11)
!1945 = !DILocation(line: 34, column: 11, scope: !1938)
!1946 = !DILocation(line: 36, column: 29, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !1918, line: 36, column: 16)
!1948 = !DILocation(line: 36, column: 16, scope: !1944)
!1949 = !DILocation(line: 37, column: 14, scope: !1947)
!1950 = distinct !{!1950, !1934, !1951}
!1951 = !DILocation(line: 40, column: 5, scope: !1917)
!1952 = !DILocation(line: 43, column: 1, scope: !1917)
!1953 = distinct !DISubprogram(name: "atof", scope: !1954, file: !1954, line: 25, type: !1955, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1958)
!1954 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!1957, !511}
!1957 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1958 = !{!1959}
!1959 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1953, file: !1954, line: 25, type: !511)
!1960 = !DILocation(line: 0, scope: !1953)
!1961 = !DILocation(line: 27, column: 10, scope: !1953)
!1962 = !DILocation(line: 27, column: 3, scope: !1953)
!1963 = distinct !DISubprogram(name: "strtoimax", scope: !1964, file: !1964, line: 324, type: !1965, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1971)
!1964 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!1967, !1724, !1970, !506}
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1968, line: 101, baseType: !1969)
!1968 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1776, line: 72, baseType: !569)
!1970 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !507)
!1971 = !{!1972, !1973, !1974}
!1972 = !DILocalVariable(name: "nptr", arg: 1, scope: !1963, file: !1964, line: 324, type: !1724)
!1973 = !DILocalVariable(name: "endptr", arg: 2, scope: !1963, file: !1964, line: 324, type: !1970)
!1974 = !DILocalVariable(name: "base", arg: 3, scope: !1963, file: !1964, line: 324, type: !506)
!1975 = !DILocation(line: 0, scope: !1963)
!1976 = !DILocation(line: 327, column: 10, scope: !1963)
!1977 = !DILocation(line: 327, column: 3, scope: !1963)
!1978 = distinct !DISubprogram(name: "strtoumax", scope: !1964, file: !1964, line: 336, type: !1979, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1983)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!1981, !1724, !1970, !506}
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1968, line: 102, baseType: !1982)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1776, line: 73, baseType: !567)
!1983 = !{!1984, !1985, !1986}
!1984 = !DILocalVariable(name: "nptr", arg: 1, scope: !1978, file: !1964, line: 336, type: !1724)
!1985 = !DILocalVariable(name: "endptr", arg: 2, scope: !1978, file: !1964, line: 336, type: !1970)
!1986 = !DILocalVariable(name: "base", arg: 3, scope: !1978, file: !1964, line: 336, type: !506)
!1987 = !DILocation(line: 0, scope: !1978)
!1988 = !DILocation(line: 339, column: 10, scope: !1978)
!1989 = !DILocation(line: 339, column: 3, scope: !1978)
!1990 = distinct !DISubprogram(name: "wcstoimax", scope: !1964, file: !1964, line: 348, type: !1991, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2000)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!1967, !1993, !1997, !506}
!1993 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1994)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1996)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1964, line: 34, baseType: !506)
!1997 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1998)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!2000 = !{!2001, !2002, !2003}
!2001 = !DILocalVariable(name: "nptr", arg: 1, scope: !1990, file: !1964, line: 348, type: !1993)
!2002 = !DILocalVariable(name: "endptr", arg: 2, scope: !1990, file: !1964, line: 348, type: !1997)
!2003 = !DILocalVariable(name: "base", arg: 3, scope: !1990, file: !1964, line: 348, type: !506)
!2004 = !DILocation(line: 0, scope: !1990)
!2005 = !DILocation(line: 351, column: 10, scope: !1990)
!2006 = !DILocation(line: 351, column: 3, scope: !1990)
!2007 = distinct !DISubprogram(name: "wcstoumax", scope: !1964, file: !1964, line: 362, type: !2008, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!1981, !1993, !1997, !506}
!2010 = !{!2011, !2012, !2013}
!2011 = !DILocalVariable(name: "nptr", arg: 1, scope: !2007, file: !1964, line: 362, type: !1993)
!2012 = !DILocalVariable(name: "endptr", arg: 2, scope: !2007, file: !1964, line: 362, type: !1997)
!2013 = !DILocalVariable(name: "base", arg: 3, scope: !2007, file: !1964, line: 362, type: !506)
!2014 = !DILocation(line: 0, scope: !2007)
!2015 = !DILocation(line: 365, column: 10, scope: !2007)
!2016 = !DILocation(line: 365, column: 3, scope: !2007)
!2017 = distinct !DISubprogram(name: "stat", scope: !2018, file: !2018, line: 453, type: !2019, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2058)
!2018 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!506, !511, !2021}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2023, line: 46, size: 1152, elements: !2024)
!2023 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2024 = !{!2025, !2027, !2029, !2031, !2033, !2035, !2037, !2038, !2039, !2040, !2042, !2044, !2052, !2053, !2054}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2022, file: !2023, line: 48, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1776, line: 145, baseType: !567)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2022, file: !2023, line: 53, baseType: !2028, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1776, line: 148, baseType: !567)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2022, file: !2023, line: 61, baseType: !2030, size: 64, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1776, line: 151, baseType: !567)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2022, file: !2023, line: 62, baseType: !2032, size: 32, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1776, line: 150, baseType: !7)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2022, file: !2023, line: 64, baseType: !2034, size: 32, offset: 224)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1776, line: 146, baseType: !7)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2022, file: !2023, line: 65, baseType: !2036, size: 32, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1776, line: 147, baseType: !7)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2022, file: !2023, line: 67, baseType: !506, size: 32, offset: 288)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2022, file: !2023, line: 69, baseType: !2026, size: 64, offset: 320)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2022, file: !2023, line: 74, baseType: !1775, size: 64, offset: 384)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2022, file: !2023, line: 78, baseType: !2041, size: 64, offset: 448)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1776, line: 174, baseType: !569)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2022, file: !2023, line: 80, baseType: !2043, size: 64, offset: 512)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1776, line: 179, baseType: !569)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2022, file: !2023, line: 91, baseType: !2045, size: 128, offset: 576)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2046, line: 10, size: 128, elements: !2047)
!2046 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2047 = !{!2048, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2045, file: !2046, line: 12, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1776, line: 160, baseType: !569)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2045, file: !2046, line: 16, baseType: !2051, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1776, line: 196, baseType: !569)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2022, file: !2023, line: 92, baseType: !2045, size: 128, offset: 704)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2022, file: !2023, line: 93, baseType: !2045, size: 128, offset: 832)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2022, file: !2023, line: 106, baseType: !2055, size: 192, offset: 960)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2051, size: 192, elements: !2056)
!2056 = !{!2057}
!2057 = !DISubrange(count: 3)
!2058 = !{!2059, !2060}
!2059 = !DILocalVariable(name: "__path", arg: 1, scope: !2017, file: !2018, line: 453, type: !511)
!2060 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2017, file: !2018, line: 453, type: !2021)
!2061 = !DILocation(line: 0, scope: !2017)
!2062 = !DILocation(line: 455, column: 10, scope: !2017)
!2063 = !DILocation(line: 455, column: 3, scope: !2017)
!2064 = distinct !DISubprogram(name: "lstat", scope: !2018, file: !2018, line: 460, type: !2019, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2065)
!2065 = !{!2066, !2067}
!2066 = !DILocalVariable(name: "__path", arg: 1, scope: !2064, file: !2018, line: 460, type: !511)
!2067 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2064, file: !2018, line: 460, type: !2021)
!2068 = !DILocation(line: 0, scope: !2064)
!2069 = !DILocation(line: 462, column: 10, scope: !2064)
!2070 = !DILocation(line: 462, column: 3, scope: !2064)
!2071 = distinct !DISubprogram(name: "fstat", scope: !2018, file: !2018, line: 467, type: !2072, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!506, !506, !2021}
!2074 = !{!2075, !2076}
!2075 = !DILocalVariable(name: "__fd", arg: 1, scope: !2071, file: !2018, line: 467, type: !506)
!2076 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2071, file: !2018, line: 467, type: !2021)
!2077 = !DILocation(line: 0, scope: !2071)
!2078 = !DILocation(line: 469, column: 10, scope: !2071)
!2079 = !DILocation(line: 469, column: 3, scope: !2071)
!2080 = distinct !DISubprogram(name: "fstatat", scope: !2018, file: !2018, line: 474, type: !2081, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!506, !506, !511, !2021, !506}
!2083 = !{!2084, !2085, !2086, !2087}
!2084 = !DILocalVariable(name: "__fd", arg: 1, scope: !2080, file: !2018, line: 474, type: !506)
!2085 = !DILocalVariable(name: "__filename", arg: 2, scope: !2080, file: !2018, line: 474, type: !511)
!2086 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2080, file: !2018, line: 474, type: !2021)
!2087 = !DILocalVariable(name: "__flag", arg: 4, scope: !2080, file: !2018, line: 474, type: !506)
!2088 = !DILocation(line: 0, scope: !2080)
!2089 = !DILocation(line: 477, column: 10, scope: !2080)
!2090 = !DILocation(line: 477, column: 3, scope: !2080)
!2091 = distinct !DISubprogram(name: "mknod", scope: !2018, file: !2018, line: 483, type: !2092, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!506, !511, !2032, !2026}
!2094 = !{!2095, !2096, !2097}
!2095 = !DILocalVariable(name: "__path", arg: 1, scope: !2091, file: !2018, line: 483, type: !511)
!2096 = !DILocalVariable(name: "__mode", arg: 2, scope: !2091, file: !2018, line: 483, type: !2032)
!2097 = !DILocalVariable(name: "__dev", arg: 3, scope: !2091, file: !2018, line: 483, type: !2026)
!2098 = !DILocation(line: 0, scope: !2091)
!2099 = !DILocation(line: 485, column: 10, scope: !2091)
!2100 = !DILocation(line: 485, column: 3, scope: !2091)
!2101 = distinct !DISubprogram(name: "mknodat", scope: !2018, file: !2018, line: 491, type: !2102, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2104)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!506, !506, !511, !2032, !2026}
!2104 = !{!2105, !2106, !2107, !2108}
!2105 = !DILocalVariable(name: "__fd", arg: 1, scope: !2101, file: !2018, line: 491, type: !506)
!2106 = !DILocalVariable(name: "__path", arg: 2, scope: !2101, file: !2018, line: 491, type: !511)
!2107 = !DILocalVariable(name: "__mode", arg: 3, scope: !2101, file: !2018, line: 491, type: !2032)
!2108 = !DILocalVariable(name: "__dev", arg: 4, scope: !2101, file: !2018, line: 491, type: !2026)
!2109 = !DILocation(line: 0, scope: !2101)
!2110 = !DILocation(line: 494, column: 10, scope: !2101)
!2111 = !DILocation(line: 494, column: 3, scope: !2101)
!2112 = distinct !DISubprogram(name: "stat64", scope: !2018, file: !2018, line: 502, type: !2113, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2135)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!506, !511, !2115}
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2023, line: 119, size: 1152, elements: !2117)
!2117 = !{!2118, !2119, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2131, !2132, !2133, !2134}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2116, file: !2023, line: 121, baseType: !2026, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2116, file: !2023, line: 123, baseType: !2120, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1776, line: 149, baseType: !567)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2116, file: !2023, line: 124, baseType: !2030, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2116, file: !2023, line: 125, baseType: !2032, size: 32, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2116, file: !2023, line: 132, baseType: !2034, size: 32, offset: 224)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2116, file: !2023, line: 133, baseType: !2036, size: 32, offset: 256)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2116, file: !2023, line: 135, baseType: !506, size: 32, offset: 288)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2116, file: !2023, line: 136, baseType: !2026, size: 64, offset: 320)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2116, file: !2023, line: 137, baseType: !1775, size: 64, offset: 384)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2116, file: !2023, line: 143, baseType: !2041, size: 64, offset: 448)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2116, file: !2023, line: 144, baseType: !2130, size: 64, offset: 512)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1776, line: 180, baseType: !569)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2116, file: !2023, line: 152, baseType: !2045, size: 128, offset: 576)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2116, file: !2023, line: 153, baseType: !2045, size: 128, offset: 704)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2116, file: !2023, line: 154, baseType: !2045, size: 128, offset: 832)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2116, file: !2023, line: 164, baseType: !2055, size: 192, offset: 960)
!2135 = !{!2136, !2137}
!2136 = !DILocalVariable(name: "__path", arg: 1, scope: !2112, file: !2018, line: 502, type: !511)
!2137 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2112, file: !2018, line: 502, type: !2115)
!2138 = !DILocation(line: 0, scope: !2112)
!2139 = !DILocation(line: 504, column: 10, scope: !2112)
!2140 = !DILocation(line: 504, column: 3, scope: !2112)
!2141 = distinct !DISubprogram(name: "lstat64", scope: !2018, file: !2018, line: 509, type: !2113, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2142)
!2142 = !{!2143, !2144}
!2143 = !DILocalVariable(name: "__path", arg: 1, scope: !2141, file: !2018, line: 509, type: !511)
!2144 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2141, file: !2018, line: 509, type: !2115)
!2145 = !DILocation(line: 0, scope: !2141)
!2146 = !DILocation(line: 511, column: 10, scope: !2141)
!2147 = !DILocation(line: 511, column: 3, scope: !2141)
!2148 = distinct !DISubprogram(name: "fstat64", scope: !2018, file: !2018, line: 516, type: !2149, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2151)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!506, !506, !2115}
!2151 = !{!2152, !2153}
!2152 = !DILocalVariable(name: "__fd", arg: 1, scope: !2148, file: !2018, line: 516, type: !506)
!2153 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2148, file: !2018, line: 516, type: !2115)
!2154 = !DILocation(line: 0, scope: !2148)
!2155 = !DILocation(line: 518, column: 10, scope: !2148)
!2156 = !DILocation(line: 518, column: 3, scope: !2148)
!2157 = distinct !DISubprogram(name: "fstatat64", scope: !2018, file: !2018, line: 523, type: !2158, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2160)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!506, !506, !511, !2115, !506}
!2160 = !{!2161, !2162, !2163, !2164}
!2161 = !DILocalVariable(name: "__fd", arg: 1, scope: !2157, file: !2018, line: 523, type: !506)
!2162 = !DILocalVariable(name: "__filename", arg: 2, scope: !2157, file: !2018, line: 523, type: !511)
!2163 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2157, file: !2018, line: 523, type: !2115)
!2164 = !DILocalVariable(name: "__flag", arg: 4, scope: !2157, file: !2018, line: 523, type: !506)
!2165 = !DILocation(line: 0, scope: !2157)
!2166 = !DILocation(line: 526, column: 10, scope: !2157)
!2167 = !DILocation(line: 526, column: 3, scope: !2157)
!2168 = distinct !DISubprogram(name: "gate_ifcombine", scope: !3, file: !3, line: 655, type: !1699, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1742)
!2169 = !DILocation(line: 657, column: 3, scope: !2168)
!2170 = distinct !DISubprogram(name: "tree_ssa_ifcombine", scope: !3, file: !3, line: 631, type: !1703, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2171)
!2171 = !{!2172, !2174, !2175, !2176, !2180}
!2172 = !DILocalVariable(name: "bbs", scope: !2170, file: !3, line: 633, type: !2173)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!2174 = !DILocalVariable(name: "cfg_changed", scope: !2170, file: !3, line: 634, type: !505)
!2175 = !DILocalVariable(name: "i", scope: !2170, file: !3, line: 635, type: !506)
!2176 = !DILocalVariable(name: "bb", scope: !2177, file: !3, line: 641, type: !771)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 640, column: 5)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 639, column: 3)
!2179 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 639, column: 3)
!2180 = !DILocalVariable(name: "stmt", scope: !2177, file: !3, line: 642, type: !808)
!2181 = !DILocation(line: 0, scope: !2170)
!2182 = !DILocation(line: 637, column: 9, scope: !2170)
!2183 = !DILocation(line: 639, column: 8, scope: !2179)
!2184 = !DILocation(line: 639, column: 19, scope: !2178)
!2185 = !DILocation(line: 639, column: 34, scope: !2178)
!2186 = !DILocation(line: 639, column: 17, scope: !2178)
!2187 = !DILocation(line: 639, column: 3, scope: !2179)
!2188 = !DILocation(line: 641, column: 24, scope: !2177)
!2189 = !DILocation(line: 0, scope: !2177)
!2190 = !DILocation(line: 642, column: 21, scope: !2177)
!2191 = !DILocation(line: 644, column: 11, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 644, column: 11)
!2193 = !DILocation(line: 645, column: 4, scope: !2192)
!2194 = !DILocation(line: 645, column: 7, scope: !2192)
!2195 = !DILocation(line: 645, column: 26, scope: !2192)
!2196 = !DILocation(line: 644, column: 11, scope: !2177)
!2197 = !DILocation(line: 646, column: 17, scope: !2192)
!2198 = !DILocation(line: 646, column: 14, scope: !2192)
!2199 = !DILocation(line: 646, column: 2, scope: !2192)
!2200 = !DILocation(line: 639, column: 54, scope: !2178)
!2201 = !DILocation(line: 639, column: 3, scope: !2178)
!2202 = distinct !{!2202, !2187, !2203}
!2203 = !DILocation(line: 647, column: 5, scope: !2179)
!2204 = !DILocation(line: 649, column: 9, scope: !2170)
!2205 = !DILocation(line: 649, column: 3, scope: !2170)
!2206 = !DILocation(line: 651, column: 10, scope: !2170)
!2207 = !DILocation(line: 651, column: 3, scope: !2170)
!2208 = distinct !DISubprogram(name: "gimple_code", scope: !433, file: !433, line: 1052, type: !2209, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2212)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!432, !2211}
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !514, line: 60, baseType: !1687)
!2212 = !{!2213}
!2213 = !DILocalVariable(name: "g", arg: 1, scope: !2208, file: !433, line: 1052, type: !2211)
!2214 = !DILocation(line: 0, scope: !2208)
!2215 = !DILocation(line: 1054, column: 20, scope: !2208)
!2216 = !DILocation(line: 1054, column: 3, scope: !2208)
!2217 = distinct !DISubprogram(name: "tree_ssa_ifcombine_bb", scope: !3, file: !3, line: 566, type: !2218, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!505, !771}
!2220 = !{!2221, !2222, !2223, !2224}
!2221 = !DILocalVariable(name: "inner_cond_bb", arg: 1, scope: !2217, file: !3, line: 566, type: !771)
!2222 = !DILocalVariable(name: "then_bb", scope: !2217, file: !3, line: 568, type: !771)
!2223 = !DILocalVariable(name: "else_bb", scope: !2217, file: !3, line: 568, type: !771)
!2224 = !DILocalVariable(name: "outer_cond_bb", scope: !2225, file: !3, line: 583, type: !771)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 582, column: 5)
!2226 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 581, column: 7)
!2227 = !DILocation(line: 0, scope: !2217)
!2228 = !DILocation(line: 568, column: 3, scope: !2217)
!2229 = !DILocation(line: 568, column: 15, scope: !2217)
!2230 = !DILocation(line: 568, column: 31, scope: !2217)
!2231 = !DILocation(line: 570, column: 8, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 570, column: 7)
!2233 = !DILocation(line: 570, column: 7, scope: !2217)
!2234 = !DILocation(line: 581, column: 7, scope: !2226)
!2235 = !DILocation(line: 581, column: 7, scope: !2217)
!2236 = !DILocation(line: 583, column: 35, scope: !2225)
!2237 = !DILocation(line: 0, scope: !2225)
!2238 = !DILocation(line: 589, column: 11, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 589, column: 11)
!2240 = !DILocation(line: 590, column: 4, scope: !2239)
!2241 = !DILocation(line: 590, column: 39, scope: !2239)
!2242 = !DILocation(line: 590, column: 54, scope: !2239)
!2243 = !DILocation(line: 590, column: 7, scope: !2239)
!2244 = !DILocation(line: 591, column: 4, scope: !2239)
!2245 = !DILocation(line: 591, column: 29, scope: !2239)
!2246 = !DILocation(line: 591, column: 7, scope: !2239)
!2247 = !DILocation(line: 589, column: 11, scope: !2225)
!2248 = !DILocation(line: 602, column: 30, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 592, column: 2)
!2250 = !DILocation(line: 602, column: 11, scope: !2249)
!2251 = !DILocation(line: 602, column: 4, scope: !2249)
!2252 = !DILocation(line: 609, column: 11, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 609, column: 11)
!2254 = !DILocation(line: 610, column: 4, scope: !2253)
!2255 = !DILocation(line: 610, column: 39, scope: !2253)
!2256 = !DILocation(line: 610, column: 54, scope: !2253)
!2257 = !DILocation(line: 610, column: 7, scope: !2253)
!2258 = !DILocation(line: 611, column: 4, scope: !2253)
!2259 = !DILocation(line: 611, column: 29, scope: !2253)
!2260 = !DILocation(line: 611, column: 7, scope: !2253)
!2261 = !DILocation(line: 609, column: 11, scope: !2225)
!2262 = !DILocation(line: 621, column: 29, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 612, column: 2)
!2264 = !DILocation(line: 621, column: 11, scope: !2263)
!2265 = !DILocation(line: 621, column: 4, scope: !2263)
!2266 = !DILocation(line: 625, column: 3, scope: !2217)
!2267 = !DILocation(line: 626, column: 1, scope: !2217)
!2268 = distinct !DISubprogram(name: "recognize_if_then_else", scope: !3, file: !3, line: 61, type: !2269, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!505, !771, !2173, !2173}
!2271 = !{!2272, !2273, !2274, !2275, !2276, !2277}
!2272 = !DILocalVariable(name: "cond_bb", arg: 1, scope: !2268, file: !3, line: 61, type: !771)
!2273 = !DILocalVariable(name: "then_bb", arg: 2, scope: !2268, file: !3, line: 62, type: !2173)
!2274 = !DILocalVariable(name: "else_bb", arg: 3, scope: !2268, file: !3, line: 62, type: !2173)
!2275 = !DILocalVariable(name: "t", scope: !2268, file: !3, line: 64, type: !788)
!2276 = !DILocalVariable(name: "e", scope: !2268, file: !3, line: 64, type: !788)
!2277 = !DILocalVariable(name: "tmp", scope: !2278, file: !3, line: 74, type: !788)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 73, column: 5)
!2279 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 72, column: 7)
!2280 = !DILocation(line: 0, scope: !2268)
!2281 = !DILocation(line: 66, column: 7, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 66, column: 7)
!2283 = !DILocation(line: 66, column: 35, scope: !2282)
!2284 = !DILocation(line: 66, column: 7, scope: !2268)
!2285 = !DILocation(line: 70, column: 7, scope: !2268)
!2286 = !DILocation(line: 71, column: 7, scope: !2268)
!2287 = !DILocation(line: 72, column: 12, scope: !2279)
!2288 = !DILocation(line: 72, column: 18, scope: !2279)
!2289 = !DILocation(line: 72, column: 7, scope: !2268)
!2290 = !DILocation(line: 78, column: 12, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 78, column: 7)
!2292 = !DILocation(line: 78, column: 18, scope: !2291)
!2293 = !DILocation(line: 79, column: 7, scope: !2291)
!2294 = !DILocation(line: 79, column: 15, scope: !2291)
!2295 = !DILocation(line: 79, column: 21, scope: !2291)
!2296 = !DILocation(line: 78, column: 7, scope: !2268)
!2297 = !DILocation(line: 83, column: 7, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 83, column: 7)
!2299 = !DILocation(line: 84, column: 7, scope: !2298)
!2300 = !DILocation(line: 84, column: 13, scope: !2298)
!2301 = !DILocation(line: 84, column: 18, scope: !2298)
!2302 = !DILocation(line: 83, column: 7, scope: !2268)
!2303 = !DILocation(line: 86, column: 7, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 86, column: 7)
!2305 = !DILocation(line: 87, column: 7, scope: !2304)
!2306 = !DILocation(line: 87, column: 13, scope: !2304)
!2307 = !DILocation(line: 87, column: 18, scope: !2304)
!2308 = !DILocation(line: 86, column: 7, scope: !2268)
!2309 = !DILocation(line: 90, column: 7, scope: !2268)
!2310 = !DILocation(line: 91, column: 19, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 90, column: 7)
!2312 = !DILocation(line: 91, column: 14, scope: !2311)
!2313 = !DILocation(line: 92, column: 8, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 92, column: 7)
!2315 = !DILocation(line: 91, column: 5, scope: !2311)
!2316 = !DILocation(line: 92, column: 7, scope: !2268)
!2317 = !DILocation(line: 93, column: 19, scope: !2314)
!2318 = !DILocation(line: 93, column: 14, scope: !2314)
!2319 = !DILocation(line: 93, column: 5, scope: !2314)
!2320 = !DILocation(line: 96, column: 1, scope: !2268)
!2321 = distinct !DISubprogram(name: "single_pred_p", scope: !190, file: !190, line: 634, type: !2322, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2327)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!505, !2324}
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !514, line: 112, baseType: !2325)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!2327 = !{!2328}
!2328 = !DILocalVariable(name: "bb", arg: 1, scope: !2321, file: !190, line: 634, type: !2324)
!2329 = !DILocation(line: 0, scope: !2321)
!2330 = !DILocation(line: 636, column: 10, scope: !2321)
!2331 = !DILocation(line: 636, column: 33, scope: !2321)
!2332 = !DILocation(line: 636, column: 3, scope: !2321)
!2333 = distinct !DISubprogram(name: "single_pred", scope: !190, file: !190, line: 672, type: !2334, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!771, !2324}
!2336 = !{!2337}
!2337 = !DILocalVariable(name: "bb", arg: 1, scope: !2333, file: !190, line: 672, type: !2324)
!2338 = !DILocation(line: 0, scope: !2333)
!2339 = !DILocation(line: 674, column: 10, scope: !2333)
!2340 = !DILocation(line: 674, column: 33, scope: !2333)
!2341 = !DILocation(line: 674, column: 3, scope: !2333)
!2342 = distinct !DISubprogram(name: "same_phi_args_p", scope: !3, file: !3, line: 123, type: !2343, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2345)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!505, !771, !771, !771}
!2345 = !{!2346, !2347, !2348, !2349, !2350, !2351, !2358}
!2346 = !DILocalVariable(name: "bb1", arg: 1, scope: !2342, file: !3, line: 123, type: !771)
!2347 = !DILocalVariable(name: "bb2", arg: 2, scope: !2342, file: !3, line: 123, type: !771)
!2348 = !DILocalVariable(name: "dest", arg: 3, scope: !2342, file: !3, line: 123, type: !771)
!2349 = !DILocalVariable(name: "e1", scope: !2342, file: !3, line: 125, type: !788)
!2350 = !DILocalVariable(name: "e2", scope: !2342, file: !3, line: 126, type: !788)
!2351 = !DILocalVariable(name: "gsi", scope: !2342, file: !3, line: 127, type: !2352)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !433, line: 265, baseType: !2353)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 254, size: 192, elements: !2354)
!2354 = !{!2355, !2356, !2357}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2353, file: !433, line: 257, baseType: !803, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2353, file: !433, line: 263, baseType: !798, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2353, file: !433, line: 264, baseType: !771, size: 64, offset: 128)
!2358 = !DILocalVariable(name: "phi", scope: !2342, file: !3, line: 128, type: !808)
!2359 = !DILocation(line: 0, scope: !2342)
!2360 = !DILocation(line: 125, column: 13, scope: !2342)
!2361 = !DILocation(line: 126, column: 13, scope: !2342)
!2362 = !DILocation(line: 127, column: 3, scope: !2342)
!2363 = !DILocation(line: 130, column: 14, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 130, column: 3)
!2365 = !DILocation(line: 0, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 133, column: 11)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 131, column: 5)
!2368 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 130, column: 3)
!2369 = !DILocation(line: 130, column: 8, scope: !2364)
!2370 = !DILocation(line: 130, column: 38, scope: !2368)
!2371 = !DILocation(line: 130, column: 37, scope: !2368)
!2372 = !DILocation(line: 130, column: 3, scope: !2364)
!2373 = !DILocation(line: 132, column: 13, scope: !2367)
!2374 = !DILocation(line: 133, column: 29, scope: !2366)
!2375 = !DILocation(line: 134, column: 8, scope: !2366)
!2376 = !DILocation(line: 133, column: 12, scope: !2366)
!2377 = !DILocation(line: 133, column: 11, scope: !2367)
!2378 = !DILocation(line: 130, column: 55, scope: !2368)
!2379 = !DILocation(line: 130, column: 3, scope: !2368)
!2380 = distinct !{!2380, !2372, !2381}
!2381 = !DILocation(line: 136, column: 5, scope: !2364)
!2382 = !DILocation(line: 139, column: 1, scope: !2342)
!2383 = distinct !DISubprogram(name: "bb_no_side_effects_p", scope: !3, file: !3, line: 102, type: !2218, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2384)
!2384 = !{!2385, !2386, !2387}
!2385 = !DILocalVariable(name: "bb", arg: 1, scope: !2383, file: !3, line: 102, type: !771)
!2386 = !DILocalVariable(name: "gsi", scope: !2383, file: !3, line: 104, type: !2352)
!2387 = !DILocalVariable(name: "stmt", scope: !2388, file: !3, line: 108, type: !808)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 107, column: 5)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 106, column: 3)
!2390 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 106, column: 3)
!2391 = !DILocation(line: 0, scope: !2383)
!2392 = !DILocation(line: 104, column: 3, scope: !2383)
!2393 = !DILocation(line: 106, column: 14, scope: !2390)
!2394 = !DILocation(line: 106, column: 8, scope: !2390)
!2395 = !DILocation(line: 106, column: 34, scope: !2389)
!2396 = !DILocation(line: 106, column: 33, scope: !2389)
!2397 = !DILocation(line: 106, column: 3, scope: !2390)
!2398 = !DILocation(line: 108, column: 21, scope: !2388)
!2399 = !DILocation(line: 0, scope: !2388)
!2400 = !DILocation(line: 110, column: 11, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 110, column: 11)
!2402 = !DILocation(line: 111, column: 4, scope: !2401)
!2403 = !DILocation(line: 111, column: 7, scope: !2401)
!2404 = !DILocation(line: 110, column: 11, scope: !2388)
!2405 = !DILocation(line: 106, column: 51, scope: !2389)
!2406 = !DILocation(line: 106, column: 3, scope: !2389)
!2407 = distinct !{!2407, !2397, !2408}
!2408 = !DILocation(line: 113, column: 5, scope: !2390)
!2409 = !DILocation(line: 116, column: 1, scope: !2383)
!2410 = distinct !DISubprogram(name: "ifcombine_ifandif", scope: !3, file: !3, line: 304, type: !2411, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!505, !771, !771}
!2413 = !{!2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2426, !2427, !2430, !2431}
!2414 = !DILocalVariable(name: "inner_cond_bb", arg: 1, scope: !2410, file: !3, line: 304, type: !771)
!2415 = !DILocalVariable(name: "outer_cond_bb", arg: 2, scope: !2410, file: !3, line: 304, type: !771)
!2416 = !DILocalVariable(name: "gsi", scope: !2410, file: !3, line: 306, type: !2352)
!2417 = !DILocalVariable(name: "inner_cond", scope: !2410, file: !3, line: 307, type: !808)
!2418 = !DILocalVariable(name: "outer_cond", scope: !2410, file: !3, line: 307, type: !808)
!2419 = !DILocalVariable(name: "name1", scope: !2410, file: !3, line: 308, type: !513)
!2420 = !DILocalVariable(name: "name2", scope: !2410, file: !3, line: 308, type: !513)
!2421 = !DILocalVariable(name: "bit1", scope: !2410, file: !3, line: 308, type: !513)
!2422 = !DILocalVariable(name: "bit2", scope: !2410, file: !3, line: 308, type: !513)
!2423 = !DILocalVariable(name: "t", scope: !2424, file: !3, line: 328, type: !513)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 327, column: 5)
!2425 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 324, column: 7)
!2426 = !DILocalVariable(name: "t2", scope: !2424, file: !3, line: 328, type: !513)
!2427 = !DILocalVariable(name: "code1", scope: !2428, file: !3, line: 375, type: !238)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 374, column: 5)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 368, column: 12)
!2430 = !DILocalVariable(name: "code2", scope: !2428, file: !3, line: 376, type: !238)
!2431 = !DILocalVariable(name: "t", scope: !2428, file: !3, line: 377, type: !513)
!2432 = !DILocation(line: 0, scope: !2410)
!2433 = !DILocation(line: 306, column: 3, scope: !2410)
!2434 = !DILocation(line: 308, column: 3, scope: !2410)
!2435 = !DILocation(line: 310, column: 16, scope: !2410)
!2436 = !DILocation(line: 311, column: 8, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 311, column: 7)
!2438 = !DILocation(line: 312, column: 7, scope: !2437)
!2439 = !DILocation(line: 312, column: 10, scope: !2437)
!2440 = !DILocation(line: 312, column: 35, scope: !2437)
!2441 = !DILocation(line: 311, column: 7, scope: !2410)
!2442 = !DILocation(line: 315, column: 16, scope: !2410)
!2443 = !DILocation(line: 316, column: 8, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 316, column: 7)
!2445 = !DILocation(line: 317, column: 7, scope: !2444)
!2446 = !DILocation(line: 317, column: 10, scope: !2444)
!2447 = !DILocation(line: 317, column: 35, scope: !2444)
!2448 = !DILocation(line: 316, column: 7, scope: !2410)
!2449 = !DILocation(line: 324, column: 7, scope: !2425)
!2450 = !DILocation(line: 325, column: 7, scope: !2425)
!2451 = !DILocation(line: 325, column: 10, scope: !2425)
!2452 = !DILocation(line: 326, column: 7, scope: !2425)
!2453 = !DILocation(line: 326, column: 10, scope: !2425)
!2454 = !DILocation(line: 326, column: 19, scope: !2425)
!2455 = !DILocation(line: 326, column: 16, scope: !2425)
!2456 = !DILocation(line: 324, column: 7, scope: !2410)
!2457 = !DILocation(line: 331, column: 13, scope: !2424)
!2458 = !DILocation(line: 332, column: 11, scope: !2424)
!2459 = !DILocation(line: 0, scope: !2424)
!2460 = !DILocation(line: 334, column: 12, scope: !2424)
!2461 = !DILocation(line: 336, column: 11, scope: !2424)
!2462 = !DILocation(line: 337, column: 11, scope: !2424)
!2463 = !DILocation(line: 339, column: 12, scope: !2424)
!2464 = !DILocation(line: 340, column: 12, scope: !2424)
!2465 = !DILocation(line: 342, column: 11, scope: !2424)
!2466 = !DILocation(line: 343, column: 11, scope: !2424)
!2467 = !DILocation(line: 344, column: 12, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 344, column: 11)
!2469 = !DILocation(line: 344, column: 11, scope: !2424)
!2470 = !DILocation(line: 346, column: 7, scope: !2424)
!2471 = !DILocation(line: 347, column: 7, scope: !2424)
!2472 = !DILocation(line: 350, column: 56, scope: !2424)
!2473 = !DILocation(line: 350, column: 7, scope: !2424)
!2474 = !DILocation(line: 351, column: 7, scope: !2424)
!2475 = !DILocation(line: 353, column: 11, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 353, column: 11)
!2477 = !DILocation(line: 353, column: 11, scope: !2424)
!2478 = !DILocation(line: 355, column: 4, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 354, column: 2)
!2480 = !DILocation(line: 356, column: 24, scope: !2479)
!2481 = !DILocation(line: 356, column: 35, scope: !2479)
!2482 = !DILocation(line: 356, column: 4, scope: !2479)
!2483 = !DILocation(line: 357, column: 13, scope: !2479)
!2484 = !DILocation(line: 357, column: 4, scope: !2479)
!2485 = !DILocation(line: 358, column: 24, scope: !2479)
!2486 = !DILocation(line: 358, column: 35, scope: !2479)
!2487 = !DILocation(line: 358, column: 4, scope: !2479)
!2488 = !DILocation(line: 359, column: 13, scope: !2479)
!2489 = !DILocation(line: 359, column: 4, scope: !2479)
!2490 = !DILocation(line: 360, column: 24, scope: !2479)
!2491 = !DILocation(line: 360, column: 35, scope: !2479)
!2492 = !DILocation(line: 360, column: 4, scope: !2479)
!2493 = !DILocation(line: 361, column: 13, scope: !2479)
!2494 = !DILocation(line: 361, column: 4, scope: !2479)
!2495 = !DILocation(line: 362, column: 2, scope: !2479)
!2496 = !DILocation(line: 368, column: 12, scope: !2429)
!2497 = !DILocation(line: 368, column: 60, scope: !2429)
!2498 = !DILocation(line: 369, column: 5, scope: !2429)
!2499 = !DILocation(line: 369, column: 8, scope: !2429)
!2500 = !DILocation(line: 369, column: 56, scope: !2429)
!2501 = !DILocation(line: 370, column: 5, scope: !2429)
!2502 = !DILocation(line: 370, column: 25, scope: !2429)
!2503 = !DILocation(line: 371, column: 11, scope: !2429)
!2504 = !DILocation(line: 370, column: 8, scope: !2429)
!2505 = !DILocation(line: 372, column: 5, scope: !2429)
!2506 = !DILocation(line: 372, column: 25, scope: !2429)
!2507 = !DILocation(line: 373, column: 11, scope: !2429)
!2508 = !DILocation(line: 372, column: 8, scope: !2429)
!2509 = !DILocation(line: 368, column: 12, scope: !2425)
!2510 = !DILocation(line: 375, column: 30, scope: !2428)
!2511 = !DILocation(line: 0, scope: !2428)
!2512 = !DILocation(line: 376, column: 30, scope: !2428)
!2513 = !DILocation(line: 381, column: 10, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 379, column: 11)
!2515 = !DILocation(line: 382, column: 10, scope: !2514)
!2516 = !DILocation(line: 383, column: 10, scope: !2514)
!2517 = !DILocation(line: 379, column: 17, scope: !2514)
!2518 = !DILocation(line: 379, column: 15, scope: !2514)
!2519 = !DILocation(line: 379, column: 11, scope: !2428)
!2520 = !DILocation(line: 385, column: 11, scope: !2428)
!2521 = !DILocation(line: 386, column: 12, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 386, column: 11)
!2523 = !DILocation(line: 386, column: 11, scope: !2428)
!2524 = !DILocation(line: 388, column: 7, scope: !2428)
!2525 = !DILocation(line: 389, column: 7, scope: !2428)
!2526 = !DILocation(line: 392, column: 56, scope: !2428)
!2527 = !DILocation(line: 392, column: 7, scope: !2428)
!2528 = !DILocation(line: 393, column: 7, scope: !2428)
!2529 = !DILocation(line: 395, column: 11, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 395, column: 11)
!2531 = !DILocation(line: 395, column: 11, scope: !2428)
!2532 = !DILocation(line: 397, column: 4, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 396, column: 2)
!2534 = !DILocation(line: 398, column: 24, scope: !2533)
!2535 = !DILocation(line: 398, column: 4, scope: !2533)
!2536 = !DILocation(line: 399, column: 13, scope: !2533)
!2537 = !DILocation(line: 399, column: 4, scope: !2533)
!2538 = !DILocation(line: 400, column: 2, scope: !2533)
!2539 = !DILocation(line: 406, column: 1, scope: !2410)
!2540 = distinct !DISubprogram(name: "ifcombine_iforif", scope: !3, file: !3, line: 414, type: !2411, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2541)
!2541 = !{!2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2553, !2554, !2557, !2558}
!2542 = !DILocalVariable(name: "inner_cond_bb", arg: 1, scope: !2540, file: !3, line: 414, type: !771)
!2543 = !DILocalVariable(name: "outer_cond_bb", arg: 2, scope: !2540, file: !3, line: 414, type: !771)
!2544 = !DILocalVariable(name: "inner_cond", scope: !2540, file: !3, line: 416, type: !808)
!2545 = !DILocalVariable(name: "outer_cond", scope: !2540, file: !3, line: 416, type: !808)
!2546 = !DILocalVariable(name: "name1", scope: !2540, file: !3, line: 417, type: !513)
!2547 = !DILocalVariable(name: "name2", scope: !2540, file: !3, line: 417, type: !513)
!2548 = !DILocalVariable(name: "bits1", scope: !2540, file: !3, line: 417, type: !513)
!2549 = !DILocalVariable(name: "bits2", scope: !2540, file: !3, line: 417, type: !513)
!2550 = !DILocalVariable(name: "gsi", scope: !2551, file: !3, line: 435, type: !2352)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 434, column: 5)
!2552 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 432, column: 7)
!2553 = !DILocalVariable(name: "t", scope: !2551, file: !3, line: 436, type: !513)
!2554 = !DILocalVariable(name: "code1", scope: !2555, file: !3, line: 528, type: !238)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 527, column: 5)
!2556 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 521, column: 12)
!2557 = !DILocalVariable(name: "code2", scope: !2555, file: !3, line: 529, type: !238)
!2558 = !DILocalVariable(name: "t", scope: !2555, file: !3, line: 530, type: !513)
!2559 = !DILocation(line: 0, scope: !2540)
!2560 = !DILocation(line: 417, column: 3, scope: !2540)
!2561 = !DILocation(line: 419, column: 16, scope: !2540)
!2562 = !DILocation(line: 420, column: 8, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 420, column: 7)
!2564 = !DILocation(line: 421, column: 7, scope: !2563)
!2565 = !DILocation(line: 421, column: 10, scope: !2563)
!2566 = !DILocation(line: 421, column: 35, scope: !2563)
!2567 = !DILocation(line: 420, column: 7, scope: !2540)
!2568 = !DILocation(line: 424, column: 16, scope: !2540)
!2569 = !DILocation(line: 425, column: 8, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 425, column: 7)
!2571 = !DILocation(line: 426, column: 7, scope: !2570)
!2572 = !DILocation(line: 426, column: 10, scope: !2570)
!2573 = !DILocation(line: 426, column: 35, scope: !2570)
!2574 = !DILocation(line: 425, column: 7, scope: !2540)
!2575 = !DILocation(line: 432, column: 7, scope: !2552)
!2576 = !DILocation(line: 433, column: 7, scope: !2552)
!2577 = !DILocation(line: 433, column: 10, scope: !2552)
!2578 = !DILocation(line: 432, column: 7, scope: !2540)
!2579 = !DILocation(line: 435, column: 7, scope: !2551)
!2580 = !DILocation(line: 439, column: 11, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 439, column: 11)
!2582 = !DILocation(line: 439, column: 20, scope: !2581)
!2583 = !DILocation(line: 439, column: 17, scope: !2581)
!2584 = !DILocation(line: 439, column: 11, scope: !2551)
!2585 = !DILocation(line: 0, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 468, column: 11)
!2587 = !DILocation(line: 468, column: 11, scope: !2586)
!2588 = !DILocation(line: 469, column: 7, scope: !2586)
!2589 = !DILocation(line: 441, column: 16, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 441, column: 16)
!2591 = !DILocation(line: 441, column: 25, scope: !2590)
!2592 = !DILocation(line: 441, column: 22, scope: !2590)
!2593 = !DILocation(line: 441, column: 16, scope: !2581)
!2594 = !DILocation(line: 443, column: 8, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 442, column: 2)
!2596 = !DILocation(line: 444, column: 12, scope: !2595)
!2597 = !DILocation(line: 444, column: 10, scope: !2595)
!2598 = !DILocation(line: 445, column: 10, scope: !2595)
!2599 = !DILocation(line: 446, column: 8, scope: !2595)
!2600 = !DILocation(line: 447, column: 12, scope: !2595)
!2601 = !DILocation(line: 447, column: 10, scope: !2595)
!2602 = !DILocation(line: 448, column: 10, scope: !2595)
!2603 = !DILocation(line: 449, column: 2, scope: !2595)
!2604 = !DILocation(line: 450, column: 22, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 450, column: 16)
!2606 = !DILocation(line: 450, column: 16, scope: !2590)
!2607 = !DILocation(line: 452, column: 8, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 451, column: 2)
!2609 = !DILocation(line: 453, column: 12, scope: !2608)
!2610 = !DILocation(line: 453, column: 10, scope: !2608)
!2611 = !DILocation(line: 454, column: 10, scope: !2608)
!2612 = !DILocation(line: 455, column: 2, scope: !2608)
!2613 = !DILocation(line: 456, column: 22, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 456, column: 16)
!2615 = !DILocation(line: 456, column: 16, scope: !2605)
!2616 = !DILocation(line: 458, column: 8, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 457, column: 2)
!2618 = !DILocation(line: 459, column: 12, scope: !2617)
!2619 = !DILocation(line: 459, column: 10, scope: !2617)
!2620 = !DILocation(line: 460, column: 10, scope: !2617)
!2621 = !DILocation(line: 469, column: 4, scope: !2586)
!2622 = !DILocation(line: 468, column: 11, scope: !2551)
!2623 = !DILocation(line: 471, column: 12, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 470, column: 2)
!2625 = !DILocation(line: 471, column: 10, scope: !2624)
!2626 = !DILocation(line: 472, column: 12, scope: !2624)
!2627 = !DILocation(line: 472, column: 10, scope: !2624)
!2628 = !DILocation(line: 473, column: 12, scope: !2624)
!2629 = !DILocation(line: 473, column: 10, scope: !2624)
!2630 = !DILocation(line: 474, column: 12, scope: !2624)
!2631 = !DILocation(line: 474, column: 10, scope: !2624)
!2632 = !DILocation(line: 475, column: 2, scope: !2624)
!2633 = !DILocation(line: 478, column: 12, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 477, column: 2)
!2635 = !DILocation(line: 478, column: 10, scope: !2634)
!2636 = !DILocation(line: 479, column: 12, scope: !2634)
!2637 = !DILocation(line: 479, column: 10, scope: !2634)
!2638 = !DILocation(line: 480, column: 12, scope: !2634)
!2639 = !DILocation(line: 480, column: 10, scope: !2634)
!2640 = !DILocation(line: 481, column: 12, scope: !2634)
!2641 = !DILocation(line: 481, column: 10, scope: !2634)
!2642 = !DILocation(line: 485, column: 13, scope: !2551)
!2643 = !DILocation(line: 486, column: 11, scope: !2551)
!2644 = !DILocation(line: 0, scope: !2551)
!2645 = !DILocation(line: 487, column: 11, scope: !2551)
!2646 = !DILocation(line: 489, column: 11, scope: !2551)
!2647 = !DILocation(line: 490, column: 11, scope: !2551)
!2648 = !DILocation(line: 492, column: 11, scope: !2551)
!2649 = !DILocation(line: 494, column: 11, scope: !2551)
!2650 = !DILocation(line: 495, column: 12, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 495, column: 11)
!2652 = !DILocation(line: 495, column: 11, scope: !2551)
!2653 = !DILocation(line: 497, column: 7, scope: !2551)
!2654 = !DILocation(line: 498, column: 7, scope: !2551)
!2655 = !DILocation(line: 501, column: 56, scope: !2551)
!2656 = !DILocation(line: 501, column: 7, scope: !2551)
!2657 = !DILocation(line: 502, column: 7, scope: !2551)
!2658 = !DILocation(line: 504, column: 11, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 504, column: 11)
!2660 = !DILocation(line: 504, column: 11, scope: !2551)
!2661 = !DILocation(line: 506, column: 4, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 505, column: 2)
!2663 = !DILocation(line: 507, column: 24, scope: !2662)
!2664 = !DILocation(line: 507, column: 35, scope: !2662)
!2665 = !DILocation(line: 507, column: 4, scope: !2662)
!2666 = !DILocation(line: 508, column: 13, scope: !2662)
!2667 = !DILocation(line: 508, column: 4, scope: !2662)
!2668 = !DILocation(line: 509, column: 24, scope: !2662)
!2669 = !DILocation(line: 509, column: 35, scope: !2662)
!2670 = !DILocation(line: 509, column: 4, scope: !2662)
!2671 = !DILocation(line: 510, column: 13, scope: !2662)
!2672 = !DILocation(line: 510, column: 4, scope: !2662)
!2673 = !DILocation(line: 511, column: 24, scope: !2662)
!2674 = !DILocation(line: 511, column: 35, scope: !2662)
!2675 = !DILocation(line: 511, column: 4, scope: !2662)
!2676 = !DILocation(line: 512, column: 13, scope: !2662)
!2677 = !DILocation(line: 512, column: 4, scope: !2662)
!2678 = !DILocation(line: 513, column: 2, scope: !2662)
!2679 = !DILocation(line: 516, column: 5, scope: !2552)
!2680 = !DILocation(line: 521, column: 12, scope: !2556)
!2681 = !DILocation(line: 521, column: 60, scope: !2556)
!2682 = !DILocation(line: 522, column: 5, scope: !2556)
!2683 = !DILocation(line: 522, column: 8, scope: !2556)
!2684 = !DILocation(line: 522, column: 56, scope: !2556)
!2685 = !DILocation(line: 523, column: 5, scope: !2556)
!2686 = !DILocation(line: 523, column: 25, scope: !2556)
!2687 = !DILocation(line: 524, column: 11, scope: !2556)
!2688 = !DILocation(line: 523, column: 8, scope: !2556)
!2689 = !DILocation(line: 525, column: 5, scope: !2556)
!2690 = !DILocation(line: 525, column: 25, scope: !2556)
!2691 = !DILocation(line: 526, column: 11, scope: !2556)
!2692 = !DILocation(line: 525, column: 8, scope: !2556)
!2693 = !DILocation(line: 521, column: 12, scope: !2552)
!2694 = !DILocation(line: 528, column: 30, scope: !2555)
!2695 = !DILocation(line: 0, scope: !2555)
!2696 = !DILocation(line: 529, column: 30, scope: !2555)
!2697 = !DILocation(line: 534, column: 10, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 532, column: 11)
!2699 = !DILocation(line: 535, column: 10, scope: !2698)
!2700 = !DILocation(line: 536, column: 10, scope: !2698)
!2701 = !DILocation(line: 532, column: 17, scope: !2698)
!2702 = !DILocation(line: 532, column: 15, scope: !2698)
!2703 = !DILocation(line: 532, column: 11, scope: !2555)
!2704 = !DILocation(line: 538, column: 11, scope: !2555)
!2705 = !DILocation(line: 539, column: 12, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 539, column: 11)
!2707 = !DILocation(line: 539, column: 11, scope: !2555)
!2708 = !DILocation(line: 541, column: 7, scope: !2555)
!2709 = !DILocation(line: 542, column: 7, scope: !2555)
!2710 = !DILocation(line: 545, column: 56, scope: !2555)
!2711 = !DILocation(line: 545, column: 7, scope: !2555)
!2712 = !DILocation(line: 546, column: 7, scope: !2555)
!2713 = !DILocation(line: 548, column: 11, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 548, column: 11)
!2715 = !DILocation(line: 548, column: 11, scope: !2555)
!2716 = !DILocation(line: 550, column: 4, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 549, column: 2)
!2718 = !DILocation(line: 551, column: 24, scope: !2717)
!2719 = !DILocation(line: 551, column: 4, scope: !2717)
!2720 = !DILocation(line: 552, column: 13, scope: !2717)
!2721 = !DILocation(line: 552, column: 4, scope: !2717)
!2722 = !DILocation(line: 553, column: 2, scope: !2717)
!2723 = !DILocation(line: 559, column: 1, scope: !2540)
!2724 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !190, file: !190, line: 150, type: !2725, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2729)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!7, !2727}
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!2729 = !{!2730}
!2730 = !DILocalVariable(name: "vec_", arg: 1, scope: !2724, file: !190, line: 150, type: !2727)
!2731 = !DILocation(line: 0, scope: !2724)
!2732 = !DILocation(line: 150, column: 1, scope: !2724)
!2733 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !190, file: !190, line: 150, type: !2734, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!788, !2727, !7}
!2736 = !{!2737, !2738}
!2737 = !DILocalVariable(name: "vec_", arg: 1, scope: !2733, file: !190, line: 150, type: !2727)
!2738 = !DILocalVariable(name: "ix_", arg: 2, scope: !2733, file: !190, line: 150, type: !7)
!2739 = !DILocation(line: 0, scope: !2733)
!2740 = !DILocation(line: 150, column: 1, scope: !2733)
!2741 = distinct !DISubprogram(name: "single_pred_edge", scope: !190, file: !190, line: 653, type: !2742, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!788, !2324}
!2744 = !{!2745}
!2745 = !DILocalVariable(name: "bb", arg: 1, scope: !2741, file: !190, line: 653, type: !2324)
!2746 = !DILocation(line: 0, scope: !2741)
!2747 = !DILocation(line: 655, column: 3, scope: !2741)
!2748 = !DILocation(line: 656, column: 10, scope: !2741)
!2749 = !DILocation(line: 656, column: 3, scope: !2741)
!2750 = distinct !DISubprogram(name: "gsi_end_p", scope: !433, file: !433, line: 4467, type: !2751, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2753)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!505, !2352}
!2753 = !{!2754}
!2754 = !DILocalVariable(name: "i", arg: 1, scope: !2750, file: !433, line: 4467, type: !2352)
!2755 = !DILocation(line: 4467, column: 33, scope: !2750)
!2756 = !DILocation(line: 4469, column: 12, scope: !2750)
!2757 = !DILocation(line: 4469, column: 16, scope: !2750)
!2758 = !DILocation(line: 4469, column: 10, scope: !2750)
!2759 = !DILocation(line: 4469, column: 3, scope: !2750)
!2760 = distinct !DISubprogram(name: "gsi_stmt", scope: !433, file: !433, line: 4501, type: !2761, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!808, !2352}
!2763 = !{!2764}
!2764 = !DILocalVariable(name: "i", arg: 1, scope: !2760, file: !433, line: 4501, type: !2352)
!2765 = !DILocation(line: 4501, column: 32, scope: !2760)
!2766 = !DILocation(line: 4503, column: 12, scope: !2760)
!2767 = !DILocation(line: 4503, column: 17, scope: !2760)
!2768 = !DILocation(line: 4503, column: 3, scope: !2760)
!2769 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2770, file: !2770, line: 427, type: !2771, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2776)
!2770 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!513, !2773}
!2773 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !839, line: 30, baseType: !2774)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !206, line: 1893, baseType: !850)
!2776 = !{!2777}
!2777 = !DILocalVariable(name: "use", arg: 1, scope: !2769, file: !2770, line: 427, type: !2773)
!2778 = !DILocation(line: 0, scope: !2769)
!2779 = !DILocation(line: 429, column: 17, scope: !2769)
!2780 = !DILocation(line: 429, column: 10, scope: !2769)
!2781 = !DILocation(line: 429, column: 3, scope: !2769)
!2782 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2770, file: !2770, line: 442, type: !2783, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!2773, !808, !506}
!2785 = !{!2786, !2787}
!2786 = !DILocalVariable(name: "gs", arg: 1, scope: !2782, file: !2770, line: 442, type: !808)
!2787 = !DILocalVariable(name: "i", arg: 2, scope: !2782, file: !2770, line: 442, type: !506)
!2788 = !DILocation(line: 0, scope: !2782)
!2789 = !DILocation(line: 444, column: 11, scope: !2782)
!2790 = !DILocation(line: 444, column: 35, scope: !2782)
!2791 = !DILocation(line: 444, column: 3, scope: !2782)
!2792 = distinct !DISubprogram(name: "gsi_next", scope: !433, file: !433, line: 4485, type: !2793, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2796)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{null, !2795}
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2796 = !{!2797}
!2797 = !DILocalVariable(name: "i", arg: 1, scope: !2792, file: !433, line: 4485, type: !2795)
!2798 = !DILocation(line: 0, scope: !2792)
!2799 = !DILocation(line: 4487, column: 15, scope: !2792)
!2800 = !DILocation(line: 4487, column: 20, scope: !2792)
!2801 = !DILocation(line: 4487, column: 10, scope: !2792)
!2802 = !DILocation(line: 4488, column: 1, scope: !2792)
!2803 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !433, file: !433, line: 3100, type: !2804, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2807)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!2806, !808, !7}
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!2807 = !{!2808, !2809}
!2808 = !DILocalVariable(name: "gs", arg: 1, scope: !2803, file: !433, line: 3100, type: !808)
!2809 = !DILocalVariable(name: "index", arg: 2, scope: !2803, file: !433, line: 3100, type: !7)
!2810 = !DILocation(line: 0, scope: !2803)
!2811 = !DILocation(line: 3103, column: 3, scope: !2803)
!2812 = !DILocation(line: 3104, column: 12, scope: !2803)
!2813 = !DILocation(line: 3104, column: 3, scope: !2803)
!2814 = distinct !DISubprogram(name: "gsi_start_bb", scope: !433, file: !433, line: 4418, type: !2815, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!2352, !771}
!2817 = !{!2818, !2819, !2820}
!2818 = !DILocalVariable(name: "bb", arg: 1, scope: !2814, file: !433, line: 4418, type: !771)
!2819 = !DILocalVariable(name: "i", scope: !2814, file: !433, line: 4420, type: !2352)
!2820 = !DILocalVariable(name: "seq", scope: !2814, file: !433, line: 4421, type: !798)
!2821 = !DILocation(line: 0, scope: !2814)
!2822 = !DILocation(line: 4420, column: 24, scope: !2814)
!2823 = !DILocation(line: 4423, column: 9, scope: !2814)
!2824 = !DILocation(line: 4424, column: 11, scope: !2814)
!2825 = !DILocation(line: 4424, column: 5, scope: !2814)
!2826 = !DILocation(line: 4424, column: 9, scope: !2814)
!2827 = !DILocation(line: 4425, column: 5, scope: !2814)
!2828 = !DILocation(line: 4425, column: 9, scope: !2814)
!2829 = !DILocation(line: 4426, column: 5, scope: !2814)
!2830 = !DILocation(line: 4426, column: 8, scope: !2814)
!2831 = !DILocation(line: 4429, column: 1, scope: !2814)
!2832 = distinct !DISubprogram(name: "gimple_has_volatile_ops", scope: !433, file: !433, line: 1477, type: !2833, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!505, !2211}
!2835 = !{!2836}
!2836 = !DILocalVariable(name: "stmt", arg: 1, scope: !2832, file: !433, line: 1477, type: !2211)
!2837 = !DILocation(line: 0, scope: !2832)
!2838 = !DILocation(line: 1479, column: 7, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2832, file: !433, line: 1479, column: 7)
!2840 = !DILocation(line: 1479, column: 7, scope: !2832)
!2841 = !DILocation(line: 1480, column: 25, scope: !2839)
!2842 = !DILocation(line: 1480, column: 12, scope: !2839)
!2843 = !DILocation(line: 1480, column: 5, scope: !2839)
!2844 = !DILocation(line: 0, scope: !2839)
!2845 = !DILocation(line: 1483, column: 1, scope: !2832)
!2846 = distinct !DISubprogram(name: "gimple_vuse", scope: !433, file: !433, line: 1365, type: !2847, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2849)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!513, !2211}
!2849 = !{!2850}
!2850 = !DILocalVariable(name: "g", arg: 1, scope: !2846, file: !433, line: 1365, type: !2211)
!2851 = !DILocation(line: 0, scope: !2846)
!2852 = !DILocation(line: 1367, column: 8, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2846, file: !433, line: 1367, column: 7)
!2854 = !DILocation(line: 1367, column: 7, scope: !2846)
!2855 = !DILocation(line: 1369, column: 23, scope: !2846)
!2856 = !DILocation(line: 1369, column: 3, scope: !2846)
!2857 = !DILocation(line: 1370, column: 1, scope: !2846)
!2858 = distinct !DISubprogram(name: "bb_seq", scope: !433, file: !433, line: 237, type: !2859, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!798, !2324}
!2861 = !{!2862}
!2862 = !DILocalVariable(name: "bb", arg: 1, scope: !2858, file: !433, line: 237, type: !2324)
!2863 = !DILocation(line: 0, scope: !2858)
!2864 = !DILocation(line: 239, column: 17, scope: !2858)
!2865 = !DILocation(line: 239, column: 23, scope: !2858)
!2866 = !DILocation(line: 239, column: 33, scope: !2858)
!2867 = !DILocation(line: 239, column: 43, scope: !2858)
!2868 = !DILocation(line: 239, column: 36, scope: !2858)
!2869 = !DILocation(line: 239, column: 10, scope: !2858)
!2870 = !DILocation(line: 239, column: 68, scope: !2858)
!2871 = !DILocation(line: 239, column: 3, scope: !2858)
!2872 = distinct !DISubprogram(name: "gimple_seq_first", scope: !433, file: !433, line: 159, type: !2873, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2878)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!803, !2875}
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !514, line: 67, baseType: !2876)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!2878 = !{!2879}
!2879 = !DILocalVariable(name: "s", arg: 1, scope: !2872, file: !433, line: 159, type: !2875)
!2880 = !DILocation(line: 0, scope: !2872)
!2881 = !DILocation(line: 161, column: 10, scope: !2872)
!2882 = !DILocation(line: 161, column: 17, scope: !2872)
!2883 = !DILocation(line: 161, column: 3, scope: !2872)
!2884 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !433, file: !433, line: 1283, type: !2833, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2885)
!2885 = !{!2886}
!2886 = !DILocalVariable(name: "g", arg: 1, scope: !2884, file: !433, line: 1283, type: !2211)
!2887 = !DILocation(line: 0, scope: !2884)
!2888 = !DILocation(line: 1285, column: 10, scope: !2884)
!2889 = !DILocation(line: 1285, column: 26, scope: !2884)
!2890 = !DILocation(line: 1285, column: 43, scope: !2884)
!2891 = !DILocation(line: 1285, column: 46, scope: !2884)
!2892 = !DILocation(line: 1285, column: 62, scope: !2884)
!2893 = !DILocation(line: 1285, column: 3, scope: !2884)
!2894 = distinct !DISubprogram(name: "recognize_single_bit_test", scope: !3, file: !3, line: 171, type: !2895, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!505, !808, !843, !843}
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2905}
!2898 = !DILocalVariable(name: "cond", arg: 1, scope: !2894, file: !3, line: 171, type: !808)
!2899 = !DILocalVariable(name: "name", arg: 2, scope: !2894, file: !3, line: 171, type: !843)
!2900 = !DILocalVariable(name: "bit", arg: 3, scope: !2894, file: !3, line: 171, type: !843)
!2901 = !DILocalVariable(name: "stmt", scope: !2894, file: !3, line: 173, type: !808)
!2902 = !DILocalVariable(name: "orig_name", scope: !2903, file: !3, line: 193, type: !513)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 192, column: 5)
!2904 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 189, column: 7)
!2905 = !DILocalVariable(name: "tmp", scope: !2906, file: !3, line: 245, type: !808)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 244, column: 5)
!2907 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 241, column: 7)
!2908 = !DILocation(line: 0, scope: !2894)
!2909 = !DILocation(line: 176, column: 7, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 176, column: 7)
!2911 = !DILocation(line: 176, column: 31, scope: !2910)
!2912 = !DILocation(line: 177, column: 7, scope: !2910)
!2913 = !DILocation(line: 177, column: 10, scope: !2910)
!2914 = !DILocation(line: 177, column: 45, scope: !2910)
!2915 = !DILocation(line: 178, column: 7, scope: !2910)
!2916 = !DILocation(line: 178, column: 26, scope: !2910)
!2917 = !DILocation(line: 178, column: 11, scope: !2910)
!2918 = !DILocation(line: 176, column: 7, scope: !2894)
!2919 = !DILocation(line: 180, column: 10, scope: !2894)
!2920 = !DILocation(line: 181, column: 8, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 181, column: 7)
!2922 = !DILocation(line: 181, column: 7, scope: !2894)
!2923 = !DILocation(line: 189, column: 7, scope: !2904)
!2924 = !DILocation(line: 189, column: 37, scope: !2904)
!2925 = !DILocation(line: 190, column: 7, scope: !2904)
!2926 = !DILocation(line: 190, column: 24, scope: !2904)
!2927 = !DILocation(line: 190, column: 10, scope: !2904)
!2928 = !DILocation(line: 191, column: 7, scope: !2904)
!2929 = !DILocation(line: 191, column: 10, scope: !2904)
!2930 = !DILocation(line: 191, column: 48, scope: !2904)
!2931 = !DILocation(line: 189, column: 7, scope: !2894)
!2932 = !DILocation(line: 193, column: 24, scope: !2903)
!2933 = !DILocation(line: 0, scope: !2903)
!2934 = !DILocation(line: 199, column: 7, scope: !2903)
!2935 = !DILocation(line: 199, column: 14, scope: !2903)
!2936 = !DILocation(line: 200, column: 7, scope: !2903)
!2937 = !DILocation(line: 200, column: 12, scope: !2903)
!2938 = !DILocation(line: 201, column: 5, scope: !2903)
!2939 = !DILocation(line: 201, column: 9, scope: !2903)
!2940 = !DILocation(line: 202, column: 12, scope: !2903)
!2941 = !DILocation(line: 202, column: 9, scope: !2903)
!2942 = !DILocation(line: 203, column: 4, scope: !2903)
!2943 = !DILocation(line: 203, column: 7, scope: !2903)
!2944 = !DILocation(line: 204, column: 9, scope: !2903)
!2945 = distinct !{!2945, !2934, !2944}
!2946 = !DILocation(line: 207, column: 11, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 207, column: 11)
!2948 = !DILocation(line: 208, column: 4, scope: !2947)
!2949 = !DILocation(line: 208, column: 7, scope: !2947)
!2950 = !DILocation(line: 208, column: 37, scope: !2947)
!2951 = !DILocation(line: 207, column: 11, scope: !2903)
!2952 = !DILocation(line: 211, column: 11, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 209, column: 2)
!2954 = !DILocation(line: 211, column: 9, scope: !2953)
!2955 = !DILocation(line: 212, column: 12, scope: !2953)
!2956 = !DILocation(line: 212, column: 10, scope: !2953)
!2957 = !DILocation(line: 213, column: 2, scope: !2953)
!2958 = !DILocation(line: 217, column: 11, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 215, column: 2)
!2960 = !DILocation(line: 217, column: 9, scope: !2959)
!2961 = !DILocation(line: 218, column: 12, scope: !2959)
!2962 = !DILocation(line: 218, column: 10, scope: !2959)
!2963 = !DILocation(line: 227, column: 7, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 227, column: 7)
!2965 = !DILocation(line: 227, column: 37, scope: !2964)
!2966 = !DILocation(line: 228, column: 7, scope: !2964)
!2967 = !DILocation(line: 228, column: 10, scope: !2964)
!2968 = !DILocation(line: 228, column: 48, scope: !2964)
!2969 = !DILocation(line: 229, column: 7, scope: !2964)
!2970 = !DILocation(line: 229, column: 25, scope: !2964)
!2971 = !DILocation(line: 229, column: 10, scope: !2964)
!2972 = !DILocation(line: 227, column: 7, scope: !2894)
!2973 = !DILocation(line: 231, column: 15, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 230, column: 5)
!2975 = !DILocation(line: 231, column: 13, scope: !2974)
!2976 = !DILocation(line: 232, column: 29, scope: !2974)
!2977 = !DILocation(line: 233, column: 19, scope: !2974)
!2978 = !DILocation(line: 233, column: 8, scope: !2974)
!2979 = !DILocation(line: 232, column: 14, scope: !2974)
!2980 = !DILocation(line: 232, column: 12, scope: !2974)
!2981 = !DILocation(line: 234, column: 7, scope: !2974)
!2982 = !DILocation(line: 241, column: 7, scope: !2907)
!2983 = !DILocation(line: 241, column: 37, scope: !2907)
!2984 = !DILocation(line: 242, column: 7, scope: !2907)
!2985 = !DILocation(line: 242, column: 10, scope: !2907)
!2986 = !DILocation(line: 242, column: 48, scope: !2907)
!2987 = !DILocation(line: 243, column: 7, scope: !2907)
!2988 = !DILocation(line: 243, column: 10, scope: !2907)
!2989 = !DILocation(line: 243, column: 48, scope: !2907)
!2990 = !DILocation(line: 241, column: 7, scope: !2894)
!2991 = !DILocation(line: 249, column: 13, scope: !2906)
!2992 = !DILocation(line: 0, scope: !2906)
!2993 = !DILocation(line: 250, column: 11, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 250, column: 11)
!2995 = !DILocation(line: 251, column: 4, scope: !2994)
!2996 = !DILocation(line: 251, column: 7, scope: !2994)
!2997 = !DILocation(line: 251, column: 36, scope: !2994)
!2998 = !DILocation(line: 252, column: 4, scope: !2994)
!2999 = !DILocation(line: 252, column: 21, scope: !2994)
!3000 = !DILocation(line: 252, column: 7, scope: !2994)
!3001 = !DILocation(line: 250, column: 11, scope: !2906)
!3002 = !DILocation(line: 254, column: 12, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 253, column: 2)
!3004 = !DILocation(line: 254, column: 10, scope: !3003)
!3005 = !DILocation(line: 255, column: 11, scope: !3003)
!3006 = !DILocation(line: 255, column: 9, scope: !3003)
!3007 = !DILocation(line: 256, column: 4, scope: !3003)
!3008 = !DILocation(line: 259, column: 13, scope: !2906)
!3009 = !DILocation(line: 260, column: 11, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 260, column: 11)
!3011 = !DILocation(line: 261, column: 4, scope: !3010)
!3012 = !DILocation(line: 261, column: 7, scope: !3010)
!3013 = !DILocation(line: 261, column: 36, scope: !3010)
!3014 = !DILocation(line: 262, column: 4, scope: !3010)
!3015 = !DILocation(line: 262, column: 21, scope: !3010)
!3016 = !DILocation(line: 262, column: 7, scope: !3010)
!3017 = !DILocation(line: 260, column: 11, scope: !2906)
!3018 = !DILocation(line: 264, column: 12, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 263, column: 2)
!3020 = !DILocation(line: 264, column: 10, scope: !3019)
!3021 = !DILocation(line: 265, column: 11, scope: !3019)
!3022 = !DILocation(line: 265, column: 9, scope: !3019)
!3023 = !DILocation(line: 266, column: 4, scope: !3019)
!3024 = !DILocation(line: 270, column: 3, scope: !2894)
!3025 = !DILocation(line: 271, column: 1, scope: !2894)
!3026 = distinct !DISubprogram(name: "update_stmt", scope: !433, file: !433, line: 1456, type: !3027, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !808}
!3029 = !{!3030}
!3030 = !DILocalVariable(name: "s", arg: 1, scope: !3026, file: !433, line: 1456, type: !808)
!3031 = !DILocation(line: 0, scope: !3026)
!3032 = !DILocation(line: 1458, column: 7, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3026, file: !433, line: 1458, column: 7)
!3034 = !DILocation(line: 1458, column: 7, scope: !3026)
!3035 = !DILocation(line: 1460, column: 7, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3033, file: !433, line: 1459, column: 5)
!3037 = !DILocation(line: 1461, column: 7, scope: !3036)
!3038 = !DILocation(line: 1462, column: 5, scope: !3036)
!3039 = !DILocation(line: 1463, column: 1, scope: !3026)
!3040 = distinct !DISubprogram(name: "gimple_cond_code", scope: !433, file: !433, line: 2221, type: !3041, scopeLine: 2222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!238, !2211}
!3043 = !{!3044}
!3044 = !DILocalVariable(name: "gs", arg: 1, scope: !3040, file: !433, line: 2221, type: !2211)
!3045 = !DILocation(line: 0, scope: !3040)
!3046 = !DILocation(line: 2224, column: 38, scope: !3040)
!3047 = !DILocation(line: 2224, column: 3, scope: !3040)
!3048 = distinct !DISubprogram(name: "gimple_cond_lhs", scope: !433, file: !433, line: 2241, type: !2847, scopeLine: 2242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3049)
!3049 = !{!3050}
!3050 = !DILocalVariable(name: "gs", arg: 1, scope: !3048, file: !433, line: 2241, type: !2211)
!3051 = !DILocation(line: 0, scope: !3048)
!3052 = !DILocation(line: 2244, column: 10, scope: !3048)
!3053 = !DILocation(line: 2244, column: 3, scope: !3048)
!3054 = distinct !DISubprogram(name: "gimple_cond_rhs", scope: !433, file: !433, line: 2271, type: !2847, scopeLine: 2272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3055)
!3055 = !{!3056}
!3056 = !DILocalVariable(name: "gs", arg: 1, scope: !3054, file: !433, line: 2271, type: !2211)
!3057 = !DILocation(line: 0, scope: !3054)
!3058 = !DILocation(line: 2274, column: 10, scope: !3054)
!3059 = !DILocation(line: 2274, column: 3, scope: !3054)
!3060 = distinct !DISubprogram(name: "is_gimple_assign", scope: !433, file: !433, line: 1677, type: !2833, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3061)
!3061 = !{!3062}
!3062 = !DILocalVariable(name: "gs", arg: 1, scope: !3060, file: !433, line: 1677, type: !2211)
!3063 = !DILocation(line: 0, scope: !3060)
!3064 = !DILocation(line: 1679, column: 10, scope: !3060)
!3065 = !DILocation(line: 1679, column: 27, scope: !3060)
!3066 = !DILocation(line: 1679, column: 3, scope: !3060)
!3067 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !433, file: !433, line: 1815, type: !3041, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3068)
!3068 = !{!3069, !3070}
!3069 = !DILocalVariable(name: "gs", arg: 1, scope: !3067, file: !433, line: 1815, type: !2211)
!3070 = !DILocalVariable(name: "code", scope: !3067, file: !433, line: 1817, type: !238)
!3071 = !DILocation(line: 0, scope: !3067)
!3072 = !DILocation(line: 1820, column: 10, scope: !3067)
!3073 = !DILocation(line: 1821, column: 7, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3067, file: !433, line: 1821, column: 7)
!3075 = !DILocation(line: 1821, column: 35, scope: !3074)
!3076 = !DILocation(line: 1821, column: 7, scope: !3067)
!3077 = !DILocation(line: 1822, column: 12, scope: !3074)
!3078 = !DILocation(line: 1822, column: 5, scope: !3074)
!3079 = !DILocation(line: 1824, column: 3, scope: !3067)
!3080 = distinct !DISubprogram(name: "gimple_assign_rhs2", scope: !433, file: !433, line: 1759, type: !2847, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3081)
!3081 = !{!3082}
!3082 = !DILocalVariable(name: "gs", arg: 1, scope: !3080, file: !433, line: 1759, type: !2211)
!3083 = !DILocation(line: 0, scope: !3080)
!3084 = !DILocation(line: 1763, column: 7, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3080, file: !433, line: 1763, column: 7)
!3086 = !DILocation(line: 1763, column: 27, scope: !3085)
!3087 = !DILocation(line: 1763, column: 7, scope: !3080)
!3088 = !DILocation(line: 1764, column: 12, scope: !3085)
!3089 = !DILocation(line: 1764, column: 5, scope: !3085)
!3090 = !DILocation(line: 0, scope: !3085)
!3091 = !DILocation(line: 1767, column: 1, scope: !3080)
!3092 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !433, file: !433, line: 1727, type: !2847, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3093)
!3093 = !{!3094}
!3094 = !DILocalVariable(name: "gs", arg: 1, scope: !3092, file: !433, line: 1727, type: !2211)
!3095 = !DILocation(line: 0, scope: !3092)
!3096 = !DILocation(line: 1730, column: 10, scope: !3092)
!3097 = !DILocation(line: 1730, column: 3, scope: !3092)
!3098 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !433, file: !433, line: 1694, type: !2847, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3099)
!3099 = !{!3100}
!3100 = !DILocalVariable(name: "gs", arg: 1, scope: !3098, file: !433, line: 1694, type: !2211)
!3101 = !DILocation(line: 0, scope: !3098)
!3102 = !DILocation(line: 1697, column: 10, scope: !3098)
!3103 = !DILocation(line: 1697, column: 3, scope: !3098)
!3104 = distinct !DISubprogram(name: "get_name_for_bit_test", scope: !3, file: !3, line: 145, type: !3105, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!513, !513}
!3107 = !{!3108, !3109}
!3108 = !DILocalVariable(name: "candidate", arg: 1, scope: !3104, file: !3, line: 145, type: !513)
!3109 = !DILocalVariable(name: "def_stmt", scope: !3110, file: !3, line: 152, type: !808)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !3, line: 151, column: 5)
!3111 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 149, column: 7)
!3112 = !DILocation(line: 0, scope: !3104)
!3113 = !DILocation(line: 149, column: 7, scope: !3111)
!3114 = !DILocation(line: 149, column: 29, scope: !3111)
!3115 = !DILocation(line: 150, column: 7, scope: !3111)
!3116 = !DILocation(line: 150, column: 10, scope: !3111)
!3117 = !DILocation(line: 149, column: 7, scope: !3104)
!3118 = !DILocation(line: 152, column: 25, scope: !3110)
!3119 = !DILocation(line: 0, scope: !3110)
!3120 = !DILocation(line: 153, column: 11, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 153, column: 11)
!3122 = !DILocation(line: 154, column: 4, scope: !3121)
!3123 = !DILocation(line: 154, column: 7, scope: !3121)
!3124 = !DILocation(line: 153, column: 11, scope: !3110)
!3125 = !DILocation(line: 156, column: 8, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 156, column: 8)
!3127 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 155, column: 2)
!3128 = !DILocation(line: 157, column: 11, scope: !3126)
!3129 = !DILocation(line: 157, column: 8, scope: !3126)
!3130 = !DILocation(line: 156, column: 8, scope: !3127)
!3131 = !DILocation(line: 158, column: 13, scope: !3126)
!3132 = !DILocation(line: 158, column: 6, scope: !3126)
!3133 = !DILocation(line: 162, column: 3, scope: !3104)
!3134 = !DILocation(line: 163, column: 1, scope: !3104)
!3135 = distinct !DISubprogram(name: "gimple_expr_code", scope: !433, file: !433, line: 1438, type: !3041, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3136)
!3136 = !{!3137, !3138}
!3137 = !DILocalVariable(name: "stmt", arg: 1, scope: !3135, file: !433, line: 1438, type: !2211)
!3138 = !DILocalVariable(name: "code", scope: !3135, file: !433, line: 1440, type: !432)
!3139 = !DILocation(line: 0, scope: !3135)
!3140 = !DILocation(line: 1440, column: 27, scope: !3135)
!3141 = !DILocation(line: 1441, column: 29, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3135, file: !433, line: 1441, column: 7)
!3143 = !DILocation(line: 1442, column: 42, scope: !3142)
!3144 = !DILocation(line: 1442, column: 5, scope: !3142)
!3145 = !DILocation(line: 1446, column: 5, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3142, file: !433, line: 1443, column: 12)
!3147 = !DILocation(line: 1448, column: 5, scope: !3135)
!3148 = !DILocation(line: 1450, column: 1, scope: !3135)
!3149 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !433, file: !433, line: 1686, type: !3150, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3152)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!471, !238}
!3152 = !{!3153}
!3153 = !DILocalVariable(name: "code", arg: 1, scope: !3149, file: !433, line: 1686, type: !238)
!3154 = !DILocation(line: 0, scope: !3149)
!3155 = !DILocation(line: 1688, column: 34, scope: !3149)
!3156 = !DILocation(line: 1688, column: 10, scope: !3149)
!3157 = !DILocation(line: 1688, column: 3, scope: !3149)
!3158 = distinct !DISubprogram(name: "gimple_num_ops", scope: !433, file: !433, line: 1596, type: !3159, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3161)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!7, !2211}
!3161 = !{!3162}
!3162 = !DILocalVariable(name: "gs", arg: 1, scope: !3158, file: !433, line: 1596, type: !2211)
!3163 = !DILocation(line: 0, scope: !3158)
!3164 = !DILocation(line: 1598, column: 21, scope: !3158)
!3165 = !DILocation(line: 1598, column: 3, scope: !3158)
!3166 = distinct !DISubprogram(name: "gimple_op", scope: !433, file: !433, line: 1631, type: !3167, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3169)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!513, !2211, !7}
!3169 = !{!3170, !3171}
!3170 = !DILocalVariable(name: "gs", arg: 1, scope: !3166, file: !433, line: 1631, type: !2211)
!3171 = !DILocalVariable(name: "i", arg: 2, scope: !3166, file: !433, line: 1631, type: !7)
!3172 = !DILocation(line: 0, scope: !3166)
!3173 = !DILocation(line: 1633, column: 7, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3166, file: !433, line: 1633, column: 7)
!3175 = !DILocation(line: 1633, column: 7, scope: !3166)
!3176 = !DILocation(line: 1638, column: 14, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3174, file: !433, line: 1634, column: 5)
!3178 = !DILocation(line: 1638, column: 7, scope: !3177)
!3179 = !DILocation(line: 0, scope: !3174)
!3180 = !DILocation(line: 1642, column: 1, scope: !3166)
!3181 = distinct !DISubprogram(name: "gimple_has_ops", scope: !433, file: !433, line: 1274, type: !2833, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3182)
!3182 = !{!3183}
!3183 = !DILocalVariable(name: "g", arg: 1, scope: !3181, file: !433, line: 1274, type: !2211)
!3184 = !DILocation(line: 0, scope: !3181)
!3185 = !DILocation(line: 1276, column: 10, scope: !3181)
!3186 = !DILocation(line: 1276, column: 26, scope: !3181)
!3187 = !DILocation(line: 1276, column: 41, scope: !3181)
!3188 = !DILocation(line: 1276, column: 44, scope: !3181)
!3189 = !DILocation(line: 1276, column: 60, scope: !3181)
!3190 = !DILocation(line: 1276, column: 3, scope: !3181)
!3191 = distinct !DISubprogram(name: "gimple_ops", scope: !433, file: !433, line: 1614, type: !3192, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!843, !808}
!3194 = !{!3195, !3196}
!3195 = !DILocalVariable(name: "gs", arg: 1, scope: !3191, file: !433, line: 1614, type: !808)
!3196 = !DILocalVariable(name: "off", scope: !3191, file: !433, line: 1616, type: !954)
!3197 = !DILocation(line: 0, scope: !3191)
!3198 = !DILocation(line: 1621, column: 28, scope: !3191)
!3199 = !DILocation(line: 1621, column: 9, scope: !3191)
!3200 = !DILocation(line: 1622, column: 3, scope: !3191)
!3201 = !DILocation(line: 1624, column: 20, scope: !3191)
!3202 = !DILocation(line: 1624, column: 32, scope: !3191)
!3203 = !DILocation(line: 1624, column: 10, scope: !3191)
!3204 = !DILocation(line: 1624, column: 3, scope: !3191)
!3205 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !433, file: !433, line: 1073, type: !3206, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!477, !808}
!3208 = !{!3209}
!3209 = !DILocalVariable(name: "gs", arg: 1, scope: !3205, file: !433, line: 1073, type: !808)
!3210 = !DILocation(line: 0, scope: !3205)
!3211 = !DILocation(line: 1075, column: 24, scope: !3205)
!3212 = !DILocation(line: 1075, column: 10, scope: !3205)
!3213 = !DILocation(line: 1075, column: 3, scope: !3205)
!3214 = distinct !DISubprogram(name: "gss_for_code", scope: !433, file: !433, line: 1061, type: !3215, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!477, !432}
!3217 = !{!3218}
!3218 = !DILocalVariable(name: "code", arg: 1, scope: !3214, file: !433, line: 1061, type: !432)
!3219 = !DILocation(line: 0, scope: !3214)
!3220 = !DILocation(line: 1066, column: 10, scope: !3214)
!3221 = !DILocation(line: 1066, column: 3, scope: !3214)
!3222 = distinct !DISubprogram(name: "has_single_use", scope: !2770, file: !2770, line: 350, type: !3223, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3228)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!505, !3225}
!3225 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !514, line: 59, baseType: !3226)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!3228 = !{!3229, !3230}
!3229 = !DILocalVariable(name: "var", arg: 1, scope: !3222, file: !2770, line: 350, type: !3225)
!3230 = !DILocalVariable(name: "ptr", scope: !3222, file: !2770, line: 352, type: !3231)
!3231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3232)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2775)
!3234 = !DILocation(line: 0, scope: !3222)
!3235 = !DILocation(line: 352, column: 42, scope: !3222)
!3236 = !DILocation(line: 355, column: 19, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3222, file: !2770, line: 355, column: 7)
!3238 = !DILocation(line: 355, column: 11, scope: !3237)
!3239 = !DILocation(line: 355, column: 7, scope: !3222)
!3240 = !DILocation(line: 359, column: 25, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3222, file: !2770, line: 359, column: 7)
!3242 = !DILocation(line: 359, column: 11, scope: !3241)
!3243 = !DILocation(line: 359, column: 7, scope: !3222)
!3244 = !DILocation(line: 360, column: 30, scope: !3241)
!3245 = !DILocation(line: 360, column: 13, scope: !3241)
!3246 = !DILocation(line: 360, column: 12, scope: !3241)
!3247 = !DILocation(line: 360, column: 5, scope: !3241)
!3248 = !DILocation(line: 363, column: 8, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3222, file: !2770, line: 363, column: 7)
!3250 = !DILocation(line: 363, column: 7, scope: !3222)
!3251 = !DILocation(line: 366, column: 10, scope: !3222)
!3252 = !DILocation(line: 366, column: 3, scope: !3222)
!3253 = !DILocation(line: 367, column: 1, scope: !3222)
!3254 = distinct !DISubprogram(name: "is_gimple_debug", scope: !433, file: !433, line: 3249, type: !2833, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3255)
!3255 = !{!3256}
!3256 = !DILocalVariable(name: "gs", arg: 1, scope: !3254, file: !433, line: 3249, type: !2211)
!3257 = !DILocation(line: 0, scope: !3254)
!3258 = !DILocation(line: 3251, column: 10, scope: !3254)
!3259 = !DILocation(line: 3251, column: 27, scope: !3254)
!3260 = !DILocation(line: 3251, column: 3, scope: !3254)
!3261 = distinct !DISubprogram(name: "recognize_bits_test", scope: !3, file: !3, line: 279, type: !2895, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3262)
!3262 = !{!3263, !3264, !3265, !3266}
!3263 = !DILocalVariable(name: "cond", arg: 1, scope: !3261, file: !3, line: 279, type: !808)
!3264 = !DILocalVariable(name: "name", arg: 2, scope: !3261, file: !3, line: 279, type: !843)
!3265 = !DILocalVariable(name: "bits", arg: 3, scope: !3261, file: !3, line: 279, type: !843)
!3266 = !DILocalVariable(name: "stmt", scope: !3261, file: !3, line: 281, type: !808)
!3267 = !DILocation(line: 0, scope: !3261)
!3268 = !DILocation(line: 284, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 284, column: 7)
!3270 = !DILocation(line: 284, column: 31, scope: !3269)
!3271 = !DILocation(line: 285, column: 7, scope: !3269)
!3272 = !DILocation(line: 285, column: 10, scope: !3269)
!3273 = !DILocation(line: 285, column: 45, scope: !3269)
!3274 = !DILocation(line: 286, column: 7, scope: !3269)
!3275 = !DILocation(line: 286, column: 26, scope: !3269)
!3276 = !DILocation(line: 286, column: 11, scope: !3269)
!3277 = !DILocation(line: 284, column: 7, scope: !3261)
!3278 = !DILocation(line: 288, column: 10, scope: !3261)
!3279 = !DILocation(line: 289, column: 8, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 289, column: 7)
!3281 = !DILocation(line: 290, column: 7, scope: !3280)
!3282 = !DILocation(line: 290, column: 10, scope: !3280)
!3283 = !DILocation(line: 290, column: 40, scope: !3280)
!3284 = !DILocation(line: 289, column: 7, scope: !3261)
!3285 = !DILocation(line: 293, column: 34, scope: !3261)
!3286 = !DILocation(line: 293, column: 11, scope: !3261)
!3287 = !DILocation(line: 293, column: 9, scope: !3261)
!3288 = !DILocation(line: 294, column: 11, scope: !3261)
!3289 = !DILocation(line: 294, column: 9, scope: !3261)
!3290 = !DILocation(line: 296, column: 3, scope: !3261)
!3291 = !DILocation(line: 297, column: 1, scope: !3261)
