; ModuleID = 'tree-affine.bc'
source_filename = "tree-affine.c"
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.affine_tree_combination = type { %union.tree_node*, %struct.double_int, i32, [8 x %struct.aff_comb_elt], %union.tree_node* }
%struct.double_int = type { i64, i64 }
%struct.aff_comb_elt = type { %union.tree_node*, %struct.double_int }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.pointer_map_t = type opaque
%struct.name_expansion = type { %struct.affine_tree_combination, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@sizetype_tab = external dso_local local_unnamed_addr global [4 x %union.tree_node*], align 16
@.str = private unnamed_addr constant [14 x i8] c"tree-affine.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@flag_wrapv = external dso_local local_unnamed_addr global i32, align 4
@flag_trapv = external dso_local local_unnamed_addr global i32, align 4
@flag_strict_overflow = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"{\0A  type = \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\0A  offset = \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\0A  elements = {\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"    [%d] = \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c", \0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0A  }\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"\0A  rest = \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0A}\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1749 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1762, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1763, metadata !DIExpression()), !dbg !1764
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1765
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1766
  ret i32 %call, !dbg !1767
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1768 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1772
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1773
  ret i32 %call, !dbg !1774
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1775 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1830, metadata !DIExpression()), !dbg !1831
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1832
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1832
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1832
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1832
  %cmp = icmp uge i8* %0, %1, !dbg !1832
  %conv1 = zext i1 %cmp to i64, !dbg !1832
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1832
  %tobool = icmp eq i64 %expval, 0, !dbg !1832
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1832

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1832
  br label %cond.end, !dbg !1832

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1832
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1832
  %2 = load i8, i8* %0, align 1, !dbg !1832
  %conv3 = zext i8 %2 to i32, !dbg !1832
  br label %cond.end, !dbg !1832

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1832
  ret i32 %cond, !dbg !1833
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1834 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1836, metadata !DIExpression()), !dbg !1837
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1838
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1838
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1838
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1838
  %cmp = icmp uge i8* %0, %1, !dbg !1838
  %conv1 = zext i1 %cmp to i64, !dbg !1838
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1838
  %tobool = icmp eq i64 %expval, 0, !dbg !1838
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1838

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1838
  br label %cond.end, !dbg !1838

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1838
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1838
  %2 = load i8, i8* %0, align 1, !dbg !1838
  %conv3 = zext i8 %2 to i32, !dbg !1838
  br label %cond.end, !dbg !1838

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1838
  ret i32 %cond, !dbg !1839
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1840 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1841
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1841
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1841
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1841
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1841
  %cmp = icmp uge i8* %1, %2, !dbg !1841
  %conv1 = zext i1 %cmp to i64, !dbg !1841
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1841
  %tobool = icmp eq i64 %expval, 0, !dbg !1841
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1841

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1841
  br label %cond.end, !dbg !1841

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1841
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1841
  %3 = load i8, i8* %1, align 1, !dbg !1841
  %conv3 = zext i8 %3 to i32, !dbg !1841
  br label %cond.end, !dbg !1841

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1841
  ret i32 %cond, !dbg !1842
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1843 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1847, metadata !DIExpression()), !dbg !1848
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1849
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1850
  ret i32 %call, !dbg !1851
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1852 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1856, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1857, metadata !DIExpression()), !dbg !1858
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1859
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1859
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1859
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1859
  %cmp = icmp uge i8* %0, %1, !dbg !1859
  %conv1 = zext i1 %cmp to i64, !dbg !1859
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1859
  %tobool = icmp eq i64 %expval, 0, !dbg !1859
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1859

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1859
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1859
  br label %cond.end, !dbg !1859

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1859
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1859
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1859
  store i8 %conv2, i8* %0, align 1, !dbg !1859
  %conv6 = and i32 %__c, 255, !dbg !1859
  br label %cond.end, !dbg !1859

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1859
  ret i32 %cond, !dbg !1860
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1861 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1863, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1864, metadata !DIExpression()), !dbg !1865
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1866
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1866
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1866
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1866
  %cmp = icmp uge i8* %0, %1, !dbg !1866
  %conv1 = zext i1 %cmp to i64, !dbg !1866
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1866
  %tobool = icmp eq i64 %expval, 0, !dbg !1866
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1866

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1866
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1866
  br label %cond.end, !dbg !1866

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1866
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1866
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1866
  store i8 %conv2, i8* %0, align 1, !dbg !1866
  %conv6 = and i32 %__c, 255, !dbg !1866
  br label %cond.end, !dbg !1866

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1866
  ret i32 %cond, !dbg !1867
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1868 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1870, metadata !DIExpression()), !dbg !1871
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1872
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1872
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1872
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1872
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1872
  %cmp = icmp uge i8* %1, %2, !dbg !1872
  %conv1 = zext i1 %cmp to i64, !dbg !1872
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1872
  %tobool = icmp eq i64 %expval, 0, !dbg !1872
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1872

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1872
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1872
  br label %cond.end, !dbg !1872

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1872
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1872
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1872
  store i8 %conv4, i8* %1, align 1, !dbg !1872
  %conv6 = and i32 %__c, 255, !dbg !1872
  br label %cond.end, !dbg !1872

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1872
  ret i32 %cond, !dbg !1873
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1874 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1880, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1881, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1882, metadata !DIExpression()), !dbg !1883
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1884
  ret i64 %call, !dbg !1885
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1886 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1888, metadata !DIExpression()), !dbg !1889
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1890
  %0 = load i32, i32* %_flags, align 8, !dbg !1890
  %and = lshr i32 %0, 4, !dbg !1890
  %and.lobit = and i32 %and, 1, !dbg !1890
  ret i32 %and.lobit, !dbg !1891
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1892 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1894, metadata !DIExpression()), !dbg !1895
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1896
  %0 = load i32, i32* %_flags, align 8, !dbg !1896
  %and = lshr i32 %0, 5, !dbg !1896
  %and.lobit = and i32 %and, 1, !dbg !1896
  ret i32 %and.lobit, !dbg !1897
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1898 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1901, metadata !DIExpression()), !dbg !1902
  %__c.off = add i32 %__c, 128, !dbg !1903
  %0 = icmp ult i32 %__c.off, 384, !dbg !1903
  br i1 %0, label %cond.true, label %cond.end, !dbg !1903

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1904
  %1 = load i32*, i32** %call, align 8, !dbg !1905
  %idxprom = sext i32 %__c to i64, !dbg !1906
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1906
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1906
  br label %cond.end, !dbg !1907

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1907
  ret i32 %cond, !dbg !1908
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1909 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1911, metadata !DIExpression()), !dbg !1912
  %__c.off = add i32 %__c, 128, !dbg !1913
  %0 = icmp ult i32 %__c.off, 384, !dbg !1913
  br i1 %0, label %cond.true, label %cond.end, !dbg !1913

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1914
  %1 = load i32*, i32** %call, align 8, !dbg !1915
  %idxprom = sext i32 %__c to i64, !dbg !1916
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1916
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1916
  br label %cond.end, !dbg !1917

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1917
  ret i32 %cond, !dbg !1918
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1919 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1924, metadata !DIExpression()), !dbg !1925
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1926
  %conv = trunc i64 %call to i32, !dbg !1927
  ret i32 %conv, !dbg !1928
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1929 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1933, metadata !DIExpression()), !dbg !1934
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1935
  ret i64 %call, !dbg !1936
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1937 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1942, metadata !DIExpression()), !dbg !1943
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1944
  ret i64 %call, !dbg !1945
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1946 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1952, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1953, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1954, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1955, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1956, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 0, metadata !1957, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1958, metadata !DIExpression()), !dbg !1962
  br label %while.cond, !dbg !1963

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1964
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1962
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1958, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1957, metadata !DIExpression()), !dbg !1962
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1965
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1963

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1966
  %div = lshr i64 %add, 1, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %div, metadata !1959, metadata !DIExpression()), !dbg !1962
  %mul = mul i64 %div, %__size, !dbg !1969
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1970
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1960, metadata !DIExpression()), !dbg !1962
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %call, metadata !1961, metadata !DIExpression()), !dbg !1962
  %cmp1 = icmp slt i32 %call, 0, !dbg !1972
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1974

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1975
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1977

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1957, metadata !DIExpression()), !dbg !1962
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1962
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1962
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1958, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1957, metadata !DIExpression()), !dbg !1962
  br label %while.cond, !dbg !1963, !llvm.loop !1979

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1962
  ret i8* %retval.0, !dbg !1981
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1982 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1988, metadata !DIExpression()), !dbg !1989
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1990
  ret double %call, !dbg !1991
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1992 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2001, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 %base, metadata !2003, metadata !DIExpression()), !dbg !2004
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2005
  ret i64 %call, !dbg !2006
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2007 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2013, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2014, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i32 %base, metadata !2015, metadata !DIExpression()), !dbg !2016
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2017
  ret i64 %call, !dbg !2018
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2019 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2030, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2031, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i32 %base, metadata !2032, metadata !DIExpression()), !dbg !2033
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2034
  ret i64 %call, !dbg !2035
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2036 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2040, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2041, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i32 %base, metadata !2042, metadata !DIExpression()), !dbg !2043
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2044
  ret i64 %call, !dbg !2045
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2046 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2086, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2087, metadata !DIExpression()), !dbg !2088
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2089
  ret i32 %call, !dbg !2090
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2091 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2093, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2094, metadata !DIExpression()), !dbg !2095
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2096
  ret i32 %call, !dbg !2097
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2098 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2102, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2103, metadata !DIExpression()), !dbg !2104
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2105
  ret i32 %call, !dbg !2106
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2107 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2111, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2112, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2113, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2114, metadata !DIExpression()), !dbg !2115
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2116
  ret i32 %call, !dbg !2117
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2118 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2122, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2123, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2124, metadata !DIExpression()), !dbg !2125
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2124, metadata !DIExpression(DW_OP_deref)), !dbg !2125
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2126
  ret i32 %call, !dbg !2127
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2128 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2132, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2133, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2134, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2135, metadata !DIExpression()), !dbg !2136
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2135, metadata !DIExpression(DW_OP_deref)), !dbg !2136
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2137
  ret i32 %call, !dbg !2138
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2139 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2163, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2164, metadata !DIExpression()), !dbg !2165
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2166
  ret i32 %call, !dbg !2167
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2168 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2170, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2171, metadata !DIExpression()), !dbg !2172
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2173
  ret i32 %call, !dbg !2174
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2175 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2179, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2180, metadata !DIExpression()), !dbg !2181
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2182
  ret i32 %call, !dbg !2183
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2184 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2188, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2189, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2190, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2191, metadata !DIExpression()), !dbg !2192
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2193
  ret i32 %call, !dbg !2194
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_ext_for_comb(i64 %cst.coerce0, i64 %cst.coerce1, %struct.affine_tree_combination* %comb) local_unnamed_addr #4 !dbg !2195 {
entry:
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !2201, metadata !DIExpression()), !dbg !2202
  %0 = bitcast %struct.affine_tree_combination* %comb to %struct.tree_type**, !dbg !2203
  %1 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !2203
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1, i64 0, i32 6, !dbg !2203
  %bf.load = load i32, i32* %precision, align 4, !dbg !2203
  %bf.clear = and i32 %bf.load, 1023, !dbg !2203
  %call = tail call { i64, i64 } @double_int_sext(i64 %cst.coerce0, i64 %cst.coerce1, i32 %bf.clear) #6, !dbg !2204
  ret { i64, i64 } %call, !dbg !2205
}

declare dso_local { i64, i64 } @double_int_sext(i64, i64, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @aff_combination_const(%struct.affine_tree_combination* %comb, %union.tree_node* %type, i64 %cst.coerce0, i64 %cst.coerce1) local_unnamed_addr #4 !dbg !2206 {
entry:
  %tmp = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !2210, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2211, metadata !DIExpression()), !dbg !2213
  tail call fastcc void @aff_combination_zero(%struct.affine_tree_combination* %comb, %union.tree_node* %type) #7, !dbg !2214
  %offset = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 1, !dbg !2215
  %0 = bitcast %struct.double_int* %tmp to i8*, !dbg !2216
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2216
  %call = tail call { i64, i64 } @double_int_ext_for_comb(i64 %cst.coerce0, i64 %cst.coerce1, %struct.affine_tree_combination* %comb) #7, !dbg !2216
  %1 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !2216
  %2 = extractvalue { i64, i64 } %call, 0, !dbg !2216
  store i64 %2, i64* %1, align 8, !dbg !2216
  %3 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !2216
  %4 = extractvalue { i64, i64 } %call, 1, !dbg !2216
  store i64 %4, i64* %3, align 8, !dbg !2216
  %5 = bitcast %struct.double_int* %offset to i8*, !dbg !2216
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %0, i64 16, i1 false), !dbg !2216
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2216
  ret void, !dbg !2217
}

; Function Attrs: nounwind uwtable
define internal fastcc void @aff_combination_zero(%struct.affine_tree_combination* %comb, %union.tree_node* %type) unnamed_addr #4 !dbg !2218 {
entry:
  %tmp = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !2222, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2223, metadata !DIExpression()), !dbg !2224
  %type1 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 0, !dbg !2225
  store %union.tree_node* %type, %union.tree_node** %type1, align 8, !dbg !2226
  %offset = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 1, !dbg !2227
  %0 = bitcast %struct.double_int* %tmp to i8*, !dbg !2228
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2228
  %call = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 0) #7, !dbg !2228
  %1 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !2228
  %2 = extractvalue { i64, i64 } %call, 0, !dbg !2228
  store i64 %2, i64* %1, align 8, !dbg !2228
  %3 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !2228
  %4 = extractvalue { i64, i64 } %call, 1, !dbg !2228
  store i64 %4, i64* %3, align 8, !dbg !2228
  %5 = bitcast %struct.double_int* %offset to i8*, !dbg !2228
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %0, i64 16, i1 false), !dbg !2228
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2228
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 2, !dbg !2229
  store i32 0, i32* %n, align 8, !dbg !2230
  %rest = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 4, !dbg !2231
  store %union.tree_node* null, %union.tree_node** %rest, align 8, !dbg !2232
  ret void, !dbg !2233
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @aff_combination_elt(%struct.affine_tree_combination* %comb, %union.tree_node* %type, %union.tree_node* %elt) local_unnamed_addr #4 !dbg !2234 {
entry:
  %tmp = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !2238, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2239, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata %union.tree_node* %elt, metadata !2240, metadata !DIExpression()), !dbg !2241
  tail call fastcc void @aff_combination_zero(%struct.affine_tree_combination* %comb, %union.tree_node* %type) #7, !dbg !2242
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 2, !dbg !2243
  store i32 1, i32* %n, align 8, !dbg !2244
  %val = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 0, i32 0, !dbg !2245
  store %union.tree_node* %elt, %union.tree_node** %val, align 8, !dbg !2246
  %coef = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 0, i32 1, !dbg !2247
  %0 = bitcast %struct.double_int* %tmp to i8*, !dbg !2248
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2248
  %call = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 1) #7, !dbg !2248
  %1 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !2248
  %2 = extractvalue { i64, i64 } %call, 0, !dbg !2248
  store i64 %2, i64* %1, align 8, !dbg !2248
  %3 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !2248
  %4 = extractvalue { i64, i64 } %call, 1, !dbg !2248
  store i64 %4, i64* %3, align 8, !dbg !2248
  %5 = bitcast %struct.double_int* %coef to i8*, !dbg !2248
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %0, i64 16, i1 false), !dbg !2248
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2248
  ret void, !dbg !2249
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i64, i64 } @shwi_to_double_int(i64 %cst) unnamed_addr #0 !dbg !2250 {
entry:
  call void @llvm.dbg.value(metadata i64 %cst, metadata !2254, metadata !DIExpression()), !dbg !2256
  %cst.lobit = ashr i64 %cst, 63, !dbg !2257
  %0 = insertvalue { i64, i64 } undef, i64 %cst, 0, !dbg !2258
  %1 = insertvalue { i64, i64 } %0, i64 %cst.lobit, 1, !dbg !2258
  ret { i64, i64 } %1, !dbg !2258
}

; Function Attrs: nounwind uwtable
define dso_local void @aff_combination_scale(%struct.affine_tree_combination* %comb, i64 %scale.coerce0, i64 %scale.coerce1) local_unnamed_addr #4 !dbg !2259 {
entry:
  %scale = alloca %struct.double_int, align 8
  %tmp = alloca %struct.double_int, align 8
  %tmp6 = alloca %struct.double_int, align 8
  %new_coef = alloca %struct.double_int, align 8
  %tmp10 = alloca %struct.double_int, align 8
  %0 = getelementptr inbounds %struct.double_int, %struct.double_int* %scale, i64 0, i32 0
  %1 = getelementptr inbounds %struct.double_int, %struct.double_int* %scale, i64 0, i32 1
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !2263, metadata !DIExpression()), !dbg !2274
  %2 = bitcast %struct.double_int* %tmp to i8*, !dbg !2275
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2275
  %call = tail call { i64, i64 } @double_int_ext_for_comb(i64 %scale.coerce0, i64 %scale.coerce1, %struct.affine_tree_combination* %comb) #7, !dbg !2275
  %3 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !2275
  %4 = extractvalue { i64, i64 } %call, 0, !dbg !2275
  store i64 %4, i64* %3, align 8, !dbg !2275
  %5 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !2275
  %6 = extractvalue { i64, i64 } %call, 1, !dbg !2275
  store i64 %6, i64* %5, align 8, !dbg !2275
  %7 = bitcast %struct.double_int* %scale to i8*, !dbg !2275
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !2275
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2275
  %8 = load i64, i64* %0, align 8, !dbg !2276
  %9 = load i64, i64* %1, align 8, !dbg !2276
  %call1 = tail call fastcc zeroext i8 @double_int_one_p(i64 %8, i64 %9) #7, !dbg !2276
  %tobool = icmp eq i8 %call1, 0, !dbg !2276
  br i1 %tobool, label %if.end, label %cleanup.cont69, !dbg !2278

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %8, i64 %9) #7, !dbg !2279
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2279
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2281

if.then4:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 0, !dbg !2282
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2282
  tail call fastcc void @aff_combination_zero(%struct.affine_tree_combination* %comb, %union.tree_node* %10) #7, !dbg !2284
  br label %cleanup.cont69, !dbg !2285

if.end5:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 1, !dbg !2286
  %11 = bitcast %struct.double_int* %tmp6 to i8*, !dbg !2287
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #8, !dbg !2287
  %12 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 1, i32 0, !dbg !2288
  %13 = load i64, i64* %12, align 8, !dbg !2288
  %14 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 1, i32 1, !dbg !2288
  %15 = load i64, i64* %14, align 8, !dbg !2288
  %call8 = tail call { i64, i64 } @double_int_mul(i64 %8, i64 %9, i64 %13, i64 %15) #6, !dbg !2288
  %16 = extractvalue { i64, i64 } %call8, 0, !dbg !2288
  %17 = extractvalue { i64, i64 } %call8, 1, !dbg !2288
  %call9 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %16, i64 %17, %struct.affine_tree_combination* %comb) #7, !dbg !2287
  %18 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp6, i64 0, i32 0, !dbg !2287
  %19 = extractvalue { i64, i64 } %call9, 0, !dbg !2287
  store i64 %19, i64* %18, align 8, !dbg !2287
  %20 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp6, i64 0, i32 1, !dbg !2287
  %21 = extractvalue { i64, i64 } %call9, 1, !dbg !2287
  store i64 %21, i64* %20, align 8, !dbg !2287
  %22 = bitcast %struct.double_int* %offset to i8*, !dbg !2287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %22, i8* nonnull align 8 %11, i64 16, i1 false), !dbg !2287
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #8, !dbg !2287
  call void @llvm.dbg.value(metadata i32 0, metadata !2265, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 0, metadata !2266, metadata !DIExpression()), !dbg !2274
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 2, !dbg !2289
  %23 = bitcast %struct.double_int* %new_coef to i8*, !dbg !2290
  %24 = bitcast %struct.double_int* %tmp10 to i8*, !dbg !2290
  %25 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp10, i64 0, i32 0, !dbg !2290
  %26 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp10, i64 0, i32 1, !dbg !2290
  %27 = getelementptr inbounds %struct.double_int, %struct.double_int* %new_coef, i64 0, i32 0, !dbg !2291
  %28 = getelementptr inbounds %struct.double_int, %struct.double_int* %new_coef, i64 0, i32 1, !dbg !2291
  br label %for.cond, !dbg !2293

for.cond:                                         ; preds = %cleanup, %if.end5
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %if.end5 ], !dbg !2294
  %29 = phi i32 [ %j.1, %cleanup ], [ 0, %if.end5 ], !dbg !2294
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2265, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 %29, metadata !2266, metadata !DIExpression()), !dbg !2274
  %30 = load i32, i32* %n, align 8, !dbg !2295
  %31 = zext i32 %30 to i64, !dbg !2296
  %cmp = icmp ult i64 %indvars.iv, %31, !dbg !2296
  br i1 %cmp, label %for.body, label %for.end, !dbg !2297

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %23) #8, !dbg !2298
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #8, !dbg !2299
  %32 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 0, !dbg !2300
  %33 = load i64, i64* %32, align 8, !dbg !2300
  %34 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 1, !dbg !2300
  %35 = load i64, i64* %34, align 8, !dbg !2300
  %call12 = tail call { i64, i64 } @double_int_mul(i64 %8, i64 %9, i64 %33, i64 %35) #6, !dbg !2300
  %36 = extractvalue { i64, i64 } %call12, 0, !dbg !2300
  %37 = extractvalue { i64, i64 } %call12, 1, !dbg !2300
  %call13 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %36, i64 %37, %struct.affine_tree_combination* %comb) #7, !dbg !2299
  %38 = extractvalue { i64, i64 } %call13, 0, !dbg !2299
  store i64 %38, i64* %25, align 8, !dbg !2299
  %39 = extractvalue { i64, i64 } %call13, 1, !dbg !2299
  store i64 %39, i64* %26, align 8, !dbg !2299
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %23, i8* nonnull align 8 %24, i64 16, i1 false), !dbg !2299
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #8, !dbg !2299
  %40 = load i64, i64* %27, align 8, !dbg !2301
  %41 = load i64, i64* %28, align 8, !dbg !2301
  %call14 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %40, i64 %41) #7, !dbg !2301
  %tobool15 = icmp eq i8 %call14, 0, !dbg !2301
  br i1 %tobool15, label %if.end17, label %cleanup, !dbg !2302

if.end17:                                         ; preds = %for.body
  %idxprom19 = zext i32 %29 to i64, !dbg !2303
  %coef21 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom19, i32 1, !dbg !2304
  %42 = bitcast %struct.double_int* %coef21 to i8*, !dbg !2305
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %42, i8* nonnull align 8 %23, i64 16, i1 false), !dbg !2305
  %val = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !2306
  %43 = bitcast %union.tree_node** %val to i64*, !dbg !2306
  %44 = load i64, i64* %43, align 8, !dbg !2306
  %arrayidx27 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom19, !dbg !2307
  %45 = bitcast %struct.aff_comb_elt* %arrayidx27 to i64*, !dbg !2308
  store i64 %44, i64* %45, align 8, !dbg !2308
  %inc = add i32 %29, 1, !dbg !2309
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2266, metadata !DIExpression()), !dbg !2274
  br label %cleanup, !dbg !2310

cleanup:                                          ; preds = %for.body, %if.end17
  %j.1 = phi i32 [ %inc, %if.end17 ], [ %29, %for.body ], !dbg !2311
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !2266, metadata !DIExpression()), !dbg !2274
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %23) #8, !dbg !2310
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2312
  br label %for.cond, !dbg !2313, !llvm.loop !2314

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i32 [ %29, %for.cond ], !dbg !2294
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2266, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2266, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2266, metadata !DIExpression()), !dbg !2274
  store i32 %.lcssa, i32* %n, align 8, !dbg !2316
  %rest = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 4, !dbg !2317
  %46 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !2317
  %tobool31 = icmp eq %union.tree_node* %46, null, !dbg !2318
  br i1 %tobool31, label %cleanup.cont69, label %if.then32, !dbg !2319

if.then32:                                        ; preds = %for.end
  %type34 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 0, !dbg !2320
  %47 = load %union.tree_node*, %union.tree_node** %type34, align 8, !dbg !2320
  call void @llvm.dbg.value(metadata %union.tree_node* %47, metadata !2271, metadata !DIExpression()), !dbg !2321
  %48 = getelementptr inbounds %union.tree_node, %union.tree_node* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2322
  %bf.load = load i64, i64* %48, align 8, !dbg !2322
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2322
  %cmp35 = icmp eq i64 %bf.cast1, 10, !dbg !2322
  br i1 %cmp35, label %if.then41, label %lor.lhs.false, !dbg !2322

lor.lhs.false:                                    ; preds = %if.then32
  %cmp40 = icmp eq i64 %bf.cast1, 12, !dbg !2322
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !2324

if.then41:                                        ; preds = %lor.lhs.false, %if.then32
  %49 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2325
  call void @llvm.dbg.value(metadata %union.tree_node* %49, metadata !2271, metadata !DIExpression()), !dbg !2321
  br label %if.end42, !dbg !2326

if.end42:                                         ; preds = %if.then41, %lor.lhs.false
  %type33.0 = phi %union.tree_node* [ %49, %if.then41 ], [ %47, %lor.lhs.false ], !dbg !2321
  call void @llvm.dbg.value(metadata %union.tree_node* %type33.0, metadata !2271, metadata !DIExpression()), !dbg !2321
  %cmp44 = icmp ult i32 %.lcssa, 8, !dbg !2327
  br i1 %cmp44, label %if.then45, label %if.else, !dbg !2329

if.then45:                                        ; preds = %if.end42
  %idxprom48 = zext i32 %.lcssa to i64, !dbg !2330
  %coef50 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom48, i32 1, !dbg !2332
  %50 = bitcast %struct.double_int* %coef50 to i8*, !dbg !2333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %50, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !2333
  %51 = bitcast %union.tree_node** %rest to i64*, !dbg !2334
  %52 = load i64, i64* %51, align 8, !dbg !2334
  %arrayidx55 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom48, !dbg !2335
  %53 = bitcast %struct.aff_comb_elt* %arrayidx55 to i64*, !dbg !2336
  store i64 %52, i64* %53, align 8, !dbg !2336
  store %union.tree_node* null, %union.tree_node** %rest, align 8, !dbg !2337
  %inc59 = add i32 %.lcssa, 1, !dbg !2338
  store i32 %inc59, i32* %n, align 8, !dbg !2338
  br label %cleanup.cont69, !dbg !2339

if.else:                                          ; preds = %if.end42
  %call61 = tail call %union.tree_node* @double_int_to_tree(%union.tree_node* %type33.0, i64 %8, i64 %9) #6, !dbg !2340
  %call62 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %type33.0, %union.tree_node* nonnull %46, %union.tree_node* %call61) #6, !dbg !2340
  store %union.tree_node* %call62, %union.tree_node** %rest, align 8, !dbg !2341
  br label %cleanup.cont69

cleanup.cont69:                                   ; preds = %for.end, %entry, %if.then4, %if.then45, %if.else
  ret void, !dbg !2342
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @double_int_one_p(i64 %cst.coerce0, i64 %cst.coerce1) unnamed_addr #0 !dbg !2343 {
entry:
  %cmp = icmp eq i64 %cst.coerce0, 1, !dbg !2348
  %cmp1 = icmp eq i64 %cst.coerce1, 0, !dbg !2349
  %0 = and i1 %cmp, %cmp1, !dbg !2349
  %conv = zext i1 %0 to i8, !dbg !2350
  ret i8 %conv, !dbg !2351
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @double_int_zero_p(i64 %cst.coerce0, i64 %cst.coerce1) unnamed_addr #0 !dbg !2352 {
entry:
  %0 = or i64 %cst.coerce0, %cst.coerce1, !dbg !2355
  %1 = icmp eq i64 %0, 0, !dbg !2355
  %conv = zext i1 %1 to i8, !dbg !2356
  ret i8 %conv, !dbg !2357
}

declare dso_local { i64, i64 } @double_int_mul(i64, i64, i64, i64) local_unnamed_addr #1

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @double_int_to_tree(%union.tree_node*, i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @aff_combination_add_elt(%struct.affine_tree_combination* %comb, %union.tree_node* %elt, i64 %scale.coerce0, i64 %scale.coerce1) local_unnamed_addr #4 !dbg !2358 {
entry:
  %scale = alloca %struct.double_int, align 8
  %tmp = alloca %struct.double_int, align 8
  %new_coef = alloca %struct.double_int, align 8
  %tmp5 = alloca %struct.double_int, align 8
  %tmp10 = alloca %struct.double_int, align 8
  %tmp37 = alloca %struct.double_int, align 8
  %0 = getelementptr inbounds %struct.double_int, %struct.double_int* %scale, i64 0, i32 0
  %1 = getelementptr inbounds %struct.double_int, %struct.double_int* %scale, i64 0, i32 1
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !2360, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata %union.tree_node* %elt, metadata !2361, metadata !DIExpression()), !dbg !2370
  %2 = bitcast %struct.double_int* %tmp to i8*, !dbg !2371
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2371
  %call = tail call { i64, i64 } @double_int_ext_for_comb(i64 %scale.coerce0, i64 %scale.coerce1, %struct.affine_tree_combination* %comb) #7, !dbg !2371
  %3 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !2371
  %4 = extractvalue { i64, i64 } %call, 0, !dbg !2371
  store i64 %4, i64* %3, align 8, !dbg !2371
  %5 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !2371
  %6 = extractvalue { i64, i64 } %call, 1, !dbg !2371
  store i64 %6, i64* %5, align 8, !dbg !2371
  %7 = bitcast %struct.double_int* %scale to i8*, !dbg !2371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !2371
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2371
  %8 = load i64, i64* %0, align 8, !dbg !2372
  %9 = load i64, i64* %1, align 8, !dbg !2372
  %call1 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %8, i64 %9) #7, !dbg !2372
  %tobool = icmp eq i8 %call1, 0, !dbg !2372
  br i1 %tobool, label %for.cond.preheader, label %cleanup.cont, !dbg !2374

for.cond.preheader:                               ; preds = %entry
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 2, !dbg !2375
  br label %for.cond, !dbg !2376

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !2377
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2363, metadata !DIExpression()), !dbg !2370
  %10 = load i32, i32* %n, align 8, !dbg !2378
  %11 = zext i32 %10 to i64, !dbg !2379
  %cmp = icmp ult i64 %indvars.iv, %11, !dbg !2379
  br i1 %cmp, label %for.body, label %for.end, !dbg !2376

for.body:                                         ; preds = %for.cond
  %val = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !2380
  %12 = load %union.tree_node*, %union.tree_node** %val, align 8, !dbg !2380
  %call2 = tail call i32 @operand_equal_p(%union.tree_node* %12, %union.tree_node* %elt, i32 0) #6, !dbg !2381
  %tobool3 = icmp eq i32 %call2, 0, !dbg !2381
  br i1 %tobool3, label %for.inc, label %if.then4, !dbg !2382

if.then4:                                         ; preds = %for.body
  %indvars.iv.lcssa6 = phi i64 [ %indvars.iv, %for.body ], !dbg !2377
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa6, metadata !2363, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa6, metadata !2363, metadata !DIExpression()), !dbg !2370
  %13 = bitcast %struct.double_int* %new_coef to i8*, !dbg !2383
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #8, !dbg !2383
  %14 = bitcast %struct.double_int* %tmp5 to i8*, !dbg !2384
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #8, !dbg !2384
  %15 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv.lcssa6, i32 1, i32 0, !dbg !2384
  %16 = load i64, i64* %15, align 8, !dbg !2384
  %17 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv.lcssa6, i32 1, i32 1, !dbg !2384
  %18 = load i64, i64* %17, align 8, !dbg !2384
  %call9 = tail call { i64, i64 } @double_int_add(i64 %16, i64 %18, i64 %8, i64 %9) #6, !dbg !2384
  %19 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp5, i64 0, i32 0, !dbg !2384
  %20 = extractvalue { i64, i64 } %call9, 0, !dbg !2384
  store i64 %20, i64* %19, align 8, !dbg !2384
  %21 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp5, i64 0, i32 1, !dbg !2384
  %22 = extractvalue { i64, i64 } %call9, 1, !dbg !2384
  store i64 %22, i64* %21, align 8, !dbg !2384
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %13, i8* nonnull align 8 %14, i64 16, i1 false), !dbg !2384
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #8, !dbg !2384
  %23 = bitcast %struct.double_int* %tmp10 to i8*, !dbg !2385
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %23) #8, !dbg !2385
  %24 = getelementptr inbounds %struct.double_int, %struct.double_int* %new_coef, i64 0, i32 0, !dbg !2385
  %25 = load i64, i64* %24, align 8, !dbg !2385
  %26 = getelementptr inbounds %struct.double_int, %struct.double_int* %new_coef, i64 0, i32 1, !dbg !2385
  %27 = load i64, i64* %26, align 8, !dbg !2385
  %call11 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %25, i64 %27, %struct.affine_tree_combination* %comb) #7, !dbg !2385
  %28 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp10, i64 0, i32 0, !dbg !2385
  %29 = extractvalue { i64, i64 } %call11, 0, !dbg !2385
  store i64 %29, i64* %28, align 8, !dbg !2385
  %30 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp10, i64 0, i32 1, !dbg !2385
  %31 = extractvalue { i64, i64 } %call11, 1, !dbg !2385
  store i64 %31, i64* %30, align 8, !dbg !2385
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %13, i8* nonnull align 8 %23, i64 16, i1 false), !dbg !2385
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %23) #8, !dbg !2385
  %32 = load i64, i64* %24, align 8, !dbg !2386
  %33 = load i64, i64* %26, align 8, !dbg !2386
  %call12 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %32, i64 %33) #7, !dbg !2386
  %tobool13 = icmp eq i8 %call12, 0, !dbg !2386
  br i1 %tobool13, label %if.then14, label %if.end19, !dbg !2388

if.then14:                                        ; preds = %if.then4
  %coef18 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv.lcssa6, i32 1, !dbg !2389
  %34 = bitcast %struct.double_int* %coef18 to i8*, !dbg !2391
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %34, i8* nonnull align 8 %13, i64 16, i1 false), !dbg !2391
  br label %cleanup, !dbg !2392

if.end19:                                         ; preds = %if.then4
  %35 = load i32, i32* %n, align 8, !dbg !2393
  %dec = add i32 %35, -1, !dbg !2393
  store i32 %dec, i32* %n, align 8, !dbg !2393
  %arrayidx23 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv.lcssa6, !dbg !2394
  %idxprom26 = zext i32 %dec to i64, !dbg !2395
  %arrayidx27 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom26, !dbg !2395
  %36 = bitcast %struct.aff_comb_elt* %arrayidx23 to i8*, !dbg !2395
  %37 = bitcast %struct.aff_comb_elt* %arrayidx27 to i8*, !dbg !2395
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %36, i8* nonnull align 8 %37, i64 24, i1 false), !dbg !2395
  %rest = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 4, !dbg !2396
  %38 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !2396
  %tobool28 = icmp eq %union.tree_node* %38, null, !dbg !2398
  br i1 %tobool28, label %cleanup, label %if.then29, !dbg !2399

if.then29:                                        ; preds = %if.end19
  %cmp31 = icmp eq i32 %dec, 7, !dbg !2400
  br i1 %cmp31, label %cond.end, label %cond.true, !dbg !2400

cond.true:                                        ; preds = %if.then29
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2400
  %.pre = load i32, i32* %n, align 8, !dbg !2402
  %phitmp = zext i32 %.pre to i64, !dbg !2400
  br label %cond.end, !dbg !2400

cond.end:                                         ; preds = %if.then29, %cond.true
  %39 = phi i64 [ 7, %if.then29 ], [ %phitmp, %cond.true ]
  %coef36 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %39, i32 1, !dbg !2403
  %40 = bitcast %struct.double_int* %tmp37 to i8*, !dbg !2404
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %40) #8, !dbg !2404
  %call38 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 1) #7, !dbg !2404
  %41 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp37, i64 0, i32 0, !dbg !2404
  %42 = extractvalue { i64, i64 } %call38, 0, !dbg !2404
  store i64 %42, i64* %41, align 8, !dbg !2404
  %43 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp37, i64 0, i32 1, !dbg !2404
  %44 = extractvalue { i64, i64 } %call38, 1, !dbg !2404
  store i64 %44, i64* %43, align 8, !dbg !2404
  %45 = bitcast %struct.double_int* %coef36 to i8*, !dbg !2404
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %45, i8* nonnull align 8 %40, i64 16, i1 false), !dbg !2404
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %40) #8, !dbg !2404
  %46 = bitcast %union.tree_node** %rest to i64*, !dbg !2405
  %47 = load i64, i64* %46, align 8, !dbg !2405
  %48 = load i32, i32* %n, align 8, !dbg !2406
  %idxprom42 = zext i32 %48 to i64, !dbg !2407
  %arrayidx43 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom42, !dbg !2407
  %49 = bitcast %struct.aff_comb_elt* %arrayidx43 to i64*, !dbg !2408
  store i64 %47, i64* %49, align 8, !dbg !2408
  store %union.tree_node* null, %union.tree_node** %rest, align 8, !dbg !2409
  %inc = add i32 %48, 1, !dbg !2410
  store i32 %inc, i32* %n, align 8, !dbg !2410
  br label %cleanup, !dbg !2411

cleanup:                                          ; preds = %if.end19, %cond.end, %if.then14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #8, !dbg !2412
  br label %cleanup.cont

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2413
  br label %for.cond, !dbg !2414, !llvm.loop !2415

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i32 [ %10, %for.cond ], !dbg !2378
  %cmp51 = icmp ult i32 %.lcssa, 8, !dbg !2417
  br i1 %cmp51, label %if.then52, label %if.end65, !dbg !2419

if.then52:                                        ; preds = %for.end
  %idxprom55 = zext i32 %.lcssa to i64, !dbg !2420
  %coef57 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom55, i32 1, !dbg !2422
  %50 = bitcast %struct.double_int* %coef57 to i8*, !dbg !2423
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %50, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !2423
  %val62 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom55, i32 0, !dbg !2424
  store %union.tree_node* %elt, %union.tree_node** %val62, align 8, !dbg !2425
  %inc64 = add i32 %.lcssa, 1, !dbg !2426
  store i32 %inc64, i32* %n, align 8, !dbg !2426
  br label %cleanup.cont, !dbg !2427

if.end65:                                         ; preds = %for.end
  %type66 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 0, !dbg !2428
  %51 = load %union.tree_node*, %union.tree_node** %type66, align 8, !dbg !2428
  call void @llvm.dbg.value(metadata %union.tree_node* %51, metadata !2364, metadata !DIExpression()), !dbg !2370
  %52 = getelementptr inbounds %union.tree_node, %union.tree_node* %51, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2429
  %bf.load = load i64, i64* %52, align 8, !dbg !2429
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2429
  %cmp67 = icmp eq i64 %bf.cast1, 10, !dbg !2429
  br i1 %cmp67, label %if.then73, label %lor.lhs.false, !dbg !2429

lor.lhs.false:                                    ; preds = %if.end65
  %cmp72 = icmp eq i64 %bf.cast1, 12, !dbg !2429
  br i1 %cmp72, label %if.then73, label %if.end74, !dbg !2431

if.then73:                                        ; preds = %lor.lhs.false, %if.end65
  %53 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2432
  call void @llvm.dbg.value(metadata %union.tree_node* %53, metadata !2364, metadata !DIExpression()), !dbg !2370
  br label %if.end74, !dbg !2433

if.end74:                                         ; preds = %if.then73, %lor.lhs.false
  %type.0 = phi %union.tree_node* [ %53, %if.then73 ], [ %51, %lor.lhs.false ], !dbg !2370
  call void @llvm.dbg.value(metadata %union.tree_node* %type.0, metadata !2364, metadata !DIExpression()), !dbg !2370
  %call75 = tail call fastcc zeroext i8 @double_int_one_p(i64 %8, i64 %9) #7, !dbg !2434
  %tobool76 = icmp eq i8 %call75, 0, !dbg !2434
  %call78 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type.0, %union.tree_node* %elt) #6, !dbg !2436
  br i1 %tobool76, label %if.else, label %if.end82, !dbg !2437

if.else:                                          ; preds = %if.end74
  %call80 = tail call %union.tree_node* @double_int_to_tree(%union.tree_node* %type.0, i64 %8, i64 %9) #6, !dbg !2438
  %call81 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %type.0, %union.tree_node* %call78, %union.tree_node* %call80) #6, !dbg !2438
  call void @llvm.dbg.value(metadata %union.tree_node* %call81, metadata !2361, metadata !DIExpression()), !dbg !2370
  br label %if.end82

if.end82:                                         ; preds = %if.end74, %if.else
  %elt.addr.0 = phi %union.tree_node* [ %call81, %if.else ], [ %call78, %if.end74 ], !dbg !2436
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.addr.0, metadata !2361, metadata !DIExpression()), !dbg !2370
  %rest83 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 4, !dbg !2439
  %54 = load %union.tree_node*, %union.tree_node** %rest83, align 8, !dbg !2439
  %tobool84 = icmp eq %union.tree_node* %54, null, !dbg !2441
  br i1 %tobool84, label %if.else89, label %if.then85, !dbg !2442

if.then85:                                        ; preds = %if.end82
  %call87 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 63, %union.tree_node* %type.0, %union.tree_node* nonnull %54, %union.tree_node* %elt.addr.0) #6, !dbg !2443
  store %union.tree_node* %call87, %union.tree_node** %rest83, align 8, !dbg !2444
  br label %cleanup.cont, !dbg !2445

if.else89:                                        ; preds = %if.end82
  store %union.tree_node* %elt.addr.0, %union.tree_node** %rest83, align 8, !dbg !2446
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %entry, %cleanup, %if.then52, %if.else89, %if.then85
  ret void, !dbg !2447
}

declare dso_local i32 @operand_equal_p(%union.tree_node*, %union.tree_node*, i32) local_unnamed_addr #1

declare dso_local { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @aff_combination_add(%struct.affine_tree_combination* %comb1, %struct.affine_tree_combination* %comb2) local_unnamed_addr #4 !dbg !2448 {
entry:
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb1, metadata !2452, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb2, metadata !2453, metadata !DIExpression()), !dbg !2455
  %0 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb2, i64 0, i32 1, i32 0, !dbg !2456
  %1 = load i64, i64* %0, align 8, !dbg !2456
  %2 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb2, i64 0, i32 1, i32 1, !dbg !2456
  %3 = load i64, i64* %2, align 8, !dbg !2456
  tail call fastcc void @aff_combination_add_cst(%struct.affine_tree_combination* %comb1, i64 %1, i64 %3) #7, !dbg !2456
  call void @llvm.dbg.value(metadata i32 0, metadata !2454, metadata !DIExpression()), !dbg !2455
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb2, i64 0, i32 2, !dbg !2457
  br label %for.cond, !dbg !2460

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !2461
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2454, metadata !DIExpression()), !dbg !2455
  %4 = load i32, i32* %n, align 8, !dbg !2462
  %5 = zext i32 %4 to i64, !dbg !2463
  %cmp = icmp ult i64 %indvars.iv, %5, !dbg !2463
  br i1 %cmp, label %for.body, label %for.end, !dbg !2464

for.body:                                         ; preds = %for.cond
  %val = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb2, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !2465
  %6 = load %union.tree_node*, %union.tree_node** %val, align 8, !dbg !2465
  %7 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb2, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 0, !dbg !2466
  %8 = load i64, i64* %7, align 8, !dbg !2466
  %9 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb2, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 1, !dbg !2466
  %10 = load i64, i64* %9, align 8, !dbg !2466
  tail call void @aff_combination_add_elt(%struct.affine_tree_combination* %comb1, %union.tree_node* %6, i64 %8, i64 %10) #7, !dbg !2466
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2467
  br label %for.cond, !dbg !2468, !llvm.loop !2469

for.end:                                          ; preds = %for.cond
  %rest = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb2, i64 0, i32 4, !dbg !2471
  %11 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !2471
  %tobool = icmp eq %union.tree_node* %11, null, !dbg !2473
  br i1 %tobool, label %if.end, label %if.then, !dbg !2474

if.then:                                          ; preds = %for.end
  %call = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 1) #7, !dbg !2475
  %12 = extractvalue { i64, i64 } %call, 0, !dbg !2475
  %13 = extractvalue { i64, i64 } %call, 1, !dbg !2475
  tail call void @aff_combination_add_elt(%struct.affine_tree_combination* %comb1, %union.tree_node* nonnull %11, i64 %12, i64 %13) #7, !dbg !2476
  br label %if.end, !dbg !2476

if.end:                                           ; preds = %for.end, %if.then
  ret void, !dbg !2477
}

; Function Attrs: nounwind uwtable
define internal fastcc void @aff_combination_add_cst(%struct.affine_tree_combination* %c, i64 %cst.coerce0, i64 %cst.coerce1) unnamed_addr #4 !dbg !2478 {
entry:
  %tmp = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %c, metadata !2480, metadata !DIExpression()), !dbg !2482
  %offset = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c, i64 0, i32 1, !dbg !2483
  %0 = bitcast %struct.double_int* %tmp to i8*, !dbg !2484
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2484
  %1 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c, i64 0, i32 1, i32 0, !dbg !2485
  %2 = load i64, i64* %1, align 8, !dbg !2485
  %3 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c, i64 0, i32 1, i32 1, !dbg !2485
  %4 = load i64, i64* %3, align 8, !dbg !2485
  %call = tail call { i64, i64 } @double_int_add(i64 %2, i64 %4, i64 %cst.coerce0, i64 %cst.coerce1) #6, !dbg !2485
  %5 = extractvalue { i64, i64 } %call, 0, !dbg !2485
  %6 = extractvalue { i64, i64 } %call, 1, !dbg !2485
  %call2 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %5, i64 %6, %struct.affine_tree_combination* %c) #7, !dbg !2484
  %7 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !2484
  %8 = extractvalue { i64, i64 } %call2, 0, !dbg !2484
  store i64 %8, i64* %7, align 8, !dbg !2484
  %9 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !2484
  %10 = extractvalue { i64, i64 } %call2, 1, !dbg !2484
  store i64 %10, i64* %9, align 8, !dbg !2484
  %11 = bitcast %struct.double_int* %offset to i8*, !dbg !2484
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 8 %0, i64 16, i1 false), !dbg !2484
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2484
  ret void, !dbg !2486
}

; Function Attrs: nounwind uwtable
define dso_local void @aff_combination_convert(%struct.affine_tree_combination* %comb, %union.tree_node* %type) local_unnamed_addr #4 !dbg !2487 {
entry:
  %tmp = alloca %struct.double_int, align 8
  %new_coef = alloca %struct.double_int, align 8
  %tmp67 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !2489, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2490, metadata !DIExpression()), !dbg !2501
  %0 = bitcast %struct.affine_tree_combination* %comb to %struct.tree_type**, !dbg !2502
  %1 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !2502
  %type2 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2503
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i64 0, i32 6, !dbg !2503
  %bf.load = load i32, i32* %precision, align 4, !dbg !2503
  %bf.clear = and i32 %bf.load, 1023, !dbg !2503
  %precision4 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1, i64 0, i32 6, !dbg !2504
  %bf.load5 = load i32, i32* %precision4, align 4, !dbg !2504
  %bf.clear6 = and i32 %bf.load5, 1023, !dbg !2504
  %cmp = icmp ugt i32 %bf.clear, %bf.clear6, !dbg !2505
  br i1 %cmp, label %if.then, label %if.end, !dbg !2506

if.then:                                          ; preds = %entry
  %call = tail call %union.tree_node* @aff_combination_to_tree(%struct.affine_tree_combination* %comb) #7, !dbg !2507
  %call7 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* %call) #6, !dbg !2507
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !2494, metadata !DIExpression()), !dbg !2508
  tail call void @tree_to_aff_combination(%union.tree_node* %call7, %union.tree_node* %type, %struct.affine_tree_combination* %comb) #7, !dbg !2509
  br label %cleanup.cont83

if.end:                                           ; preds = %entry
  %type1 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 0, !dbg !2502
  store %union.tree_node* %type, %union.tree_node** %type1, align 8, !dbg !2510
  %rest = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 4, !dbg !2511
  %2 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !2511
  %tobool = icmp eq %union.tree_node* %2, null, !dbg !2513
  br i1 %tobool, label %if.end21, label %land.lhs.true, !dbg !2514

land.lhs.true:                                    ; preds = %if.end
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2515
  %bf.load9 = load i64, i64* %3, align 8, !dbg !2515
  %bf.cast1 = and i64 %bf.load9, 65535, !dbg !2515
  %cmp11 = icmp eq i64 %bf.cast1, 10, !dbg !2515
  br i1 %cmp11, label %if.end21, label %lor.lhs.false, !dbg !2515

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp16 = icmp eq i64 %bf.cast1, 12, !dbg !2515
  br i1 %cmp16, label %if.end21, label %if.then17, !dbg !2516

if.then17:                                        ; preds = %lor.lhs.false
  %call19 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* nonnull %2) #6, !dbg !2517
  store %union.tree_node* %call19, %union.tree_node** %rest, align 8, !dbg !2518
  br label %if.end21, !dbg !2519

if.end21:                                         ; preds = %if.end, %if.then17, %lor.lhs.false, %land.lhs.true
  %bf.load24 = load i32, i32* %precision, align 4, !dbg !2520
  %bf.load28 = load i32, i32* %precision4, align 4, !dbg !2522
  %4 = xor i32 %bf.load24, %bf.load28, !dbg !2523
  %5 = and i32 %4, 1023, !dbg !2523
  %cmp30 = icmp eq i32 %5, 0, !dbg !2523
  br i1 %cmp30, label %cleanup.cont83, label %if.end32, !dbg !2524

if.end32:                                         ; preds = %if.end21
  %offset = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 1, !dbg !2525
  %6 = bitcast %struct.double_int* %tmp to i8*, !dbg !2526
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8, !dbg !2526
  %7 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 1, i32 0, !dbg !2526
  %8 = load i64, i64* %7, align 8, !dbg !2526
  %9 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 1, i32 1, !dbg !2526
  %10 = load i64, i64* %9, align 8, !dbg !2526
  %call34 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %8, i64 %10, %struct.affine_tree_combination* %comb) #7, !dbg !2526
  %11 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !2526
  %12 = extractvalue { i64, i64 } %call34, 0, !dbg !2526
  store i64 %12, i64* %11, align 8, !dbg !2526
  %13 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !2526
  %14 = extractvalue { i64, i64 } %call34, 1, !dbg !2526
  store i64 %14, i64* %13, align 8, !dbg !2526
  %15 = bitcast %struct.double_int* %offset to i8*, !dbg !2526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %15, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !2526
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #8, !dbg !2526
  call void @llvm.dbg.value(metadata i32 0, metadata !2492, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i32 0, metadata !2491, metadata !DIExpression()), !dbg !2501
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 2, !dbg !2527
  %16 = bitcast %struct.double_int* %new_coef to i8*, !dbg !2528
  %17 = getelementptr inbounds %struct.double_int, %struct.double_int* %new_coef, i64 0, i32 0, !dbg !2528
  %18 = getelementptr inbounds %struct.double_int, %struct.double_int* %new_coef, i64 0, i32 1, !dbg !2528
  br label %for.cond, !dbg !2529

for.cond:                                         ; preds = %cleanup, %if.end32
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %if.end32 ], !dbg !2530
  %19 = phi i32 [ %j.1, %cleanup ], [ 0, %if.end32 ], !dbg !2531
  call void @llvm.dbg.value(metadata i32 %19, metadata !2492, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2491, metadata !DIExpression()), !dbg !2501
  %20 = load i32, i32* %n, align 8, !dbg !2532
  %21 = zext i32 %20 to i64, !dbg !2533
  %cmp35 = icmp ult i64 %indvars.iv, %21, !dbg !2533
  br i1 %cmp35, label %for.body, label %for.end, !dbg !2534

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #8, !dbg !2535
  %22 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 0, !dbg !2536
  %23 = load i64, i64* %22, align 8, !dbg !2536
  %24 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 1, !dbg !2536
  %25 = load i64, i64* %24, align 8, !dbg !2536
  %call36 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %23, i64 %25, %struct.affine_tree_combination* %comb) #7, !dbg !2536
  %26 = extractvalue { i64, i64 } %call36, 0, !dbg !2536
  store i64 %26, i64* %17, align 8, !dbg !2536
  %27 = extractvalue { i64, i64 } %call36, 1, !dbg !2536
  store i64 %27, i64* %18, align 8, !dbg !2536
  %call37 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %26, i64 %27) #7, !dbg !2537
  %tobool38 = icmp eq i8 %call37, 0, !dbg !2537
  br i1 %tobool38, label %if.end40, label %cleanup, !dbg !2539

if.end40:                                         ; preds = %for.body
  %idxprom42 = zext i32 %19 to i64, !dbg !2540
  %coef44 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom42, i32 1, !dbg !2541
  %28 = bitcast %struct.double_int* %coef44 to i8*, !dbg !2542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %28, i8* nonnull align 8 %16, i64 16, i1 false), !dbg !2542
  %val48 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !2543
  %29 = load %union.tree_node*, %union.tree_node** %val48, align 8, !dbg !2543
  %call49 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* %29) #6, !dbg !2543
  %val53 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom42, i32 0, !dbg !2544
  store %union.tree_node* %call49, %union.tree_node** %val53, align 8, !dbg !2545
  %inc = add i32 %19, 1, !dbg !2546
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2492, metadata !DIExpression()), !dbg !2501
  br label %cleanup, !dbg !2547

cleanup:                                          ; preds = %for.body, %if.end40
  %j.1 = phi i32 [ %inc, %if.end40 ], [ %19, %for.body ], !dbg !2530
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !2492, metadata !DIExpression()), !dbg !2501
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #8, !dbg !2547
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2548
  br label %for.cond, !dbg !2549, !llvm.loop !2550

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i32 [ %19, %for.cond ], !dbg !2531
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2492, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2492, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2492, metadata !DIExpression()), !dbg !2501
  store i32 %.lcssa, i32* %n, align 8, !dbg !2552
  %cmp57 = icmp ult i32 %.lcssa, 8, !dbg !2553
  br i1 %cmp57, label %land.lhs.true58, label %cleanup.cont83, !dbg !2555

land.lhs.true58:                                  ; preds = %for.end
  %30 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !2556
  %tobool60 = icmp eq %union.tree_node* %30, null, !dbg !2557
  br i1 %tobool60, label %cleanup.cont83, label %if.then61, !dbg !2558

if.then61:                                        ; preds = %land.lhs.true58
  %idxprom64 = zext i32 %.lcssa to i64, !dbg !2559
  %coef66 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom64, i32 1, !dbg !2561
  %31 = bitcast %struct.double_int* %tmp67 to i8*, !dbg !2562
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #8, !dbg !2562
  %call68 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 1) #7, !dbg !2562
  %32 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp67, i64 0, i32 0, !dbg !2562
  %33 = extractvalue { i64, i64 } %call68, 0, !dbg !2562
  store i64 %33, i64* %32, align 8, !dbg !2562
  %34 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp67, i64 0, i32 1, !dbg !2562
  %35 = extractvalue { i64, i64 } %call68, 1, !dbg !2562
  store i64 %35, i64* %34, align 8, !dbg !2562
  %36 = bitcast %struct.double_int* %coef66 to i8*, !dbg !2562
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %36, i8* nonnull align 8 %31, i64 16, i1 false), !dbg !2562
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #8, !dbg !2562
  %37 = bitcast %union.tree_node** %rest to i64*, !dbg !2563
  %38 = load i64, i64* %37, align 8, !dbg !2563
  %39 = load i32, i32* %n, align 8, !dbg !2564
  %idxprom72 = zext i32 %39 to i64, !dbg !2565
  %arrayidx73 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom72, !dbg !2565
  %40 = bitcast %struct.aff_comb_elt* %arrayidx73 to i64*, !dbg !2566
  store i64 %38, i64* %40, align 8, !dbg !2566
  store %union.tree_node* null, %union.tree_node** %rest, align 8, !dbg !2567
  %inc77 = add i32 %39, 1, !dbg !2568
  store i32 %inc77, i32* %n, align 8, !dbg !2568
  br label %cleanup.cont83, !dbg !2569

cleanup.cont83:                                   ; preds = %land.lhs.true58, %if.then, %if.end21, %if.then61, %for.end
  ret void, !dbg !2570
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @aff_combination_to_tree(%struct.affine_tree_combination* %comb) local_unnamed_addr #4 !dbg !2571 {
entry:
  %off = alloca %struct.double_int, align 8
  %sgn = alloca %struct.double_int, align 8
  %tmp = alloca %struct.double_int, align 8
  %tmp21 = alloca %struct.double_int, align 8
  %tmp24 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !2575, metadata !DIExpression()), !dbg !2582
  %type1 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 0, !dbg !2583
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !2583
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2576, metadata !DIExpression()), !dbg !2582
  %rest = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 4, !dbg !2584
  %1 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !2584
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2577, metadata !DIExpression()), !dbg !2582
  %2 = bitcast %struct.double_int* %off to i8*, !dbg !2585
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2585
  %3 = bitcast %struct.double_int* %sgn to i8*, !dbg !2585
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2585
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2581, metadata !DIExpression()), !dbg !2582
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2586
  %bf.load = load i64, i64* %4, align 8, !dbg !2586
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2586
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !2586
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2586

lor.lhs.false:                                    ; preds = %entry
  %cmp7 = icmp eq i64 %bf.cast1, 12, !dbg !2586
  br i1 %cmp7, label %if.then, label %if.end, !dbg !2588

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2589
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !2581, metadata !DIExpression()), !dbg !2582
  br label %if.end, !dbg !2590

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %type12.0 = phi %union.tree_node* [ %5, %if.then ], [ %0, %lor.lhs.false ], !dbg !2582
  call void @llvm.dbg.value(metadata %union.tree_node* %type12.0, metadata !2581, metadata !DIExpression()), !dbg !2582
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 2, !dbg !2591
  %6 = load i32, i32* %n, align 8, !dbg !2591
  %cmp8 = icmp eq i32 %6, 8, !dbg !2591
  br i1 %cmp8, label %cond.end, label %lor.lhs.false9, !dbg !2591

lor.lhs.false9:                                   ; preds = %if.end
  %cmp11 = icmp eq %union.tree_node* %1, null, !dbg !2591
  br i1 %cmp11, label %cond.end, label %cond.true, !dbg !2591

cond.true:                                        ; preds = %lor.lhs.false9
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2591
  br label %cond.end, !dbg !2591

cond.end:                                         ; preds = %if.end, %lor.lhs.false9, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !2578, metadata !DIExpression()), !dbg !2582
  br label %for.cond, !dbg !2592

for.cond:                                         ; preds = %for.body, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %cond.end ], !dbg !2582
  %expr.0 = phi %union.tree_node* [ %call, %for.body ], [ %1, %cond.end ], !dbg !2582
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2578, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.0, metadata !2577, metadata !DIExpression()), !dbg !2582
  %7 = load i32, i32* %n, align 8, !dbg !2594
  %8 = zext i32 %7 to i64, !dbg !2596
  %cmp13 = icmp ult i64 %indvars.iv, %8, !dbg !2596
  br i1 %cmp13, label %for.body, label %for.end, !dbg !2597

for.body:                                         ; preds = %for.cond
  %val = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !2598
  %9 = load %union.tree_node*, %union.tree_node** %val, align 8, !dbg !2598
  %10 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 0, !dbg !2599
  %11 = load i64, i64* %10, align 8, !dbg !2599
  %12 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 1, !dbg !2599
  %13 = load i64, i64* %12, align 8, !dbg !2599
  %call = tail call fastcc %union.tree_node* @add_elt_to_tree(%union.tree_node* %expr.0, %union.tree_node* %0, %union.tree_node* %9, i64 %11, i64 %13, %struct.affine_tree_combination* %comb) #7, !dbg !2599
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2577, metadata !DIExpression()), !dbg !2582
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2600
  br label %for.cond, !dbg !2601, !llvm.loop !2602

for.end:                                          ; preds = %for.cond
  %expr.0.lcssa = phi %union.tree_node* [ %expr.0, %for.cond ], !dbg !2582
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.0.lcssa, metadata !2577, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.0.lcssa, metadata !2577, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.0.lcssa, metadata !2577, metadata !DIExpression()), !dbg !2582
  %14 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 1, i32 0, !dbg !2604
  %15 = load i64, i64* %14, align 8, !dbg !2604
  %16 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 1, i32 1, !dbg !2604
  %17 = load i64, i64* %16, align 8, !dbg !2604
  %call17 = tail call zeroext i8 @double_int_negative_p(i64 %15, i64 %17) #6, !dbg !2604
  %tobool = icmp eq i8 %call17, 0, !dbg !2604
  br i1 %tobool, label %if.else, label %if.then18, !dbg !2606

if.then18:                                        ; preds = %for.end
  %18 = bitcast %struct.double_int* %tmp to i8*, !dbg !2607
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #8, !dbg !2607
  %19 = load i64, i64* %14, align 8, !dbg !2607
  %20 = load i64, i64* %16, align 8, !dbg !2607
  %call20 = tail call { i64, i64 } @double_int_neg(i64 %19, i64 %20) #6, !dbg !2607
  %21 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !2607
  %22 = extractvalue { i64, i64 } %call20, 0, !dbg !2607
  store i64 %22, i64* %21, align 8, !dbg !2607
  %23 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !2607
  %24 = extractvalue { i64, i64 } %call20, 1, !dbg !2607
  store i64 %24, i64* %23, align 8, !dbg !2607
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %18, i64 16, i1 false), !dbg !2607
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #8, !dbg !2607
  %25 = bitcast %struct.double_int* %tmp21 to i8*, !dbg !2609
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #8, !dbg !2609
  %call22 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 -1) #7, !dbg !2609
  %26 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp21, i64 0, i32 0, !dbg !2609
  %27 = extractvalue { i64, i64 } %call22, 0, !dbg !2609
  store i64 %27, i64* %26, align 8, !dbg !2609
  %28 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp21, i64 0, i32 1, !dbg !2609
  %29 = extractvalue { i64, i64 } %call22, 1, !dbg !2609
  store i64 %29, i64* %28, align 8, !dbg !2609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %25, i64 16, i1 false), !dbg !2609
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #8, !dbg !2609
  br label %if.end26, !dbg !2610

if.else:                                          ; preds = %for.end
  %offset23 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 1, !dbg !2611
  %30 = bitcast %struct.double_int* %offset23 to i8*, !dbg !2611
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %30, i64 16, i1 false), !dbg !2611
  %31 = bitcast %struct.double_int* %tmp24 to i8*, !dbg !2613
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #8, !dbg !2613
  %call25 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 1) #7, !dbg !2613
  %32 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp24, i64 0, i32 0, !dbg !2613
  %33 = extractvalue { i64, i64 } %call25, 0, !dbg !2613
  store i64 %33, i64* %32, align 8, !dbg !2613
  %34 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp24, i64 0, i32 1, !dbg !2613
  %35 = extractvalue { i64, i64 } %call25, 1, !dbg !2613
  store i64 %35, i64* %34, align 8, !dbg !2613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %31, i64 16, i1 false), !dbg !2613
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #8, !dbg !2613
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then18
  %36 = getelementptr inbounds %struct.double_int, %struct.double_int* %off, i64 0, i32 0, !dbg !2614
  %37 = load i64, i64* %36, align 8, !dbg !2614
  %38 = getelementptr inbounds %struct.double_int, %struct.double_int* %off, i64 0, i32 1, !dbg !2614
  %39 = load i64, i64* %38, align 8, !dbg !2614
  %call27 = tail call %union.tree_node* @double_int_to_tree(%union.tree_node* %type12.0, i64 %37, i64 %39) #6, !dbg !2614
  %40 = getelementptr inbounds %struct.double_int, %struct.double_int* %sgn, i64 0, i32 0, !dbg !2615
  %41 = load i64, i64* %40, align 8, !dbg !2615
  %42 = getelementptr inbounds %struct.double_int, %struct.double_int* %sgn, i64 0, i32 1, !dbg !2615
  %43 = load i64, i64* %42, align 8, !dbg !2615
  %call28 = tail call fastcc %union.tree_node* @add_elt_to_tree(%union.tree_node* %expr.0.lcssa, %union.tree_node* %0, %union.tree_node* %call27, i64 %41, i64 %43, %struct.affine_tree_combination* %comb) #7, !dbg !2615
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2616
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2616
  ret %union.tree_node* %call28, !dbg !2617
}

; Function Attrs: nounwind uwtable
define dso_local void @tree_to_aff_combination(%union.tree_node* %expr, %union.tree_node* %type, %struct.affine_tree_combination* %comb) local_unnamed_addr #4 !dbg !2618 {
entry:
  %tmp = alloca %struct.affine_tree_combination, align 8
  %toffset = alloca %union.tree_node*, align 8
  %bitpos = alloca i64, align 8
  %bitsize = alloca i64, align 8
  %mode = alloca i32, align 4
  %unsignedp = alloca i32, align 4
  %volatilep = alloca i32, align 4
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !2622, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2623, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !2624, metadata !DIExpression()), !dbg !2635
  %0 = bitcast %struct.affine_tree_combination* %tmp to i8*, !dbg !2636
  call void @llvm.lifetime.start.p0i8(i64 232, i8* nonnull %0) #8, !dbg !2636
  %1 = bitcast %union.tree_node** %toffset to i8*, !dbg !2637
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2637
  %2 = bitcast i64* %bitpos to i8*, !dbg !2638
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2638
  %3 = bitcast i64* %bitsize to i8*, !dbg !2638
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2638
  %4 = bitcast i32* %mode to i8*, !dbg !2639
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8, !dbg !2639
  %5 = bitcast i32* %unsignedp to i8*, !dbg !2640
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #8, !dbg !2640
  %6 = bitcast i32* %volatilep to i8*, !dbg !2640
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8, !dbg !2640
  %call = tail call %union.tree_node* @tree_strip_nop_conversions(%union.tree_node* %expr) #6, !dbg !2641
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2622, metadata !DIExpression()), !dbg !2635
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2642
  %bf.load = load i64, i64* %7, align 8, !dbg !2642
  %trunc = trunc i64 %bf.load to i16, !dbg !2643
  switch i16 %trunc, label %sw.epilog [
    i16 23, label %sw.bb
    i16 66, label %sw.bb2
    i16 63, label %sw.bb6
    i16 64, label %sw.bb6
    i16 65, label %sw.bb15
    i16 79, label %sw.bb31
    i16 90, label %sw.bb37
    i16 121, label %sw.bb45
  ], !dbg !2643

sw.bb:                                            ; preds = %entry
  %call1 = tail call { i64, i64 } @tree_to_double_int(%union.tree_node* %call) #6, !dbg !2644
  %8 = extractvalue { i64, i64 } %call1, 0, !dbg !2644
  %9 = extractvalue { i64, i64 } %call1, 1, !dbg !2644
  tail call void @aff_combination_const(%struct.affine_tree_combination* %comb, %union.tree_node* %type, i64 %8, i64 %9) #7, !dbg !2646
  br label %cleanup, !dbg !2647

sw.bb2:                                           ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2648
  %10 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2648
  tail call void @tree_to_aff_combination(%union.tree_node* %10, %union.tree_node* %type, %struct.affine_tree_combination* %comb) #7, !dbg !2649
  %arrayidx5 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2650
  %11 = load %union.tree_node*, %union.tree_node** %arrayidx5, align 8, !dbg !2650
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2651
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %tmp, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @tree_to_aff_combination(%union.tree_node* %11, %union.tree_node* %12, %struct.affine_tree_combination* nonnull %tmp) #7, !dbg !2652
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %tmp, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @aff_combination_add(%struct.affine_tree_combination* %comb, %struct.affine_tree_combination* nonnull %tmp) #7, !dbg !2653
  br label %cleanup, !dbg !2654

sw.bb6:                                           ; preds = %entry, %entry
  %operands8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2655
  %13 = load %union.tree_node*, %union.tree_node** %operands8, align 8, !dbg !2655
  tail call void @tree_to_aff_combination(%union.tree_node* %13, %union.tree_node* %type, %struct.affine_tree_combination* %comb) #7, !dbg !2656
  %arrayidx12 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands8, i64 1, !dbg !2657
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx12, align 8, !dbg !2657
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %tmp, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @tree_to_aff_combination(%union.tree_node* %14, %union.tree_node* %type, %struct.affine_tree_combination* nonnull %tmp) #7, !dbg !2658
  %bf.cast4 = and i64 %bf.load, 65535, !dbg !2659
  %cmp = icmp eq i64 %bf.cast4, 64, !dbg !2659
  br i1 %cmp, label %if.then, label %if.end, !dbg !2661

if.then:                                          ; preds = %sw.bb6
  %call14 = call fastcc { i64, i64 } @shwi_to_double_int(i64 -1) #7, !dbg !2662
  %15 = extractvalue { i64, i64 } %call14, 0, !dbg !2662
  %16 = extractvalue { i64, i64 } %call14, 1, !dbg !2662
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %tmp, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @aff_combination_scale(%struct.affine_tree_combination* nonnull %tmp, i64 %15, i64 %16) #7, !dbg !2663
  br label %if.end, !dbg !2663

if.end:                                           ; preds = %if.then, %sw.bb6
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %tmp, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @aff_combination_add(%struct.affine_tree_combination* %comb, %struct.affine_tree_combination* nonnull %tmp) #7, !dbg !2664
  br label %cleanup, !dbg !2665

sw.bb15:                                          ; preds = %entry
  %operands17 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2666
  %arrayidx18 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands17, i64 1, !dbg !2666
  %17 = load %union.tree_node*, %union.tree_node** %arrayidx18, align 8, !dbg !2666
  call void @llvm.dbg.value(metadata %union.tree_node* %17, metadata !2627, metadata !DIExpression()), !dbg !2635
  %18 = getelementptr inbounds %union.tree_node, %union.tree_node* %17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2667
  %bf.load20 = load i64, i64* %18, align 8, !dbg !2667
  %bf.cast223 = and i64 %bf.load20, 65535, !dbg !2669
  %cmp23 = icmp eq i64 %bf.cast223, 23, !dbg !2669
  br i1 %cmp23, label %if.end25, label %sw.epilog, !dbg !2670

if.end25:                                         ; preds = %sw.bb15
  %19 = load %union.tree_node*, %union.tree_node** %operands17, align 8, !dbg !2671
  tail call void @tree_to_aff_combination(%union.tree_node* %19, %union.tree_node* %type, %struct.affine_tree_combination* %comb) #7, !dbg !2672
  %call30 = tail call { i64, i64 } @tree_to_double_int(%union.tree_node* %17) #6, !dbg !2673
  %20 = extractvalue { i64, i64 } %call30, 0, !dbg !2673
  %21 = extractvalue { i64, i64 } %call30, 1, !dbg !2673
  tail call void @aff_combination_scale(%struct.affine_tree_combination* %comb, i64 %20, i64 %21) #7, !dbg !2674
  br label %cleanup, !dbg !2675

sw.bb31:                                          ; preds = %entry
  %operands33 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2676
  %22 = load %union.tree_node*, %union.tree_node** %operands33, align 8, !dbg !2676
  tail call void @tree_to_aff_combination(%union.tree_node* %22, %union.tree_node* %type, %struct.affine_tree_combination* %comb) #7, !dbg !2677
  %call36 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 -1) #7, !dbg !2678
  %23 = extractvalue { i64, i64 } %call36, 0, !dbg !2678
  %24 = extractvalue { i64, i64 } %call36, 1, !dbg !2678
  tail call void @aff_combination_scale(%struct.affine_tree_combination* %comb, i64 %23, i64 %24) #7, !dbg !2679
  br label %cleanup, !dbg !2680

sw.bb37:                                          ; preds = %entry
  %operands39 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2681
  %25 = load %union.tree_node*, %union.tree_node** %operands39, align 8, !dbg !2681
  tail call void @tree_to_aff_combination(%union.tree_node* %25, %union.tree_node* %type, %struct.affine_tree_combination* %comb) #7, !dbg !2682
  %call42 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 -1) #7, !dbg !2683
  %26 = extractvalue { i64, i64 } %call42, 0, !dbg !2683
  %27 = extractvalue { i64, i64 } %call42, 1, !dbg !2683
  tail call void @aff_combination_scale(%struct.affine_tree_combination* %comb, i64 %26, i64 %27) #7, !dbg !2684
  %call44 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 -1) #7, !dbg !2685
  %28 = extractvalue { i64, i64 } %call44, 0, !dbg !2685
  %29 = extractvalue { i64, i64 } %call44, 1, !dbg !2685
  tail call fastcc void @aff_combination_add_cst(%struct.affine_tree_combination* %comb, i64 %28, i64 %29) #7, !dbg !2686
  br label %cleanup, !dbg !2687

sw.bb45:                                          ; preds = %entry
  %operands47 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2688
  %30 = load %union.tree_node*, %union.tree_node** %operands47, align 8, !dbg !2688
  call void @llvm.dbg.value(metadata %union.tree_node** %toffset, metadata !2629, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @llvm.dbg.value(metadata i64* %bitpos, metadata !2630, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @llvm.dbg.value(metadata i64* %bitsize, metadata !2631, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @llvm.dbg.value(metadata i32* %mode, metadata !2632, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @llvm.dbg.value(metadata i32* %unsignedp, metadata !2633, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @llvm.dbg.value(metadata i32* %volatilep, metadata !2634, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  %call49 = call %union.tree_node* @get_inner_reference(%union.tree_node* %30, i64* nonnull %bitsize, i64* nonnull %bitpos, %union.tree_node** nonnull %toffset, i32* nonnull %mode, i32* nonnull %unsignedp, i32* nonnull %volatilep, i8 zeroext 0) #6, !dbg !2689
  call void @llvm.dbg.value(metadata %union.tree_node* %call49, metadata !2628, metadata !DIExpression()), !dbg !2635
  %31 = load i64, i64* %bitpos, align 8, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %31, metadata !2630, metadata !DIExpression()), !dbg !2635
  %rem1 = and i64 %31, 7, !dbg !2692
  %cmp50 = icmp eq i64 %rem1, 0, !dbg !2692
  br i1 %cmp50, label %if.end52, label %sw.epilog, !dbg !2693

if.end52:                                         ; preds = %sw.bb45
  call void @llvm.dbg.value(metadata i64 %31, metadata !2630, metadata !DIExpression()), !dbg !2635
  %div = sdiv i64 %31, 8, !dbg !2694
  %call54 = call fastcc { i64, i64 } @uhwi_to_double_int(i64 %div) #7, !dbg !2695
  %32 = extractvalue { i64, i64 } %call54, 0, !dbg !2695
  call void @aff_combination_const(%struct.affine_tree_combination* %comb, %union.tree_node* %type, i64 %32, i64 0) #7, !dbg !2696
  %call55 = call %union.tree_node* @build_fold_addr_expr_loc(i32 0, %union.tree_node* %call49) #6, !dbg !2697
  call void @llvm.dbg.value(metadata %union.tree_node* %call55, metadata !2628, metadata !DIExpression()), !dbg !2635
  %33 = getelementptr inbounds %union.tree_node, %union.tree_node* %call55, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2698
  %bf.load57 = load i64, i64* %33, align 8, !dbg !2698
  %bf.cast592 = and i64 %bf.load57, 65535, !dbg !2700
  %cmp60 = icmp eq i64 %bf.cast592, 121, !dbg !2700
  br i1 %cmp60, label %if.then61, label %if.else, !dbg !2701

if.then61:                                        ; preds = %if.end52
  %call63 = call fastcc { i64, i64 } @shwi_to_double_int(i64 1) #7, !dbg !2702
  %34 = extractvalue { i64, i64 } %call63, 0, !dbg !2702
  %35 = extractvalue { i64, i64 } %call63, 1, !dbg !2702
  call void @aff_combination_add_elt(%struct.affine_tree_combination* %comb, %union.tree_node* %call55, i64 %34, i64 %35) #7, !dbg !2703
  br label %if.end64, !dbg !2703

if.else:                                          ; preds = %if.end52
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %tmp, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @tree_to_aff_combination(%union.tree_node* %call55, %union.tree_node* %type, %struct.affine_tree_combination* nonnull %tmp) #7, !dbg !2704
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %tmp, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @aff_combination_add(%struct.affine_tree_combination* %comb, %struct.affine_tree_combination* nonnull %tmp) #7, !dbg !2706
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then61
  %36 = load %union.tree_node*, %union.tree_node** %toffset, align 8, !dbg !2707
  call void @llvm.dbg.value(metadata %union.tree_node* %36, metadata !2629, metadata !DIExpression()), !dbg !2635
  %tobool = icmp eq %union.tree_node* %36, null, !dbg !2707
  br i1 %tobool, label %cleanup, label %if.then65, !dbg !2709

if.then65:                                        ; preds = %if.end64
  call void @llvm.dbg.value(metadata %union.tree_node* %36, metadata !2629, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %tmp, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @tree_to_aff_combination(%union.tree_node* nonnull %36, %union.tree_node* %type, %struct.affine_tree_combination* nonnull %tmp) #7, !dbg !2710
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %tmp, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @aff_combination_add(%struct.affine_tree_combination* %comb, %struct.affine_tree_combination* nonnull %tmp) #7, !dbg !2712
  br label %cleanup, !dbg !2713

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb45, %entry
  call void @aff_combination_elt(%struct.affine_tree_combination* %comb, %union.tree_node* %type, %union.tree_node* %call) #7, !dbg !2714
  br label %cleanup, !dbg !2715

cleanup:                                          ; preds = %if.end64, %if.then65, %sw.epilog, %sw.bb37, %sw.bb31, %if.end25, %if.end, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8, !dbg !2715
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #8, !dbg !2715
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8, !dbg !2715
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2715
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2715
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2715
  call void @llvm.lifetime.end.p0i8(i64 232, i8* nonnull %0) #8, !dbg !2715
  ret void, !dbg !2715
}

declare dso_local %union.tree_node* @tree_strip_nop_conversions(%union.tree_node*) local_unnamed_addr #1

declare dso_local { i64, i64 } @tree_to_double_int(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @get_inner_reference(%union.tree_node*, i64*, i64*, %union.tree_node**, i32*, i32*, i32*, i8 zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i64, i64 } @uhwi_to_double_int(i64 %cst) unnamed_addr #0 !dbg !2716 {
entry:
  call void @llvm.dbg.value(metadata i64 %cst, metadata !2720, metadata !DIExpression()), !dbg !2722
  %0 = insertvalue { i64, i64 } undef, i64 %cst, 0, !dbg !2723
  %1 = insertvalue { i64, i64 } %0, i64 0, 1, !dbg !2723
  ret { i64, i64 } %1, !dbg !2723
}

declare dso_local %union.tree_node* @build_fold_addr_expr_loc(i32, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @add_elt_to_tree(%union.tree_node* %expr, %union.tree_node* %type, %union.tree_node* %elt, i64 %scale.coerce0, i64 %scale.coerce1, %struct.affine_tree_combination* %comb) unnamed_addr #4 !dbg !2724 {
entry:
  %scale = alloca %struct.double_int, align 8
  %tmp = alloca %struct.double_int, align 8
  %tmp63 = alloca %struct.double_int, align 8
  %0 = getelementptr inbounds %struct.double_int, %struct.double_int* %scale, i64 0, i32 0
  store i64 %scale.coerce0, i64* %0, align 8
  %1 = getelementptr inbounds %struct.double_int, %struct.double_int* %scale, i64 0, i32 1
  store i64 %scale.coerce1, i64* %1, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !2728, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2729, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata %union.tree_node* %elt, metadata !2730, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !2732, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2734, metadata !DIExpression()), !dbg !2735
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2736
  %bf.load = load i64, i64* %2, align 8, !dbg !2736
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2736
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !2736
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2736

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 12, !dbg !2736
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2738

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2739
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !2734, metadata !DIExpression()), !dbg !2735
  br label %if.end, !dbg !2740

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %type1.0 = phi %union.tree_node* [ %3, %if.then ], [ %type, %lor.lhs.false ], !dbg !2735
  call void @llvm.dbg.value(metadata %union.tree_node* %type1.0, metadata !2734, metadata !DIExpression()), !dbg !2735
  %4 = bitcast %struct.double_int* %tmp to i8*, !dbg !2741
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8, !dbg !2741
  %call = tail call { i64, i64 } @double_int_ext_for_comb(i64 %scale.coerce0, i64 %scale.coerce1, %struct.affine_tree_combination* %comb) #7, !dbg !2741
  %5 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !2741
  %6 = extractvalue { i64, i64 } %call, 0, !dbg !2741
  store i64 %6, i64* %5, align 8, !dbg !2741
  %7 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !2741
  %8 = extractvalue { i64, i64 } %call, 1, !dbg !2741
  store i64 %8, i64* %7, align 8, !dbg !2741
  %9 = bitcast %struct.double_int* %scale to i8*, !dbg !2741
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !2741
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8, !dbg !2741
  %call6 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type1.0, %union.tree_node* %elt) #6, !dbg !2742
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !2730, metadata !DIExpression()), !dbg !2735
  %10 = load i64, i64* %0, align 8, !dbg !2743
  %11 = load i64, i64* %1, align 8, !dbg !2743
  %call7 = tail call fastcc zeroext i8 @double_int_one_p(i64 %10, i64 %11) #7, !dbg !2743
  %tobool = icmp eq i8 %call7, 0, !dbg !2743
  br i1 %tobool, label %if.end28, label %if.then8, !dbg !2745

if.then8:                                         ; preds = %if.end
  %tobool9 = icmp eq %union.tree_node* %expr, null, !dbg !2746
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !2749

if.then10:                                        ; preds = %if.then8
  %call11 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* %call6) #6, !dbg !2750
  br label %cleanup, !dbg !2751

if.end12:                                         ; preds = %if.then8
  %bf.load14 = load i64, i64* %2, align 8, !dbg !2752
  %bf.cast167 = and i64 %bf.load14, 65535, !dbg !2752
  %cmp17 = icmp eq i64 %bf.cast167, 10, !dbg !2752
  br i1 %cmp17, label %if.then24, label %lor.lhs.false18, !dbg !2752

lor.lhs.false18:                                  ; preds = %if.end12
  %cmp23 = icmp eq i64 %bf.cast167, 12, !dbg !2752
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !2754

if.then24:                                        ; preds = %lor.lhs.false18, %if.end12
  %call25 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 66, %union.tree_node* %type, %union.tree_node* nonnull %expr, %union.tree_node* %call6) #6, !dbg !2755
  br label %cleanup, !dbg !2756

if.end26:                                         ; preds = %lor.lhs.false18
  %call27 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 63, %union.tree_node* %type, %union.tree_node* nonnull %expr, %union.tree_node* %call6) #6, !dbg !2757
  br label %cleanup, !dbg !2758

if.end28:                                         ; preds = %if.end
  %call29 = tail call fastcc zeroext i8 @double_int_minus_one_p(i64 %10, i64 %11) #7, !dbg !2759
  %tobool30 = icmp eq i8 %call29, 0, !dbg !2759
  %tobool32 = icmp ne %union.tree_node* %expr, null, !dbg !2735
  br i1 %tobool30, label %if.end53, label %if.then31, !dbg !2761

if.then31:                                        ; preds = %if.end28
  br i1 %tobool32, label %if.end36, label %if.then33, !dbg !2762

if.then33:                                        ; preds = %if.then31
  %call34 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 79, %union.tree_node* %type1.0, %union.tree_node* %call6) #6, !dbg !2764
  %call35 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* %call34) #6, !dbg !2764
  br label %cleanup, !dbg !2766

if.end36:                                         ; preds = %if.then31
  %bf.load38 = load i64, i64* %2, align 8, !dbg !2767
  %bf.cast405 = and i64 %bf.load38, 65535, !dbg !2767
  %cmp41 = icmp eq i64 %bf.cast405, 10, !dbg !2767
  br i1 %cmp41, label %if.then48, label %lor.lhs.false42, !dbg !2767

lor.lhs.false42:                                  ; preds = %if.end36
  %cmp47 = icmp eq i64 %bf.cast405, 12, !dbg !2767
  br i1 %cmp47, label %if.then48, label %if.end51, !dbg !2769

if.then48:                                        ; preds = %lor.lhs.false42, %if.end36
  %call49 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 79, %union.tree_node* %type1.0, %union.tree_node* %call6) #6, !dbg !2770
  call void @llvm.dbg.value(metadata %union.tree_node* %call49, metadata !2730, metadata !DIExpression()), !dbg !2735
  %call50 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 66, %union.tree_node* %type, %union.tree_node* nonnull %expr, %union.tree_node* %call49) #6, !dbg !2772
  br label %cleanup, !dbg !2773

if.end51:                                         ; preds = %lor.lhs.false42
  %call52 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 64, %union.tree_node* %type, %union.tree_node* nonnull %expr, %union.tree_node* %call6) #6, !dbg !2774
  br label %cleanup, !dbg !2775

if.end53:                                         ; preds = %if.end28
  br i1 %tobool32, label %if.end59, label %if.then55, !dbg !2776

if.then55:                                        ; preds = %if.end53
  %call56 = tail call %union.tree_node* @double_int_to_tree(%union.tree_node* %type1.0, i64 %10, i64 %11) #6, !dbg !2777
  %call57 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %type1.0, %union.tree_node* %call6, %union.tree_node* %call56) #6, !dbg !2777
  %call58 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* %call57) #6, !dbg !2777
  br label %cleanup, !dbg !2779

if.end59:                                         ; preds = %if.end53
  %call60 = tail call zeroext i8 @double_int_negative_p(i64 %10, i64 %11) #6, !dbg !2780
  %tobool61 = icmp eq i8 %call60, 0, !dbg !2780
  br i1 %tobool61, label %if.end65, label %if.then62, !dbg !2782

if.then62:                                        ; preds = %if.end59
  call void @llvm.dbg.value(metadata i32 64, metadata !2733, metadata !DIExpression()), !dbg !2735
  %12 = bitcast %struct.double_int* %tmp63 to i8*, !dbg !2783
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #8, !dbg !2783
  %call64 = tail call { i64, i64 } @double_int_neg(i64 %10, i64 %11) #6, !dbg !2783
  %13 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp63, i64 0, i32 0, !dbg !2783
  %14 = extractvalue { i64, i64 } %call64, 0, !dbg !2783
  store i64 %14, i64* %13, align 8, !dbg !2783
  %15 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp63, i64 0, i32 1, !dbg !2783
  %16 = extractvalue { i64, i64 } %call64, 1, !dbg !2783
  store i64 %16, i64* %15, align 8, !dbg !2783
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %12, i64 16, i1 false), !dbg !2783
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #8, !dbg !2783
  %.pre = load i64, i64* %0, align 8, !dbg !2785
  %.pre9 = load i64, i64* %1, align 8, !dbg !2785
  br label %if.end65, !dbg !2786

if.end65:                                         ; preds = %if.end59, %if.then62
  %17 = phi i64 [ %.pre9, %if.then62 ], [ %11, %if.end59 ], !dbg !2785
  %18 = phi i64 [ %.pre, %if.then62 ], [ %10, %if.end59 ], !dbg !2785
  %code.0 = phi i32 [ 64, %if.then62 ], [ 63, %if.end59 ], !dbg !2787
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !2733, metadata !DIExpression()), !dbg !2735
  %call66 = tail call %union.tree_node* @double_int_to_tree(%union.tree_node* %type1.0, i64 %18, i64 %17) #6, !dbg !2785
  %call67 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %type1.0, %union.tree_node* %call6, %union.tree_node* %call66) #6, !dbg !2785
  call void @llvm.dbg.value(metadata %union.tree_node* %call67, metadata !2730, metadata !DIExpression()), !dbg !2735
  %bf.load69 = load i64, i64* %2, align 8, !dbg !2788
  %bf.cast713 = and i64 %bf.load69, 65535, !dbg !2788
  %cmp72 = icmp eq i64 %bf.cast713, 10, !dbg !2788
  br i1 %cmp72, label %if.then79, label %lor.lhs.false73, !dbg !2788

lor.lhs.false73:                                  ; preds = %if.end65
  %cmp78 = icmp eq i64 %bf.cast713, 12, !dbg !2788
  br i1 %cmp78, label %if.then79, label %if.end85, !dbg !2790

if.then79:                                        ; preds = %lor.lhs.false73, %if.end65
  %cmp80 = icmp eq i32 %code.0, 64, !dbg !2791
  br i1 %cmp80, label %if.then81, label %if.end83, !dbg !2794

if.then81:                                        ; preds = %if.then79
  %call82 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 79, %union.tree_node* %type1.0, %union.tree_node* %call67) #6, !dbg !2795
  call void @llvm.dbg.value(metadata %union.tree_node* %call82, metadata !2730, metadata !DIExpression()), !dbg !2735
  br label %if.end83, !dbg !2796

if.end83:                                         ; preds = %if.then81, %if.then79
  %elt.addr.0 = phi %union.tree_node* [ %call82, %if.then81 ], [ %call67, %if.then79 ], !dbg !2735
  call void @llvm.dbg.value(metadata %union.tree_node* %elt.addr.0, metadata !2730, metadata !DIExpression()), !dbg !2735
  %call84 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 66, %union.tree_node* %type, %union.tree_node* nonnull %expr, %union.tree_node* %elt.addr.0) #6, !dbg !2797
  br label %cleanup, !dbg !2798

if.end85:                                         ; preds = %lor.lhs.false73
  %call86 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 %code.0, %union.tree_node* %type, %union.tree_node* nonnull %expr, %union.tree_node* %call67) #6, !dbg !2799
  br label %cleanup, !dbg !2800

cleanup:                                          ; preds = %if.end85, %if.end83, %if.then55, %if.end51, %if.then48, %if.then33, %if.end26, %if.then24, %if.then10
  %retval.0 = phi %union.tree_node* [ %call25, %if.then24 ], [ %call27, %if.end26 ], [ %call11, %if.then10 ], [ %call50, %if.then48 ], [ %call52, %if.end51 ], [ %call35, %if.then33 ], [ %call84, %if.end83 ], [ %call86, %if.end85 ], [ %call58, %if.then55 ], !dbg !2735
  ret %union.tree_node* %retval.0, !dbg !2801
}

declare dso_local zeroext i8 @double_int_negative_p(i64, i64) local_unnamed_addr #1

declare dso_local { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @unshare_aff_combination(%struct.affine_tree_combination* %comb) local_unnamed_addr #4 !dbg !2802 {
entry:
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !2806, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i32 0, metadata !2807, metadata !DIExpression()), !dbg !2808
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 2, !dbg !2809
  br label %for.cond, !dbg !2812

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !2813
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2807, metadata !DIExpression()), !dbg !2808
  %0 = load i32, i32* %n, align 8, !dbg !2814
  %1 = zext i32 %0 to i64, !dbg !2815
  %cmp = icmp ult i64 %indvars.iv, %1, !dbg !2815
  br i1 %cmp, label %for.body, label %for.end, !dbg !2816

for.body:                                         ; preds = %for.cond
  %val = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !2817
  %2 = load %union.tree_node*, %union.tree_node** %val, align 8, !dbg !2817
  %call = tail call %union.tree_node* @unshare_expr(%union.tree_node* %2) #6, !dbg !2818
  store %union.tree_node* %call, %union.tree_node** %val, align 8, !dbg !2819
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2820
  br label %for.cond, !dbg !2821, !llvm.loop !2822

for.end:                                          ; preds = %for.cond
  %rest = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 4, !dbg !2824
  %3 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !2824
  %tobool = icmp eq %union.tree_node* %3, null, !dbg !2826
  br i1 %tobool, label %if.end, label %if.then, !dbg !2827

if.then:                                          ; preds = %for.end
  %call6 = tail call %union.tree_node* @unshare_expr(%union.tree_node* nonnull %3) #6, !dbg !2828
  store %union.tree_node* %call6, %union.tree_node** %rest, align 8, !dbg !2829
  br label %if.end, !dbg !2830

if.end:                                           ; preds = %for.end, %if.then
  ret void, !dbg !2831
}

declare dso_local %union.tree_node* @unshare_expr(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @aff_combination_remove_elt(%struct.affine_tree_combination* %comb, i32 %m) local_unnamed_addr #4 !dbg !2832 {
entry:
  %tmp = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !2836, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32 %m, metadata !2837, metadata !DIExpression()), !dbg !2838
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 2, !dbg !2839
  %0 = load i32, i32* %n, align 8, !dbg !2840
  %dec = add i32 %0, -1, !dbg !2840
  store i32 %dec, i32* %n, align 8, !dbg !2840
  %cmp = icmp ult i32 %dec, %m, !dbg !2841
  br i1 %cmp, label %if.end, label %if.then, !dbg !2843

if.then:                                          ; preds = %entry
  %idxprom = zext i32 %m to i64, !dbg !2844
  %arrayidx = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom, !dbg !2844
  %idxprom4 = zext i32 %dec to i64, !dbg !2845
  %arrayidx5 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom4, !dbg !2845
  %1 = bitcast %struct.aff_comb_elt* %arrayidx to i8*, !dbg !2845
  %2 = bitcast %struct.aff_comb_elt* %arrayidx5 to i8*, !dbg !2845
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !2845
  br label %if.end, !dbg !2844

if.end:                                           ; preds = %entry, %if.then
  %rest = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 4, !dbg !2846
  %3 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !2846
  %tobool = icmp eq %union.tree_node* %3, null, !dbg !2848
  br i1 %tobool, label %if.end18, label %if.then6, !dbg !2849

if.then6:                                         ; preds = %if.end
  %idxprom9 = zext i32 %dec to i64, !dbg !2850
  %coef = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom9, i32 1, !dbg !2852
  %4 = bitcast %struct.double_int* %tmp to i8*, !dbg !2853
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8, !dbg !2853
  %call = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 1) #7, !dbg !2853
  %5 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !2853
  %6 = extractvalue { i64, i64 } %call, 0, !dbg !2853
  store i64 %6, i64* %5, align 8, !dbg !2853
  %7 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !2853
  %8 = extractvalue { i64, i64 } %call, 1, !dbg !2853
  store i64 %8, i64* %7, align 8, !dbg !2853
  %9 = bitcast %struct.double_int* %coef to i8*, !dbg !2853
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !2853
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8, !dbg !2853
  %10 = bitcast %union.tree_node** %rest to i64*, !dbg !2854
  %11 = load i64, i64* %10, align 8, !dbg !2854
  %12 = load i32, i32* %n, align 8, !dbg !2855
  %idxprom14 = zext i32 %12 to i64, !dbg !2856
  %arrayidx15 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %idxprom14, !dbg !2856
  %13 = bitcast %struct.aff_comb_elt* %arrayidx15 to i64*, !dbg !2857
  store i64 %11, i64* %13, align 8, !dbg !2857
  store %union.tree_node* null, %union.tree_node** %rest, align 8, !dbg !2858
  %inc = add i32 %12, 1, !dbg !2859
  store i32 %inc, i32* %n, align 8, !dbg !2859
  br label %if.end18, !dbg !2860

if.end18:                                         ; preds = %if.end, %if.then6
  ret void, !dbg !2861
}

; Function Attrs: nounwind uwtable
define dso_local void @aff_combination_mult(%struct.affine_tree_combination* %c1, %struct.affine_tree_combination* %c2, %struct.affine_tree_combination* %r) local_unnamed_addr #4 !dbg !2862 {
entry:
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %c1, metadata !2866, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %c2, metadata !2867, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %r, metadata !2868, metadata !DIExpression()), !dbg !2870
  %0 = bitcast %struct.affine_tree_combination* %c1 to %struct.tree_type**, !dbg !2871
  %1 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !2871
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1, i64 0, i32 6, !dbg !2871
  %bf.load = load i32, i32* %precision, align 4, !dbg !2871
  %2 = bitcast %struct.affine_tree_combination* %c2 to %struct.tree_type**, !dbg !2871
  %3 = load %struct.tree_type*, %struct.tree_type** %2, align 8, !dbg !2871
  %precision4 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 6, !dbg !2871
  %bf.load5 = load i32, i32* %precision4, align 4, !dbg !2871
  %4 = xor i32 %bf.load, %bf.load5, !dbg !2871
  %5 = and i32 %4, 1023, !dbg !2871
  %cmp = icmp eq i32 %5, 0, !dbg !2871
  %6 = bitcast %struct.tree_type* %1 to %union.tree_node*, !dbg !2871
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2871

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 523, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2871
  %type7.phi.trans.insert = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c1, i64 0, i32 0, !dbg !2870
  %.pre = load %union.tree_node*, %union.tree_node** %type7.phi.trans.insert, align 8, !dbg !2872
  br label %cond.end, !dbg !2871

cond.end:                                         ; preds = %entry, %cond.true
  %7 = phi %union.tree_node* [ %6, %entry ], [ %.pre, %cond.true ], !dbg !2872
  tail call fastcc void @aff_combination_zero(%struct.affine_tree_combination* %r, %union.tree_node* %7) #7, !dbg !2873
  call void @llvm.dbg.value(metadata i32 0, metadata !2869, metadata !DIExpression()), !dbg !2870
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c2, i64 0, i32 2, !dbg !2874
  br label %for.cond, !dbg !2877

for.cond:                                         ; preds = %for.body, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %cond.end ], !dbg !2878
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2869, metadata !DIExpression()), !dbg !2870
  %8 = load i32, i32* %n, align 8, !dbg !2879
  %9 = zext i32 %8 to i64, !dbg !2880
  %cmp8 = icmp ult i64 %indvars.iv, %9, !dbg !2880
  br i1 %cmp8, label %for.body, label %for.end, !dbg !2881

for.body:                                         ; preds = %for.cond
  %val = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c2, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !2882
  %10 = load %union.tree_node*, %union.tree_node** %val, align 8, !dbg !2882
  %11 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c2, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 0, !dbg !2883
  %12 = load i64, i64* %11, align 8, !dbg !2883
  %13 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c2, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 1, !dbg !2883
  %14 = load i64, i64* %13, align 8, !dbg !2883
  tail call fastcc void @aff_combination_add_product(%struct.affine_tree_combination* %c1, i64 %12, i64 %14, %union.tree_node* %10, %struct.affine_tree_combination* %r) #7, !dbg !2883
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2884
  br label %for.cond, !dbg !2885, !llvm.loop !2886

for.end:                                          ; preds = %for.cond
  %rest = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c2, i64 0, i32 4, !dbg !2888
  %15 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !2888
  %tobool = icmp eq %union.tree_node* %15, null, !dbg !2890
  br i1 %tobool, label %if.end, label %if.then, !dbg !2891

if.then:                                          ; preds = %for.end
  %call = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 1) #7, !dbg !2892
  %16 = extractvalue { i64, i64 } %call, 0, !dbg !2892
  %17 = extractvalue { i64, i64 } %call, 1, !dbg !2892
  %18 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !2893
  tail call fastcc void @aff_combination_add_product(%struct.affine_tree_combination* %c1, i64 %16, i64 %17, %union.tree_node* %18, %struct.affine_tree_combination* %r) #7, !dbg !2894
  br label %if.end, !dbg !2894

if.end:                                           ; preds = %for.end, %if.then
  %19 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c2, i64 0, i32 1, i32 0, !dbg !2895
  %20 = load i64, i64* %19, align 8, !dbg !2895
  %21 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c2, i64 0, i32 1, i32 1, !dbg !2895
  %22 = load i64, i64* %21, align 8, !dbg !2895
  tail call fastcc void @aff_combination_add_product(%struct.affine_tree_combination* %c1, i64 %20, i64 %22, %union.tree_node* null, %struct.affine_tree_combination* %r) #7, !dbg !2895
  ret void, !dbg !2896
}

; Function Attrs: nounwind uwtable
define internal fastcc void @aff_combination_add_product(%struct.affine_tree_combination* %c, i64 %coef.coerce0, i64 %coef.coerce1, %union.tree_node* %val, %struct.affine_tree_combination* %r) unnamed_addr #4 !dbg !2897 {
entry:
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %c, metadata !2901, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !2903, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %r, metadata !2904, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i32 0, metadata !2905, metadata !DIExpression()), !dbg !2908
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c, i64 0, i32 2, !dbg !2909
  %tobool = icmp eq %union.tree_node* %val, null, !dbg !2912
  br i1 %tobool, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !2915

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %for.cond, !dbg !2915

entry.split.us:                                   ; preds = %entry
  br label %for.cond.us, !dbg !2915

for.cond.us:                                      ; preds = %for.body.us, %entry.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.us ], [ 0, %entry.split.us ], !dbg !2916
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2905, metadata !DIExpression()), !dbg !2908
  %0 = load i32, i32* %n, align 8, !dbg !2917
  %1 = zext i32 %0 to i64, !dbg !2918
  %cmp.us = icmp ult i64 %indvars.iv, %1, !dbg !2918
  br i1 %cmp.us, label %for.body.us, label %for.end.us-lcssa.us, !dbg !2919

for.body.us:                                      ; preds = %for.cond.us
  call void @llvm.dbg.value(metadata %union.tree_node* undef, metadata !2906, metadata !DIExpression()), !dbg !2908
  %val1.us = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !2920
  %2 = load %union.tree_node*, %union.tree_node** %val1.us, align 8, !dbg !2920
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2906, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2906, metadata !DIExpression()), !dbg !2908
  %3 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 0, !dbg !2921
  %4 = load i64, i64* %3, align 8, !dbg !2921
  %5 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 1, !dbg !2921
  %6 = load i64, i64* %5, align 8, !dbg !2921
  %call8.us = tail call { i64, i64 } @double_int_mul(i64 %coef.coerce0, i64 %coef.coerce1, i64 %4, i64 %6) #6, !dbg !2921
  %7 = extractvalue { i64, i64 } %call8.us, 0, !dbg !2921
  %8 = extractvalue { i64, i64 } %call8.us, 1, !dbg !2921
  tail call void @aff_combination_add_elt(%struct.affine_tree_combination* %r, %union.tree_node* %2, i64 %7, i64 %8) #7, !dbg !2922
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2923
  br label %for.cond.us, !dbg !2924, !llvm.loop !2925

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  br label %for.end, !dbg !2927

for.cond:                                         ; preds = %for.body, %entry.entry.split_crit_edge
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.body ], [ 0, %entry.entry.split_crit_edge ], !dbg !2916
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !2905, metadata !DIExpression()), !dbg !2908
  %9 = load i32, i32* %n, align 8, !dbg !2917
  %10 = zext i32 %9 to i64, !dbg !2918
  %cmp = icmp ult i64 %indvars.iv1, %10, !dbg !2918
  br i1 %cmp, label %for.body, label %for.end.us-lcssa, !dbg !2919

for.body:                                         ; preds = %for.cond
  %val1 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c, i64 0, i32 3, i64 %indvars.iv1, i32 0, !dbg !2920
  %11 = load %union.tree_node*, %union.tree_node** %val1, align 8, !dbg !2920
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !2906, metadata !DIExpression()), !dbg !2908
  %type2 = getelementptr inbounds %union.tree_node, %union.tree_node* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2929
  %12 = load %union.tree_node*, %union.tree_node** %type2, align 8, !dbg !2929
  call void @llvm.dbg.value(metadata %union.tree_node* %12, metadata !2907, metadata !DIExpression()), !dbg !2908
  %call = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %12, %union.tree_node* nonnull %val) #6, !dbg !2931
  %call3 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %12, %union.tree_node* %11, %union.tree_node* %call) #6, !dbg !2931
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2906, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2906, metadata !DIExpression()), !dbg !2908
  %13 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c, i64 0, i32 3, i64 %indvars.iv1, i32 1, i32 0, !dbg !2921
  %14 = load i64, i64* %13, align 8, !dbg !2921
  %15 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c, i64 0, i32 3, i64 %indvars.iv1, i32 1, i32 1, !dbg !2921
  %16 = load i64, i64* %15, align 8, !dbg !2921
  %call8 = tail call { i64, i64 } @double_int_mul(i64 %coef.coerce0, i64 %coef.coerce1, i64 %14, i64 %16) #6, !dbg !2921
  %17 = extractvalue { i64, i64 } %call8, 0, !dbg !2921
  %18 = extractvalue { i64, i64 } %call8, 1, !dbg !2921
  tail call void @aff_combination_add_elt(%struct.affine_tree_combination* %r, %union.tree_node* %call3, i64 %17, i64 %18) #7, !dbg !2922
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !2923
  br label %for.cond, !dbg !2924, !llvm.loop !2925

for.end.us-lcssa:                                 ; preds = %for.cond
  br label %for.end, !dbg !2927

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %rest = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c, i64 0, i32 4, !dbg !2927
  %19 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !2927
  %tobool9 = icmp eq %union.tree_node* %19, null, !dbg !2932
  br i1 %tobool9, label %if.end19, label %if.then10, !dbg !2933

if.then10:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata %union.tree_node* %19, metadata !2906, metadata !DIExpression()), !dbg !2908
  br i1 %tobool, label %if.end18, label %if.then13, !dbg !2934

if.then13:                                        ; preds = %if.then10
  %type15 = getelementptr inbounds %union.tree_node, %union.tree_node* %19, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2936
  %20 = load %union.tree_node*, %union.tree_node** %type15, align 8, !dbg !2936
  call void @llvm.dbg.value(metadata %union.tree_node* %20, metadata !2907, metadata !DIExpression()), !dbg !2908
  %call16 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %20, %union.tree_node* nonnull %val) #6, !dbg !2939
  %call17 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %20, %union.tree_node* nonnull %19, %union.tree_node* %call16) #6, !dbg !2939
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !2906, metadata !DIExpression()), !dbg !2908
  br label %if.end18, !dbg !2940

if.end18:                                         ; preds = %if.then10, %if.then13
  %aval.1 = phi %union.tree_node* [ %call17, %if.then13 ], [ %19, %if.then10 ], !dbg !2941
  call void @llvm.dbg.value(metadata %union.tree_node* %aval.1, metadata !2906, metadata !DIExpression()), !dbg !2908
  tail call void @aff_combination_add_elt(%struct.affine_tree_combination* %r, %union.tree_node* %aval.1, i64 %coef.coerce0, i64 %coef.coerce1) #7, !dbg !2942
  br label %if.end19, !dbg !2943

if.end19:                                         ; preds = %for.end, %if.end18
  %21 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c, i64 0, i32 1, i32 0, !dbg !2944
  %22 = load i64, i64* %21, align 8, !dbg !2944
  %23 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %c, i64 0, i32 1, i32 1, !dbg !2944
  %24 = load i64, i64* %23, align 8, !dbg !2944
  %call23 = tail call { i64, i64 } @double_int_mul(i64 %coef.coerce0, i64 %coef.coerce1, i64 %22, i64 %24) #6, !dbg !2944
  br i1 %tobool, label %if.else, label %if.then21, !dbg !2946

if.then21:                                        ; preds = %if.end19
  %25 = extractvalue { i64, i64 } %call23, 0, !dbg !2947
  %26 = extractvalue { i64, i64 } %call23, 1, !dbg !2947
  tail call void @aff_combination_add_elt(%struct.affine_tree_combination* %r, %union.tree_node* nonnull %val, i64 %25, i64 %26) #7, !dbg !2948
  br label %if.end27, !dbg !2948

if.else:                                          ; preds = %if.end19
  %27 = extractvalue { i64, i64 } %call23, 0, !dbg !2949
  %28 = extractvalue { i64, i64 } %call23, 1, !dbg !2949
  tail call fastcc void @aff_combination_add_cst(%struct.affine_tree_combination* %r, i64 %27, i64 %28) #7, !dbg !2950
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then21
  ret void, !dbg !2951
}

; Function Attrs: nounwind uwtable
define dso_local void @aff_combination_expand(%struct.affine_tree_combination* %comb, %struct.pointer_map_t** %cache) local_unnamed_addr #4 !dbg !2952 {
entry:
  %to_add = alloca %struct.affine_tree_combination, align 8
  %current = alloca %struct.affine_tree_combination, align 8
  %curre = alloca %struct.affine_tree_combination, align 8
  %scale = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !2960, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata %struct.pointer_map_t** %cache, metadata !2961, metadata !DIExpression()), !dbg !2978
  %0 = bitcast %struct.affine_tree_combination* %to_add to i8*, !dbg !2979
  call void @llvm.lifetime.start.p0i8(i64 232, i8* nonnull %0) #8, !dbg !2979
  %1 = bitcast %struct.affine_tree_combination* %current to i8*, !dbg !2979
  call void @llvm.lifetime.start.p0i8(i64 232, i8* nonnull %1) #8, !dbg !2979
  %2 = bitcast %struct.affine_tree_combination* %curre to i8*, !dbg !2979
  call void @llvm.lifetime.start.p0i8(i64 232, i8* nonnull %2) #8, !dbg !2979
  %3 = bitcast %struct.double_int* %scale to i8*, !dbg !2980
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8, !dbg !2980
  %type = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 0, !dbg !2981
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2981
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %to_add, metadata !2963, metadata !DIExpression(DW_OP_deref)), !dbg !2978
  call fastcc void @aff_combination_zero(%struct.affine_tree_combination* nonnull %to_add, %union.tree_node* %4) #7, !dbg !2982
  call void @llvm.dbg.value(metadata i32 0, metadata !2962, metadata !DIExpression()), !dbg !2978
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 2, !dbg !2983
  %5 = getelementptr inbounds %struct.double_int, %struct.double_int* %scale, i64 0, i32 0, !dbg !2984
  %6 = getelementptr inbounds %struct.double_int, %struct.double_int* %scale, i64 0, i32 1, !dbg !2984
  br label %for.cond, !dbg !2985

for.cond:                                         ; preds = %cleanup, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %entry ], !dbg !2986
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2962, metadata !DIExpression()), !dbg !2978
  %7 = load i32, i32* %n, align 8, !dbg !2987
  %8 = zext i32 %7 to i64, !dbg !2988
  %cmp = icmp ult i64 %indvars.iv, %8, !dbg !2988
  br i1 %cmp, label %for.body, label %for.end, !dbg !2989

for.body:                                         ; preds = %for.cond
  %val = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !2990
  %9 = load %union.tree_node*, %union.tree_node** %val, align 8, !dbg !2990
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !2966, metadata !DIExpression()), !dbg !2978
  %type2 = getelementptr inbounds %union.tree_node, %union.tree_node* %9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2991
  %10 = load %union.tree_node*, %union.tree_node** %type2, align 8, !dbg !2991
  call void @llvm.dbg.value(metadata %union.tree_node* %10, metadata !2972, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !2976, metadata !DIExpression()), !dbg !2984
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2992
  %bf.load = load i64, i64* %11, align 8, !dbg !2992
  %bf.cast5 = and i64 %bf.load, 65535, !dbg !2994
  %cmp3 = icmp eq i64 %bf.cast5, 116, !dbg !2994
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !2995

land.lhs.true:                                    ; preds = %for.body
  %type4 = bitcast %union.tree_node* %10 to %struct.tree_type*, !dbg !2996
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type4, i64 0, i32 6, !dbg !2996
  %bf.load5 = load i32, i32* %precision, align 4, !dbg !2996
  %bf.clear6 = and i32 %bf.load5, 1023, !dbg !2996
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2997
  %12 = bitcast %union.tree_node** %operands to %struct.tree_common**, !dbg !2997
  %13 = load %struct.tree_common*, %struct.tree_common** %12, align 8, !dbg !2997
  %type10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %13, i64 0, i32 2, !dbg !2997
  %14 = bitcast %union.tree_node** %type10 to %struct.tree_type**, !dbg !2997
  %15 = load %struct.tree_type*, %struct.tree_type** %14, align 8, !dbg !2997
  %precision12 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %15, i64 0, i32 6, !dbg !2997
  %bf.load13 = load i32, i32* %precision12, align 4, !dbg !2997
  %bf.clear14 = and i32 %bf.load13, 1023, !dbg !2997
  %cmp15 = icmp ult i32 %bf.clear6, %bf.clear14, !dbg !2998
  br i1 %cmp15, label %if.end, label %if.then, !dbg !2999

if.then:                                          ; preds = %land.lhs.true
  %16 = bitcast %struct.tree_common* %13 to %union.tree_node*, !dbg !2999
  call void @llvm.dbg.value(metadata %union.tree_node* %16, metadata !2976, metadata !DIExpression()), !dbg !2984
  %.phi.trans.insert = getelementptr inbounds %struct.tree_common, %struct.tree_common* %13, i64 0, i32 0, i32 0, !dbg !3000
  %bf.load20.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !3002
  br label %if.end, !dbg !3003

if.end:                                           ; preds = %land.lhs.true, %if.then, %for.body
  %bf.load20 = phi i64 [ %bf.load20.pre, %if.then ], [ %bf.load, %land.lhs.true ], [ %bf.load, %for.body ], !dbg !3002
  %name.0 = phi %union.tree_node* [ %16, %if.then ], [ %9, %land.lhs.true ], [ %9, %for.body ], !dbg !2984
  call void @llvm.dbg.value(metadata %union.tree_node* %name.0, metadata !2976, metadata !DIExpression()), !dbg !2984
  %bf.cast226 = and i64 %bf.load20, 65535, !dbg !3004
  %cmp23 = icmp eq i64 %bf.cast226, 141, !dbg !3004
  br i1 %cmp23, label %if.end25, label %cleanup, !dbg !3005

if.end25:                                         ; preds = %if.end
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %name.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3006
  %17 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3006
  %18 = load %union.gimple_statement_d*, %union.gimple_statement_d** %17, align 8, !dbg !3006
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %18, metadata !2968, metadata !DIExpression()), !dbg !2978
  %call = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %18) #7, !dbg !3007
  %tobool = icmp eq i8 %call, 0, !dbg !3007
  br i1 %tobool, label %cleanup, label %lor.lhs.false, !dbg !3009

lor.lhs.false:                                    ; preds = %if.end25
  %call26 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %18) #7, !dbg !3010
  %cmp27 = icmp eq %union.tree_node* %call26, %name.0, !dbg !3011
  br i1 %cmp27, label %if.end29, label %cleanup, !dbg !3012

if.end29:                                         ; preds = %lor.lhs.false
  %call30 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %18) #7, !dbg !3013
  call void @llvm.dbg.value(metadata i32 %call30, metadata !2977, metadata !DIExpression()), !dbg !2984
  %cmp31 = icmp eq i32 %call30, 141, !dbg !3014
  br i1 %cmp31, label %if.end29.if.end48_crit_edge, label %land.lhs.true32, !dbg !3016

if.end29.if.end48_crit_edge:                      ; preds = %if.end29
  %.pre = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 141), align 4, !dbg !3017
  br label %if.end48, !dbg !3016

land.lhs.true32:                                  ; preds = %if.end29
  %idxprom33 = sext i32 %call30 to i64, !dbg !3019
  %arrayidx34 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom33, !dbg !3019
  %19 = load i32, i32* %arrayidx34, align 4, !dbg !3019
  %cmp35 = icmp ugt i32 %19, 3, !dbg !3019
  br i1 %cmp35, label %land.lhs.true36, label %land.lhs.true40, !dbg !3019

land.lhs.true36:                                  ; preds = %land.lhs.true32
  %cmp39 = icmp ult i32 %19, 11, !dbg !3019
  br i1 %cmp39, label %if.end48, label %land.lhs.true40, !dbg !3020

land.lhs.true40:                                  ; preds = %land.lhs.true36, %land.lhs.true32
  %call41 = call fastcc i32 @get_gimple_rhs_class(i32 %call30) #7, !dbg !3021
  %cmp42 = icmp eq i32 %call41, 3, !dbg !3022
  br i1 %cmp42, label %lor.lhs.false43, label %cleanup, !dbg !3023

lor.lhs.false43:                                  ; preds = %land.lhs.true40
  %call44 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %18) #7, !dbg !3024
  %call45 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call44) #6, !dbg !3025
  %tobool46 = icmp eq i8 %call45, 0, !dbg !3025
  br i1 %tobool46, label %cleanup, label %if.end48, !dbg !3026

if.end48:                                         ; preds = %if.end29.if.end48_crit_edge, %lor.lhs.false43, %land.lhs.true36
  %20 = phi i32 [ %.pre, %if.end29.if.end48_crit_edge ], [ %19, %lor.lhs.false43 ], [ %19, %land.lhs.true36 ], !dbg !3017
  %cmp51 = icmp eq i32 %20, 4, !dbg !3027
  br i1 %cmp51, label %cleanup, label %if.end53, !dbg !3028

if.end53:                                         ; preds = %if.end48
  %21 = load %struct.pointer_map_t*, %struct.pointer_map_t** %cache, align 8, !dbg !3029
  %tobool54 = icmp eq %struct.pointer_map_t* %21, null, !dbg !3029
  br i1 %tobool54, label %if.then55, label %if.end57, !dbg !3031

if.then55:                                        ; preds = %if.end53
  %call56 = call %struct.pointer_map_t* @pointer_map_create() #6, !dbg !3032
  store %struct.pointer_map_t* %call56, %struct.pointer_map_t** %cache, align 8, !dbg !3033
  br label %if.end57, !dbg !3034

if.end57:                                         ; preds = %if.end53, %if.then55
  %22 = phi %struct.pointer_map_t* [ %21, %if.end53 ], [ %call56, %if.then55 ], !dbg !3035
  %23 = bitcast %union.tree_node* %9 to i8*, !dbg !3036
  %call58 = call i8** @pointer_map_insert(%struct.pointer_map_t* %22, i8* %23) #6, !dbg !3037
  call void @llvm.dbg.value(metadata i8** %call58, metadata !2970, metadata !DIExpression()), !dbg !2978
  %24 = bitcast i8** %call58 to %struct.name_expansion**, !dbg !3038
  %25 = load %struct.name_expansion*, %struct.name_expansion** %24, align 8, !dbg !3038
  call void @llvm.dbg.value(metadata %struct.name_expansion* %25, metadata !2971, metadata !DIExpression()), !dbg !2978
  %tobool59 = icmp eq %struct.name_expansion* %25, null, !dbg !3039
  br i1 %tobool59, label %if.then60, label %if.else162, !dbg !3041

if.then60:                                        ; preds = %if.end57
  %call61 = call i8* @xmalloc(i64 240) #6, !dbg !3042
  call void @llvm.dbg.value(metadata i8* %call61, metadata !2971, metadata !DIExpression()), !dbg !2978
  %26 = getelementptr inbounds i8, i8* %call61, i64 232, !dbg !3044
  %bf.load62 = load i8, i8* %26, align 8, !dbg !3045
  %bf.set = or i8 %bf.load62, 1, !dbg !3045
  store i8 %bf.set, i8* %26, align 8, !dbg !3045
  store i8* %call61, i8** %call58, align 8, !dbg !3046
  %cmp64 = icmp eq %union.tree_node* %9, %name.0, !dbg !3047
  br i1 %cmp64, label %if.else, label %land.lhs.true65, !dbg !3049

land.lhs.true65:                                  ; preds = %if.then60
  %27 = getelementptr inbounds %union.tree_node, %union.tree_node* %10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3050
  %bf.load67 = load i64, i64* %27, align 8, !dbg !3050
  %bf.cast697 = and i64 %bf.load67, 65535, !dbg !3050
  %cmp70 = icmp eq i64 %bf.cast697, 6, !dbg !3050
  br i1 %cmp70, label %land.lhs.true83, label %lor.lhs.false71, !dbg !3050

lor.lhs.false71:                                  ; preds = %land.lhs.true65
  %cmp76 = icmp eq i64 %bf.cast697, 7, !dbg !3050
  br i1 %cmp76, label %land.lhs.true83, label %lor.lhs.false77, !dbg !3050

lor.lhs.false77:                                  ; preds = %lor.lhs.false71
  %cmp82 = icmp eq i64 %bf.cast697, 8, !dbg !3050
  br i1 %cmp82, label %land.lhs.true83, label %if.else, !dbg !3051

land.lhs.true83:                                  ; preds = %lor.lhs.false77, %lor.lhs.false71, %land.lhs.true65
  %type85 = getelementptr inbounds %union.tree_node, %union.tree_node* %name.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3052
  %28 = bitcast %union.tree_node** %type85 to i64**, !dbg !3052
  %29 = load i64*, i64** %28, align 8, !dbg !3052
  %bf.load87 = load i64, i64* %29, align 8, !dbg !3052
  %bf.cast8910 = and i64 %bf.load87, 65535, !dbg !3052
  %cmp90 = icmp eq i64 %bf.cast8910, 6, !dbg !3052
  %30 = bitcast i64* %29 to %struct.tree_type*, !dbg !3052
  br i1 %cmp90, label %land.lhs.true107, label %lor.lhs.false91, !dbg !3052

lor.lhs.false91:                                  ; preds = %land.lhs.true83
  %cmp98 = icmp eq i64 %bf.cast8910, 7, !dbg !3052
  br i1 %cmp98, label %land.lhs.true107, label %lor.lhs.false99, !dbg !3052

lor.lhs.false99:                                  ; preds = %lor.lhs.false91
  %cmp106 = icmp eq i64 %bf.cast8910, 8, !dbg !3052
  br i1 %cmp106, label %land.lhs.true107, label %if.else, !dbg !3053

land.lhs.true107:                                 ; preds = %lor.lhs.false99, %lor.lhs.false91, %land.lhs.true83
  %bf.cast11313 = and i64 %bf.load87, 2097152, !dbg !3054
  %tobool114 = icmp eq i64 %bf.cast11313, 0, !dbg !3054
  %31 = load i32, i32* @flag_wrapv, align 4, !dbg !3054
  %32 = load i32, i32* @flag_trapv, align 4, !dbg !3054
  %33 = or i32 %31, %32, !dbg !3054
  %34 = icmp eq i32 %33, 0, !dbg !3054
  %or.cond1.not = and i1 %tobool114, %34, !dbg !3054
  %35 = load i32, i32* @flag_strict_overflow, align 4, !dbg !3054
  %tobool120 = icmp ne i32 %35, 0, !dbg !3054
  %or.cond2 = and i1 %or.cond1.not, %tobool120, !dbg !3054
  br i1 %or.cond2, label %land.lhs.true121, label %if.else, !dbg !3054

land.lhs.true121:                                 ; preds = %land.lhs.true107
  %type122 = bitcast %union.tree_node* %10 to %struct.tree_type*, !dbg !3055
  %precision123 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type122, i64 0, i32 6, !dbg !3055
  %bf.load124 = load i32, i32* %precision123, align 4, !dbg !3055
  %bf.clear125 = and i32 %bf.load124, 1023, !dbg !3055
  %precision129 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %30, i64 0, i32 6, !dbg !3056
  %bf.load130 = load i32, i32* %precision129, align 4, !dbg !3056
  %bf.clear131 = and i32 %bf.load130, 1023, !dbg !3056
  %cmp132 = icmp ugt i32 %bf.clear125, %bf.clear131, !dbg !3057
  %call30.off = add i32 %call30, -63, !dbg !3058
  %switch3 = icmp ult i32 %call30.off, 3, !dbg !3058
  %or.cond4 = and i1 %cmp132, %switch3, !dbg !3059
  br i1 %or.cond4, label %land.lhs.true139, label %if.else, !dbg !3059

land.lhs.true139:                                 ; preds = %land.lhs.true121
  %call140 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %18) #7, !dbg !3060
  %36 = getelementptr inbounds %union.tree_node, %union.tree_node* %call140, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3060
  %bf.load142 = load i64, i64* %36, align 8, !dbg !3060
  %bf.cast14414 = and i64 %bf.load142, 65535, !dbg !3061
  %cmp145 = icmp eq i64 %bf.cast14414, 23, !dbg !3061
  br i1 %cmp145, label %if.then146, label %if.else, !dbg !3062

if.then146:                                       ; preds = %land.lhs.true139
  %call147 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %18) #7, !dbg !3063
  %call148 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %10, %union.tree_node* %call147) #6, !dbg !3063
  %call149 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %18) #7, !dbg !3063
  %call150 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %10, %union.tree_node* %call149) #6, !dbg !3063
  %call151 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 %call30, %union.tree_node* %10, %union.tree_node* %call148, %union.tree_node* %call150) #6, !dbg !3063
  call void @llvm.dbg.value(metadata %union.tree_node* %call151, metadata !2967, metadata !DIExpression()), !dbg !2978
  br label %if.end157, !dbg !3064

if.else:                                          ; preds = %if.then60, %land.lhs.true107, %land.lhs.true139, %land.lhs.true121, %lor.lhs.false99, %lor.lhs.false77
  %call152 = call %union.tree_node* @gimple_assign_rhs_to_tree(%union.gimple_statement_d* %18) #6, !dbg !3065
  call void @llvm.dbg.value(metadata %union.tree_node* %call152, metadata !2967, metadata !DIExpression()), !dbg !2978
  br i1 %cmp64, label %if.end157, label %if.then154, !dbg !3067

if.then154:                                       ; preds = %if.else
  %call155 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %10, %union.tree_node* %call152) #6, !dbg !3068
  call void @llvm.dbg.value(metadata %union.tree_node* %call155, metadata !2967, metadata !DIExpression()), !dbg !2978
  br label %if.end157, !dbg !3070

if.end157:                                        ; preds = %if.else, %if.then154, %if.then146
  %rhs.1 = phi %union.tree_node* [ %call151, %if.then146 ], [ %call155, %if.then154 ], [ %call152, %if.else ], !dbg !3071
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs.1, metadata !2967, metadata !DIExpression()), !dbg !2978
  %37 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3072
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %current, metadata !2964, metadata !DIExpression(DW_OP_deref)), !dbg !2978
  call void @tree_to_aff_combination_expand(%union.tree_node* %rhs.1, %union.tree_node* %37, %struct.affine_tree_combination* nonnull %current, %struct.pointer_map_t** %cache) #7, !dbg !3073
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call61, i8* nonnull align 8 %1, i64 232, i1 false), !dbg !3074
  %bf.load160 = load i8, i8* %26, align 8, !dbg !3075
  %bf.clear161 = and i8 %bf.load160, -2, !dbg !3075
  store i8 %bf.clear161, i8* %26, align 8, !dbg !3075
  br label %if.end169, !dbg !3076

if.else162:                                       ; preds = %if.end57
  %in_progress163 = getelementptr inbounds %struct.name_expansion, %struct.name_expansion* %25, i64 0, i32 1, !dbg !3077
  %bf.load164 = load i8, i8* %in_progress163, align 8, !dbg !3077
  %bf.clear165 = and i8 %bf.load164, 1, !dbg !3077
  %tobool167 = icmp eq i8 %bf.clear165, 0, !dbg !3077
  br i1 %tobool167, label %cond.end, label %cond.true, !dbg !3077

cond.true:                                        ; preds = %if.else162
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 653, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3077
  br label %cond.end, !dbg !3077

cond.end:                                         ; preds = %if.else162, %cond.true
  %38 = bitcast %struct.name_expansion* %25 to i8*, !dbg !3079
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %38, i64 232, i1 false), !dbg !3079
  br label %if.end169

if.end169:                                        ; preds = %cond.end, %if.end157
  %coef = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv, i32 1, !dbg !3080
  %39 = bitcast %struct.double_int* %coef to i8*, !dbg !3080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %39, i64 16, i1 false), !dbg !3080
  %40 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3081
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %curre, metadata !2965, metadata !DIExpression(DW_OP_deref)), !dbg !2978
  call fastcc void @aff_combination_zero(%struct.affine_tree_combination* nonnull %curre, %union.tree_node* %40) #7, !dbg !3082
  %41 = load i64, i64* %5, align 8, !dbg !3083
  %42 = load i64, i64* %6, align 8, !dbg !3083
  %call174 = call { i64, i64 } @double_int_neg(i64 %41, i64 %42) #6, !dbg !3083
  %43 = extractvalue { i64, i64 } %call174, 0, !dbg !3083
  %44 = extractvalue { i64, i64 } %call174, 1, !dbg !3083
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %curre, metadata !2965, metadata !DIExpression(DW_OP_deref)), !dbg !2978
  call void @aff_combination_add_elt(%struct.affine_tree_combination* nonnull %curre, %union.tree_node* %9, i64 %43, i64 %44) #7, !dbg !3084
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %current, metadata !2964, metadata !DIExpression(DW_OP_deref)), !dbg !2978
  call void @aff_combination_scale(%struct.affine_tree_combination* nonnull %current, i64 %41, i64 %42) #7, !dbg !3085
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %to_add, metadata !2963, metadata !DIExpression(DW_OP_deref)), !dbg !2978
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %current, metadata !2964, metadata !DIExpression(DW_OP_deref)), !dbg !2978
  call void @aff_combination_add(%struct.affine_tree_combination* nonnull %to_add, %struct.affine_tree_combination* nonnull %current) #7, !dbg !3086
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %to_add, metadata !2963, metadata !DIExpression(DW_OP_deref)), !dbg !2978
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %curre, metadata !2965, metadata !DIExpression(DW_OP_deref)), !dbg !2978
  call void @aff_combination_add(%struct.affine_tree_combination* nonnull %to_add, %struct.affine_tree_combination* nonnull %curre) #7, !dbg !3087
  br label %cleanup, !dbg !3088

cleanup:                                          ; preds = %lor.lhs.false43, %land.lhs.true40, %lor.lhs.false, %if.end25, %if.end, %if.end48, %if.end169
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3089
  br label %for.cond, !dbg !3090, !llvm.loop !3091

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %to_add, metadata !2963, metadata !DIExpression(DW_OP_deref)), !dbg !2978
  call void @aff_combination_add(%struct.affine_tree_combination* %comb, %struct.affine_tree_combination* nonnull %to_add) #7, !dbg !3093
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8, !dbg !3094
  call void @llvm.lifetime.end.p0i8(i64 232, i8* nonnull %2) #8, !dbg !3094
  call void @llvm.lifetime.end.p0i8(i64 232, i8* nonnull %1) #8, !dbg !3094
  call void @llvm.lifetime.end.p0i8(i64 232, i8* nonnull %0) #8, !dbg !3094
  ret void, !dbg !3094
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3095 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3100, metadata !DIExpression()), !dbg !3101
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3102
  %cmp = icmp eq i32 %call, 6, !dbg !3103
  %conv1 = zext i1 %cmp to i8, !dbg !3102
  ret i8 %conv1, !dbg !3104
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3105 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3109, metadata !DIExpression()), !dbg !3110
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3111
  ret %union.tree_node* %call, !dbg !3112
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3113 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3117, metadata !DIExpression()), !dbg !3119
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !3120
  call void @llvm.dbg.value(metadata i32 %call, metadata !3118, metadata !DIExpression()), !dbg !3119
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !3121
  %cmp = icmp eq i32 %call1, 3, !dbg !3123
  br i1 %cmp, label %if.then, label %if.end, !dbg !3124

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !3125
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3125
  %bf.load = load i64, i64* %0, align 8, !dbg !3125
  %1 = trunc i64 %bf.load to i32, !dbg !3125
  %bf.cast = and i32 %1, 65535, !dbg !3125
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3118, metadata !DIExpression()), !dbg !3119
  br label %if.end, !dbg !3126

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3119
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3118, metadata !DIExpression()), !dbg !3119
  ret i32 %code.0, !dbg !3127
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3128 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3132, metadata !DIExpression()), !dbg !3133
  %idxprom = sext i32 %code to i64, !dbg !3134
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3134
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3134
  %conv = zext i8 %0 to i32, !dbg !3135
  ret i32 %conv, !dbg !3136
}

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3137 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3139, metadata !DIExpression()), !dbg !3140
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3141
  ret %union.tree_node* %call, !dbg !3142
}

declare dso_local %struct.pointer_map_t* @pointer_map_create() local_unnamed_addr #1

declare dso_local i8** @pointer_map_insert(%struct.pointer_map_t*, i8*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3143 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3145, metadata !DIExpression()), !dbg !3146
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !3147
  %cmp = icmp ugt i32 %call, 2, !dbg !3149
  br i1 %cmp, label %if.then, label %return, !dbg !3150

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 2) #7, !dbg !3151
  br label %return, !dbg !3152

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %call1, %if.then ], [ null, %entry ], !dbg !3153
  ret %union.tree_node* %retval.0, !dbg !3154
}

declare dso_local %union.tree_node* @gimple_assign_rhs_to_tree(%union.gimple_statement_d*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @tree_to_aff_combination_expand(%union.tree_node* %expr, %union.tree_node* %type, %struct.affine_tree_combination* %comb, %struct.pointer_map_t** %cache) local_unnamed_addr #4 !dbg !3155 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !3159, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3160, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !3161, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata %struct.pointer_map_t** %cache, metadata !3162, metadata !DIExpression()), !dbg !3163
  tail call void @tree_to_aff_combination(%union.tree_node* %expr, %union.tree_node* %type, %struct.affine_tree_combination* %comb) #7, !dbg !3164
  tail call void @aff_combination_expand(%struct.affine_tree_combination* %comb, %struct.pointer_map_t** %cache) #7, !dbg !3165
  ret void, !dbg !3166
}

; Function Attrs: nounwind uwtable
define dso_local void @free_affine_expand_cache(%struct.pointer_map_t** %cache) local_unnamed_addr #4 !dbg !3167 {
entry:
  call void @llvm.dbg.value(metadata %struct.pointer_map_t** %cache, metadata !3171, metadata !DIExpression()), !dbg !3172
  %0 = load %struct.pointer_map_t*, %struct.pointer_map_t** %cache, align 8, !dbg !3173
  %tobool = icmp eq %struct.pointer_map_t* %0, null, !dbg !3173
  br i1 %tobool, label %return, label %if.end, !dbg !3175

if.end:                                           ; preds = %entry
  tail call void @pointer_map_traverse(%struct.pointer_map_t* nonnull %0, i8 (i8*, i8**, i8*)* nonnull @free_name_expansion, i8* null) #6, !dbg !3176
  %1 = load %struct.pointer_map_t*, %struct.pointer_map_t** %cache, align 8, !dbg !3177
  tail call void @pointer_map_destroy(%struct.pointer_map_t* %1) #6, !dbg !3178
  store %struct.pointer_map_t* null, %struct.pointer_map_t** %cache, align 8, !dbg !3179
  br label %return, !dbg !3180

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !3180
}

declare dso_local void @pointer_map_traverse(%struct.pointer_map_t*, i8 (i8*, i8**, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @free_name_expansion(i8* %key, i8** %value, i8* %data) #4 !dbg !3181 {
entry:
  call void @llvm.dbg.value(metadata i8* %key, metadata !3185, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i8** %value, metadata !3186, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i8* %data, metadata !3187, metadata !DIExpression()), !dbg !3190
  %0 = load i8*, i8** %value, align 8, !dbg !3191
  tail call void @free(i8* %0) #6, !dbg !3192
  ret i8 1, !dbg !3193
}

declare dso_local void @pointer_map_destroy(%struct.pointer_map_t*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @aff_combination_constant_multiple_p(%struct.affine_tree_combination* %val, %struct.affine_tree_combination* %div, %struct.double_int* %mult) local_unnamed_addr #4 !dbg !3194 {
entry:
  %mult_set = alloca i8, align 1
  %tmp = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %val, metadata !3199, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %div, metadata !3200, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata %struct.double_int* %mult, metadata !3201, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i8* %mult_set, metadata !3202, metadata !DIExpression(DW_OP_deref)), !dbg !3209
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %mult_set) #8, !dbg !3210
  call void @llvm.dbg.value(metadata i8 0, metadata !3202, metadata !DIExpression()), !dbg !3209
  store i8 0, i8* %mult_set, align 1, !dbg !3211
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %val, i64 0, i32 2, !dbg !3212
  %0 = load i32, i32* %n, align 8, !dbg !3212
  %cmp = icmp eq i32 %0, 0, !dbg !3214
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3215

land.lhs.true:                                    ; preds = %entry
  %1 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %val, i64 0, i32 1, i32 0, !dbg !3216
  %2 = load i64, i64* %1, align 8, !dbg !3216
  %3 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %val, i64 0, i32 1, i32 1, !dbg !3216
  %4 = load i64, i64* %3, align 8, !dbg !3216
  %call = tail call fastcc zeroext i8 @double_int_zero_p(i64 %2, i64 %4) #7, !dbg !3216
  %tobool = icmp eq i8 %call, 0, !dbg !3216
  br i1 %tobool, label %land.lhs.true.if.end_crit_edge, label %if.then, !dbg !3217

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %.pre = load i32, i32* %n, align 8, !dbg !3218
  br label %if.end, !dbg !3217

if.then:                                          ; preds = %land.lhs.true
  %5 = bitcast %struct.double_int* %tmp to i8*, !dbg !3220
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3220
  %call1 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 0) #7, !dbg !3220
  %6 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !3220
  %7 = extractvalue { i64, i64 } %call1, 0, !dbg !3220
  store i64 %7, i64* %6, align 8, !dbg !3220
  %8 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !3220
  %9 = extractvalue { i64, i64 } %call1, 1, !dbg !3220
  store i64 %9, i64* %8, align 8, !dbg !3220
  %10 = bitcast %struct.double_int* %mult to i8*, !dbg !3220
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !3220
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3220
  br label %cleanup36, !dbg !3222

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry
  %11 = phi i32 [ %.pre, %land.lhs.true.if.end_crit_edge ], [ %0, %entry ], !dbg !3218
  %n3 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %div, i64 0, i32 2, !dbg !3223
  %12 = load i32, i32* %n3, align 8, !dbg !3223
  %cmp4 = icmp eq i32 %11, %12, !dbg !3224
  br i1 %cmp4, label %if.end7, label %cleanup36, !dbg !3225

if.end7:                                          ; preds = %if.end
  %rest = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %val, i64 0, i32 4, !dbg !3226
  %13 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !3226
  %tobool8 = icmp eq %union.tree_node* %13, null, !dbg !3228
  br i1 %tobool8, label %lor.lhs.false, label %cleanup36, !dbg !3229

lor.lhs.false:                                    ; preds = %if.end7
  %rest9 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %div, i64 0, i32 4, !dbg !3230
  %14 = load %union.tree_node*, %union.tree_node** %rest9, align 8, !dbg !3230
  %tobool10 = icmp eq %union.tree_node* %14, null, !dbg !3231
  br i1 %tobool10, label %if.end12, label %cleanup36, !dbg !3232

if.end12:                                         ; preds = %lor.lhs.false
  %15 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %val, i64 0, i32 1, i32 0, !dbg !3233
  %16 = load i64, i64* %15, align 8, !dbg !3233
  %17 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %val, i64 0, i32 1, i32 1, !dbg !3233
  %18 = load i64, i64* %17, align 8, !dbg !3233
  %19 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %div, i64 0, i32 1, i32 0, !dbg !3233
  %20 = load i64, i64* %19, align 8, !dbg !3233
  %21 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %div, i64 0, i32 1, i32 1, !dbg !3233
  %22 = load i64, i64* %21, align 8, !dbg !3233
  call void @llvm.dbg.value(metadata i8* %mult_set, metadata !3202, metadata !DIExpression(DW_OP_deref)), !dbg !3209
  %call15 = call fastcc zeroext i8 @double_int_constant_multiple_p(i64 %16, i64 %18, i64 %20, i64 %22, i8* nonnull %mult_set, %struct.double_int* %mult) #7, !dbg !3233
  %tobool16 = icmp eq i8 %call15, 0, !dbg !3233
  br i1 %tobool16, label %cleanup36, label %for.cond.preheader, !dbg !3235

for.cond.preheader:                               ; preds = %if.end12
  br label %for.cond, !dbg !3236

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !3237
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3203, metadata !DIExpression()), !dbg !3209
  %23 = load i32, i32* %n3, align 8, !dbg !3238
  %24 = zext i32 %23 to i64, !dbg !3239
  %cmp20 = icmp ult i64 %indvars.iv, %24, !dbg !3239
  br i1 %cmp20, label %for.body, label %for.end, !dbg !3236

for.body:                                         ; preds = %for.cond
  %val22 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %div, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !3240
  %25 = load %union.tree_node*, %union.tree_node** %val22, align 8, !dbg !3240
  %call23 = call fastcc %struct.aff_comb_elt* @aff_combination_find_elt(%struct.affine_tree_combination* %val, %union.tree_node* %25, i32* null) #7, !dbg !3241
  call void @llvm.dbg.value(metadata %struct.aff_comb_elt* %call23, metadata !3204, metadata !DIExpression()), !dbg !3242
  %tobool24 = icmp eq %struct.aff_comb_elt* %call23, null, !dbg !3243
  br i1 %tobool24, label %cleanup, label %if.end26, !dbg !3245

if.end26:                                         ; preds = %for.body
  %26 = getelementptr inbounds %struct.aff_comb_elt, %struct.aff_comb_elt* %call23, i64 0, i32 1, i32 0, !dbg !3246
  %27 = load i64, i64* %26, align 8, !dbg !3246
  %28 = getelementptr inbounds %struct.aff_comb_elt, %struct.aff_comb_elt* %call23, i64 0, i32 1, i32 1, !dbg !3246
  %29 = load i64, i64* %28, align 8, !dbg !3246
  %30 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %div, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 0, !dbg !3246
  %31 = load i64, i64* %30, align 8, !dbg !3246
  %32 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %div, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 1, !dbg !3246
  %33 = load i64, i64* %32, align 8, !dbg !3246
  call void @llvm.dbg.value(metadata i8* %mult_set, metadata !3202, metadata !DIExpression(DW_OP_deref)), !dbg !3209
  %call31 = call fastcc zeroext i8 @double_int_constant_multiple_p(i64 %27, i64 %29, i64 %31, i64 %33, i8* nonnull %mult_set, %struct.double_int* %mult) #7, !dbg !3246
  %tobool32 = icmp eq i8 %call31, 0, !dbg !3246
  %. = zext i1 %tobool32 to i32, !dbg !3248
  br label %cleanup, !dbg !3248

cleanup:                                          ; preds = %for.body, %if.end26
  %cleanup.dest.slot.0 = phi i32 [ 1, %for.body ], [ %., %if.end26 ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond1, label %for.inc, label %cleanup36.loopexit

for.inc:                                          ; preds = %cleanup
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3249
  br label %for.cond, !dbg !3250, !llvm.loop !3251

for.end:                                          ; preds = %for.cond
  %34 = load i8, i8* %mult_set, align 1, !dbg !3253
  call void @llvm.dbg.value(metadata i8 %34, metadata !3202, metadata !DIExpression()), !dbg !3209
  %tobool35 = icmp eq i8 %34, 0, !dbg !3253
  br i1 %tobool35, label %cond.true, label %cleanup36, !dbg !3253

cond.true:                                        ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 782, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3253
  br label %cleanup36, !dbg !3253

cleanup36.loopexit:                               ; preds = %cleanup
  br label %cleanup36, !dbg !3254

cleanup36:                                        ; preds = %cleanup36.loopexit, %for.end, %if.end12, %lor.lhs.false, %if.end7, %if.end, %cond.true, %if.then
  %retval.2 = phi i8 [ 1, %if.then ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %if.end7 ], [ 0, %if.end12 ], [ 1, %for.end ], [ 1, %cond.true ], [ 0, %cleanup36.loopexit ]
  call void @llvm.dbg.value(metadata i8* %mult_set, metadata !3202, metadata !DIExpression(DW_OP_deref)), !dbg !3209
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %mult_set) #8, !dbg !3254
  ret i8 %retval.2, !dbg !3254
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @double_int_constant_multiple_p(i64 %val.coerce0, i64 %val.coerce1, i64 %div.coerce0, i64 %div.coerce1, i8* %mult_set, %struct.double_int* %mult) unnamed_addr #4 !dbg !3255 {
entry:
  %rem = alloca %struct.double_int, align 8
  %cst = alloca %struct.double_int, align 8
  %tmp = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata i8* %mult_set, metadata !3261, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata %struct.double_int* %mult, metadata !3262, metadata !DIExpression()), !dbg !3265
  %0 = bitcast %struct.double_int* %rem to i8*, !dbg !3266
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3266
  %1 = bitcast %struct.double_int* %cst to i8*, !dbg !3266
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3266
  %call = tail call fastcc zeroext i8 @double_int_zero_p(i64 %val.coerce0, i64 %val.coerce1) #7, !dbg !3267
  %tobool = icmp eq i8 %call, 0, !dbg !3267
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3269

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %div.coerce0, i64 %div.coerce1) #7, !dbg !3270
  %tobool2 = icmp eq i8 %call1, 0, !dbg !3270
  br i1 %tobool2, label %if.end4, label %cleanup, !dbg !3272

if.end4:                                          ; preds = %if.end
  %2 = bitcast %struct.double_int* %tmp to i8*, !dbg !3273
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3273
  call void @llvm.dbg.value(metadata %struct.double_int* %rem, metadata !3263, metadata !DIExpression(DW_OP_deref)), !dbg !3265
  %call5 = call { i64, i64 } @double_int_sdivmod(i64 %val.coerce0, i64 %val.coerce1, i64 %div.coerce0, i64 %div.coerce1, i32 69, %struct.double_int* nonnull %rem) #6, !dbg !3273
  %3 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !3273
  %4 = extractvalue { i64, i64 } %call5, 0, !dbg !3273
  store i64 %4, i64* %3, align 8, !dbg !3273
  %5 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !3273
  %6 = extractvalue { i64, i64 } %call5, 1, !dbg !3273
  store i64 %6, i64* %5, align 8, !dbg !3273
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3273
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3273
  %7 = getelementptr inbounds %struct.double_int, %struct.double_int* %rem, i64 0, i32 0, !dbg !3274
  %8 = load i64, i64* %7, align 8, !dbg !3274
  %9 = getelementptr inbounds %struct.double_int, %struct.double_int* %rem, i64 0, i32 1, !dbg !3274
  %10 = load i64, i64* %9, align 8, !dbg !3274
  %call6 = call fastcc zeroext i8 @double_int_zero_p(i64 %8, i64 %10) #7, !dbg !3274
  %tobool7 = icmp eq i8 %call6, 0, !dbg !3274
  br i1 %tobool7, label %cleanup, label %if.end9, !dbg !3276

if.end9:                                          ; preds = %if.end4
  %11 = load i8, i8* %mult_set, align 1, !dbg !3277
  %tobool10 = icmp eq i8 %11, 0, !dbg !3277
  br i1 %tobool10, label %if.end14, label %land.lhs.true, !dbg !3279

land.lhs.true:                                    ; preds = %if.end9
  %12 = getelementptr inbounds %struct.double_int, %struct.double_int* %mult, i64 0, i32 0, !dbg !3280
  %13 = load i64, i64* %12, align 8, !dbg !3280
  %14 = getelementptr inbounds %struct.double_int, %struct.double_int* %mult, i64 0, i32 1, !dbg !3280
  %15 = load i64, i64* %14, align 8, !dbg !3280
  %16 = getelementptr inbounds %struct.double_int, %struct.double_int* %cst, i64 0, i32 0, !dbg !3280
  %17 = load i64, i64* %16, align 8, !dbg !3280
  %18 = getelementptr inbounds %struct.double_int, %struct.double_int* %cst, i64 0, i32 1, !dbg !3280
  %19 = load i64, i64* %18, align 8, !dbg !3280
  %call11 = call fastcc zeroext i8 @double_int_equal_p(i64 %13, i64 %15, i64 %17, i64 %19) #7, !dbg !3280
  %tobool12 = icmp eq i8 %call11, 0, !dbg !3280
  br i1 %tobool12, label %cleanup, label %if.end14, !dbg !3281

if.end14:                                         ; preds = %land.lhs.true, %if.end9
  store i8 1, i8* %mult_set, align 1, !dbg !3282
  %20 = bitcast %struct.double_int* %mult to i8*, !dbg !3283
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* nonnull align 8 %1, i64 16, i1 false), !dbg !3283
  br label %cleanup, !dbg !3284

cleanup:                                          ; preds = %land.lhs.true, %if.end4, %if.end, %entry, %if.end14
  %retval.0 = phi i8 [ 1, %if.end14 ], [ 1, %entry ], [ 0, %if.end ], [ 0, %if.end4 ], [ 0, %land.lhs.true ], !dbg !3265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3285
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3285
  ret i8 %retval.0, !dbg !3285
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.aff_comb_elt* @aff_combination_find_elt(%struct.affine_tree_combination* %comb, %union.tree_node* %val, i32* %idx) unnamed_addr #4 !dbg !3286 {
entry:
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %comb, metadata !3291, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !3292, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i32* null, metadata !3293, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i32 0, metadata !3294, metadata !DIExpression()), !dbg !3295
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 2, !dbg !3296
  br label %for.cond, !dbg !3299

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !3300
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3294, metadata !DIExpression()), !dbg !3295
  %0 = load i32, i32* %n, align 8, !dbg !3301
  %1 = zext i32 %0 to i64, !dbg !3302
  %cmp = icmp ult i64 %indvars.iv, %1, !dbg !3302
  br i1 %cmp, label %for.body, label %cleanup.loopexit, !dbg !3303

for.body:                                         ; preds = %for.cond
  %val1 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !3304
  %2 = load %union.tree_node*, %union.tree_node** %val1, align 8, !dbg !3304
  %call = tail call i32 @operand_equal_p(%union.tree_node* %2, %union.tree_node* %val, i32 0) #6, !dbg !3306
  %tobool = icmp eq i32 %call, 0, !dbg !3306
  br i1 %tobool, label %for.inc, label %if.then, !dbg !3307

if.then:                                          ; preds = %for.body
  %indvars.iv.lcssa2 = phi i64 [ %indvars.iv, %for.body ], !dbg !3300
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa2, metadata !3294, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa2, metadata !3294, metadata !DIExpression()), !dbg !3295
  %arrayidx6 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %comb, i64 0, i32 3, i64 %indvars.iv.lcssa2, !dbg !3308
  br label %cleanup, !dbg !3310

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3311
  br label %for.cond, !dbg !3312, !llvm.loop !3313

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3315

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi %struct.aff_comb_elt* [ %arrayidx6, %if.then ], [ null, %cleanup.loopexit ], !dbg !3295
  ret %struct.aff_comb_elt* %retval.0, !dbg !3315
}

; Function Attrs: nounwind uwtable
define dso_local void @print_aff(%struct._IO_FILE* %file, %struct.affine_tree_combination* %val) local_unnamed_addr #4 !dbg !3316 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3320, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %val, metadata !3321, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i8 undef, metadata !3323, metadata !DIExpression()), !dbg !3324
  %0 = bitcast %struct.affine_tree_combination* %val to i64**, !dbg !3325
  %1 = load i64*, i64** %0, align 8, !dbg !3325
  %bf.load3 = load i64, i64* %1, align 8, !dbg !3325
  %bf.cast51 = and i64 %bf.load3, 65535, !dbg !3325
  %cmp = icmp eq i64 %bf.cast51, 10, !dbg !3325
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3325

lor.lhs.false:                                    ; preds = %entry
  %bf.lshr = lshr i64 %bf.load3, 21, !dbg !3327
  %2 = trunc i64 %bf.lshr to i8, !dbg !3327
  %bf.cast = and i8 %2, 1, !dbg !3327
  call void @llvm.dbg.value(metadata i8 %bf.cast, metadata !3323, metadata !DIExpression()), !dbg !3324
  %cmp12 = icmp eq i64 %bf.cast51, 12, !dbg !3325
  br i1 %cmp12, label %if.then, label %if.end, !dbg !3328

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.value(metadata i8 0, metadata !3323, metadata !DIExpression()), !dbg !3324
  br label %if.end, !dbg !3329

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %uns.0 = phi i8 [ 0, %if.then ], [ %bf.cast, %lor.lhs.false ], !dbg !3324
  call void @llvm.dbg.value(metadata i8 %uns.0, metadata !3323, metadata !DIExpression()), !dbg !3324
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3330
  %type14 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %val, i64 0, i32 0, !dbg !3331
  %3 = load %union.tree_node*, %union.tree_node** %type14, align 8, !dbg !3331
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %3, i32 16448) #6, !dbg !3332
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3333
  %4 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %val, i64 0, i32 1, i32 0, !dbg !3334
  %5 = load i64, i64* %4, align 8, !dbg !3334
  %6 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %val, i64 0, i32 1, i32 1, !dbg !3334
  %7 = load i64, i64* %6, align 8, !dbg !3334
  tail call void @dump_double_int(%struct._IO_FILE* %file, i64 %5, i64 %7, i8 zeroext %uns.0) #6, !dbg !3334
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %val, i64 0, i32 2, !dbg !3335
  %8 = load i32, i32* %n, align 8, !dbg !3335
  %cmp16 = icmp eq i32 %8, 0, !dbg !3337
  br i1 %cmp16, label %if.end36, label %if.then18, !dbg !3338

if.then18:                                        ; preds = %if.end
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3339
  call void @llvm.dbg.value(metadata i32 0, metadata !3322, metadata !DIExpression()), !dbg !3324
  br label %for.cond, !dbg !3341

for.cond:                                         ; preds = %for.inc, %if.then18
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then18 ], !dbg !3343
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3322, metadata !DIExpression()), !dbg !3324
  %9 = load i32, i32* %n, align 8, !dbg !3344
  %10 = zext i32 %9 to i64, !dbg !3346
  %cmp21 = icmp ult i64 %indvars.iv, %10, !dbg !3346
  br i1 %cmp21, label %for.body, label %for.end, !dbg !3347

for.body:                                         ; preds = %for.cond
  %11 = trunc i64 %indvars.iv to i32, !dbg !3348
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %11) #6, !dbg !3348
  %val24 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %val, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !3350
  %12 = load %union.tree_node*, %union.tree_node** %val24, align 8, !dbg !3350
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %12, i32 16448) #6, !dbg !3351
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3352
  %13 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %val, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 0, !dbg !3353
  %14 = load i64, i64* %13, align 8, !dbg !3353
  %15 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %val, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 1, !dbg !3353
  %16 = load i64, i64* %15, align 8, !dbg !3353
  tail call void @dump_double_int(%struct._IO_FILE* %file, i64 %14, i64 %16, i8 zeroext %uns.0) #6, !dbg !3353
  %17 = load i32, i32* %n, align 8, !dbg !3354
  %sub = add i32 %17, -1, !dbg !3356
  %18 = zext i32 %sub to i64, !dbg !3357
  %cmp30 = icmp eq i64 %indvars.iv, %18, !dbg !3357
  br i1 %cmp30, label %for.inc, label %if.then32, !dbg !3358

if.then32:                                        ; preds = %for.body
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3359
  br label %for.inc, !dbg !3359

for.inc:                                          ; preds = %for.body, %if.then32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3360
  br label %for.cond, !dbg !3361, !llvm.loop !3362

for.end:                                          ; preds = %for.cond
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3364
  br label %if.end36, !dbg !3365

if.end36:                                         ; preds = %if.end, %for.end
  %rest = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %val, i64 0, i32 4, !dbg !3366
  %19 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !3366
  %tobool = icmp eq %union.tree_node* %19, null, !dbg !3368
  br i1 %tobool, label %if.end40, label %if.then37, !dbg !3369

if.then37:                                        ; preds = %if.end36
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3370
  %20 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !3372
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %20, i32 16448) #6, !dbg !3373
  br label %if.end40, !dbg !3374

if.end40:                                         ; preds = %if.end36, %if.then37
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3375
  ret void, !dbg !3376
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #1

declare dso_local void @dump_double_int(%struct._IO_FILE*, i64, i64, i8 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @debug_aff(%struct.affine_tree_combination* %val) local_unnamed_addr #4 !dbg !3377 {
entry:
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %val, metadata !3379, metadata !DIExpression()), !dbg !3380
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3381
  tail call void @print_aff(%struct._IO_FILE* %0, %struct.affine_tree_combination* %val) #7, !dbg !3382
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3383
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3384
  ret void, !dbg !3385
}

; Function Attrs: nounwind uwtable
define dso_local void @get_inner_reference_aff(%union.tree_node* %ref, %struct.affine_tree_combination* %addr, %struct.double_int* %size) local_unnamed_addr #4 !dbg !3386 {
entry:
  %bitsize = alloca i64, align 8
  %bitpos = alloca i64, align 8
  %toff = alloca %union.tree_node*, align 8
  %mode = alloca i32, align 4
  %uns = alloca i32, align 4
  %vol = alloca i32, align 4
  %tmp = alloca %struct.affine_tree_combination, align 8
  %tmp3 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %ref, metadata !3390, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %addr, metadata !3391, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata %struct.double_int* %size, metadata !3392, metadata !DIExpression()), !dbg !3402
  %0 = bitcast i64* %bitsize to i8*, !dbg !3403
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3403
  %1 = bitcast i64* %bitpos to i8*, !dbg !3403
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3403
  %2 = bitcast %union.tree_node** %toff to i8*, !dbg !3404
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3404
  %3 = bitcast i32* %mode to i8*, !dbg !3405
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8, !dbg !3405
  %4 = bitcast i32* %uns to i8*, !dbg !3406
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8, !dbg !3406
  %5 = bitcast i32* %vol to i8*, !dbg !3406
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #8, !dbg !3406
  %6 = bitcast %struct.affine_tree_combination* %tmp to i8*, !dbg !3407
  call void @llvm.lifetime.start.p0i8(i64 232, i8* nonnull %6) #8, !dbg !3407
  call void @llvm.dbg.value(metadata i64* %bitsize, metadata !3393, metadata !DIExpression(DW_OP_deref)), !dbg !3402
  call void @llvm.dbg.value(metadata i64* %bitpos, metadata !3394, metadata !DIExpression(DW_OP_deref)), !dbg !3402
  call void @llvm.dbg.value(metadata %union.tree_node** %toff, metadata !3395, metadata !DIExpression(DW_OP_deref)), !dbg !3402
  call void @llvm.dbg.value(metadata i32* %mode, metadata !3396, metadata !DIExpression(DW_OP_deref)), !dbg !3402
  call void @llvm.dbg.value(metadata i32* %uns, metadata !3397, metadata !DIExpression(DW_OP_deref)), !dbg !3402
  call void @llvm.dbg.value(metadata i32* %vol, metadata !3398, metadata !DIExpression(DW_OP_deref)), !dbg !3402
  %call = call %union.tree_node* @get_inner_reference(%union.tree_node* %ref, i64* nonnull %bitsize, i64* nonnull %bitpos, %union.tree_node** nonnull %toff, i32* nonnull %mode, i32* nonnull %uns, i32* nonnull %vol, i8 zeroext 0) #6, !dbg !3408
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3400, metadata !DIExpression()), !dbg !3402
  %call1 = call %union.tree_node* @build_fold_addr_expr_loc(i32 0, %union.tree_node* %call) #6, !dbg !3409
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3401, metadata !DIExpression()), !dbg !3402
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3410
  call void @tree_to_aff_combination(%union.tree_node* %call1, %union.tree_node* %7, %struct.affine_tree_combination* %addr) #7, !dbg !3411
  %8 = load %union.tree_node*, %union.tree_node** %toff, align 8, !dbg !3412
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !3395, metadata !DIExpression()), !dbg !3402
  %tobool = icmp eq %union.tree_node* %8, null, !dbg !3412
  br i1 %tobool, label %if.end, label %if.then, !dbg !3414

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !3395, metadata !DIExpression()), !dbg !3402
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3415
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %tmp, metadata !3399, metadata !DIExpression(DW_OP_deref)), !dbg !3402
  call void @tree_to_aff_combination(%union.tree_node* nonnull %8, %union.tree_node* %9, %struct.affine_tree_combination* nonnull %tmp) #7, !dbg !3417
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %tmp, metadata !3399, metadata !DIExpression(DW_OP_deref)), !dbg !3402
  call void @aff_combination_add(%struct.affine_tree_combination* %addr, %struct.affine_tree_combination* nonnull %tmp) #7, !dbg !3418
  br label %if.end, !dbg !3419

if.end:                                           ; preds = %entry, %if.then
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3420
  %11 = load i64, i64* %bitpos, align 8, !dbg !3421
  call void @llvm.dbg.value(metadata i64 %11, metadata !3394, metadata !DIExpression()), !dbg !3402
  %div = sdiv i64 %11, 8, !dbg !3422
  %call2 = call fastcc { i64, i64 } @shwi_to_double_int(i64 %div) #7, !dbg !3423
  %12 = extractvalue { i64, i64 } %call2, 0, !dbg !3423
  %13 = extractvalue { i64, i64 } %call2, 1, !dbg !3423
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %tmp, metadata !3399, metadata !DIExpression(DW_OP_deref)), !dbg !3402
  call void @aff_combination_const(%struct.affine_tree_combination* nonnull %tmp, %union.tree_node* %10, i64 %12, i64 %13) #7, !dbg !3424
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %tmp, metadata !3399, metadata !DIExpression(DW_OP_deref)), !dbg !3402
  call void @aff_combination_add(%struct.affine_tree_combination* %addr, %struct.affine_tree_combination* nonnull %tmp) #7, !dbg !3425
  %14 = bitcast %struct.double_int* %tmp3 to i8*, !dbg !3426
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #8, !dbg !3426
  %15 = load i64, i64* %bitsize, align 8, !dbg !3427
  call void @llvm.dbg.value(metadata i64 %15, metadata !3393, metadata !DIExpression()), !dbg !3402
  %sub = add nsw i64 %15, 7, !dbg !3428
  %div4 = sdiv i64 %sub, 8, !dbg !3429
  %call5 = call fastcc { i64, i64 } @shwi_to_double_int(i64 %div4) #7, !dbg !3426
  %16 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp3, i64 0, i32 0, !dbg !3426
  %17 = extractvalue { i64, i64 } %call5, 0, !dbg !3426
  store i64 %17, i64* %16, align 8, !dbg !3426
  %18 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp3, i64 0, i32 1, !dbg !3426
  %19 = extractvalue { i64, i64 } %call5, 1, !dbg !3426
  store i64 %19, i64* %18, align 8, !dbg !3426
  %20 = bitcast %struct.double_int* %size to i8*, !dbg !3426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* nonnull align 8 %14, i64 16, i1 false), !dbg !3426
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #8, !dbg !3426
  call void @llvm.lifetime.end.p0i8(i64 232, i8* nonnull %6) #8, !dbg !3430
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #8, !dbg !3430
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8, !dbg !3430
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #8, !dbg !3430
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3430
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3430
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3430
  ret void, !dbg !3430
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @double_int_minus_one_p(i64 %cst.coerce0, i64 %cst.coerce1) unnamed_addr #0 !dbg !3431 {
entry:
  %0 = and i64 %cst.coerce0, %cst.coerce1, !dbg !3434
  %1 = icmp eq i64 %0, -1, !dbg !3434
  %conv = zext i1 %1 to i8, !dbg !3435
  ret i8 %conv, !dbg !3436
}

declare dso_local %union.tree_node* @fold_build1_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3437 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3441, metadata !DIExpression()), !dbg !3442
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3443
  %bf.load = load i32, i32* %0, align 8, !dbg !3443
  %bf.clear = and i32 %bf.load, 255, !dbg !3443
  ret i32 %bf.clear, !dbg !3444
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3445 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3449, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i32 %i, metadata !3450, metadata !DIExpression()), !dbg !3451
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3452
  %tobool = icmp eq i8 %call, 0, !dbg !3452
  br i1 %tobool, label %return, label %if.then, !dbg !3454

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3455
  %idxprom = zext i32 %i to i64, !dbg !3455
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3455
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3455
  br label %return, !dbg !3457

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3458
  ret %union.tree_node* %retval.0, !dbg !3459
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3460 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3462, metadata !DIExpression()), !dbg !3463
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3464
  %cmp = icmp eq i32 %call, 0, !dbg !3465
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3466

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3467
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3468
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3469
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3470 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3474, metadata !DIExpression()), !dbg !3476
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3477
  %idxprom = zext i32 %call to i64, !dbg !3478
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3478
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %0, metadata !3475, metadata !DIExpression()), !dbg !3476
  %cmp = icmp eq i64 %0, 0, !dbg !3479
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3479

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3479
  br label %cond.end, !dbg !3479

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3480
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3481
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3482
  ret %union.tree_node** %2, !dbg !3483
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3484 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3488, metadata !DIExpression()), !dbg !3489
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3490
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3491
  ret i32 %call1, !dbg !3492
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3493 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3497, metadata !DIExpression()), !dbg !3498
  %idxprom = zext i32 %code to i64, !dbg !3499
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3499
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3499
  ret i32 %0, !dbg !3500
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3501 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3503, metadata !DIExpression()), !dbg !3505
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !3506
  call void @llvm.dbg.value(metadata i32 %call, metadata !3504, metadata !DIExpression()), !dbg !3505
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !3507

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3509
  %bf.load = load i32, i32* %0, align 8, !dbg !3509
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3509
  br label %cleanup, !dbg !3510

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3511
  br label %cleanup, !dbg !3513

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3505
  ret i32 %retval.0, !dbg !3514
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3515 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3519, metadata !DIExpression()), !dbg !3520
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3521
  %0 = load i32, i32* %num_ops, align 4, !dbg !3521
  ret i32 %0, !dbg !3522
}

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local { i64, i64 } @double_int_sdivmod(i64, i64, i64, i64, i32, %struct.double_int*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @double_int_equal_p(i64 %cst1.coerce0, i64 %cst1.coerce1, i64 %cst2.coerce0, i64 %cst2.coerce1) unnamed_addr #0 !dbg !3523 {
entry:
  %cmp = icmp eq i64 %cst1.coerce0, %cst2.coerce0, !dbg !3529
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3530

land.rhs:                                         ; preds = %entry
  %cmp3 = icmp eq i64 %cst1.coerce1, %cst2.coerce1, !dbg !3531
  %phitmp = zext i1 %cmp3 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3532
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
!llvm.module.flags = !{!1745, !1746, !1747}
!llvm.ident = !{!1748}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !446, nameTableKind: None)
!1 = !DIFile(filename: "tree-affine.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !327, !333, !338, !343, !361, !368, !375, !414, !440}
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
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !133, line: 39, baseType: !5, size: 32, elements: !134)
!133 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!135 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!139 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!140 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!141 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!142 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!143 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!144 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!145 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!146 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!147 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!148 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!149 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!150 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!151 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!152 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!153 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!154 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!155 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!156 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!157 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!158 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!159 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!160 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!161 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!162 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!163 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!164 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!165 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!166 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!167 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!168 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!169 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!170 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!171 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!172 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!173 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!174 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!175 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!176 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!177 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!178 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!179 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!180 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!181 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!182 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!183 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!184 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!185 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!186 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!187 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!188 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!189 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!190 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!191 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!192 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!193 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!194 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!195 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!196 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!197 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!198 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!199 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!200 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!201 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!202 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!203 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!204 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!205 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!206 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!207 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!208 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!209 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!210 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!211 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!212 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!213 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!214 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!215 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!216 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!217 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!218 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!219 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!220 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!221 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!222 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!223 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!224 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!225 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!226 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!227 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!228 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!229 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!230 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!231 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!232 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!233 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!234 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!235 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!236 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!237 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!238 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!239 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!240 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!241 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!242 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!243 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!244 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!245 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!246 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!247 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!248 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!249 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!250 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!251 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!252 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!253 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!254 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!255 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!256 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!257 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!258 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!259 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!260 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!261 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!262 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!263 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!264 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!265 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!266 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!267 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!268 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!269 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!270 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!271 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!272 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!273 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!274 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!275 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!276 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!277 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!278 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!279 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!280 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!281 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!282 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!283 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!284 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!285 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!286 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!287 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!288 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!289 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!290 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!291 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!292 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!293 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!294 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!295 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!296 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!297 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!298 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!299 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!300 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!301 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!302 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!303 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!304 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!305 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!306 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!307 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!308 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!309 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!310 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!311 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!312 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!313 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!314 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!315 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!316 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!317 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!318 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!319 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!320 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!321 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!322 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!323 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!324 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!325 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!326 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!327 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !328, line: 363, baseType: !5, size: 32, elements: !329)
!328 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!329 = !{!330, !331, !332}
!330 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!331 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!332 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!333 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !328, line: 355, baseType: !5, size: 32, elements: !334)
!334 = !{!335, !336, !337}
!335 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!336 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!337 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!338 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !339, line: 474, baseType: !5, size: 32, elements: !340)
!339 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!340 = !{!341, !342}
!341 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!342 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!343 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !133, line: 280, baseType: !5, size: 32, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!345 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!361 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !133, line: 1817, baseType: !5, size: 32, elements: !362)
!362 = !{!363, !364, !365, !366, !367}
!363 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !133, line: 1805, baseType: !5, size: 32, elements: !369)
!369 = !{!370, !371, !372, !373, !374}
!370 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!372 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!374 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!375 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !376, line: 51, baseType: !5, size: 32, elements: !377)
!376 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413}
!378 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!379 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!380 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!381 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!382 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!383 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!384 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!385 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!386 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!387 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!388 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!389 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!390 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!391 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!392 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!393 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!394 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!395 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!396 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!397 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!398 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!399 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!400 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!401 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!402 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!403 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!404 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!405 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!406 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!407 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!408 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!409 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!410 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!411 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!412 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!413 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!414 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !376, line: 727, baseType: !5, size: 32, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439}
!416 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!417 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!418 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!419 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!420 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!421 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!422 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!423 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!424 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!425 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!426 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!427 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!428 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!429 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!430 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!431 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!432 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!433 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!434 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!435 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!436 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!437 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!438 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!439 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!440 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !376, line: 80, baseType: !5, size: 32, elements: !441)
!441 = !{!442, !443, !444, !445}
!442 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!443 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!444 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!445 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!446 = !{!447, !448, !449, !450, !453, !454, !132, !456, !583, !458, !1720, !1722, !510, !781, !1743, !815, !451, !440}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!449 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !457, line: 56, baseType: !458)
!457 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !133, line: 3371, size: 1792, elements: !460)
!460 = !{!461, !494, !500, !513, !532, !543, !548, !557, !563, !576, !588, !626, !1118, !1146, !1154, !1155, !1160, !1169, !1175, !1180, !1184, !1188, !1362, !1409, !1415, !1421, !1428, !1439, !1464, !1481, !1493, !1515, !1530, !1702}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !459, file: !133, line: 3372, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !133, line: 360, size: 64, elements: !463)
!463 = !{!464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !462, file: !133, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !462, file: !133, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !462, file: !133, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !462, file: !133, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !462, file: !133, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !462, file: !133, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !462, file: !133, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !462, file: !133, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !462, file: !133, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !462, file: !133, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !462, file: !133, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !462, file: !133, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !462, file: !133, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !462, file: !133, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !462, file: !133, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !462, file: !133, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !462, file: !133, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !462, file: !133, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !462, file: !133, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !462, file: !133, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !462, file: !133, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !462, file: !133, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !462, file: !133, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !462, file: !133, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !462, file: !133, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !462, file: !133, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !462, file: !133, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !462, file: !133, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !462, file: !133, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !462, file: !133, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !459, file: !133, line: 3373, baseType: !495, size: 192)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !133, line: 402, size: 192, elements: !496)
!496 = !{!497, !498, !499}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !495, file: !133, line: 403, baseType: !462, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !495, file: !133, line: 404, baseType: !456, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !133, line: 405, baseType: !456, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !459, file: !133, line: 3374, baseType: !501, size: 320)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !133, line: 1384, size: 320, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !501, file: !133, line: 1385, baseType: !495, size: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !501, file: !133, line: 1386, baseType: !505, size: 128, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !506, line: 58, baseType: !507)
!506 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !506, line: 54, size: 128, elements: !508)
!508 = !{!509, !511}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !507, file: !506, line: 56, baseType: !510, size: 64)
!510 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !507, file: !506, line: 57, baseType: !512, size: 64, offset: 64)
!512 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !459, file: !133, line: 3375, baseType: !514, size: 256)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !133, line: 1397, size: 256, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !514, file: !133, line: 1398, baseType: !495, size: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !514, file: !133, line: 1399, baseType: !518, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !520, line: 52, size: 256, elements: !521)
!520 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!521 = !{!522, !523, !524, !525, !526, !527, !528}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !519, file: !520, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !519, file: !520, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !519, file: !520, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !519, file: !520, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !519, file: !520, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !519, file: !520, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !519, file: !520, line: 62, baseType: !529, size: 192, offset: 64)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 192, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 3)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !459, file: !133, line: 3376, baseType: !533, size: 256)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !133, line: 1408, size: 256, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !533, file: !133, line: 1409, baseType: !495, size: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !533, file: !133, line: 1410, baseType: !537, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !539, line: 27, size: 192, elements: !540)
!539 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !538, file: !539, line: 29, baseType: !505, size: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !538, file: !539, line: 30, baseType: !3, size: 32, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !459, file: !133, line: 3377, baseType: !544, size: 256)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !133, line: 1437, size: 256, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !544, file: !133, line: 1438, baseType: !495, size: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !544, file: !133, line: 1439, baseType: !456, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !459, file: !133, line: 3378, baseType: !549, size: 256)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !133, line: 1418, size: 256, elements: !550)
!550 = !{!551, !552, !553}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !549, file: !133, line: 1419, baseType: !495, size: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !549, file: !133, line: 1420, baseType: !449, size: 32, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !549, file: !133, line: 1421, baseType: !554, size: 8, offset: 224)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 8, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 1)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !459, file: !133, line: 3379, baseType: !558, size: 320)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !133, line: 1428, size: 320, elements: !559)
!559 = !{!560, !561, !562}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !558, file: !133, line: 1429, baseType: !495, size: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !558, file: !133, line: 1430, baseType: !456, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !558, file: !133, line: 1431, baseType: !456, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !459, file: !133, line: 3380, baseType: !564, size: 320)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !133, line: 1460, size: 320, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !564, file: !133, line: 1461, baseType: !495, size: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !564, file: !133, line: 1462, baseType: !568, size: 128, offset: 192)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !569, line: 31, size: 128, elements: !570)
!569 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!570 = !{!571, !574, !575}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !568, file: !569, line: 32, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !568, file: !569, line: 33, baseType: !5, size: 32, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !568, file: !569, line: 34, baseType: !5, size: 32, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !459, file: !133, line: 3381, baseType: !577, size: 384)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !133, line: 2507, size: 384, elements: !578)
!578 = !{!579, !580, !585, !586, !587}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !577, file: !133, line: 2508, baseType: !495, size: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !577, file: !133, line: 2509, baseType: !581, size: 32, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !582, line: 58, baseType: !583)
!582 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !584, line: 44, baseType: !5)
!584 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!585 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !577, file: !133, line: 2510, baseType: !5, size: 32, offset: 224)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !577, file: !133, line: 2511, baseType: !456, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !577, file: !133, line: 2512, baseType: !456, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !459, file: !133, line: 3382, baseType: !589, size: 896)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !133, line: 2652, size: 896, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !589, file: !133, line: 2653, baseType: !577, size: 384)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !589, file: !133, line: 2654, baseType: !456, size: 64, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !589, file: !133, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !589, file: !133, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !589, file: !133, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !589, file: !133, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !589, file: !133, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !589, file: !133, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !589, file: !133, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !589, file: !133, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !589, file: !133, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !589, file: !133, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !589, file: !133, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !589, file: !133, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !589, file: !133, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !589, file: !133, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !589, file: !133, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !589, file: !133, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !589, file: !133, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !589, file: !133, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !589, file: !133, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !589, file: !133, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !589, file: !133, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !589, file: !133, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !589, file: !133, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !589, file: !133, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !589, file: !133, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !589, file: !133, line: 2703, baseType: !5, size: 32, offset: 512)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !589, file: !133, line: 2705, baseType: !456, size: 64, offset: 576)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !589, file: !133, line: 2706, baseType: !456, size: 64, offset: 640)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !589, file: !133, line: 2707, baseType: !456, size: 64, offset: 704)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !589, file: !133, line: 2708, baseType: !456, size: 64, offset: 768)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !589, file: !133, line: 2711, baseType: !624, size: 64, offset: 832)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !133, line: 2711, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !459, file: !133, line: 3383, baseType: !627, size: 960)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !133, line: 2756, size: 960, elements: !628)
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !627, file: !133, line: 2757, baseType: !589, size: 896)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !627, file: !133, line: 2758, baseType: !631, size: 64, offset: 896)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !457, line: 50, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !634, line: 240, size: 384, elements: !635)
!634 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!635 = !{!636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !633, file: !634, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !633, file: !634, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !633, file: !634, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !633, file: !634, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !633, file: !634, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !633, file: !634, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !633, file: !634, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !633, file: !634, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !633, file: !634, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !633, file: !634, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !633, file: !634, line: 321, baseType: !647, size: 320, offset: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !634, line: 315, size: 320, elements: !648)
!648 = !{!649, !1051, !1053, !1116, !1117}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !647, file: !634, line: 316, baseType: !650, size: 64)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 64, elements: !555)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !634, line: 183, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !634, line: 166, size: 64, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !666, !667, !679, !682, !742, !743, !1028, !1041, !1048}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !652, file: !634, line: 168, baseType: !449, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !652, file: !634, line: 169, baseType: !5, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !652, file: !634, line: 170, baseType: !454, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !652, file: !634, line: 171, baseType: !631, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !652, file: !634, line: 172, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !457, line: 53, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !634, line: 359, size: 128, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !661, file: !634, line: 360, baseType: !449, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !661, file: !634, line: 361, baseType: !665, size: 64, offset: 64)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 64, elements: !555)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !652, file: !634, line: 173, baseType: !3, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !652, file: !634, line: 174, baseType: !668, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !634, line: 133, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !634, line: 115, size: 32, elements: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !669, file: !634, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !669, file: !634, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !669, file: !634, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !669, file: !634, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !669, file: !634, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !669, file: !634, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !669, file: !634, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !669, file: !634, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !652, file: !634, line: 175, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !634, line: 175, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !652, file: !634, line: 176, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !685, line: 75, size: 256, elements: !686)
!685 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!686 = !{!687, !701, !702, !703}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !684, file: !685, line: 76, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !685, line: 68, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !685, line: 63, size: 320, elements: !691)
!691 = !{!692, !694, !695, !696}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !685, line: 64, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !690, file: !685, line: 65, baseType: !693, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !690, file: !685, line: 66, baseType: !5, size: 32, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !690, file: !685, line: 67, baseType: !697, size: 128, offset: 192)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 128, elements: !699)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !685, line: 29, baseType: !510)
!699 = !{!700}
!700 = !DISubrange(count: 2)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !684, file: !685, line: 77, baseType: !688, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !684, file: !685, line: 78, baseType: !5, size: 32, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !684, file: !685, line: 79, baseType: !704, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !685, line: 49, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !685, line: 45, size: 832, elements: !707)
!707 = !{!708, !709, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !706, file: !685, line: 46, baseType: !693, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !706, file: !685, line: 47, baseType: !683, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !706, file: !685, line: 48, baseType: !711, size: 704, offset: 128)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !712, line: 164, size: 704, elements: !713)
!712 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!713 = !{!714, !715, !725, !726, !727, !728, !729, !730, !734, !738, !739, !740, !741}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !711, file: !712, line: 166, baseType: !512, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !711, file: !712, line: 167, baseType: !716, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !712, line: 157, size: 192, elements: !718)
!718 = !{!719, !720, !721}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !717, file: !712, line: 159, baseType: !451, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !717, file: !712, line: 160, baseType: !716, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !717, file: !712, line: 161, baseType: !722, size: 32, offset: 128)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 32, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 4)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !711, file: !712, line: 168, baseType: !451, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !711, file: !712, line: 169, baseType: !451, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !711, file: !712, line: 170, baseType: !451, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !711, file: !712, line: 171, baseType: !512, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !711, file: !712, line: 172, baseType: !449, size: 32, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !711, file: !712, line: 176, baseType: !731, size: 64, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!716, !453, !512}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !711, file: !712, line: 177, baseType: !735, size: 64, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !453, !716}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !711, file: !712, line: 178, baseType: !453, size: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !711, file: !712, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !711, file: !712, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !711, file: !712, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !652, file: !634, line: 177, baseType: !456, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !652, file: !634, line: 178, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !328, line: 217, size: 832, elements: !746)
!746 = !{!747, !993, !994, !995, !998, !1002, !1003, !1004, !1022, !1023, !1024, !1025, !1026, !1027}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !745, file: !328, line: 219, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !328, line: 151, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !328, line: 151, size: 128, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !750, file: !328, line: 151, baseType: !753, size: 128)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !328, line: 150, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !328, line: 150, size: 128, elements: !755)
!755 = !{!756, !757, !758}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !754, file: !328, line: 150, baseType: !5, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !754, file: !328, line: 150, baseType: !5, size: 32, offset: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !754, file: !328, line: 150, baseType: !759, size: 64, offset: 64)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 64, elements: !555)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !457, line: 108, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !328, line: 122, size: 512, elements: !763)
!763 = !{!764, !765, !766, !985, !986, !987, !988, !989, !990, !991}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !762, file: !328, line: 124, baseType: !744, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !762, file: !328, line: 125, baseType: !744, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !762, file: !328, line: 131, baseType: !767, size: 64, offset: 128)
!767 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !328, line: 128, size: 64, elements: !768)
!768 = !{!769, !984}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !767, file: !328, line: 129, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !457, line: 66, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !376, line: 143, size: 192, elements: !773)
!773 = !{!774, !982, !983}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !772, file: !376, line: 145, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !457, line: 69, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !376, line: 136, size: 192, elements: !778)
!778 = !{!779, !980, !981}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !777, file: !376, line: 137, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !457, line: 58, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !376, line: 737, size: 768, elements: !783)
!783 = !{!784, !801, !835, !841, !846, !851, !858, !864, !870, !875, !889, !894, !900, !905, !915, !920, !938, !945, !952, !958, !963, !969, !975}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !782, file: !376, line: 738, baseType: !785, size: 256)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !376, line: 271, size: 256, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !785, file: !376, line: 274, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !785, file: !376, line: 277, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !785, file: !376, line: 281, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !785, file: !376, line: 284, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !785, file: !376, line: 291, baseType: !5, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !785, file: !376, line: 295, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !785, file: !376, line: 298, baseType: !5, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !785, file: !376, line: 301, baseType: !5, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !785, file: !376, line: 307, baseType: !5, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !785, file: !376, line: 312, baseType: !5, size: 32, offset: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !785, file: !376, line: 316, baseType: !581, size: 32, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !785, file: !376, line: 319, baseType: !5, size: 32, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !785, file: !376, line: 323, baseType: !744, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !785, file: !376, line: 327, baseType: !456, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !782, file: !376, line: 739, baseType: !802, size: 448)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !376, line: 350, size: 448, elements: !803)
!803 = !{!804, !833}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !802, file: !376, line: 353, baseType: !805, size: 384)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !376, line: 333, size: 384, elements: !806)
!806 = !{!807, !808, !816}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !805, file: !376, line: 336, baseType: !785, size: 256)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !805, file: !376, line: 343, baseType: !809, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !811, line: 37, size: 128, elements: !812)
!811 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !810, file: !811, line: 39, baseType: !809, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !810, file: !811, line: 40, baseType: !815, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !805, file: !376, line: 344, baseType: !817, size: 64, offset: 320)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !811, line: 45, size: 320, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !818, file: !811, line: 47, baseType: !817, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !818, file: !811, line: 48, baseType: !822, size: 256, offset: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !133, line: 1883, size: 256, elements: !823)
!823 = !{!824, !826, !827, !832}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !822, file: !133, line: 1884, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !822, file: !133, line: 1885, baseType: !825, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !822, file: !133, line: 1891, baseType: !828, size: 64, offset: 128)
!828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !133, line: 1891, size: 64, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !828, file: !133, line: 1891, baseType: !780, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !828, file: !133, line: 1891, baseType: !456, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !822, file: !133, line: 1892, baseType: !815, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !802, file: !376, line: 359, baseType: !834, size: 64, offset: 384)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 64, elements: !555)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !782, file: !376, line: 740, baseType: !836, size: 512)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !376, line: 365, size: 512, elements: !837)
!837 = !{!838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !836, file: !376, line: 368, baseType: !805, size: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !836, file: !376, line: 373, baseType: !456, size: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !836, file: !376, line: 374, baseType: !456, size: 64, offset: 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !782, file: !376, line: 741, baseType: !842, size: 576)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !376, line: 380, size: 576, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !842, file: !376, line: 383, baseType: !836, size: 512)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !842, file: !376, line: 389, baseType: !834, size: 64, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !782, file: !376, line: 742, baseType: !847, size: 320)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !376, line: 395, size: 320, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !847, file: !376, line: 397, baseType: !785, size: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !847, file: !376, line: 400, baseType: !770, size: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !782, file: !376, line: 743, baseType: !852, size: 448)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !376, line: 406, size: 448, elements: !853)
!853 = !{!854, !855, !856, !857}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !852, file: !376, line: 408, baseType: !785, size: 256)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !852, file: !376, line: 412, baseType: !456, size: 64, offset: 256)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !852, file: !376, line: 420, baseType: !456, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !852, file: !376, line: 423, baseType: !770, size: 64, offset: 384)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !782, file: !376, line: 744, baseType: !859, size: 384)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !376, line: 429, size: 384, elements: !860)
!860 = !{!861, !862, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !859, file: !376, line: 431, baseType: !785, size: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !859, file: !376, line: 434, baseType: !456, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !859, file: !376, line: 437, baseType: !770, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !782, file: !376, line: 745, baseType: !865, size: 384)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !376, line: 443, size: 384, elements: !866)
!866 = !{!867, !868, !869}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !865, file: !376, line: 445, baseType: !785, size: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !865, file: !376, line: 449, baseType: !456, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !865, file: !376, line: 453, baseType: !770, size: 64, offset: 320)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !782, file: !376, line: 746, baseType: !871, size: 320)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !376, line: 459, size: 320, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !871, file: !376, line: 461, baseType: !785, size: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !871, file: !376, line: 464, baseType: !456, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !782, file: !376, line: 747, baseType: !876, size: 768)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !376, line: 469, size: 768, elements: !877)
!877 = !{!878, !879, !880, !881, !882}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !876, file: !376, line: 471, baseType: !785, size: 256)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !876, file: !376, line: 474, baseType: !5, size: 32, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !876, file: !376, line: 475, baseType: !5, size: 32, offset: 288)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !876, file: !376, line: 478, baseType: !456, size: 64, offset: 320)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !876, file: !376, line: 481, baseType: !883, size: 384, offset: 384)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 384, elements: !555)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !133, line: 1917, size: 384, elements: !885)
!885 = !{!886, !887, !888}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !884, file: !133, line: 1920, baseType: !822, size: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !884, file: !133, line: 1921, baseType: !456, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !884, file: !133, line: 1922, baseType: !581, size: 32, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !782, file: !376, line: 748, baseType: !890, size: 320)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !376, line: 487, size: 320, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !890, file: !376, line: 490, baseType: !785, size: 256)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !890, file: !376, line: 494, baseType: !449, size: 32, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !782, file: !376, line: 749, baseType: !895, size: 384)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !376, line: 500, size: 384, elements: !896)
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !895, file: !376, line: 502, baseType: !785, size: 256)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !895, file: !376, line: 506, baseType: !770, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !895, file: !376, line: 510, baseType: !770, size: 64, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !782, file: !376, line: 750, baseType: !901, size: 320)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !376, line: 529, size: 320, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !901, file: !376, line: 531, baseType: !785, size: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !901, file: !376, line: 540, baseType: !770, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !782, file: !376, line: 751, baseType: !906, size: 704)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !376, line: 546, size: 704, elements: !907)
!907 = !{!908, !909, !910, !911, !912, !913, !914}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !906, file: !376, line: 549, baseType: !836, size: 512)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !906, file: !376, line: 553, baseType: !454, size: 64, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !906, file: !376, line: 557, baseType: !448, size: 8, offset: 576)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !906, file: !376, line: 558, baseType: !448, size: 8, offset: 584)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !906, file: !376, line: 559, baseType: !448, size: 8, offset: 592)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !906, file: !376, line: 560, baseType: !448, size: 8, offset: 600)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !906, file: !376, line: 566, baseType: !834, size: 64, offset: 640)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !782, file: !376, line: 752, baseType: !916, size: 384)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !376, line: 571, size: 384, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !916, file: !376, line: 573, baseType: !847, size: 320)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !916, file: !376, line: 577, baseType: !456, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !782, file: !376, line: 753, baseType: !921, size: 576)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !376, line: 600, size: 576, elements: !922)
!922 = !{!923, !924, !925, !928, !937}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !921, file: !376, line: 602, baseType: !847, size: 320)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !921, file: !376, line: 605, baseType: !456, size: 64, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !921, file: !376, line: 609, baseType: !926, size: 64, offset: 384)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !927, line: 46, baseType: !510)
!927 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!928 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !921, file: !376, line: 612, baseType: !929, size: 64, offset: 448)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !376, line: 581, size: 320, elements: !931)
!931 = !{!932, !933, !934, !935, !936}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !930, file: !376, line: 583, baseType: !132, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !930, file: !376, line: 586, baseType: !456, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !930, file: !376, line: 589, baseType: !456, size: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !930, file: !376, line: 592, baseType: !456, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !930, file: !376, line: 595, baseType: !456, size: 64, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !921, file: !376, line: 616, baseType: !770, size: 64, offset: 512)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !782, file: !376, line: 754, baseType: !939, size: 512)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !376, line: 622, size: 512, elements: !940)
!940 = !{!941, !942, !943, !944}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !939, file: !376, line: 624, baseType: !847, size: 320)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !939, file: !376, line: 628, baseType: !456, size: 64, offset: 320)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !939, file: !376, line: 632, baseType: !456, size: 64, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !939, file: !376, line: 636, baseType: !456, size: 64, offset: 448)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !782, file: !376, line: 755, baseType: !946, size: 704)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !376, line: 642, size: 704, elements: !947)
!947 = !{!948, !949, !950, !951}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !946, file: !376, line: 644, baseType: !939, size: 512)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !946, file: !376, line: 648, baseType: !456, size: 64, offset: 512)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !946, file: !376, line: 652, baseType: !456, size: 64, offset: 576)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !946, file: !376, line: 653, baseType: !456, size: 64, offset: 640)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !782, file: !376, line: 756, baseType: !953, size: 448)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !376, line: 663, size: 448, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !953, file: !376, line: 665, baseType: !847, size: 320)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !953, file: !376, line: 668, baseType: !456, size: 64, offset: 320)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !953, file: !376, line: 673, baseType: !456, size: 64, offset: 384)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !782, file: !376, line: 757, baseType: !959, size: 384)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !376, line: 694, size: 384, elements: !960)
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !959, file: !376, line: 696, baseType: !847, size: 320)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !959, file: !376, line: 699, baseType: !456, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !782, file: !376, line: 758, baseType: !964, size: 384)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !376, line: 681, size: 384, elements: !965)
!965 = !{!966, !967, !968}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !964, file: !376, line: 683, baseType: !785, size: 256)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !964, file: !376, line: 686, baseType: !456, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !964, file: !376, line: 689, baseType: !456, size: 64, offset: 320)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !782, file: !376, line: 759, baseType: !970, size: 384)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !376, line: 707, size: 384, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !970, file: !376, line: 709, baseType: !785, size: 256)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !970, file: !376, line: 712, baseType: !456, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !970, file: !376, line: 712, baseType: !456, size: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !782, file: !376, line: 760, baseType: !976, size: 320)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !376, line: 718, size: 320, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !976, file: !376, line: 720, baseType: !785, size: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !976, file: !376, line: 723, baseType: !456, size: 64, offset: 256)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !777, file: !376, line: 138, baseType: !776, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !376, line: 139, baseType: !776, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !772, file: !376, line: 146, baseType: !775, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !772, file: !376, line: 152, baseType: !770, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !767, file: !328, line: 130, baseType: !631, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !762, file: !328, line: 134, baseType: !453, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !762, file: !328, line: 137, baseType: !456, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !762, file: !328, line: 138, baseType: !581, size: 32, offset: 320)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !762, file: !328, line: 142, baseType: !5, size: 32, offset: 352)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !762, file: !328, line: 144, baseType: !449, size: 32, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !762, file: !328, line: 145, baseType: !449, size: 32, offset: 416)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !762, file: !328, line: 146, baseType: !992, size: 64, offset: 448)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !328, line: 119, baseType: !512)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !745, file: !328, line: 220, baseType: !748, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !745, file: !328, line: 223, baseType: !453, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !745, file: !328, line: 226, baseType: !996, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !328, line: 185, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !745, file: !328, line: 229, baseType: !999, size: 128, offset: 256)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 128, elements: !699)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !328, line: 229, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !745, file: !328, line: 232, baseType: !744, size: 64, offset: 384)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !745, file: !328, line: 233, baseType: !744, size: 64, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !745, file: !328, line: 238, baseType: !1005, size: 64, offset: 512)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !328, line: 235, size: 64, elements: !1006)
!1006 = !{!1007, !1013}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1005, file: !328, line: 236, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !328, line: 273, size: 128, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1009, file: !328, line: 275, baseType: !770, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1009, file: !328, line: 278, baseType: !770, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1005, file: !328, line: 237, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !328, line: 259, size: 320, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1020, !1021}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1015, file: !328, line: 261, baseType: !631, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1015, file: !328, line: 262, baseType: !631, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1015, file: !328, line: 266, baseType: !631, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1015, file: !328, line: 267, baseType: !631, size: 64, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1015, file: !328, line: 270, baseType: !449, size: 32, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !745, file: !328, line: 241, baseType: !992, size: 64, offset: 576)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !745, file: !328, line: 244, baseType: !449, size: 32, offset: 640)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !745, file: !328, line: 247, baseType: !449, size: 32, offset: 672)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !745, file: !328, line: 250, baseType: !449, size: 32, offset: 704)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !745, file: !328, line: 253, baseType: !449, size: 32, offset: 736)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !328, line: 256, baseType: !449, size: 32, offset: 768)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !652, file: !634, line: 179, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !634, line: 150, baseType: !1031)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !634, line: 142, size: 320, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1039, !1040}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1031, file: !634, line: 144, baseType: !456, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1031, file: !634, line: 145, baseType: !631, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1031, file: !634, line: 146, baseType: !631, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1031, file: !634, line: 147, baseType: !1037, size: 32, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1038, line: 31, baseType: !449)
!1038 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1031, file: !634, line: 148, baseType: !5, size: 32, offset: 224)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1031, file: !634, line: 149, baseType: !448, size: 8, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !652, file: !634, line: 180, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !634, line: 162, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !634, line: 159, size: 128, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1044, file: !634, line: 160, baseType: !456, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1044, file: !634, line: 161, baseType: !512, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !652, file: !634, line: 181, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !634, line: 181, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !647, file: !634, line: 317, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 64, elements: !555)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !647, file: !634, line: 318, baseType: !1054, size: 320)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !634, line: 188, size: 320, elements: !1055)
!1055 = !{!1056, !1058, !1115}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1054, file: !634, line: 190, baseType: !1057, size: 192)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 192, elements: !530)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1054, file: !634, line: 193, baseType: !1059, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !634, line: 206, size: 320, elements: !1061)
!1061 = !{!1062, !1100, !1101, !1102, !1114}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1060, file: !634, line: 208, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !457, line: 62, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1066, line: 538, size: 256, elements: !1067)
!1066 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1067 = !{!1068, !1072, !1078, !1091}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1065, file: !1066, line: 539, baseType: !1069, size: 32)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1066, line: 482, size: 32, elements: !1070)
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1069, file: !1066, line: 484, baseType: !5, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1065, file: !1066, line: 540, baseType: !1073, size: 192)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1066, line: 488, size: 192, elements: !1074)
!1074 = !{!1075, !1076, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1073, file: !1066, line: 489, baseType: !1069, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1073, file: !1066, line: 492, baseType: !454, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1073, file: !1066, line: 496, baseType: !456, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1065, file: !1066, line: 541, baseType: !1079, size: 256)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1066, line: 504, size: 256, elements: !1080)
!1080 = !{!1081, !1082, !1089, !1090}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1079, file: !1066, line: 505, baseType: !1069, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1079, file: !1066, line: 509, baseType: !1083, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1066, line: 501, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !1087}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1079, file: !1066, line: 510, baseType: !1087, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1079, file: !1066, line: 513, baseType: !1063, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1065, file: !1066, line: 542, baseType: !1092, size: 128)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1066, line: 530, size: 128, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1092, file: !1066, line: 531, baseType: !1069, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1092, file: !1066, line: 534, baseType: !1096, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1066, line: 525, baseType: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!448, !456, !454, !510, !510}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1060, file: !634, line: 211, baseType: !5, size: 32, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1060, file: !634, line: 214, baseType: !512, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1060, file: !634, line: 224, baseType: !1103, size: 64, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !634, line: 202, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !634, line: 202, size: 128, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1105, file: !634, line: 202, baseType: !1108, size: 128)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !634, line: 200, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !634, line: 200, size: 128, elements: !1110)
!1110 = !{!1111, !1112, !1113}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1109, file: !634, line: 200, baseType: !5, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1109, file: !634, line: 200, baseType: !5, size: 32, offset: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1109, file: !634, line: 200, baseType: !665, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1060, file: !634, line: 234, baseType: !1103, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1054, file: !634, line: 197, baseType: !512, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !647, file: !634, line: 319, baseType: !519, size: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !647, file: !634, line: 320, baseType: !538, size: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !459, file: !133, line: 3384, baseType: !1119, size: 1472)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !133, line: 3114, size: 1472, elements: !1120)
!1120 = !{!1121, !1142, !1143, !1144, !1145}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1119, file: !133, line: 3115, baseType: !1122, size: 1216)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !133, line: 2984, size: 1216, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1122, file: !133, line: 2985, baseType: !627, size: 960)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1122, file: !133, line: 2986, baseType: !456, size: 64, offset: 960)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1122, file: !133, line: 2987, baseType: !456, size: 64, offset: 1024)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1122, file: !133, line: 2988, baseType: !456, size: 64, offset: 1088)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1122, file: !133, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1122, file: !133, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1122, file: !133, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1122, file: !133, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1122, file: !133, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1122, file: !133, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1122, file: !133, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1122, file: !133, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1122, file: !133, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1122, file: !133, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1122, file: !133, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1122, file: !133, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1122, file: !133, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1122, file: !133, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1119, file: !133, line: 3117, baseType: !456, size: 64, offset: 1216)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1119, file: !133, line: 3119, baseType: !456, size: 64, offset: 1280)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1119, file: !133, line: 3121, baseType: !456, size: 64, offset: 1344)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1119, file: !133, line: 3123, baseType: !456, size: 64, offset: 1408)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !459, file: !133, line: 3385, baseType: !1147, size: 1088)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !133, line: 2874, size: 1088, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1147, file: !133, line: 2875, baseType: !627, size: 960)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1147, file: !133, line: 2876, baseType: !631, size: 64, offset: 960)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1147, file: !133, line: 2877, baseType: !1152, size: 64, offset: 1024)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !133, line: 2856, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !459, file: !133, line: 3386, baseType: !1122, size: 1216)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !459, file: !133, line: 3387, baseType: !1156, size: 1280)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !133, line: 3093, size: 1280, elements: !1157)
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1156, file: !133, line: 3094, baseType: !1122, size: 1216)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1156, file: !133, line: 3095, baseType: !1152, size: 64, offset: 1216)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !459, file: !133, line: 3388, baseType: !1161, size: 1216)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !133, line: 2824, size: 1216, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1161, file: !133, line: 2825, baseType: !589, size: 896)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1161, file: !133, line: 2827, baseType: !456, size: 64, offset: 896)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1161, file: !133, line: 2828, baseType: !456, size: 64, offset: 960)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1161, file: !133, line: 2829, baseType: !456, size: 64, offset: 1024)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1161, file: !133, line: 2830, baseType: !456, size: 64, offset: 1088)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1161, file: !133, line: 2831, baseType: !456, size: 64, offset: 1152)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !459, file: !133, line: 3389, baseType: !1170, size: 1024)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !133, line: 2850, size: 1024, elements: !1171)
!1171 = !{!1172, !1173, !1174}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1170, file: !133, line: 2851, baseType: !627, size: 960)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1170, file: !133, line: 2852, baseType: !449, size: 32, offset: 960)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1170, file: !133, line: 2853, baseType: !449, size: 32, offset: 992)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !459, file: !133, line: 3390, baseType: !1176, size: 1024)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !133, line: 2857, size: 1024, elements: !1177)
!1177 = !{!1178, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1176, file: !133, line: 2858, baseType: !627, size: 960)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1176, file: !133, line: 2859, baseType: !1152, size: 64, offset: 960)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !459, file: !133, line: 3391, baseType: !1181, size: 960)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !133, line: 2862, size: 960, elements: !1182)
!1182 = !{!1183}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1181, file: !133, line: 2863, baseType: !627, size: 960)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !459, file: !133, line: 3392, baseType: !1185, size: 1472)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !133, line: 3304, size: 1472, elements: !1186)
!1186 = !{!1187}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1185, file: !133, line: 3305, baseType: !1119, size: 1472)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !459, file: !133, line: 3393, baseType: !1189, size: 1792)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !133, line: 3248, size: 1792, elements: !1190)
!1190 = !{!1191, !1192, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1189, file: !133, line: 3249, baseType: !1119, size: 1472)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1189, file: !133, line: 3251, baseType: !1193, size: 64, offset: 1472)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1195, line: 463, size: 1152, elements: !1196)
!1195 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1196 = !{!1197, !1200, !1231, !1232, !1235, !1238, !1286, !1287, !1288, !1289, !1290, !1314, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1194, file: !1195, line: 464, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1195, line: 464, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1194, file: !1195, line: 467, baseType: !1201, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !328, line: 374, size: 640, elements: !1203)
!1203 = !{!1204, !1206, !1207, !1220, !1221, !1222, !1223, !1224, !1225, !1227, !1229, !1230}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1202, file: !328, line: 377, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !457, line: 111, baseType: !744)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1202, file: !328, line: 378, baseType: !1205, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1202, file: !328, line: 381, baseType: !1208, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !328, line: 282, baseType: !1210)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !328, line: 282, size: 128, elements: !1211)
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1210, file: !328, line: 282, baseType: !1213, size: 128)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !328, line: 281, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !328, line: 281, size: 128, elements: !1215)
!1215 = !{!1216, !1217, !1218}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1214, file: !328, line: 281, baseType: !5, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1214, file: !328, line: 281, baseType: !5, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1214, file: !328, line: 281, baseType: !1219, size: 64, offset: 64)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1205, size: 64, elements: !555)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1202, file: !328, line: 384, baseType: !449, size: 32, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1202, file: !328, line: 387, baseType: !449, size: 32, offset: 224)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1202, file: !328, line: 390, baseType: !449, size: 32, offset: 256)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1202, file: !328, line: 394, baseType: !1208, size: 64, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1202, file: !328, line: 396, baseType: !327, size: 32, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1202, file: !328, line: 399, baseType: !1226, size: 64, offset: 416)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 64, elements: !699)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1202, file: !328, line: 402, baseType: !1228, size: 64, offset: 480)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !699)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1202, file: !328, line: 406, baseType: !449, size: 32, offset: 544)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1202, file: !328, line: 409, baseType: !449, size: 32, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1194, file: !1195, line: 470, baseType: !771, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1194, file: !1195, line: 473, baseType: !1233, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1195, line: 166, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1194, file: !1195, line: 476, baseType: !1236, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1195, line: 476, flags: DIFlagFwdDecl)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1194, file: !1195, line: 479, baseType: !1239, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1240, line: 144, baseType: !1241)
!1240 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1240, line: 100, size: 896, elements: !1243)
!1243 = !{!1244, !1250, !1255, !1260, !1262, !1263, !1264, !1265, !1266, !1267, !1272, !1274, !1275, !1280, !1285}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1242, file: !1240, line: 102, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1240, line: 52, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1249, !1087}
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1240, line: 47, baseType: !5)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1242, file: !1240, line: 105, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1240, line: 59, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!449, !1087, !1087}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1242, file: !1240, line: 108, baseType: !1256, size: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1240, line: 63, baseType: !1257)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !453}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1242, file: !1240, line: 111, baseType: !1261, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1242, file: !1240, line: 114, baseType: !926, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1242, file: !1240, line: 117, baseType: !926, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1242, file: !1240, line: 120, baseType: !926, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1242, file: !1240, line: 124, baseType: !5, size: 32, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1242, file: !1240, line: 128, baseType: !5, size: 32, offset: 480)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1242, file: !1240, line: 131, baseType: !1268, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1240, line: 75, baseType: !1269)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!453, !926, !926}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1242, file: !1240, line: 132, baseType: !1273, size: 64, offset: 576)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1240, line: 78, baseType: !1257)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1242, file: !1240, line: 135, baseType: !453, size: 64, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1242, file: !1240, line: 136, baseType: !1276, size: 64, offset: 704)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1240, line: 82, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!453, !453, !926, !926}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1242, file: !1240, line: 137, baseType: !1281, size: 64, offset: 768)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1240, line: 83, baseType: !1282)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !453, !453}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1242, file: !1240, line: 141, baseType: !5, size: 32, offset: 832)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1194, file: !1195, line: 484, baseType: !456, size: 64, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1194, file: !1195, line: 488, baseType: !456, size: 64, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1194, file: !1195, line: 493, baseType: !456, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1194, file: !1195, line: 496, baseType: !456, size: 64, offset: 576)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1194, file: !1195, line: 501, baseType: !1291, size: 64, offset: 640)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !339, line: 2355, size: 576, elements: !1293)
!1293 = !{!1294, !1297, !1298, !1299, !1300, !1302, !1303, !1308, !1309, !1310, !1311, !1312, !1313}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1292, file: !339, line: 2356, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !339, line: 2356, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1292, file: !339, line: 2357, baseType: !454, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1292, file: !339, line: 2358, baseType: !449, size: 32, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1292, file: !339, line: 2359, baseType: !449, size: 32, offset: 160)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1292, file: !339, line: 2360, baseType: !1301, size: 128, offset: 192)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 128, elements: !723)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1292, file: !339, line: 2364, baseType: !449, size: 32, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1292, file: !339, line: 2367, baseType: !1304, size: 128, offset: 384)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !339, line: 2349, size: 128, elements: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1304, file: !339, line: 2351, baseType: !631, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1304, file: !339, line: 2352, baseType: !512, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1292, file: !339, line: 2371, baseType: !338, size: 32, offset: 512)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1292, file: !339, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1292, file: !339, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1292, file: !339, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1292, file: !339, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1292, file: !339, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1194, file: !1195, line: 504, baseType: !1315, size: 64, offset: 704)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1195, line: 504, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1194, file: !1195, line: 507, baseType: !1239, size: 64, offset: 768)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1194, file: !1195, line: 510, baseType: !449, size: 32, offset: 832)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1194, file: !1195, line: 513, baseType: !449, size: 32, offset: 864)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1194, file: !1195, line: 516, baseType: !581, size: 32, offset: 896)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1194, file: !1195, line: 519, baseType: !581, size: 32, offset: 928)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1194, file: !1195, line: 522, baseType: !5, size: 32, offset: 960)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1194, file: !1195, line: 523, baseType: !5, size: 32, offset: 992)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1194, file: !1195, line: 528, baseType: !454, size: 64, offset: 1024)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1194, file: !1195, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1194, file: !1195, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1194, file: !1195, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1194, file: !1195, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1194, file: !1195, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1194, file: !1195, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1194, file: !1195, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1194, file: !1195, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1194, file: !1195, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1194, file: !1195, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1194, file: !1195, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1194, file: !1195, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1194, file: !1195, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1194, file: !1195, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1194, file: !1195, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1194, file: !1195, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1189, file: !133, line: 3254, baseType: !456, size: 64, offset: 1536)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1189, file: !133, line: 3257, baseType: !456, size: 64, offset: 1600)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1189, file: !133, line: 3258, baseType: !456, size: 64, offset: 1664)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1189, file: !133, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1189, file: !133, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1189, file: !133, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1189, file: !133, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1189, file: !133, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1189, file: !133, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1189, file: !133, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1189, file: !133, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1189, file: !133, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1189, file: !133, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1189, file: !133, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1189, file: !133, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1189, file: !133, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1189, file: !133, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1189, file: !133, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1189, file: !133, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1189, file: !133, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1189, file: !133, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !459, file: !133, line: 3394, baseType: !1363, size: 1344)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !133, line: 2279, size: 1344, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1363, file: !133, line: 2280, baseType: !495, size: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1363, file: !133, line: 2281, baseType: !456, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1363, file: !133, line: 2282, baseType: !456, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1363, file: !133, line: 2283, baseType: !456, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1363, file: !133, line: 2284, baseType: !456, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1363, file: !133, line: 2285, baseType: !5, size: 32, offset: 448)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1363, file: !133, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1363, file: !133, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1363, file: !133, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1363, file: !133, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1363, file: !133, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1363, file: !133, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1363, file: !133, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1363, file: !133, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1363, file: !133, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1363, file: !133, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1363, file: !133, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1363, file: !133, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1363, file: !133, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1363, file: !133, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1363, file: !133, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1363, file: !133, line: 2305, baseType: !5, size: 32, offset: 512)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1363, file: !133, line: 2306, baseType: !1037, size: 32, offset: 544)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1363, file: !133, line: 2307, baseType: !456, size: 64, offset: 576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1363, file: !133, line: 2308, baseType: !456, size: 64, offset: 640)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1363, file: !133, line: 2314, baseType: !1391, size: 64, offset: 704)
!1391 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !133, line: 2309, size: 64, elements: !1392)
!1392 = !{!1393, !1394, !1395}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1391, file: !133, line: 2310, baseType: !449, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1391, file: !133, line: 2311, baseType: !454, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1391, file: !133, line: 2312, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !133, line: 2277, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1363, file: !133, line: 2315, baseType: !456, size: 64, offset: 768)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1363, file: !133, line: 2316, baseType: !456, size: 64, offset: 832)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1363, file: !133, line: 2317, baseType: !456, size: 64, offset: 896)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1363, file: !133, line: 2318, baseType: !456, size: 64, offset: 960)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1363, file: !133, line: 2319, baseType: !456, size: 64, offset: 1024)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1363, file: !133, line: 2320, baseType: !456, size: 64, offset: 1088)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1363, file: !133, line: 2321, baseType: !456, size: 64, offset: 1152)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1363, file: !133, line: 2322, baseType: !456, size: 64, offset: 1216)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1363, file: !133, line: 2324, baseType: !1407, size: 64, offset: 1280)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !133, line: 2324, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !459, file: !133, line: 3395, baseType: !1410, size: 320)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !133, line: 1469, size: 320, elements: !1411)
!1411 = !{!1412, !1413, !1414}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1410, file: !133, line: 1470, baseType: !495, size: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1410, file: !133, line: 1471, baseType: !456, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1410, file: !133, line: 1472, baseType: !456, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !459, file: !133, line: 3396, baseType: !1416, size: 320)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !133, line: 1482, size: 320, elements: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1416, file: !133, line: 1483, baseType: !495, size: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1416, file: !133, line: 1484, baseType: !449, size: 32, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1416, file: !133, line: 1485, baseType: !834, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !459, file: !133, line: 3397, baseType: !1422, size: 384)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !133, line: 1829, size: 384, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1427}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1422, file: !133, line: 1830, baseType: !495, size: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1422, file: !133, line: 1831, baseType: !581, size: 32, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1422, file: !133, line: 1832, baseType: !456, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1422, file: !133, line: 1835, baseType: !834, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !459, file: !133, line: 3398, baseType: !1429, size: 704)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !133, line: 1898, size: 704, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1438}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1429, file: !133, line: 1899, baseType: !495, size: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1429, file: !133, line: 1902, baseType: !456, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1429, file: !133, line: 1905, baseType: !780, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1429, file: !133, line: 1908, baseType: !5, size: 32, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1429, file: !133, line: 1911, baseType: !1436, size: 64, offset: 384)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !133, line: 1876, flags: DIFlagFwdDecl)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1429, file: !133, line: 1914, baseType: !822, size: 256, offset: 448)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !459, file: !133, line: 3399, baseType: !1440, size: 704)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !133, line: 2008, size: 704, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447, !1459, !1460, !1461, !1462, !1463}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1440, file: !133, line: 2009, baseType: !495, size: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1440, file: !133, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1440, file: !133, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1440, file: !133, line: 2014, baseType: !581, size: 32, offset: 224)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1440, file: !133, line: 2016, baseType: !456, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1440, file: !133, line: 2017, baseType: !1448, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !133, line: 183, baseType: !1450)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !133, line: 183, size: 128, elements: !1451)
!1451 = !{!1452}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1450, file: !133, line: 183, baseType: !1453, size: 128)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !133, line: 182, baseType: !1454)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !133, line: 182, size: 128, elements: !1455)
!1455 = !{!1456, !1457, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1454, file: !133, line: 182, baseType: !5, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1454, file: !133, line: 182, baseType: !5, size: 32, offset: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1454, file: !133, line: 182, baseType: !834, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1440, file: !133, line: 2019, baseType: !456, size: 64, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1440, file: !133, line: 2020, baseType: !456, size: 64, offset: 448)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1440, file: !133, line: 2021, baseType: !456, size: 64, offset: 512)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1440, file: !133, line: 2022, baseType: !456, size: 64, offset: 576)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1440, file: !133, line: 2023, baseType: !456, size: 64, offset: 640)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !459, file: !133, line: 3400, baseType: !1465, size: 832)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !133, line: 2430, size: 832, elements: !1466)
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1465, file: !133, line: 2431, baseType: !495, size: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1465, file: !133, line: 2433, baseType: !456, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1465, file: !133, line: 2434, baseType: !456, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1465, file: !133, line: 2435, baseType: !456, size: 64, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1465, file: !133, line: 2436, baseType: !456, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1465, file: !133, line: 2437, baseType: !1448, size: 64, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1465, file: !133, line: 2438, baseType: !456, size: 64, offset: 512)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1465, file: !133, line: 2440, baseType: !456, size: 64, offset: 576)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1465, file: !133, line: 2441, baseType: !456, size: 64, offset: 640)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1465, file: !133, line: 2443, baseType: !1477, size: 128, offset: 704)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !133, line: 182, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !133, line: 182, size: 128, elements: !1479)
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1478, file: !133, line: 182, baseType: !1453, size: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !459, file: !133, line: 3401, baseType: !1482, size: 320)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !133, line: 3327, size: 320, elements: !1483)
!1483 = !{!1484, !1485, !1492}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1482, file: !133, line: 3329, baseType: !495, size: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1482, file: !133, line: 3330, baseType: !1486, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !133, line: 3320, size: 192, elements: !1488)
!1488 = !{!1489, !1490, !1491}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1487, file: !133, line: 3322, baseType: !1486, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1487, file: !133, line: 3323, baseType: !1486, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1487, file: !133, line: 3324, baseType: !456, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1482, file: !133, line: 3331, baseType: !1486, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !459, file: !133, line: 3402, baseType: !1494, size: 256)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !133, line: 1540, size: 256, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1494, file: !133, line: 1541, baseType: !495, size: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1494, file: !133, line: 1542, baseType: !1498, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !133, line: 1538, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !133, line: 1538, size: 192, elements: !1501)
!1501 = !{!1502}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1500, file: !133, line: 1538, baseType: !1503, size: 192)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !133, line: 1537, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !133, line: 1537, size: 192, elements: !1505)
!1505 = !{!1506, !1507, !1508}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1504, file: !133, line: 1537, baseType: !5, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1504, file: !133, line: 1537, baseType: !5, size: 32, offset: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1504, file: !133, line: 1537, baseType: !1509, size: 128, offset: 64)
!1509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1510, size: 128, elements: !555)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !133, line: 1535, baseType: !1511)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !133, line: 1532, size: 128, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1511, file: !133, line: 1533, baseType: !456, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1511, file: !133, line: 1534, baseType: !456, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !459, file: !133, line: 3403, baseType: !1516, size: 512)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !133, line: 1938, size: 512, elements: !1517)
!1517 = !{!1518, !1519, !1520, !1521, !1527, !1528, !1529}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1516, file: !133, line: 1939, baseType: !495, size: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1516, file: !133, line: 1940, baseType: !581, size: 32, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1516, file: !133, line: 1941, baseType: !343, size: 32, offset: 224)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1516, file: !133, line: 1946, baseType: !1522, size: 32, offset: 256)
!1522 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !133, line: 1942, size: 32, elements: !1523)
!1523 = !{!1524, !1525, !1526}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1522, file: !133, line: 1943, baseType: !361, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1522, file: !133, line: 1944, baseType: !368, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1522, file: !133, line: 1945, baseType: !132, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1516, file: !133, line: 1950, baseType: !770, size: 64, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1516, file: !133, line: 1951, baseType: !770, size: 64, offset: 384)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1516, file: !133, line: 1953, baseType: !834, size: 64, offset: 448)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !459, file: !133, line: 3404, baseType: !1531, size: 1664)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !133, line: 3337, size: 1664, elements: !1532)
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1531, file: !133, line: 3338, baseType: !495, size: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1531, file: !133, line: 3341, baseType: !1535, size: 1472, offset: 192)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1536, line: 410, size: 1472, elements: !1537)
!1536 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1537 = !{!1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1535, file: !1536, line: 412, baseType: !449, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1535, file: !1536, line: 413, baseType: !449, size: 32, offset: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1535, file: !1536, line: 414, baseType: !449, size: 32, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1535, file: !1536, line: 415, baseType: !449, size: 32, offset: 96)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1535, file: !1536, line: 416, baseType: !449, size: 32, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1535, file: !1536, line: 417, baseType: !449, size: 32, offset: 160)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1535, file: !1536, line: 418, baseType: !448, size: 8, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1535, file: !1536, line: 419, baseType: !448, size: 8, offset: 200)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1535, file: !1536, line: 420, baseType: !1547, size: 8, offset: 208)
!1547 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1535, file: !1536, line: 421, baseType: !1547, size: 8, offset: 216)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1535, file: !1536, line: 422, baseType: !1547, size: 8, offset: 224)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1535, file: !1536, line: 423, baseType: !1547, size: 8, offset: 232)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1535, file: !1536, line: 424, baseType: !1547, size: 8, offset: 240)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1535, file: !1536, line: 425, baseType: !1547, size: 8, offset: 248)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1535, file: !1536, line: 426, baseType: !1547, size: 8, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1535, file: !1536, line: 427, baseType: !1547, size: 8, offset: 264)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1535, file: !1536, line: 428, baseType: !1547, size: 8, offset: 272)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1535, file: !1536, line: 429, baseType: !1547, size: 8, offset: 280)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1535, file: !1536, line: 430, baseType: !1547, size: 8, offset: 288)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1535, file: !1536, line: 431, baseType: !1547, size: 8, offset: 296)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1535, file: !1536, line: 432, baseType: !1547, size: 8, offset: 304)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1535, file: !1536, line: 433, baseType: !1547, size: 8, offset: 312)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1535, file: !1536, line: 434, baseType: !1547, size: 8, offset: 320)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1535, file: !1536, line: 435, baseType: !1547, size: 8, offset: 328)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1535, file: !1536, line: 436, baseType: !1547, size: 8, offset: 336)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1535, file: !1536, line: 437, baseType: !1547, size: 8, offset: 344)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1535, file: !1536, line: 438, baseType: !1547, size: 8, offset: 352)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1535, file: !1536, line: 439, baseType: !1547, size: 8, offset: 360)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1535, file: !1536, line: 440, baseType: !1547, size: 8, offset: 368)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1535, file: !1536, line: 441, baseType: !1547, size: 8, offset: 376)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1535, file: !1536, line: 442, baseType: !1547, size: 8, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1535, file: !1536, line: 443, baseType: !1547, size: 8, offset: 392)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1535, file: !1536, line: 444, baseType: !1547, size: 8, offset: 400)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1535, file: !1536, line: 445, baseType: !1547, size: 8, offset: 408)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1535, file: !1536, line: 446, baseType: !1547, size: 8, offset: 416)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1535, file: !1536, line: 447, baseType: !1547, size: 8, offset: 424)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1535, file: !1536, line: 448, baseType: !1547, size: 8, offset: 432)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1535, file: !1536, line: 449, baseType: !1547, size: 8, offset: 440)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1535, file: !1536, line: 450, baseType: !1547, size: 8, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1535, file: !1536, line: 451, baseType: !1547, size: 8, offset: 456)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1535, file: !1536, line: 452, baseType: !1547, size: 8, offset: 464)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1535, file: !1536, line: 453, baseType: !1547, size: 8, offset: 472)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1535, file: !1536, line: 454, baseType: !1547, size: 8, offset: 480)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1535, file: !1536, line: 455, baseType: !1547, size: 8, offset: 488)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1535, file: !1536, line: 456, baseType: !1547, size: 8, offset: 496)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1535, file: !1536, line: 457, baseType: !1547, size: 8, offset: 504)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1535, file: !1536, line: 458, baseType: !1547, size: 8, offset: 512)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1535, file: !1536, line: 459, baseType: !1547, size: 8, offset: 520)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1535, file: !1536, line: 460, baseType: !1547, size: 8, offset: 528)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1535, file: !1536, line: 461, baseType: !1547, size: 8, offset: 536)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1535, file: !1536, line: 462, baseType: !1547, size: 8, offset: 544)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1535, file: !1536, line: 463, baseType: !1547, size: 8, offset: 552)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1535, file: !1536, line: 464, baseType: !1547, size: 8, offset: 560)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1535, file: !1536, line: 465, baseType: !1547, size: 8, offset: 568)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1535, file: !1536, line: 466, baseType: !1547, size: 8, offset: 576)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1535, file: !1536, line: 467, baseType: !1547, size: 8, offset: 584)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1535, file: !1536, line: 468, baseType: !1547, size: 8, offset: 592)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1535, file: !1536, line: 469, baseType: !1547, size: 8, offset: 600)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1535, file: !1536, line: 470, baseType: !1547, size: 8, offset: 608)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1535, file: !1536, line: 471, baseType: !1547, size: 8, offset: 616)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1535, file: !1536, line: 472, baseType: !1547, size: 8, offset: 624)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1535, file: !1536, line: 473, baseType: !1547, size: 8, offset: 632)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1535, file: !1536, line: 474, baseType: !1547, size: 8, offset: 640)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1535, file: !1536, line: 475, baseType: !1547, size: 8, offset: 648)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1535, file: !1536, line: 476, baseType: !1547, size: 8, offset: 656)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1535, file: !1536, line: 477, baseType: !1547, size: 8, offset: 664)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1535, file: !1536, line: 478, baseType: !1547, size: 8, offset: 672)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1535, file: !1536, line: 479, baseType: !1547, size: 8, offset: 680)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1535, file: !1536, line: 480, baseType: !1547, size: 8, offset: 688)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1535, file: !1536, line: 481, baseType: !1547, size: 8, offset: 696)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1535, file: !1536, line: 482, baseType: !1547, size: 8, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1535, file: !1536, line: 483, baseType: !1547, size: 8, offset: 712)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1535, file: !1536, line: 484, baseType: !1547, size: 8, offset: 720)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1535, file: !1536, line: 485, baseType: !1547, size: 8, offset: 728)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1535, file: !1536, line: 486, baseType: !1547, size: 8, offset: 736)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1535, file: !1536, line: 487, baseType: !1547, size: 8, offset: 744)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1535, file: !1536, line: 488, baseType: !1547, size: 8, offset: 752)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1535, file: !1536, line: 489, baseType: !1547, size: 8, offset: 760)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1535, file: !1536, line: 490, baseType: !1547, size: 8, offset: 768)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1535, file: !1536, line: 491, baseType: !1547, size: 8, offset: 776)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1535, file: !1536, line: 492, baseType: !1547, size: 8, offset: 784)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1535, file: !1536, line: 493, baseType: !1547, size: 8, offset: 792)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1535, file: !1536, line: 494, baseType: !1547, size: 8, offset: 800)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1535, file: !1536, line: 495, baseType: !1547, size: 8, offset: 808)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1535, file: !1536, line: 496, baseType: !1547, size: 8, offset: 816)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1535, file: !1536, line: 497, baseType: !1547, size: 8, offset: 824)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1535, file: !1536, line: 498, baseType: !1547, size: 8, offset: 832)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1535, file: !1536, line: 499, baseType: !1547, size: 8, offset: 840)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1535, file: !1536, line: 500, baseType: !1547, size: 8, offset: 848)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1535, file: !1536, line: 501, baseType: !1547, size: 8, offset: 856)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1535, file: !1536, line: 502, baseType: !1547, size: 8, offset: 864)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1535, file: !1536, line: 503, baseType: !1547, size: 8, offset: 872)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1535, file: !1536, line: 504, baseType: !1547, size: 8, offset: 880)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1535, file: !1536, line: 505, baseType: !1547, size: 8, offset: 888)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1535, file: !1536, line: 506, baseType: !1547, size: 8, offset: 896)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1535, file: !1536, line: 507, baseType: !1547, size: 8, offset: 904)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1535, file: !1536, line: 508, baseType: !1547, size: 8, offset: 912)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1535, file: !1536, line: 509, baseType: !1547, size: 8, offset: 920)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1535, file: !1536, line: 510, baseType: !1547, size: 8, offset: 928)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1535, file: !1536, line: 511, baseType: !1547, size: 8, offset: 936)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1535, file: !1536, line: 512, baseType: !1547, size: 8, offset: 944)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1535, file: !1536, line: 513, baseType: !1547, size: 8, offset: 952)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1535, file: !1536, line: 514, baseType: !1547, size: 8, offset: 960)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1535, file: !1536, line: 515, baseType: !1547, size: 8, offset: 968)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1535, file: !1536, line: 516, baseType: !1547, size: 8, offset: 976)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1535, file: !1536, line: 517, baseType: !1547, size: 8, offset: 984)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1535, file: !1536, line: 518, baseType: !1547, size: 8, offset: 992)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1535, file: !1536, line: 519, baseType: !1547, size: 8, offset: 1000)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1535, file: !1536, line: 520, baseType: !1547, size: 8, offset: 1008)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1535, file: !1536, line: 521, baseType: !1547, size: 8, offset: 1016)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1535, file: !1536, line: 522, baseType: !1547, size: 8, offset: 1024)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1535, file: !1536, line: 523, baseType: !1547, size: 8, offset: 1032)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1535, file: !1536, line: 524, baseType: !1547, size: 8, offset: 1040)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1535, file: !1536, line: 525, baseType: !1547, size: 8, offset: 1048)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1535, file: !1536, line: 526, baseType: !1547, size: 8, offset: 1056)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1535, file: !1536, line: 527, baseType: !1547, size: 8, offset: 1064)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1535, file: !1536, line: 528, baseType: !1547, size: 8, offset: 1072)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1535, file: !1536, line: 529, baseType: !1547, size: 8, offset: 1080)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1535, file: !1536, line: 530, baseType: !1547, size: 8, offset: 1088)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1535, file: !1536, line: 531, baseType: !1547, size: 8, offset: 1096)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1535, file: !1536, line: 532, baseType: !1547, size: 8, offset: 1104)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1535, file: !1536, line: 533, baseType: !1547, size: 8, offset: 1112)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1535, file: !1536, line: 534, baseType: !1547, size: 8, offset: 1120)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1535, file: !1536, line: 535, baseType: !1547, size: 8, offset: 1128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1535, file: !1536, line: 536, baseType: !1547, size: 8, offset: 1136)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1535, file: !1536, line: 537, baseType: !1547, size: 8, offset: 1144)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1535, file: !1536, line: 538, baseType: !1547, size: 8, offset: 1152)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1535, file: !1536, line: 539, baseType: !1547, size: 8, offset: 1160)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1535, file: !1536, line: 540, baseType: !1547, size: 8, offset: 1168)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1535, file: !1536, line: 541, baseType: !1547, size: 8, offset: 1176)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1535, file: !1536, line: 542, baseType: !1547, size: 8, offset: 1184)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1535, file: !1536, line: 543, baseType: !1547, size: 8, offset: 1192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1535, file: !1536, line: 544, baseType: !1547, size: 8, offset: 1200)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1535, file: !1536, line: 545, baseType: !1547, size: 8, offset: 1208)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1535, file: !1536, line: 546, baseType: !1547, size: 8, offset: 1216)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1535, file: !1536, line: 547, baseType: !1547, size: 8, offset: 1224)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1535, file: !1536, line: 548, baseType: !1547, size: 8, offset: 1232)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1535, file: !1536, line: 549, baseType: !1547, size: 8, offset: 1240)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1535, file: !1536, line: 550, baseType: !1547, size: 8, offset: 1248)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1535, file: !1536, line: 551, baseType: !1547, size: 8, offset: 1256)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1535, file: !1536, line: 552, baseType: !1547, size: 8, offset: 1264)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1535, file: !1536, line: 553, baseType: !1547, size: 8, offset: 1272)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1535, file: !1536, line: 554, baseType: !1547, size: 8, offset: 1280)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1535, file: !1536, line: 555, baseType: !1547, size: 8, offset: 1288)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1535, file: !1536, line: 556, baseType: !1547, size: 8, offset: 1296)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1535, file: !1536, line: 557, baseType: !1547, size: 8, offset: 1304)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1535, file: !1536, line: 558, baseType: !1547, size: 8, offset: 1312)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1535, file: !1536, line: 559, baseType: !1547, size: 8, offset: 1320)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1535, file: !1536, line: 560, baseType: !1547, size: 8, offset: 1328)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1535, file: !1536, line: 561, baseType: !1547, size: 8, offset: 1336)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1535, file: !1536, line: 562, baseType: !1547, size: 8, offset: 1344)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1535, file: !1536, line: 563, baseType: !1547, size: 8, offset: 1352)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1535, file: !1536, line: 564, baseType: !1547, size: 8, offset: 1360)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1535, file: !1536, line: 565, baseType: !1547, size: 8, offset: 1368)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1535, file: !1536, line: 566, baseType: !1547, size: 8, offset: 1376)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1535, file: !1536, line: 567, baseType: !1547, size: 8, offset: 1384)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1535, file: !1536, line: 568, baseType: !1547, size: 8, offset: 1392)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1535, file: !1536, line: 569, baseType: !1547, size: 8, offset: 1400)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1535, file: !1536, line: 570, baseType: !1547, size: 8, offset: 1408)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1535, file: !1536, line: 571, baseType: !1547, size: 8, offset: 1416)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1535, file: !1536, line: 572, baseType: !1547, size: 8, offset: 1424)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1535, file: !1536, line: 573, baseType: !1547, size: 8, offset: 1432)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1535, file: !1536, line: 574, baseType: !1547, size: 8, offset: 1440)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !459, file: !133, line: 3405, baseType: !1703, size: 384)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !133, line: 3352, size: 384, elements: !1704)
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1703, file: !133, line: 3353, baseType: !495, size: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1703, file: !133, line: 3356, baseType: !1707, size: 192, offset: 192)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1536, line: 578, size: 192, elements: !1708)
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1707, file: !1536, line: 580, baseType: !449, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1707, file: !1536, line: 581, baseType: !449, size: 32, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1707, file: !1536, line: 582, baseType: !449, size: 32, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1707, file: !1536, line: 583, baseType: !449, size: 32, offset: 96)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1707, file: !1536, line: 584, baseType: !448, size: 8, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1707, file: !1536, line: 585, baseType: !448, size: 8, offset: 136)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1707, file: !1536, line: 586, baseType: !448, size: 8, offset: 144)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1707, file: !1536, line: 587, baseType: !448, size: 8, offset: 152)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1707, file: !1536, line: 588, baseType: !448, size: 8, offset: 160)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1707, file: !1536, line: 589, baseType: !448, size: 8, offset: 168)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1707, file: !1536, line: 590, baseType: !448, size: 8, offset: 176)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "name_expansion", file: !1, line: 558, size: 1920, elements: !1724)
!1724 = !{!1725, !1742}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "expansion", scope: !1723, file: !1, line: 560, baseType: !1726, size: 1856)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "aff_tree", file: !1727, line: 59, baseType: !1728)
!1727 = !DIFile(filename: "./tree-affine.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "affine_tree_combination", file: !1727, line: 36, size: 1856, elements: !1729)
!1729 = !{!1730, !1731, !1732, !1733, !1741}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1728, file: !1727, line: 39, baseType: !456, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1728, file: !1727, line: 42, baseType: !505, size: 128, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1728, file: !1727, line: 45, baseType: !5, size: 32, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1728, file: !1727, line: 53, baseType: !1734, size: 1536, offset: 256)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1735, size: 1536, elements: !1739)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aff_comb_elt", file: !1727, line: 27, size: 192, elements: !1736)
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1735, file: !1727, line: 30, baseType: !456, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !1735, file: !1727, line: 33, baseType: !505, size: 128, offset: 64)
!1739 = !{!1740}
!1740 = !DISubrange(count: 8)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "rest", scope: !1728, file: !1727, line: 58, baseType: !456, size: 64, offset: 1792)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "in_progress", scope: !1723, file: !1, line: 563, baseType: !5, size: 1, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!1745 = !{i32 2, !"Dwarf Version", i32 4}
!1746 = !{i32 2, !"Debug Info Version", i32 3}
!1747 = !{i32 1, !"wchar_size", i32 4}
!1748 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1749 = distinct !DISubprogram(name: "vprintf", scope: !1750, file: !1750, line: 39, type: !1751, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1761)
!1750 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!449, !1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !454)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1756)
!1756 = !{!1757, !1758, !1759, !1760}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1755, file: !1, baseType: !5, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1755, file: !1, baseType: !5, size: 32, offset: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1755, file: !1, baseType: !453, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1755, file: !1, baseType: !453, size: 64, offset: 128)
!1761 = !{!1762, !1763}
!1762 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1749, file: !1750, line: 39, type: !1753)
!1763 = !DILocalVariable(name: "__arg", arg: 2, scope: !1749, file: !1750, line: 39, type: !1754)
!1764 = !DILocation(line: 0, scope: !1749)
!1765 = !DILocation(line: 41, column: 20, scope: !1749)
!1766 = !DILocation(line: 41, column: 10, scope: !1749)
!1767 = !DILocation(line: 41, column: 3, scope: !1749)
!1768 = distinct !DISubprogram(name: "getchar", scope: !1750, file: !1750, line: 47, type: !1769, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1771)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!449}
!1771 = !{}
!1772 = !DILocation(line: 49, column: 16, scope: !1768)
!1773 = !DILocation(line: 49, column: 10, scope: !1768)
!1774 = !DILocation(line: 49, column: 3, scope: !1768)
!1775 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1750, file: !1750, line: 56, type: !1776, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1829)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!449, !1778}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1780, line: 7, baseType: !1781)
!1780 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1782, line: 49, size: 1728, elements: !1783)
!1782 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1783 = !{!1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1799, !1801, !1802, !1803, !1806, !1808, !1809, !1810, !1813, !1815, !1818, !1821, !1822, !1823, !1824, !1825}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1781, file: !1782, line: 51, baseType: !449, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1781, file: !1782, line: 54, baseType: !451, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1781, file: !1782, line: 55, baseType: !451, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1781, file: !1782, line: 56, baseType: !451, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1781, file: !1782, line: 57, baseType: !451, size: 64, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1781, file: !1782, line: 58, baseType: !451, size: 64, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1781, file: !1782, line: 59, baseType: !451, size: 64, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1781, file: !1782, line: 60, baseType: !451, size: 64, offset: 448)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1781, file: !1782, line: 61, baseType: !451, size: 64, offset: 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1781, file: !1782, line: 64, baseType: !451, size: 64, offset: 576)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1781, file: !1782, line: 65, baseType: !451, size: 64, offset: 640)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1781, file: !1782, line: 66, baseType: !451, size: 64, offset: 704)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1781, file: !1782, line: 68, baseType: !1797, size: 64, offset: 768)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1782, line: 36, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1781, file: !1782, line: 70, baseType: !1800, size: 64, offset: 832)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1781, file: !1782, line: 72, baseType: !449, size: 32, offset: 896)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1781, file: !1782, line: 73, baseType: !449, size: 32, offset: 928)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1781, file: !1782, line: 74, baseType: !1804, size: 64, offset: 960)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1805, line: 152, baseType: !512)
!1805 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1781, file: !1782, line: 77, baseType: !1807, size: 16, offset: 1024)
!1807 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1781, file: !1782, line: 78, baseType: !1547, size: 8, offset: 1040)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1781, file: !1782, line: 79, baseType: !554, size: 8, offset: 1048)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1781, file: !1782, line: 81, baseType: !1811, size: 64, offset: 1088)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1782, line: 43, baseType: null)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1781, file: !1782, line: 89, baseType: !1814, size: 64, offset: 1152)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1805, line: 153, baseType: !512)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1781, file: !1782, line: 91, baseType: !1816, size: 64, offset: 1216)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1782, line: 37, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1781, file: !1782, line: 92, baseType: !1819, size: 64, offset: 1280)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1782, line: 38, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1781, file: !1782, line: 93, baseType: !1800, size: 64, offset: 1344)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1781, file: !1782, line: 94, baseType: !453, size: 64, offset: 1408)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1781, file: !1782, line: 95, baseType: !926, size: 64, offset: 1472)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1781, file: !1782, line: 96, baseType: !449, size: 32, offset: 1536)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1781, file: !1782, line: 98, baseType: !1826, size: 160, offset: 1568)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 160, elements: !1827)
!1827 = !{!1828}
!1828 = !DISubrange(count: 20)
!1829 = !{!1830}
!1830 = !DILocalVariable(name: "__fp", arg: 1, scope: !1775, file: !1750, line: 56, type: !1778)
!1831 = !DILocation(line: 0, scope: !1775)
!1832 = !DILocation(line: 58, column: 10, scope: !1775)
!1833 = !DILocation(line: 58, column: 3, scope: !1775)
!1834 = distinct !DISubprogram(name: "getc_unlocked", scope: !1750, file: !1750, line: 66, type: !1776, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1835)
!1835 = !{!1836}
!1836 = !DILocalVariable(name: "__fp", arg: 1, scope: !1834, file: !1750, line: 66, type: !1778)
!1837 = !DILocation(line: 0, scope: !1834)
!1838 = !DILocation(line: 68, column: 10, scope: !1834)
!1839 = !DILocation(line: 68, column: 3, scope: !1834)
!1840 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1750, file: !1750, line: 73, type: !1769, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1771)
!1841 = !DILocation(line: 75, column: 10, scope: !1840)
!1842 = !DILocation(line: 75, column: 3, scope: !1840)
!1843 = distinct !DISubprogram(name: "putchar", scope: !1750, file: !1750, line: 82, type: !1844, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1846)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!449, !449}
!1846 = !{!1847}
!1847 = !DILocalVariable(name: "__c", arg: 1, scope: !1843, file: !1750, line: 82, type: !449)
!1848 = !DILocation(line: 0, scope: !1843)
!1849 = !DILocation(line: 84, column: 21, scope: !1843)
!1850 = !DILocation(line: 84, column: 10, scope: !1843)
!1851 = !DILocation(line: 84, column: 3, scope: !1843)
!1852 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1750, file: !1750, line: 91, type: !1853, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1855)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!449, !449, !1778}
!1855 = !{!1856, !1857}
!1856 = !DILocalVariable(name: "__c", arg: 1, scope: !1852, file: !1750, line: 91, type: !449)
!1857 = !DILocalVariable(name: "__stream", arg: 2, scope: !1852, file: !1750, line: 91, type: !1778)
!1858 = !DILocation(line: 0, scope: !1852)
!1859 = !DILocation(line: 93, column: 10, scope: !1852)
!1860 = !DILocation(line: 93, column: 3, scope: !1852)
!1861 = distinct !DISubprogram(name: "putc_unlocked", scope: !1750, file: !1750, line: 101, type: !1853, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1862)
!1862 = !{!1863, !1864}
!1863 = !DILocalVariable(name: "__c", arg: 1, scope: !1861, file: !1750, line: 101, type: !449)
!1864 = !DILocalVariable(name: "__stream", arg: 2, scope: !1861, file: !1750, line: 101, type: !1778)
!1865 = !DILocation(line: 0, scope: !1861)
!1866 = !DILocation(line: 103, column: 10, scope: !1861)
!1867 = !DILocation(line: 103, column: 3, scope: !1861)
!1868 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1750, file: !1750, line: 108, type: !1844, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1869)
!1869 = !{!1870}
!1870 = !DILocalVariable(name: "__c", arg: 1, scope: !1868, file: !1750, line: 108, type: !449)
!1871 = !DILocation(line: 0, scope: !1868)
!1872 = !DILocation(line: 110, column: 10, scope: !1868)
!1873 = !DILocation(line: 110, column: 3, scope: !1868)
!1874 = distinct !DISubprogram(name: "getline", scope: !1750, file: !1750, line: 118, type: !1875, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1879)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!1877, !450, !1878, !1778}
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1805, line: 193, baseType: !512)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!1879 = !{!1880, !1881, !1882}
!1880 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1874, file: !1750, line: 118, type: !450)
!1881 = !DILocalVariable(name: "__n", arg: 2, scope: !1874, file: !1750, line: 118, type: !1878)
!1882 = !DILocalVariable(name: "__stream", arg: 3, scope: !1874, file: !1750, line: 118, type: !1778)
!1883 = !DILocation(line: 0, scope: !1874)
!1884 = !DILocation(line: 120, column: 10, scope: !1874)
!1885 = !DILocation(line: 120, column: 3, scope: !1874)
!1886 = distinct !DISubprogram(name: "feof_unlocked", scope: !1750, file: !1750, line: 128, type: !1776, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1887)
!1887 = !{!1888}
!1888 = !DILocalVariable(name: "__stream", arg: 1, scope: !1886, file: !1750, line: 128, type: !1778)
!1889 = !DILocation(line: 0, scope: !1886)
!1890 = !DILocation(line: 130, column: 10, scope: !1886)
!1891 = !DILocation(line: 130, column: 3, scope: !1886)
!1892 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1750, file: !1750, line: 135, type: !1776, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1893)
!1893 = !{!1894}
!1894 = !DILocalVariable(name: "__stream", arg: 1, scope: !1892, file: !1750, line: 135, type: !1778)
!1895 = !DILocation(line: 0, scope: !1892)
!1896 = !DILocation(line: 137, column: 10, scope: !1892)
!1897 = !DILocation(line: 137, column: 3, scope: !1892)
!1898 = distinct !DISubprogram(name: "tolower", scope: !1899, file: !1899, line: 207, type: !1844, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1900)
!1899 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1900 = !{!1901}
!1901 = !DILocalVariable(name: "__c", arg: 1, scope: !1898, file: !1899, line: 207, type: !449)
!1902 = !DILocation(line: 0, scope: !1898)
!1903 = !DILocation(line: 209, column: 22, scope: !1898)
!1904 = !DILocation(line: 209, column: 39, scope: !1898)
!1905 = !DILocation(line: 209, column: 38, scope: !1898)
!1906 = !DILocation(line: 209, column: 37, scope: !1898)
!1907 = !DILocation(line: 209, column: 10, scope: !1898)
!1908 = !DILocation(line: 209, column: 3, scope: !1898)
!1909 = distinct !DISubprogram(name: "toupper", scope: !1899, file: !1899, line: 213, type: !1844, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1910)
!1910 = !{!1911}
!1911 = !DILocalVariable(name: "__c", arg: 1, scope: !1909, file: !1899, line: 213, type: !449)
!1912 = !DILocation(line: 0, scope: !1909)
!1913 = !DILocation(line: 215, column: 22, scope: !1909)
!1914 = !DILocation(line: 215, column: 39, scope: !1909)
!1915 = !DILocation(line: 215, column: 38, scope: !1909)
!1916 = !DILocation(line: 215, column: 37, scope: !1909)
!1917 = !DILocation(line: 215, column: 10, scope: !1909)
!1918 = !DILocation(line: 215, column: 3, scope: !1909)
!1919 = distinct !DISubprogram(name: "atoi", scope: !1920, file: !1920, line: 361, type: !1921, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1923)
!1920 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!449, !454}
!1923 = !{!1924}
!1924 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1919, file: !1920, line: 361, type: !454)
!1925 = !DILocation(line: 0, scope: !1919)
!1926 = !DILocation(line: 363, column: 16, scope: !1919)
!1927 = !DILocation(line: 363, column: 10, scope: !1919)
!1928 = !DILocation(line: 363, column: 3, scope: !1919)
!1929 = distinct !DISubprogram(name: "atol", scope: !1920, file: !1920, line: 366, type: !1930, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!512, !454}
!1932 = !{!1933}
!1933 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1929, file: !1920, line: 366, type: !454)
!1934 = !DILocation(line: 0, scope: !1929)
!1935 = !DILocation(line: 368, column: 10, scope: !1929)
!1936 = !DILocation(line: 368, column: 3, scope: !1929)
!1937 = distinct !DISubprogram(name: "atoll", scope: !1920, file: !1920, line: 373, type: !1938, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1941)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!1940, !454}
!1940 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1941 = !{!1942}
!1942 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1937, file: !1920, line: 373, type: !454)
!1943 = !DILocation(line: 0, scope: !1937)
!1944 = !DILocation(line: 375, column: 10, scope: !1937)
!1945 = !DILocation(line: 375, column: 3, scope: !1937)
!1946 = distinct !DISubprogram(name: "bsearch", scope: !1947, file: !1947, line: 20, type: !1948, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1951)
!1947 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!453, !1087, !1087, !926, !926, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1920, line: 808, baseType: !1252)
!1951 = !{!1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961}
!1952 = !DILocalVariable(name: "__key", arg: 1, scope: !1946, file: !1947, line: 20, type: !1087)
!1953 = !DILocalVariable(name: "__base", arg: 2, scope: !1946, file: !1947, line: 20, type: !1087)
!1954 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1946, file: !1947, line: 20, type: !926)
!1955 = !DILocalVariable(name: "__size", arg: 4, scope: !1946, file: !1947, line: 20, type: !926)
!1956 = !DILocalVariable(name: "__compar", arg: 5, scope: !1946, file: !1947, line: 21, type: !1950)
!1957 = !DILocalVariable(name: "__l", scope: !1946, file: !1947, line: 23, type: !926)
!1958 = !DILocalVariable(name: "__u", scope: !1946, file: !1947, line: 23, type: !926)
!1959 = !DILocalVariable(name: "__idx", scope: !1946, file: !1947, line: 23, type: !926)
!1960 = !DILocalVariable(name: "__p", scope: !1946, file: !1947, line: 24, type: !1087)
!1961 = !DILocalVariable(name: "__comparison", scope: !1946, file: !1947, line: 25, type: !449)
!1962 = !DILocation(line: 0, scope: !1946)
!1963 = !DILocation(line: 29, column: 3, scope: !1946)
!1964 = !DILocation(line: 27, column: 7, scope: !1946)
!1965 = !DILocation(line: 29, column: 14, scope: !1946)
!1966 = !DILocation(line: 31, column: 20, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1946, file: !1947, line: 30, column: 5)
!1968 = !DILocation(line: 31, column: 27, scope: !1967)
!1969 = !DILocation(line: 32, column: 56, scope: !1967)
!1970 = !DILocation(line: 32, column: 47, scope: !1967)
!1971 = !DILocation(line: 33, column: 22, scope: !1967)
!1972 = !DILocation(line: 34, column: 24, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1967, file: !1947, line: 34, column: 11)
!1974 = !DILocation(line: 34, column: 11, scope: !1967)
!1975 = !DILocation(line: 36, column: 29, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1973, file: !1947, line: 36, column: 16)
!1977 = !DILocation(line: 36, column: 16, scope: !1973)
!1978 = !DILocation(line: 37, column: 14, scope: !1976)
!1979 = distinct !{!1979, !1963, !1980}
!1980 = !DILocation(line: 40, column: 5, scope: !1946)
!1981 = !DILocation(line: 43, column: 1, scope: !1946)
!1982 = distinct !DISubprogram(name: "atof", scope: !1983, file: !1983, line: 25, type: !1984, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1987)
!1983 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!1986, !454}
!1986 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1987 = !{!1988}
!1988 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1982, file: !1983, line: 25, type: !454)
!1989 = !DILocation(line: 0, scope: !1982)
!1990 = !DILocation(line: 27, column: 10, scope: !1982)
!1991 = !DILocation(line: 27, column: 3, scope: !1982)
!1992 = distinct !DISubprogram(name: "strtoimax", scope: !1993, file: !1993, line: 324, type: !1994, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2000)
!1993 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!1996, !1753, !1999, !449}
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1997, line: 101, baseType: !1998)
!1997 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1805, line: 72, baseType: !512)
!1999 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !450)
!2000 = !{!2001, !2002, !2003}
!2001 = !DILocalVariable(name: "nptr", arg: 1, scope: !1992, file: !1993, line: 324, type: !1753)
!2002 = !DILocalVariable(name: "endptr", arg: 2, scope: !1992, file: !1993, line: 324, type: !1999)
!2003 = !DILocalVariable(name: "base", arg: 3, scope: !1992, file: !1993, line: 324, type: !449)
!2004 = !DILocation(line: 0, scope: !1992)
!2005 = !DILocation(line: 327, column: 10, scope: !1992)
!2006 = !DILocation(line: 327, column: 3, scope: !1992)
!2007 = distinct !DISubprogram(name: "strtoumax", scope: !1993, file: !1993, line: 336, type: !2008, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2012)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!2010, !1753, !1999, !449}
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1997, line: 102, baseType: !2011)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1805, line: 73, baseType: !510)
!2012 = !{!2013, !2014, !2015}
!2013 = !DILocalVariable(name: "nptr", arg: 1, scope: !2007, file: !1993, line: 336, type: !1753)
!2014 = !DILocalVariable(name: "endptr", arg: 2, scope: !2007, file: !1993, line: 336, type: !1999)
!2015 = !DILocalVariable(name: "base", arg: 3, scope: !2007, file: !1993, line: 336, type: !449)
!2016 = !DILocation(line: 0, scope: !2007)
!2017 = !DILocation(line: 339, column: 10, scope: !2007)
!2018 = !DILocation(line: 339, column: 3, scope: !2007)
!2019 = distinct !DISubprogram(name: "wcstoimax", scope: !1993, file: !1993, line: 348, type: !2020, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2029)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!1996, !2022, !2026, !449}
!2022 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2023)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2025)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1993, line: 34, baseType: !449)
!2026 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2027)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2029 = !{!2030, !2031, !2032}
!2030 = !DILocalVariable(name: "nptr", arg: 1, scope: !2019, file: !1993, line: 348, type: !2022)
!2031 = !DILocalVariable(name: "endptr", arg: 2, scope: !2019, file: !1993, line: 348, type: !2026)
!2032 = !DILocalVariable(name: "base", arg: 3, scope: !2019, file: !1993, line: 348, type: !449)
!2033 = !DILocation(line: 0, scope: !2019)
!2034 = !DILocation(line: 351, column: 10, scope: !2019)
!2035 = !DILocation(line: 351, column: 3, scope: !2019)
!2036 = distinct !DISubprogram(name: "wcstoumax", scope: !1993, file: !1993, line: 362, type: !2037, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!2010, !2022, !2026, !449}
!2039 = !{!2040, !2041, !2042}
!2040 = !DILocalVariable(name: "nptr", arg: 1, scope: !2036, file: !1993, line: 362, type: !2022)
!2041 = !DILocalVariable(name: "endptr", arg: 2, scope: !2036, file: !1993, line: 362, type: !2026)
!2042 = !DILocalVariable(name: "base", arg: 3, scope: !2036, file: !1993, line: 362, type: !449)
!2043 = !DILocation(line: 0, scope: !2036)
!2044 = !DILocation(line: 365, column: 10, scope: !2036)
!2045 = !DILocation(line: 365, column: 3, scope: !2036)
!2046 = distinct !DISubprogram(name: "stat", scope: !2047, file: !2047, line: 453, type: !2048, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2085)
!2047 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!449, !454, !2050}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2052, line: 46, size: 1152, elements: !2053)
!2052 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2053 = !{!2054, !2056, !2058, !2060, !2062, !2064, !2066, !2067, !2068, !2069, !2071, !2073, !2081, !2082, !2083}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2051, file: !2052, line: 48, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1805, line: 145, baseType: !510)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2051, file: !2052, line: 53, baseType: !2057, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1805, line: 148, baseType: !510)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2051, file: !2052, line: 61, baseType: !2059, size: 64, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1805, line: 151, baseType: !510)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2051, file: !2052, line: 62, baseType: !2061, size: 32, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1805, line: 150, baseType: !5)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2051, file: !2052, line: 64, baseType: !2063, size: 32, offset: 224)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1805, line: 146, baseType: !5)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2051, file: !2052, line: 65, baseType: !2065, size: 32, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1805, line: 147, baseType: !5)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2051, file: !2052, line: 67, baseType: !449, size: 32, offset: 288)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2051, file: !2052, line: 69, baseType: !2055, size: 64, offset: 320)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2051, file: !2052, line: 74, baseType: !1804, size: 64, offset: 384)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2051, file: !2052, line: 78, baseType: !2070, size: 64, offset: 448)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1805, line: 174, baseType: !512)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2051, file: !2052, line: 80, baseType: !2072, size: 64, offset: 512)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1805, line: 179, baseType: !512)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2051, file: !2052, line: 91, baseType: !2074, size: 128, offset: 576)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2075, line: 10, size: 128, elements: !2076)
!2075 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2076 = !{!2077, !2079}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2074, file: !2075, line: 12, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1805, line: 160, baseType: !512)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2074, file: !2075, line: 16, baseType: !2080, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1805, line: 196, baseType: !512)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2051, file: !2052, line: 92, baseType: !2074, size: 128, offset: 704)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2051, file: !2052, line: 93, baseType: !2074, size: 128, offset: 832)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2051, file: !2052, line: 106, baseType: !2084, size: 192, offset: 960)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2080, size: 192, elements: !530)
!2085 = !{!2086, !2087}
!2086 = !DILocalVariable(name: "__path", arg: 1, scope: !2046, file: !2047, line: 453, type: !454)
!2087 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2046, file: !2047, line: 453, type: !2050)
!2088 = !DILocation(line: 0, scope: !2046)
!2089 = !DILocation(line: 455, column: 10, scope: !2046)
!2090 = !DILocation(line: 455, column: 3, scope: !2046)
!2091 = distinct !DISubprogram(name: "lstat", scope: !2047, file: !2047, line: 460, type: !2048, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2092)
!2092 = !{!2093, !2094}
!2093 = !DILocalVariable(name: "__path", arg: 1, scope: !2091, file: !2047, line: 460, type: !454)
!2094 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2091, file: !2047, line: 460, type: !2050)
!2095 = !DILocation(line: 0, scope: !2091)
!2096 = !DILocation(line: 462, column: 10, scope: !2091)
!2097 = !DILocation(line: 462, column: 3, scope: !2091)
!2098 = distinct !DISubprogram(name: "fstat", scope: !2047, file: !2047, line: 467, type: !2099, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2101)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!449, !449, !2050}
!2101 = !{!2102, !2103}
!2102 = !DILocalVariable(name: "__fd", arg: 1, scope: !2098, file: !2047, line: 467, type: !449)
!2103 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2098, file: !2047, line: 467, type: !2050)
!2104 = !DILocation(line: 0, scope: !2098)
!2105 = !DILocation(line: 469, column: 10, scope: !2098)
!2106 = !DILocation(line: 469, column: 3, scope: !2098)
!2107 = distinct !DISubprogram(name: "fstatat", scope: !2047, file: !2047, line: 474, type: !2108, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2110)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!449, !449, !454, !2050, !449}
!2110 = !{!2111, !2112, !2113, !2114}
!2111 = !DILocalVariable(name: "__fd", arg: 1, scope: !2107, file: !2047, line: 474, type: !449)
!2112 = !DILocalVariable(name: "__filename", arg: 2, scope: !2107, file: !2047, line: 474, type: !454)
!2113 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2107, file: !2047, line: 474, type: !2050)
!2114 = !DILocalVariable(name: "__flag", arg: 4, scope: !2107, file: !2047, line: 474, type: !449)
!2115 = !DILocation(line: 0, scope: !2107)
!2116 = !DILocation(line: 477, column: 10, scope: !2107)
!2117 = !DILocation(line: 477, column: 3, scope: !2107)
!2118 = distinct !DISubprogram(name: "mknod", scope: !2047, file: !2047, line: 483, type: !2119, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!449, !454, !2061, !2055}
!2121 = !{!2122, !2123, !2124}
!2122 = !DILocalVariable(name: "__path", arg: 1, scope: !2118, file: !2047, line: 483, type: !454)
!2123 = !DILocalVariable(name: "__mode", arg: 2, scope: !2118, file: !2047, line: 483, type: !2061)
!2124 = !DILocalVariable(name: "__dev", arg: 3, scope: !2118, file: !2047, line: 483, type: !2055)
!2125 = !DILocation(line: 0, scope: !2118)
!2126 = !DILocation(line: 485, column: 10, scope: !2118)
!2127 = !DILocation(line: 485, column: 3, scope: !2118)
!2128 = distinct !DISubprogram(name: "mknodat", scope: !2047, file: !2047, line: 491, type: !2129, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2131)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!449, !449, !454, !2061, !2055}
!2131 = !{!2132, !2133, !2134, !2135}
!2132 = !DILocalVariable(name: "__fd", arg: 1, scope: !2128, file: !2047, line: 491, type: !449)
!2133 = !DILocalVariable(name: "__path", arg: 2, scope: !2128, file: !2047, line: 491, type: !454)
!2134 = !DILocalVariable(name: "__mode", arg: 3, scope: !2128, file: !2047, line: 491, type: !2061)
!2135 = !DILocalVariable(name: "__dev", arg: 4, scope: !2128, file: !2047, line: 491, type: !2055)
!2136 = !DILocation(line: 0, scope: !2128)
!2137 = !DILocation(line: 494, column: 10, scope: !2128)
!2138 = !DILocation(line: 494, column: 3, scope: !2128)
!2139 = distinct !DISubprogram(name: "stat64", scope: !2047, file: !2047, line: 502, type: !2140, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2162)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!449, !454, !2142}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2052, line: 119, size: 1152, elements: !2144)
!2144 = !{!2145, !2146, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2158, !2159, !2160, !2161}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2143, file: !2052, line: 121, baseType: !2055, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2143, file: !2052, line: 123, baseType: !2147, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1805, line: 149, baseType: !510)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2143, file: !2052, line: 124, baseType: !2059, size: 64, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2143, file: !2052, line: 125, baseType: !2061, size: 32, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2143, file: !2052, line: 132, baseType: !2063, size: 32, offset: 224)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2143, file: !2052, line: 133, baseType: !2065, size: 32, offset: 256)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2143, file: !2052, line: 135, baseType: !449, size: 32, offset: 288)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2143, file: !2052, line: 136, baseType: !2055, size: 64, offset: 320)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2143, file: !2052, line: 137, baseType: !1804, size: 64, offset: 384)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2143, file: !2052, line: 143, baseType: !2070, size: 64, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2143, file: !2052, line: 144, baseType: !2157, size: 64, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1805, line: 180, baseType: !512)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2143, file: !2052, line: 152, baseType: !2074, size: 128, offset: 576)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2143, file: !2052, line: 153, baseType: !2074, size: 128, offset: 704)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2143, file: !2052, line: 154, baseType: !2074, size: 128, offset: 832)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2143, file: !2052, line: 164, baseType: !2084, size: 192, offset: 960)
!2162 = !{!2163, !2164}
!2163 = !DILocalVariable(name: "__path", arg: 1, scope: !2139, file: !2047, line: 502, type: !454)
!2164 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2139, file: !2047, line: 502, type: !2142)
!2165 = !DILocation(line: 0, scope: !2139)
!2166 = !DILocation(line: 504, column: 10, scope: !2139)
!2167 = !DILocation(line: 504, column: 3, scope: !2139)
!2168 = distinct !DISubprogram(name: "lstat64", scope: !2047, file: !2047, line: 509, type: !2140, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2169)
!2169 = !{!2170, !2171}
!2170 = !DILocalVariable(name: "__path", arg: 1, scope: !2168, file: !2047, line: 509, type: !454)
!2171 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2168, file: !2047, line: 509, type: !2142)
!2172 = !DILocation(line: 0, scope: !2168)
!2173 = !DILocation(line: 511, column: 10, scope: !2168)
!2174 = !DILocation(line: 511, column: 3, scope: !2168)
!2175 = distinct !DISubprogram(name: "fstat64", scope: !2047, file: !2047, line: 516, type: !2176, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2178)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!449, !449, !2142}
!2178 = !{!2179, !2180}
!2179 = !DILocalVariable(name: "__fd", arg: 1, scope: !2175, file: !2047, line: 516, type: !449)
!2180 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2175, file: !2047, line: 516, type: !2142)
!2181 = !DILocation(line: 0, scope: !2175)
!2182 = !DILocation(line: 518, column: 10, scope: !2175)
!2183 = !DILocation(line: 518, column: 3, scope: !2175)
!2184 = distinct !DISubprogram(name: "fstatat64", scope: !2047, file: !2047, line: 523, type: !2185, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!449, !449, !454, !2142, !449}
!2187 = !{!2188, !2189, !2190, !2191}
!2188 = !DILocalVariable(name: "__fd", arg: 1, scope: !2184, file: !2047, line: 523, type: !449)
!2189 = !DILocalVariable(name: "__filename", arg: 2, scope: !2184, file: !2047, line: 523, type: !454)
!2190 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2184, file: !2047, line: 523, type: !2142)
!2191 = !DILocalVariable(name: "__flag", arg: 4, scope: !2184, file: !2047, line: 523, type: !449)
!2192 = !DILocation(line: 0, scope: !2184)
!2193 = !DILocation(line: 526, column: 10, scope: !2184)
!2194 = !DILocation(line: 526, column: 3, scope: !2184)
!2195 = distinct !DISubprogram(name: "double_int_ext_for_comb", scope: !1, file: !1, line: 39, type: !2196, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2199)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!505, !505, !2198}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!2199 = !{!2200, !2201}
!2200 = !DILocalVariable(name: "cst", arg: 1, scope: !2195, file: !1, line: 39, type: !505)
!2201 = !DILocalVariable(name: "comb", arg: 2, scope: !2195, file: !1, line: 39, type: !2198)
!2202 = !DILocation(line: 0, scope: !2195)
!2203 = !DILocation(line: 41, column: 32, scope: !2195)
!2204 = !DILocation(line: 41, column: 10, scope: !2195)
!2205 = !DILocation(line: 41, column: 3, scope: !2195)
!2206 = distinct !DISubprogram(name: "aff_combination_const", scope: !1, file: !1, line: 58, type: !2207, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{null, !2198, !456, !505}
!2209 = !{!2210, !2211, !2212}
!2210 = !DILocalVariable(name: "comb", arg: 1, scope: !2206, file: !1, line: 58, type: !2198)
!2211 = !DILocalVariable(name: "type", arg: 2, scope: !2206, file: !1, line: 58, type: !456)
!2212 = !DILocalVariable(name: "cst", arg: 3, scope: !2206, file: !1, line: 58, type: !505)
!2213 = !DILocation(line: 0, scope: !2206)
!2214 = !DILocation(line: 60, column: 3, scope: !2206)
!2215 = !DILocation(line: 61, column: 9, scope: !2206)
!2216 = !DILocation(line: 61, column: 18, scope: !2206)
!2217 = !DILocation(line: 62, column: 1, scope: !2206)
!2218 = distinct !DISubprogram(name: "aff_combination_zero", scope: !1, file: !1, line: 47, type: !2219, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !2198, !456}
!2221 = !{!2222, !2223}
!2222 = !DILocalVariable(name: "comb", arg: 1, scope: !2218, file: !1, line: 47, type: !2198)
!2223 = !DILocalVariable(name: "type", arg: 2, scope: !2218, file: !1, line: 47, type: !456)
!2224 = !DILocation(line: 0, scope: !2218)
!2225 = !DILocation(line: 49, column: 9, scope: !2218)
!2226 = !DILocation(line: 49, column: 14, scope: !2218)
!2227 = !DILocation(line: 50, column: 9, scope: !2218)
!2228 = !DILocation(line: 50, column: 18, scope: !2218)
!2229 = !DILocation(line: 51, column: 9, scope: !2218)
!2230 = !DILocation(line: 51, column: 11, scope: !2218)
!2231 = !DILocation(line: 52, column: 9, scope: !2218)
!2232 = !DILocation(line: 52, column: 14, scope: !2218)
!2233 = !DILocation(line: 53, column: 1, scope: !2218)
!2234 = distinct !DISubprogram(name: "aff_combination_elt", scope: !1, file: !1, line: 67, type: !2235, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2237)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{null, !2198, !456, !456}
!2237 = !{!2238, !2239, !2240}
!2238 = !DILocalVariable(name: "comb", arg: 1, scope: !2234, file: !1, line: 67, type: !2198)
!2239 = !DILocalVariable(name: "type", arg: 2, scope: !2234, file: !1, line: 67, type: !456)
!2240 = !DILocalVariable(name: "elt", arg: 3, scope: !2234, file: !1, line: 67, type: !456)
!2241 = !DILocation(line: 0, scope: !2234)
!2242 = !DILocation(line: 69, column: 3, scope: !2234)
!2243 = !DILocation(line: 71, column: 9, scope: !2234)
!2244 = !DILocation(line: 71, column: 11, scope: !2234)
!2245 = !DILocation(line: 72, column: 17, scope: !2234)
!2246 = !DILocation(line: 72, column: 21, scope: !2234)
!2247 = !DILocation(line: 73, column: 17, scope: !2234)
!2248 = !DILocation(line: 73, column: 24, scope: !2234)
!2249 = !DILocation(line: 74, column: 1, scope: !2234)
!2250 = distinct !DISubprogram(name: "shwi_to_double_int", scope: !506, file: !506, line: 72, type: !2251, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!505, !512}
!2253 = !{!2254, !2255}
!2254 = !DILocalVariable(name: "cst", arg: 1, scope: !2250, file: !506, line: 72, type: !512)
!2255 = !DILocalVariable(name: "r", scope: !2250, file: !506, line: 74, type: !505)
!2256 = !DILocation(line: 0, scope: !2250)
!2257 = !DILocation(line: 77, column: 12, scope: !2250)
!2258 = !DILocation(line: 79, column: 3, scope: !2250)
!2259 = distinct !DISubprogram(name: "aff_combination_scale", scope: !1, file: !1, line: 79, type: !2260, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2262)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !2198, !505}
!2262 = !{!2263, !2264, !2265, !2266, !2267, !2271}
!2263 = !DILocalVariable(name: "comb", arg: 1, scope: !2259, file: !1, line: 79, type: !2198)
!2264 = !DILocalVariable(name: "scale", arg: 2, scope: !2259, file: !1, line: 79, type: !505)
!2265 = !DILocalVariable(name: "i", scope: !2259, file: !1, line: 81, type: !5)
!2266 = !DILocalVariable(name: "j", scope: !2259, file: !1, line: 81, type: !5)
!2267 = !DILocalVariable(name: "new_coef", scope: !2268, file: !1, line: 97, type: !505)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !1, line: 96, column: 5)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !1, line: 95, column: 3)
!2270 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 95, column: 3)
!2271 = !DILocalVariable(name: "type", scope: !2272, file: !1, line: 114, type: !456)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !1, line: 113, column: 5)
!2273 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 112, column: 7)
!2274 = !DILocation(line: 0, scope: !2259)
!2275 = !DILocation(line: 83, column: 11, scope: !2259)
!2276 = !DILocation(line: 84, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 84, column: 7)
!2278 = !DILocation(line: 84, column: 7, scope: !2259)
!2279 = !DILocation(line: 87, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 87, column: 7)
!2281 = !DILocation(line: 87, column: 7, scope: !2259)
!2282 = !DILocation(line: 89, column: 41, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !1, line: 88, column: 5)
!2284 = !DILocation(line: 89, column: 7, scope: !2283)
!2285 = !DILocation(line: 90, column: 7, scope: !2283)
!2286 = !DILocation(line: 93, column: 9, scope: !2259)
!2287 = !DILocation(line: 94, column: 7, scope: !2259)
!2288 = !DILocation(line: 94, column: 32, scope: !2259)
!2289 = !DILocation(line: 0, scope: !2269)
!2290 = !DILocation(line: 0, scope: !2268)
!2291 = !DILocation(line: 0, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2268, file: !1, line: 104, column: 11)
!2293 = !DILocation(line: 95, column: 8, scope: !2270)
!2294 = !DILocation(line: 95, column: 17, scope: !2270)
!2295 = !DILocation(line: 95, column: 32, scope: !2269)
!2296 = !DILocation(line: 95, column: 24, scope: !2269)
!2297 = !DILocation(line: 95, column: 3, scope: !2270)
!2298 = !DILocation(line: 97, column: 7, scope: !2268)
!2299 = !DILocation(line: 100, column: 4, scope: !2268)
!2300 = !DILocation(line: 100, column: 29, scope: !2268)
!2301 = !DILocation(line: 104, column: 11, scope: !2292)
!2302 = !DILocation(line: 104, column: 11, scope: !2268)
!2303 = !DILocation(line: 106, column: 7, scope: !2268)
!2304 = !DILocation(line: 106, column: 21, scope: !2268)
!2305 = !DILocation(line: 106, column: 28, scope: !2268)
!2306 = !DILocation(line: 107, column: 41, scope: !2268)
!2307 = !DILocation(line: 107, column: 7, scope: !2268)
!2308 = !DILocation(line: 107, column: 25, scope: !2268)
!2309 = !DILocation(line: 108, column: 8, scope: !2268)
!2310 = !DILocation(line: 109, column: 5, scope: !2269)
!2311 = !DILocation(line: 0, scope: !2270)
!2312 = !DILocation(line: 95, column: 36, scope: !2269)
!2313 = !DILocation(line: 95, column: 3, scope: !2269)
!2314 = distinct !{!2314, !2297, !2315}
!2315 = !DILocation(line: 109, column: 5, scope: !2270)
!2316 = !DILocation(line: 110, column: 11, scope: !2259)
!2317 = !DILocation(line: 112, column: 13, scope: !2273)
!2318 = !DILocation(line: 112, column: 7, scope: !2273)
!2319 = !DILocation(line: 112, column: 7, scope: !2259)
!2320 = !DILocation(line: 114, column: 25, scope: !2272)
!2321 = !DILocation(line: 0, scope: !2272)
!2322 = !DILocation(line: 115, column: 11, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2272, file: !1, line: 115, column: 11)
!2324 = !DILocation(line: 115, column: 11, scope: !2272)
!2325 = !DILocation(line: 116, column: 9, scope: !2323)
!2326 = !DILocation(line: 116, column: 2, scope: !2323)
!2327 = !DILocation(line: 117, column: 19, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2272, file: !1, line: 117, column: 11)
!2329 = !DILocation(line: 117, column: 11, scope: !2272)
!2330 = !DILocation(line: 119, column: 4, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 118, column: 2)
!2332 = !DILocation(line: 119, column: 24, scope: !2331)
!2333 = !DILocation(line: 119, column: 31, scope: !2331)
!2334 = !DILocation(line: 120, column: 36, scope: !2331)
!2335 = !DILocation(line: 120, column: 4, scope: !2331)
!2336 = !DILocation(line: 120, column: 28, scope: !2331)
!2337 = !DILocation(line: 121, column: 15, scope: !2331)
!2338 = !DILocation(line: 122, column: 11, scope: !2331)
!2339 = !DILocation(line: 123, column: 2, scope: !2331)
!2340 = !DILocation(line: 125, column: 15, scope: !2328)
!2341 = !DILocation(line: 125, column: 13, scope: !2328)
!2342 = !DILocation(line: 128, column: 1, scope: !2259)
!2343 = distinct !DISubprogram(name: "double_int_one_p", scope: !506, file: !506, line: 160, type: !2344, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2346)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!448, !505}
!2346 = !{!2347}
!2347 = !DILocalVariable(name: "cst", arg: 1, scope: !2343, file: !506, line: 160, type: !505)
!2348 = !DILocation(line: 162, column: 18, scope: !2343)
!2349 = !DILocation(line: 162, column: 23, scope: !2343)
!2350 = !DILocation(line: 162, column: 10, scope: !2343)
!2351 = !DILocation(line: 162, column: 3, scope: !2343)
!2352 = distinct !DISubprogram(name: "double_int_zero_p", scope: !506, file: !506, line: 152, type: !2344, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2353)
!2353 = !{!2354}
!2354 = !DILocalVariable(name: "cst", arg: 1, scope: !2352, file: !506, line: 152, type: !505)
!2355 = !DILocation(line: 154, column: 23, scope: !2352)
!2356 = !DILocation(line: 154, column: 10, scope: !2352)
!2357 = !DILocation(line: 154, column: 3, scope: !2352)
!2358 = distinct !DISubprogram(name: "aff_combination_add_elt", scope: !1, file: !1, line: 133, type: !2207, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2359)
!2359 = !{!2360, !2361, !2362, !2363, !2364, !2365}
!2360 = !DILocalVariable(name: "comb", arg: 1, scope: !2358, file: !1, line: 133, type: !2198)
!2361 = !DILocalVariable(name: "elt", arg: 2, scope: !2358, file: !1, line: 133, type: !456)
!2362 = !DILocalVariable(name: "scale", arg: 3, scope: !2358, file: !1, line: 133, type: !505)
!2363 = !DILocalVariable(name: "i", scope: !2358, file: !1, line: 135, type: !5)
!2364 = !DILocalVariable(name: "type", scope: !2358, file: !1, line: 136, type: !456)
!2365 = !DILocalVariable(name: "new_coef", scope: !2366, file: !1, line: 145, type: !505)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !1, line: 144, column: 7)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !1, line: 143, column: 9)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !1, line: 142, column: 3)
!2369 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 142, column: 3)
!2370 = !DILocation(line: 0, scope: !2358)
!2371 = !DILocation(line: 138, column: 11, scope: !2358)
!2372 = !DILocation(line: 139, column: 7, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 139, column: 7)
!2374 = !DILocation(line: 139, column: 7, scope: !2358)
!2375 = !DILocation(line: 0, scope: !2368)
!2376 = !DILocation(line: 142, column: 3, scope: !2369)
!2377 = !DILocation(line: 0, scope: !2369)
!2378 = !DILocation(line: 142, column: 25, scope: !2368)
!2379 = !DILocation(line: 142, column: 17, scope: !2368)
!2380 = !DILocation(line: 143, column: 40, scope: !2367)
!2381 = !DILocation(line: 143, column: 9, scope: !2367)
!2382 = !DILocation(line: 143, column: 9, scope: !2368)
!2383 = !DILocation(line: 145, column: 2, scope: !2366)
!2384 = !DILocation(line: 147, column: 13, scope: !2366)
!2385 = !DILocation(line: 148, column: 13, scope: !2366)
!2386 = !DILocation(line: 149, column: 7, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2366, file: !1, line: 149, column: 6)
!2388 = !DILocation(line: 149, column: 6, scope: !2366)
!2389 = !DILocation(line: 151, column: 20, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2387, file: !1, line: 150, column: 4)
!2391 = !DILocation(line: 151, column: 27, scope: !2390)
!2392 = !DILocation(line: 152, column: 6, scope: !2390)
!2393 = !DILocation(line: 155, column: 9, scope: !2366)
!2394 = !DILocation(line: 156, column: 2, scope: !2366)
!2395 = !DILocation(line: 156, column: 18, scope: !2366)
!2396 = !DILocation(line: 158, column: 12, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2366, file: !1, line: 158, column: 6)
!2398 = !DILocation(line: 158, column: 6, scope: !2397)
!2399 = !DILocation(line: 158, column: 6, scope: !2366)
!2400 = !DILocation(line: 160, column: 6, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 159, column: 4)
!2402 = !DILocation(line: 161, column: 23, scope: !2401)
!2403 = !DILocation(line: 161, column: 26, scope: !2401)
!2404 = !DILocation(line: 161, column: 33, scope: !2401)
!2405 = !DILocation(line: 162, column: 38, scope: !2401)
!2406 = !DILocation(line: 162, column: 23, scope: !2401)
!2407 = !DILocation(line: 162, column: 6, scope: !2401)
!2408 = !DILocation(line: 162, column: 30, scope: !2401)
!2409 = !DILocation(line: 163, column: 17, scope: !2401)
!2410 = !DILocation(line: 164, column: 13, scope: !2401)
!2411 = !DILocation(line: 165, column: 4, scope: !2401)
!2412 = !DILocation(line: 167, column: 7, scope: !2367)
!2413 = !DILocation(line: 142, column: 29, scope: !2368)
!2414 = !DILocation(line: 142, column: 3, scope: !2368)
!2415 = distinct !{!2415, !2376, !2416}
!2416 = !DILocation(line: 167, column: 7, scope: !2369)
!2417 = !DILocation(line: 168, column: 15, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 168, column: 7)
!2419 = !DILocation(line: 168, column: 7, scope: !2358)
!2420 = !DILocation(line: 170, column: 7, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2418, file: !1, line: 169, column: 5)
!2422 = !DILocation(line: 170, column: 27, scope: !2421)
!2423 = !DILocation(line: 170, column: 34, scope: !2421)
!2424 = !DILocation(line: 171, column: 27, scope: !2421)
!2425 = !DILocation(line: 171, column: 31, scope: !2421)
!2426 = !DILocation(line: 172, column: 14, scope: !2421)
!2427 = !DILocation(line: 173, column: 7, scope: !2421)
!2428 = !DILocation(line: 176, column: 16, scope: !2358)
!2429 = !DILocation(line: 177, column: 7, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 177, column: 7)
!2431 = !DILocation(line: 177, column: 7, scope: !2358)
!2432 = !DILocation(line: 178, column: 12, scope: !2430)
!2433 = !DILocation(line: 178, column: 5, scope: !2430)
!2434 = !DILocation(line: 180, column: 7, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 180, column: 7)
!2436 = !DILocation(line: 0, scope: !2435)
!2437 = !DILocation(line: 180, column: 7, scope: !2358)
!2438 = !DILocation(line: 183, column: 11, scope: !2435)
!2439 = !DILocation(line: 187, column: 13, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 187, column: 7)
!2441 = !DILocation(line: 187, column: 7, scope: !2440)
!2442 = !DILocation(line: 187, column: 7, scope: !2358)
!2443 = !DILocation(line: 188, column: 18, scope: !2440)
!2444 = !DILocation(line: 188, column: 16, scope: !2440)
!2445 = !DILocation(line: 188, column: 5, scope: !2440)
!2446 = !DILocation(line: 191, column: 16, scope: !2440)
!2447 = !DILocation(line: 192, column: 1, scope: !2358)
!2448 = distinct !DISubprogram(name: "aff_combination_add", scope: !1, file: !1, line: 205, type: !2449, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{null, !2198, !2198}
!2451 = !{!2452, !2453, !2454}
!2452 = !DILocalVariable(name: "comb1", arg: 1, scope: !2448, file: !1, line: 205, type: !2198)
!2453 = !DILocalVariable(name: "comb2", arg: 2, scope: !2448, file: !1, line: 205, type: !2198)
!2454 = !DILocalVariable(name: "i", scope: !2448, file: !1, line: 207, type: !5)
!2455 = !DILocation(line: 0, scope: !2448)
!2456 = !DILocation(line: 209, column: 3, scope: !2448)
!2457 = !DILocation(line: 0, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !1, line: 210, column: 3)
!2459 = distinct !DILexicalBlock(scope: !2448, file: !1, line: 210, column: 3)
!2460 = !DILocation(line: 210, column: 8, scope: !2459)
!2461 = !DILocation(line: 0, scope: !2459)
!2462 = !DILocation(line: 210, column: 26, scope: !2458)
!2463 = !DILocation(line: 210, column: 17, scope: !2458)
!2464 = !DILocation(line: 210, column: 3, scope: !2459)
!2465 = !DILocation(line: 211, column: 52, scope: !2458)
!2466 = !DILocation(line: 211, column: 5, scope: !2458)
!2467 = !DILocation(line: 210, column: 30, scope: !2458)
!2468 = !DILocation(line: 210, column: 3, scope: !2458)
!2469 = distinct !{!2469, !2464, !2470}
!2470 = !DILocation(line: 211, column: 76, scope: !2459)
!2471 = !DILocation(line: 212, column: 14, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2448, file: !1, line: 212, column: 7)
!2473 = !DILocation(line: 212, column: 7, scope: !2472)
!2474 = !DILocation(line: 212, column: 7, scope: !2448)
!2475 = !DILocation(line: 213, column: 50, scope: !2472)
!2476 = !DILocation(line: 213, column: 5, scope: !2472)
!2477 = !DILocation(line: 214, column: 1, scope: !2448)
!2478 = distinct !DISubprogram(name: "aff_combination_add_cst", scope: !1, file: !1, line: 197, type: !2260, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2479)
!2479 = !{!2480, !2481}
!2480 = !DILocalVariable(name: "c", arg: 1, scope: !2478, file: !1, line: 197, type: !2198)
!2481 = !DILocalVariable(name: "cst", arg: 2, scope: !2478, file: !1, line: 197, type: !505)
!2482 = !DILocation(line: 0, scope: !2478)
!2483 = !DILocation(line: 199, column: 6, scope: !2478)
!2484 = !DILocation(line: 199, column: 15, scope: !2478)
!2485 = !DILocation(line: 199, column: 40, scope: !2478)
!2486 = !DILocation(line: 200, column: 1, scope: !2478)
!2487 = distinct !DISubprogram(name: "aff_combination_convert", scope: !1, file: !1, line: 219, type: !2219, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2488)
!2488 = !{!2489, !2490, !2491, !2492, !2493, !2494, !2497}
!2489 = !DILocalVariable(name: "comb", arg: 1, scope: !2487, file: !1, line: 219, type: !2198)
!2490 = !DILocalVariable(name: "type", arg: 2, scope: !2487, file: !1, line: 219, type: !456)
!2491 = !DILocalVariable(name: "i", scope: !2487, file: !1, line: 221, type: !5)
!2492 = !DILocalVariable(name: "j", scope: !2487, file: !1, line: 221, type: !5)
!2493 = !DILocalVariable(name: "comb_type", scope: !2487, file: !1, line: 222, type: !456)
!2494 = !DILocalVariable(name: "val", scope: !2495, file: !1, line: 226, type: !456)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !1, line: 225, column: 5)
!2496 = distinct !DILexicalBlock(scope: !2487, file: !1, line: 224, column: 8)
!2497 = !DILocalVariable(name: "new_coef", scope: !2498, file: !1, line: 241, type: !505)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !1, line: 240, column: 5)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !1, line: 239, column: 3)
!2500 = distinct !DILexicalBlock(scope: !2487, file: !1, line: 239, column: 3)
!2501 = !DILocation(line: 0, scope: !2487)
!2502 = !DILocation(line: 222, column: 26, scope: !2487)
!2503 = !DILocation(line: 224, column: 8, scope: !2496)
!2504 = !DILocation(line: 224, column: 32, scope: !2496)
!2505 = !DILocation(line: 224, column: 30, scope: !2496)
!2506 = !DILocation(line: 224, column: 8, scope: !2487)
!2507 = !DILocation(line: 226, column: 18, scope: !2495)
!2508 = !DILocation(line: 0, scope: !2495)
!2509 = !DILocation(line: 227, column: 7, scope: !2495)
!2510 = !DILocation(line: 231, column: 14, scope: !2487)
!2511 = !DILocation(line: 232, column: 13, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2487, file: !1, line: 232, column: 7)
!2513 = !DILocation(line: 232, column: 7, scope: !2512)
!2514 = !DILocation(line: 232, column: 18, scope: !2512)
!2515 = !DILocation(line: 232, column: 22, scope: !2512)
!2516 = !DILocation(line: 232, column: 7, scope: !2487)
!2517 = !DILocation(line: 233, column: 18, scope: !2512)
!2518 = !DILocation(line: 233, column: 16, scope: !2512)
!2519 = !DILocation(line: 233, column: 5, scope: !2512)
!2520 = !DILocation(line: 235, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2487, file: !1, line: 235, column: 7)
!2522 = !DILocation(line: 235, column: 32, scope: !2521)
!2523 = !DILocation(line: 235, column: 29, scope: !2521)
!2524 = !DILocation(line: 235, column: 7, scope: !2487)
!2525 = !DILocation(line: 238, column: 9, scope: !2487)
!2526 = !DILocation(line: 238, column: 18, scope: !2487)
!2527 = !DILocation(line: 0, scope: !2499)
!2528 = !DILocation(line: 0, scope: !2498)
!2529 = !DILocation(line: 239, column: 8, scope: !2500)
!2530 = !DILocation(line: 0, scope: !2500)
!2531 = !DILocation(line: 239, column: 14, scope: !2500)
!2532 = !DILocation(line: 239, column: 29, scope: !2499)
!2533 = !DILocation(line: 239, column: 21, scope: !2499)
!2534 = !DILocation(line: 239, column: 3, scope: !2500)
!2535 = !DILocation(line: 241, column: 7, scope: !2498)
!2536 = !DILocation(line: 241, column: 29, scope: !2498)
!2537 = !DILocation(line: 242, column: 11, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2498, file: !1, line: 242, column: 11)
!2539 = !DILocation(line: 242, column: 11, scope: !2498)
!2540 = !DILocation(line: 244, column: 7, scope: !2498)
!2541 = !DILocation(line: 244, column: 21, scope: !2498)
!2542 = !DILocation(line: 244, column: 28, scope: !2498)
!2543 = !DILocation(line: 245, column: 27, scope: !2498)
!2544 = !DILocation(line: 245, column: 21, scope: !2498)
!2545 = !DILocation(line: 245, column: 25, scope: !2498)
!2546 = !DILocation(line: 246, column: 8, scope: !2498)
!2547 = !DILocation(line: 247, column: 5, scope: !2499)
!2548 = !DILocation(line: 239, column: 33, scope: !2499)
!2549 = !DILocation(line: 239, column: 3, scope: !2499)
!2550 = distinct !{!2550, !2534, !2551}
!2551 = !DILocation(line: 247, column: 5, scope: !2500)
!2552 = !DILocation(line: 249, column: 11, scope: !2487)
!2553 = !DILocation(line: 250, column: 15, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2487, file: !1, line: 250, column: 7)
!2555 = !DILocation(line: 250, column: 30, scope: !2554)
!2556 = !DILocation(line: 250, column: 39, scope: !2554)
!2557 = !DILocation(line: 250, column: 33, scope: !2554)
!2558 = !DILocation(line: 250, column: 7, scope: !2487)
!2559 = !DILocation(line: 252, column: 7, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2554, file: !1, line: 251, column: 5)
!2561 = !DILocation(line: 252, column: 27, scope: !2560)
!2562 = !DILocation(line: 252, column: 34, scope: !2560)
!2563 = !DILocation(line: 253, column: 39, scope: !2560)
!2564 = !DILocation(line: 253, column: 24, scope: !2560)
!2565 = !DILocation(line: 253, column: 7, scope: !2560)
!2566 = !DILocation(line: 253, column: 31, scope: !2560)
!2567 = !DILocation(line: 254, column: 18, scope: !2560)
!2568 = !DILocation(line: 255, column: 14, scope: !2560)
!2569 = !DILocation(line: 256, column: 5, scope: !2560)
!2570 = !DILocation(line: 257, column: 1, scope: !2487)
!2571 = distinct !DISubprogram(name: "aff_combination_to_tree", scope: !1, file: !1, line: 410, type: !2572, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!456, !2198}
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580, !2581}
!2575 = !DILocalVariable(name: "comb", arg: 1, scope: !2571, file: !1, line: 410, type: !2198)
!2576 = !DILocalVariable(name: "type", scope: !2571, file: !1, line: 412, type: !456)
!2577 = !DILocalVariable(name: "expr", scope: !2571, file: !1, line: 413, type: !456)
!2578 = !DILocalVariable(name: "i", scope: !2571, file: !1, line: 414, type: !5)
!2579 = !DILocalVariable(name: "off", scope: !2571, file: !1, line: 415, type: !505)
!2580 = !DILocalVariable(name: "sgn", scope: !2571, file: !1, line: 415, type: !505)
!2581 = !DILocalVariable(name: "type1", scope: !2571, file: !1, line: 416, type: !456)
!2582 = !DILocation(line: 0, scope: !2571)
!2583 = !DILocation(line: 412, column: 21, scope: !2571)
!2584 = !DILocation(line: 413, column: 21, scope: !2571)
!2585 = !DILocation(line: 415, column: 3, scope: !2571)
!2586 = !DILocation(line: 417, column: 7, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2571, file: !1, line: 417, column: 7)
!2588 = !DILocation(line: 417, column: 7, scope: !2571)
!2589 = !DILocation(line: 418, column: 13, scope: !2587)
!2590 = !DILocation(line: 418, column: 5, scope: !2587)
!2591 = !DILocation(line: 420, column: 3, scope: !2571)
!2592 = !DILocation(line: 422, column: 8, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2571, file: !1, line: 422, column: 3)
!2594 = !DILocation(line: 422, column: 25, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2593, file: !1, line: 422, column: 3)
!2596 = !DILocation(line: 422, column: 17, scope: !2595)
!2597 = !DILocation(line: 422, column: 3, scope: !2593)
!2598 = !DILocation(line: 423, column: 55, scope: !2595)
!2599 = !DILocation(line: 423, column: 12, scope: !2595)
!2600 = !DILocation(line: 422, column: 29, scope: !2595)
!2601 = !DILocation(line: 422, column: 3, scope: !2595)
!2602 = distinct !{!2602, !2597, !2603}
!2603 = !DILocation(line: 424, column: 12, scope: !2593)
!2604 = !DILocation(line: 428, column: 7, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2571, file: !1, line: 428, column: 7)
!2606 = !DILocation(line: 428, column: 7, scope: !2571)
!2607 = !DILocation(line: 430, column: 13, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2605, file: !1, line: 429, column: 5)
!2609 = !DILocation(line: 431, column: 13, scope: !2608)
!2610 = !DILocation(line: 432, column: 5, scope: !2608)
!2611 = !DILocation(line: 435, column: 19, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2605, file: !1, line: 434, column: 5)
!2613 = !DILocation(line: 436, column: 13, scope: !2612)
!2614 = !DILocation(line: 438, column: 39, scope: !2571)
!2615 = !DILocation(line: 438, column: 10, scope: !2571)
!2616 = !DILocation(line: 440, column: 1, scope: !2571)
!2617 = !DILocation(line: 438, column: 3, scope: !2571)
!2618 = distinct !DISubprogram(name: "tree_to_aff_combination", scope: !1, file: !1, line: 262, type: !2619, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{null, !456, !456, !2198}
!2621 = !{!2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2622 = !DILocalVariable(name: "expr", arg: 1, scope: !2618, file: !1, line: 262, type: !456)
!2623 = !DILocalVariable(name: "type", arg: 2, scope: !2618, file: !1, line: 262, type: !456)
!2624 = !DILocalVariable(name: "comb", arg: 3, scope: !2618, file: !1, line: 262, type: !2198)
!2625 = !DILocalVariable(name: "tmp", scope: !2618, file: !1, line: 264, type: !1726)
!2626 = !DILocalVariable(name: "code", scope: !2618, file: !1, line: 265, type: !132)
!2627 = !DILocalVariable(name: "cst", scope: !2618, file: !1, line: 266, type: !456)
!2628 = !DILocalVariable(name: "core", scope: !2618, file: !1, line: 266, type: !456)
!2629 = !DILocalVariable(name: "toffset", scope: !2618, file: !1, line: 266, type: !456)
!2630 = !DILocalVariable(name: "bitpos", scope: !2618, file: !1, line: 267, type: !512)
!2631 = !DILocalVariable(name: "bitsize", scope: !2618, file: !1, line: 267, type: !512)
!2632 = !DILocalVariable(name: "mode", scope: !2618, file: !1, line: 268, type: !3)
!2633 = !DILocalVariable(name: "unsignedp", scope: !2618, file: !1, line: 269, type: !449)
!2634 = !DILocalVariable(name: "volatilep", scope: !2618, file: !1, line: 269, type: !449)
!2635 = !DILocation(line: 0, scope: !2618)
!2636 = !DILocation(line: 264, column: 3, scope: !2618)
!2637 = !DILocation(line: 266, column: 3, scope: !2618)
!2638 = !DILocation(line: 267, column: 3, scope: !2618)
!2639 = !DILocation(line: 268, column: 3, scope: !2618)
!2640 = !DILocation(line: 269, column: 3, scope: !2618)
!2641 = !DILocation(line: 271, column: 3, scope: !2618)
!2642 = !DILocation(line: 273, column: 10, scope: !2618)
!2643 = !DILocation(line: 274, column: 3, scope: !2618)
!2644 = !DILocation(line: 277, column: 42, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 275, column: 5)
!2646 = !DILocation(line: 277, column: 7, scope: !2645)
!2647 = !DILocation(line: 278, column: 7, scope: !2645)
!2648 = !DILocation(line: 281, column: 32, scope: !2645)
!2649 = !DILocation(line: 281, column: 7, scope: !2645)
!2650 = !DILocation(line: 282, column: 32, scope: !2645)
!2651 = !DILocation(line: 282, column: 56, scope: !2645)
!2652 = !DILocation(line: 282, column: 7, scope: !2645)
!2653 = !DILocation(line: 283, column: 7, scope: !2645)
!2654 = !DILocation(line: 284, column: 7, scope: !2645)
!2655 = !DILocation(line: 288, column: 32, scope: !2645)
!2656 = !DILocation(line: 288, column: 7, scope: !2645)
!2657 = !DILocation(line: 289, column: 32, scope: !2645)
!2658 = !DILocation(line: 289, column: 7, scope: !2645)
!2659 = !DILocation(line: 290, column: 16, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 290, column: 11)
!2661 = !DILocation(line: 290, column: 11, scope: !2645)
!2662 = !DILocation(line: 291, column: 31, scope: !2660)
!2663 = !DILocation(line: 291, column: 2, scope: !2660)
!2664 = !DILocation(line: 292, column: 7, scope: !2645)
!2665 = !DILocation(line: 293, column: 7, scope: !2645)
!2666 = !DILocation(line: 296, column: 13, scope: !2645)
!2667 = !DILocation(line: 297, column: 11, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 297, column: 11)
!2669 = !DILocation(line: 297, column: 27, scope: !2668)
!2670 = !DILocation(line: 297, column: 11, scope: !2645)
!2671 = !DILocation(line: 299, column: 32, scope: !2645)
!2672 = !DILocation(line: 299, column: 7, scope: !2645)
!2673 = !DILocation(line: 300, column: 36, scope: !2645)
!2674 = !DILocation(line: 300, column: 7, scope: !2645)
!2675 = !DILocation(line: 301, column: 7, scope: !2645)
!2676 = !DILocation(line: 304, column: 32, scope: !2645)
!2677 = !DILocation(line: 304, column: 7, scope: !2645)
!2678 = !DILocation(line: 305, column: 36, scope: !2645)
!2679 = !DILocation(line: 305, column: 7, scope: !2645)
!2680 = !DILocation(line: 306, column: 7, scope: !2645)
!2681 = !DILocation(line: 310, column: 32, scope: !2645)
!2682 = !DILocation(line: 310, column: 7, scope: !2645)
!2683 = !DILocation(line: 311, column: 36, scope: !2645)
!2684 = !DILocation(line: 311, column: 7, scope: !2645)
!2685 = !DILocation(line: 312, column: 38, scope: !2645)
!2686 = !DILocation(line: 312, column: 7, scope: !2645)
!2687 = !DILocation(line: 313, column: 7, scope: !2645)
!2688 = !DILocation(line: 316, column: 35, scope: !2645)
!2689 = !DILocation(line: 316, column: 14, scope: !2645)
!2690 = !DILocation(line: 319, column: 11, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 319, column: 11)
!2692 = !DILocation(line: 319, column: 34, scope: !2691)
!2693 = !DILocation(line: 319, column: 11, scope: !2645)
!2694 = !DILocation(line: 322, column: 36, scope: !2645)
!2695 = !DILocation(line: 322, column: 9, scope: !2645)
!2696 = !DILocation(line: 321, column: 7, scope: !2645)
!2697 = !DILocation(line: 323, column: 14, scope: !2645)
!2698 = !DILocation(line: 324, column: 11, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 324, column: 11)
!2700 = !DILocation(line: 324, column: 28, scope: !2699)
!2701 = !DILocation(line: 324, column: 11, scope: !2645)
!2702 = !DILocation(line: 325, column: 39, scope: !2699)
!2703 = !DILocation(line: 325, column: 2, scope: !2699)
!2704 = !DILocation(line: 328, column: 4, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2699, file: !1, line: 327, column: 2)
!2706 = !DILocation(line: 329, column: 4, scope: !2705)
!2707 = !DILocation(line: 331, column: 11, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 331, column: 11)
!2709 = !DILocation(line: 331, column: 11, scope: !2645)
!2710 = !DILocation(line: 333, column: 4, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2708, file: !1, line: 332, column: 2)
!2712 = !DILocation(line: 334, column: 4, scope: !2711)
!2713 = !DILocation(line: 335, column: 2, scope: !2711)
!2714 = !DILocation(line: 342, column: 3, scope: !2618)
!2715 = !DILocation(line: 343, column: 1, scope: !2618)
!2716 = distinct !DISubprogram(name: "uhwi_to_double_int", scope: !506, file: !506, line: 94, type: !2717, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2719)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!505, !510}
!2719 = !{!2720, !2721}
!2720 = !DILocalVariable(name: "cst", arg: 1, scope: !2716, file: !506, line: 94, type: !510)
!2721 = !DILocalVariable(name: "r", scope: !2716, file: !506, line: 96, type: !505)
!2722 = !DILocation(line: 0, scope: !2716)
!2723 = !DILocation(line: 101, column: 3, scope: !2716)
!2724 = distinct !DISubprogram(name: "add_elt_to_tree", scope: !1, file: !1, line: 349, type: !2725, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!456, !456, !456, !456, !505, !2198}
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2733, !2734}
!2728 = !DILocalVariable(name: "expr", arg: 1, scope: !2724, file: !1, line: 349, type: !456)
!2729 = !DILocalVariable(name: "type", arg: 2, scope: !2724, file: !1, line: 349, type: !456)
!2730 = !DILocalVariable(name: "elt", arg: 3, scope: !2724, file: !1, line: 349, type: !456)
!2731 = !DILocalVariable(name: "scale", arg: 4, scope: !2724, file: !1, line: 349, type: !505)
!2732 = !DILocalVariable(name: "comb", arg: 5, scope: !2724, file: !1, line: 350, type: !2198)
!2733 = !DILocalVariable(name: "code", scope: !2724, file: !1, line: 352, type: !132)
!2734 = !DILocalVariable(name: "type1", scope: !2724, file: !1, line: 353, type: !456)
!2735 = !DILocation(line: 0, scope: !2724)
!2736 = !DILocation(line: 354, column: 7, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2724, file: !1, line: 354, column: 7)
!2738 = !DILocation(line: 354, column: 7, scope: !2724)
!2739 = !DILocation(line: 355, column: 13, scope: !2737)
!2740 = !DILocation(line: 355, column: 5, scope: !2737)
!2741 = !DILocation(line: 357, column: 11, scope: !2724)
!2742 = !DILocation(line: 358, column: 9, scope: !2724)
!2743 = !DILocation(line: 360, column: 7, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2724, file: !1, line: 360, column: 7)
!2745 = !DILocation(line: 360, column: 7, scope: !2724)
!2746 = !DILocation(line: 362, column: 12, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !1, line: 362, column: 11)
!2748 = distinct !DILexicalBlock(scope: !2744, file: !1, line: 361, column: 5)
!2749 = !DILocation(line: 362, column: 11, scope: !2748)
!2750 = !DILocation(line: 363, column: 9, scope: !2747)
!2751 = !DILocation(line: 363, column: 2, scope: !2747)
!2752 = !DILocation(line: 365, column: 11, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2748, file: !1, line: 365, column: 11)
!2754 = !DILocation(line: 365, column: 11, scope: !2748)
!2755 = !DILocation(line: 366, column: 16, scope: !2753)
!2756 = !DILocation(line: 366, column: 9, scope: !2753)
!2757 = !DILocation(line: 367, column: 14, scope: !2748)
!2758 = !DILocation(line: 367, column: 7, scope: !2748)
!2759 = !DILocation(line: 370, column: 7, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2724, file: !1, line: 370, column: 7)
!2761 = !DILocation(line: 370, column: 7, scope: !2724)
!2762 = !DILocation(line: 372, column: 11, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2760, file: !1, line: 371, column: 5)
!2764 = !DILocation(line: 373, column: 9, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2763, file: !1, line: 372, column: 11)
!2766 = !DILocation(line: 373, column: 2, scope: !2765)
!2767 = !DILocation(line: 375, column: 11, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2763, file: !1, line: 375, column: 11)
!2769 = !DILocation(line: 375, column: 11, scope: !2763)
!2770 = !DILocation(line: 377, column: 10, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2768, file: !1, line: 376, column: 2)
!2772 = !DILocation(line: 378, column: 11, scope: !2771)
!2773 = !DILocation(line: 378, column: 4, scope: !2771)
!2774 = !DILocation(line: 380, column: 14, scope: !2763)
!2775 = !DILocation(line: 380, column: 7, scope: !2763)
!2776 = !DILocation(line: 383, column: 7, scope: !2724)
!2777 = !DILocation(line: 384, column: 12, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2724, file: !1, line: 383, column: 7)
!2779 = !DILocation(line: 384, column: 5, scope: !2778)
!2780 = !DILocation(line: 388, column: 7, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2724, file: !1, line: 388, column: 7)
!2782 = !DILocation(line: 388, column: 7, scope: !2724)
!2783 = !DILocation(line: 391, column: 15, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2781, file: !1, line: 389, column: 5)
!2785 = !DILocation(line: 396, column: 9, scope: !2724)
!2786 = !DILocation(line: 392, column: 5, scope: !2784)
!2787 = !DILocation(line: 0, scope: !2781)
!2788 = !DILocation(line: 398, column: 7, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2724, file: !1, line: 398, column: 7)
!2790 = !DILocation(line: 398, column: 7, scope: !2724)
!2791 = !DILocation(line: 400, column: 16, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !1, line: 400, column: 11)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !1, line: 399, column: 5)
!2794 = !DILocation(line: 400, column: 11, scope: !2793)
!2795 = !DILocation(line: 401, column: 15, scope: !2792)
!2796 = !DILocation(line: 401, column: 9, scope: !2792)
!2797 = !DILocation(line: 402, column: 14, scope: !2793)
!2798 = !DILocation(line: 402, column: 7, scope: !2793)
!2799 = !DILocation(line: 404, column: 10, scope: !2724)
!2800 = !DILocation(line: 404, column: 3, scope: !2724)
!2801 = !DILocation(line: 405, column: 1, scope: !2724)
!2802 = distinct !DISubprogram(name: "unshare_aff_combination", scope: !1, file: !1, line: 445, type: !2803, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{null, !2198}
!2805 = !{!2806, !2807}
!2806 = !DILocalVariable(name: "comb", arg: 1, scope: !2802, file: !1, line: 445, type: !2198)
!2807 = !DILocalVariable(name: "i", scope: !2802, file: !1, line: 447, type: !5)
!2808 = !DILocation(line: 0, scope: !2802)
!2809 = !DILocation(line: 0, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !1, line: 449, column: 3)
!2811 = distinct !DILexicalBlock(scope: !2802, file: !1, line: 449, column: 3)
!2812 = !DILocation(line: 449, column: 8, scope: !2811)
!2813 = !DILocation(line: 0, scope: !2811)
!2814 = !DILocation(line: 449, column: 25, scope: !2810)
!2815 = !DILocation(line: 449, column: 17, scope: !2810)
!2816 = !DILocation(line: 449, column: 3, scope: !2811)
!2817 = !DILocation(line: 450, column: 53, scope: !2810)
!2818 = !DILocation(line: 450, column: 25, scope: !2810)
!2819 = !DILocation(line: 450, column: 23, scope: !2810)
!2820 = !DILocation(line: 449, column: 29, scope: !2810)
!2821 = !DILocation(line: 449, column: 3, scope: !2810)
!2822 = distinct !{!2822, !2816, !2823}
!2823 = !DILocation(line: 450, column: 56, scope: !2811)
!2824 = !DILocation(line: 451, column: 13, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2802, file: !1, line: 451, column: 7)
!2826 = !DILocation(line: 451, column: 7, scope: !2825)
!2827 = !DILocation(line: 451, column: 7, scope: !2802)
!2828 = !DILocation(line: 452, column: 18, scope: !2825)
!2829 = !DILocation(line: 452, column: 16, scope: !2825)
!2830 = !DILocation(line: 452, column: 5, scope: !2825)
!2831 = !DILocation(line: 453, column: 1, scope: !2802)
!2832 = distinct !DISubprogram(name: "aff_combination_remove_elt", scope: !1, file: !1, line: 458, type: !2833, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{null, !2198, !5}
!2835 = !{!2836, !2837}
!2836 = !DILocalVariable(name: "comb", arg: 1, scope: !2832, file: !1, line: 458, type: !2198)
!2837 = !DILocalVariable(name: "m", arg: 2, scope: !2832, file: !1, line: 458, type: !5)
!2838 = !DILocation(line: 0, scope: !2832)
!2839 = !DILocation(line: 460, column: 9, scope: !2832)
!2840 = !DILocation(line: 460, column: 10, scope: !2832)
!2841 = !DILocation(line: 461, column: 9, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2832, file: !1, line: 461, column: 7)
!2843 = !DILocation(line: 461, column: 7, scope: !2832)
!2844 = !DILocation(line: 462, column: 5, scope: !2842)
!2845 = !DILocation(line: 462, column: 21, scope: !2842)
!2846 = !DILocation(line: 463, column: 13, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2832, file: !1, line: 463, column: 7)
!2848 = !DILocation(line: 463, column: 7, scope: !2847)
!2849 = !DILocation(line: 463, column: 7, scope: !2832)
!2850 = !DILocation(line: 465, column: 7, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2847, file: !1, line: 464, column: 5)
!2852 = !DILocation(line: 465, column: 27, scope: !2851)
!2853 = !DILocation(line: 465, column: 34, scope: !2851)
!2854 = !DILocation(line: 466, column: 39, scope: !2851)
!2855 = !DILocation(line: 466, column: 24, scope: !2851)
!2856 = !DILocation(line: 466, column: 7, scope: !2851)
!2857 = !DILocation(line: 466, column: 31, scope: !2851)
!2858 = !DILocation(line: 467, column: 18, scope: !2851)
!2859 = !DILocation(line: 468, column: 14, scope: !2851)
!2860 = !DILocation(line: 469, column: 5, scope: !2851)
!2861 = !DILocation(line: 470, column: 1, scope: !2832)
!2862 = distinct !DISubprogram(name: "aff_combination_mult", scope: !1, file: !1, line: 520, type: !2863, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{null, !2198, !2198, !2198}
!2865 = !{!2866, !2867, !2868, !2869}
!2866 = !DILocalVariable(name: "c1", arg: 1, scope: !2862, file: !1, line: 520, type: !2198)
!2867 = !DILocalVariable(name: "c2", arg: 2, scope: !2862, file: !1, line: 520, type: !2198)
!2868 = !DILocalVariable(name: "r", arg: 3, scope: !2862, file: !1, line: 520, type: !2198)
!2869 = !DILocalVariable(name: "i", scope: !2862, file: !1, line: 522, type: !5)
!2870 = !DILocation(line: 0, scope: !2862)
!2871 = !DILocation(line: 523, column: 3, scope: !2862)
!2872 = !DILocation(line: 525, column: 32, scope: !2862)
!2873 = !DILocation(line: 525, column: 3, scope: !2862)
!2874 = !DILocation(line: 0, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !1, line: 527, column: 3)
!2876 = distinct !DILexicalBlock(scope: !2862, file: !1, line: 527, column: 3)
!2877 = !DILocation(line: 527, column: 8, scope: !2876)
!2878 = !DILocation(line: 0, scope: !2876)
!2879 = !DILocation(line: 527, column: 23, scope: !2875)
!2880 = !DILocation(line: 527, column: 17, scope: !2875)
!2881 = !DILocation(line: 527, column: 3, scope: !2876)
!2882 = !DILocation(line: 528, column: 68, scope: !2875)
!2883 = !DILocation(line: 528, column: 5, scope: !2875)
!2884 = !DILocation(line: 527, column: 27, scope: !2875)
!2885 = !DILocation(line: 527, column: 3, scope: !2875)
!2886 = distinct !{!2886, !2881, !2887}
!2887 = !DILocation(line: 528, column: 74, scope: !2876)
!2888 = !DILocation(line: 529, column: 11, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2862, file: !1, line: 529, column: 7)
!2890 = !DILocation(line: 529, column: 7, scope: !2889)
!2891 = !DILocation(line: 529, column: 7, scope: !2862)
!2892 = !DILocation(line: 530, column: 38, scope: !2889)
!2893 = !DILocation(line: 530, column: 58, scope: !2889)
!2894 = !DILocation(line: 530, column: 5, scope: !2889)
!2895 = !DILocation(line: 531, column: 3, scope: !2862)
!2896 = !DILocation(line: 532, column: 1, scope: !2862)
!2897 = distinct !DISubprogram(name: "aff_combination_add_product", scope: !1, file: !1, line: 477, type: !2898, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{null, !2198, !505, !456, !2198}
!2900 = !{!2901, !2902, !2903, !2904, !2905, !2906, !2907}
!2901 = !DILocalVariable(name: "c", arg: 1, scope: !2897, file: !1, line: 477, type: !2198)
!2902 = !DILocalVariable(name: "coef", arg: 2, scope: !2897, file: !1, line: 477, type: !505)
!2903 = !DILocalVariable(name: "val", arg: 3, scope: !2897, file: !1, line: 477, type: !456)
!2904 = !DILocalVariable(name: "r", arg: 4, scope: !2897, file: !1, line: 478, type: !2198)
!2905 = !DILocalVariable(name: "i", scope: !2897, file: !1, line: 480, type: !5)
!2906 = !DILocalVariable(name: "aval", scope: !2897, file: !1, line: 481, type: !456)
!2907 = !DILocalVariable(name: "type", scope: !2897, file: !1, line: 481, type: !456)
!2908 = !DILocation(line: 0, scope: !2897)
!2909 = !DILocation(line: 0, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !1, line: 483, column: 3)
!2911 = distinct !DILexicalBlock(scope: !2897, file: !1, line: 483, column: 3)
!2912 = !DILocation(line: 0, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !1, line: 486, column: 11)
!2914 = distinct !DILexicalBlock(scope: !2910, file: !1, line: 484, column: 5)
!2915 = !DILocation(line: 483, column: 8, scope: !2911)
!2916 = !DILocation(line: 0, scope: !2911)
!2917 = !DILocation(line: 483, column: 22, scope: !2910)
!2918 = !DILocation(line: 483, column: 17, scope: !2910)
!2919 = !DILocation(line: 483, column: 3, scope: !2911)
!2920 = !DILocation(line: 485, column: 25, scope: !2914)
!2921 = !DILocation(line: 494, column: 11, scope: !2914)
!2922 = !DILocation(line: 493, column: 7, scope: !2914)
!2923 = !DILocation(line: 483, column: 26, scope: !2910)
!2924 = !DILocation(line: 483, column: 3, scope: !2910)
!2925 = distinct !{!2925, !2919, !2926}
!2926 = !DILocation(line: 495, column: 5, scope: !2911)
!2927 = !DILocation(line: 497, column: 10, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2897, file: !1, line: 497, column: 7)
!2929 = !DILocation(line: 488, column: 11, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2913, file: !1, line: 487, column: 2)
!2931 = !DILocation(line: 489, column: 11, scope: !2930)
!2932 = !DILocation(line: 497, column: 7, scope: !2928)
!2933 = !DILocation(line: 497, column: 7, scope: !2897)
!2934 = !DILocation(line: 500, column: 11, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2928, file: !1, line: 498, column: 5)
!2936 = !DILocation(line: 502, column: 11, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !1, line: 501, column: 2)
!2938 = distinct !DILexicalBlock(scope: !2935, file: !1, line: 500, column: 11)
!2939 = !DILocation(line: 503, column: 11, scope: !2937)
!2940 = !DILocation(line: 505, column: 2, scope: !2937)
!2941 = !DILocation(line: 0, scope: !2935)
!2942 = !DILocation(line: 507, column: 7, scope: !2935)
!2943 = !DILocation(line: 508, column: 5, scope: !2935)
!2944 = !DILocation(line: 0, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2897, file: !1, line: 510, column: 7)
!2946 = !DILocation(line: 510, column: 7, scope: !2897)
!2947 = !DILocation(line: 512, column: 9, scope: !2945)
!2948 = !DILocation(line: 511, column: 5, scope: !2945)
!2949 = !DILocation(line: 514, column: 33, scope: !2945)
!2950 = !DILocation(line: 514, column: 5, scope: !2945)
!2951 = !DILocation(line: 515, column: 1, scope: !2897)
!2952 = distinct !DISubprogram(name: "aff_combination_expand", scope: !1, file: !1, line: 570, type: !2953, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2959)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2198, !2955}
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !2958, line: 33, flags: DIFlagFwdDecl)
!2958 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2959 = !{!2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2976, !2977}
!2960 = !DILocalVariable(name: "comb", arg: 1, scope: !2952, file: !1, line: 570, type: !2198)
!2961 = !DILocalVariable(name: "cache", arg: 2, scope: !2952, file: !1, line: 571, type: !2955)
!2962 = !DILocalVariable(name: "i", scope: !2952, file: !1, line: 573, type: !5)
!2963 = !DILocalVariable(name: "to_add", scope: !2952, file: !1, line: 574, type: !1726)
!2964 = !DILocalVariable(name: "current", scope: !2952, file: !1, line: 574, type: !1726)
!2965 = !DILocalVariable(name: "curre", scope: !2952, file: !1, line: 574, type: !1726)
!2966 = !DILocalVariable(name: "e", scope: !2952, file: !1, line: 575, type: !456)
!2967 = !DILocalVariable(name: "rhs", scope: !2952, file: !1, line: 575, type: !456)
!2968 = !DILocalVariable(name: "def", scope: !2952, file: !1, line: 576, type: !780)
!2969 = !DILocalVariable(name: "scale", scope: !2952, file: !1, line: 577, type: !505)
!2970 = !DILocalVariable(name: "slot", scope: !2952, file: !1, line: 578, type: !1261)
!2971 = !DILocalVariable(name: "exp", scope: !2952, file: !1, line: 579, type: !1722)
!2972 = !DILocalVariable(name: "type", scope: !2973, file: !1, line: 584, type: !456)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !1, line: 583, column: 5)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !1, line: 582, column: 3)
!2975 = distinct !DILexicalBlock(scope: !2952, file: !1, line: 582, column: 3)
!2976 = !DILocalVariable(name: "name", scope: !2973, file: !1, line: 584, type: !456)
!2977 = !DILocalVariable(name: "code", scope: !2973, file: !1, line: 585, type: !132)
!2978 = !DILocation(line: 0, scope: !2952)
!2979 = !DILocation(line: 574, column: 3, scope: !2952)
!2980 = !DILocation(line: 577, column: 3, scope: !2952)
!2981 = !DILocation(line: 581, column: 40, scope: !2952)
!2982 = !DILocation(line: 581, column: 3, scope: !2952)
!2983 = !DILocation(line: 0, scope: !2974)
!2984 = !DILocation(line: 0, scope: !2973)
!2985 = !DILocation(line: 582, column: 8, scope: !2975)
!2986 = !DILocation(line: 0, scope: !2975)
!2987 = !DILocation(line: 582, column: 25, scope: !2974)
!2988 = !DILocation(line: 582, column: 17, scope: !2974)
!2989 = !DILocation(line: 582, column: 3, scope: !2975)
!2990 = !DILocation(line: 587, column: 25, scope: !2973)
!2991 = !DILocation(line: 588, column: 14, scope: !2973)
!2992 = !DILocation(line: 591, column: 11, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2973, file: !1, line: 591, column: 11)
!2994 = !DILocation(line: 591, column: 25, scope: !2993)
!2995 = !DILocation(line: 592, column: 11, scope: !2993)
!2996 = !DILocation(line: 592, column: 15, scope: !2993)
!2997 = !DILocation(line: 593, column: 11, scope: !2993)
!2998 = !DILocation(line: 593, column: 8, scope: !2993)
!2999 = !DILocation(line: 591, column: 11, scope: !2973)
!3000 = !DILocation(line: 0, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2973, file: !1, line: 595, column: 11)
!3002 = !DILocation(line: 595, column: 11, scope: !3001)
!3003 = !DILocation(line: 594, column: 2, scope: !2993)
!3004 = !DILocation(line: 595, column: 28, scope: !3001)
!3005 = !DILocation(line: 595, column: 11, scope: !2973)
!3006 = !DILocation(line: 597, column: 13, scope: !2973)
!3007 = !DILocation(line: 598, column: 12, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2973, file: !1, line: 598, column: 11)
!3009 = !DILocation(line: 598, column: 35, scope: !3008)
!3010 = !DILocation(line: 598, column: 38, scope: !3008)
!3011 = !DILocation(line: 598, column: 62, scope: !3008)
!3012 = !DILocation(line: 598, column: 11, scope: !2973)
!3013 = !DILocation(line: 601, column: 14, scope: !2973)
!3014 = !DILocation(line: 602, column: 16, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2973, file: !1, line: 602, column: 11)
!3016 = !DILocation(line: 603, column: 4, scope: !3015)
!3017 = !DILocation(line: 610, column: 11, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2973, file: !1, line: 610, column: 11)
!3019 = !DILocation(line: 603, column: 8, scope: !3015)
!3020 = !DILocation(line: 604, column: 4, scope: !3015)
!3021 = !DILocation(line: 604, column: 8, scope: !3015)
!3022 = !DILocation(line: 604, column: 36, scope: !3015)
!3023 = !DILocation(line: 605, column: 8, scope: !3015)
!3024 = !DILocation(line: 605, column: 37, scope: !3015)
!3025 = !DILocation(line: 605, column: 12, scope: !3015)
!3026 = !DILocation(line: 602, column: 11, scope: !2973)
!3027 = !DILocation(line: 610, column: 34, scope: !3018)
!3028 = !DILocation(line: 610, column: 11, scope: !2973)
!3029 = !DILocation(line: 613, column: 12, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2973, file: !1, line: 613, column: 11)
!3031 = !DILocation(line: 613, column: 11, scope: !2973)
!3032 = !DILocation(line: 614, column: 11, scope: !3030)
!3033 = !DILocation(line: 614, column: 9, scope: !3030)
!3034 = !DILocation(line: 614, column: 2, scope: !3030)
!3035 = !DILocation(line: 615, column: 34, scope: !2973)
!3036 = !DILocation(line: 615, column: 42, scope: !2973)
!3037 = !DILocation(line: 615, column: 14, scope: !2973)
!3038 = !DILocation(line: 616, column: 39, scope: !2973)
!3039 = !DILocation(line: 618, column: 12, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2973, file: !1, line: 618, column: 11)
!3041 = !DILocation(line: 618, column: 11, scope: !2973)
!3042 = !DILocation(line: 620, column: 10, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3040, file: !1, line: 619, column: 2)
!3044 = !DILocation(line: 621, column: 9, scope: !3043)
!3045 = !DILocation(line: 621, column: 21, scope: !3043)
!3046 = !DILocation(line: 622, column: 10, scope: !3043)
!3047 = !DILocation(line: 629, column: 10, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3043, file: !1, line: 629, column: 8)
!3049 = !DILocation(line: 630, column: 8, scope: !3048)
!3050 = !DILocation(line: 630, column: 11, scope: !3048)
!3051 = !DILocation(line: 631, column: 8, scope: !3048)
!3052 = !DILocation(line: 631, column: 11, scope: !3048)
!3053 = !DILocation(line: 632, column: 8, scope: !3048)
!3054 = !DILocation(line: 632, column: 11, scope: !3048)
!3055 = !DILocation(line: 633, column: 11, scope: !3048)
!3056 = !DILocation(line: 633, column: 35, scope: !3048)
!3057 = !DILocation(line: 633, column: 33, scope: !3048)
!3058 = !DILocation(line: 634, column: 30, scope: !3048)
!3059 = !DILocation(line: 634, column: 8, scope: !3048)
!3060 = !DILocation(line: 635, column: 11, scope: !3048)
!3061 = !DILocation(line: 635, column: 48, scope: !3048)
!3062 = !DILocation(line: 629, column: 8, scope: !3043)
!3063 = !DILocation(line: 636, column: 12, scope: !3048)
!3064 = !DILocation(line: 636, column: 6, scope: !3048)
!3065 = !DILocation(line: 641, column: 14, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3048, file: !1, line: 640, column: 6)
!3067 = !DILocation(line: 642, column: 12, scope: !3066)
!3068 = !DILocation(line: 643, column: 9, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3066, file: !1, line: 642, column: 12)
!3070 = !DILocation(line: 643, column: 3, scope: !3069)
!3071 = !DILocation(line: 0, scope: !3048)
!3072 = !DILocation(line: 645, column: 47, scope: !3043)
!3073 = !DILocation(line: 645, column: 4, scope: !3043)
!3074 = !DILocation(line: 646, column: 21, scope: !3043)
!3075 = !DILocation(line: 647, column: 21, scope: !3043)
!3076 = !DILocation(line: 648, column: 2, scope: !3043)
!3077 = !DILocation(line: 653, column: 4, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3040, file: !1, line: 650, column: 2)
!3079 = !DILocation(line: 654, column: 19, scope: !3078)
!3080 = !DILocation(line: 660, column: 29, scope: !2973)
!3081 = !DILocation(line: 661, column: 43, scope: !2973)
!3082 = !DILocation(line: 661, column: 7, scope: !2973)
!3083 = !DILocation(line: 662, column: 43, scope: !2973)
!3084 = !DILocation(line: 662, column: 7, scope: !2973)
!3085 = !DILocation(line: 663, column: 7, scope: !2973)
!3086 = !DILocation(line: 664, column: 7, scope: !2973)
!3087 = !DILocation(line: 665, column: 7, scope: !2973)
!3088 = !DILocation(line: 666, column: 5, scope: !2974)
!3089 = !DILocation(line: 582, column: 29, scope: !2974)
!3090 = !DILocation(line: 582, column: 3, scope: !2974)
!3091 = distinct !{!3091, !2989, !3092}
!3092 = !DILocation(line: 666, column: 5, scope: !2975)
!3093 = !DILocation(line: 667, column: 3, scope: !2952)
!3094 = !DILocation(line: 668, column: 1, scope: !2952)
!3095 = distinct !DISubprogram(name: "is_gimple_assign", scope: !376, file: !376, line: 1677, type: !3096, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3099)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!448, !3098}
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !457, line: 60, baseType: !1743)
!3099 = !{!3100}
!3100 = !DILocalVariable(name: "gs", arg: 1, scope: !3095, file: !376, line: 1677, type: !3098)
!3101 = !DILocation(line: 0, scope: !3095)
!3102 = !DILocation(line: 1679, column: 10, scope: !3095)
!3103 = !DILocation(line: 1679, column: 27, scope: !3095)
!3104 = !DILocation(line: 1679, column: 3, scope: !3095)
!3105 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !376, file: !376, line: 1694, type: !3106, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!456, !3098}
!3108 = !{!3109}
!3109 = !DILocalVariable(name: "gs", arg: 1, scope: !3105, file: !376, line: 1694, type: !3098)
!3110 = !DILocation(line: 0, scope: !3105)
!3111 = !DILocation(line: 1697, column: 10, scope: !3105)
!3112 = !DILocation(line: 1697, column: 3, scope: !3105)
!3113 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !376, file: !376, line: 1815, type: !3114, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!132, !3098}
!3116 = !{!3117, !3118}
!3117 = !DILocalVariable(name: "gs", arg: 1, scope: !3113, file: !376, line: 1815, type: !3098)
!3118 = !DILocalVariable(name: "code", scope: !3113, file: !376, line: 1817, type: !132)
!3119 = !DILocation(line: 0, scope: !3113)
!3120 = !DILocation(line: 1820, column: 10, scope: !3113)
!3121 = !DILocation(line: 1821, column: 7, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3113, file: !376, line: 1821, column: 7)
!3123 = !DILocation(line: 1821, column: 35, scope: !3122)
!3124 = !DILocation(line: 1821, column: 7, scope: !3113)
!3125 = !DILocation(line: 1822, column: 12, scope: !3122)
!3126 = !DILocation(line: 1822, column: 5, scope: !3122)
!3127 = !DILocation(line: 1824, column: 3, scope: !3113)
!3128 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !376, file: !376, line: 1686, type: !3129, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3131)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!440, !132}
!3131 = !{!3132}
!3132 = !DILocalVariable(name: "code", arg: 1, scope: !3128, file: !376, line: 1686, type: !132)
!3133 = !DILocation(line: 0, scope: !3128)
!3134 = !DILocation(line: 1688, column: 34, scope: !3128)
!3135 = !DILocation(line: 1688, column: 10, scope: !3128)
!3136 = !DILocation(line: 1688, column: 3, scope: !3128)
!3137 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !376, file: !376, line: 1727, type: !3106, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3138)
!3138 = !{!3139}
!3139 = !DILocalVariable(name: "gs", arg: 1, scope: !3137, file: !376, line: 1727, type: !3098)
!3140 = !DILocation(line: 0, scope: !3137)
!3141 = !DILocation(line: 1730, column: 10, scope: !3137)
!3142 = !DILocation(line: 1730, column: 3, scope: !3137)
!3143 = distinct !DISubprogram(name: "gimple_assign_rhs2", scope: !376, file: !376, line: 1759, type: !3106, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3144)
!3144 = !{!3145}
!3145 = !DILocalVariable(name: "gs", arg: 1, scope: !3143, file: !376, line: 1759, type: !3098)
!3146 = !DILocation(line: 0, scope: !3143)
!3147 = !DILocation(line: 1763, column: 7, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3143, file: !376, line: 1763, column: 7)
!3149 = !DILocation(line: 1763, column: 27, scope: !3148)
!3150 = !DILocation(line: 1763, column: 7, scope: !3143)
!3151 = !DILocation(line: 1764, column: 12, scope: !3148)
!3152 = !DILocation(line: 1764, column: 5, scope: !3148)
!3153 = !DILocation(line: 0, scope: !3148)
!3154 = !DILocation(line: 1767, column: 1, scope: !3143)
!3155 = distinct !DISubprogram(name: "tree_to_aff_combination_expand", scope: !1, file: !1, line: 681, type: !3156, scopeLine: 683, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{null, !456, !456, !2198, !2955}
!3158 = !{!3159, !3160, !3161, !3162}
!3159 = !DILocalVariable(name: "expr", arg: 1, scope: !3155, file: !1, line: 681, type: !456)
!3160 = !DILocalVariable(name: "type", arg: 2, scope: !3155, file: !1, line: 681, type: !456)
!3161 = !DILocalVariable(name: "comb", arg: 3, scope: !3155, file: !1, line: 681, type: !2198)
!3162 = !DILocalVariable(name: "cache", arg: 4, scope: !3155, file: !1, line: 682, type: !2955)
!3163 = !DILocation(line: 0, scope: !3155)
!3164 = !DILocation(line: 684, column: 3, scope: !3155)
!3165 = !DILocation(line: 685, column: 3, scope: !3155)
!3166 = !DILocation(line: 686, column: 1, scope: !3155)
!3167 = distinct !DISubprogram(name: "free_affine_expand_cache", scope: !1, file: !1, line: 705, type: !3168, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{null, !2955}
!3170 = !{!3171}
!3171 = !DILocalVariable(name: "cache", arg: 1, scope: !3167, file: !1, line: 705, type: !2955)
!3172 = !DILocation(line: 0, scope: !3167)
!3173 = !DILocation(line: 707, column: 8, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3167, file: !1, line: 707, column: 7)
!3175 = !DILocation(line: 707, column: 7, scope: !3167)
!3176 = !DILocation(line: 710, column: 3, scope: !3167)
!3177 = !DILocation(line: 711, column: 24, scope: !3167)
!3178 = !DILocation(line: 711, column: 3, scope: !3167)
!3179 = !DILocation(line: 712, column: 10, scope: !3167)
!3180 = !DILocation(line: 713, column: 1, scope: !3167)
!3181 = distinct !DISubprogram(name: "free_name_expansion", scope: !1, file: !1, line: 692, type: !3182, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!448, !1087, !1261, !453}
!3184 = !{!3185, !3186, !3187, !3188}
!3185 = !DILocalVariable(name: "key", arg: 1, scope: !3181, file: !1, line: 692, type: !1087)
!3186 = !DILocalVariable(name: "value", arg: 2, scope: !3181, file: !1, line: 692, type: !1261)
!3187 = !DILocalVariable(name: "data", arg: 3, scope: !3181, file: !1, line: 693, type: !453)
!3188 = !DILocalVariable(name: "exp", scope: !3181, file: !1, line: 695, type: !3189)
!3189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1722)
!3190 = !DILocation(line: 0, scope: !3181)
!3191 = !DILocation(line: 695, column: 64, scope: !3181)
!3192 = !DILocation(line: 697, column: 3, scope: !3181)
!3193 = !DILocation(line: 698, column: 3, scope: !3181)
!3194 = distinct !DISubprogram(name: "aff_combination_constant_multiple_p", scope: !1, file: !1, line: 750, type: !3195, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3198)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!448, !2198, !2198, !3197}
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3204}
!3199 = !DILocalVariable(name: "val", arg: 1, scope: !3194, file: !1, line: 750, type: !2198)
!3200 = !DILocalVariable(name: "div", arg: 2, scope: !3194, file: !1, line: 750, type: !2198)
!3201 = !DILocalVariable(name: "mult", arg: 3, scope: !3194, file: !1, line: 751, type: !3197)
!3202 = !DILocalVariable(name: "mult_set", scope: !3194, file: !1, line: 753, type: !448)
!3203 = !DILocalVariable(name: "i", scope: !3194, file: !1, line: 754, type: !5)
!3204 = !DILocalVariable(name: "elt", scope: !3205, file: !1, line: 773, type: !3208)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !1, line: 772, column: 5)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !1, line: 771, column: 3)
!3207 = distinct !DILexicalBlock(scope: !3194, file: !1, line: 771, column: 3)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!3209 = !DILocation(line: 0, scope: !3194)
!3210 = !DILocation(line: 753, column: 3, scope: !3194)
!3211 = !DILocation(line: 753, column: 8, scope: !3194)
!3212 = !DILocation(line: 756, column: 12, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3194, file: !1, line: 756, column: 7)
!3214 = !DILocation(line: 756, column: 14, scope: !3213)
!3215 = !DILocation(line: 756, column: 19, scope: !3213)
!3216 = !DILocation(line: 756, column: 22, scope: !3213)
!3217 = !DILocation(line: 756, column: 7, scope: !3194)
!3218 = !DILocation(line: 761, column: 12, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3194, file: !1, line: 761, column: 7)
!3220 = !DILocation(line: 758, column: 15, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3213, file: !1, line: 757, column: 5)
!3222 = !DILocation(line: 759, column: 7, scope: !3221)
!3223 = !DILocation(line: 761, column: 22, scope: !3219)
!3224 = !DILocation(line: 761, column: 14, scope: !3219)
!3225 = !DILocation(line: 761, column: 7, scope: !3194)
!3226 = !DILocation(line: 764, column: 12, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3194, file: !1, line: 764, column: 7)
!3228 = !DILocation(line: 764, column: 7, scope: !3227)
!3229 = !DILocation(line: 764, column: 17, scope: !3227)
!3230 = !DILocation(line: 764, column: 25, scope: !3227)
!3231 = !DILocation(line: 764, column: 20, scope: !3227)
!3232 = !DILocation(line: 764, column: 7, scope: !3194)
!3233 = !DILocation(line: 767, column: 8, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3194, file: !1, line: 767, column: 7)
!3235 = !DILocation(line: 767, column: 7, scope: !3194)
!3236 = !DILocation(line: 771, column: 3, scope: !3207)
!3237 = !DILocation(line: 0, scope: !3207)
!3238 = !DILocation(line: 771, column: 24, scope: !3206)
!3239 = !DILocation(line: 771, column: 17, scope: !3206)
!3240 = !DILocation(line: 774, column: 54, scope: !3205)
!3241 = !DILocation(line: 774, column: 10, scope: !3205)
!3242 = !DILocation(line: 0, scope: !3205)
!3243 = !DILocation(line: 775, column: 12, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3205, file: !1, line: 775, column: 11)
!3245 = !DILocation(line: 775, column: 11, scope: !3205)
!3246 = !DILocation(line: 777, column: 12, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3205, file: !1, line: 777, column: 11)
!3248 = !DILocation(line: 0, scope: !3206)
!3249 = !DILocation(line: 771, column: 28, scope: !3206)
!3250 = !DILocation(line: 771, column: 3, scope: !3206)
!3251 = distinct !{!3251, !3236, !3252}
!3252 = !DILocation(line: 780, column: 5, scope: !3207)
!3253 = !DILocation(line: 782, column: 3, scope: !3194)
!3254 = !DILocation(line: 784, column: 1, scope: !3194)
!3255 = distinct !DISubprogram(name: "double_int_constant_multiple_p", scope: !1, file: !1, line: 723, type: !3256, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3258)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!448, !505, !505, !447, !3197}
!3258 = !{!3259, !3260, !3261, !3262, !3263, !3264}
!3259 = !DILocalVariable(name: "val", arg: 1, scope: !3255, file: !1, line: 723, type: !505)
!3260 = !DILocalVariable(name: "div", arg: 2, scope: !3255, file: !1, line: 723, type: !505)
!3261 = !DILocalVariable(name: "mult_set", arg: 3, scope: !3255, file: !1, line: 724, type: !447)
!3262 = !DILocalVariable(name: "mult", arg: 4, scope: !3255, file: !1, line: 724, type: !3197)
!3263 = !DILocalVariable(name: "rem", scope: !3255, file: !1, line: 726, type: !505)
!3264 = !DILocalVariable(name: "cst", scope: !3255, file: !1, line: 726, type: !505)
!3265 = !DILocation(line: 0, scope: !3255)
!3266 = !DILocation(line: 726, column: 3, scope: !3255)
!3267 = !DILocation(line: 728, column: 7, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3255, file: !1, line: 728, column: 7)
!3269 = !DILocation(line: 728, column: 7, scope: !3255)
!3270 = !DILocation(line: 731, column: 7, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3255, file: !1, line: 731, column: 7)
!3272 = !DILocation(line: 731, column: 7, scope: !3255)
!3273 = !DILocation(line: 734, column: 9, scope: !3255)
!3274 = !DILocation(line: 735, column: 8, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3255, file: !1, line: 735, column: 7)
!3276 = !DILocation(line: 735, column: 7, scope: !3255)
!3277 = !DILocation(line: 738, column: 7, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3255, file: !1, line: 738, column: 7)
!3279 = !DILocation(line: 738, column: 17, scope: !3278)
!3280 = !DILocation(line: 738, column: 21, scope: !3278)
!3281 = !DILocation(line: 738, column: 7, scope: !3255)
!3282 = !DILocation(line: 741, column: 13, scope: !3255)
!3283 = !DILocation(line: 742, column: 11, scope: !3255)
!3284 = !DILocation(line: 743, column: 3, scope: !3255)
!3285 = !DILocation(line: 744, column: 1, scope: !3255)
!3286 = distinct !DISubprogram(name: "aff_combination_find_elt", scope: !1, file: !1, line: 539, type: !3287, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3290)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!3208, !2198, !456, !3289}
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!3290 = !{!3291, !3292, !3293, !3294}
!3291 = !DILocalVariable(name: "comb", arg: 1, scope: !3286, file: !1, line: 539, type: !2198)
!3292 = !DILocalVariable(name: "val", arg: 2, scope: !3286, file: !1, line: 539, type: !456)
!3293 = !DILocalVariable(name: "idx", arg: 3, scope: !3286, file: !1, line: 539, type: !3289)
!3294 = !DILocalVariable(name: "i", scope: !3286, file: !1, line: 541, type: !5)
!3295 = !DILocation(line: 0, scope: !3286)
!3296 = !DILocation(line: 0, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3298, file: !1, line: 543, column: 3)
!3298 = distinct !DILexicalBlock(scope: !3286, file: !1, line: 543, column: 3)
!3299 = !DILocation(line: 543, column: 8, scope: !3298)
!3300 = !DILocation(line: 0, scope: !3298)
!3301 = !DILocation(line: 543, column: 25, scope: !3297)
!3302 = !DILocation(line: 543, column: 17, scope: !3297)
!3303 = !DILocation(line: 543, column: 3, scope: !3298)
!3304 = !DILocation(line: 544, column: 40, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3297, file: !1, line: 544, column: 9)
!3306 = !DILocation(line: 544, column: 9, scope: !3305)
!3307 = !DILocation(line: 544, column: 9, scope: !3297)
!3308 = !DILocation(line: 549, column: 10, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3305, file: !1, line: 545, column: 7)
!3310 = !DILocation(line: 549, column: 2, scope: !3309)
!3311 = !DILocation(line: 543, column: 29, scope: !3297)
!3312 = !DILocation(line: 543, column: 3, scope: !3297)
!3313 = distinct !{!3313, !3303, !3314}
!3314 = !DILocation(line: 550, column: 7, scope: !3298)
!3315 = !DILocation(line: 553, column: 1, scope: !3286)
!3316 = distinct !DISubprogram(name: "print_aff", scope: !1, file: !1, line: 789, type: !3317, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{null, !1778, !2198}
!3319 = !{!3320, !3321, !3322, !3323}
!3320 = !DILocalVariable(name: "file", arg: 1, scope: !3316, file: !1, line: 789, type: !1778)
!3321 = !DILocalVariable(name: "val", arg: 2, scope: !3316, file: !1, line: 789, type: !2198)
!3322 = !DILocalVariable(name: "i", scope: !3316, file: !1, line: 791, type: !5)
!3323 = !DILocalVariable(name: "uns", scope: !3316, file: !1, line: 792, type: !448)
!3324 = !DILocation(line: 0, scope: !3316)
!3325 = !DILocation(line: 793, column: 7, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3316, file: !1, line: 793, column: 7)
!3327 = !DILocation(line: 792, column: 14, scope: !3316)
!3328 = !DILocation(line: 793, column: 7, scope: !3316)
!3329 = !DILocation(line: 794, column: 5, scope: !3326)
!3330 = !DILocation(line: 795, column: 3, scope: !3316)
!3331 = !DILocation(line: 796, column: 34, scope: !3316)
!3332 = !DILocation(line: 796, column: 3, scope: !3316)
!3333 = !DILocation(line: 797, column: 3, scope: !3316)
!3334 = !DILocation(line: 798, column: 3, scope: !3316)
!3335 = !DILocation(line: 799, column: 12, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3316, file: !1, line: 799, column: 7)
!3337 = !DILocation(line: 799, column: 14, scope: !3336)
!3338 = !DILocation(line: 799, column: 7, scope: !3316)
!3339 = !DILocation(line: 801, column: 7, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3336, file: !1, line: 800, column: 5)
!3341 = !DILocation(line: 802, column: 12, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3340, file: !1, line: 802, column: 7)
!3343 = !DILocation(line: 0, scope: !3342)
!3344 = !DILocation(line: 802, column: 28, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3342, file: !1, line: 802, column: 7)
!3346 = !DILocation(line: 802, column: 21, scope: !3345)
!3347 = !DILocation(line: 802, column: 7, scope: !3342)
!3348 = !DILocation(line: 804, column: 4, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3345, file: !1, line: 803, column: 2)
!3350 = !DILocation(line: 805, column: 43, scope: !3349)
!3351 = !DILocation(line: 805, column: 4, scope: !3349)
!3352 = !DILocation(line: 807, column: 4, scope: !3349)
!3353 = !DILocation(line: 808, column: 4, scope: !3349)
!3354 = !DILocation(line: 809, column: 18, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3349, file: !1, line: 809, column: 8)
!3356 = !DILocation(line: 809, column: 20, scope: !3355)
!3357 = !DILocation(line: 809, column: 10, scope: !3355)
!3358 = !DILocation(line: 809, column: 8, scope: !3349)
!3359 = !DILocation(line: 810, column: 6, scope: !3355)
!3360 = !DILocation(line: 802, column: 32, scope: !3345)
!3361 = !DILocation(line: 802, column: 7, scope: !3345)
!3362 = distinct !{!3362, !3347, !3363}
!3363 = !DILocation(line: 811, column: 2, scope: !3342)
!3364 = !DILocation(line: 812, column: 7, scope: !3340)
!3365 = !DILocation(line: 813, column: 3, scope: !3340)
!3366 = !DILocation(line: 814, column: 12, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3316, file: !1, line: 814, column: 7)
!3368 = !DILocation(line: 814, column: 7, scope: !3367)
!3369 = !DILocation(line: 814, column: 7, scope: !3316)
!3370 = !DILocation(line: 816, column: 7, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !1, line: 815, column: 5)
!3372 = !DILocation(line: 817, column: 38, scope: !3371)
!3373 = !DILocation(line: 817, column: 7, scope: !3371)
!3374 = !DILocation(line: 818, column: 5, scope: !3371)
!3375 = !DILocation(line: 819, column: 3, scope: !3316)
!3376 = !DILocation(line: 820, column: 1, scope: !3316)
!3377 = distinct !DISubprogram(name: "debug_aff", scope: !1, file: !1, line: 825, type: !2803, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3378)
!3378 = !{!3379}
!3379 = !DILocalVariable(name: "val", arg: 1, scope: !3377, file: !1, line: 825, type: !2198)
!3380 = !DILocation(line: 0, scope: !3377)
!3381 = !DILocation(line: 827, column: 14, scope: !3377)
!3382 = !DILocation(line: 827, column: 3, scope: !3377)
!3383 = !DILocation(line: 828, column: 12, scope: !3377)
!3384 = !DILocation(line: 828, column: 3, scope: !3377)
!3385 = !DILocation(line: 829, column: 1, scope: !3377)
!3386 = distinct !DISubprogram(name: "get_inner_reference_aff", scope: !1, file: !1, line: 835, type: !3387, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{null, !456, !2198, !3197}
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401}
!3390 = !DILocalVariable(name: "ref", arg: 1, scope: !3386, file: !1, line: 835, type: !456)
!3391 = !DILocalVariable(name: "addr", arg: 2, scope: !3386, file: !1, line: 835, type: !2198)
!3392 = !DILocalVariable(name: "size", arg: 3, scope: !3386, file: !1, line: 835, type: !3197)
!3393 = !DILocalVariable(name: "bitsize", scope: !3386, file: !1, line: 837, type: !512)
!3394 = !DILocalVariable(name: "bitpos", scope: !3386, file: !1, line: 837, type: !512)
!3395 = !DILocalVariable(name: "toff", scope: !3386, file: !1, line: 838, type: !456)
!3396 = !DILocalVariable(name: "mode", scope: !3386, file: !1, line: 839, type: !3)
!3397 = !DILocalVariable(name: "uns", scope: !3386, file: !1, line: 840, type: !449)
!3398 = !DILocalVariable(name: "vol", scope: !3386, file: !1, line: 840, type: !449)
!3399 = !DILocalVariable(name: "tmp", scope: !3386, file: !1, line: 841, type: !1726)
!3400 = !DILocalVariable(name: "base", scope: !3386, file: !1, line: 842, type: !456)
!3401 = !DILocalVariable(name: "base_addr", scope: !3386, file: !1, line: 844, type: !456)
!3402 = !DILocation(line: 0, scope: !3386)
!3403 = !DILocation(line: 837, column: 3, scope: !3386)
!3404 = !DILocation(line: 838, column: 3, scope: !3386)
!3405 = !DILocation(line: 839, column: 3, scope: !3386)
!3406 = !DILocation(line: 840, column: 3, scope: !3386)
!3407 = !DILocation(line: 841, column: 3, scope: !3386)
!3408 = !DILocation(line: 842, column: 15, scope: !3386)
!3409 = !DILocation(line: 844, column: 20, scope: !3386)
!3410 = !DILocation(line: 848, column: 39, scope: !3386)
!3411 = !DILocation(line: 848, column: 3, scope: !3386)
!3412 = !DILocation(line: 850, column: 7, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3386, file: !1, line: 850, column: 7)
!3414 = !DILocation(line: 850, column: 7, scope: !3386)
!3415 = !DILocation(line: 852, column: 38, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3413, file: !1, line: 851, column: 5)
!3417 = !DILocation(line: 852, column: 7, scope: !3416)
!3418 = !DILocation(line: 853, column: 7, scope: !3416)
!3419 = !DILocation(line: 854, column: 5, scope: !3416)
!3420 = !DILocation(line: 856, column: 32, scope: !3386)
!3421 = !DILocation(line: 857, column: 25, scope: !3386)
!3422 = !DILocation(line: 857, column: 32, scope: !3386)
!3423 = !DILocation(line: 857, column: 5, scope: !3386)
!3424 = !DILocation(line: 856, column: 3, scope: !3386)
!3425 = !DILocation(line: 858, column: 3, scope: !3386)
!3426 = !DILocation(line: 860, column: 11, scope: !3386)
!3427 = !DILocation(line: 860, column: 32, scope: !3386)
!3428 = !DILocation(line: 860, column: 56, scope: !3386)
!3429 = !DILocation(line: 860, column: 61, scope: !3386)
!3430 = !DILocation(line: 861, column: 1, scope: !3386)
!3431 = distinct !DISubprogram(name: "double_int_minus_one_p", scope: !506, file: !506, line: 168, type: !2344, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3432)
!3432 = !{!3433}
!3433 = !DILocalVariable(name: "cst", arg: 1, scope: !3431, file: !506, line: 168, type: !505)
!3434 = !DILocation(line: 170, column: 31, scope: !3431)
!3435 = !DILocation(line: 170, column: 10, scope: !3431)
!3436 = !DILocation(line: 170, column: 3, scope: !3431)
!3437 = distinct !DISubprogram(name: "gimple_code", scope: !376, file: !376, line: 1052, type: !3438, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!375, !3098}
!3440 = !{!3441}
!3441 = !DILocalVariable(name: "g", arg: 1, scope: !3437, file: !376, line: 1052, type: !3098)
!3442 = !DILocation(line: 0, scope: !3437)
!3443 = !DILocation(line: 1054, column: 20, scope: !3437)
!3444 = !DILocation(line: 1054, column: 3, scope: !3437)
!3445 = distinct !DISubprogram(name: "gimple_op", scope: !376, file: !376, line: 1631, type: !3446, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!456, !3098, !5}
!3448 = !{!3449, !3450}
!3449 = !DILocalVariable(name: "gs", arg: 1, scope: !3445, file: !376, line: 1631, type: !3098)
!3450 = !DILocalVariable(name: "i", arg: 2, scope: !3445, file: !376, line: 1631, type: !5)
!3451 = !DILocation(line: 0, scope: !3445)
!3452 = !DILocation(line: 1633, column: 7, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3445, file: !376, line: 1633, column: 7)
!3454 = !DILocation(line: 1633, column: 7, scope: !3445)
!3455 = !DILocation(line: 1638, column: 14, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3453, file: !376, line: 1634, column: 5)
!3457 = !DILocation(line: 1638, column: 7, scope: !3456)
!3458 = !DILocation(line: 0, scope: !3453)
!3459 = !DILocation(line: 1642, column: 1, scope: !3445)
!3460 = distinct !DISubprogram(name: "gimple_has_ops", scope: !376, file: !376, line: 1274, type: !3096, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3461)
!3461 = !{!3462}
!3462 = !DILocalVariable(name: "g", arg: 1, scope: !3460, file: !376, line: 1274, type: !3098)
!3463 = !DILocation(line: 0, scope: !3460)
!3464 = !DILocation(line: 1276, column: 10, scope: !3460)
!3465 = !DILocation(line: 1276, column: 26, scope: !3460)
!3466 = !DILocation(line: 1276, column: 41, scope: !3460)
!3467 = !DILocation(line: 1276, column: 44, scope: !3460)
!3468 = !DILocation(line: 1276, column: 60, scope: !3460)
!3469 = !DILocation(line: 1276, column: 3, scope: !3460)
!3470 = distinct !DISubprogram(name: "gimple_ops", scope: !376, file: !376, line: 1614, type: !3471, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!815, !780}
!3473 = !{!3474, !3475}
!3474 = !DILocalVariable(name: "gs", arg: 1, scope: !3470, file: !376, line: 1614, type: !780)
!3475 = !DILocalVariable(name: "off", scope: !3470, file: !376, line: 1616, type: !926)
!3476 = !DILocation(line: 0, scope: !3470)
!3477 = !DILocation(line: 1621, column: 28, scope: !3470)
!3478 = !DILocation(line: 1621, column: 9, scope: !3470)
!3479 = !DILocation(line: 1622, column: 3, scope: !3470)
!3480 = !DILocation(line: 1624, column: 20, scope: !3470)
!3481 = !DILocation(line: 1624, column: 32, scope: !3470)
!3482 = !DILocation(line: 1624, column: 10, scope: !3470)
!3483 = !DILocation(line: 1624, column: 3, scope: !3470)
!3484 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !376, file: !376, line: 1073, type: !3485, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3487)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!414, !780}
!3487 = !{!3488}
!3488 = !DILocalVariable(name: "gs", arg: 1, scope: !3484, file: !376, line: 1073, type: !780)
!3489 = !DILocation(line: 0, scope: !3484)
!3490 = !DILocation(line: 1075, column: 24, scope: !3484)
!3491 = !DILocation(line: 1075, column: 10, scope: !3484)
!3492 = !DILocation(line: 1075, column: 3, scope: !3484)
!3493 = distinct !DISubprogram(name: "gss_for_code", scope: !376, file: !376, line: 1061, type: !3494, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3496)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!414, !375}
!3496 = !{!3497}
!3497 = !DILocalVariable(name: "code", arg: 1, scope: !3493, file: !376, line: 1061, type: !375)
!3498 = !DILocation(line: 0, scope: !3493)
!3499 = !DILocation(line: 1066, column: 10, scope: !3493)
!3500 = !DILocation(line: 1066, column: 3, scope: !3493)
!3501 = distinct !DISubprogram(name: "gimple_expr_code", scope: !376, file: !376, line: 1438, type: !3114, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3502)
!3502 = !{!3503, !3504}
!3503 = !DILocalVariable(name: "stmt", arg: 1, scope: !3501, file: !376, line: 1438, type: !3098)
!3504 = !DILocalVariable(name: "code", scope: !3501, file: !376, line: 1440, type: !375)
!3505 = !DILocation(line: 0, scope: !3501)
!3506 = !DILocation(line: 1440, column: 27, scope: !3501)
!3507 = !DILocation(line: 1441, column: 29, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3501, file: !376, line: 1441, column: 7)
!3509 = !DILocation(line: 1442, column: 42, scope: !3508)
!3510 = !DILocation(line: 1442, column: 5, scope: !3508)
!3511 = !DILocation(line: 1446, column: 5, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3508, file: !376, line: 1443, column: 12)
!3513 = !DILocation(line: 1448, column: 5, scope: !3501)
!3514 = !DILocation(line: 1450, column: 1, scope: !3501)
!3515 = distinct !DISubprogram(name: "gimple_num_ops", scope: !376, file: !376, line: 1596, type: !3516, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3518)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!5, !3098}
!3518 = !{!3519}
!3519 = !DILocalVariable(name: "gs", arg: 1, scope: !3515, file: !376, line: 1596, type: !3098)
!3520 = !DILocation(line: 0, scope: !3515)
!3521 = !DILocation(line: 1598, column: 21, scope: !3515)
!3522 = !DILocation(line: 1598, column: 3, scope: !3515)
!3523 = distinct !DISubprogram(name: "double_int_equal_p", scope: !506, file: !506, line: 176, type: !3524, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!448, !505, !505}
!3526 = !{!3527, !3528}
!3527 = !DILocalVariable(name: "cst1", arg: 1, scope: !3523, file: !506, line: 176, type: !505)
!3528 = !DILocalVariable(name: "cst2", arg: 2, scope: !3523, file: !506, line: 176, type: !505)
!3529 = !DILocation(line: 178, column: 19, scope: !3523)
!3530 = !DILocation(line: 178, column: 31, scope: !3523)
!3531 = !DILocation(line: 178, column: 44, scope: !3523)
!3532 = !DILocation(line: 178, column: 3, scope: !3523)
