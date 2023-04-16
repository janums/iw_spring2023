; ModuleID = 'c-objc-common.bc'
source_filename = "c-objc-common.c"
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
%union.section = type opaque
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
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, {}*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, %union.tree_node*, i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.lang_hooks_for_tree_inlining = type { i8 (%union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_callgraph = type { %union.tree_node* (%union.tree_node**, i32*)* }
%struct.lang_hooks_for_tree_dump = type { i8 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_hooks_for_decls = type { i32 ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, void ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)* }
%struct.lang_hooks_for_types = type { %union.tree_node* (i32)*, i32 (%union.tree_node*)*, %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, i8*)*, void (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%struct.gimplify_omp_ctx*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %struct.array_descr_info*)*, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i8 }
%struct.gimplify_omp_ctx = type opaque
%struct.array_descr_info = type opaque
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.expanded_location = type { i8*, i32, i32, i8 }
%struct.c_pretty_print_info = type { %struct.pretty_print_info, i32*, i32, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@flag_hosted = external dso_local local_unnamed_addr global i32, align 4
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@.str = private unnamed_addr constant [16 x i8] c"c-objc-common.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"({anonymous})\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1809 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1816, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1817, metadata !DIExpression()), !dbg !1818
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1819
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !1820
  ret i32 %call, !dbg !1821
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1822 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1826
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !1827
  ret i32 %call, !dbg !1828
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1829 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1833, metadata !DIExpression()), !dbg !1834
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1835
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1835
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1835
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1835
  %cmp = icmp uge i8* %0, %1, !dbg !1835
  %conv1 = zext i1 %cmp to i64, !dbg !1835
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1835
  %tobool = icmp eq i64 %expval, 0, !dbg !1835
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1835

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !1835
  br label %cond.end, !dbg !1835

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1835
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1835
  %2 = load i8, i8* %0, align 1, !dbg !1835
  %conv3 = zext i8 %2 to i32, !dbg !1835
  br label %cond.end, !dbg !1835

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1835
  ret i32 %cond, !dbg !1836
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1837 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1839, metadata !DIExpression()), !dbg !1840
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1841
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1841
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1841
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1841
  %cmp = icmp uge i8* %0, %1, !dbg !1841
  %conv1 = zext i1 %cmp to i64, !dbg !1841
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1841
  %tobool = icmp eq i64 %expval, 0, !dbg !1841
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1841

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !1841
  br label %cond.end, !dbg !1841

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1841
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1841
  %2 = load i8, i8* %0, align 1, !dbg !1841
  %conv3 = zext i8 %2 to i32, !dbg !1841
  br label %cond.end, !dbg !1841

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1841
  ret i32 %cond, !dbg !1842
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1843 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1844
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1844
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1844
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1844
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1844
  %cmp = icmp uge i8* %1, %2, !dbg !1844
  %conv1 = zext i1 %cmp to i64, !dbg !1844
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1844
  %tobool = icmp eq i64 %expval, 0, !dbg !1844
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1844

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !1844
  br label %cond.end, !dbg !1844

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1844
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1844
  %3 = load i8, i8* %1, align 1, !dbg !1844
  %conv3 = zext i8 %3 to i32, !dbg !1844
  br label %cond.end, !dbg !1844

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1844
  ret i32 %cond, !dbg !1845
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1846 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1850, metadata !DIExpression()), !dbg !1851
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1852
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !1853
  ret i32 %call, !dbg !1854
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1855 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1859, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1860, metadata !DIExpression()), !dbg !1861
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1862
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1862
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1862
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1862
  %cmp = icmp uge i8* %0, %1, !dbg !1862
  %conv1 = zext i1 %cmp to i64, !dbg !1862
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1862
  %tobool = icmp eq i64 %expval, 0, !dbg !1862
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1862

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1862
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !1862
  br label %cond.end, !dbg !1862

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1862
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1862
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1862
  store i8 %conv2, i8* %0, align 1, !dbg !1862
  %conv6 = and i32 %__c, 255, !dbg !1862
  br label %cond.end, !dbg !1862

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1862
  ret i32 %cond, !dbg !1863
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1864 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1866, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1867, metadata !DIExpression()), !dbg !1868
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1869
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1869
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1869
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1869
  %cmp = icmp uge i8* %0, %1, !dbg !1869
  %conv1 = zext i1 %cmp to i64, !dbg !1869
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1869
  %tobool = icmp eq i64 %expval, 0, !dbg !1869
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1869

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1869
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !1869
  br label %cond.end, !dbg !1869

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1869
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1869
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1869
  store i8 %conv2, i8* %0, align 1, !dbg !1869
  %conv6 = and i32 %__c, 255, !dbg !1869
  br label %cond.end, !dbg !1869

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1869
  ret i32 %cond, !dbg !1870
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1871 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1873, metadata !DIExpression()), !dbg !1874
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1875
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1875
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1875
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1875
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1875
  %cmp = icmp uge i8* %1, %2, !dbg !1875
  %conv1 = zext i1 %cmp to i64, !dbg !1875
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1875
  %tobool = icmp eq i64 %expval, 0, !dbg !1875
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1875

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1875
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !1875
  br label %cond.end, !dbg !1875

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1875
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1875
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1875
  store i8 %conv4, i8* %1, align 1, !dbg !1875
  %conv6 = and i32 %__c, 255, !dbg !1875
  br label %cond.end, !dbg !1875

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1875
  ret i32 %cond, !dbg !1876
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1877 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1883, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1884, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1885, metadata !DIExpression()), !dbg !1886
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !1887
  ret i64 %call, !dbg !1888
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1889 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1891, metadata !DIExpression()), !dbg !1892
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1893
  %0 = load i32, i32* %_flags, align 8, !dbg !1893
  %and = lshr i32 %0, 4, !dbg !1893
  %and.lobit = and i32 %and, 1, !dbg !1893
  ret i32 %and.lobit, !dbg !1894
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1895 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1897, metadata !DIExpression()), !dbg !1898
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1899
  %0 = load i32, i32* %_flags, align 8, !dbg !1899
  %and = lshr i32 %0, 5, !dbg !1899
  %and.lobit = and i32 %and, 1, !dbg !1899
  ret i32 %and.lobit, !dbg !1900
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1901 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1904, metadata !DIExpression()), !dbg !1905
  %__c.off = add i32 %__c, 128, !dbg !1906
  %0 = icmp ult i32 %__c.off, 384, !dbg !1906
  br i1 %0, label %cond.true, label %cond.end, !dbg !1906

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !1907
  %1 = load i32*, i32** %call, align 8, !dbg !1908
  %idxprom = sext i32 %__c to i64, !dbg !1909
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1909
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1909
  br label %cond.end, !dbg !1910

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1910
  ret i32 %cond, !dbg !1911
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1912 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1914, metadata !DIExpression()), !dbg !1915
  %__c.off = add i32 %__c, 128, !dbg !1916
  %0 = icmp ult i32 %__c.off, 384, !dbg !1916
  br i1 %0, label %cond.true, label %cond.end, !dbg !1916

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !1917
  %1 = load i32*, i32** %call, align 8, !dbg !1918
  %idxprom = sext i32 %__c to i64, !dbg !1919
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1919
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1919
  br label %cond.end, !dbg !1920

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1920
  ret i32 %cond, !dbg !1921
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1922 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1927, metadata !DIExpression()), !dbg !1928
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !1929
  %conv = trunc i64 %call to i32, !dbg !1930
  ret i32 %conv, !dbg !1931
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1932 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1936, metadata !DIExpression()), !dbg !1937
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !1938
  ret i64 %call, !dbg !1939
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1940 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1945, metadata !DIExpression()), !dbg !1946
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !1947
  ret i64 %call, !dbg !1948
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1949 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1955, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1956, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1957, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1958, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1959, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 0, metadata !1960, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1961, metadata !DIExpression()), !dbg !1965
  br label %while.cond, !dbg !1966

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1967
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1965
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1961, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1960, metadata !DIExpression()), !dbg !1965
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1968
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1966

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1969
  %div = lshr i64 %add, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %div, metadata !1962, metadata !DIExpression()), !dbg !1965
  %mul = mul i64 %div, %__size, !dbg !1972
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1973
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1963, metadata !DIExpression()), !dbg !1965
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %call, metadata !1964, metadata !DIExpression()), !dbg !1965
  %cmp1 = icmp slt i32 %call, 0, !dbg !1975
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1977

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1978
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1980

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1960, metadata !DIExpression()), !dbg !1965
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1965
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1965
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1961, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1960, metadata !DIExpression()), !dbg !1965
  br label %while.cond, !dbg !1966, !llvm.loop !1982

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1965
  ret i8* %retval.0, !dbg !1984
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1985 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1991, metadata !DIExpression()), !dbg !1992
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !1993
  ret double %call, !dbg !1994
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1995 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2004, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2005, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %base, metadata !2006, metadata !DIExpression()), !dbg !2007
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !2008
  ret i64 %call, !dbg !2009
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2010 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2016, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2017, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32 %base, metadata !2018, metadata !DIExpression()), !dbg !2019
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !2020
  ret i64 %call, !dbg !2021
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2022 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2033, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %base, metadata !2035, metadata !DIExpression()), !dbg !2036
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !2037
  ret i64 %call, !dbg !2038
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2039 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2043, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2044, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i32 %base, metadata !2045, metadata !DIExpression()), !dbg !2046
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !2047
  ret i64 %call, !dbg !2048
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2049 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2089, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2090, metadata !DIExpression()), !dbg !2091
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !2092
  ret i32 %call, !dbg !2093
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2094 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2096, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2097, metadata !DIExpression()), !dbg !2098
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !2099
  ret i32 %call, !dbg !2100
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2101 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2105, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2106, metadata !DIExpression()), !dbg !2107
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !2108
  ret i32 %call, !dbg !2109
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2110 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2114, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2115, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2116, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2117, metadata !DIExpression()), !dbg !2118
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !2119
  ret i32 %call, !dbg !2120
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2121 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2125, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2126, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2127, metadata !DIExpression()), !dbg !2128
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2127, metadata !DIExpression(DW_OP_deref)), !dbg !2128
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !2129
  ret i32 %call, !dbg !2130
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2131 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2135, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2136, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2138, metadata !DIExpression()), !dbg !2139
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2138, metadata !DIExpression(DW_OP_deref)), !dbg !2139
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !2140
  ret i32 %call, !dbg !2141
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2142 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2166, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2167, metadata !DIExpression()), !dbg !2168
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !2169
  ret i32 %call, !dbg !2170
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2171 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2173, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2174, metadata !DIExpression()), !dbg !2175
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !2176
  ret i32 %call, !dbg !2177
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2178 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2182, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2183, metadata !DIExpression()), !dbg !2184
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !2185
  ret i32 %call, !dbg !2186
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2187 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2191, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2192, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2193, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2194, metadata !DIExpression()), !dbg !2195
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !2196
  ret i32 %call, !dbg !2197
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @c_missing_noreturn_ok_p(%union.tree_node* %decl) local_unnamed_addr #3 !dbg !2198 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2202, metadata !DIExpression()), !dbg !2203
  %0 = load i32, i32* @flag_hosted, align 4, !dbg !2204
  %tobool = icmp eq i32 %0, 0, !dbg !2204
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2205

land.rhs:                                         ; preds = %entry
  %call = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #5, !dbg !2206
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 56), align 16, !dbg !2206
  %cmp = icmp eq %union.tree_node* %call, %1, !dbg !2206
  %phitmp = zext i1 %cmp to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %2 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !2207
}

declare dso_local %union.tree_node* @decl_assembler_name(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @c_warn_unused_global_decl(%union.tree_node* %decl) local_unnamed_addr #3 !dbg !2208 {
entry:
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2215, metadata !DIExpression()), !dbg !2216
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2217
  %bf.load = load i64, i64* %0, align 8, !dbg !2217
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2219
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !2219
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2220

land.lhs.true:                                    ; preds = %entry
  %declared_inline_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 5, !dbg !2221
  %bf.load1 = load i32, i32* %declared_inline_flag, align 8, !dbg !2221
  %bf.clear2 = and i32 %bf.load1, 2097152, !dbg !2221
  %tobool = icmp eq i32 %bf.clear2, 0, !dbg !2221
  br i1 %tobool, label %if.end, label %return, !dbg !2222

if.end:                                           ; preds = %land.lhs.true, %entry
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2223
  %1 = load i32, i32* %locus, align 8, !dbg !2223
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %1) #5, !dbg !2223
  %sysp = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 3, !dbg !2223
  %2 = load i8, i8* %sysp, align 8, !dbg !2223
  %cmp3 = icmp eq i8 %2, 0, !dbg !2223
  %. = zext i1 %cmp3 to i8, !dbg !2216
  br label %return, !dbg !2216

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i8 [ 0, %land.lhs.true ], [ %., %if.end ], !dbg !2216
  ret i8 %retval.0, !dbg !2225
}

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @c_objc_common_init() local_unnamed_addr #3 !dbg !2226 {
entry:
  tail call void @c_init_decl_processing() #5, !dbg !2229
  %call = tail call zeroext i8 @c_common_init() #5, !dbg !2230
  %cmp = icmp eq i8 %call, 0, !dbg !2232
  br i1 %cmp, label %return, label %if.end, !dbg !2233

if.end:                                           ; preds = %entry
  %0 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2234
  %printer = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 0, !dbg !2234
  %1 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !2234
  %format_decoder = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %1, i64 0, i32 6, !dbg !2234
  %format_decoder2 = bitcast {}** %format_decoder to i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)**, !dbg !2234
  store i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)* @c_tree_printer, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)** %format_decoder2, align 8, !dbg !2235
  br label %return, !dbg !2236

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ 1, %if.end ], [ 0, %entry ], !dbg !2237
  ret i8 %retval.0, !dbg !2238
}

declare dso_local void @c_init_decl_processing() local_unnamed_addr #1

declare dso_local zeroext i8 @c_common_init() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @c_tree_printer(%struct.pretty_print_info* %pp, %struct.text_info* %text, i8* %spec, i32 %precision, i8 zeroext %wide, i8 zeroext %set_locus, i8 zeroext %hash) #3 !dbg !2239 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2241, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata %struct.text_info* %text, metadata !2242, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8* %spec, metadata !2243, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i32 %precision, metadata !2244, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %wide, metadata !2245, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %set_locus, metadata !2246, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %hash, metadata !2247, metadata !DIExpression()), !dbg !2251
  %args_ptr = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 1, !dbg !2252
  %0 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr, align 8, !dbg !2252
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %0, i64 0, i64 0, i32 0, !dbg !2252
  %gp_offset = load i32, i32* %gp_offset_p, align 8, !dbg !2252
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !2252
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2252

vaarg.in_reg:                                     ; preds = %entry
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %0, i64 0, i64 0, i32 3, !dbg !2252
  %reg_save_area = load i8*, i8** %1, align 8, !dbg !2252
  %2 = sext i32 %gp_offset to i64, !dbg !2252
  %3 = getelementptr i8, i8* %reg_save_area, i64 %2, !dbg !2252
  %4 = add i32 %gp_offset, 8, !dbg !2252
  store i32 %4, i32* %gp_offset_p, align 8, !dbg !2252
  br label %vaarg.end, !dbg !2252

vaarg.in_mem:                                     ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %0, i64 0, i64 0, i32 2, !dbg !2252
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !2252
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !2252
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !2252
  br label %vaarg.end, !dbg !2252

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %3, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to %union.tree_node**, !dbg !2252
  %5 = load %union.tree_node*, %union.tree_node** %vaarg.addr, align 8, !dbg !2252
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !2248, metadata !DIExpression()), !dbg !2251
  %6 = bitcast %struct.pretty_print_info* %pp to %struct.c_pretty_print_info*, !dbg !2253
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %6, metadata !2250, metadata !DIExpression()), !dbg !2251
  %padding = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 2, !dbg !2254
  store i32 0, i32* %padding, align 8, !dbg !2255
  %cmp = icmp ne i32 %precision, 0, !dbg !2256
  %7 = or i8 %wide, %hash, !dbg !2258
  %8 = icmp ne i8 %7, 0, !dbg !2258
  %9 = or i1 %8, %cmp, !dbg !2258
  br i1 %9, label %cleanup, label %if.end, !dbg !2258

if.end:                                           ; preds = %vaarg.end
  %tobool5 = icmp eq i8 %set_locus, 0, !dbg !2259
  br i1 %tobool5, label %if.end10, label %land.lhs.true, !dbg !2261

land.lhs.true:                                    ; preds = %if.end
  %locus = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 3, !dbg !2262
  %10 = load i32*, i32** %locus, align 8, !dbg !2262
  %tobool6 = icmp eq i32* %10, null, !dbg !2263
  br i1 %tobool6, label %if.end10, label %if.then7, !dbg !2264

if.then7:                                         ; preds = %land.lhs.true
  %locus8 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2265
  %11 = load i32, i32* %locus8, align 8, !dbg !2265
  store i32 %11, i32* %10, align 4, !dbg !2266
  br label %if.end10, !dbg !2267

if.end10:                                         ; preds = %land.lhs.true, %if.end, %if.then7
  %12 = load i8, i8* %spec, align 1, !dbg !2268
  %conv11 = sext i8 %12 to i32, !dbg !2268
  switch i32 %conv11, label %cleanup [
    i32 68, label %sw.bb
    i32 70, label %sw.bb25
    i32 84, label %sw.bb38
    i32 69, label %sw.bb80
  ], !dbg !2269

sw.bb:                                            ; preds = %if.end10
  %debug_expr_is_from = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2270
  %13 = bitcast i40* %debug_expr_is_from to i64*, !dbg !2270
  %bf.load = load i64, i64* %13, align 8, !dbg !2270
  %bf.cast4 = and i64 %bf.load, 16384, !dbg !2270
  %tobool12 = icmp eq i64 %bf.cast4, 0, !dbg !2270
  br i1 %tobool12, label %sw.bb25, label %land.lhs.true13, !dbg !2273

land.lhs.true13:                                  ; preds = %sw.bb
  %call = tail call %union.tree_node* @decl_debug_expr_lookup(%union.tree_node* %5) #5, !dbg !2274
  %tobool14 = icmp eq %union.tree_node* %call, null, !dbg !2274
  br i1 %tobool14, label %sw.bb25, label %if.then15, !dbg !2275

if.then15:                                        ; preds = %land.lhs.true13
  %call16 = tail call %union.tree_node* @decl_debug_expr_lookup(%union.tree_node* %5) #5, !dbg !2276
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !2248, metadata !DIExpression()), !dbg !2251
  %14 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2278
  %bf.load17 = load i64, i64* %14, align 8, !dbg !2278
  %bf.cast19 = and i64 %bf.load17, 65535, !dbg !2278
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast19, !dbg !2278
  %15 = load i32, i32* %arrayidx, align 4, !dbg !2278
  %cmp20 = icmp eq i32 %15, 3, !dbg !2278
  br i1 %cmp20, label %sw.bb25, label %if.then22, !dbg !2280

if.then22:                                        ; preds = %if.then15
  tail call void @pp_c_expression(%struct.c_pretty_print_info* %6, %union.tree_node* %call16) #5, !dbg !2281
  br label %cleanup, !dbg !2283

sw.bb25:                                          ; preds = %land.lhs.true13, %sw.bb, %if.then15, %if.end10
  %t.1 = phi %union.tree_node* [ %5, %if.end10 ], [ %5, %land.lhs.true13 ], [ %5, %sw.bb ], [ %call16, %if.then15 ], !dbg !2251
  call void @llvm.dbg.value(metadata %union.tree_node* %t.1, metadata !2248, metadata !DIExpression()), !dbg !2251
  %name27 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2284
  %16 = load %union.tree_node*, %union.tree_node** %name27, align 8, !dbg !2284
  %tobool28 = icmp eq %union.tree_node* %16, null, !dbg !2284
  br i1 %tobool28, label %sw.epilog, label %if.then29, !dbg !2286

if.then29:                                        ; preds = %sw.bb25
  %translate_identifiers = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 9, !dbg !2287
  %17 = load i8, i8* %translate_identifiers, align 2, !dbg !2287
  %tobool33 = icmp eq i8 %17, 0, !dbg !2287
  %18 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !2287
  %call34 = tail call i8* %18(%union.tree_node* %t.1, i32 2) #5, !dbg !2287
  br i1 %tobool33, label %cond.end, label %cond.true, !dbg !2287

cond.true:                                        ; preds = %if.then29
  %call35 = tail call i8* @identifier_to_locale(i8* %call34) #5, !dbg !2287
  br label %cond.end, !dbg !2287

cond.end:                                         ; preds = %if.then29, %cond.true
  %cond = phi i8* [ %call35, %cond.true ], [ %call34, %if.then29 ], !dbg !2287
  tail call void @pp_base_string(%struct.pretty_print_info* %pp, i8* %cond) #5, !dbg !2287
  br label %cleanup, !dbg !2289

sw.bb38:                                          ; preds = %if.end10
  %19 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2290
  %bf.load40 = load i64, i64* %19, align 8, !dbg !2290
  %bf.cast42 = and i64 %bf.load40, 65535, !dbg !2290
  %arrayidx44 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast42, !dbg !2290
  %20 = load i32, i32* %arrayidx44, align 4, !dbg !2290
  %cmp45 = icmp eq i32 %20, 2, !dbg !2290
  br i1 %cmp45, label %cond.end49, label %cond.true47, !dbg !2290

cond.true47:                                      ; preds = %sw.bb38
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !2290
  br label %cond.end49, !dbg !2290

cond.end49:                                       ; preds = %sw.bb38, %cond.true47
  %21 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !2291
  %22 = load %union.tree_node*, %union.tree_node** %21, align 8, !dbg !2291
  call void @llvm.dbg.value(metadata %union.tree_node* %22, metadata !2249, metadata !DIExpression()), !dbg !2251
  %tobool52 = icmp eq %union.tree_node* %22, null, !dbg !2292
  br i1 %tobool52, label %if.else78, label %land.lhs.true53, !dbg !2294

land.lhs.true53:                                  ; preds = %cond.end49
  %23 = getelementptr inbounds %union.tree_node, %union.tree_node* %22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2295
  %bf.load55 = load i64, i64* %23, align 8, !dbg !2295
  %bf.cast573 = and i64 %bf.load55, 65535, !dbg !2296
  %cmp58 = icmp eq i64 %bf.cast573, 35, !dbg !2296
  br i1 %cmp58, label %if.then60, label %if.else78, !dbg !2297

if.then60:                                        ; preds = %land.lhs.true53
  %name62 = getelementptr inbounds %union.tree_node, %union.tree_node* %22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2298
  %24 = load %union.tree_node*, %union.tree_node** %name62, align 8, !dbg !2298
  %tobool63 = icmp eq %union.tree_node* %24, null, !dbg !2298
  br i1 %tobool63, label %if.else, label %if.then64, !dbg !2301

if.then64:                                        ; preds = %if.then60
  %translate_identifiers67 = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 9, !dbg !2302
  %25 = load i8, i8* %translate_identifiers67, align 2, !dbg !2302
  %tobool69 = icmp eq i8 %25, 0, !dbg !2302
  %26 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !2302
  %call71 = tail call i8* %26(%union.tree_node* nonnull %22, i32 2) #5, !dbg !2302
  br i1 %tobool69, label %cond.end75, label %cond.true70, !dbg !2302

cond.true70:                                      ; preds = %if.then64
  %call72 = tail call i8* @identifier_to_locale(i8* %call71) #5, !dbg !2302
  br label %cond.end75, !dbg !2302

cond.end75:                                       ; preds = %if.then64, %cond.true70
  %cond76 = phi i8* [ %call72, %cond.true70 ], [ %call71, %if.then64 ], !dbg !2302
  tail call void @pp_base_string(%struct.pretty_print_info* %pp, i8* %cond76) #5, !dbg !2302
  br label %cleanup, !dbg !2302

if.else:                                          ; preds = %if.then60
  %type_id = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 2, i32 5, i32 1, !dbg !2303
  %27 = bitcast i32* %type_id to void (%struct.c_pretty_print_info*, %union.tree_node*)**, !dbg !2303
  %28 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %27, align 8, !dbg !2303
  tail call void %28(%struct.c_pretty_print_info* %6, %union.tree_node* %5) #5, !dbg !2303
  br label %cleanup

if.else78:                                        ; preds = %cond.end49, %land.lhs.true53
  %type_id79 = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 2, i32 5, i32 1, !dbg !2304
  %29 = bitcast i32* %type_id79 to void (%struct.c_pretty_print_info*, %union.tree_node*)**, !dbg !2304
  %30 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %29, align 8, !dbg !2304
  tail call void %30(%struct.c_pretty_print_info* %6, %union.tree_node* %5) #5, !dbg !2304
  br label %cleanup, !dbg !2306

sw.bb80:                                          ; preds = %if.end10
  %31 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2307
  %bf.load82 = load i64, i64* %31, align 8, !dbg !2307
  %bf.cast842 = and i64 %bf.load82, 65535, !dbg !2309
  %cmp85 = icmp eq i64 %bf.cast842, 1, !dbg !2309
  br i1 %cmp85, label %if.then87, label %if.else101, !dbg !2310

if.then87:                                        ; preds = %sw.bb80
  %translate_identifiers90 = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 9, !dbg !2311
  %32 = load i8, i8* %translate_identifiers90, align 2, !dbg !2311
  %tobool92 = icmp eq i8 %32, 0, !dbg !2311
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2311
  %str = bitcast i32* %id to i8**, !dbg !2311
  %33 = load i8*, i8** %str, align 8, !dbg !2311
  br i1 %tobool92, label %cond.end99, label %cond.true93, !dbg !2311

cond.true93:                                      ; preds = %if.then87
  %call94 = tail call i8* @identifier_to_locale(i8* %33) #5, !dbg !2311
  br label %cond.end99, !dbg !2311

cond.end99:                                       ; preds = %if.then87, %cond.true93
  %cond100 = phi i8* [ %call94, %cond.true93 ], [ %33, %if.then87 ], !dbg !2311
  tail call void @pp_base_string(%struct.pretty_print_info* %pp, i8* %cond100) #5, !dbg !2311
  br label %cleanup, !dbg !2311

if.else101:                                       ; preds = %sw.bb80
  %expression = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 4, i32 5, i32 1, !dbg !2312
  %34 = bitcast i32* %expression to void (%struct.c_pretty_print_info*, %union.tree_node*)**, !dbg !2312
  %35 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %34, align 8, !dbg !2312
  tail call void %35(%struct.c_pretty_print_info* %6, %union.tree_node* %5) #5, !dbg !2312
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb25
  tail call void @pp_base_string(%struct.pretty_print_info* %pp, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !2313
  br label %cleanup, !dbg !2314

cleanup:                                          ; preds = %if.end10, %cond.end99, %if.else101, %cond.end75, %if.else, %vaarg.end, %sw.epilog, %if.else78, %cond.end, %if.then22
  %retval.0 = phi i8 [ 1, %if.else78 ], [ 1, %cond.end ], [ 1, %sw.epilog ], [ 1, %if.then22 ], [ 0, %vaarg.end ], [ 1, %if.else ], [ 1, %cond.end75 ], [ 1, %if.else101 ], [ 1, %cond.end99 ], [ 0, %if.end10 ], !dbg !2251
  ret i8 %retval.0, !dbg !2315
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @has_c_linkage(%union.tree_node* %decl) local_unnamed_addr #3 !dbg !2316 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2318, metadata !DIExpression()), !dbg !2319
  ret i8 1, !dbg !2320
}

; Function Attrs: nounwind uwtable
define dso_local void @c_initialize_diagnostics(%struct.diagnostic_context* %context) local_unnamed_addr #3 !dbg !2321 {
entry:
  call void @llvm.dbg.value(metadata %struct.diagnostic_context* %context, metadata !2380, metadata !DIExpression()), !dbg !2383
  %0 = bitcast %struct.diagnostic_context* %context to i8**, !dbg !2384
  %1 = load i8*, i8** %0, align 8, !dbg !2384
  %call = tail call i8* @xmalloc(i64 264) #5, !dbg !2385
  %2 = bitcast i8* %call to %struct.c_pretty_print_info*, !dbg !2385
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %2, metadata !2382, metadata !DIExpression()), !dbg !2383
  %call2 = tail call i8* @memcpy(i8* %call, i8* %1, i64 56) #5, !dbg !2386
  tail call void @pp_c_pretty_printer_init(%struct.c_pretty_print_info* %2) #5, !dbg !2387
  %3 = bitcast %struct.diagnostic_context* %context to i8**, !dbg !2388
  store i8* %call, i8** %3, align 8, !dbg !2388
  tail call void @free(i8* %1) #5, !dbg !2389
  ret void, !dbg !2390
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local void @pp_c_pretty_printer_init(%struct.c_pretty_print_info*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @c_types_compatible_p(%union.tree_node* %x, %union.tree_node* %y) local_unnamed_addr #3 !dbg !2391 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %x, metadata !2395, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata %union.tree_node* %y, metadata !2396, metadata !DIExpression()), !dbg !2397
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %x, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2398
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2398
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %y, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2399
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !2399
  %call = tail call i32 @comptypes(%union.tree_node* %1, %union.tree_node* %3) #5, !dbg !2400
  ret i32 %call, !dbg !2401
}

declare dso_local i32 @comptypes(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @c_vla_unspec_p(%union.tree_node* %x, %union.tree_node* %fn) local_unnamed_addr #3 !dbg !2402 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %x, metadata !2406, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata %union.tree_node* %fn, metadata !2407, metadata !DIExpression()), !dbg !2408
  %call = tail call zeroext i8 @c_vla_type_p(%union.tree_node* %x) #5, !dbg !2409
  ret i8 %call, !dbg !2410
}

declare dso_local zeroext i8 @c_vla_type_p(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @decl_debug_expr_lookup(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @pp_c_expression(%struct.c_pretty_print_info*, %union.tree_node*) local_unnamed_addr #1

declare dso_local void @pp_base_string(%struct.pretty_print_info*, i8*) local_unnamed_addr #1

declare dso_local i8* @identifier_to_locale(i8*) local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1805, !1806, !1807}
!llvm.ident = !{!1808}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !402, nameTableKind: None)
!1 = !DIFile(filename: "c-objc-common.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !327, !333, !338, !343, !361, !368, !375, !381, !386}
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
!375 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !376, line: 104, baseType: !5, size: 32, elements: !377)
!376 = !DIFile(filename: "./pretty-print.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!377 = !{!378, !379, !380}
!378 = !DIEnumerator(name: "pp_none", value: 0, isUnsigned: true)
!379 = !DIEnumerator(name: "pp_before", value: 1, isUnsigned: true)
!380 = !DIEnumerator(name: "pp_after", value: 2, isUnsigned: true)
!381 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !376, line: 46, baseType: !5, size: 32, elements: !382)
!382 = !{!383, !384, !385}
!383 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_ONCE", value: 0, isUnsigned: true)
!384 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_NEVER", value: 1, isUnsigned: true)
!385 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE", value: 2, isUnsigned: true)
!386 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !387, line: 29, baseType: !5, size: 32, elements: !388)
!387 = !DIFile(filename: "./diagnostic.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!389 = !DIEnumerator(name: "DK_UNSPECIFIED", value: 0, isUnsigned: true)
!390 = !DIEnumerator(name: "DK_IGNORED", value: 1, isUnsigned: true)
!391 = !DIEnumerator(name: "DK_FATAL", value: 2, isUnsigned: true)
!392 = !DIEnumerator(name: "DK_ICE", value: 3, isUnsigned: true)
!393 = !DIEnumerator(name: "DK_ERROR", value: 4, isUnsigned: true)
!394 = !DIEnumerator(name: "DK_SORRY", value: 5, isUnsigned: true)
!395 = !DIEnumerator(name: "DK_WARNING", value: 6, isUnsigned: true)
!396 = !DIEnumerator(name: "DK_ANACHRONISM", value: 7, isUnsigned: true)
!397 = !DIEnumerator(name: "DK_NOTE", value: 8, isUnsigned: true)
!398 = !DIEnumerator(name: "DK_DEBUG", value: 9, isUnsigned: true)
!399 = !DIEnumerator(name: "DK_PEDWARN", value: 10, isUnsigned: true)
!400 = !DIEnumerator(name: "DK_PERMERROR", value: 11, isUnsigned: true)
!401 = !DIEnumerator(name: "DK_LAST_DIAGNOSTIC_KIND", value: 12, isUnsigned: true)
!402 = !{!403, !404, !405, !406, !409, !410, !132, !412, !552}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!405 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "c_pretty_printer", file: !414, line: 38, baseType: !415)
!414 = !DIFile(filename: "./c-pretty-print.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "c_pretty_print_info", file: !414, line: 54, size: 2112, elements: !416)
!416 = !{!417, !1773, !1775, !1777, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !415, file: !414, line: 56, baseType: !418, size: 448)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "pretty_printer", file: !376, line: 134, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pretty_print_info", file: !376, line: 158, size: 448, elements: !420)
!420 = !{!421, !535, !536, !538, !539, !540, !547, !1770, !1771, !1772}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !419, file: !376, line: 161, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_buffer", file: !376, line: 99, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 74, size: 2688, elements: !425)
!425 = !{!426, !459, !460, !462, !471, !530, !531}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "formatted_obstack", scope: !424, file: !376, line: 77, baseType: !427, size: 704)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !428, line: 164, size: 704, elements: !429)
!428 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!429 = !{!430, !432, !442, !443, !444, !445, !446, !447, !451, !455, !456, !457, !458}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !427, file: !428, line: 166, baseType: !431, size: 64)
!431 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !427, file: !428, line: 167, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !428, line: 157, size: 192, elements: !435)
!435 = !{!436, !437, !438}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !434, file: !428, line: 159, baseType: !407, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !434, file: !428, line: 160, baseType: !433, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !434, file: !428, line: 161, baseType: !439, size: 32, offset: 128)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 32, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 4)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !427, file: !428, line: 168, baseType: !407, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !427, file: !428, line: 169, baseType: !407, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !427, file: !428, line: 170, baseType: !407, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !427, file: !428, line: 171, baseType: !431, size: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !427, file: !428, line: 172, baseType: !405, size: 32, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !427, file: !428, line: 176, baseType: !448, size: 64, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!433, !409, !431}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !427, file: !428, line: 177, baseType: !452, size: 64, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !409, !433}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !427, file: !428, line: 178, baseType: !409, size: 64, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !427, file: !428, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !427, file: !428, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !427, file: !428, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_obstack", scope: !424, file: !376, line: 81, baseType: !427, size: 704, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !424, file: !376, line: 85, baseType: !461, size: 64, offset: 1408)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chunk_array", scope: !424, file: !376, line: 88, baseType: !463, size: 64, offset: 1472)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunk_info", file: !376, line: 58, size: 3904, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !464, file: !376, line: 61, baseType: !463, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !464, file: !376, line: 69, baseType: !468, size: 3840, offset: 64)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 3840, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 60)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !424, file: !376, line: 91, baseType: !472, size: 64, offset: 1536)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !474, line: 7, baseType: !475)
!474 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !476, line: 49, size: 1728, elements: !477)
!476 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !493, !495, !496, !497, !500, !502, !504, !508, !511, !513, !516, !519, !520, !521, !525, !526}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !475, file: !476, line: 51, baseType: !405, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !475, file: !476, line: 54, baseType: !407, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !475, file: !476, line: 55, baseType: !407, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !475, file: !476, line: 56, baseType: !407, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !475, file: !476, line: 57, baseType: !407, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !475, file: !476, line: 58, baseType: !407, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !475, file: !476, line: 59, baseType: !407, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !475, file: !476, line: 60, baseType: !407, size: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !475, file: !476, line: 61, baseType: !407, size: 64, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !475, file: !476, line: 64, baseType: !407, size: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !475, file: !476, line: 65, baseType: !407, size: 64, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !475, file: !476, line: 66, baseType: !407, size: 64, offset: 704)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !475, file: !476, line: 68, baseType: !491, size: 64, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !476, line: 36, flags: DIFlagFwdDecl)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !475, file: !476, line: 70, baseType: !494, size: 64, offset: 832)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !475, file: !476, line: 72, baseType: !405, size: 32, offset: 896)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !475, file: !476, line: 73, baseType: !405, size: 32, offset: 928)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !475, file: !476, line: 74, baseType: !498, size: 64, offset: 960)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !499, line: 152, baseType: !431)
!499 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !475, file: !476, line: 77, baseType: !501, size: 16, offset: 1024)
!501 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !475, file: !476, line: 78, baseType: !503, size: 8, offset: 1040)
!503 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !475, file: !476, line: 79, baseType: !505, size: 8, offset: 1048)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 8, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 1)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !475, file: !476, line: 81, baseType: !509, size: 64, offset: 1088)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !476, line: 43, baseType: null)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !475, file: !476, line: 89, baseType: !512, size: 64, offset: 1152)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !499, line: 153, baseType: !431)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !475, file: !476, line: 91, baseType: !514, size: 64, offset: 1216)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !476, line: 37, flags: DIFlagFwdDecl)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !475, file: !476, line: 92, baseType: !517, size: 64, offset: 1280)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !476, line: 38, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !475, file: !476, line: 93, baseType: !494, size: 64, offset: 1344)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !475, file: !476, line: 94, baseType: !409, size: 64, offset: 1408)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !475, file: !476, line: 95, baseType: !522, size: 64, offset: 1472)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !523, line: 46, baseType: !524)
!523 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!524 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !475, file: !476, line: 96, baseType: !405, size: 32, offset: 1536)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !475, file: !476, line: 98, baseType: !527, size: 160, offset: 1568)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 160, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 20)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !424, file: !376, line: 94, baseType: !405, size: 32, offset: 1600)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "digit_buffer", scope: !424, file: !376, line: 98, baseType: !532, size: 1024, offset: 1632)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 1024, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !419, file: !376, line: 164, baseType: !410, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !419, file: !376, line: 167, baseType: !537, size: 32, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_padding", file: !376, line: 107, baseType: !375)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_length", scope: !419, file: !376, line: 171, baseType: !405, size: 32, offset: 160)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "indent_skip", scope: !419, file: !376, line: 174, baseType: !405, size: 32, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "wrapping", scope: !419, file: !376, line: 177, baseType: !541, size: 64, offset: 224)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_wrapping_mode_t", file: !376, line: 119, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 111, size: 64, elements: !543)
!543 = !{!544, !546}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "rule", scope: !542, file: !376, line: 114, baseType: !545, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_prefixing_rule_t", file: !376, line: 51, baseType: !381)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "line_cutoff", scope: !542, file: !376, line: 118, baseType: !405, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "format_decoder", scope: !419, file: !376, line: 187, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "printer_fn", file: !376, line: 135, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!404, !552, !553, !410, !405, !404, !404, !404}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "text_info", file: !376, line: 39, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 32, size: 320, elements: !556)
!556 = !{!557, !558, !572, !573, !579}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "format_spec", scope: !555, file: !376, line: 34, baseType: !410, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "args_ptr", scope: !555, file: !376, line: 35, baseType: !559, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !561, line: 52, baseType: !562)
!561 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !563, line: 32, baseType: !564)
!563 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 173, baseType: !565)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 192, elements: !506)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !567)
!567 = !{!568, !569, !570, !571}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !566, file: !1, baseType: !5, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !566, file: !1, baseType: !5, size: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !566, file: !1, baseType: !409, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !566, file: !1, baseType: !409, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "err_no", scope: !555, file: !376, line: 36, baseType: !405, size: 32, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !555, file: !376, line: 37, baseType: !574, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !576, line: 58, baseType: !577)
!576 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !578, line: 44, baseType: !5)
!578 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!579 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !555, file: !376, line: 38, baseType: !580, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !582, line: 56, baseType: !583)
!582 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !133, line: 3371, size: 1792, elements: !585)
!585 = !{!586, !619, !625, !636, !655, !666, !671, !677, !683, !696, !704, !742, !1167, !1195, !1203, !1204, !1209, !1218, !1224, !1229, !1233, !1237, !1413, !1460, !1466, !1472, !1479, !1490, !1515, !1532, !1544, !1566, !1581, !1752}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !584, file: !133, line: 3372, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !133, line: 360, size: 64, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !587, file: !133, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !587, file: !133, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !587, file: !133, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !587, file: !133, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !587, file: !133, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !587, file: !133, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !587, file: !133, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !587, file: !133, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !587, file: !133, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !587, file: !133, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !587, file: !133, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !587, file: !133, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !587, file: !133, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !587, file: !133, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !587, file: !133, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !587, file: !133, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !587, file: !133, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !587, file: !133, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !587, file: !133, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !587, file: !133, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !587, file: !133, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !587, file: !133, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !587, file: !133, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !587, file: !133, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !587, file: !133, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !587, file: !133, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !587, file: !133, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !587, file: !133, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !587, file: !133, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !587, file: !133, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !584, file: !133, line: 3373, baseType: !620, size: 192)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !133, line: 402, size: 192, elements: !621)
!621 = !{!622, !623, !624}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !620, file: !133, line: 403, baseType: !587, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !620, file: !133, line: 404, baseType: !581, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !133, line: 405, baseType: !581, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !584, file: !133, line: 3374, baseType: !626, size: 320)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !133, line: 1384, size: 320, elements: !627)
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !626, file: !133, line: 1385, baseType: !620, size: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !626, file: !133, line: 1386, baseType: !630, size: 128, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !631, line: 58, baseType: !632)
!631 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !631, line: 54, size: 128, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !632, file: !631, line: 56, baseType: !524, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !632, file: !631, line: 57, baseType: !431, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !584, file: !133, line: 3375, baseType: !637, size: 256)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !133, line: 1397, size: 256, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !637, file: !133, line: 1398, baseType: !620, size: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !637, file: !133, line: 1399, baseType: !641, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !643, line: 52, size: 256, elements: !644)
!643 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!644 = !{!645, !646, !647, !648, !649, !650, !651}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !642, file: !643, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !642, file: !643, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !642, file: !643, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !642, file: !643, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !642, file: !643, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !642, file: !643, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !642, file: !643, line: 62, baseType: !652, size: 192, offset: 64)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 192, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 3)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !584, file: !133, line: 3376, baseType: !656, size: 256)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !133, line: 1408, size: 256, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !656, file: !133, line: 1409, baseType: !620, size: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !656, file: !133, line: 1410, baseType: !660, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !662, line: 27, size: 192, elements: !663)
!662 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !661, file: !662, line: 29, baseType: !630, size: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !661, file: !662, line: 30, baseType: !3, size: 32, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !584, file: !133, line: 3377, baseType: !667, size: 256)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !133, line: 1437, size: 256, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !667, file: !133, line: 1438, baseType: !620, size: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !667, file: !133, line: 1439, baseType: !581, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !584, file: !133, line: 3378, baseType: !672, size: 256)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !133, line: 1418, size: 256, elements: !673)
!673 = !{!674, !675, !676}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !672, file: !133, line: 1419, baseType: !620, size: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !672, file: !133, line: 1420, baseType: !405, size: 32, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !672, file: !133, line: 1421, baseType: !505, size: 8, offset: 224)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !584, file: !133, line: 3379, baseType: !678, size: 320)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !133, line: 1428, size: 320, elements: !679)
!679 = !{!680, !681, !682}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !678, file: !133, line: 1429, baseType: !620, size: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !678, file: !133, line: 1430, baseType: !581, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !678, file: !133, line: 1431, baseType: !581, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !584, file: !133, line: 3380, baseType: !684, size: 320)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !133, line: 1460, size: 320, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !684, file: !133, line: 1461, baseType: !620, size: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !684, file: !133, line: 1462, baseType: !688, size: 128, offset: 192)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !689, line: 31, size: 128, elements: !690)
!689 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!690 = !{!691, !694, !695}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !688, file: !689, line: 32, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !688, file: !689, line: 33, baseType: !5, size: 32, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !688, file: !689, line: 34, baseType: !5, size: 32, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !584, file: !133, line: 3381, baseType: !697, size: 384)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !133, line: 2507, size: 384, elements: !698)
!698 = !{!699, !700, !701, !702, !703}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !697, file: !133, line: 2508, baseType: !620, size: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !697, file: !133, line: 2509, baseType: !575, size: 32, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !697, file: !133, line: 2510, baseType: !5, size: 32, offset: 224)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !697, file: !133, line: 2511, baseType: !581, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !697, file: !133, line: 2512, baseType: !581, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !584, file: !133, line: 3382, baseType: !705, size: 896)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !133, line: 2652, size: 896, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !705, file: !133, line: 2653, baseType: !697, size: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !705, file: !133, line: 2654, baseType: !581, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !705, file: !133, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !705, file: !133, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !705, file: !133, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !705, file: !133, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !705, file: !133, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !705, file: !133, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !705, file: !133, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !705, file: !133, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !705, file: !133, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !705, file: !133, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !705, file: !133, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !705, file: !133, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !705, file: !133, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !705, file: !133, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !705, file: !133, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !705, file: !133, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !705, file: !133, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !705, file: !133, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !705, file: !133, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !705, file: !133, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !705, file: !133, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !705, file: !133, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !705, file: !133, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !705, file: !133, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !705, file: !133, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !705, file: !133, line: 2703, baseType: !5, size: 32, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !705, file: !133, line: 2705, baseType: !581, size: 64, offset: 576)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !705, file: !133, line: 2706, baseType: !581, size: 64, offset: 640)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !705, file: !133, line: 2707, baseType: !581, size: 64, offset: 704)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !705, file: !133, line: 2708, baseType: !581, size: 64, offset: 768)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !705, file: !133, line: 2711, baseType: !740, size: 64, offset: 832)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !133, line: 2711, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !584, file: !133, line: 3383, baseType: !743, size: 960)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !133, line: 2756, size: 960, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !743, file: !133, line: 2757, baseType: !705, size: 896)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !743, file: !133, line: 2758, baseType: !747, size: 64, offset: 896)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !582, line: 50, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !750, line: 240, size: 384, elements: !751)
!750 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !749, file: !750, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !749, file: !750, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !749, file: !750, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !749, file: !750, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !749, file: !750, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !749, file: !750, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !749, file: !750, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !749, file: !750, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !749, file: !750, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !749, file: !750, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !749, file: !750, line: 321, baseType: !763, size: 320, offset: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !750, line: 315, size: 320, elements: !764)
!764 = !{!765, !1134, !1136, !1165, !1166}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !763, file: !750, line: 316, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, size: 64, elements: !506)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !750, line: 183, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !750, line: 166, size: 64, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !782, !783, !795, !798, !827, !828, !1111, !1124, !1131}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !768, file: !750, line: 168, baseType: !405, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !768, file: !750, line: 169, baseType: !5, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !768, file: !750, line: 170, baseType: !410, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !768, file: !750, line: 171, baseType: !747, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !768, file: !750, line: 172, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !582, line: 53, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !750, line: 359, size: 128, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !777, file: !750, line: 360, baseType: !405, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !777, file: !750, line: 361, baseType: !781, size: 64, offset: 64)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 64, elements: !506)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !768, file: !750, line: 173, baseType: !3, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !768, file: !750, line: 174, baseType: !784, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !750, line: 133, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !750, line: 115, size: 32, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !785, file: !750, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !785, file: !750, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !785, file: !750, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !785, file: !750, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !785, file: !750, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !785, file: !750, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !785, file: !750, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !785, file: !750, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !768, file: !750, line: 175, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !750, line: 175, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !768, file: !750, line: 176, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !801, line: 75, size: 256, elements: !802)
!801 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!802 = !{!803, !817, !818, !819}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !800, file: !801, line: 76, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !801, line: 68, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !801, line: 63, size: 320, elements: !807)
!807 = !{!808, !810, !811, !812}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !806, file: !801, line: 64, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !806, file: !801, line: 65, baseType: !809, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !806, file: !801, line: 66, baseType: !5, size: 32, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !806, file: !801, line: 67, baseType: !813, size: 128, offset: 192)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 128, elements: !815)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !801, line: 29, baseType: !524)
!815 = !{!816}
!816 = !DISubrange(count: 2)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !800, file: !801, line: 77, baseType: !804, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !800, file: !801, line: 78, baseType: !5, size: 32, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !800, file: !801, line: 79, baseType: !820, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !801, line: 49, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !801, line: 45, size: 832, elements: !823)
!823 = !{!824, !825, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !822, file: !801, line: 46, baseType: !809, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !822, file: !801, line: 47, baseType: !799, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !822, file: !801, line: 48, baseType: !427, size: 704, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !768, file: !750, line: 177, baseType: !581, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !768, file: !750, line: 178, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !328, line: 217, size: 832, elements: !831)
!831 = !{!832, !1076, !1077, !1078, !1081, !1085, !1086, !1087, !1105, !1106, !1107, !1108, !1109, !1110}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !830, file: !328, line: 219, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !328, line: 151, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !328, line: 151, size: 128, elements: !836)
!836 = !{!837}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !835, file: !328, line: 151, baseType: !838, size: 128)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !328, line: 150, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !328, line: 150, size: 128, elements: !840)
!840 = !{!841, !842, !843}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !839, file: !328, line: 150, baseType: !5, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !839, file: !328, line: 150, baseType: !5, size: 32, offset: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !839, file: !328, line: 150, baseType: !844, size: 64, offset: 64)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 64, elements: !506)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !582, line: 108, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !328, line: 122, size: 512, elements: !848)
!848 = !{!849, !850, !851, !1068, !1069, !1070, !1071, !1072, !1073, !1074}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !847, file: !328, line: 124, baseType: !829, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !847, file: !328, line: 125, baseType: !829, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !847, file: !328, line: 131, baseType: !852, size: 64, offset: 128)
!852 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !328, line: 128, size: 64, elements: !853)
!853 = !{!854, !1067}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !852, file: !328, line: 129, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !582, line: 66, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !858, line: 143, size: 192, elements: !859)
!858 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!859 = !{!860, !1065, !1066}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !857, file: !858, line: 145, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !582, line: 69, baseType: !862)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !858, line: 136, size: 192, elements: !864)
!864 = !{!865, !1063, !1064}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !863, file: !858, line: 137, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !582, line: 58, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !858, line: 737, size: 768, elements: !869)
!869 = !{!870, !887, !920, !926, !931, !936, !943, !949, !955, !960, !974, !979, !985, !990, !1000, !1005, !1021, !1028, !1035, !1041, !1046, !1052, !1058}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !868, file: !858, line: 738, baseType: !871, size: 256)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !858, line: 271, size: 256, elements: !872)
!872 = !{!873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !871, file: !858, line: 274, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !871, file: !858, line: 277, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !871, file: !858, line: 281, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !871, file: !858, line: 284, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !871, file: !858, line: 291, baseType: !5, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !871, file: !858, line: 295, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !871, file: !858, line: 298, baseType: !5, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !871, file: !858, line: 301, baseType: !5, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !871, file: !858, line: 307, baseType: !5, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !871, file: !858, line: 312, baseType: !5, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !871, file: !858, line: 316, baseType: !575, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !871, file: !858, line: 319, baseType: !5, size: 32, offset: 96)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !871, file: !858, line: 323, baseType: !829, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !871, file: !858, line: 327, baseType: !581, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !868, file: !858, line: 739, baseType: !888, size: 448)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !858, line: 350, size: 448, elements: !889)
!889 = !{!890, !918}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !888, file: !858, line: 353, baseType: !891, size: 384)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !858, line: 333, size: 384, elements: !892)
!892 = !{!893, !894, !901}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !891, file: !858, line: 336, baseType: !871, size: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !891, file: !858, line: 343, baseType: !895, size: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !897, line: 37, size: 128, elements: !898)
!897 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !896, file: !897, line: 39, baseType: !895, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !896, file: !897, line: 40, baseType: !580, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !891, file: !858, line: 344, baseType: !902, size: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !897, line: 45, size: 320, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !903, file: !897, line: 47, baseType: !902, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !903, file: !897, line: 48, baseType: !907, size: 256, offset: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !133, line: 1883, size: 256, elements: !908)
!908 = !{!909, !911, !912, !917}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !907, file: !133, line: 1884, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !907, file: !133, line: 1885, baseType: !910, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !907, file: !133, line: 1891, baseType: !913, size: 64, offset: 128)
!913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !907, file: !133, line: 1891, size: 64, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !913, file: !133, line: 1891, baseType: !866, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !913, file: !133, line: 1891, baseType: !581, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !907, file: !133, line: 1892, baseType: !580, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !888, file: !858, line: 359, baseType: !919, size: 64, offset: 384)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 64, elements: !506)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !868, file: !858, line: 740, baseType: !921, size: 512)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !858, line: 365, size: 512, elements: !922)
!922 = !{!923, !924, !925}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !921, file: !858, line: 368, baseType: !891, size: 384)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !921, file: !858, line: 373, baseType: !581, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !921, file: !858, line: 374, baseType: !581, size: 64, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !868, file: !858, line: 741, baseType: !927, size: 576)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !858, line: 380, size: 576, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !927, file: !858, line: 383, baseType: !921, size: 512)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !927, file: !858, line: 389, baseType: !919, size: 64, offset: 512)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !868, file: !858, line: 742, baseType: !932, size: 320)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !858, line: 395, size: 320, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !932, file: !858, line: 397, baseType: !871, size: 256)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !932, file: !858, line: 400, baseType: !855, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !868, file: !858, line: 743, baseType: !937, size: 448)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !858, line: 406, size: 448, elements: !938)
!938 = !{!939, !940, !941, !942}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !937, file: !858, line: 408, baseType: !871, size: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !937, file: !858, line: 412, baseType: !581, size: 64, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !937, file: !858, line: 420, baseType: !581, size: 64, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !937, file: !858, line: 423, baseType: !855, size: 64, offset: 384)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !868, file: !858, line: 744, baseType: !944, size: 384)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !858, line: 429, size: 384, elements: !945)
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !944, file: !858, line: 431, baseType: !871, size: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !944, file: !858, line: 434, baseType: !581, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !944, file: !858, line: 437, baseType: !855, size: 64, offset: 320)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !868, file: !858, line: 745, baseType: !950, size: 384)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !858, line: 443, size: 384, elements: !951)
!951 = !{!952, !953, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !950, file: !858, line: 445, baseType: !871, size: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !950, file: !858, line: 449, baseType: !581, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !950, file: !858, line: 453, baseType: !855, size: 64, offset: 320)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !868, file: !858, line: 746, baseType: !956, size: 320)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !858, line: 459, size: 320, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !956, file: !858, line: 461, baseType: !871, size: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !956, file: !858, line: 464, baseType: !581, size: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !868, file: !858, line: 747, baseType: !961, size: 768)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !858, line: 469, size: 768, elements: !962)
!962 = !{!963, !964, !965, !966, !967}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !961, file: !858, line: 471, baseType: !871, size: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !961, file: !858, line: 474, baseType: !5, size: 32, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !961, file: !858, line: 475, baseType: !5, size: 32, offset: 288)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !961, file: !858, line: 478, baseType: !581, size: 64, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !961, file: !858, line: 481, baseType: !968, size: 384, offset: 384)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !969, size: 384, elements: !506)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !133, line: 1917, size: 384, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !969, file: !133, line: 1920, baseType: !907, size: 256)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !969, file: !133, line: 1921, baseType: !581, size: 64, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !969, file: !133, line: 1922, baseType: !575, size: 32, offset: 320)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !868, file: !858, line: 748, baseType: !975, size: 320)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !858, line: 487, size: 320, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !975, file: !858, line: 490, baseType: !871, size: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !975, file: !858, line: 494, baseType: !405, size: 32, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !868, file: !858, line: 749, baseType: !980, size: 384)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !858, line: 500, size: 384, elements: !981)
!981 = !{!982, !983, !984}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !980, file: !858, line: 502, baseType: !871, size: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !980, file: !858, line: 506, baseType: !855, size: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !980, file: !858, line: 510, baseType: !855, size: 64, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !868, file: !858, line: 750, baseType: !986, size: 320)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !858, line: 529, size: 320, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !986, file: !858, line: 531, baseType: !871, size: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !986, file: !858, line: 540, baseType: !855, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !868, file: !858, line: 751, baseType: !991, size: 704)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !858, line: 546, size: 704, elements: !992)
!992 = !{!993, !994, !995, !996, !997, !998, !999}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !991, file: !858, line: 549, baseType: !921, size: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !991, file: !858, line: 553, baseType: !410, size: 64, offset: 512)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !991, file: !858, line: 557, baseType: !404, size: 8, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !991, file: !858, line: 558, baseType: !404, size: 8, offset: 584)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !991, file: !858, line: 559, baseType: !404, size: 8, offset: 592)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !991, file: !858, line: 560, baseType: !404, size: 8, offset: 600)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !991, file: !858, line: 566, baseType: !919, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !868, file: !858, line: 752, baseType: !1001, size: 384)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !858, line: 571, size: 384, elements: !1002)
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1001, file: !858, line: 573, baseType: !932, size: 320)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1001, file: !858, line: 577, baseType: !581, size: 64, offset: 320)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !868, file: !858, line: 753, baseType: !1006, size: 576)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !858, line: 600, size: 576, elements: !1007)
!1007 = !{!1008, !1009, !1010, !1011, !1020}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1006, file: !858, line: 602, baseType: !932, size: 320)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1006, file: !858, line: 605, baseType: !581, size: 64, offset: 320)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1006, file: !858, line: 609, baseType: !522, size: 64, offset: 384)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1006, file: !858, line: 612, baseType: !1012, size: 64, offset: 448)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !858, line: 581, size: 320, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1019}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1013, file: !858, line: 583, baseType: !132, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1013, file: !858, line: 586, baseType: !581, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1013, file: !858, line: 589, baseType: !581, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1013, file: !858, line: 592, baseType: !581, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1013, file: !858, line: 595, baseType: !581, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1006, file: !858, line: 616, baseType: !855, size: 64, offset: 512)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !868, file: !858, line: 754, baseType: !1022, size: 512)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !858, line: 622, size: 512, elements: !1023)
!1023 = !{!1024, !1025, !1026, !1027}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1022, file: !858, line: 624, baseType: !932, size: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1022, file: !858, line: 628, baseType: !581, size: 64, offset: 320)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1022, file: !858, line: 632, baseType: !581, size: 64, offset: 384)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1022, file: !858, line: 636, baseType: !581, size: 64, offset: 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !868, file: !858, line: 755, baseType: !1029, size: 704)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !858, line: 642, size: 704, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1029, file: !858, line: 644, baseType: !1022, size: 512)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1029, file: !858, line: 648, baseType: !581, size: 64, offset: 512)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1029, file: !858, line: 652, baseType: !581, size: 64, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1029, file: !858, line: 653, baseType: !581, size: 64, offset: 640)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !868, file: !858, line: 756, baseType: !1036, size: 448)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !858, line: 663, size: 448, elements: !1037)
!1037 = !{!1038, !1039, !1040}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1036, file: !858, line: 665, baseType: !932, size: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1036, file: !858, line: 668, baseType: !581, size: 64, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1036, file: !858, line: 673, baseType: !581, size: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !868, file: !858, line: 757, baseType: !1042, size: 384)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !858, line: 694, size: 384, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1042, file: !858, line: 696, baseType: !932, size: 320)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1042, file: !858, line: 699, baseType: !581, size: 64, offset: 320)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !868, file: !858, line: 758, baseType: !1047, size: 384)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !858, line: 681, size: 384, elements: !1048)
!1048 = !{!1049, !1050, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1047, file: !858, line: 683, baseType: !871, size: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1047, file: !858, line: 686, baseType: !581, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1047, file: !858, line: 689, baseType: !581, size: 64, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !868, file: !858, line: 759, baseType: !1053, size: 384)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !858, line: 707, size: 384, elements: !1054)
!1054 = !{!1055, !1056, !1057}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1053, file: !858, line: 709, baseType: !871, size: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1053, file: !858, line: 712, baseType: !581, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1053, file: !858, line: 712, baseType: !581, size: 64, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !868, file: !858, line: 760, baseType: !1059, size: 320)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !858, line: 718, size: 320, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1059, file: !858, line: 720, baseType: !871, size: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1059, file: !858, line: 723, baseType: !581, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !863, file: !858, line: 138, baseType: !862, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !863, file: !858, line: 139, baseType: !862, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !857, file: !858, line: 146, baseType: !861, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !857, file: !858, line: 152, baseType: !855, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !852, file: !328, line: 130, baseType: !747, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !847, file: !328, line: 134, baseType: !409, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !847, file: !328, line: 137, baseType: !581, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !847, file: !328, line: 138, baseType: !575, size: 32, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !847, file: !328, line: 142, baseType: !5, size: 32, offset: 352)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !847, file: !328, line: 144, baseType: !405, size: 32, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !847, file: !328, line: 145, baseType: !405, size: 32, offset: 416)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !847, file: !328, line: 146, baseType: !1075, size: 64, offset: 448)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !328, line: 119, baseType: !431)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !830, file: !328, line: 220, baseType: !833, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !830, file: !328, line: 223, baseType: !409, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !830, file: !328, line: 226, baseType: !1079, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !328, line: 185, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !830, file: !328, line: 229, baseType: !1082, size: 128, offset: 256)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1083, size: 128, elements: !815)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !328, line: 229, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !830, file: !328, line: 232, baseType: !829, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !830, file: !328, line: 233, baseType: !829, size: 64, offset: 448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !830, file: !328, line: 238, baseType: !1088, size: 64, offset: 512)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !328, line: 235, size: 64, elements: !1089)
!1089 = !{!1090, !1096}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1088, file: !328, line: 236, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !328, line: 273, size: 128, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1092, file: !328, line: 275, baseType: !855, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1092, file: !328, line: 278, baseType: !855, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1088, file: !328, line: 237, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !328, line: 259, size: 320, elements: !1099)
!1099 = !{!1100, !1101, !1102, !1103, !1104}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1098, file: !328, line: 261, baseType: !747, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1098, file: !328, line: 262, baseType: !747, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1098, file: !328, line: 266, baseType: !747, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1098, file: !328, line: 267, baseType: !747, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1098, file: !328, line: 270, baseType: !405, size: 32, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !830, file: !328, line: 241, baseType: !1075, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !830, file: !328, line: 244, baseType: !405, size: 32, offset: 640)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !830, file: !328, line: 247, baseType: !405, size: 32, offset: 672)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !830, file: !328, line: 250, baseType: !405, size: 32, offset: 704)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !830, file: !328, line: 253, baseType: !405, size: 32, offset: 736)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !830, file: !328, line: 256, baseType: !405, size: 32, offset: 768)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !768, file: !750, line: 179, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !750, line: 150, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !750, line: 142, size: 320, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1119, !1122, !1123}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1114, file: !750, line: 144, baseType: !581, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1114, file: !750, line: 145, baseType: !747, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1114, file: !750, line: 146, baseType: !747, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1114, file: !750, line: 147, baseType: !1120, size: 32, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1121, line: 31, baseType: !405)
!1121 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1114, file: !750, line: 148, baseType: !5, size: 32, offset: 224)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1114, file: !750, line: 149, baseType: !404, size: 8, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !768, file: !750, line: 180, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !750, line: 162, baseType: !1127)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !750, line: 159, size: 128, elements: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1127, file: !750, line: 160, baseType: !581, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1127, file: !750, line: 161, baseType: !431, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !768, file: !750, line: 181, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !750, line: 181, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !763, file: !750, line: 317, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 64, elements: !506)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !763, file: !750, line: 318, baseType: !1137, size: 320)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !750, line: 188, size: 320, elements: !1138)
!1138 = !{!1139, !1141, !1164}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1137, file: !750, line: 190, baseType: !1140, size: 192)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, size: 192, elements: !653)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1137, file: !750, line: 193, baseType: !1142, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !750, line: 206, size: 320, elements: !1144)
!1144 = !{!1145, !1149, !1150, !1151, !1163}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1143, file: !750, line: 208, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !582, line: 62, baseType: !1148)
!1148 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !582, line: 61, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1143, file: !750, line: 211, baseType: !5, size: 32, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1143, file: !750, line: 214, baseType: !431, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1143, file: !750, line: 224, baseType: !1152, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !750, line: 202, baseType: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !750, line: 202, size: 128, elements: !1155)
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1154, file: !750, line: 202, baseType: !1157, size: 128)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !750, line: 200, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !750, line: 200, size: 128, elements: !1159)
!1159 = !{!1160, !1161, !1162}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1158, file: !750, line: 200, baseType: !5, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1158, file: !750, line: 200, baseType: !5, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1158, file: !750, line: 200, baseType: !781, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1143, file: !750, line: 234, baseType: !1152, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1137, file: !750, line: 197, baseType: !431, size: 64, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !763, file: !750, line: 319, baseType: !642, size: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !763, file: !750, line: 320, baseType: !661, size: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !584, file: !133, line: 3384, baseType: !1168, size: 1472)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !133, line: 3114, size: 1472, elements: !1169)
!1169 = !{!1170, !1191, !1192, !1193, !1194}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1168, file: !133, line: 3115, baseType: !1171, size: 1216)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !133, line: 2984, size: 1216, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1171, file: !133, line: 2985, baseType: !743, size: 960)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1171, file: !133, line: 2986, baseType: !581, size: 64, offset: 960)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1171, file: !133, line: 2987, baseType: !581, size: 64, offset: 1024)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1171, file: !133, line: 2988, baseType: !581, size: 64, offset: 1088)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1171, file: !133, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1171, file: !133, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1171, file: !133, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1171, file: !133, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1171, file: !133, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1171, file: !133, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1171, file: !133, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1171, file: !133, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1171, file: !133, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1171, file: !133, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1171, file: !133, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1171, file: !133, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1171, file: !133, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1171, file: !133, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1168, file: !133, line: 3117, baseType: !581, size: 64, offset: 1216)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1168, file: !133, line: 3119, baseType: !581, size: 64, offset: 1280)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1168, file: !133, line: 3121, baseType: !581, size: 64, offset: 1344)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1168, file: !133, line: 3123, baseType: !581, size: 64, offset: 1408)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !584, file: !133, line: 3385, baseType: !1196, size: 1088)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !133, line: 2874, size: 1088, elements: !1197)
!1197 = !{!1198, !1199, !1200}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1196, file: !133, line: 2875, baseType: !743, size: 960)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1196, file: !133, line: 2876, baseType: !747, size: 64, offset: 960)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1196, file: !133, line: 2877, baseType: !1201, size: 64, offset: 1024)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !133, line: 2856, flags: DIFlagFwdDecl)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !584, file: !133, line: 3386, baseType: !1171, size: 1216)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !584, file: !133, line: 3387, baseType: !1205, size: 1280)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !133, line: 3093, size: 1280, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1205, file: !133, line: 3094, baseType: !1171, size: 1216)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1205, file: !133, line: 3095, baseType: !1201, size: 64, offset: 1216)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !584, file: !133, line: 3388, baseType: !1210, size: 1216)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !133, line: 2824, size: 1216, elements: !1211)
!1211 = !{!1212, !1213, !1214, !1215, !1216, !1217}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1210, file: !133, line: 2825, baseType: !705, size: 896)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1210, file: !133, line: 2827, baseType: !581, size: 64, offset: 896)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1210, file: !133, line: 2828, baseType: !581, size: 64, offset: 960)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1210, file: !133, line: 2829, baseType: !581, size: 64, offset: 1024)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1210, file: !133, line: 2830, baseType: !581, size: 64, offset: 1088)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1210, file: !133, line: 2831, baseType: !581, size: 64, offset: 1152)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !584, file: !133, line: 3389, baseType: !1219, size: 1024)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !133, line: 2850, size: 1024, elements: !1220)
!1220 = !{!1221, !1222, !1223}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1219, file: !133, line: 2851, baseType: !743, size: 960)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1219, file: !133, line: 2852, baseType: !405, size: 32, offset: 960)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1219, file: !133, line: 2853, baseType: !405, size: 32, offset: 992)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !584, file: !133, line: 3390, baseType: !1225, size: 1024)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !133, line: 2857, size: 1024, elements: !1226)
!1226 = !{!1227, !1228}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1225, file: !133, line: 2858, baseType: !743, size: 960)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1225, file: !133, line: 2859, baseType: !1201, size: 64, offset: 960)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !584, file: !133, line: 3391, baseType: !1230, size: 960)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !133, line: 2862, size: 960, elements: !1231)
!1231 = !{!1232}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1230, file: !133, line: 2863, baseType: !743, size: 960)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !584, file: !133, line: 3392, baseType: !1234, size: 1472)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !133, line: 3304, size: 1472, elements: !1235)
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1234, file: !133, line: 3305, baseType: !1168, size: 1472)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !584, file: !133, line: 3393, baseType: !1238, size: 1792)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !133, line: 3248, size: 1792, elements: !1239)
!1239 = !{!1240, !1241, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1238, file: !133, line: 3249, baseType: !1168, size: 1472)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1238, file: !133, line: 3251, baseType: !1242, size: 64, offset: 1472)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1244, line: 463, size: 1152, elements: !1245)
!1244 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1245 = !{!1246, !1249, !1280, !1281, !1284, !1287, !1337, !1338, !1339, !1340, !1341, !1365, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1243, file: !1244, line: 464, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1244, line: 464, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1243, file: !1244, line: 467, baseType: !1250, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !328, line: 374, size: 640, elements: !1252)
!1252 = !{!1253, !1255, !1256, !1269, !1270, !1271, !1272, !1273, !1274, !1276, !1278, !1279}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1251, file: !328, line: 377, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !582, line: 111, baseType: !829)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1251, file: !328, line: 378, baseType: !1254, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1251, file: !328, line: 381, baseType: !1257, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !328, line: 282, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !328, line: 282, size: 128, elements: !1260)
!1260 = !{!1261}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1259, file: !328, line: 282, baseType: !1262, size: 128)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !328, line: 281, baseType: !1263)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !328, line: 281, size: 128, elements: !1264)
!1264 = !{!1265, !1266, !1267}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1263, file: !328, line: 281, baseType: !5, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1263, file: !328, line: 281, baseType: !5, size: 32, offset: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1263, file: !328, line: 281, baseType: !1268, size: 64, offset: 64)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1254, size: 64, elements: !506)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1251, file: !328, line: 384, baseType: !405, size: 32, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1251, file: !328, line: 387, baseType: !405, size: 32, offset: 224)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1251, file: !328, line: 390, baseType: !405, size: 32, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1251, file: !328, line: 394, baseType: !1257, size: 64, offset: 320)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1251, file: !328, line: 396, baseType: !327, size: 32, offset: 384)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1251, file: !328, line: 399, baseType: !1275, size: 64, offset: 416)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 64, elements: !815)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1251, file: !328, line: 402, baseType: !1277, size: 64, offset: 480)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !815)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1251, file: !328, line: 406, baseType: !405, size: 32, offset: 544)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1251, file: !328, line: 409, baseType: !405, size: 32, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1243, file: !1244, line: 470, baseType: !856, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1243, file: !1244, line: 473, baseType: !1282, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1244, line: 166, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1243, file: !1244, line: 476, baseType: !1285, size: 64, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1244, line: 476, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1243, file: !1244, line: 479, baseType: !1288, size: 64, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1289, line: 144, baseType: !1290)
!1289 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1289, line: 100, size: 896, elements: !1292)
!1292 = !{!1293, !1301, !1306, !1311, !1313, !1314, !1315, !1316, !1317, !1318, !1323, !1325, !1326, !1331, !1336}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1291, file: !1289, line: 102, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1289, line: 52, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1289, line: 47, baseType: !5)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1291, file: !1289, line: 105, baseType: !1302, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1289, line: 59, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!405, !1299, !1299}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1291, file: !1289, line: 108, baseType: !1307, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1289, line: 63, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{null, !409}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1291, file: !1289, line: 111, baseType: !1312, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1291, file: !1289, line: 114, baseType: !522, size: 64, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1291, file: !1289, line: 117, baseType: !522, size: 64, offset: 320)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1291, file: !1289, line: 120, baseType: !522, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1291, file: !1289, line: 124, baseType: !5, size: 32, offset: 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1291, file: !1289, line: 128, baseType: !5, size: 32, offset: 480)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1291, file: !1289, line: 131, baseType: !1319, size: 64, offset: 512)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1289, line: 75, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!409, !522, !522}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1291, file: !1289, line: 132, baseType: !1324, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1289, line: 78, baseType: !1308)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1291, file: !1289, line: 135, baseType: !409, size: 64, offset: 640)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1291, file: !1289, line: 136, baseType: !1327, size: 64, offset: 704)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1289, line: 82, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!409, !409, !522, !522}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1291, file: !1289, line: 137, baseType: !1332, size: 64, offset: 768)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1289, line: 83, baseType: !1333)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !409, !409}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1291, file: !1289, line: 141, baseType: !5, size: 32, offset: 832)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1243, file: !1244, line: 484, baseType: !581, size: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1243, file: !1244, line: 488, baseType: !581, size: 64, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1243, file: !1244, line: 493, baseType: !581, size: 64, offset: 512)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1243, file: !1244, line: 496, baseType: !581, size: 64, offset: 576)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1243, file: !1244, line: 501, baseType: !1342, size: 64, offset: 640)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !339, line: 2355, size: 576, elements: !1344)
!1344 = !{!1345, !1348, !1349, !1350, !1351, !1353, !1354, !1359, !1360, !1361, !1362, !1363, !1364}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1343, file: !339, line: 2356, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !339, line: 2356, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1343, file: !339, line: 2357, baseType: !410, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1343, file: !339, line: 2358, baseType: !405, size: 32, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1343, file: !339, line: 2359, baseType: !405, size: 32, offset: 160)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1343, file: !339, line: 2360, baseType: !1352, size: 128, offset: 192)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 128, elements: !440)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1343, file: !339, line: 2364, baseType: !405, size: 32, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1343, file: !339, line: 2367, baseType: !1355, size: 128, offset: 384)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !339, line: 2349, size: 128, elements: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1355, file: !339, line: 2351, baseType: !747, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1355, file: !339, line: 2352, baseType: !431, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1343, file: !339, line: 2371, baseType: !338, size: 32, offset: 512)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1343, file: !339, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1343, file: !339, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1343, file: !339, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1343, file: !339, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1343, file: !339, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1243, file: !1244, line: 504, baseType: !1366, size: 64, offset: 704)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1244, line: 504, flags: DIFlagFwdDecl)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1243, file: !1244, line: 507, baseType: !1288, size: 64, offset: 768)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1243, file: !1244, line: 510, baseType: !405, size: 32, offset: 832)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1243, file: !1244, line: 513, baseType: !405, size: 32, offset: 864)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1243, file: !1244, line: 516, baseType: !575, size: 32, offset: 896)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1243, file: !1244, line: 519, baseType: !575, size: 32, offset: 928)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1243, file: !1244, line: 522, baseType: !5, size: 32, offset: 960)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1243, file: !1244, line: 523, baseType: !5, size: 32, offset: 992)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1243, file: !1244, line: 528, baseType: !410, size: 64, offset: 1024)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1243, file: !1244, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1243, file: !1244, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1243, file: !1244, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1243, file: !1244, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1243, file: !1244, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1243, file: !1244, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1243, file: !1244, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1243, file: !1244, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1243, file: !1244, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1243, file: !1244, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1243, file: !1244, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1243, file: !1244, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1243, file: !1244, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1243, file: !1244, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1243, file: !1244, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1243, file: !1244, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1238, file: !133, line: 3254, baseType: !581, size: 64, offset: 1536)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1238, file: !133, line: 3257, baseType: !581, size: 64, offset: 1600)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1238, file: !133, line: 3258, baseType: !581, size: 64, offset: 1664)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1238, file: !133, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1238, file: !133, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1238, file: !133, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1238, file: !133, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1238, file: !133, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1238, file: !133, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1238, file: !133, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1238, file: !133, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1238, file: !133, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1238, file: !133, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1238, file: !133, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1238, file: !133, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1238, file: !133, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1238, file: !133, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1238, file: !133, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1238, file: !133, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1238, file: !133, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1238, file: !133, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !584, file: !133, line: 3394, baseType: !1414, size: 1344)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !133, line: 2279, size: 1344, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1414, file: !133, line: 2280, baseType: !620, size: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1414, file: !133, line: 2281, baseType: !581, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1414, file: !133, line: 2282, baseType: !581, size: 64, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1414, file: !133, line: 2283, baseType: !581, size: 64, offset: 320)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1414, file: !133, line: 2284, baseType: !581, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1414, file: !133, line: 2285, baseType: !5, size: 32, offset: 448)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1414, file: !133, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1414, file: !133, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1414, file: !133, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1414, file: !133, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1414, file: !133, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1414, file: !133, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1414, file: !133, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1414, file: !133, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1414, file: !133, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1414, file: !133, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1414, file: !133, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1414, file: !133, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1414, file: !133, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1414, file: !133, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1414, file: !133, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1414, file: !133, line: 2305, baseType: !5, size: 32, offset: 512)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1414, file: !133, line: 2306, baseType: !1120, size: 32, offset: 544)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1414, file: !133, line: 2307, baseType: !581, size: 64, offset: 576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1414, file: !133, line: 2308, baseType: !581, size: 64, offset: 640)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1414, file: !133, line: 2314, baseType: !1442, size: 64, offset: 704)
!1442 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !133, line: 2309, size: 64, elements: !1443)
!1443 = !{!1444, !1445, !1446}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1442, file: !133, line: 2310, baseType: !405, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1442, file: !133, line: 2311, baseType: !410, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1442, file: !133, line: 2312, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !133, line: 2277, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1414, file: !133, line: 2315, baseType: !581, size: 64, offset: 768)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1414, file: !133, line: 2316, baseType: !581, size: 64, offset: 832)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1414, file: !133, line: 2317, baseType: !581, size: 64, offset: 896)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1414, file: !133, line: 2318, baseType: !581, size: 64, offset: 960)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1414, file: !133, line: 2319, baseType: !581, size: 64, offset: 1024)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1414, file: !133, line: 2320, baseType: !581, size: 64, offset: 1088)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1414, file: !133, line: 2321, baseType: !581, size: 64, offset: 1152)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1414, file: !133, line: 2322, baseType: !581, size: 64, offset: 1216)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1414, file: !133, line: 2324, baseType: !1458, size: 64, offset: 1280)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !133, line: 2324, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !584, file: !133, line: 3395, baseType: !1461, size: 320)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !133, line: 1469, size: 320, elements: !1462)
!1462 = !{!1463, !1464, !1465}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1461, file: !133, line: 1470, baseType: !620, size: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1461, file: !133, line: 1471, baseType: !581, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1461, file: !133, line: 1472, baseType: !581, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !584, file: !133, line: 3396, baseType: !1467, size: 320)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !133, line: 1482, size: 320, elements: !1468)
!1468 = !{!1469, !1470, !1471}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1467, file: !133, line: 1483, baseType: !620, size: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1467, file: !133, line: 1484, baseType: !405, size: 32, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1467, file: !133, line: 1485, baseType: !919, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !584, file: !133, line: 3397, baseType: !1473, size: 384)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !133, line: 1829, size: 384, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1473, file: !133, line: 1830, baseType: !620, size: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1473, file: !133, line: 1831, baseType: !575, size: 32, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1473, file: !133, line: 1832, baseType: !581, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1473, file: !133, line: 1835, baseType: !919, size: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !584, file: !133, line: 3398, baseType: !1480, size: 704)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !133, line: 1898, size: 704, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1489}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1480, file: !133, line: 1899, baseType: !620, size: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1480, file: !133, line: 1902, baseType: !581, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1480, file: !133, line: 1905, baseType: !866, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1480, file: !133, line: 1908, baseType: !5, size: 32, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1480, file: !133, line: 1911, baseType: !1487, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !133, line: 1876, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1480, file: !133, line: 1914, baseType: !907, size: 256, offset: 448)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !584, file: !133, line: 3399, baseType: !1491, size: 704)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !133, line: 2008, size: 704, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1510, !1511, !1512, !1513, !1514}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1491, file: !133, line: 2009, baseType: !620, size: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1491, file: !133, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1491, file: !133, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1491, file: !133, line: 2014, baseType: !575, size: 32, offset: 224)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1491, file: !133, line: 2016, baseType: !581, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1491, file: !133, line: 2017, baseType: !1499, size: 64, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !133, line: 183, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !133, line: 183, size: 128, elements: !1502)
!1502 = !{!1503}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1501, file: !133, line: 183, baseType: !1504, size: 128)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !133, line: 182, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !133, line: 182, size: 128, elements: !1506)
!1506 = !{!1507, !1508, !1509}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1505, file: !133, line: 182, baseType: !5, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1505, file: !133, line: 182, baseType: !5, size: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1505, file: !133, line: 182, baseType: !919, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1491, file: !133, line: 2019, baseType: !581, size: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1491, file: !133, line: 2020, baseType: !581, size: 64, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1491, file: !133, line: 2021, baseType: !581, size: 64, offset: 512)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1491, file: !133, line: 2022, baseType: !581, size: 64, offset: 576)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1491, file: !133, line: 2023, baseType: !581, size: 64, offset: 640)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !584, file: !133, line: 3400, baseType: !1516, size: 832)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !133, line: 2430, size: 832, elements: !1517)
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1516, file: !133, line: 2431, baseType: !620, size: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1516, file: !133, line: 2433, baseType: !581, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1516, file: !133, line: 2434, baseType: !581, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1516, file: !133, line: 2435, baseType: !581, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1516, file: !133, line: 2436, baseType: !581, size: 64, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1516, file: !133, line: 2437, baseType: !1499, size: 64, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1516, file: !133, line: 2438, baseType: !581, size: 64, offset: 512)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1516, file: !133, line: 2440, baseType: !581, size: 64, offset: 576)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1516, file: !133, line: 2441, baseType: !581, size: 64, offset: 640)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1516, file: !133, line: 2443, baseType: !1528, size: 128, offset: 704)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !133, line: 182, baseType: !1529)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !133, line: 182, size: 128, elements: !1530)
!1530 = !{!1531}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1529, file: !133, line: 182, baseType: !1504, size: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !584, file: !133, line: 3401, baseType: !1533, size: 320)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !133, line: 3327, size: 320, elements: !1534)
!1534 = !{!1535, !1536, !1543}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1533, file: !133, line: 3329, baseType: !620, size: 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1533, file: !133, line: 3330, baseType: !1537, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !133, line: 3320, size: 192, elements: !1539)
!1539 = !{!1540, !1541, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1538, file: !133, line: 3322, baseType: !1537, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1538, file: !133, line: 3323, baseType: !1537, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1538, file: !133, line: 3324, baseType: !581, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1533, file: !133, line: 3331, baseType: !1537, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !584, file: !133, line: 3402, baseType: !1545, size: 256)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !133, line: 1540, size: 256, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1545, file: !133, line: 1541, baseType: !620, size: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1545, file: !133, line: 1542, baseType: !1549, size: 64, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !133, line: 1538, baseType: !1551)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !133, line: 1538, size: 192, elements: !1552)
!1552 = !{!1553}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1551, file: !133, line: 1538, baseType: !1554, size: 192)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !133, line: 1537, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !133, line: 1537, size: 192, elements: !1556)
!1556 = !{!1557, !1558, !1559}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1555, file: !133, line: 1537, baseType: !5, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1555, file: !133, line: 1537, baseType: !5, size: 32, offset: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1555, file: !133, line: 1537, baseType: !1560, size: 128, offset: 64)
!1560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1561, size: 128, elements: !506)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !133, line: 1535, baseType: !1562)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !133, line: 1532, size: 128, elements: !1563)
!1563 = !{!1564, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1562, file: !133, line: 1533, baseType: !581, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1562, file: !133, line: 1534, baseType: !581, size: 64, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !584, file: !133, line: 3403, baseType: !1567, size: 512)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !133, line: 1938, size: 512, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1572, !1578, !1579, !1580}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1567, file: !133, line: 1939, baseType: !620, size: 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1567, file: !133, line: 1940, baseType: !575, size: 32, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1567, file: !133, line: 1941, baseType: !343, size: 32, offset: 224)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1567, file: !133, line: 1946, baseType: !1573, size: 32, offset: 256)
!1573 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !133, line: 1942, size: 32, elements: !1574)
!1574 = !{!1575, !1576, !1577}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1573, file: !133, line: 1943, baseType: !361, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1573, file: !133, line: 1944, baseType: !368, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1573, file: !133, line: 1945, baseType: !132, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1567, file: !133, line: 1950, baseType: !855, size: 64, offset: 320)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1567, file: !133, line: 1951, baseType: !855, size: 64, offset: 384)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1567, file: !133, line: 1953, baseType: !919, size: 64, offset: 448)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !584, file: !133, line: 3404, baseType: !1582, size: 1664)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !133, line: 3337, size: 1664, elements: !1583)
!1583 = !{!1584, !1585}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1582, file: !133, line: 3338, baseType: !620, size: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1582, file: !133, line: 3341, baseType: !1586, size: 1472, offset: 192)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1587, line: 410, size: 1472, elements: !1588)
!1587 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1586, file: !1587, line: 412, baseType: !405, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1586, file: !1587, line: 413, baseType: !405, size: 32, offset: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1586, file: !1587, line: 414, baseType: !405, size: 32, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1586, file: !1587, line: 415, baseType: !405, size: 32, offset: 96)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1586, file: !1587, line: 416, baseType: !405, size: 32, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1586, file: !1587, line: 417, baseType: !405, size: 32, offset: 160)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1586, file: !1587, line: 418, baseType: !404, size: 8, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1586, file: !1587, line: 419, baseType: !404, size: 8, offset: 200)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1586, file: !1587, line: 420, baseType: !503, size: 8, offset: 208)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1586, file: !1587, line: 421, baseType: !503, size: 8, offset: 216)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1586, file: !1587, line: 422, baseType: !503, size: 8, offset: 224)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1586, file: !1587, line: 423, baseType: !503, size: 8, offset: 232)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1586, file: !1587, line: 424, baseType: !503, size: 8, offset: 240)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1586, file: !1587, line: 425, baseType: !503, size: 8, offset: 248)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1586, file: !1587, line: 426, baseType: !503, size: 8, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1586, file: !1587, line: 427, baseType: !503, size: 8, offset: 264)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1586, file: !1587, line: 428, baseType: !503, size: 8, offset: 272)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1586, file: !1587, line: 429, baseType: !503, size: 8, offset: 280)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1586, file: !1587, line: 430, baseType: !503, size: 8, offset: 288)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1586, file: !1587, line: 431, baseType: !503, size: 8, offset: 296)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1586, file: !1587, line: 432, baseType: !503, size: 8, offset: 304)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1586, file: !1587, line: 433, baseType: !503, size: 8, offset: 312)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1586, file: !1587, line: 434, baseType: !503, size: 8, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1586, file: !1587, line: 435, baseType: !503, size: 8, offset: 328)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1586, file: !1587, line: 436, baseType: !503, size: 8, offset: 336)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1586, file: !1587, line: 437, baseType: !503, size: 8, offset: 344)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1586, file: !1587, line: 438, baseType: !503, size: 8, offset: 352)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1586, file: !1587, line: 439, baseType: !503, size: 8, offset: 360)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1586, file: !1587, line: 440, baseType: !503, size: 8, offset: 368)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1586, file: !1587, line: 441, baseType: !503, size: 8, offset: 376)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1586, file: !1587, line: 442, baseType: !503, size: 8, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1586, file: !1587, line: 443, baseType: !503, size: 8, offset: 392)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1586, file: !1587, line: 444, baseType: !503, size: 8, offset: 400)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1586, file: !1587, line: 445, baseType: !503, size: 8, offset: 408)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1586, file: !1587, line: 446, baseType: !503, size: 8, offset: 416)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1586, file: !1587, line: 447, baseType: !503, size: 8, offset: 424)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1586, file: !1587, line: 448, baseType: !503, size: 8, offset: 432)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1586, file: !1587, line: 449, baseType: !503, size: 8, offset: 440)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1586, file: !1587, line: 450, baseType: !503, size: 8, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1586, file: !1587, line: 451, baseType: !503, size: 8, offset: 456)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1586, file: !1587, line: 452, baseType: !503, size: 8, offset: 464)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1586, file: !1587, line: 453, baseType: !503, size: 8, offset: 472)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1586, file: !1587, line: 454, baseType: !503, size: 8, offset: 480)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1586, file: !1587, line: 455, baseType: !503, size: 8, offset: 488)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1586, file: !1587, line: 456, baseType: !503, size: 8, offset: 496)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1586, file: !1587, line: 457, baseType: !503, size: 8, offset: 504)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1586, file: !1587, line: 458, baseType: !503, size: 8, offset: 512)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1586, file: !1587, line: 459, baseType: !503, size: 8, offset: 520)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1586, file: !1587, line: 460, baseType: !503, size: 8, offset: 528)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1586, file: !1587, line: 461, baseType: !503, size: 8, offset: 536)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1586, file: !1587, line: 462, baseType: !503, size: 8, offset: 544)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1586, file: !1587, line: 463, baseType: !503, size: 8, offset: 552)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1586, file: !1587, line: 464, baseType: !503, size: 8, offset: 560)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1586, file: !1587, line: 465, baseType: !503, size: 8, offset: 568)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1586, file: !1587, line: 466, baseType: !503, size: 8, offset: 576)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1586, file: !1587, line: 467, baseType: !503, size: 8, offset: 584)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1586, file: !1587, line: 468, baseType: !503, size: 8, offset: 592)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1586, file: !1587, line: 469, baseType: !503, size: 8, offset: 600)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1586, file: !1587, line: 470, baseType: !503, size: 8, offset: 608)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1586, file: !1587, line: 471, baseType: !503, size: 8, offset: 616)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1586, file: !1587, line: 472, baseType: !503, size: 8, offset: 624)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1586, file: !1587, line: 473, baseType: !503, size: 8, offset: 632)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1586, file: !1587, line: 474, baseType: !503, size: 8, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1586, file: !1587, line: 475, baseType: !503, size: 8, offset: 648)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1586, file: !1587, line: 476, baseType: !503, size: 8, offset: 656)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1586, file: !1587, line: 477, baseType: !503, size: 8, offset: 664)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1586, file: !1587, line: 478, baseType: !503, size: 8, offset: 672)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1586, file: !1587, line: 479, baseType: !503, size: 8, offset: 680)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1586, file: !1587, line: 480, baseType: !503, size: 8, offset: 688)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1586, file: !1587, line: 481, baseType: !503, size: 8, offset: 696)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1586, file: !1587, line: 482, baseType: !503, size: 8, offset: 704)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1586, file: !1587, line: 483, baseType: !503, size: 8, offset: 712)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1586, file: !1587, line: 484, baseType: !503, size: 8, offset: 720)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1586, file: !1587, line: 485, baseType: !503, size: 8, offset: 728)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1586, file: !1587, line: 486, baseType: !503, size: 8, offset: 736)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1586, file: !1587, line: 487, baseType: !503, size: 8, offset: 744)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1586, file: !1587, line: 488, baseType: !503, size: 8, offset: 752)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1586, file: !1587, line: 489, baseType: !503, size: 8, offset: 760)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1586, file: !1587, line: 490, baseType: !503, size: 8, offset: 768)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1586, file: !1587, line: 491, baseType: !503, size: 8, offset: 776)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1586, file: !1587, line: 492, baseType: !503, size: 8, offset: 784)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1586, file: !1587, line: 493, baseType: !503, size: 8, offset: 792)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1586, file: !1587, line: 494, baseType: !503, size: 8, offset: 800)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1586, file: !1587, line: 495, baseType: !503, size: 8, offset: 808)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1586, file: !1587, line: 496, baseType: !503, size: 8, offset: 816)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1586, file: !1587, line: 497, baseType: !503, size: 8, offset: 824)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1586, file: !1587, line: 498, baseType: !503, size: 8, offset: 832)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1586, file: !1587, line: 499, baseType: !503, size: 8, offset: 840)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1586, file: !1587, line: 500, baseType: !503, size: 8, offset: 848)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1586, file: !1587, line: 501, baseType: !503, size: 8, offset: 856)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1586, file: !1587, line: 502, baseType: !503, size: 8, offset: 864)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1586, file: !1587, line: 503, baseType: !503, size: 8, offset: 872)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1586, file: !1587, line: 504, baseType: !503, size: 8, offset: 880)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1586, file: !1587, line: 505, baseType: !503, size: 8, offset: 888)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1586, file: !1587, line: 506, baseType: !503, size: 8, offset: 896)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1586, file: !1587, line: 507, baseType: !503, size: 8, offset: 904)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1586, file: !1587, line: 508, baseType: !503, size: 8, offset: 912)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1586, file: !1587, line: 509, baseType: !503, size: 8, offset: 920)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1586, file: !1587, line: 510, baseType: !503, size: 8, offset: 928)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1586, file: !1587, line: 511, baseType: !503, size: 8, offset: 936)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1586, file: !1587, line: 512, baseType: !503, size: 8, offset: 944)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1586, file: !1587, line: 513, baseType: !503, size: 8, offset: 952)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1586, file: !1587, line: 514, baseType: !503, size: 8, offset: 960)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1586, file: !1587, line: 515, baseType: !503, size: 8, offset: 968)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1586, file: !1587, line: 516, baseType: !503, size: 8, offset: 976)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1586, file: !1587, line: 517, baseType: !503, size: 8, offset: 984)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1586, file: !1587, line: 518, baseType: !503, size: 8, offset: 992)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1586, file: !1587, line: 519, baseType: !503, size: 8, offset: 1000)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1586, file: !1587, line: 520, baseType: !503, size: 8, offset: 1008)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1586, file: !1587, line: 521, baseType: !503, size: 8, offset: 1016)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1586, file: !1587, line: 522, baseType: !503, size: 8, offset: 1024)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1586, file: !1587, line: 523, baseType: !503, size: 8, offset: 1032)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1586, file: !1587, line: 524, baseType: !503, size: 8, offset: 1040)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1586, file: !1587, line: 525, baseType: !503, size: 8, offset: 1048)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1586, file: !1587, line: 526, baseType: !503, size: 8, offset: 1056)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1586, file: !1587, line: 527, baseType: !503, size: 8, offset: 1064)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1586, file: !1587, line: 528, baseType: !503, size: 8, offset: 1072)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1586, file: !1587, line: 529, baseType: !503, size: 8, offset: 1080)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1586, file: !1587, line: 530, baseType: !503, size: 8, offset: 1088)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1586, file: !1587, line: 531, baseType: !503, size: 8, offset: 1096)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1586, file: !1587, line: 532, baseType: !503, size: 8, offset: 1104)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1586, file: !1587, line: 533, baseType: !503, size: 8, offset: 1112)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1586, file: !1587, line: 534, baseType: !503, size: 8, offset: 1120)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1586, file: !1587, line: 535, baseType: !503, size: 8, offset: 1128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1586, file: !1587, line: 536, baseType: !503, size: 8, offset: 1136)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1586, file: !1587, line: 537, baseType: !503, size: 8, offset: 1144)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1586, file: !1587, line: 538, baseType: !503, size: 8, offset: 1152)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1586, file: !1587, line: 539, baseType: !503, size: 8, offset: 1160)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1586, file: !1587, line: 540, baseType: !503, size: 8, offset: 1168)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1586, file: !1587, line: 541, baseType: !503, size: 8, offset: 1176)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1586, file: !1587, line: 542, baseType: !503, size: 8, offset: 1184)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1586, file: !1587, line: 543, baseType: !503, size: 8, offset: 1192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1586, file: !1587, line: 544, baseType: !503, size: 8, offset: 1200)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1586, file: !1587, line: 545, baseType: !503, size: 8, offset: 1208)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1586, file: !1587, line: 546, baseType: !503, size: 8, offset: 1216)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1586, file: !1587, line: 547, baseType: !503, size: 8, offset: 1224)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1586, file: !1587, line: 548, baseType: !503, size: 8, offset: 1232)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1586, file: !1587, line: 549, baseType: !503, size: 8, offset: 1240)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1586, file: !1587, line: 550, baseType: !503, size: 8, offset: 1248)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1586, file: !1587, line: 551, baseType: !503, size: 8, offset: 1256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1586, file: !1587, line: 552, baseType: !503, size: 8, offset: 1264)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1586, file: !1587, line: 553, baseType: !503, size: 8, offset: 1272)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1586, file: !1587, line: 554, baseType: !503, size: 8, offset: 1280)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1586, file: !1587, line: 555, baseType: !503, size: 8, offset: 1288)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1586, file: !1587, line: 556, baseType: !503, size: 8, offset: 1296)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1586, file: !1587, line: 557, baseType: !503, size: 8, offset: 1304)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1586, file: !1587, line: 558, baseType: !503, size: 8, offset: 1312)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1586, file: !1587, line: 559, baseType: !503, size: 8, offset: 1320)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1586, file: !1587, line: 560, baseType: !503, size: 8, offset: 1328)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1586, file: !1587, line: 561, baseType: !503, size: 8, offset: 1336)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1586, file: !1587, line: 562, baseType: !503, size: 8, offset: 1344)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1586, file: !1587, line: 563, baseType: !503, size: 8, offset: 1352)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1586, file: !1587, line: 564, baseType: !503, size: 8, offset: 1360)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1586, file: !1587, line: 565, baseType: !503, size: 8, offset: 1368)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1586, file: !1587, line: 566, baseType: !503, size: 8, offset: 1376)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1586, file: !1587, line: 567, baseType: !503, size: 8, offset: 1384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1586, file: !1587, line: 568, baseType: !503, size: 8, offset: 1392)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1586, file: !1587, line: 569, baseType: !503, size: 8, offset: 1400)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1586, file: !1587, line: 570, baseType: !503, size: 8, offset: 1408)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1586, file: !1587, line: 571, baseType: !503, size: 8, offset: 1416)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1586, file: !1587, line: 572, baseType: !503, size: 8, offset: 1424)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1586, file: !1587, line: 573, baseType: !503, size: 8, offset: 1432)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1586, file: !1587, line: 574, baseType: !503, size: 8, offset: 1440)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !584, file: !133, line: 3405, baseType: !1753, size: 384)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !133, line: 3352, size: 384, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1753, file: !133, line: 3353, baseType: !620, size: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1753, file: !133, line: 3356, baseType: !1757, size: 192, offset: 192)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1587, line: 578, size: 192, elements: !1758)
!1758 = !{!1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1757, file: !1587, line: 580, baseType: !405, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1757, file: !1587, line: 581, baseType: !405, size: 32, offset: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1757, file: !1587, line: 582, baseType: !405, size: 32, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1757, file: !1587, line: 583, baseType: !405, size: 32, offset: 96)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1757, file: !1587, line: 584, baseType: !404, size: 8, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1757, file: !1587, line: 585, baseType: !404, size: 8, offset: 136)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1757, file: !1587, line: 586, baseType: !404, size: 8, offset: 144)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1757, file: !1587, line: 587, baseType: !404, size: 8, offset: 152)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1757, file: !1587, line: 588, baseType: !404, size: 8, offset: 160)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1757, file: !1587, line: 589, baseType: !404, size: 8, offset: 168)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1757, file: !1587, line: 590, baseType: !404, size: 8, offset: 176)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "emitted_prefix", scope: !419, file: !376, line: 190, baseType: !404, size: 8, offset: 384)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "need_newline", scope: !419, file: !376, line: 193, baseType: !404, size: 8, offset: 392)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "translate_identifiers", scope: !419, file: !376, line: 197, baseType: !404, size: 8, offset: 400)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "offset_list", scope: !415, file: !414, line: 59, baseType: !1774, size: 64, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !415, file: !414, line: 61, baseType: !1776, size: 32, offset: 512)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_flags", file: !376, line: 102, baseType: !5)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "declaration", scope: !415, file: !414, line: 65, baseType: !1778, size: 64, offset: 576)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "c_pretty_print_fn", file: !414, line: 41, baseType: !1779)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{null, !412, !581}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "declaration_specifiers", scope: !415, file: !414, line: 66, baseType: !1778, size: 64, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "declarator", scope: !415, file: !414, line: 67, baseType: !1778, size: 64, offset: 704)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_declarator", scope: !415, file: !414, line: 68, baseType: !1778, size: 64, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "direct_abstract_declarator", scope: !415, file: !414, line: 69, baseType: !1778, size: 64, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "type_specifier_seq", scope: !415, file: !414, line: 70, baseType: !1778, size: 64, offset: 896)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "direct_declarator", scope: !415, file: !414, line: 71, baseType: !1778, size: 64, offset: 960)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_operator", scope: !415, file: !414, line: 72, baseType: !1778, size: 64, offset: 1024)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_list", scope: !415, file: !414, line: 73, baseType: !1778, size: 64, offset: 1088)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "type_id", scope: !415, file: !414, line: 74, baseType: !1778, size: 64, offset: 1152)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "simple_type_specifier", scope: !415, file: !414, line: 75, baseType: !1778, size: 64, offset: 1216)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "function_specifier", scope: !415, file: !414, line: 76, baseType: !1778, size: 64, offset: 1280)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class_specifier", scope: !415, file: !414, line: 77, baseType: !1778, size: 64, offset: 1344)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "initializer", scope: !415, file: !414, line: 78, baseType: !1778, size: 64, offset: 1408)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "statement", scope: !415, file: !414, line: 80, baseType: !1778, size: 64, offset: 1472)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !415, file: !414, line: 82, baseType: !1778, size: 64, offset: 1536)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "id_expression", scope: !415, file: !414, line: 83, baseType: !1778, size: 64, offset: 1600)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "primary_expression", scope: !415, file: !414, line: 84, baseType: !1778, size: 64, offset: 1664)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "postfix_expression", scope: !415, file: !414, line: 85, baseType: !1778, size: 64, offset: 1728)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "unary_expression", scope: !415, file: !414, line: 86, baseType: !1778, size: 64, offset: 1792)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "multiplicative_expression", scope: !415, file: !414, line: 87, baseType: !1778, size: 64, offset: 1856)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "conditional_expression", scope: !415, file: !414, line: 88, baseType: !1778, size: 64, offset: 1920)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "assignment_expression", scope: !415, file: !414, line: 89, baseType: !1778, size: 64, offset: 1984)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "expression", scope: !415, file: !414, line: 90, baseType: !1778, size: 64, offset: 2048)
!1805 = !{i32 2, !"Dwarf Version", i32 4}
!1806 = !{i32 2, !"Debug Info Version", i32 3}
!1807 = !{i32 1, !"wchar_size", i32 4}
!1808 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1809 = distinct !DISubprogram(name: "vprintf", scope: !1810, file: !1810, line: 39, type: !1811, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1815)
!1810 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!405, !1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !410)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!1815 = !{!1816, !1817}
!1816 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1809, file: !1810, line: 39, type: !1813)
!1817 = !DILocalVariable(name: "__arg", arg: 2, scope: !1809, file: !1810, line: 39, type: !1814)
!1818 = !DILocation(line: 0, scope: !1809)
!1819 = !DILocation(line: 41, column: 20, scope: !1809)
!1820 = !DILocation(line: 41, column: 10, scope: !1809)
!1821 = !DILocation(line: 41, column: 3, scope: !1809)
!1822 = distinct !DISubprogram(name: "getchar", scope: !1810, file: !1810, line: 47, type: !1823, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1825)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!405}
!1825 = !{}
!1826 = !DILocation(line: 49, column: 16, scope: !1822)
!1827 = !DILocation(line: 49, column: 10, scope: !1822)
!1828 = !DILocation(line: 49, column: 3, scope: !1822)
!1829 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1810, file: !1810, line: 56, type: !1830, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!405, !472}
!1832 = !{!1833}
!1833 = !DILocalVariable(name: "__fp", arg: 1, scope: !1829, file: !1810, line: 56, type: !472)
!1834 = !DILocation(line: 0, scope: !1829)
!1835 = !DILocation(line: 58, column: 10, scope: !1829)
!1836 = !DILocation(line: 58, column: 3, scope: !1829)
!1837 = distinct !DISubprogram(name: "getc_unlocked", scope: !1810, file: !1810, line: 66, type: !1830, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1838)
!1838 = !{!1839}
!1839 = !DILocalVariable(name: "__fp", arg: 1, scope: !1837, file: !1810, line: 66, type: !472)
!1840 = !DILocation(line: 0, scope: !1837)
!1841 = !DILocation(line: 68, column: 10, scope: !1837)
!1842 = !DILocation(line: 68, column: 3, scope: !1837)
!1843 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1810, file: !1810, line: 73, type: !1823, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1825)
!1844 = !DILocation(line: 75, column: 10, scope: !1843)
!1845 = !DILocation(line: 75, column: 3, scope: !1843)
!1846 = distinct !DISubprogram(name: "putchar", scope: !1810, file: !1810, line: 82, type: !1847, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!405, !405}
!1849 = !{!1850}
!1850 = !DILocalVariable(name: "__c", arg: 1, scope: !1846, file: !1810, line: 82, type: !405)
!1851 = !DILocation(line: 0, scope: !1846)
!1852 = !DILocation(line: 84, column: 21, scope: !1846)
!1853 = !DILocation(line: 84, column: 10, scope: !1846)
!1854 = !DILocation(line: 84, column: 3, scope: !1846)
!1855 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1810, file: !1810, line: 91, type: !1856, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!405, !405, !472}
!1858 = !{!1859, !1860}
!1859 = !DILocalVariable(name: "__c", arg: 1, scope: !1855, file: !1810, line: 91, type: !405)
!1860 = !DILocalVariable(name: "__stream", arg: 2, scope: !1855, file: !1810, line: 91, type: !472)
!1861 = !DILocation(line: 0, scope: !1855)
!1862 = !DILocation(line: 93, column: 10, scope: !1855)
!1863 = !DILocation(line: 93, column: 3, scope: !1855)
!1864 = distinct !DISubprogram(name: "putc_unlocked", scope: !1810, file: !1810, line: 101, type: !1856, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1865)
!1865 = !{!1866, !1867}
!1866 = !DILocalVariable(name: "__c", arg: 1, scope: !1864, file: !1810, line: 101, type: !405)
!1867 = !DILocalVariable(name: "__stream", arg: 2, scope: !1864, file: !1810, line: 101, type: !472)
!1868 = !DILocation(line: 0, scope: !1864)
!1869 = !DILocation(line: 103, column: 10, scope: !1864)
!1870 = !DILocation(line: 103, column: 3, scope: !1864)
!1871 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1810, file: !1810, line: 108, type: !1847, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1872)
!1872 = !{!1873}
!1873 = !DILocalVariable(name: "__c", arg: 1, scope: !1871, file: !1810, line: 108, type: !405)
!1874 = !DILocation(line: 0, scope: !1871)
!1875 = !DILocation(line: 110, column: 10, scope: !1871)
!1876 = !DILocation(line: 110, column: 3, scope: !1871)
!1877 = distinct !DISubprogram(name: "getline", scope: !1810, file: !1810, line: 118, type: !1878, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1882)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1880, !406, !1881, !472}
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !499, line: 193, baseType: !431)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!1882 = !{!1883, !1884, !1885}
!1883 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1877, file: !1810, line: 118, type: !406)
!1884 = !DILocalVariable(name: "__n", arg: 2, scope: !1877, file: !1810, line: 118, type: !1881)
!1885 = !DILocalVariable(name: "__stream", arg: 3, scope: !1877, file: !1810, line: 118, type: !472)
!1886 = !DILocation(line: 0, scope: !1877)
!1887 = !DILocation(line: 120, column: 10, scope: !1877)
!1888 = !DILocation(line: 120, column: 3, scope: !1877)
!1889 = distinct !DISubprogram(name: "feof_unlocked", scope: !1810, file: !1810, line: 128, type: !1830, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1890)
!1890 = !{!1891}
!1891 = !DILocalVariable(name: "__stream", arg: 1, scope: !1889, file: !1810, line: 128, type: !472)
!1892 = !DILocation(line: 0, scope: !1889)
!1893 = !DILocation(line: 130, column: 10, scope: !1889)
!1894 = !DILocation(line: 130, column: 3, scope: !1889)
!1895 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1810, file: !1810, line: 135, type: !1830, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1896)
!1896 = !{!1897}
!1897 = !DILocalVariable(name: "__stream", arg: 1, scope: !1895, file: !1810, line: 135, type: !472)
!1898 = !DILocation(line: 0, scope: !1895)
!1899 = !DILocation(line: 137, column: 10, scope: !1895)
!1900 = !DILocation(line: 137, column: 3, scope: !1895)
!1901 = distinct !DISubprogram(name: "tolower", scope: !1902, file: !1902, line: 207, type: !1847, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1903)
!1902 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1903 = !{!1904}
!1904 = !DILocalVariable(name: "__c", arg: 1, scope: !1901, file: !1902, line: 207, type: !405)
!1905 = !DILocation(line: 0, scope: !1901)
!1906 = !DILocation(line: 209, column: 22, scope: !1901)
!1907 = !DILocation(line: 209, column: 39, scope: !1901)
!1908 = !DILocation(line: 209, column: 38, scope: !1901)
!1909 = !DILocation(line: 209, column: 37, scope: !1901)
!1910 = !DILocation(line: 209, column: 10, scope: !1901)
!1911 = !DILocation(line: 209, column: 3, scope: !1901)
!1912 = distinct !DISubprogram(name: "toupper", scope: !1902, file: !1902, line: 213, type: !1847, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1913)
!1913 = !{!1914}
!1914 = !DILocalVariable(name: "__c", arg: 1, scope: !1912, file: !1902, line: 213, type: !405)
!1915 = !DILocation(line: 0, scope: !1912)
!1916 = !DILocation(line: 215, column: 22, scope: !1912)
!1917 = !DILocation(line: 215, column: 39, scope: !1912)
!1918 = !DILocation(line: 215, column: 38, scope: !1912)
!1919 = !DILocation(line: 215, column: 37, scope: !1912)
!1920 = !DILocation(line: 215, column: 10, scope: !1912)
!1921 = !DILocation(line: 215, column: 3, scope: !1912)
!1922 = distinct !DISubprogram(name: "atoi", scope: !1923, file: !1923, line: 361, type: !1924, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1926)
!1923 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!405, !410}
!1926 = !{!1927}
!1927 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1922, file: !1923, line: 361, type: !410)
!1928 = !DILocation(line: 0, scope: !1922)
!1929 = !DILocation(line: 363, column: 16, scope: !1922)
!1930 = !DILocation(line: 363, column: 10, scope: !1922)
!1931 = !DILocation(line: 363, column: 3, scope: !1922)
!1932 = distinct !DISubprogram(name: "atol", scope: !1923, file: !1923, line: 366, type: !1933, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1935)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!431, !410}
!1935 = !{!1936}
!1936 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1932, file: !1923, line: 366, type: !410)
!1937 = !DILocation(line: 0, scope: !1932)
!1938 = !DILocation(line: 368, column: 10, scope: !1932)
!1939 = !DILocation(line: 368, column: 3, scope: !1932)
!1940 = distinct !DISubprogram(name: "atoll", scope: !1923, file: !1923, line: 373, type: !1941, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1944)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1943, !410}
!1943 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1944 = !{!1945}
!1945 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1940, file: !1923, line: 373, type: !410)
!1946 = !DILocation(line: 0, scope: !1940)
!1947 = !DILocation(line: 375, column: 10, scope: !1940)
!1948 = !DILocation(line: 375, column: 3, scope: !1940)
!1949 = distinct !DISubprogram(name: "bsearch", scope: !1950, file: !1950, line: 20, type: !1951, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1954)
!1950 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!409, !1299, !1299, !522, !522, !1953}
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1923, line: 808, baseType: !1303)
!1954 = !{!1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964}
!1955 = !DILocalVariable(name: "__key", arg: 1, scope: !1949, file: !1950, line: 20, type: !1299)
!1956 = !DILocalVariable(name: "__base", arg: 2, scope: !1949, file: !1950, line: 20, type: !1299)
!1957 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1949, file: !1950, line: 20, type: !522)
!1958 = !DILocalVariable(name: "__size", arg: 4, scope: !1949, file: !1950, line: 20, type: !522)
!1959 = !DILocalVariable(name: "__compar", arg: 5, scope: !1949, file: !1950, line: 21, type: !1953)
!1960 = !DILocalVariable(name: "__l", scope: !1949, file: !1950, line: 23, type: !522)
!1961 = !DILocalVariable(name: "__u", scope: !1949, file: !1950, line: 23, type: !522)
!1962 = !DILocalVariable(name: "__idx", scope: !1949, file: !1950, line: 23, type: !522)
!1963 = !DILocalVariable(name: "__p", scope: !1949, file: !1950, line: 24, type: !1299)
!1964 = !DILocalVariable(name: "__comparison", scope: !1949, file: !1950, line: 25, type: !405)
!1965 = !DILocation(line: 0, scope: !1949)
!1966 = !DILocation(line: 29, column: 3, scope: !1949)
!1967 = !DILocation(line: 27, column: 7, scope: !1949)
!1968 = !DILocation(line: 29, column: 14, scope: !1949)
!1969 = !DILocation(line: 31, column: 20, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1949, file: !1950, line: 30, column: 5)
!1971 = !DILocation(line: 31, column: 27, scope: !1970)
!1972 = !DILocation(line: 32, column: 56, scope: !1970)
!1973 = !DILocation(line: 32, column: 47, scope: !1970)
!1974 = !DILocation(line: 33, column: 22, scope: !1970)
!1975 = !DILocation(line: 34, column: 24, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1970, file: !1950, line: 34, column: 11)
!1977 = !DILocation(line: 34, column: 11, scope: !1970)
!1978 = !DILocation(line: 36, column: 29, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1976, file: !1950, line: 36, column: 16)
!1980 = !DILocation(line: 36, column: 16, scope: !1976)
!1981 = !DILocation(line: 37, column: 14, scope: !1979)
!1982 = distinct !{!1982, !1966, !1983}
!1983 = !DILocation(line: 40, column: 5, scope: !1949)
!1984 = !DILocation(line: 43, column: 1, scope: !1949)
!1985 = distinct !DISubprogram(name: "atof", scope: !1986, file: !1986, line: 25, type: !1987, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1990)
!1986 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!1989, !410}
!1989 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1990 = !{!1991}
!1991 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1985, file: !1986, line: 25, type: !410)
!1992 = !DILocation(line: 0, scope: !1985)
!1993 = !DILocation(line: 27, column: 10, scope: !1985)
!1994 = !DILocation(line: 27, column: 3, scope: !1985)
!1995 = distinct !DISubprogram(name: "strtoimax", scope: !1996, file: !1996, line: 324, type: !1997, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2003)
!1996 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!1999, !1813, !2002, !405}
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2000, line: 101, baseType: !2001)
!2000 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !499, line: 72, baseType: !431)
!2002 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !406)
!2003 = !{!2004, !2005, !2006}
!2004 = !DILocalVariable(name: "nptr", arg: 1, scope: !1995, file: !1996, line: 324, type: !1813)
!2005 = !DILocalVariable(name: "endptr", arg: 2, scope: !1995, file: !1996, line: 324, type: !2002)
!2006 = !DILocalVariable(name: "base", arg: 3, scope: !1995, file: !1996, line: 324, type: !405)
!2007 = !DILocation(line: 0, scope: !1995)
!2008 = !DILocation(line: 327, column: 10, scope: !1995)
!2009 = !DILocation(line: 327, column: 3, scope: !1995)
!2010 = distinct !DISubprogram(name: "strtoumax", scope: !1996, file: !1996, line: 336, type: !2011, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2015)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!2013, !1813, !2002, !405}
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2000, line: 102, baseType: !2014)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !499, line: 73, baseType: !524)
!2015 = !{!2016, !2017, !2018}
!2016 = !DILocalVariable(name: "nptr", arg: 1, scope: !2010, file: !1996, line: 336, type: !1813)
!2017 = !DILocalVariable(name: "endptr", arg: 2, scope: !2010, file: !1996, line: 336, type: !2002)
!2018 = !DILocalVariable(name: "base", arg: 3, scope: !2010, file: !1996, line: 336, type: !405)
!2019 = !DILocation(line: 0, scope: !2010)
!2020 = !DILocation(line: 339, column: 10, scope: !2010)
!2021 = !DILocation(line: 339, column: 3, scope: !2010)
!2022 = distinct !DISubprogram(name: "wcstoimax", scope: !1996, file: !1996, line: 348, type: !2023, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2032)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!1999, !2025, !2029, !405}
!2025 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2026)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1996, line: 34, baseType: !405)
!2029 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2030)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2032 = !{!2033, !2034, !2035}
!2033 = !DILocalVariable(name: "nptr", arg: 1, scope: !2022, file: !1996, line: 348, type: !2025)
!2034 = !DILocalVariable(name: "endptr", arg: 2, scope: !2022, file: !1996, line: 348, type: !2029)
!2035 = !DILocalVariable(name: "base", arg: 3, scope: !2022, file: !1996, line: 348, type: !405)
!2036 = !DILocation(line: 0, scope: !2022)
!2037 = !DILocation(line: 351, column: 10, scope: !2022)
!2038 = !DILocation(line: 351, column: 3, scope: !2022)
!2039 = distinct !DISubprogram(name: "wcstoumax", scope: !1996, file: !1996, line: 362, type: !2040, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!2013, !2025, !2029, !405}
!2042 = !{!2043, !2044, !2045}
!2043 = !DILocalVariable(name: "nptr", arg: 1, scope: !2039, file: !1996, line: 362, type: !2025)
!2044 = !DILocalVariable(name: "endptr", arg: 2, scope: !2039, file: !1996, line: 362, type: !2029)
!2045 = !DILocalVariable(name: "base", arg: 3, scope: !2039, file: !1996, line: 362, type: !405)
!2046 = !DILocation(line: 0, scope: !2039)
!2047 = !DILocation(line: 365, column: 10, scope: !2039)
!2048 = !DILocation(line: 365, column: 3, scope: !2039)
!2049 = distinct !DISubprogram(name: "stat", scope: !2050, file: !2050, line: 453, type: !2051, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2088)
!2050 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!405, !410, !2053}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2055, line: 46, size: 1152, elements: !2056)
!2055 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2056 = !{!2057, !2059, !2061, !2063, !2065, !2067, !2069, !2070, !2071, !2072, !2074, !2076, !2084, !2085, !2086}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2054, file: !2055, line: 48, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !499, line: 145, baseType: !524)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2054, file: !2055, line: 53, baseType: !2060, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !499, line: 148, baseType: !524)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2054, file: !2055, line: 61, baseType: !2062, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !499, line: 151, baseType: !524)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2054, file: !2055, line: 62, baseType: !2064, size: 32, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !499, line: 150, baseType: !5)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2054, file: !2055, line: 64, baseType: !2066, size: 32, offset: 224)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !499, line: 146, baseType: !5)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2054, file: !2055, line: 65, baseType: !2068, size: 32, offset: 256)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !499, line: 147, baseType: !5)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2054, file: !2055, line: 67, baseType: !405, size: 32, offset: 288)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2054, file: !2055, line: 69, baseType: !2058, size: 64, offset: 320)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2054, file: !2055, line: 74, baseType: !498, size: 64, offset: 384)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2054, file: !2055, line: 78, baseType: !2073, size: 64, offset: 448)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !499, line: 174, baseType: !431)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2054, file: !2055, line: 80, baseType: !2075, size: 64, offset: 512)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !499, line: 179, baseType: !431)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2054, file: !2055, line: 91, baseType: !2077, size: 128, offset: 576)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2078, line: 10, size: 128, elements: !2079)
!2078 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2079 = !{!2080, !2082}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2077, file: !2078, line: 12, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !499, line: 160, baseType: !431)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2077, file: !2078, line: 16, baseType: !2083, size: 64, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !499, line: 196, baseType: !431)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2054, file: !2055, line: 92, baseType: !2077, size: 128, offset: 704)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2054, file: !2055, line: 93, baseType: !2077, size: 128, offset: 832)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2054, file: !2055, line: 106, baseType: !2087, size: 192, offset: 960)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2083, size: 192, elements: !653)
!2088 = !{!2089, !2090}
!2089 = !DILocalVariable(name: "__path", arg: 1, scope: !2049, file: !2050, line: 453, type: !410)
!2090 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2049, file: !2050, line: 453, type: !2053)
!2091 = !DILocation(line: 0, scope: !2049)
!2092 = !DILocation(line: 455, column: 10, scope: !2049)
!2093 = !DILocation(line: 455, column: 3, scope: !2049)
!2094 = distinct !DISubprogram(name: "lstat", scope: !2050, file: !2050, line: 460, type: !2051, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2095)
!2095 = !{!2096, !2097}
!2096 = !DILocalVariable(name: "__path", arg: 1, scope: !2094, file: !2050, line: 460, type: !410)
!2097 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2094, file: !2050, line: 460, type: !2053)
!2098 = !DILocation(line: 0, scope: !2094)
!2099 = !DILocation(line: 462, column: 10, scope: !2094)
!2100 = !DILocation(line: 462, column: 3, scope: !2094)
!2101 = distinct !DISubprogram(name: "fstat", scope: !2050, file: !2050, line: 467, type: !2102, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2104)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!405, !405, !2053}
!2104 = !{!2105, !2106}
!2105 = !DILocalVariable(name: "__fd", arg: 1, scope: !2101, file: !2050, line: 467, type: !405)
!2106 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2101, file: !2050, line: 467, type: !2053)
!2107 = !DILocation(line: 0, scope: !2101)
!2108 = !DILocation(line: 469, column: 10, scope: !2101)
!2109 = !DILocation(line: 469, column: 3, scope: !2101)
!2110 = distinct !DISubprogram(name: "fstatat", scope: !2050, file: !2050, line: 474, type: !2111, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!405, !405, !410, !2053, !405}
!2113 = !{!2114, !2115, !2116, !2117}
!2114 = !DILocalVariable(name: "__fd", arg: 1, scope: !2110, file: !2050, line: 474, type: !405)
!2115 = !DILocalVariable(name: "__filename", arg: 2, scope: !2110, file: !2050, line: 474, type: !410)
!2116 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2110, file: !2050, line: 474, type: !2053)
!2117 = !DILocalVariable(name: "__flag", arg: 4, scope: !2110, file: !2050, line: 474, type: !405)
!2118 = !DILocation(line: 0, scope: !2110)
!2119 = !DILocation(line: 477, column: 10, scope: !2110)
!2120 = !DILocation(line: 477, column: 3, scope: !2110)
!2121 = distinct !DISubprogram(name: "mknod", scope: !2050, file: !2050, line: 483, type: !2122, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!405, !410, !2064, !2058}
!2124 = !{!2125, !2126, !2127}
!2125 = !DILocalVariable(name: "__path", arg: 1, scope: !2121, file: !2050, line: 483, type: !410)
!2126 = !DILocalVariable(name: "__mode", arg: 2, scope: !2121, file: !2050, line: 483, type: !2064)
!2127 = !DILocalVariable(name: "__dev", arg: 3, scope: !2121, file: !2050, line: 483, type: !2058)
!2128 = !DILocation(line: 0, scope: !2121)
!2129 = !DILocation(line: 485, column: 10, scope: !2121)
!2130 = !DILocation(line: 485, column: 3, scope: !2121)
!2131 = distinct !DISubprogram(name: "mknodat", scope: !2050, file: !2050, line: 491, type: !2132, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!405, !405, !410, !2064, !2058}
!2134 = !{!2135, !2136, !2137, !2138}
!2135 = !DILocalVariable(name: "__fd", arg: 1, scope: !2131, file: !2050, line: 491, type: !405)
!2136 = !DILocalVariable(name: "__path", arg: 2, scope: !2131, file: !2050, line: 491, type: !410)
!2137 = !DILocalVariable(name: "__mode", arg: 3, scope: !2131, file: !2050, line: 491, type: !2064)
!2138 = !DILocalVariable(name: "__dev", arg: 4, scope: !2131, file: !2050, line: 491, type: !2058)
!2139 = !DILocation(line: 0, scope: !2131)
!2140 = !DILocation(line: 494, column: 10, scope: !2131)
!2141 = !DILocation(line: 494, column: 3, scope: !2131)
!2142 = distinct !DISubprogram(name: "stat64", scope: !2050, file: !2050, line: 502, type: !2143, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2165)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!405, !410, !2145}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2055, line: 119, size: 1152, elements: !2147)
!2147 = !{!2148, !2149, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2161, !2162, !2163, !2164}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2146, file: !2055, line: 121, baseType: !2058, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2146, file: !2055, line: 123, baseType: !2150, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !499, line: 149, baseType: !524)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2146, file: !2055, line: 124, baseType: !2062, size: 64, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2146, file: !2055, line: 125, baseType: !2064, size: 32, offset: 192)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2146, file: !2055, line: 132, baseType: !2066, size: 32, offset: 224)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2146, file: !2055, line: 133, baseType: !2068, size: 32, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2146, file: !2055, line: 135, baseType: !405, size: 32, offset: 288)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2146, file: !2055, line: 136, baseType: !2058, size: 64, offset: 320)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2146, file: !2055, line: 137, baseType: !498, size: 64, offset: 384)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2146, file: !2055, line: 143, baseType: !2073, size: 64, offset: 448)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2146, file: !2055, line: 144, baseType: !2160, size: 64, offset: 512)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !499, line: 180, baseType: !431)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2146, file: !2055, line: 152, baseType: !2077, size: 128, offset: 576)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2146, file: !2055, line: 153, baseType: !2077, size: 128, offset: 704)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2146, file: !2055, line: 154, baseType: !2077, size: 128, offset: 832)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2146, file: !2055, line: 164, baseType: !2087, size: 192, offset: 960)
!2165 = !{!2166, !2167}
!2166 = !DILocalVariable(name: "__path", arg: 1, scope: !2142, file: !2050, line: 502, type: !410)
!2167 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2142, file: !2050, line: 502, type: !2145)
!2168 = !DILocation(line: 0, scope: !2142)
!2169 = !DILocation(line: 504, column: 10, scope: !2142)
!2170 = !DILocation(line: 504, column: 3, scope: !2142)
!2171 = distinct !DISubprogram(name: "lstat64", scope: !2050, file: !2050, line: 509, type: !2143, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2172)
!2172 = !{!2173, !2174}
!2173 = !DILocalVariable(name: "__path", arg: 1, scope: !2171, file: !2050, line: 509, type: !410)
!2174 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2171, file: !2050, line: 509, type: !2145)
!2175 = !DILocation(line: 0, scope: !2171)
!2176 = !DILocation(line: 511, column: 10, scope: !2171)
!2177 = !DILocation(line: 511, column: 3, scope: !2171)
!2178 = distinct !DISubprogram(name: "fstat64", scope: !2050, file: !2050, line: 516, type: !2179, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!405, !405, !2145}
!2181 = !{!2182, !2183}
!2182 = !DILocalVariable(name: "__fd", arg: 1, scope: !2178, file: !2050, line: 516, type: !405)
!2183 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2178, file: !2050, line: 516, type: !2145)
!2184 = !DILocation(line: 0, scope: !2178)
!2185 = !DILocation(line: 518, column: 10, scope: !2178)
!2186 = !DILocation(line: 518, column: 3, scope: !2178)
!2187 = distinct !DISubprogram(name: "fstatat64", scope: !2050, file: !2050, line: 523, type: !2188, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!405, !405, !410, !2145, !405}
!2190 = !{!2191, !2192, !2193, !2194}
!2191 = !DILocalVariable(name: "__fd", arg: 1, scope: !2187, file: !2050, line: 523, type: !405)
!2192 = !DILocalVariable(name: "__filename", arg: 2, scope: !2187, file: !2050, line: 523, type: !410)
!2193 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2187, file: !2050, line: 523, type: !2145)
!2194 = !DILocalVariable(name: "__flag", arg: 4, scope: !2187, file: !2050, line: 523, type: !405)
!2195 = !DILocation(line: 0, scope: !2187)
!2196 = !DILocation(line: 526, column: 10, scope: !2187)
!2197 = !DILocation(line: 526, column: 3, scope: !2187)
!2198 = distinct !DISubprogram(name: "c_missing_noreturn_ok_p", scope: !1, file: !1, line: 48, type: !2199, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!404, !581}
!2201 = !{!2202}
!2202 = !DILocalVariable(name: "decl", arg: 1, scope: !2198, file: !1, line: 48, type: !581)
!2203 = !DILocation(line: 0, scope: !2198)
!2204 = !DILocation(line: 52, column: 10, scope: !2198)
!2205 = !DILocation(line: 52, column: 22, scope: !2198)
!2206 = !DILocation(line: 52, column: 25, scope: !2198)
!2207 = !DILocation(line: 52, column: 3, scope: !2198)
!2208 = distinct !DISubprogram(name: "c_warn_unused_global_decl", scope: !1, file: !1, line: 58, type: !2209, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2214)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!404, !2211}
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !582, line: 59, baseType: !2212)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!2214 = !{!2215}
!2215 = !DILocalVariable(name: "decl", arg: 1, scope: !2208, file: !1, line: 58, type: !2211)
!2216 = !DILocation(line: 0, scope: !2208)
!2217 = !DILocation(line: 60, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2208, file: !1, line: 60, column: 7)
!2219 = !DILocation(line: 60, column: 24, scope: !2218)
!2220 = !DILocation(line: 60, column: 41, scope: !2218)
!2221 = !DILocation(line: 60, column: 44, scope: !2218)
!2222 = !DILocation(line: 60, column: 7, scope: !2208)
!2223 = !DILocation(line: 62, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2208, file: !1, line: 62, column: 7)
!2225 = !DILocation(line: 66, column: 1, scope: !2208)
!2226 = distinct !DISubprogram(name: "c_objc_common_init", scope: !1, file: !1, line: 70, type: !2227, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1825)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!404}
!2229 = !DILocation(line: 72, column: 3, scope: !2226)
!2230 = !DILocation(line: 74, column: 7, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2226, file: !1, line: 74, column: 7)
!2232 = !DILocation(line: 74, column: 24, scope: !2231)
!2233 = !DILocation(line: 74, column: 7, scope: !2226)
!2234 = !DILocation(line: 80, column: 3, scope: !2226)
!2235 = !DILocation(line: 80, column: 41, scope: !2226)
!2236 = !DILocation(line: 82, column: 3, scope: !2226)
!2237 = !DILocation(line: 0, scope: !2226)
!2238 = !DILocation(line: 83, column: 1, scope: !2226)
!2239 = distinct !DISubprogram(name: "c_tree_printer", scope: !1, file: !1, line: 98, type: !550, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2240)
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250}
!2241 = !DILocalVariable(name: "pp", arg: 1, scope: !2239, file: !1, line: 98, type: !552)
!2242 = !DILocalVariable(name: "text", arg: 2, scope: !2239, file: !1, line: 98, type: !553)
!2243 = !DILocalVariable(name: "spec", arg: 3, scope: !2239, file: !1, line: 98, type: !410)
!2244 = !DILocalVariable(name: "precision", arg: 4, scope: !2239, file: !1, line: 99, type: !405)
!2245 = !DILocalVariable(name: "wide", arg: 5, scope: !2239, file: !1, line: 99, type: !404)
!2246 = !DILocalVariable(name: "set_locus", arg: 6, scope: !2239, file: !1, line: 99, type: !404)
!2247 = !DILocalVariable(name: "hash", arg: 7, scope: !2239, file: !1, line: 99, type: !404)
!2248 = !DILocalVariable(name: "t", scope: !2239, file: !1, line: 101, type: !581)
!2249 = !DILocalVariable(name: "name", scope: !2239, file: !1, line: 102, type: !581)
!2250 = !DILocalVariable(name: "cpp", scope: !2239, file: !1, line: 103, type: !412)
!2251 = !DILocation(line: 0, scope: !2239)
!2252 = !DILocation(line: 101, column: 12, scope: !2239)
!2253 = !DILocation(line: 103, column: 27, scope: !2239)
!2254 = !DILocation(line: 104, column: 7, scope: !2239)
!2255 = !DILocation(line: 104, column: 15, scope: !2239)
!2256 = !DILocation(line: 106, column: 17, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2239, file: !1, line: 106, column: 7)
!2258 = !DILocation(line: 106, column: 22, scope: !2257)
!2259 = !DILocation(line: 109, column: 7, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2239, file: !1, line: 109, column: 7)
!2261 = !DILocation(line: 109, column: 17, scope: !2260)
!2262 = !DILocation(line: 109, column: 26, scope: !2260)
!2263 = !DILocation(line: 109, column: 20, scope: !2260)
!2264 = !DILocation(line: 109, column: 7, scope: !2239)
!2265 = !DILocation(line: 110, column: 20, scope: !2260)
!2266 = !DILocation(line: 110, column: 18, scope: !2260)
!2267 = !DILocation(line: 110, column: 5, scope: !2260)
!2268 = !DILocation(line: 112, column: 11, scope: !2239)
!2269 = !DILocation(line: 112, column: 3, scope: !2239)
!2270 = !DILocation(line: 115, column: 11, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !1, line: 115, column: 11)
!2272 = distinct !DILexicalBlock(scope: !2239, file: !1, line: 113, column: 5)
!2273 = !DILocation(line: 115, column: 39, scope: !2271)
!2274 = !DILocation(line: 115, column: 42, scope: !2271)
!2275 = !DILocation(line: 115, column: 11, scope: !2272)
!2276 = !DILocation(line: 117, column: 8, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2271, file: !1, line: 116, column: 2)
!2278 = !DILocation(line: 118, column: 9, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 118, column: 8)
!2280 = !DILocation(line: 118, column: 8, scope: !2277)
!2281 = !DILocation(line: 120, column: 8, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2279, file: !1, line: 119, column: 6)
!2283 = !DILocation(line: 121, column: 8, scope: !2282)
!2284 = !DILocation(line: 127, column: 11, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2272, file: !1, line: 127, column: 11)
!2286 = !DILocation(line: 127, column: 11, scope: !2272)
!2287 = !DILocation(line: 129, column: 4, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2285, file: !1, line: 128, column: 2)
!2289 = !DILocation(line: 130, column: 4, scope: !2288)
!2290 = !DILocation(line: 135, column: 7, scope: !2272)
!2291 = !DILocation(line: 136, column: 14, scope: !2272)
!2292 = !DILocation(line: 138, column: 11, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2272, file: !1, line: 138, column: 11)
!2294 = !DILocation(line: 138, column: 16, scope: !2293)
!2295 = !DILocation(line: 138, column: 19, scope: !2293)
!2296 = !DILocation(line: 138, column: 36, scope: !2293)
!2297 = !DILocation(line: 138, column: 11, scope: !2272)
!2298 = !DILocation(line: 140, column: 8, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !1, line: 140, column: 8)
!2300 = distinct !DILexicalBlock(scope: !2293, file: !1, line: 139, column: 2)
!2301 = !DILocation(line: 140, column: 8, scope: !2300)
!2302 = !DILocation(line: 141, column: 6, scope: !2299)
!2303 = !DILocation(line: 143, column: 6, scope: !2299)
!2304 = !DILocation(line: 148, column: 4, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2293, file: !1, line: 147, column: 2)
!2306 = !DILocation(line: 149, column: 4, scope: !2305)
!2307 = !DILocation(line: 154, column: 11, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2272, file: !1, line: 154, column: 11)
!2309 = !DILocation(line: 154, column: 25, scope: !2308)
!2310 = !DILocation(line: 154, column: 11, scope: !2272)
!2311 = !DILocation(line: 155, column: 2, scope: !2308)
!2312 = !DILocation(line: 157, column: 2, scope: !2308)
!2313 = !DILocation(line: 164, column: 3, scope: !2239)
!2314 = !DILocation(line: 165, column: 3, scope: !2239)
!2315 = !DILocation(line: 166, column: 1, scope: !2239)
!2316 = distinct !DISubprogram(name: "has_c_linkage", scope: !1, file: !1, line: 170, type: !2209, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2317)
!2317 = !{!2318}
!2318 = !DILocalVariable(name: "decl", arg: 1, scope: !2316, file: !1, line: 170, type: !2211)
!2319 = !DILocation(line: 0, scope: !2316)
!2320 = !DILocation(line: 172, column: 3, scope: !2316)
!2321 = distinct !DISubprogram(name: "c_initialize_diagnostics", scope: !1, file: !1, line: 176, type: !2322, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2379)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !2324}
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_context", file: !387, line: 55, baseType: !2326)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "diagnostic_context", file: !387, line: 62, size: 28736, elements: !2327)
!2327 = !{!2328, !2329, !2333, !2334, !2335, !2340, !2341, !2342, !2357, !2359, !2363, !2364, !2377, !2378}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "printer", scope: !2326, file: !387, line: 65, baseType: !552, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "diagnostic_count", scope: !2326, file: !387, line: 68, baseType: !2330, size: 384, offset: 64)
!2330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 384, elements: !2331)
!2331 = !{!2332}
!2332 = !DISubrange(count: 12)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "issue_warnings_are_errors_message", scope: !2326, file: !387, line: 72, baseType: !404, size: 8, offset: 448)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "warning_as_error_requested", scope: !2326, file: !387, line: 75, baseType: !404, size: 8, offset: 456)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "classify_diagnostic", scope: !2326, file: !387, line: 82, baseType: !2336, size: 27840, offset: 480)
!2336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2337, size: 27840, elements: !2338)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_t", file: !387, line: 35, baseType: !386)
!2338 = !{!2339}
!2339 = !DISubrange(count: 870)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "show_option_requested", scope: !2326, file: !387, line: 86, baseType: !404, size: 8, offset: 28320)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "abort_on_error", scope: !2326, file: !387, line: 89, baseType: !404, size: 8, offset: 28328)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "begin_diagnostic", scope: !2326, file: !387, line: 98, baseType: !2343, size: 64, offset: 28352)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_starter_fn", file: !387, line: 56, baseType: !2344)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !2324, !2347}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_info", file: !387, line: 52, baseType: !2349)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "diagnostic_info", file: !387, line: 40, size: 512, elements: !2350)
!2350 = !{!2351, !2352, !2353, !2354, !2355, !2356}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !2349, file: !387, line: 42, baseType: !554, size: 320)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !2349, file: !387, line: 43, baseType: !575, size: 32, offset: 320)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "override_column", scope: !2349, file: !387, line: 44, baseType: !5, size: 32, offset: 352)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !2349, file: !387, line: 47, baseType: !581, size: 64, offset: 384)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2349, file: !387, line: 49, baseType: !2337, size: 32, offset: 448)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "option_index", scope: !2349, file: !387, line: 51, baseType: !405, size: 32, offset: 480)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "end_diagnostic", scope: !2326, file: !387, line: 101, baseType: !2358, size: 64, offset: 28416)
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_finalizer_fn", file: !387, line: 58, baseType: !2343)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "internal_error", scope: !2326, file: !387, line: 104, baseType: !2360, size: 64, offset: 28480)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{null, !410, !559}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "last_function", scope: !2326, file: !387, line: 109, baseType: !581, size: 64, offset: 28544)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "last_module", scope: !2326, file: !387, line: 113, baseType: !2365, size: 64, offset: 28608)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2367)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !578, line: 61, size: 192, elements: !2368)
!2368 = !{!2369, !2370, !2372, !2373, !2374, !2375, !2376}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !2367, file: !578, line: 62, baseType: !410, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !2367, file: !578, line: 63, baseType: !2371, size: 32, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !578, line: 39, baseType: !5)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !2367, file: !578, line: 64, baseType: !577, size: 32, offset: 96)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !2367, file: !578, line: 65, baseType: !405, size: 32, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !2367, file: !578, line: 66, baseType: !5, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !2367, file: !578, line: 68, baseType: !404, size: 8, offset: 168)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !2367, file: !578, line: 70, baseType: !5, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2326, file: !387, line: 115, baseType: !405, size: 32, offset: 28672)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit_notes_p", scope: !2326, file: !387, line: 117, baseType: !404, size: 8, offset: 28704)
!2379 = !{!2380, !2381, !2382}
!2380 = !DILocalVariable(name: "context", arg: 1, scope: !2321, file: !1, line: 176, type: !2324)
!2381 = !DILocalVariable(name: "base", scope: !2321, file: !1, line: 178, type: !552)
!2382 = !DILocalVariable(name: "pp", scope: !2321, file: !1, line: 179, type: !412)
!2383 = !DILocation(line: 0, scope: !2321)
!2384 = !DILocation(line: 178, column: 35, scope: !2321)
!2385 = !DILocation(line: 179, column: 26, scope: !2321)
!2386 = !DILocation(line: 180, column: 3, scope: !2321)
!2387 = !DILocation(line: 181, column: 3, scope: !2321)
!2388 = !DILocation(line: 182, column: 20, scope: !2321)
!2389 = !DILocation(line: 185, column: 3, scope: !2321)
!2390 = !DILocation(line: 186, column: 1, scope: !2321)
!2391 = distinct !DISubprogram(name: "c_types_compatible_p", scope: !1, file: !1, line: 189, type: !2392, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!405, !581, !581}
!2394 = !{!2395, !2396}
!2395 = !DILocalVariable(name: "x", arg: 1, scope: !2391, file: !1, line: 189, type: !581)
!2396 = !DILocalVariable(name: "y", arg: 2, scope: !2391, file: !1, line: 189, type: !581)
!2397 = !DILocation(line: 0, scope: !2391)
!2398 = !DILocation(line: 191, column: 21, scope: !2391)
!2399 = !DILocation(line: 191, column: 44, scope: !2391)
!2400 = !DILocation(line: 191, column: 10, scope: !2391)
!2401 = !DILocation(line: 191, column: 3, scope: !2391)
!2402 = distinct !DISubprogram(name: "c_vla_unspec_p", scope: !1, file: !1, line: 197, type: !2403, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!404, !581, !581}
!2405 = !{!2406, !2407}
!2406 = !DILocalVariable(name: "x", arg: 1, scope: !2402, file: !1, line: 197, type: !581)
!2407 = !DILocalVariable(name: "fn", arg: 2, scope: !2402, file: !1, line: 197, type: !581)
!2408 = !DILocation(line: 0, scope: !2402)
!2409 = !DILocation(line: 199, column: 10, scope: !2402)
!2410 = !DILocation(line: 199, column: 3, scope: !2402)
