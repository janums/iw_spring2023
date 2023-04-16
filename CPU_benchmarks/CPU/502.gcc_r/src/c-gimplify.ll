; ModuleID = 'c-gimplify.bc'
source_filename = "c-gimplify.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, %union.tree_node*, i32, i32 }
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
%struct.ssa_operands = type { %struct.ssa_operand_memory_d*, i32, i32, i8, %struct.def_optype_d*, %struct.use_optype_d* }
%struct.ssa_operand_memory_d = type { %struct.ssa_operand_memory_d*, [1 x i8] }
%struct.def_optype_d = type { %struct.def_optype_d*, %union.tree_node** }
%struct.use_optype_d = type { %struct.use_optype_d*, %struct.ssa_use_operand_d }
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
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
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, void ()*, void (%struct.cgraph_node_set_def*)*, void ()*, void (%struct.cgraph_node*)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.cgraph_node_set_def = type { %struct.htab*, %struct.VEC_cgraph_node_ptr_gc*, i8* }
%struct.VEC_cgraph_node_ptr_gc = type { %struct.VEC_cgraph_node_ptr_base }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x %struct.cgraph_node*] }
%struct.varpool_node = type { %union.tree_node*, %struct.varpool_node*, %struct.varpool_node*, %struct.varpool_node*, i32, i8 }
%struct.cgraph_local_info = type { %struct.lto_file_decl_data*, %struct.inline_summary, i8 }
%struct.lto_file_decl_data = type opaque
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, %struct.cgraph_node*, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { %struct.VEC_ipa_replace_map_p_gc*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.VEC_ipa_replace_map_p_gc = type { %struct.VEC_ipa_replace_map_p_base }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x %struct.ipa_replace_map*] }
%struct.ipa_replace_map = type { %union.tree_node*, %union.tree_node*, i8, i8 }
%struct.cgraph_thunk_info = type { i64, i64, %union.tree_node*, i8, i8, i8 }
%struct.VEC_gimple_heap = type { %struct.VEC_gimple_base }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"\0A;; Function %s\00", align 1
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c" (%s)\0A\00", align 1
@tree_contains_struct = external dso_local local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c";; enabled by -%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@warn_init_self = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1891 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1904, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1905, metadata !DIExpression()), !dbg !1906
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1907
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1908
  ret i32 %call, !dbg !1909
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1910 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1914
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1915
  ret i32 %call, !dbg !1916
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1917 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1972, metadata !DIExpression()), !dbg !1973
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1974
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1974
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1974
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1974
  %cmp = icmp uge i8* %0, %1, !dbg !1974
  %conv1 = zext i1 %cmp to i64, !dbg !1974
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1974
  %tobool = icmp eq i64 %expval, 0, !dbg !1974
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1974

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1974
  br label %cond.end, !dbg !1974

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1974
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1974
  %2 = load i8, i8* %0, align 1, !dbg !1974
  %conv3 = zext i8 %2 to i32, !dbg !1974
  br label %cond.end, !dbg !1974

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1974
  ret i32 %cond, !dbg !1975
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1976 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1978, metadata !DIExpression()), !dbg !1979
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1980
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1980
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1980
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1980
  %cmp = icmp uge i8* %0, %1, !dbg !1980
  %conv1 = zext i1 %cmp to i64, !dbg !1980
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1980
  %tobool = icmp eq i64 %expval, 0, !dbg !1980
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1980

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1980
  br label %cond.end, !dbg !1980

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1980
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1980
  %2 = load i8, i8* %0, align 1, !dbg !1980
  %conv3 = zext i8 %2 to i32, !dbg !1980
  br label %cond.end, !dbg !1980

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1980
  ret i32 %cond, !dbg !1981
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1982 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1983
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1983
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1983
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1983
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1983
  %cmp = icmp uge i8* %1, %2, !dbg !1983
  %conv1 = zext i1 %cmp to i64, !dbg !1983
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1983
  %tobool = icmp eq i64 %expval, 0, !dbg !1983
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1983

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1983
  br label %cond.end, !dbg !1983

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1983
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1983
  %3 = load i8, i8* %1, align 1, !dbg !1983
  %conv3 = zext i8 %3 to i32, !dbg !1983
  br label %cond.end, !dbg !1983

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1983
  ret i32 %cond, !dbg !1984
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1985 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1989, metadata !DIExpression()), !dbg !1990
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1991
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1992
  ret i32 %call, !dbg !1993
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1994 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1998, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1999, metadata !DIExpression()), !dbg !2000
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2001
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2001
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2001
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2001
  %cmp = icmp uge i8* %0, %1, !dbg !2001
  %conv1 = zext i1 %cmp to i64, !dbg !2001
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2001
  %tobool = icmp eq i64 %expval, 0, !dbg !2001
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2001

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2001
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2001
  br label %cond.end, !dbg !2001

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2001
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2001
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2001
  store i8 %conv2, i8* %0, align 1, !dbg !2001
  %conv6 = and i32 %__c, 255, !dbg !2001
  br label %cond.end, !dbg !2001

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2001
  ret i32 %cond, !dbg !2002
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2003 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2005, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2006, metadata !DIExpression()), !dbg !2007
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2008
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2008
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2008
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2008
  %cmp = icmp uge i8* %0, %1, !dbg !2008
  %conv1 = zext i1 %cmp to i64, !dbg !2008
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2008
  %tobool = icmp eq i64 %expval, 0, !dbg !2008
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2008

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2008
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2008
  br label %cond.end, !dbg !2008

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2008
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2008
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2008
  store i8 %conv2, i8* %0, align 1, !dbg !2008
  %conv6 = and i32 %__c, 255, !dbg !2008
  br label %cond.end, !dbg !2008

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2008
  ret i32 %cond, !dbg !2009
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2010 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2012, metadata !DIExpression()), !dbg !2013
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2014
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2014
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2014
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2014
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2014
  %cmp = icmp uge i8* %1, %2, !dbg !2014
  %conv1 = zext i1 %cmp to i64, !dbg !2014
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2014
  %tobool = icmp eq i64 %expval, 0, !dbg !2014
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2014

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2014
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2014
  br label %cond.end, !dbg !2014

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2014
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2014
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2014
  store i8 %conv4, i8* %1, align 1, !dbg !2014
  %conv6 = and i32 %__c, 255, !dbg !2014
  br label %cond.end, !dbg !2014

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2014
  ret i32 %cond, !dbg !2015
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2016 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2022, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2023, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2024, metadata !DIExpression()), !dbg !2025
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2026
  ret i64 %call, !dbg !2027
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2028 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2030, metadata !DIExpression()), !dbg !2031
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2032
  %0 = load i32, i32* %_flags, align 8, !dbg !2032
  %and = lshr i32 %0, 4, !dbg !2032
  %and.lobit = and i32 %and, 1, !dbg !2032
  ret i32 %and.lobit, !dbg !2033
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2034 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2036, metadata !DIExpression()), !dbg !2037
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2038
  %0 = load i32, i32* %_flags, align 8, !dbg !2038
  %and = lshr i32 %0, 5, !dbg !2038
  %and.lobit = and i32 %and, 1, !dbg !2038
  ret i32 %and.lobit, !dbg !2039
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2040 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2043, metadata !DIExpression()), !dbg !2044
  %__c.off = add i32 %__c, 128, !dbg !2045
  %0 = icmp ult i32 %__c.off, 384, !dbg !2045
  br i1 %0, label %cond.true, label %cond.end, !dbg !2045

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2046
  %1 = load i32*, i32** %call, align 8, !dbg !2047
  %idxprom = sext i32 %__c to i64, !dbg !2048
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2048
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2048
  br label %cond.end, !dbg !2049

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2049
  ret i32 %cond, !dbg !2050
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2051 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2053, metadata !DIExpression()), !dbg !2054
  %__c.off = add i32 %__c, 128, !dbg !2055
  %0 = icmp ult i32 %__c.off, 384, !dbg !2055
  br i1 %0, label %cond.true, label %cond.end, !dbg !2055

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2056
  %1 = load i32*, i32** %call, align 8, !dbg !2057
  %idxprom = sext i32 %__c to i64, !dbg !2058
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2058
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2058
  br label %cond.end, !dbg !2059

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2059
  ret i32 %cond, !dbg !2060
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2061 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2066, metadata !DIExpression()), !dbg !2067
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2068
  %conv = trunc i64 %call to i32, !dbg !2069
  ret i32 %conv, !dbg !2070
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2071 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2075, metadata !DIExpression()), !dbg !2076
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2077
  ret i64 %call, !dbg !2078
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2079 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2084, metadata !DIExpression()), !dbg !2085
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2086
  ret i64 %call, !dbg !2087
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2088 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2094, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2095, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2096, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2097, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2098, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 0, metadata !2099, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2100, metadata !DIExpression()), !dbg !2104
  br label %while.cond, !dbg !2105

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2106
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2104
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2100, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2099, metadata !DIExpression()), !dbg !2104
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2107
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2105

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2108
  %div = lshr i64 %add, 1, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %div, metadata !2101, metadata !DIExpression()), !dbg !2104
  %mul = mul i64 %div, %__size, !dbg !2111
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2112
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2102, metadata !DIExpression()), !dbg !2104
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %call, metadata !2103, metadata !DIExpression()), !dbg !2104
  %cmp1 = icmp slt i32 %call, 0, !dbg !2114
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2116

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2117
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2119

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2099, metadata !DIExpression()), !dbg !2104
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2104
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2104
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2100, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2099, metadata !DIExpression()), !dbg !2104
  br label %while.cond, !dbg !2105, !llvm.loop !2121

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2104
  ret i8* %retval.0, !dbg !2123
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2124 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2130, metadata !DIExpression()), !dbg !2131
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2132
  ret double %call, !dbg !2133
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2134 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2143, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2144, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i32 %base, metadata !2145, metadata !DIExpression()), !dbg !2146
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2147
  ret i64 %call, !dbg !2148
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2149 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2155, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2156, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i32 %base, metadata !2157, metadata !DIExpression()), !dbg !2158
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2159
  ret i64 %call, !dbg !2160
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2161 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2172, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2173, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i32 %base, metadata !2174, metadata !DIExpression()), !dbg !2175
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2176
  ret i64 %call, !dbg !2177
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2178 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2182, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2183, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i32 %base, metadata !2184, metadata !DIExpression()), !dbg !2185
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2186
  ret i64 %call, !dbg !2187
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2188 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2228, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2229, metadata !DIExpression()), !dbg !2230
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2231
  ret i32 %call, !dbg !2232
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2233 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2235, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2236, metadata !DIExpression()), !dbg !2237
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2238
  ret i32 %call, !dbg !2239
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2240 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2245, metadata !DIExpression()), !dbg !2246
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2247
  ret i32 %call, !dbg !2248
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2249 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2253, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2254, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2255, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2256, metadata !DIExpression()), !dbg !2257
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2258
  ret i32 %call, !dbg !2259
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2260 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2264, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2265, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2266, metadata !DIExpression()), !dbg !2267
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2266, metadata !DIExpression(DW_OP_deref)), !dbg !2267
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2268
  ret i32 %call, !dbg !2269
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2270 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2274, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2275, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2276, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2277, metadata !DIExpression()), !dbg !2278
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2277, metadata !DIExpression(DW_OP_deref)), !dbg !2278
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2279
  ret i32 %call, !dbg !2280
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2281 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2305, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2306, metadata !DIExpression()), !dbg !2307
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2308
  ret i32 %call, !dbg !2309
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2310 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2312, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2313, metadata !DIExpression()), !dbg !2314
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2315
  ret i32 %call, !dbg !2316
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2317 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2321, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2322, metadata !DIExpression()), !dbg !2323
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2324
  ret i32 %call, !dbg !2325
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2326 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2330, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2331, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2333, metadata !DIExpression()), !dbg !2334
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2335
  ret i32 %call, !dbg !2336
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @c_genericize(%union.tree_node* %fndecl) local_unnamed_addr #4 !dbg !2337 {
entry:
  %local_dump_flags = alloca i32, align 4
  call void @llvm.dbg.value(metadata %union.tree_node* %fndecl, metadata !2341, metadata !DIExpression()), !dbg !2573
  %0 = bitcast i32* %local_dump_flags to i8*, !dbg !2574
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2574
  call void @llvm.dbg.value(metadata i32* %local_dump_flags, metadata !2343, metadata !DIExpression(DW_OP_deref)), !dbg !2573
  %call = call %struct._IO_FILE* @dump_begin(i32 4, i32* nonnull %local_dump_flags) #6, !dbg !2575
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !2342, metadata !DIExpression()), !dbg !2573
  %tobool = icmp eq %struct._IO_FILE* %call, null, !dbg !2576
  br i1 %tobool, label %if.end16, label %if.then, !dbg !2578

if.then:                                          ; preds = %entry
  %1 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !2579
  %call1 = call i8* %1(%union.tree_node* %fndecl, i32 2) #6, !dbg !2581
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %call1) #6, !dbg !2582
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2583
  %bf.load = load i64, i64* %2, align 8, !dbg !2583
  %bf.cast = and i64 %bf.load, 65535, !dbg !2583
  %arrayidx3 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast, i64 13, !dbg !2583
  %3 = load i8, i8* %arrayidx3, align 1, !dbg !2583
  %tobool4 = icmp eq i8 %3, 0, !dbg !2583
  br i1 %tobool4, label %cond.end, label %land.lhs.true, !dbg !2583

land.lhs.true:                                    ; preds = %if.then
  %assembler_name = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2583
  %4 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8, !dbg !2583
  %cmp = icmp eq %union.tree_node* %4, null, !dbg !2583
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !2584

cond.false:                                       ; preds = %land.lhs.true
  %call6 = call %union.tree_node* @decl_assembler_name(%union.tree_node* %fndecl) #6, !dbg !2585
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2585
  %str = bitcast i32* %id to i8**, !dbg !2585
  %5 = load i8*, i8** %str, align 8, !dbg !2585
  br label %cond.end, !dbg !2584

cond.end:                                         ; preds = %land.lhs.true, %if.then, %cond.false
  %cond = phi i8* [ %5, %cond.false ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %land.lhs.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %if.then ], !dbg !2584
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %cond) #6, !dbg !2586
  %call8 = call i8* @dump_flag_name(i32 4) #6, !dbg !2587
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %call8) #6, !dbg !2588
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2589
  %6 = load i32, i32* %local_dump_flags, align 4, !dbg !2590
  call void @llvm.dbg.value(metadata i32 %6, metadata !2343, metadata !DIExpression()), !dbg !2573
  %and = and i32 %6, 4, !dbg !2592
  %tobool11 = icmp eq i32 %and, 0, !dbg !2592
  %saved_tree = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 0, i32 1, !dbg !2593
  %7 = load %union.tree_node*, %union.tree_node** %saved_tree, align 8, !dbg !2593
  br i1 %tobool11, label %if.else, label %if.then12, !dbg !2594

if.then12:                                        ; preds = %cond.end
  call void @llvm.dbg.value(metadata i32 %6, metadata !2343, metadata !DIExpression()), !dbg !2573
  %or = or i32 %6, 2, !dbg !2595
  call void @dump_node(%union.tree_node* %7, i32 %or, %struct._IO_FILE* nonnull %call) #6, !dbg !2596
  br label %if.end, !dbg !2596

if.else:                                          ; preds = %cond.end
  call void @print_c_tree(%struct._IO_FILE* nonnull %call, %union.tree_node* %7) #6, !dbg !2597
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2598
  call void @dump_end(i32 4, %struct._IO_FILE* nonnull %call) #6, !dbg !2599
  br label %if.end16, !dbg !2600

if.end16:                                         ; preds = %entry, %if.end
  %call17 = call %struct.cgraph_node* @cgraph_node(%union.tree_node* %fndecl) #6, !dbg !2601
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call17, metadata !2344, metadata !DIExpression()), !dbg !2573
  %nested = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call17, i64 0, i32 6, !dbg !2602
  br label %for.cond, !dbg !2604

for.cond:                                         ; preds = %for.body, %if.end16
  %cgn.0.in = phi %struct.cgraph_node** [ %nested, %if.end16 ], [ %next_nested, %for.body ]
  %cgn.0 = load %struct.cgraph_node*, %struct.cgraph_node** %cgn.0.in, align 8, !dbg !2605
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %cgn.0, metadata !2344, metadata !DIExpression()), !dbg !2573
  %tobool18 = icmp eq %struct.cgraph_node* %cgn.0, null, !dbg !2606
  br i1 %tobool18, label %for.end, label %for.body, !dbg !2606

for.body:                                         ; preds = %for.cond
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %cgn.0, i64 0, i32 0, !dbg !2607
  %8 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !2607
  call void @c_genericize(%union.tree_node* %8) #8, !dbg !2609
  %next_nested = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %cgn.0, i64 0, i32 7, !dbg !2610
  br label %for.cond, !dbg !2611, !llvm.loop !2612

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2614
  ret void, !dbg !2614
}

declare dso_local %struct._IO_FILE* @dump_begin(i32, i32*) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local %union.tree_node* @decl_assembler_name(%union.tree_node*) local_unnamed_addr #1

declare dso_local i8* @dump_flag_name(i32) local_unnamed_addr #1

declare dso_local void @dump_node(%union.tree_node*, i32, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @print_c_tree(%struct._IO_FILE*, %union.tree_node*) local_unnamed_addr #1

declare dso_local void @dump_end(i32, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local %struct.cgraph_node* @cgraph_node(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @c_build_bind_expr(i32 %loc, %union.tree_node* %block, %union.tree_node* %body) local_unnamed_addr #4 !dbg !2615 {
entry:
  call void @llvm.dbg.value(metadata i32 %loc, metadata !2619, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata %union.tree_node* %block, metadata !2620, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata %union.tree_node* %body, metadata !2621, metadata !DIExpression()), !dbg !2624
  %cmp = icmp eq %union.tree_node* %block, null, !dbg !2625
  br i1 %cmp, label %if.end13, label %if.else, !dbg !2627

if.else:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %block, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2628
  %bf.load = load i64, i64* %0, align 8, !dbg !2628
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2630
  %cmp1 = icmp eq i64 %bf.cast1, 4, !dbg !2630
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !2631

if.then2:                                         ; preds = %if.else
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %block, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2632
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !2632
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2622, metadata !DIExpression()), !dbg !2624
  br label %if.end13, !dbg !2633

if.else4:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata %union.tree_node* %block, metadata !2622, metadata !DIExpression()), !dbg !2624
  %artificial_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %block, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2634
  %3 = bitcast i40* %artificial_flag to i64*, !dbg !2634
  %bf.load5 = load i64, i64* %3, align 8, !dbg !2634
  %bf.cast72 = and i64 %bf.load5, 4096, !dbg !2634
  %tobool = icmp eq i64 %bf.cast72, 0, !dbg !2634
  br i1 %tobool, label %if.else9, label %if.end13, !dbg !2637

if.else9:                                         ; preds = %if.else4
  %call = tail call %union.tree_node* @make_node_stat(i32 4) #6, !dbg !2638
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2620, metadata !DIExpression()), !dbg !2624
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2640
  store %union.tree_node* %block, %union.tree_node** %4, align 8, !dbg !2641
  tail call fastcc void @add_block_to_enclosing(%union.tree_node* %call) #8, !dbg !2642
  br label %if.end13

if.end13:                                         ; preds = %if.else4, %if.then2, %if.else9, %entry
  %decls.1 = phi %union.tree_node* [ null, %entry ], [ %2, %if.then2 ], [ %block, %if.else4 ], [ %block, %if.else9 ], !dbg !2643
  %block.addr.2 = phi %union.tree_node* [ null, %entry ], [ %block, %if.then2 ], [ null, %if.else4 ], [ %call, %if.else9 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %block.addr.2, metadata !2620, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata %union.tree_node* %decls.1, metadata !2622, metadata !DIExpression()), !dbg !2624
  %tobool14 = icmp eq %union.tree_node* %body, null, !dbg !2644
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !2646

if.then15:                                        ; preds = %if.end13
  %call16 = tail call %union.tree_node* @build_empty_stmt(i32 %loc) #6, !dbg !2647
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !2621, metadata !DIExpression()), !dbg !2624
  br label %if.end17, !dbg !2648

if.end17:                                         ; preds = %if.end13, %if.then15
  %body.addr.0 = phi %union.tree_node* [ %body, %if.end13 ], [ %call16, %if.then15 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %body.addr.0, metadata !2621, metadata !DIExpression()), !dbg !2624
  %tobool18 = icmp ne %union.tree_node* %decls.1, null, !dbg !2649
  %tobool19 = icmp ne %union.tree_node* %block.addr.2, null, !dbg !2651
  %or.cond = or i1 %tobool18, %tobool19, !dbg !2652
  br i1 %or.cond, label %if.then20, label %if.end26, !dbg !2652

if.then20:                                        ; preds = %if.end17
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2653
  %call21 = tail call %union.tree_node* @build3_stat(i32 58, %union.tree_node* %5, %union.tree_node* %decls.1, %union.tree_node* %body.addr.0, %union.tree_node* %block.addr.2) #6, !dbg !2653
  call void @llvm.dbg.value(metadata %union.tree_node* %call21, metadata !2623, metadata !DIExpression()), !dbg !2624
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2655
  %bf.load23 = load i64, i64* %6, align 8, !dbg !2656
  %bf.set = or i64 %bf.load23, 65536, !dbg !2656
  store i64 %bf.set, i64* %6, align 8, !dbg !2656
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2657
  store i32 %loc, i32* %7, align 8, !dbg !2657
  br label %if.end26, !dbg !2658

if.end26:                                         ; preds = %if.end17, %if.then20
  %bind.0 = phi %union.tree_node* [ %call21, %if.then20 ], [ %body.addr.0, %if.end17 ], !dbg !2659
  call void @llvm.dbg.value(metadata %union.tree_node* %bind.0, metadata !2623, metadata !DIExpression()), !dbg !2624
  ret %union.tree_node* %bind.0, !dbg !2660
}

declare dso_local %union.tree_node* @make_node_stat(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @add_block_to_enclosing(%union.tree_node* %block) unnamed_addr #4 !dbg !2661 {
entry:
  %bind = alloca %union.gimple_statement_d*, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %block, metadata !2663, metadata !DIExpression()), !dbg !2673
  %0 = bitcast %union.gimple_statement_d** %bind to i8*, !dbg !2674
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2674
  %call = tail call %struct.VEC_gimple_heap* @gimple_bind_expr_stack() #6, !dbg !2675
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %call, metadata !2667, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i32 0, metadata !2664, metadata !DIExpression()), !dbg !2673
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %call, i64 0, i32 0, !dbg !2676
  br label %for.cond, !dbg !2679

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2680
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2664, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %bind, metadata !2666, metadata !DIExpression(DW_OP_deref)), !dbg !2673
  %call1 = call fastcc i32 @VEC_gimple_base_iterate(%struct.VEC_gimple_base* %base, i32 %i.0, %union.gimple_statement_d** nonnull %bind) #8, !dbg !2681
  %tobool2 = icmp eq i32 %call1, 0, !dbg !2682
  br i1 %tobool2, label %for.end, label %for.body, !dbg !2682

for.body:                                         ; preds = %for.cond
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %bind, align 8, !dbg !2683
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !2666, metadata !DIExpression()), !dbg !2673
  %call3 = call fastcc %union.tree_node* @gimple_bind_block(%union.gimple_statement_d* %1) #8, !dbg !2685
  %tobool4 = icmp eq %union.tree_node* %call3, null, !dbg !2685
  br i1 %tobool4, label %for.inc, label %for.end, !dbg !2686

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.0, 1, !dbg !2687
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2664, metadata !DIExpression()), !dbg !2673
  br label %for.cond, !dbg !2688, !llvm.loop !2689

for.end:                                          ; preds = %for.body, %for.cond
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %bind, align 8, !dbg !2691
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %2, metadata !2666, metadata !DIExpression()), !dbg !2673
  %call5 = call fastcc %union.tree_node* @gimple_bind_block(%union.gimple_statement_d* %2) #8, !dbg !2692
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !2665, metadata !DIExpression()), !dbg !2673
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2693
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !2693
  %call7 = call %union.tree_node* @chainon(%union.tree_node* %4, %union.tree_node* %block) #6, !dbg !2694
  store %union.tree_node* %call7, %union.tree_node** %3, align 8, !dbg !2695
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2696
  ret void, !dbg !2696
}

declare dso_local %union.tree_node* @build_empty_stmt(i32) local_unnamed_addr #1

declare dso_local %union.tree_node* @build3_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @c_gimplify_expr(%union.tree_node** %expr_p, %struct.gimple_seq_d** %pre_p, %struct.gimple_seq_d** %post_p) local_unnamed_addr #4 !dbg !2697 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %expr_p, metadata !2702, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %pre_p, metadata !2703, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %post_p, metadata !2704, metadata !DIExpression()), !dbg !2706
  %0 = bitcast %union.tree_node** %expr_p to i64**, !dbg !2707
  %1 = load i64*, i64** %0, align 8, !dbg !2707
  %bf.load = load i64, i64* %1, align 8, !dbg !2707
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2708
  %cmp = icmp eq i64 %bf.cast1, 132, !dbg !2708
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2710

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 5, !dbg !2711
  %2 = bitcast i64* %arrayidx to i64**, !dbg !2711
  %3 = load i64*, i64** %2, align 8, !dbg !2711
  %bf.load2 = load i64, i64* %3, align 8, !dbg !2711
  %bf.cast42 = and i64 %bf.load2, 65535, !dbg !2712
  %cmp5 = icmp eq i64 %bf.cast42, 32, !dbg !2712
  %4 = bitcast i64* %3 to %union.tree_node*, !dbg !2713
  br i1 %cmp5, label %land.lhs.true6, label %if.end, !dbg !2713

land.lhs.true6:                                   ; preds = %land.lhs.true
  %decl_flag_1 = getelementptr inbounds i64, i64* %3, i64 7, !dbg !2714
  %bf.load10 = load i64, i64* %decl_flag_1, align 8, !dbg !2714
  %bf.cast123 = and i64 %bf.load10, 33554432, !dbg !2714
  %tobool = icmp eq i64 %bf.cast123, 0, !dbg !2714
  br i1 %tobool, label %land.lhs.true13, label %if.end, !dbg !2715

land.lhs.true13:                                  ; preds = %land.lhs.true6
  %bf.cast214 = and i64 %bf.load2, 67108864, !dbg !2716
  %tobool22 = icmp eq i64 %bf.cast214, 0, !dbg !2716
  br i1 %tobool22, label %land.lhs.true23, label %if.end, !dbg !2717

land.lhs.true23:                                  ; preds = %land.lhs.true13
  %initial = getelementptr inbounds i64, i64* %3, i64 10, !dbg !2718
  %5 = bitcast i64* %initial to %union.tree_node**, !dbg !2718
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8, !dbg !2718
  %cmp31 = icmp ne %union.tree_node* %6, %4, !dbg !2719
  %7 = load i32, i32* @warn_init_self, align 4, !dbg !2720
  %tobool33 = icmp ne i32 %7, 0, !dbg !2720
  %or.cond = or i1 %cmp31, %tobool33, !dbg !2721
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2721

if.then:                                          ; preds = %land.lhs.true23
  %bf.set = or i64 %bf.load2, 8388608, !dbg !2722
  store i64 %bf.set, i64* %3, align 8, !dbg !2722
  br label %if.end, !dbg !2723

if.end:                                           ; preds = %land.lhs.true13, %land.lhs.true6, %land.lhs.true23, %if.then, %land.lhs.true, %entry
  ret i32 -1, !dbg !2724
}

declare dso_local %struct.VEC_gimple_heap* @gimple_bind_expr_stack() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_iterate(%struct.VEC_gimple_base* %vec_, i32 %ix_, %union.gimple_statement_d** %ptr) unnamed_addr #0 !dbg !2725 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !2731, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2732, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %ptr, metadata !2733, metadata !DIExpression()), !dbg !2734
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !2735
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2735

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !2735
  %0 = load i32, i32* %num, align 8, !dbg !2735
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2735
  br i1 %cmp, label %if.then, label %if.else, !dbg !2737

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2738
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2738
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %arrayidx, align 8, !dbg !2738
  br label %return, !dbg !2738

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2740

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %union.gimple_statement_d* [ null, %if.else ], [ %1, %if.then ], !dbg !2742
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2742
  store %union.gimple_statement_d* %storemerge, %union.gimple_statement_d** %ptr, align 8, !dbg !2742
  ret i32 %retval.0, !dbg !2737
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_bind_block(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2743 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2750, metadata !DIExpression()), !dbg !2751
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !2752
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2752
  ret %union.tree_node* %1, !dbg !2753
}

declare dso_local %union.tree_node* @chainon(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1887, !1888, !1889}
!llvm.ident = !{!1890}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !581, nameTableKind: None)
!1 = !DIFile(filename: "c-gimplify.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !327, !333, !338, !343, !361, !368, !375, !398, !405}
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
!375 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !376, line: 309, baseType: !5, size: 32, elements: !377)
!376 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397}
!378 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!379 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!380 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!381 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!382 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!383 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!384 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!385 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!386 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!387 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!388 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!389 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!390 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!391 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!392 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!393 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!394 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!395 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!396 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!397 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!398 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !399, line: 104, baseType: !5, size: 32, elements: !400)
!399 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!400 = !{!401, !402, !403, !404}
!401 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!402 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!403 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!404 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!405 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !406, line: 74, baseType: !5, size: 32, elements: !407)
!406 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!408 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!562 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!563 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!564 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!565 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!566 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!567 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!568 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!569 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!570 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!571 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!572 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!573 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!574 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!575 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!576 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!577 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!578 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!579 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!580 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!581 = !{!582, !583, !584, !585, !588, !589, !132, !591, !916}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!584 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !592, line: 56, baseType: !593)
!592 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !133, line: 3371, size: 1792, elements: !595)
!595 = !{!596, !629, !635, !648, !667, !678, !683, !692, !698, !711, !723, !761, !1220, !1248, !1265, !1266, !1271, !1280, !1286, !1291, !1295, !1299, !1538, !1585, !1591, !1597, !1604, !1617, !1631, !1648, !1660, !1682, !1697, !1869}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !594, file: !133, line: 3372, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !133, line: 360, size: 64, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !597, file: !133, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !597, file: !133, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !597, file: !133, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !597, file: !133, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !597, file: !133, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !597, file: !133, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !597, file: !133, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !597, file: !133, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !597, file: !133, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !597, file: !133, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !597, file: !133, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !597, file: !133, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !597, file: !133, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !597, file: !133, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !597, file: !133, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !597, file: !133, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !597, file: !133, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !597, file: !133, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !597, file: !133, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !597, file: !133, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !597, file: !133, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !597, file: !133, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !597, file: !133, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !597, file: !133, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !597, file: !133, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !597, file: !133, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !597, file: !133, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !597, file: !133, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !597, file: !133, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !597, file: !133, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !594, file: !133, line: 3373, baseType: !630, size: 192)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !133, line: 402, size: 192, elements: !631)
!631 = !{!632, !633, !634}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !630, file: !133, line: 403, baseType: !597, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !630, file: !133, line: 404, baseType: !591, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !133, line: 405, baseType: !591, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !594, file: !133, line: 3374, baseType: !636, size: 320)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !133, line: 1384, size: 320, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !636, file: !133, line: 1385, baseType: !630, size: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !636, file: !133, line: 1386, baseType: !640, size: 128, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !641, line: 58, baseType: !642)
!641 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !641, line: 54, size: 128, elements: !643)
!643 = !{!644, !646}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !642, file: !641, line: 56, baseType: !645, size: 64)
!645 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !642, file: !641, line: 57, baseType: !647, size: 64, offset: 64)
!647 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !594, file: !133, line: 3375, baseType: !649, size: 256)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !133, line: 1397, size: 256, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !649, file: !133, line: 1398, baseType: !630, size: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !649, file: !133, line: 1399, baseType: !653, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !655, line: 52, size: 256, elements: !656)
!655 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!656 = !{!657, !658, !659, !660, !661, !662, !663}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !654, file: !655, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !654, file: !655, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !654, file: !655, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !654, file: !655, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !654, file: !655, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !654, file: !655, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !654, file: !655, line: 62, baseType: !664, size: 192, offset: 64)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 192, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 3)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !594, file: !133, line: 3376, baseType: !668, size: 256)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !133, line: 1408, size: 256, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !668, file: !133, line: 1409, baseType: !630, size: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !668, file: !133, line: 1410, baseType: !672, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !674, line: 27, size: 192, elements: !675)
!674 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !673, file: !674, line: 29, baseType: !640, size: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !673, file: !674, line: 30, baseType: !3, size: 32, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !594, file: !133, line: 3377, baseType: !679, size: 256)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !133, line: 1437, size: 256, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !679, file: !133, line: 1438, baseType: !630, size: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !679, file: !133, line: 1439, baseType: !591, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !594, file: !133, line: 3378, baseType: !684, size: 256)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !133, line: 1418, size: 256, elements: !685)
!685 = !{!686, !687, !688}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !684, file: !133, line: 1419, baseType: !630, size: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !684, file: !133, line: 1420, baseType: !584, size: 32, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !684, file: !133, line: 1421, baseType: !689, size: 8, offset: 224)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 8, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 1)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !594, file: !133, line: 3379, baseType: !693, size: 320)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !133, line: 1428, size: 320, elements: !694)
!694 = !{!695, !696, !697}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !693, file: !133, line: 1429, baseType: !630, size: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !693, file: !133, line: 1430, baseType: !591, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !693, file: !133, line: 1431, baseType: !591, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !594, file: !133, line: 3380, baseType: !699, size: 320)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !133, line: 1460, size: 320, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !699, file: !133, line: 1461, baseType: !630, size: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !699, file: !133, line: 1462, baseType: !703, size: 128, offset: 192)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !704, line: 31, size: 128, elements: !705)
!704 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!705 = !{!706, !709, !710}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !703, file: !704, line: 32, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !703, file: !704, line: 33, baseType: !5, size: 32, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !703, file: !704, line: 34, baseType: !5, size: 32, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !594, file: !133, line: 3381, baseType: !712, size: 384)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !133, line: 2507, size: 384, elements: !713)
!713 = !{!714, !715, !720, !721, !722}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !712, file: !133, line: 2508, baseType: !630, size: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !712, file: !133, line: 2509, baseType: !716, size: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !717, line: 58, baseType: !718)
!717 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !719, line: 44, baseType: !5)
!719 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!720 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !712, file: !133, line: 2510, baseType: !5, size: 32, offset: 224)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !712, file: !133, line: 2511, baseType: !591, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !712, file: !133, line: 2512, baseType: !591, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !594, file: !133, line: 3382, baseType: !724, size: 896)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !133, line: 2652, size: 896, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !724, file: !133, line: 2653, baseType: !712, size: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !724, file: !133, line: 2654, baseType: !591, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !724, file: !133, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !724, file: !133, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !724, file: !133, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !724, file: !133, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !724, file: !133, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !724, file: !133, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !724, file: !133, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !724, file: !133, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !724, file: !133, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !724, file: !133, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !724, file: !133, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !724, file: !133, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !724, file: !133, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !724, file: !133, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !724, file: !133, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !724, file: !133, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !724, file: !133, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !724, file: !133, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !724, file: !133, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !724, file: !133, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !724, file: !133, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !724, file: !133, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !724, file: !133, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !724, file: !133, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !724, file: !133, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !724, file: !133, line: 2703, baseType: !5, size: 32, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !724, file: !133, line: 2705, baseType: !591, size: 64, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !724, file: !133, line: 2706, baseType: !591, size: 64, offset: 640)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !724, file: !133, line: 2707, baseType: !591, size: 64, offset: 704)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !724, file: !133, line: 2708, baseType: !591, size: 64, offset: 768)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !724, file: !133, line: 2711, baseType: !759, size: 64, offset: 832)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !133, line: 2711, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !594, file: !133, line: 3383, baseType: !762, size: 960)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !133, line: 2756, size: 960, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !762, file: !133, line: 2757, baseType: !724, size: 896)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !762, file: !133, line: 2758, baseType: !766, size: 64, offset: 896)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !592, line: 50, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !769, line: 240, size: 384, elements: !770)
!769 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !768, file: !769, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !768, file: !769, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !768, file: !769, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !768, file: !769, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !768, file: !769, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !768, file: !769, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !768, file: !769, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !768, file: !769, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !768, file: !769, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !768, file: !769, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !768, file: !769, line: 321, baseType: !782, size: 320, offset: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !769, line: 315, size: 320, elements: !783)
!783 = !{!784, !1187, !1189, !1218, !1219}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !782, file: !769, line: 316, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 64, elements: !690)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !769, line: 183, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !769, line: 166, size: 64, elements: !788)
!788 = !{!789, !790, !791, !792, !793, !801, !802, !814, !817, !877, !878, !1164, !1177, !1184}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !787, file: !769, line: 168, baseType: !584, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !787, file: !769, line: 169, baseType: !5, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !787, file: !769, line: 170, baseType: !589, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !787, file: !769, line: 171, baseType: !766, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !787, file: !769, line: 172, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !592, line: 53, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !769, line: 359, size: 128, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !796, file: !769, line: 360, baseType: !584, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !796, file: !769, line: 361, baseType: !800, size: 64, offset: 64)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 64, elements: !690)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !787, file: !769, line: 173, baseType: !3, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !787, file: !769, line: 174, baseType: !803, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !769, line: 133, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !769, line: 115, size: 32, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !804, file: !769, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !804, file: !769, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !804, file: !769, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !804, file: !769, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !804, file: !769, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !804, file: !769, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !804, file: !769, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !804, file: !769, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !787, file: !769, line: 175, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !769, line: 175, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !787, file: !769, line: 176, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !820, line: 75, size: 256, elements: !821)
!820 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!821 = !{!822, !836, !837, !838}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !819, file: !820, line: 76, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !820, line: 68, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !820, line: 63, size: 320, elements: !826)
!826 = !{!827, !829, !830, !831}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !825, file: !820, line: 64, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !825, file: !820, line: 65, baseType: !828, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !825, file: !820, line: 66, baseType: !5, size: 32, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !825, file: !820, line: 67, baseType: !832, size: 128, offset: 192)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !833, size: 128, elements: !834)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !820, line: 29, baseType: !645)
!834 = !{!835}
!835 = !DISubrange(count: 2)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !819, file: !820, line: 77, baseType: !823, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !819, file: !820, line: 78, baseType: !5, size: 32, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !819, file: !820, line: 79, baseType: !839, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !820, line: 49, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !820, line: 45, size: 832, elements: !842)
!842 = !{!843, !844, !845}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !841, file: !820, line: 46, baseType: !828, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !841, file: !820, line: 47, baseType: !818, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !841, file: !820, line: 48, baseType: !846, size: 704, offset: 128)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !847, line: 164, size: 704, elements: !848)
!847 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!848 = !{!849, !850, !860, !861, !862, !863, !864, !865, !869, !873, !874, !875, !876}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !846, file: !847, line: 166, baseType: !647, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !846, file: !847, line: 167, baseType: !851, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !847, line: 157, size: 192, elements: !853)
!853 = !{!854, !855, !856}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !852, file: !847, line: 159, baseType: !586, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !852, file: !847, line: 160, baseType: !851, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !852, file: !847, line: 161, baseType: !857, size: 32, offset: 128)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 32, elements: !858)
!858 = !{!859}
!859 = !DISubrange(count: 4)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !846, file: !847, line: 168, baseType: !586, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !846, file: !847, line: 169, baseType: !586, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !846, file: !847, line: 170, baseType: !586, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !846, file: !847, line: 171, baseType: !647, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !846, file: !847, line: 172, baseType: !584, size: 32, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !846, file: !847, line: 176, baseType: !866, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!851, !588, !647}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !846, file: !847, line: 177, baseType: !870, size: 64, offset: 512)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !588, !851}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !846, file: !847, line: 178, baseType: !588, size: 64, offset: 576)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !846, file: !847, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !846, file: !847, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !846, file: !847, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !787, file: !769, line: 177, baseType: !591, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !787, file: !769, line: 178, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !328, line: 217, size: 832, elements: !881)
!881 = !{!882, !1129, !1130, !1131, !1134, !1138, !1139, !1140, !1158, !1159, !1160, !1161, !1162, !1163}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !880, file: !328, line: 219, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !328, line: 151, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !328, line: 151, size: 128, elements: !886)
!886 = !{!887}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !885, file: !328, line: 151, baseType: !888, size: 128)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !328, line: 150, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !328, line: 150, size: 128, elements: !890)
!890 = !{!891, !892, !893}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !889, file: !328, line: 150, baseType: !5, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !889, file: !328, line: 150, baseType: !5, size: 32, offset: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !889, file: !328, line: 150, baseType: !894, size: 64, offset: 64)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 64, elements: !690)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !592, line: 108, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !328, line: 122, size: 512, elements: !898)
!898 = !{!899, !900, !901, !1121, !1122, !1123, !1124, !1125, !1126, !1127}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !897, file: !328, line: 124, baseType: !879, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !897, file: !328, line: 125, baseType: !879, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !897, file: !328, line: 131, baseType: !902, size: 64, offset: 128)
!902 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !328, line: 128, size: 64, elements: !903)
!903 = !{!904, !1120}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !902, file: !328, line: 129, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !592, line: 66, baseType: !906)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !908, line: 143, size: 192, elements: !909)
!908 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!909 = !{!910, !1118, !1119}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !907, file: !908, line: 145, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !592, line: 69, baseType: !912)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !908, line: 136, size: 192, elements: !914)
!914 = !{!915, !1116, !1117}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !913, file: !908, line: 137, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !592, line: 58, baseType: !917)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !908, line: 737, size: 768, elements: !919)
!919 = !{!920, !937, !971, !977, !982, !987, !994, !1000, !1006, !1011, !1025, !1030, !1036, !1041, !1051, !1056, !1074, !1081, !1088, !1094, !1099, !1105, !1111}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !918, file: !908, line: 738, baseType: !921, size: 256)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !908, line: 271, size: 256, elements: !922)
!922 = !{!923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !921, file: !908, line: 274, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !921, file: !908, line: 277, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !921, file: !908, line: 281, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !921, file: !908, line: 284, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !921, file: !908, line: 291, baseType: !5, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !921, file: !908, line: 295, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !921, file: !908, line: 298, baseType: !5, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !921, file: !908, line: 301, baseType: !5, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !921, file: !908, line: 307, baseType: !5, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !921, file: !908, line: 312, baseType: !5, size: 32, offset: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !921, file: !908, line: 316, baseType: !716, size: 32, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !921, file: !908, line: 319, baseType: !5, size: 32, offset: 96)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !921, file: !908, line: 323, baseType: !879, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !921, file: !908, line: 327, baseType: !591, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !918, file: !908, line: 739, baseType: !938, size: 448)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !908, line: 350, size: 448, elements: !939)
!939 = !{!940, !969}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !938, file: !908, line: 353, baseType: !941, size: 384)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !908, line: 333, size: 384, elements: !942)
!942 = !{!943, !944, !952}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !941, file: !908, line: 336, baseType: !921, size: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !941, file: !908, line: 343, baseType: !945, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !947, line: 37, size: 128, elements: !948)
!947 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !946, file: !947, line: 39, baseType: !945, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !946, file: !947, line: 40, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !941, file: !908, line: 344, baseType: !953, size: 64, offset: 320)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !947, line: 45, size: 320, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !954, file: !947, line: 47, baseType: !953, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !954, file: !947, line: 48, baseType: !958, size: 256, offset: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !133, line: 1883, size: 256, elements: !959)
!959 = !{!960, !962, !963, !968}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !958, file: !133, line: 1884, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !958, file: !133, line: 1885, baseType: !961, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !958, file: !133, line: 1891, baseType: !964, size: 64, offset: 128)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !958, file: !133, line: 1891, size: 64, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !964, file: !133, line: 1891, baseType: !916, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !964, file: !133, line: 1891, baseType: !591, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !958, file: !133, line: 1892, baseType: !951, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !938, file: !908, line: 359, baseType: !970, size: 64, offset: 384)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 64, elements: !690)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !918, file: !908, line: 740, baseType: !972, size: 512)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !908, line: 365, size: 512, elements: !973)
!973 = !{!974, !975, !976}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !972, file: !908, line: 368, baseType: !941, size: 384)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !972, file: !908, line: 373, baseType: !591, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !972, file: !908, line: 374, baseType: !591, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !918, file: !908, line: 741, baseType: !978, size: 576)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !908, line: 380, size: 576, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !978, file: !908, line: 383, baseType: !972, size: 512)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !978, file: !908, line: 389, baseType: !970, size: 64, offset: 512)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !918, file: !908, line: 742, baseType: !983, size: 320)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !908, line: 395, size: 320, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !983, file: !908, line: 397, baseType: !921, size: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !983, file: !908, line: 400, baseType: !905, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !918, file: !908, line: 743, baseType: !988, size: 448)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !908, line: 406, size: 448, elements: !989)
!989 = !{!990, !991, !992, !993}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !988, file: !908, line: 408, baseType: !921, size: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !988, file: !908, line: 412, baseType: !591, size: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !988, file: !908, line: 420, baseType: !591, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !988, file: !908, line: 423, baseType: !905, size: 64, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !918, file: !908, line: 744, baseType: !995, size: 384)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !908, line: 429, size: 384, elements: !996)
!996 = !{!997, !998, !999}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !995, file: !908, line: 431, baseType: !921, size: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !995, file: !908, line: 434, baseType: !591, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !995, file: !908, line: 437, baseType: !905, size: 64, offset: 320)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !918, file: !908, line: 745, baseType: !1001, size: 384)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !908, line: 443, size: 384, elements: !1002)
!1002 = !{!1003, !1004, !1005}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1001, file: !908, line: 445, baseType: !921, size: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1001, file: !908, line: 449, baseType: !591, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1001, file: !908, line: 453, baseType: !905, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !918, file: !908, line: 746, baseType: !1007, size: 320)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !908, line: 459, size: 320, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1007, file: !908, line: 461, baseType: !921, size: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1007, file: !908, line: 464, baseType: !591, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !918, file: !908, line: 747, baseType: !1012, size: 768)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !908, line: 469, size: 768, elements: !1013)
!1013 = !{!1014, !1015, !1016, !1017, !1018}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1012, file: !908, line: 471, baseType: !921, size: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1012, file: !908, line: 474, baseType: !5, size: 32, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1012, file: !908, line: 475, baseType: !5, size: 32, offset: 288)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1012, file: !908, line: 478, baseType: !591, size: 64, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1012, file: !908, line: 481, baseType: !1019, size: 384, offset: 384)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, size: 384, elements: !690)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !133, line: 1917, size: 384, elements: !1021)
!1021 = !{!1022, !1023, !1024}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1020, file: !133, line: 1920, baseType: !958, size: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1020, file: !133, line: 1921, baseType: !591, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1020, file: !133, line: 1922, baseType: !716, size: 32, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !918, file: !908, line: 748, baseType: !1026, size: 320)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !908, line: 487, size: 320, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1026, file: !908, line: 490, baseType: !921, size: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1026, file: !908, line: 494, baseType: !584, size: 32, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !918, file: !908, line: 749, baseType: !1031, size: 384)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !908, line: 500, size: 384, elements: !1032)
!1032 = !{!1033, !1034, !1035}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1031, file: !908, line: 502, baseType: !921, size: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1031, file: !908, line: 506, baseType: !905, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1031, file: !908, line: 510, baseType: !905, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !918, file: !908, line: 750, baseType: !1037, size: 320)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !908, line: 529, size: 320, elements: !1038)
!1038 = !{!1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1037, file: !908, line: 531, baseType: !921, size: 256)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1037, file: !908, line: 540, baseType: !905, size: 64, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !918, file: !908, line: 751, baseType: !1042, size: 704)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !908, line: 546, size: 704, elements: !1043)
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1049, !1050}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1042, file: !908, line: 549, baseType: !972, size: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1042, file: !908, line: 553, baseType: !589, size: 64, offset: 512)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1042, file: !908, line: 557, baseType: !583, size: 8, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1042, file: !908, line: 558, baseType: !583, size: 8, offset: 584)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1042, file: !908, line: 559, baseType: !583, size: 8, offset: 592)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1042, file: !908, line: 560, baseType: !583, size: 8, offset: 600)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1042, file: !908, line: 566, baseType: !970, size: 64, offset: 640)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !918, file: !908, line: 752, baseType: !1052, size: 384)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !908, line: 571, size: 384, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1052, file: !908, line: 573, baseType: !983, size: 320)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1052, file: !908, line: 577, baseType: !591, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !918, file: !908, line: 753, baseType: !1057, size: 576)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !908, line: 600, size: 576, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1064, !1073}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1057, file: !908, line: 602, baseType: !983, size: 320)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1057, file: !908, line: 605, baseType: !591, size: 64, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1057, file: !908, line: 609, baseType: !1062, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1063, line: 46, baseType: !645)
!1063 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1057, file: !908, line: 612, baseType: !1065, size: 64, offset: 448)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !908, line: 581, size: 320, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1066, file: !908, line: 583, baseType: !132, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1066, file: !908, line: 586, baseType: !591, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1066, file: !908, line: 589, baseType: !591, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1066, file: !908, line: 592, baseType: !591, size: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1066, file: !908, line: 595, baseType: !591, size: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1057, file: !908, line: 616, baseType: !905, size: 64, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !918, file: !908, line: 754, baseType: !1075, size: 512)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !908, line: 622, size: 512, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1075, file: !908, line: 624, baseType: !983, size: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1075, file: !908, line: 628, baseType: !591, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1075, file: !908, line: 632, baseType: !591, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1075, file: !908, line: 636, baseType: !591, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !918, file: !908, line: 755, baseType: !1082, size: 704)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !908, line: 642, size: 704, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1082, file: !908, line: 644, baseType: !1075, size: 512)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1082, file: !908, line: 648, baseType: !591, size: 64, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1082, file: !908, line: 652, baseType: !591, size: 64, offset: 576)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1082, file: !908, line: 653, baseType: !591, size: 64, offset: 640)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !918, file: !908, line: 756, baseType: !1089, size: 448)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !908, line: 663, size: 448, elements: !1090)
!1090 = !{!1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1089, file: !908, line: 665, baseType: !983, size: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1089, file: !908, line: 668, baseType: !591, size: 64, offset: 320)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1089, file: !908, line: 673, baseType: !591, size: 64, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !918, file: !908, line: 757, baseType: !1095, size: 384)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !908, line: 694, size: 384, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1095, file: !908, line: 696, baseType: !983, size: 320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1095, file: !908, line: 699, baseType: !591, size: 64, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !918, file: !908, line: 758, baseType: !1100, size: 384)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !908, line: 681, size: 384, elements: !1101)
!1101 = !{!1102, !1103, !1104}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1100, file: !908, line: 683, baseType: !921, size: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1100, file: !908, line: 686, baseType: !591, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1100, file: !908, line: 689, baseType: !591, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !918, file: !908, line: 759, baseType: !1106, size: 384)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !908, line: 707, size: 384, elements: !1107)
!1107 = !{!1108, !1109, !1110}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1106, file: !908, line: 709, baseType: !921, size: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1106, file: !908, line: 712, baseType: !591, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1106, file: !908, line: 712, baseType: !591, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !918, file: !908, line: 760, baseType: !1112, size: 320)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !908, line: 718, size: 320, elements: !1113)
!1113 = !{!1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1112, file: !908, line: 720, baseType: !921, size: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1112, file: !908, line: 723, baseType: !591, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !913, file: !908, line: 138, baseType: !912, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !913, file: !908, line: 139, baseType: !912, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !907, file: !908, line: 146, baseType: !911, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !907, file: !908, line: 152, baseType: !905, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !902, file: !328, line: 130, baseType: !766, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !897, file: !328, line: 134, baseType: !588, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !897, file: !328, line: 137, baseType: !591, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !897, file: !328, line: 138, baseType: !716, size: 32, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !897, file: !328, line: 142, baseType: !5, size: 32, offset: 352)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !897, file: !328, line: 144, baseType: !584, size: 32, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !897, file: !328, line: 145, baseType: !584, size: 32, offset: 416)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !897, file: !328, line: 146, baseType: !1128, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !328, line: 119, baseType: !647)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !880, file: !328, line: 220, baseType: !883, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !880, file: !328, line: 223, baseType: !588, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !880, file: !328, line: 226, baseType: !1132, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !328, line: 185, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !880, file: !328, line: 229, baseType: !1135, size: 128, offset: 256)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 128, elements: !834)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !328, line: 229, flags: DIFlagFwdDecl)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !880, file: !328, line: 232, baseType: !879, size: 64, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !880, file: !328, line: 233, baseType: !879, size: 64, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !880, file: !328, line: 238, baseType: !1141, size: 64, offset: 512)
!1141 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !328, line: 235, size: 64, elements: !1142)
!1142 = !{!1143, !1149}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1141, file: !328, line: 236, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !328, line: 273, size: 128, elements: !1146)
!1146 = !{!1147, !1148}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1145, file: !328, line: 275, baseType: !905, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1145, file: !328, line: 278, baseType: !905, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1141, file: !328, line: 237, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !328, line: 259, size: 320, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1151, file: !328, line: 261, baseType: !766, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1151, file: !328, line: 262, baseType: !766, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1151, file: !328, line: 266, baseType: !766, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1151, file: !328, line: 267, baseType: !766, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1151, file: !328, line: 270, baseType: !584, size: 32, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !880, file: !328, line: 241, baseType: !1128, size: 64, offset: 576)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !880, file: !328, line: 244, baseType: !584, size: 32, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !880, file: !328, line: 247, baseType: !584, size: 32, offset: 672)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !880, file: !328, line: 250, baseType: !584, size: 32, offset: 704)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !880, file: !328, line: 253, baseType: !584, size: 32, offset: 736)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !880, file: !328, line: 256, baseType: !584, size: 32, offset: 768)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !787, file: !769, line: 179, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !769, line: 150, baseType: !1167)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !769, line: 142, size: 320, elements: !1168)
!1168 = !{!1169, !1170, !1171, !1172, !1175, !1176}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1167, file: !769, line: 144, baseType: !591, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1167, file: !769, line: 145, baseType: !766, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1167, file: !769, line: 146, baseType: !766, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1167, file: !769, line: 147, baseType: !1173, size: 32, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1174, line: 31, baseType: !584)
!1174 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1167, file: !769, line: 148, baseType: !5, size: 32, offset: 224)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1167, file: !769, line: 149, baseType: !583, size: 8, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !787, file: !769, line: 180, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !769, line: 162, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !769, line: 159, size: 128, elements: !1181)
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1180, file: !769, line: 160, baseType: !591, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1180, file: !769, line: 161, baseType: !647, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !787, file: !769, line: 181, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !769, line: 181, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !782, file: !769, line: 317, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 64, elements: !690)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !782, file: !769, line: 318, baseType: !1190, size: 320)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !769, line: 188, size: 320, elements: !1191)
!1191 = !{!1192, !1194, !1217}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1190, file: !769, line: 190, baseType: !1193, size: 192)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 192, elements: !665)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1190, file: !769, line: 193, baseType: !1195, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !769, line: 206, size: 320, elements: !1197)
!1197 = !{!1198, !1202, !1203, !1204, !1216}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1196, file: !769, line: 208, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !592, line: 62, baseType: !1201)
!1201 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !592, line: 61, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1196, file: !769, line: 211, baseType: !5, size: 32, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1196, file: !769, line: 214, baseType: !647, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1196, file: !769, line: 224, baseType: !1205, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !769, line: 202, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !769, line: 202, size: 128, elements: !1208)
!1208 = !{!1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1207, file: !769, line: 202, baseType: !1210, size: 128)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !769, line: 200, baseType: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !769, line: 200, size: 128, elements: !1212)
!1212 = !{!1213, !1214, !1215}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1211, file: !769, line: 200, baseType: !5, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1211, file: !769, line: 200, baseType: !5, size: 32, offset: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1211, file: !769, line: 200, baseType: !800, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1196, file: !769, line: 234, baseType: !1205, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1190, file: !769, line: 197, baseType: !647, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !782, file: !769, line: 319, baseType: !654, size: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !782, file: !769, line: 320, baseType: !673, size: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !594, file: !133, line: 3384, baseType: !1221, size: 1472)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !133, line: 3114, size: 1472, elements: !1222)
!1222 = !{!1223, !1244, !1245, !1246, !1247}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1221, file: !133, line: 3115, baseType: !1224, size: 1216)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !133, line: 2984, size: 1216, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1224, file: !133, line: 2985, baseType: !762, size: 960)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1224, file: !133, line: 2986, baseType: !591, size: 64, offset: 960)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1224, file: !133, line: 2987, baseType: !591, size: 64, offset: 1024)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1224, file: !133, line: 2988, baseType: !591, size: 64, offset: 1088)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1224, file: !133, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1224, file: !133, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1224, file: !133, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1224, file: !133, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1224, file: !133, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1224, file: !133, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1224, file: !133, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1224, file: !133, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1224, file: !133, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1224, file: !133, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1224, file: !133, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1224, file: !133, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1224, file: !133, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1224, file: !133, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1221, file: !133, line: 3117, baseType: !591, size: 64, offset: 1216)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1221, file: !133, line: 3119, baseType: !591, size: 64, offset: 1280)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1221, file: !133, line: 3121, baseType: !591, size: 64, offset: 1344)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1221, file: !133, line: 3123, baseType: !591, size: 64, offset: 1408)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !594, file: !133, line: 3385, baseType: !1249, size: 1088)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !133, line: 2874, size: 1088, elements: !1250)
!1250 = !{!1251, !1252, !1253}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1249, file: !133, line: 2875, baseType: !762, size: 960)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1249, file: !133, line: 2876, baseType: !766, size: 64, offset: 960)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1249, file: !133, line: 2877, baseType: !1254, size: 64, offset: 1024)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1256, line: 172, size: 128, elements: !1257)
!1256 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1255, file: !1256, line: 174, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1255, file: !1256, line: 178, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1255, file: !1256, line: 183, baseType: !5, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1255, file: !1256, line: 187, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1255, file: !1256, line: 192, baseType: !5, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1255, file: !1256, line: 195, baseType: !5, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1255, file: !1256, line: 199, baseType: !591, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !594, file: !133, line: 3386, baseType: !1224, size: 1216)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !594, file: !133, line: 3387, baseType: !1267, size: 1280)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !133, line: 3093, size: 1280, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1267, file: !133, line: 3094, baseType: !1224, size: 1216)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1267, file: !133, line: 3095, baseType: !1254, size: 64, offset: 1216)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !594, file: !133, line: 3388, baseType: !1272, size: 1216)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !133, line: 2824, size: 1216, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1272, file: !133, line: 2825, baseType: !724, size: 896)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1272, file: !133, line: 2827, baseType: !591, size: 64, offset: 896)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1272, file: !133, line: 2828, baseType: !591, size: 64, offset: 960)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1272, file: !133, line: 2829, baseType: !591, size: 64, offset: 1024)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1272, file: !133, line: 2830, baseType: !591, size: 64, offset: 1088)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1272, file: !133, line: 2831, baseType: !591, size: 64, offset: 1152)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !594, file: !133, line: 3389, baseType: !1281, size: 1024)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !133, line: 2850, size: 1024, elements: !1282)
!1282 = !{!1283, !1284, !1285}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1281, file: !133, line: 2851, baseType: !762, size: 960)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1281, file: !133, line: 2852, baseType: !584, size: 32, offset: 960)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1281, file: !133, line: 2853, baseType: !584, size: 32, offset: 992)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !594, file: !133, line: 3390, baseType: !1287, size: 1024)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !133, line: 2857, size: 1024, elements: !1288)
!1288 = !{!1289, !1290}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1287, file: !133, line: 2858, baseType: !762, size: 960)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1287, file: !133, line: 2859, baseType: !1254, size: 64, offset: 960)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !594, file: !133, line: 3391, baseType: !1292, size: 960)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !133, line: 2862, size: 960, elements: !1293)
!1293 = !{!1294}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1292, file: !133, line: 2863, baseType: !762, size: 960)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !594, file: !133, line: 3392, baseType: !1296, size: 1472)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !133, line: 3304, size: 1472, elements: !1297)
!1297 = !{!1298}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1296, file: !133, line: 3305, baseType: !1221, size: 1472)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !594, file: !133, line: 3393, baseType: !1300, size: 1792)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !133, line: 3248, size: 1792, elements: !1301)
!1301 = !{!1302, !1303, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1300, file: !133, line: 3249, baseType: !1221, size: 1472)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1300, file: !133, line: 3251, baseType: !1304, size: 64, offset: 1472)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1306, line: 463, size: 1152, elements: !1307)
!1306 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1307 = !{!1308, !1311, !1342, !1343, !1458, !1461, !1462, !1463, !1464, !1465, !1466, !1490, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1305, file: !1306, line: 464, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1306, line: 464, flags: DIFlagFwdDecl)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1305, file: !1306, line: 467, baseType: !1312, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !328, line: 374, size: 640, elements: !1314)
!1314 = !{!1315, !1317, !1318, !1331, !1332, !1333, !1334, !1335, !1336, !1338, !1340, !1341}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1313, file: !328, line: 377, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !592, line: 111, baseType: !879)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1313, file: !328, line: 378, baseType: !1316, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1313, file: !328, line: 381, baseType: !1319, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !328, line: 282, baseType: !1321)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !328, line: 282, size: 128, elements: !1322)
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1321, file: !328, line: 282, baseType: !1324, size: 128)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !328, line: 281, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !328, line: 281, size: 128, elements: !1326)
!1326 = !{!1327, !1328, !1329}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1325, file: !328, line: 281, baseType: !5, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1325, file: !328, line: 281, baseType: !5, size: 32, offset: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1325, file: !328, line: 281, baseType: !1330, size: 64, offset: 64)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1316, size: 64, elements: !690)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1313, file: !328, line: 384, baseType: !584, size: 32, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1313, file: !328, line: 387, baseType: !584, size: 32, offset: 224)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1313, file: !328, line: 390, baseType: !584, size: 32, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1313, file: !328, line: 394, baseType: !1319, size: 64, offset: 320)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1313, file: !328, line: 396, baseType: !327, size: 32, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1313, file: !328, line: 399, baseType: !1337, size: 64, offset: 416)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 64, elements: !834)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1313, file: !328, line: 402, baseType: !1339, size: 64, offset: 480)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !834)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1313, file: !328, line: 406, baseType: !584, size: 32, offset: 544)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1313, file: !328, line: 409, baseType: !584, size: 32, offset: 576)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1305, file: !1306, line: 470, baseType: !906, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1305, file: !1306, line: 473, baseType: !1344, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1256, line: 39, size: 1152, elements: !1346)
!1346 = !{!1347, !1397, !1410, !1422, !1423, !1435, !1436, !1440, !1441, !1442, !1443, !1444}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1345, file: !1256, line: 41, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1349, line: 144, baseType: !1350)
!1349 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1349, line: 100, size: 896, elements: !1352)
!1352 = !{!1353, !1361, !1366, !1371, !1373, !1374, !1375, !1376, !1377, !1378, !1383, !1385, !1386, !1391, !1396}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1351, file: !1349, line: 102, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1349, line: 52, baseType: !1355)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1349, line: 47, baseType: !5)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1351, file: !1349, line: 105, baseType: !1362, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1349, line: 59, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!584, !1359, !1359}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1351, file: !1349, line: 108, baseType: !1367, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1349, line: 63, baseType: !1368)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !588}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1351, file: !1349, line: 111, baseType: !1372, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1351, file: !1349, line: 114, baseType: !1062, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1351, file: !1349, line: 117, baseType: !1062, size: 64, offset: 320)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1351, file: !1349, line: 120, baseType: !1062, size: 64, offset: 384)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1351, file: !1349, line: 124, baseType: !5, size: 32, offset: 448)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1351, file: !1349, line: 128, baseType: !5, size: 32, offset: 480)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1351, file: !1349, line: 131, baseType: !1379, size: 64, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1349, line: 75, baseType: !1380)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!588, !1062, !1062}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1351, file: !1349, line: 132, baseType: !1384, size: 64, offset: 576)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1349, line: 78, baseType: !1368)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1351, file: !1349, line: 135, baseType: !588, size: 64, offset: 640)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1351, file: !1349, line: 136, baseType: !1387, size: 64, offset: 704)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1349, line: 82, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!588, !588, !1062, !1062}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1351, file: !1349, line: 137, baseType: !1392, size: 64, offset: 768)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1349, line: 83, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !588, !588}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1351, file: !1349, line: 141, baseType: !5, size: 32, offset: 832)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1345, file: !1256, line: 48, baseType: !1398, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !908, line: 35, baseType: !1400)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !908, line: 35, size: 128, elements: !1401)
!1401 = !{!1402}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1400, file: !908, line: 35, baseType: !1403, size: 128)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !908, line: 33, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !908, line: 33, size: 128, elements: !1405)
!1405 = !{!1406, !1407, !1408}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1404, file: !908, line: 33, baseType: !5, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1404, file: !908, line: 33, baseType: !5, size: 32, offset: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1404, file: !908, line: 33, baseType: !1409, size: 64, offset: 64)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 64, elements: !690)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1345, file: !1256, line: 51, baseType: !1411, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !133, line: 183, baseType: !1413)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !133, line: 183, size: 128, elements: !1414)
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1413, file: !133, line: 183, baseType: !1416, size: 128)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !133, line: 182, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !133, line: 182, size: 128, elements: !1418)
!1418 = !{!1419, !1420, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1417, file: !133, line: 182, baseType: !5, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1417, file: !133, line: 182, baseType: !5, size: 32, offset: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1417, file: !133, line: 182, baseType: !970, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1345, file: !1256, line: 54, baseType: !591, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1345, file: !1256, line: 57, baseType: !1424, size: 128, offset: 256)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1425, line: 31, size: 128, elements: !1426)
!1425 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1424, file: !1425, line: 35, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1424, file: !1425, line: 39, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1424, file: !1425, line: 42, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1424, file: !1425, line: 46, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1424, file: !1425, line: 50, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1424, file: !1425, line: 53, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1424, file: !1425, line: 56, baseType: !1434, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !592, line: 47, baseType: !818)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1345, file: !1256, line: 60, baseType: !1424, size: 128, offset: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1345, file: !1256, line: 64, baseType: !1437, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1439, line: 33, flags: DIFlagFwdDecl)
!1439 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1345, file: !1256, line: 67, baseType: !591, size: 64, offset: 576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1345, file: !1256, line: 73, baseType: !1348, size: 64, offset: 640)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1345, file: !1256, line: 77, baseType: !1434, size: 64, offset: 704)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1345, file: !1256, line: 80, baseType: !5, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1345, file: !1256, line: 82, baseType: !1445, size: 320, offset: 832)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !947, line: 62, size: 320, elements: !1446)
!1446 = !{!1447, !1453, !1454, !1455, !1456, !1457}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1445, file: !947, line: 63, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !947, line: 56, size: 128, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1449, file: !947, line: 57, baseType: !1448, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1449, file: !947, line: 58, baseType: !689, size: 8, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1445, file: !947, line: 64, baseType: !5, size: 32, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1445, file: !947, line: 66, baseType: !5, size: 32, offset: 96)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1445, file: !947, line: 68, baseType: !583, size: 8, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1445, file: !947, line: 70, baseType: !945, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1445, file: !947, line: 71, baseType: !953, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1305, file: !1306, line: 476, baseType: !1459, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1306, line: 476, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1305, file: !1306, line: 479, baseType: !1348, size: 64, offset: 320)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1305, file: !1306, line: 484, baseType: !591, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1305, file: !1306, line: 488, baseType: !591, size: 64, offset: 448)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1305, file: !1306, line: 493, baseType: !591, size: 64, offset: 512)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1305, file: !1306, line: 496, baseType: !591, size: 64, offset: 576)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1305, file: !1306, line: 501, baseType: !1467, size: 64, offset: 640)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !339, line: 2355, size: 576, elements: !1469)
!1469 = !{!1470, !1473, !1474, !1475, !1476, !1478, !1479, !1484, !1485, !1486, !1487, !1488, !1489}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1468, file: !339, line: 2356, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !339, line: 2356, flags: DIFlagFwdDecl)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1468, file: !339, line: 2357, baseType: !589, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1468, file: !339, line: 2358, baseType: !584, size: 32, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1468, file: !339, line: 2359, baseType: !584, size: 32, offset: 160)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1468, file: !339, line: 2360, baseType: !1477, size: 128, offset: 192)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 128, elements: !858)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1468, file: !339, line: 2364, baseType: !584, size: 32, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1468, file: !339, line: 2367, baseType: !1480, size: 128, offset: 384)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !339, line: 2349, size: 128, elements: !1481)
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1480, file: !339, line: 2351, baseType: !766, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1480, file: !339, line: 2352, baseType: !647, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1468, file: !339, line: 2371, baseType: !338, size: 32, offset: 512)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1468, file: !339, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1468, file: !339, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1468, file: !339, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1468, file: !339, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1468, file: !339, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1305, file: !1306, line: 504, baseType: !1491, size: 64, offset: 704)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1306, line: 504, flags: DIFlagFwdDecl)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1305, file: !1306, line: 507, baseType: !1348, size: 64, offset: 768)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1305, file: !1306, line: 510, baseType: !584, size: 32, offset: 832)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1305, file: !1306, line: 513, baseType: !584, size: 32, offset: 864)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1305, file: !1306, line: 516, baseType: !716, size: 32, offset: 896)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1305, file: !1306, line: 519, baseType: !716, size: 32, offset: 928)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1305, file: !1306, line: 522, baseType: !5, size: 32, offset: 960)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1305, file: !1306, line: 523, baseType: !5, size: 32, offset: 992)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1305, file: !1306, line: 528, baseType: !589, size: 64, offset: 1024)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1305, file: !1306, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1305, file: !1306, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1305, file: !1306, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1305, file: !1306, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1305, file: !1306, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1305, file: !1306, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1305, file: !1306, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1305, file: !1306, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1305, file: !1306, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1305, file: !1306, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1305, file: !1306, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1305, file: !1306, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1305, file: !1306, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1305, file: !1306, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1305, file: !1306, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1305, file: !1306, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1300, file: !133, line: 3254, baseType: !591, size: 64, offset: 1536)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1300, file: !133, line: 3257, baseType: !591, size: 64, offset: 1600)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1300, file: !133, line: 3258, baseType: !591, size: 64, offset: 1664)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1300, file: !133, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1300, file: !133, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1300, file: !133, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1300, file: !133, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1300, file: !133, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1300, file: !133, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1300, file: !133, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1300, file: !133, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1300, file: !133, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1300, file: !133, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1300, file: !133, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1300, file: !133, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1300, file: !133, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1300, file: !133, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1300, file: !133, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1300, file: !133, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1300, file: !133, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1300, file: !133, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !594, file: !133, line: 3394, baseType: !1539, size: 1344)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !133, line: 2279, size: 1344, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1539, file: !133, line: 2280, baseType: !630, size: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1539, file: !133, line: 2281, baseType: !591, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1539, file: !133, line: 2282, baseType: !591, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1539, file: !133, line: 2283, baseType: !591, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1539, file: !133, line: 2284, baseType: !591, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1539, file: !133, line: 2285, baseType: !5, size: 32, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1539, file: !133, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1539, file: !133, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1539, file: !133, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1539, file: !133, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1539, file: !133, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1539, file: !133, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1539, file: !133, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1539, file: !133, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1539, file: !133, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1539, file: !133, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1539, file: !133, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1539, file: !133, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1539, file: !133, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1539, file: !133, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1539, file: !133, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1539, file: !133, line: 2305, baseType: !5, size: 32, offset: 512)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1539, file: !133, line: 2306, baseType: !1173, size: 32, offset: 544)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1539, file: !133, line: 2307, baseType: !591, size: 64, offset: 576)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1539, file: !133, line: 2308, baseType: !591, size: 64, offset: 640)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1539, file: !133, line: 2314, baseType: !1567, size: 64, offset: 704)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !133, line: 2309, size: 64, elements: !1568)
!1568 = !{!1569, !1570, !1571}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1567, file: !133, line: 2310, baseType: !584, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1567, file: !133, line: 2311, baseType: !589, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1567, file: !133, line: 2312, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !133, line: 2277, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1539, file: !133, line: 2315, baseType: !591, size: 64, offset: 768)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1539, file: !133, line: 2316, baseType: !591, size: 64, offset: 832)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1539, file: !133, line: 2317, baseType: !591, size: 64, offset: 896)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1539, file: !133, line: 2318, baseType: !591, size: 64, offset: 960)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1539, file: !133, line: 2319, baseType: !591, size: 64, offset: 1024)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1539, file: !133, line: 2320, baseType: !591, size: 64, offset: 1088)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1539, file: !133, line: 2321, baseType: !591, size: 64, offset: 1152)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1539, file: !133, line: 2322, baseType: !591, size: 64, offset: 1216)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1539, file: !133, line: 2324, baseType: !1583, size: 64, offset: 1280)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !133, line: 2324, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !594, file: !133, line: 3395, baseType: !1586, size: 320)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !133, line: 1469, size: 320, elements: !1587)
!1587 = !{!1588, !1589, !1590}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1586, file: !133, line: 1470, baseType: !630, size: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1586, file: !133, line: 1471, baseType: !591, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1586, file: !133, line: 1472, baseType: !591, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !594, file: !133, line: 3396, baseType: !1592, size: 320)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !133, line: 1482, size: 320, elements: !1593)
!1593 = !{!1594, !1595, !1596}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1592, file: !133, line: 1483, baseType: !630, size: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1592, file: !133, line: 1484, baseType: !584, size: 32, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1592, file: !133, line: 1485, baseType: !970, size: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !594, file: !133, line: 3397, baseType: !1598, size: 384)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !133, line: 1829, size: 384, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1598, file: !133, line: 1830, baseType: !630, size: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1598, file: !133, line: 1831, baseType: !716, size: 32, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1598, file: !133, line: 1832, baseType: !591, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1598, file: !133, line: 1835, baseType: !970, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !594, file: !133, line: 3398, baseType: !1605, size: 704)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !133, line: 1898, size: 704, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1616}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1605, file: !133, line: 1899, baseType: !630, size: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1605, file: !133, line: 1902, baseType: !591, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1605, file: !133, line: 1905, baseType: !916, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1605, file: !133, line: 1908, baseType: !5, size: 32, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1605, file: !133, line: 1911, baseType: !1612, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1256, line: 117, size: 128, elements: !1614)
!1614 = !{!1615}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1613, file: !1256, line: 120, baseType: !1424, size: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1605, file: !133, line: 1914, baseType: !958, size: 256, offset: 448)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !594, file: !133, line: 3399, baseType: !1618, size: 704)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !133, line: 2008, size: 704, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1618, file: !133, line: 2009, baseType: !630, size: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1618, file: !133, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1618, file: !133, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1618, file: !133, line: 2014, baseType: !716, size: 32, offset: 224)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1618, file: !133, line: 2016, baseType: !591, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1618, file: !133, line: 2017, baseType: !1411, size: 64, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1618, file: !133, line: 2019, baseType: !591, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1618, file: !133, line: 2020, baseType: !591, size: 64, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1618, file: !133, line: 2021, baseType: !591, size: 64, offset: 512)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1618, file: !133, line: 2022, baseType: !591, size: 64, offset: 576)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1618, file: !133, line: 2023, baseType: !591, size: 64, offset: 640)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !594, file: !133, line: 3400, baseType: !1632, size: 832)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !133, line: 2430, size: 832, elements: !1633)
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1632, file: !133, line: 2431, baseType: !630, size: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1632, file: !133, line: 2433, baseType: !591, size: 64, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1632, file: !133, line: 2434, baseType: !591, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1632, file: !133, line: 2435, baseType: !591, size: 64, offset: 320)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1632, file: !133, line: 2436, baseType: !591, size: 64, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1632, file: !133, line: 2437, baseType: !1411, size: 64, offset: 448)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1632, file: !133, line: 2438, baseType: !591, size: 64, offset: 512)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1632, file: !133, line: 2440, baseType: !591, size: 64, offset: 576)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1632, file: !133, line: 2441, baseType: !591, size: 64, offset: 640)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1632, file: !133, line: 2443, baseType: !1644, size: 128, offset: 704)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !133, line: 182, baseType: !1645)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !133, line: 182, size: 128, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1645, file: !133, line: 182, baseType: !1416, size: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !594, file: !133, line: 3401, baseType: !1649, size: 320)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !133, line: 3327, size: 320, elements: !1650)
!1650 = !{!1651, !1652, !1659}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1649, file: !133, line: 3329, baseType: !630, size: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1649, file: !133, line: 3330, baseType: !1653, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !133, line: 3320, size: 192, elements: !1655)
!1655 = !{!1656, !1657, !1658}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1654, file: !133, line: 3322, baseType: !1653, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1654, file: !133, line: 3323, baseType: !1653, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1654, file: !133, line: 3324, baseType: !591, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1649, file: !133, line: 3331, baseType: !1653, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !594, file: !133, line: 3402, baseType: !1661, size: 256)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !133, line: 1540, size: 256, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1661, file: !133, line: 1541, baseType: !630, size: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1661, file: !133, line: 1542, baseType: !1665, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !133, line: 1538, baseType: !1667)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !133, line: 1538, size: 192, elements: !1668)
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1667, file: !133, line: 1538, baseType: !1670, size: 192)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !133, line: 1537, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !133, line: 1537, size: 192, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1671, file: !133, line: 1537, baseType: !5, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1671, file: !133, line: 1537, baseType: !5, size: 32, offset: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1671, file: !133, line: 1537, baseType: !1676, size: 128, offset: 64)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1677, size: 128, elements: !690)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !133, line: 1535, baseType: !1678)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !133, line: 1532, size: 128, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1678, file: !133, line: 1533, baseType: !591, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1678, file: !133, line: 1534, baseType: !591, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !594, file: !133, line: 3403, baseType: !1683, size: 512)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !133, line: 1938, size: 512, elements: !1684)
!1684 = !{!1685, !1686, !1687, !1688, !1694, !1695, !1696}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1683, file: !133, line: 1939, baseType: !630, size: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1683, file: !133, line: 1940, baseType: !716, size: 32, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1683, file: !133, line: 1941, baseType: !343, size: 32, offset: 224)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1683, file: !133, line: 1946, baseType: !1689, size: 32, offset: 256)
!1689 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !133, line: 1942, size: 32, elements: !1690)
!1690 = !{!1691, !1692, !1693}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1689, file: !133, line: 1943, baseType: !361, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1689, file: !133, line: 1944, baseType: !368, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1689, file: !133, line: 1945, baseType: !132, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1683, file: !133, line: 1950, baseType: !905, size: 64, offset: 320)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1683, file: !133, line: 1951, baseType: !905, size: 64, offset: 384)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1683, file: !133, line: 1953, baseType: !970, size: 64, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !594, file: !133, line: 3404, baseType: !1698, size: 1664)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !133, line: 3337, size: 1664, elements: !1699)
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1698, file: !133, line: 3338, baseType: !630, size: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1698, file: !133, line: 3341, baseType: !1702, size: 1472, offset: 192)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1703, line: 410, size: 1472, elements: !1704)
!1703 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1702, file: !1703, line: 412, baseType: !584, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1702, file: !1703, line: 413, baseType: !584, size: 32, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1702, file: !1703, line: 414, baseType: !584, size: 32, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1702, file: !1703, line: 415, baseType: !584, size: 32, offset: 96)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1702, file: !1703, line: 416, baseType: !584, size: 32, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1702, file: !1703, line: 417, baseType: !584, size: 32, offset: 160)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1702, file: !1703, line: 418, baseType: !583, size: 8, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1702, file: !1703, line: 419, baseType: !583, size: 8, offset: 200)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1702, file: !1703, line: 420, baseType: !1714, size: 8, offset: 208)
!1714 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1702, file: !1703, line: 421, baseType: !1714, size: 8, offset: 216)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1702, file: !1703, line: 422, baseType: !1714, size: 8, offset: 224)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1702, file: !1703, line: 423, baseType: !1714, size: 8, offset: 232)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1702, file: !1703, line: 424, baseType: !1714, size: 8, offset: 240)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1702, file: !1703, line: 425, baseType: !1714, size: 8, offset: 248)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1702, file: !1703, line: 426, baseType: !1714, size: 8, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1702, file: !1703, line: 427, baseType: !1714, size: 8, offset: 264)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1702, file: !1703, line: 428, baseType: !1714, size: 8, offset: 272)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1702, file: !1703, line: 429, baseType: !1714, size: 8, offset: 280)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1702, file: !1703, line: 430, baseType: !1714, size: 8, offset: 288)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1702, file: !1703, line: 431, baseType: !1714, size: 8, offset: 296)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1702, file: !1703, line: 432, baseType: !1714, size: 8, offset: 304)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1702, file: !1703, line: 433, baseType: !1714, size: 8, offset: 312)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1702, file: !1703, line: 434, baseType: !1714, size: 8, offset: 320)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1702, file: !1703, line: 435, baseType: !1714, size: 8, offset: 328)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1702, file: !1703, line: 436, baseType: !1714, size: 8, offset: 336)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1702, file: !1703, line: 437, baseType: !1714, size: 8, offset: 344)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1702, file: !1703, line: 438, baseType: !1714, size: 8, offset: 352)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1702, file: !1703, line: 439, baseType: !1714, size: 8, offset: 360)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1702, file: !1703, line: 440, baseType: !1714, size: 8, offset: 368)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1702, file: !1703, line: 441, baseType: !1714, size: 8, offset: 376)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1702, file: !1703, line: 442, baseType: !1714, size: 8, offset: 384)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1702, file: !1703, line: 443, baseType: !1714, size: 8, offset: 392)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1702, file: !1703, line: 444, baseType: !1714, size: 8, offset: 400)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1702, file: !1703, line: 445, baseType: !1714, size: 8, offset: 408)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1702, file: !1703, line: 446, baseType: !1714, size: 8, offset: 416)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1702, file: !1703, line: 447, baseType: !1714, size: 8, offset: 424)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1702, file: !1703, line: 448, baseType: !1714, size: 8, offset: 432)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1702, file: !1703, line: 449, baseType: !1714, size: 8, offset: 440)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1702, file: !1703, line: 450, baseType: !1714, size: 8, offset: 448)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1702, file: !1703, line: 451, baseType: !1714, size: 8, offset: 456)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1702, file: !1703, line: 452, baseType: !1714, size: 8, offset: 464)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1702, file: !1703, line: 453, baseType: !1714, size: 8, offset: 472)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1702, file: !1703, line: 454, baseType: !1714, size: 8, offset: 480)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1702, file: !1703, line: 455, baseType: !1714, size: 8, offset: 488)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1702, file: !1703, line: 456, baseType: !1714, size: 8, offset: 496)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1702, file: !1703, line: 457, baseType: !1714, size: 8, offset: 504)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1702, file: !1703, line: 458, baseType: !1714, size: 8, offset: 512)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1702, file: !1703, line: 459, baseType: !1714, size: 8, offset: 520)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1702, file: !1703, line: 460, baseType: !1714, size: 8, offset: 528)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1702, file: !1703, line: 461, baseType: !1714, size: 8, offset: 536)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1702, file: !1703, line: 462, baseType: !1714, size: 8, offset: 544)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1702, file: !1703, line: 463, baseType: !1714, size: 8, offset: 552)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1702, file: !1703, line: 464, baseType: !1714, size: 8, offset: 560)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1702, file: !1703, line: 465, baseType: !1714, size: 8, offset: 568)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1702, file: !1703, line: 466, baseType: !1714, size: 8, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1702, file: !1703, line: 467, baseType: !1714, size: 8, offset: 584)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1702, file: !1703, line: 468, baseType: !1714, size: 8, offset: 592)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1702, file: !1703, line: 469, baseType: !1714, size: 8, offset: 600)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1702, file: !1703, line: 470, baseType: !1714, size: 8, offset: 608)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1702, file: !1703, line: 471, baseType: !1714, size: 8, offset: 616)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1702, file: !1703, line: 472, baseType: !1714, size: 8, offset: 624)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1702, file: !1703, line: 473, baseType: !1714, size: 8, offset: 632)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1702, file: !1703, line: 474, baseType: !1714, size: 8, offset: 640)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1702, file: !1703, line: 475, baseType: !1714, size: 8, offset: 648)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1702, file: !1703, line: 476, baseType: !1714, size: 8, offset: 656)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1702, file: !1703, line: 477, baseType: !1714, size: 8, offset: 664)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1702, file: !1703, line: 478, baseType: !1714, size: 8, offset: 672)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1702, file: !1703, line: 479, baseType: !1714, size: 8, offset: 680)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1702, file: !1703, line: 480, baseType: !1714, size: 8, offset: 688)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1702, file: !1703, line: 481, baseType: !1714, size: 8, offset: 696)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1702, file: !1703, line: 482, baseType: !1714, size: 8, offset: 704)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1702, file: !1703, line: 483, baseType: !1714, size: 8, offset: 712)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1702, file: !1703, line: 484, baseType: !1714, size: 8, offset: 720)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1702, file: !1703, line: 485, baseType: !1714, size: 8, offset: 728)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1702, file: !1703, line: 486, baseType: !1714, size: 8, offset: 736)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1702, file: !1703, line: 487, baseType: !1714, size: 8, offset: 744)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1702, file: !1703, line: 488, baseType: !1714, size: 8, offset: 752)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1702, file: !1703, line: 489, baseType: !1714, size: 8, offset: 760)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1702, file: !1703, line: 490, baseType: !1714, size: 8, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1702, file: !1703, line: 491, baseType: !1714, size: 8, offset: 776)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1702, file: !1703, line: 492, baseType: !1714, size: 8, offset: 784)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1702, file: !1703, line: 493, baseType: !1714, size: 8, offset: 792)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1702, file: !1703, line: 494, baseType: !1714, size: 8, offset: 800)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1702, file: !1703, line: 495, baseType: !1714, size: 8, offset: 808)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1702, file: !1703, line: 496, baseType: !1714, size: 8, offset: 816)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1702, file: !1703, line: 497, baseType: !1714, size: 8, offset: 824)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1702, file: !1703, line: 498, baseType: !1714, size: 8, offset: 832)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1702, file: !1703, line: 499, baseType: !1714, size: 8, offset: 840)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1702, file: !1703, line: 500, baseType: !1714, size: 8, offset: 848)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1702, file: !1703, line: 501, baseType: !1714, size: 8, offset: 856)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1702, file: !1703, line: 502, baseType: !1714, size: 8, offset: 864)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1702, file: !1703, line: 503, baseType: !1714, size: 8, offset: 872)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1702, file: !1703, line: 504, baseType: !1714, size: 8, offset: 880)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1702, file: !1703, line: 505, baseType: !1714, size: 8, offset: 888)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1702, file: !1703, line: 506, baseType: !1714, size: 8, offset: 896)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1702, file: !1703, line: 507, baseType: !1714, size: 8, offset: 904)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1702, file: !1703, line: 508, baseType: !1714, size: 8, offset: 912)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1702, file: !1703, line: 509, baseType: !1714, size: 8, offset: 920)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1702, file: !1703, line: 510, baseType: !1714, size: 8, offset: 928)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1702, file: !1703, line: 511, baseType: !1714, size: 8, offset: 936)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1702, file: !1703, line: 512, baseType: !1714, size: 8, offset: 944)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1702, file: !1703, line: 513, baseType: !1714, size: 8, offset: 952)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1702, file: !1703, line: 514, baseType: !1714, size: 8, offset: 960)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1702, file: !1703, line: 515, baseType: !1714, size: 8, offset: 968)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1702, file: !1703, line: 516, baseType: !1714, size: 8, offset: 976)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1702, file: !1703, line: 517, baseType: !1714, size: 8, offset: 984)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1702, file: !1703, line: 518, baseType: !1714, size: 8, offset: 992)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1702, file: !1703, line: 519, baseType: !1714, size: 8, offset: 1000)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1702, file: !1703, line: 520, baseType: !1714, size: 8, offset: 1008)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1702, file: !1703, line: 521, baseType: !1714, size: 8, offset: 1016)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1702, file: !1703, line: 522, baseType: !1714, size: 8, offset: 1024)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1702, file: !1703, line: 523, baseType: !1714, size: 8, offset: 1032)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1702, file: !1703, line: 524, baseType: !1714, size: 8, offset: 1040)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1702, file: !1703, line: 525, baseType: !1714, size: 8, offset: 1048)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1702, file: !1703, line: 526, baseType: !1714, size: 8, offset: 1056)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1702, file: !1703, line: 527, baseType: !1714, size: 8, offset: 1064)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1702, file: !1703, line: 528, baseType: !1714, size: 8, offset: 1072)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1702, file: !1703, line: 529, baseType: !1714, size: 8, offset: 1080)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1702, file: !1703, line: 530, baseType: !1714, size: 8, offset: 1088)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1702, file: !1703, line: 531, baseType: !1714, size: 8, offset: 1096)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1702, file: !1703, line: 532, baseType: !1714, size: 8, offset: 1104)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1702, file: !1703, line: 533, baseType: !1714, size: 8, offset: 1112)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1702, file: !1703, line: 534, baseType: !1714, size: 8, offset: 1120)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1702, file: !1703, line: 535, baseType: !1714, size: 8, offset: 1128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1702, file: !1703, line: 536, baseType: !1714, size: 8, offset: 1136)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1702, file: !1703, line: 537, baseType: !1714, size: 8, offset: 1144)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1702, file: !1703, line: 538, baseType: !1714, size: 8, offset: 1152)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1702, file: !1703, line: 539, baseType: !1714, size: 8, offset: 1160)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1702, file: !1703, line: 540, baseType: !1714, size: 8, offset: 1168)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1702, file: !1703, line: 541, baseType: !1714, size: 8, offset: 1176)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1702, file: !1703, line: 542, baseType: !1714, size: 8, offset: 1184)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1702, file: !1703, line: 543, baseType: !1714, size: 8, offset: 1192)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1702, file: !1703, line: 544, baseType: !1714, size: 8, offset: 1200)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1702, file: !1703, line: 545, baseType: !1714, size: 8, offset: 1208)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1702, file: !1703, line: 546, baseType: !1714, size: 8, offset: 1216)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1702, file: !1703, line: 547, baseType: !1714, size: 8, offset: 1224)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1702, file: !1703, line: 548, baseType: !1714, size: 8, offset: 1232)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1702, file: !1703, line: 549, baseType: !1714, size: 8, offset: 1240)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1702, file: !1703, line: 550, baseType: !1714, size: 8, offset: 1248)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1702, file: !1703, line: 551, baseType: !1714, size: 8, offset: 1256)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1702, file: !1703, line: 552, baseType: !1714, size: 8, offset: 1264)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1702, file: !1703, line: 553, baseType: !1714, size: 8, offset: 1272)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1702, file: !1703, line: 554, baseType: !1714, size: 8, offset: 1280)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1702, file: !1703, line: 555, baseType: !1714, size: 8, offset: 1288)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1702, file: !1703, line: 556, baseType: !1714, size: 8, offset: 1296)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1702, file: !1703, line: 557, baseType: !1714, size: 8, offset: 1304)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1702, file: !1703, line: 558, baseType: !1714, size: 8, offset: 1312)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1702, file: !1703, line: 559, baseType: !1714, size: 8, offset: 1320)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1702, file: !1703, line: 560, baseType: !1714, size: 8, offset: 1328)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1702, file: !1703, line: 561, baseType: !1714, size: 8, offset: 1336)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1702, file: !1703, line: 562, baseType: !1714, size: 8, offset: 1344)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1702, file: !1703, line: 563, baseType: !1714, size: 8, offset: 1352)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1702, file: !1703, line: 564, baseType: !1714, size: 8, offset: 1360)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1702, file: !1703, line: 565, baseType: !1714, size: 8, offset: 1368)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1702, file: !1703, line: 566, baseType: !1714, size: 8, offset: 1376)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1702, file: !1703, line: 567, baseType: !1714, size: 8, offset: 1384)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1702, file: !1703, line: 568, baseType: !1714, size: 8, offset: 1392)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1702, file: !1703, line: 569, baseType: !1714, size: 8, offset: 1400)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1702, file: !1703, line: 570, baseType: !1714, size: 8, offset: 1408)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1702, file: !1703, line: 571, baseType: !1714, size: 8, offset: 1416)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1702, file: !1703, line: 572, baseType: !1714, size: 8, offset: 1424)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1702, file: !1703, line: 573, baseType: !1714, size: 8, offset: 1432)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1702, file: !1703, line: 574, baseType: !1714, size: 8, offset: 1440)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !594, file: !133, line: 3405, baseType: !1870, size: 384)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !133, line: 3352, size: 384, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1870, file: !133, line: 3353, baseType: !630, size: 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1870, file: !133, line: 3356, baseType: !1874, size: 192, offset: 192)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1703, line: 578, size: 192, elements: !1875)
!1875 = !{!1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1874, file: !1703, line: 580, baseType: !584, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1874, file: !1703, line: 581, baseType: !584, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1874, file: !1703, line: 582, baseType: !584, size: 32, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1874, file: !1703, line: 583, baseType: !584, size: 32, offset: 96)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1874, file: !1703, line: 584, baseType: !583, size: 8, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1874, file: !1703, line: 585, baseType: !583, size: 8, offset: 136)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1874, file: !1703, line: 586, baseType: !583, size: 8, offset: 144)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1874, file: !1703, line: 587, baseType: !583, size: 8, offset: 152)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1874, file: !1703, line: 588, baseType: !583, size: 8, offset: 160)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1874, file: !1703, line: 589, baseType: !583, size: 8, offset: 168)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1874, file: !1703, line: 590, baseType: !583, size: 8, offset: 176)
!1887 = !{i32 2, !"Dwarf Version", i32 4}
!1888 = !{i32 2, !"Debug Info Version", i32 3}
!1889 = !{i32 1, !"wchar_size", i32 4}
!1890 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1891 = distinct !DISubprogram(name: "vprintf", scope: !1892, file: !1892, line: 39, type: !1893, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1903)
!1892 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!584, !1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !589)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1898)
!1898 = !{!1899, !1900, !1901, !1902}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1897, file: !1, baseType: !5, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1897, file: !1, baseType: !5, size: 32, offset: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1897, file: !1, baseType: !588, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1897, file: !1, baseType: !588, size: 64, offset: 128)
!1903 = !{!1904, !1905}
!1904 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1891, file: !1892, line: 39, type: !1895)
!1905 = !DILocalVariable(name: "__arg", arg: 2, scope: !1891, file: !1892, line: 39, type: !1896)
!1906 = !DILocation(line: 0, scope: !1891)
!1907 = !DILocation(line: 41, column: 20, scope: !1891)
!1908 = !DILocation(line: 41, column: 10, scope: !1891)
!1909 = !DILocation(line: 41, column: 3, scope: !1891)
!1910 = distinct !DISubprogram(name: "getchar", scope: !1892, file: !1892, line: 47, type: !1911, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!584}
!1913 = !{}
!1914 = !DILocation(line: 49, column: 16, scope: !1910)
!1915 = !DILocation(line: 49, column: 10, scope: !1910)
!1916 = !DILocation(line: 49, column: 3, scope: !1910)
!1917 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1892, file: !1892, line: 56, type: !1918, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1971)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!584, !1920}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1922, line: 7, baseType: !1923)
!1922 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1924, line: 49, size: 1728, elements: !1925)
!1924 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1941, !1943, !1944, !1945, !1948, !1950, !1951, !1952, !1955, !1957, !1960, !1963, !1964, !1965, !1966, !1967}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1923, file: !1924, line: 51, baseType: !584, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1923, file: !1924, line: 54, baseType: !586, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1923, file: !1924, line: 55, baseType: !586, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1923, file: !1924, line: 56, baseType: !586, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1923, file: !1924, line: 57, baseType: !586, size: 64, offset: 256)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1923, file: !1924, line: 58, baseType: !586, size: 64, offset: 320)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1923, file: !1924, line: 59, baseType: !586, size: 64, offset: 384)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1923, file: !1924, line: 60, baseType: !586, size: 64, offset: 448)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1923, file: !1924, line: 61, baseType: !586, size: 64, offset: 512)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1923, file: !1924, line: 64, baseType: !586, size: 64, offset: 576)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1923, file: !1924, line: 65, baseType: !586, size: 64, offset: 640)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1923, file: !1924, line: 66, baseType: !586, size: 64, offset: 704)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1923, file: !1924, line: 68, baseType: !1939, size: 64, offset: 768)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1924, line: 36, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1923, file: !1924, line: 70, baseType: !1942, size: 64, offset: 832)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1923, file: !1924, line: 72, baseType: !584, size: 32, offset: 896)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1923, file: !1924, line: 73, baseType: !584, size: 32, offset: 928)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1923, file: !1924, line: 74, baseType: !1946, size: 64, offset: 960)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1947, line: 152, baseType: !647)
!1947 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1923, file: !1924, line: 77, baseType: !1949, size: 16, offset: 1024)
!1949 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1923, file: !1924, line: 78, baseType: !1714, size: 8, offset: 1040)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1923, file: !1924, line: 79, baseType: !689, size: 8, offset: 1048)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1923, file: !1924, line: 81, baseType: !1953, size: 64, offset: 1088)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1924, line: 43, baseType: null)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1923, file: !1924, line: 89, baseType: !1956, size: 64, offset: 1152)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1947, line: 153, baseType: !647)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1923, file: !1924, line: 91, baseType: !1958, size: 64, offset: 1216)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1924, line: 37, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1923, file: !1924, line: 92, baseType: !1961, size: 64, offset: 1280)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1924, line: 38, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1923, file: !1924, line: 93, baseType: !1942, size: 64, offset: 1344)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1923, file: !1924, line: 94, baseType: !588, size: 64, offset: 1408)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1923, file: !1924, line: 95, baseType: !1062, size: 64, offset: 1472)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1923, file: !1924, line: 96, baseType: !584, size: 32, offset: 1536)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1923, file: !1924, line: 98, baseType: !1968, size: 160, offset: 1568)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 160, elements: !1969)
!1969 = !{!1970}
!1970 = !DISubrange(count: 20)
!1971 = !{!1972}
!1972 = !DILocalVariable(name: "__fp", arg: 1, scope: !1917, file: !1892, line: 56, type: !1920)
!1973 = !DILocation(line: 0, scope: !1917)
!1974 = !DILocation(line: 58, column: 10, scope: !1917)
!1975 = !DILocation(line: 58, column: 3, scope: !1917)
!1976 = distinct !DISubprogram(name: "getc_unlocked", scope: !1892, file: !1892, line: 66, type: !1918, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1977)
!1977 = !{!1978}
!1978 = !DILocalVariable(name: "__fp", arg: 1, scope: !1976, file: !1892, line: 66, type: !1920)
!1979 = !DILocation(line: 0, scope: !1976)
!1980 = !DILocation(line: 68, column: 10, scope: !1976)
!1981 = !DILocation(line: 68, column: 3, scope: !1976)
!1982 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1892, file: !1892, line: 73, type: !1911, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1913)
!1983 = !DILocation(line: 75, column: 10, scope: !1982)
!1984 = !DILocation(line: 75, column: 3, scope: !1982)
!1985 = distinct !DISubprogram(name: "putchar", scope: !1892, file: !1892, line: 82, type: !1986, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1988)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!584, !584}
!1988 = !{!1989}
!1989 = !DILocalVariable(name: "__c", arg: 1, scope: !1985, file: !1892, line: 82, type: !584)
!1990 = !DILocation(line: 0, scope: !1985)
!1991 = !DILocation(line: 84, column: 21, scope: !1985)
!1992 = !DILocation(line: 84, column: 10, scope: !1985)
!1993 = !DILocation(line: 84, column: 3, scope: !1985)
!1994 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1892, file: !1892, line: 91, type: !1995, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1997)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!584, !584, !1920}
!1997 = !{!1998, !1999}
!1998 = !DILocalVariable(name: "__c", arg: 1, scope: !1994, file: !1892, line: 91, type: !584)
!1999 = !DILocalVariable(name: "__stream", arg: 2, scope: !1994, file: !1892, line: 91, type: !1920)
!2000 = !DILocation(line: 0, scope: !1994)
!2001 = !DILocation(line: 93, column: 10, scope: !1994)
!2002 = !DILocation(line: 93, column: 3, scope: !1994)
!2003 = distinct !DISubprogram(name: "putc_unlocked", scope: !1892, file: !1892, line: 101, type: !1995, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2004)
!2004 = !{!2005, !2006}
!2005 = !DILocalVariable(name: "__c", arg: 1, scope: !2003, file: !1892, line: 101, type: !584)
!2006 = !DILocalVariable(name: "__stream", arg: 2, scope: !2003, file: !1892, line: 101, type: !1920)
!2007 = !DILocation(line: 0, scope: !2003)
!2008 = !DILocation(line: 103, column: 10, scope: !2003)
!2009 = !DILocation(line: 103, column: 3, scope: !2003)
!2010 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1892, file: !1892, line: 108, type: !1986, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2011)
!2011 = !{!2012}
!2012 = !DILocalVariable(name: "__c", arg: 1, scope: !2010, file: !1892, line: 108, type: !584)
!2013 = !DILocation(line: 0, scope: !2010)
!2014 = !DILocation(line: 110, column: 10, scope: !2010)
!2015 = !DILocation(line: 110, column: 3, scope: !2010)
!2016 = distinct !DISubprogram(name: "getline", scope: !1892, file: !1892, line: 118, type: !2017, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2021)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!2019, !585, !2020, !1920}
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1947, line: 193, baseType: !647)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!2021 = !{!2022, !2023, !2024}
!2022 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2016, file: !1892, line: 118, type: !585)
!2023 = !DILocalVariable(name: "__n", arg: 2, scope: !2016, file: !1892, line: 118, type: !2020)
!2024 = !DILocalVariable(name: "__stream", arg: 3, scope: !2016, file: !1892, line: 118, type: !1920)
!2025 = !DILocation(line: 0, scope: !2016)
!2026 = !DILocation(line: 120, column: 10, scope: !2016)
!2027 = !DILocation(line: 120, column: 3, scope: !2016)
!2028 = distinct !DISubprogram(name: "feof_unlocked", scope: !1892, file: !1892, line: 128, type: !1918, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2029)
!2029 = !{!2030}
!2030 = !DILocalVariable(name: "__stream", arg: 1, scope: !2028, file: !1892, line: 128, type: !1920)
!2031 = !DILocation(line: 0, scope: !2028)
!2032 = !DILocation(line: 130, column: 10, scope: !2028)
!2033 = !DILocation(line: 130, column: 3, scope: !2028)
!2034 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1892, file: !1892, line: 135, type: !1918, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2035)
!2035 = !{!2036}
!2036 = !DILocalVariable(name: "__stream", arg: 1, scope: !2034, file: !1892, line: 135, type: !1920)
!2037 = !DILocation(line: 0, scope: !2034)
!2038 = !DILocation(line: 137, column: 10, scope: !2034)
!2039 = !DILocation(line: 137, column: 3, scope: !2034)
!2040 = distinct !DISubprogram(name: "tolower", scope: !2041, file: !2041, line: 207, type: !1986, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2042)
!2041 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2042 = !{!2043}
!2043 = !DILocalVariable(name: "__c", arg: 1, scope: !2040, file: !2041, line: 207, type: !584)
!2044 = !DILocation(line: 0, scope: !2040)
!2045 = !DILocation(line: 209, column: 22, scope: !2040)
!2046 = !DILocation(line: 209, column: 39, scope: !2040)
!2047 = !DILocation(line: 209, column: 38, scope: !2040)
!2048 = !DILocation(line: 209, column: 37, scope: !2040)
!2049 = !DILocation(line: 209, column: 10, scope: !2040)
!2050 = !DILocation(line: 209, column: 3, scope: !2040)
!2051 = distinct !DISubprogram(name: "toupper", scope: !2041, file: !2041, line: 213, type: !1986, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2052)
!2052 = !{!2053}
!2053 = !DILocalVariable(name: "__c", arg: 1, scope: !2051, file: !2041, line: 213, type: !584)
!2054 = !DILocation(line: 0, scope: !2051)
!2055 = !DILocation(line: 215, column: 22, scope: !2051)
!2056 = !DILocation(line: 215, column: 39, scope: !2051)
!2057 = !DILocation(line: 215, column: 38, scope: !2051)
!2058 = !DILocation(line: 215, column: 37, scope: !2051)
!2059 = !DILocation(line: 215, column: 10, scope: !2051)
!2060 = !DILocation(line: 215, column: 3, scope: !2051)
!2061 = distinct !DISubprogram(name: "atoi", scope: !2062, file: !2062, line: 361, type: !2063, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2065)
!2062 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!584, !589}
!2065 = !{!2066}
!2066 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2061, file: !2062, line: 361, type: !589)
!2067 = !DILocation(line: 0, scope: !2061)
!2068 = !DILocation(line: 363, column: 16, scope: !2061)
!2069 = !DILocation(line: 363, column: 10, scope: !2061)
!2070 = !DILocation(line: 363, column: 3, scope: !2061)
!2071 = distinct !DISubprogram(name: "atol", scope: !2062, file: !2062, line: 366, type: !2072, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!647, !589}
!2074 = !{!2075}
!2075 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2071, file: !2062, line: 366, type: !589)
!2076 = !DILocation(line: 0, scope: !2071)
!2077 = !DILocation(line: 368, column: 10, scope: !2071)
!2078 = !DILocation(line: 368, column: 3, scope: !2071)
!2079 = distinct !DISubprogram(name: "atoll", scope: !2062, file: !2062, line: 373, type: !2080, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2083)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!2082, !589}
!2082 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2083 = !{!2084}
!2084 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2079, file: !2062, line: 373, type: !589)
!2085 = !DILocation(line: 0, scope: !2079)
!2086 = !DILocation(line: 375, column: 10, scope: !2079)
!2087 = !DILocation(line: 375, column: 3, scope: !2079)
!2088 = distinct !DISubprogram(name: "bsearch", scope: !2089, file: !2089, line: 20, type: !2090, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2093)
!2089 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!588, !1359, !1359, !1062, !1062, !2092}
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2062, line: 808, baseType: !1363)
!2093 = !{!2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103}
!2094 = !DILocalVariable(name: "__key", arg: 1, scope: !2088, file: !2089, line: 20, type: !1359)
!2095 = !DILocalVariable(name: "__base", arg: 2, scope: !2088, file: !2089, line: 20, type: !1359)
!2096 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2088, file: !2089, line: 20, type: !1062)
!2097 = !DILocalVariable(name: "__size", arg: 4, scope: !2088, file: !2089, line: 20, type: !1062)
!2098 = !DILocalVariable(name: "__compar", arg: 5, scope: !2088, file: !2089, line: 21, type: !2092)
!2099 = !DILocalVariable(name: "__l", scope: !2088, file: !2089, line: 23, type: !1062)
!2100 = !DILocalVariable(name: "__u", scope: !2088, file: !2089, line: 23, type: !1062)
!2101 = !DILocalVariable(name: "__idx", scope: !2088, file: !2089, line: 23, type: !1062)
!2102 = !DILocalVariable(name: "__p", scope: !2088, file: !2089, line: 24, type: !1359)
!2103 = !DILocalVariable(name: "__comparison", scope: !2088, file: !2089, line: 25, type: !584)
!2104 = !DILocation(line: 0, scope: !2088)
!2105 = !DILocation(line: 29, column: 3, scope: !2088)
!2106 = !DILocation(line: 27, column: 7, scope: !2088)
!2107 = !DILocation(line: 29, column: 14, scope: !2088)
!2108 = !DILocation(line: 31, column: 20, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2088, file: !2089, line: 30, column: 5)
!2110 = !DILocation(line: 31, column: 27, scope: !2109)
!2111 = !DILocation(line: 32, column: 56, scope: !2109)
!2112 = !DILocation(line: 32, column: 47, scope: !2109)
!2113 = !DILocation(line: 33, column: 22, scope: !2109)
!2114 = !DILocation(line: 34, column: 24, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2109, file: !2089, line: 34, column: 11)
!2116 = !DILocation(line: 34, column: 11, scope: !2109)
!2117 = !DILocation(line: 36, column: 29, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2115, file: !2089, line: 36, column: 16)
!2119 = !DILocation(line: 36, column: 16, scope: !2115)
!2120 = !DILocation(line: 37, column: 14, scope: !2118)
!2121 = distinct !{!2121, !2105, !2122}
!2122 = !DILocation(line: 40, column: 5, scope: !2088)
!2123 = !DILocation(line: 43, column: 1, scope: !2088)
!2124 = distinct !DISubprogram(name: "atof", scope: !2125, file: !2125, line: 25, type: !2126, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2129)
!2125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!2128, !589}
!2128 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2129 = !{!2130}
!2130 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2124, file: !2125, line: 25, type: !589)
!2131 = !DILocation(line: 0, scope: !2124)
!2132 = !DILocation(line: 27, column: 10, scope: !2124)
!2133 = !DILocation(line: 27, column: 3, scope: !2124)
!2134 = distinct !DISubprogram(name: "strtoimax", scope: !2135, file: !2135, line: 324, type: !2136, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2142)
!2135 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!2138, !1895, !2141, !584}
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2139, line: 101, baseType: !2140)
!2139 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1947, line: 72, baseType: !647)
!2141 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !585)
!2142 = !{!2143, !2144, !2145}
!2143 = !DILocalVariable(name: "nptr", arg: 1, scope: !2134, file: !2135, line: 324, type: !1895)
!2144 = !DILocalVariable(name: "endptr", arg: 2, scope: !2134, file: !2135, line: 324, type: !2141)
!2145 = !DILocalVariable(name: "base", arg: 3, scope: !2134, file: !2135, line: 324, type: !584)
!2146 = !DILocation(line: 0, scope: !2134)
!2147 = !DILocation(line: 327, column: 10, scope: !2134)
!2148 = !DILocation(line: 327, column: 3, scope: !2134)
!2149 = distinct !DISubprogram(name: "strtoumax", scope: !2135, file: !2135, line: 336, type: !2150, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2154)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!2152, !1895, !2141, !584}
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2139, line: 102, baseType: !2153)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1947, line: 73, baseType: !645)
!2154 = !{!2155, !2156, !2157}
!2155 = !DILocalVariable(name: "nptr", arg: 1, scope: !2149, file: !2135, line: 336, type: !1895)
!2156 = !DILocalVariable(name: "endptr", arg: 2, scope: !2149, file: !2135, line: 336, type: !2141)
!2157 = !DILocalVariable(name: "base", arg: 3, scope: !2149, file: !2135, line: 336, type: !584)
!2158 = !DILocation(line: 0, scope: !2149)
!2159 = !DILocation(line: 339, column: 10, scope: !2149)
!2160 = !DILocation(line: 339, column: 3, scope: !2149)
!2161 = distinct !DISubprogram(name: "wcstoimax", scope: !2135, file: !2135, line: 348, type: !2162, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2171)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!2138, !2164, !2168, !584}
!2164 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2165)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2167)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2135, line: 34, baseType: !584)
!2168 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2169)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2171 = !{!2172, !2173, !2174}
!2172 = !DILocalVariable(name: "nptr", arg: 1, scope: !2161, file: !2135, line: 348, type: !2164)
!2173 = !DILocalVariable(name: "endptr", arg: 2, scope: !2161, file: !2135, line: 348, type: !2168)
!2174 = !DILocalVariable(name: "base", arg: 3, scope: !2161, file: !2135, line: 348, type: !584)
!2175 = !DILocation(line: 0, scope: !2161)
!2176 = !DILocation(line: 351, column: 10, scope: !2161)
!2177 = !DILocation(line: 351, column: 3, scope: !2161)
!2178 = distinct !DISubprogram(name: "wcstoumax", scope: !2135, file: !2135, line: 362, type: !2179, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!2152, !2164, !2168, !584}
!2181 = !{!2182, !2183, !2184}
!2182 = !DILocalVariable(name: "nptr", arg: 1, scope: !2178, file: !2135, line: 362, type: !2164)
!2183 = !DILocalVariable(name: "endptr", arg: 2, scope: !2178, file: !2135, line: 362, type: !2168)
!2184 = !DILocalVariable(name: "base", arg: 3, scope: !2178, file: !2135, line: 362, type: !584)
!2185 = !DILocation(line: 0, scope: !2178)
!2186 = !DILocation(line: 365, column: 10, scope: !2178)
!2187 = !DILocation(line: 365, column: 3, scope: !2178)
!2188 = distinct !DISubprogram(name: "stat", scope: !2189, file: !2189, line: 453, type: !2190, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2227)
!2189 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!584, !589, !2192}
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2194, line: 46, size: 1152, elements: !2195)
!2194 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2195 = !{!2196, !2198, !2200, !2202, !2204, !2206, !2208, !2209, !2210, !2211, !2213, !2215, !2223, !2224, !2225}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2193, file: !2194, line: 48, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1947, line: 145, baseType: !645)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2193, file: !2194, line: 53, baseType: !2199, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1947, line: 148, baseType: !645)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2193, file: !2194, line: 61, baseType: !2201, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1947, line: 151, baseType: !645)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2193, file: !2194, line: 62, baseType: !2203, size: 32, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1947, line: 150, baseType: !5)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2193, file: !2194, line: 64, baseType: !2205, size: 32, offset: 224)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1947, line: 146, baseType: !5)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2193, file: !2194, line: 65, baseType: !2207, size: 32, offset: 256)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1947, line: 147, baseType: !5)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2193, file: !2194, line: 67, baseType: !584, size: 32, offset: 288)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2193, file: !2194, line: 69, baseType: !2197, size: 64, offset: 320)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2193, file: !2194, line: 74, baseType: !1946, size: 64, offset: 384)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2193, file: !2194, line: 78, baseType: !2212, size: 64, offset: 448)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1947, line: 174, baseType: !647)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2193, file: !2194, line: 80, baseType: !2214, size: 64, offset: 512)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1947, line: 179, baseType: !647)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2193, file: !2194, line: 91, baseType: !2216, size: 128, offset: 576)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2217, line: 10, size: 128, elements: !2218)
!2217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2218 = !{!2219, !2221}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2216, file: !2217, line: 12, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1947, line: 160, baseType: !647)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2216, file: !2217, line: 16, baseType: !2222, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1947, line: 196, baseType: !647)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2193, file: !2194, line: 92, baseType: !2216, size: 128, offset: 704)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2193, file: !2194, line: 93, baseType: !2216, size: 128, offset: 832)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2193, file: !2194, line: 106, baseType: !2226, size: 192, offset: 960)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2222, size: 192, elements: !665)
!2227 = !{!2228, !2229}
!2228 = !DILocalVariable(name: "__path", arg: 1, scope: !2188, file: !2189, line: 453, type: !589)
!2229 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2188, file: !2189, line: 453, type: !2192)
!2230 = !DILocation(line: 0, scope: !2188)
!2231 = !DILocation(line: 455, column: 10, scope: !2188)
!2232 = !DILocation(line: 455, column: 3, scope: !2188)
!2233 = distinct !DISubprogram(name: "lstat", scope: !2189, file: !2189, line: 460, type: !2190, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2234)
!2234 = !{!2235, !2236}
!2235 = !DILocalVariable(name: "__path", arg: 1, scope: !2233, file: !2189, line: 460, type: !589)
!2236 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2233, file: !2189, line: 460, type: !2192)
!2237 = !DILocation(line: 0, scope: !2233)
!2238 = !DILocation(line: 462, column: 10, scope: !2233)
!2239 = !DILocation(line: 462, column: 3, scope: !2233)
!2240 = distinct !DISubprogram(name: "fstat", scope: !2189, file: !2189, line: 467, type: !2241, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!584, !584, !2192}
!2243 = !{!2244, !2245}
!2244 = !DILocalVariable(name: "__fd", arg: 1, scope: !2240, file: !2189, line: 467, type: !584)
!2245 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2240, file: !2189, line: 467, type: !2192)
!2246 = !DILocation(line: 0, scope: !2240)
!2247 = !DILocation(line: 469, column: 10, scope: !2240)
!2248 = !DILocation(line: 469, column: 3, scope: !2240)
!2249 = distinct !DISubprogram(name: "fstatat", scope: !2189, file: !2189, line: 474, type: !2250, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2252)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!584, !584, !589, !2192, !584}
!2252 = !{!2253, !2254, !2255, !2256}
!2253 = !DILocalVariable(name: "__fd", arg: 1, scope: !2249, file: !2189, line: 474, type: !584)
!2254 = !DILocalVariable(name: "__filename", arg: 2, scope: !2249, file: !2189, line: 474, type: !589)
!2255 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2249, file: !2189, line: 474, type: !2192)
!2256 = !DILocalVariable(name: "__flag", arg: 4, scope: !2249, file: !2189, line: 474, type: !584)
!2257 = !DILocation(line: 0, scope: !2249)
!2258 = !DILocation(line: 477, column: 10, scope: !2249)
!2259 = !DILocation(line: 477, column: 3, scope: !2249)
!2260 = distinct !DISubprogram(name: "mknod", scope: !2189, file: !2189, line: 483, type: !2261, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!584, !589, !2203, !2197}
!2263 = !{!2264, !2265, !2266}
!2264 = !DILocalVariable(name: "__path", arg: 1, scope: !2260, file: !2189, line: 483, type: !589)
!2265 = !DILocalVariable(name: "__mode", arg: 2, scope: !2260, file: !2189, line: 483, type: !2203)
!2266 = !DILocalVariable(name: "__dev", arg: 3, scope: !2260, file: !2189, line: 483, type: !2197)
!2267 = !DILocation(line: 0, scope: !2260)
!2268 = !DILocation(line: 485, column: 10, scope: !2260)
!2269 = !DILocation(line: 485, column: 3, scope: !2260)
!2270 = distinct !DISubprogram(name: "mknodat", scope: !2189, file: !2189, line: 491, type: !2271, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!584, !584, !589, !2203, !2197}
!2273 = !{!2274, !2275, !2276, !2277}
!2274 = !DILocalVariable(name: "__fd", arg: 1, scope: !2270, file: !2189, line: 491, type: !584)
!2275 = !DILocalVariable(name: "__path", arg: 2, scope: !2270, file: !2189, line: 491, type: !589)
!2276 = !DILocalVariable(name: "__mode", arg: 3, scope: !2270, file: !2189, line: 491, type: !2203)
!2277 = !DILocalVariable(name: "__dev", arg: 4, scope: !2270, file: !2189, line: 491, type: !2197)
!2278 = !DILocation(line: 0, scope: !2270)
!2279 = !DILocation(line: 494, column: 10, scope: !2270)
!2280 = !DILocation(line: 494, column: 3, scope: !2270)
!2281 = distinct !DISubprogram(name: "stat64", scope: !2189, file: !2189, line: 502, type: !2282, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2304)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!584, !589, !2284}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2194, line: 119, size: 1152, elements: !2286)
!2286 = !{!2287, !2288, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2300, !2301, !2302, !2303}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2285, file: !2194, line: 121, baseType: !2197, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2285, file: !2194, line: 123, baseType: !2289, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1947, line: 149, baseType: !645)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2285, file: !2194, line: 124, baseType: !2201, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2285, file: !2194, line: 125, baseType: !2203, size: 32, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2285, file: !2194, line: 132, baseType: !2205, size: 32, offset: 224)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2285, file: !2194, line: 133, baseType: !2207, size: 32, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2285, file: !2194, line: 135, baseType: !584, size: 32, offset: 288)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2285, file: !2194, line: 136, baseType: !2197, size: 64, offset: 320)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2285, file: !2194, line: 137, baseType: !1946, size: 64, offset: 384)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2285, file: !2194, line: 143, baseType: !2212, size: 64, offset: 448)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2285, file: !2194, line: 144, baseType: !2299, size: 64, offset: 512)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1947, line: 180, baseType: !647)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2285, file: !2194, line: 152, baseType: !2216, size: 128, offset: 576)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2285, file: !2194, line: 153, baseType: !2216, size: 128, offset: 704)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2285, file: !2194, line: 154, baseType: !2216, size: 128, offset: 832)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2285, file: !2194, line: 164, baseType: !2226, size: 192, offset: 960)
!2304 = !{!2305, !2306}
!2305 = !DILocalVariable(name: "__path", arg: 1, scope: !2281, file: !2189, line: 502, type: !589)
!2306 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2281, file: !2189, line: 502, type: !2284)
!2307 = !DILocation(line: 0, scope: !2281)
!2308 = !DILocation(line: 504, column: 10, scope: !2281)
!2309 = !DILocation(line: 504, column: 3, scope: !2281)
!2310 = distinct !DISubprogram(name: "lstat64", scope: !2189, file: !2189, line: 509, type: !2282, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2311)
!2311 = !{!2312, !2313}
!2312 = !DILocalVariable(name: "__path", arg: 1, scope: !2310, file: !2189, line: 509, type: !589)
!2313 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2310, file: !2189, line: 509, type: !2284)
!2314 = !DILocation(line: 0, scope: !2310)
!2315 = !DILocation(line: 511, column: 10, scope: !2310)
!2316 = !DILocation(line: 511, column: 3, scope: !2310)
!2317 = distinct !DISubprogram(name: "fstat64", scope: !2189, file: !2189, line: 516, type: !2318, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!584, !584, !2284}
!2320 = !{!2321, !2322}
!2321 = !DILocalVariable(name: "__fd", arg: 1, scope: !2317, file: !2189, line: 516, type: !584)
!2322 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2317, file: !2189, line: 516, type: !2284)
!2323 = !DILocation(line: 0, scope: !2317)
!2324 = !DILocation(line: 518, column: 10, scope: !2317)
!2325 = !DILocation(line: 518, column: 3, scope: !2317)
!2326 = distinct !DISubprogram(name: "fstatat64", scope: !2189, file: !2189, line: 523, type: !2327, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!584, !584, !589, !2284, !584}
!2329 = !{!2330, !2331, !2332, !2333}
!2330 = !DILocalVariable(name: "__fd", arg: 1, scope: !2326, file: !2189, line: 523, type: !584)
!2331 = !DILocalVariable(name: "__filename", arg: 2, scope: !2326, file: !2189, line: 523, type: !589)
!2332 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2326, file: !2189, line: 523, type: !2284)
!2333 = !DILocalVariable(name: "__flag", arg: 4, scope: !2326, file: !2189, line: 523, type: !584)
!2334 = !DILocation(line: 0, scope: !2326)
!2335 = !DILocation(line: 526, column: 10, scope: !2326)
!2336 = !DILocation(line: 526, column: 3, scope: !2326)
!2337 = distinct !DISubprogram(name: "c_genericize", scope: !1, file: !1, line: 78, type: !2338, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null, !591}
!2340 = !{!2341, !2342, !2343, !2344}
!2341 = !DILocalVariable(name: "fndecl", arg: 1, scope: !2337, file: !1, line: 78, type: !591)
!2342 = !DILocalVariable(name: "dump_orig", scope: !2337, file: !1, line: 80, type: !1920)
!2343 = !DILocalVariable(name: "local_dump_flags", scope: !2337, file: !1, line: 81, type: !584)
!2344 = !DILocalVariable(name: "cgn", scope: !2337, file: !1, line: 82, type: !2345)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !376, line: 181, size: 2496, elements: !2347)
!2347 = !{!2348, !2349, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2488, !2510, !2520, !2524, !2550, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2346, file: !376, line: 182, baseType: !591, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !2346, file: !376, line: 183, baseType: !2350, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !376, line: 314, size: 768, elements: !2352)
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2364, !2365, !2366, !2367, !2368, !2369, !2370}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2351, file: !376, line: 316, baseType: !1128, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2351, file: !376, line: 317, baseType: !2345, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !2351, file: !376, line: 318, baseType: !2345, size: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !2351, file: !376, line: 319, baseType: !2350, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !2351, file: !376, line: 320, baseType: !2350, size: 64, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !2351, file: !376, line: 321, baseType: !2350, size: 64, offset: 320)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !2351, file: !376, line: 322, baseType: !2350, size: 64, offset: 384)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !2351, file: !376, line: 323, baseType: !916, size: 64, offset: 448)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2351, file: !376, line: 324, baseType: !588, size: 64, offset: 512)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !2351, file: !376, line: 327, baseType: !2363, size: 32, offset: 576)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !376, line: 312, baseType: !375)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !2351, file: !376, line: 330, baseType: !5, size: 32, offset: 608)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2351, file: !376, line: 334, baseType: !584, size: 32, offset: 640)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2351, file: !376, line: 336, baseType: !584, size: 32, offset: 672)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !2351, file: !376, line: 338, baseType: !1949, size: 16, offset: 704)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !2351, file: !376, line: 340, baseType: !5, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !2351, file: !376, line: 342, baseType: !5, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !2351, file: !376, line: 344, baseType: !5, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !2346, file: !376, line: 184, baseType: !2350, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2346, file: !376, line: 185, baseType: !2345, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !2346, file: !376, line: 186, baseType: !2345, size: 64, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2346, file: !376, line: 188, baseType: !2345, size: 64, offset: 320)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2346, file: !376, line: 190, baseType: !2345, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !2346, file: !376, line: 192, baseType: !2345, size: 64, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2346, file: !376, line: 194, baseType: !2345, size: 64, offset: 512)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !2346, file: !376, line: 196, baseType: !2345, size: 64, offset: 576)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !2346, file: !376, line: 197, baseType: !2345, size: 64, offset: 640)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !2346, file: !376, line: 198, baseType: !2345, size: 64, offset: 704)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !2346, file: !376, line: 199, baseType: !2345, size: 64, offset: 768)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !2346, file: !376, line: 202, baseType: !2345, size: 64, offset: 832)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !2346, file: !376, line: 204, baseType: !2345, size: 64, offset: 896)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !2346, file: !376, line: 207, baseType: !1348, size: 64, offset: 960)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2346, file: !376, line: 209, baseType: !588, size: 64, offset: 1024)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !2346, file: !376, line: 214, baseType: !2387, size: 64, offset: 1088)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !1306, line: 177, baseType: !2389)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !1306, line: 177, size: 128, elements: !2390)
!2390 = !{!2391}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2389, file: !1306, line: 177, baseType: !2392, size: 128)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !1306, line: 176, baseType: !2393)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !1306, line: 176, size: 128, elements: !2394)
!2394 = !{!2395, !2396, !2397}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2393, file: !1306, line: 176, baseType: !5, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2393, file: !1306, line: 176, baseType: !5, size: 32, offset: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2393, file: !1306, line: 176, baseType: !2398, size: 64, offset: 64)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2399, size: 64, elements: !690)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !1306, line: 174, baseType: !2400)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !399, line: 173, size: 1152, elements: !2402)
!2402 = !{!2403, !2427, !2431, !2454, !2455, !2459, !2464, !2465, !2469}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2401, file: !399, line: 175, baseType: !2404, size: 640)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !399, line: 114, size: 640, elements: !2405)
!2405 = !{!2406, !2407, !2408, !2412, !2416, !2418, !2419, !2420, !2422, !2423, !2424, !2425, !2426}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2404, file: !399, line: 117, baseType: !398, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2404, file: !399, line: 121, baseType: !589, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2404, file: !399, line: 125, baseType: !2409, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!583}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2404, file: !399, line: 130, baseType: !2413, size: 64, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!5}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2404, file: !399, line: 133, baseType: !2417, size: 64, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2404, file: !399, line: 136, baseType: !2417, size: 64, offset: 320)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2404, file: !399, line: 139, baseType: !584, size: 32, offset: 384)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2404, file: !399, line: 143, baseType: !2421, size: 32, offset: 416)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !406, line: 80, baseType: !405)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2404, file: !399, line: 146, baseType: !5, size: 32, offset: 448)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2404, file: !399, line: 147, baseType: !5, size: 32, offset: 480)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2404, file: !399, line: 148, baseType: !5, size: 32, offset: 512)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2404, file: !399, line: 151, baseType: !5, size: 32, offset: 544)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2404, file: !399, line: 152, baseType: !5, size: 32, offset: 576)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !2401, file: !399, line: 179, baseType: !2428, size: 64, offset: 640)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{null}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !2401, file: !399, line: 182, baseType: !2432, size: 64, offset: 704)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{null, !2435}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !376, line: 276, size: 192, elements: !2437)
!2437 = !{!2438, !2439, !2453}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !2436, file: !376, line: 278, baseType: !1348, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2436, file: !376, line: 279, baseType: !2440, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !376, line: 272, baseType: !2442)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !376, line: 272, size: 128, elements: !2443)
!2443 = !{!2444}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2442, file: !376, line: 272, baseType: !2445, size: 128)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !376, line: 270, baseType: !2446)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !376, line: 270, size: 128, elements: !2447)
!2447 = !{!2448, !2449, !2450}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2446, file: !376, line: 270, baseType: !5, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2446, file: !376, line: 270, baseType: !5, size: 32, offset: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2446, file: !376, line: 270, baseType: !2451, size: 64, offset: 64)
!2451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2452, size: 64, elements: !690)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !376, line: 268, baseType: !2345)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2436, file: !376, line: 280, baseType: !588, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !2401, file: !399, line: 187, baseType: !2428, size: 64, offset: 768)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !2401, file: !399, line: 188, baseType: !2456, size: 64, offset: 832)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !2345}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !2401, file: !399, line: 191, baseType: !2460, size: 64, offset: 896)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !2345, !2463}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !2401, file: !399, line: 195, baseType: !5, size: 32, offset: 960)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !2401, file: !399, line: 196, baseType: !2466, size: 64, offset: 1024)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!5, !2345}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !2401, file: !399, line: 197, baseType: !2470, size: 64, offset: 1088)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{null, !2473}
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !376, line: 358, size: 320, elements: !2475)
!2475 = !{!2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2474, file: !376, line: 359, baseType: !591, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2474, file: !376, line: 361, baseType: !2473, size: 64, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2474, file: !376, line: 363, baseType: !2473, size: 64, offset: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !2474, file: !376, line: 366, baseType: !2473, size: 64, offset: 192)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2474, file: !376, line: 368, baseType: !584, size: 32, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2474, file: !376, line: 372, baseType: !5, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !2474, file: !376, line: 375, baseType: !5, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2474, file: !376, line: 378, baseType: !5, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2474, file: !376, line: 380, baseType: !5, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !2474, file: !376, line: 382, baseType: !5, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2474, file: !376, line: 384, baseType: !5, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2474, file: !376, line: 387, baseType: !5, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2346, file: !376, line: 216, baseType: !2489, size: 320, offset: 1152)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !376, line: 88, size: 320, elements: !2490)
!2490 = !{!2491, !2494, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !2489, file: !376, line: 90, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !376, line: 51, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !2489, file: !376, line: 92, baseType: !2495, size: 192, offset: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !376, line: 57, size: 192, elements: !2496)
!2496 = !{!2497, !2498, !2499, !2500, !2501}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !2495, file: !376, line: 60, baseType: !647, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !2495, file: !376, line: 63, baseType: !584, size: 32, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !2495, file: !376, line: 65, baseType: !584, size: 32, offset: 96)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !2495, file: !376, line: 67, baseType: !584, size: 32, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !2495, file: !376, line: 69, baseType: !584, size: 32, offset: 160)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2489, file: !376, line: 96, baseType: !5, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2489, file: !376, line: 99, baseType: !5, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2489, file: !376, line: 102, baseType: !5, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !2489, file: !376, line: 105, baseType: !5, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2489, file: !376, line: 108, baseType: !5, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !2489, file: !376, line: 112, baseType: !5, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !2489, file: !376, line: 116, baseType: !5, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !2489, file: !376, line: 120, baseType: !5, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !2346, file: !376, line: 217, baseType: !2511, size: 320, offset: 1472)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !376, line: 126, size: 320, elements: !2512)
!2512 = !{!2513, !2514, !2515, !2516, !2517, !2518, !2519}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !2511, file: !376, line: 128, baseType: !647, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !2511, file: !376, line: 130, baseType: !647, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !2511, file: !376, line: 134, baseType: !2345, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2511, file: !376, line: 137, baseType: !584, size: 32, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2511, file: !376, line: 138, baseType: !584, size: 32, offset: 224)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !2511, file: !376, line: 141, baseType: !584, size: 32, offset: 256)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !2511, file: !376, line: 144, baseType: !583, size: 8, offset: 288)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2346, file: !376, line: 218, baseType: !2521, size: 32, offset: 1792)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !376, line: 150, size: 32, elements: !2522)
!2522 = !{!2523}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2521, file: !376, line: 151, baseType: !5, size: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !2346, file: !376, line: 219, baseType: !2525, size: 192, offset: 1856)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !376, line: 171, size: 192, elements: !2526)
!2526 = !{!2527, !2548, !2549}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2525, file: !376, line: 173, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !376, line: 169, baseType: !2530)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !376, line: 169, size: 128, elements: !2531)
!2531 = !{!2532}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2530, file: !376, line: 169, baseType: !2533, size: 128)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !376, line: 168, baseType: !2534)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !376, line: 168, size: 128, elements: !2535)
!2535 = !{!2536, !2537, !2538}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2534, file: !376, line: 168, baseType: !5, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2534, file: !376, line: 168, baseType: !5, size: 32, offset: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2534, file: !376, line: 168, baseType: !2539, size: 64, offset: 64)
!2539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2540, size: 64, elements: !690)
!2540 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !376, line: 167, baseType: !2541)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !376, line: 156, size: 192, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2542, file: !376, line: 159, baseType: !591, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2542, file: !376, line: 161, baseType: !591, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2542, file: !376, line: 163, baseType: !583, size: 8, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2542, file: !376, line: 165, baseType: !583, size: 8, offset: 136)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2525, file: !376, line: 174, baseType: !1434, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2525, file: !376, line: 175, baseType: !1434, size: 64, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !2346, file: !376, line: 220, baseType: !2551, size: 256, offset: 2048)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !376, line: 74, size: 256, elements: !2552)
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2558}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2551, file: !376, line: 76, baseType: !647, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2551, file: !376, line: 77, baseType: !647, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2551, file: !376, line: 78, baseType: !591, size: 64, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2551, file: !376, line: 79, baseType: !583, size: 8, offset: 192)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2551, file: !376, line: 80, baseType: !583, size: 8, offset: 200)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2551, file: !376, line: 82, baseType: !583, size: 8, offset: 208)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2346, file: !376, line: 223, baseType: !1128, size: 64, offset: 2304)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2346, file: !376, line: 225, baseType: !584, size: 32, offset: 2368)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2346, file: !376, line: 227, baseType: !584, size: 32, offset: 2400)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2346, file: !376, line: 231, baseType: !584, size: 32, offset: 2432)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2346, file: !376, line: 238, baseType: !5, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !2346, file: !376, line: 241, baseType: !5, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !2346, file: !376, line: 244, baseType: !5, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !2346, file: !376, line: 251, baseType: !5, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !2346, file: !376, line: 253, baseType: !5, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2346, file: !376, line: 256, baseType: !5, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !2346, file: !376, line: 258, baseType: !5, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2346, file: !376, line: 260, baseType: !5, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !2346, file: !376, line: 262, baseType: !5, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !2346, file: !376, line: 265, baseType: !5, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2573 = !DILocation(line: 0, scope: !2337)
!2574 = !DILocation(line: 81, column: 3, scope: !2337)
!2575 = !DILocation(line: 85, column: 15, scope: !2337)
!2576 = !DILocation(line: 86, column: 7, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2337, file: !1, line: 86, column: 7)
!2578 = !DILocation(line: 86, column: 7, scope: !2337)
!2579 = !DILocation(line: 89, column: 20, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2577, file: !1, line: 87, column: 5)
!2581 = !DILocation(line: 89, column: 9, scope: !2580)
!2582 = !DILocation(line: 88, column: 7, scope: !2580)
!2583 = !DILocation(line: 91, column: 11, scope: !2580)
!2584 = !DILocation(line: 91, column: 10, scope: !2580)
!2585 = !DILocation(line: 92, column: 5, scope: !2580)
!2586 = !DILocation(line: 90, column: 7, scope: !2580)
!2587 = !DILocation(line: 93, column: 50, scope: !2580)
!2588 = !DILocation(line: 93, column: 7, scope: !2580)
!2589 = !DILocation(line: 94, column: 7, scope: !2580)
!2590 = !DILocation(line: 96, column: 11, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2580, file: !1, line: 96, column: 11)
!2592 = !DILocation(line: 96, column: 28, scope: !2591)
!2593 = !DILocation(line: 0, scope: !2591)
!2594 = !DILocation(line: 96, column: 11, scope: !2580)
!2595 = !DILocation(line: 98, column: 15, scope: !2591)
!2596 = !DILocation(line: 97, column: 2, scope: !2591)
!2597 = !DILocation(line: 100, column: 2, scope: !2591)
!2598 = !DILocation(line: 101, column: 7, scope: !2580)
!2599 = !DILocation(line: 103, column: 7, scope: !2580)
!2600 = !DILocation(line: 104, column: 5, scope: !2580)
!2601 = !DILocation(line: 107, column: 9, scope: !2337)
!2602 = !DILocation(line: 108, column: 19, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2337, file: !1, line: 108, column: 3)
!2604 = !DILocation(line: 108, column: 8, scope: !2603)
!2605 = !DILocation(line: 0, scope: !2603)
!2606 = !DILocation(line: 108, column: 3, scope: !2603)
!2607 = !DILocation(line: 109, column: 24, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2603, file: !1, line: 108, column: 3)
!2609 = !DILocation(line: 109, column: 5, scope: !2608)
!2610 = !DILocation(line: 108, column: 44, scope: !2608)
!2611 = !DILocation(line: 108, column: 3, scope: !2608)
!2612 = distinct !{!2612, !2606, !2613}
!2613 = !DILocation(line: 109, column: 28, scope: !2603)
!2614 = !DILocation(line: 110, column: 1, scope: !2337)
!2615 = distinct !DISubprogram(name: "c_build_bind_expr", scope: !1, file: !1, line: 136, type: !2616, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!591, !716, !591, !591}
!2618 = !{!2619, !2620, !2621, !2622, !2623}
!2619 = !DILocalVariable(name: "loc", arg: 1, scope: !2615, file: !1, line: 136, type: !716)
!2620 = !DILocalVariable(name: "block", arg: 2, scope: !2615, file: !1, line: 136, type: !591)
!2621 = !DILocalVariable(name: "body", arg: 3, scope: !2615, file: !1, line: 136, type: !591)
!2622 = !DILocalVariable(name: "decls", scope: !2615, file: !1, line: 138, type: !591)
!2623 = !DILocalVariable(name: "bind", scope: !2615, file: !1, line: 138, type: !591)
!2624 = !DILocation(line: 0, scope: !2615)
!2625 = !DILocation(line: 140, column: 13, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2615, file: !1, line: 140, column: 7)
!2627 = !DILocation(line: 140, column: 7, scope: !2615)
!2628 = !DILocation(line: 142, column: 12, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !1, line: 142, column: 12)
!2630 = !DILocation(line: 142, column: 30, scope: !2629)
!2631 = !DILocation(line: 142, column: 12, scope: !2626)
!2632 = !DILocation(line: 143, column: 13, scope: !2629)
!2633 = !DILocation(line: 143, column: 5, scope: !2629)
!2634 = !DILocation(line: 147, column: 11, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !1, line: 147, column: 11)
!2636 = distinct !DILexicalBlock(scope: !2629, file: !1, line: 145, column: 5)
!2637 = !DILocation(line: 147, column: 11, scope: !2636)
!2638 = !DILocation(line: 151, column: 12, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2635, file: !1, line: 150, column: 2)
!2640 = !DILocation(line: 152, column: 4, scope: !2639)
!2641 = !DILocation(line: 152, column: 23, scope: !2639)
!2642 = !DILocation(line: 153, column: 4, scope: !2639)
!2643 = !DILocation(line: 0, scope: !2626)
!2644 = !DILocation(line: 157, column: 8, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2615, file: !1, line: 157, column: 7)
!2646 = !DILocation(line: 157, column: 7, scope: !2615)
!2647 = !DILocation(line: 158, column: 12, scope: !2645)
!2648 = !DILocation(line: 158, column: 5, scope: !2645)
!2649 = !DILocation(line: 159, column: 7, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2615, file: !1, line: 159, column: 7)
!2651 = !DILocation(line: 159, column: 16, scope: !2650)
!2652 = !DILocation(line: 159, column: 13, scope: !2650)
!2653 = !DILocation(line: 161, column: 14, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !1, line: 160, column: 5)
!2655 = !DILocation(line: 162, column: 7, scope: !2654)
!2656 = !DILocation(line: 162, column: 32, scope: !2654)
!2657 = !DILocation(line: 163, column: 7, scope: !2654)
!2658 = !DILocation(line: 164, column: 5, scope: !2654)
!2659 = !DILocation(line: 0, scope: !2650)
!2660 = !DILocation(line: 168, column: 3, scope: !2615)
!2661 = distinct !DISubprogram(name: "add_block_to_enclosing", scope: !1, file: !1, line: 113, type: !2338, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2662)
!2662 = !{!2663, !2664, !2665, !2666, !2667}
!2663 = !DILocalVariable(name: "block", arg: 1, scope: !2661, file: !1, line: 113, type: !591)
!2664 = !DILocalVariable(name: "i", scope: !2661, file: !1, line: 115, type: !5)
!2665 = !DILocalVariable(name: "enclosing", scope: !2661, file: !1, line: 116, type: !591)
!2666 = !DILocalVariable(name: "bind", scope: !2661, file: !1, line: 117, type: !916)
!2667 = !DILocalVariable(name: "stack", scope: !2661, file: !1, line: 118, type: !2668)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_heap", file: !908, line: 34, baseType: !2670)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_heap", file: !908, line: 34, size: 128, elements: !2671)
!2671 = !{!2672}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2670, file: !908, line: 34, baseType: !1403, size: 128)
!2673 = !DILocation(line: 0, scope: !2661)
!2674 = !DILocation(line: 117, column: 3, scope: !2661)
!2675 = !DILocation(line: 118, column: 30, scope: !2661)
!2676 = !DILocation(line: 0, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !1, line: 120, column: 3)
!2678 = distinct !DILexicalBlock(scope: !2661, file: !1, line: 120, column: 3)
!2679 = !DILocation(line: 120, column: 8, scope: !2678)
!2680 = !DILocation(line: 0, scope: !2678)
!2681 = !DILocation(line: 120, column: 15, scope: !2677)
!2682 = !DILocation(line: 120, column: 3, scope: !2678)
!2683 = !DILocation(line: 121, column: 28, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2677, file: !1, line: 121, column: 9)
!2685 = !DILocation(line: 121, column: 9, scope: !2684)
!2686 = !DILocation(line: 121, column: 9, scope: !2677)
!2687 = !DILocation(line: 120, column: 54, scope: !2677)
!2688 = !DILocation(line: 120, column: 3, scope: !2677)
!2689 = distinct !{!2689, !2682, !2690}
!2690 = !DILocation(line: 122, column: 7, scope: !2678)
!2691 = !DILocation(line: 124, column: 34, scope: !2661)
!2692 = !DILocation(line: 124, column: 15, scope: !2661)
!2693 = !DILocation(line: 125, column: 42, scope: !2661)
!2694 = !DILocation(line: 125, column: 33, scope: !2661)
!2695 = !DILocation(line: 125, column: 31, scope: !2661)
!2696 = !DILocation(line: 126, column: 1, scope: !2661)
!2697 = distinct !DISubprogram(name: "c_gimplify_expr", scope: !1, file: !1, line: 177, type: !2698, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2701)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!584, !951, !2700, !2700}
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!2701 = !{!2702, !2703, !2704, !2705}
!2702 = !DILocalVariable(name: "expr_p", arg: 1, scope: !2697, file: !1, line: 177, type: !951)
!2703 = !DILocalVariable(name: "pre_p", arg: 2, scope: !2697, file: !1, line: 177, type: !2700)
!2704 = !DILocalVariable(name: "post_p", arg: 3, scope: !2697, file: !1, line: 178, type: !2700)
!2705 = !DILocalVariable(name: "code", scope: !2697, file: !1, line: 180, type: !132)
!2706 = !DILocation(line: 0, scope: !2697)
!2707 = !DILocation(line: 180, column: 25, scope: !2697)
!2708 = !DILocation(line: 185, column: 12, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2697, file: !1, line: 185, column: 7)
!2710 = !DILocation(line: 186, column: 7, scope: !2709)
!2711 = !DILocation(line: 186, column: 10, scope: !2709)
!2712 = !DILocation(line: 186, column: 47, scope: !2709)
!2713 = !DILocation(line: 187, column: 7, scope: !2709)
!2714 = !DILocation(line: 187, column: 11, scope: !2709)
!2715 = !DILocation(line: 188, column: 7, scope: !2709)
!2716 = !DILocation(line: 188, column: 11, scope: !2709)
!2717 = !DILocation(line: 189, column: 7, scope: !2709)
!2718 = !DILocation(line: 189, column: 11, scope: !2709)
!2719 = !DILocation(line: 189, column: 51, scope: !2709)
!2720 = !DILocation(line: 190, column: 11, scope: !2709)
!2721 = !DILocation(line: 190, column: 7, scope: !2709)
!2722 = !DILocation(line: 191, column: 48, scope: !2709)
!2723 = !DILocation(line: 191, column: 5, scope: !2709)
!2724 = !DILocation(line: 193, column: 3, scope: !2697)
!2725 = distinct !DISubprogram(name: "VEC_gimple_base_iterate", scope: !908, file: !908, line: 33, type: !2726, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2730)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!584, !2728, !5, !2463}
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1403)
!2730 = !{!2731, !2732, !2733}
!2731 = !DILocalVariable(name: "vec_", arg: 1, scope: !2725, file: !908, line: 33, type: !2728)
!2732 = !DILocalVariable(name: "ix_", arg: 2, scope: !2725, file: !908, line: 33, type: !5)
!2733 = !DILocalVariable(name: "ptr", arg: 3, scope: !2725, file: !908, line: 33, type: !2463)
!2734 = !DILocation(line: 0, scope: !2725)
!2735 = !DILocation(line: 33, column: 1, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2725, file: !908, line: 33, column: 1)
!2737 = !DILocation(line: 33, column: 1, scope: !2725)
!2738 = !DILocation(line: 33, column: 1, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2736, file: !908, line: 33, column: 1)
!2740 = !DILocation(line: 33, column: 1, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2736, file: !908, line: 33, column: 1)
!2742 = !DILocation(line: 0, scope: !2736)
!2743 = distinct !DISubprogram(name: "gimple_bind_block", scope: !908, file: !908, line: 2559, type: !2744, scopeLine: 2560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2749)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!591, !2746}
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !592, line: 60, baseType: !2747)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!2749 = !{!2750}
!2750 = !DILocalVariable(name: "gs", arg: 1, scope: !2743, file: !908, line: 2559, type: !2746)
!2751 = !DILocation(line: 0, scope: !2743)
!2752 = !DILocation(line: 2562, column: 26, scope: !2743)
!2753 = !DILocation(line: 2562, column: 3, scope: !2743)
