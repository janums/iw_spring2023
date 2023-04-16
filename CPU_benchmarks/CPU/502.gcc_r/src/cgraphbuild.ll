; ModuleID = 'cgraphbuild.bc'
source_filename = "cgraphbuild.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.diagnostic_context = type opaque
%struct.diagnostic_info = type opaque
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.lang_hooks_for_tree_inlining = type { i8 (%union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_callgraph = type { %union.tree_node* (%union.tree_node**, i32*)* }
%struct.lang_hooks_for_tree_dump = type { i8 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_hooks_for_decls = type { i32 ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, void ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)* }
%struct.lang_hooks_for_types = type { %union.tree_node* (i32)*, i32 (%union.tree_node*)*, %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, i8*)*, void (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%struct.gimplify_omp_ctx*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %struct.array_descr_info*)*, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i8 }
%struct.gimplify_omp_ctx = type opaque
%struct.array_descr_info = type opaque
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, void ()*, void (%struct.cgraph_node_set_def*)*, void ()*, {}*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* }
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
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, i8*, %struct.pointer_set_t*, i8, i8, i8, i8, %union.tree_node* }
%struct.pointer_set_t = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"*build_cgraph_edges\00", align 1
@pass_build_cgraph_edges = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8 ()* null, i32 ()* @build_cgraph_edges, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !0
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"cgraphbuild.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"*rebuild_cgraph_edges\00", align 1
@pass_rebuild_cgraph_edges = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8 ()* null, i32 ()* @rebuild_cgraph_edges, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !1707
@.str.4 = private unnamed_addr constant [28 x i8] c"*remove_cgraph_callee_edges\00", align 1
@pass_remove_cgraph_callee_edges = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8 ()* null, i32 ()* @remove_cgraph_callee_edges, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !1735
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1741 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1754, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1755, metadata !DIExpression()), !dbg !1756
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1757
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1758
  ret i32 %call, !dbg !1759
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1760 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1764
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1765
  ret i32 %call, !dbg !1766
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1767 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1822, metadata !DIExpression()), !dbg !1823
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1824
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1824
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1824
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1824
  %cmp = icmp uge i8* %0, %1, !dbg !1824
  %conv1 = zext i1 %cmp to i64, !dbg !1824
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1824
  %tobool = icmp eq i64 %expval, 0, !dbg !1824
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1824

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1824
  br label %cond.end, !dbg !1824

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1824
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1824
  %2 = load i8, i8* %0, align 1, !dbg !1824
  %conv3 = zext i8 %2 to i32, !dbg !1824
  br label %cond.end, !dbg !1824

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1824
  ret i32 %cond, !dbg !1825
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1826 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1828, metadata !DIExpression()), !dbg !1829
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1830
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1830
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1830
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1830
  %cmp = icmp uge i8* %0, %1, !dbg !1830
  %conv1 = zext i1 %cmp to i64, !dbg !1830
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1830
  %tobool = icmp eq i64 %expval, 0, !dbg !1830
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1830

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1830
  br label %cond.end, !dbg !1830

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1830
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1830
  %2 = load i8, i8* %0, align 1, !dbg !1830
  %conv3 = zext i8 %2 to i32, !dbg !1830
  br label %cond.end, !dbg !1830

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1830
  ret i32 %cond, !dbg !1831
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1832 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1833
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1833
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1833
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1833
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1833
  %cmp = icmp uge i8* %1, %2, !dbg !1833
  %conv1 = zext i1 %cmp to i64, !dbg !1833
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1833
  %tobool = icmp eq i64 %expval, 0, !dbg !1833
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1833

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1833
  br label %cond.end, !dbg !1833

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1833
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1833
  %3 = load i8, i8* %1, align 1, !dbg !1833
  %conv3 = zext i8 %3 to i32, !dbg !1833
  br label %cond.end, !dbg !1833

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1833
  ret i32 %cond, !dbg !1834
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1835 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1839, metadata !DIExpression()), !dbg !1840
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1841
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1842
  ret i32 %call, !dbg !1843
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1844 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1848, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1849, metadata !DIExpression()), !dbg !1850
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1851
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1851
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1851
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1851
  %cmp = icmp uge i8* %0, %1, !dbg !1851
  %conv1 = zext i1 %cmp to i64, !dbg !1851
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1851
  %tobool = icmp eq i64 %expval, 0, !dbg !1851
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1851

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1851
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1851
  br label %cond.end, !dbg !1851

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1851
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1851
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1851
  store i8 %conv2, i8* %0, align 1, !dbg !1851
  %conv6 = and i32 %__c, 255, !dbg !1851
  br label %cond.end, !dbg !1851

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1851
  ret i32 %cond, !dbg !1852
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1853 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1855, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1856, metadata !DIExpression()), !dbg !1857
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1858
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1858
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1858
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1858
  %cmp = icmp uge i8* %0, %1, !dbg !1858
  %conv1 = zext i1 %cmp to i64, !dbg !1858
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1858
  %tobool = icmp eq i64 %expval, 0, !dbg !1858
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1858

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1858
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1858
  br label %cond.end, !dbg !1858

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1858
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1858
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1858
  store i8 %conv2, i8* %0, align 1, !dbg !1858
  %conv6 = and i32 %__c, 255, !dbg !1858
  br label %cond.end, !dbg !1858

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1858
  ret i32 %cond, !dbg !1859
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1860 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1862, metadata !DIExpression()), !dbg !1863
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1864
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1864
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1864
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1864
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1864
  %cmp = icmp uge i8* %1, %2, !dbg !1864
  %conv1 = zext i1 %cmp to i64, !dbg !1864
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1864
  %tobool = icmp eq i64 %expval, 0, !dbg !1864
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1864

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1864
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1864
  br label %cond.end, !dbg !1864

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1864
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1864
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1864
  store i8 %conv4, i8* %1, align 1, !dbg !1864
  %conv6 = and i32 %__c, 255, !dbg !1864
  br label %cond.end, !dbg !1864

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1864
  ret i32 %cond, !dbg !1865
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1866 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1872, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1873, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1874, metadata !DIExpression()), !dbg !1875
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1876
  ret i64 %call, !dbg !1877
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1878 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1880, metadata !DIExpression()), !dbg !1881
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1882
  %0 = load i32, i32* %_flags, align 8, !dbg !1882
  %and = lshr i32 %0, 4, !dbg !1882
  %and.lobit = and i32 %and, 1, !dbg !1882
  ret i32 %and.lobit, !dbg !1883
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1884 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1886, metadata !DIExpression()), !dbg !1887
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1888
  %0 = load i32, i32* %_flags, align 8, !dbg !1888
  %and = lshr i32 %0, 5, !dbg !1888
  %and.lobit = and i32 %and, 1, !dbg !1888
  ret i32 %and.lobit, !dbg !1889
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1890 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1893, metadata !DIExpression()), !dbg !1894
  %__c.off = add i32 %__c, 128, !dbg !1895
  %0 = icmp ult i32 %__c.off, 384, !dbg !1895
  br i1 %0, label %cond.true, label %cond.end, !dbg !1895

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1896
  %1 = load i32*, i32** %call, align 8, !dbg !1897
  %idxprom = sext i32 %__c to i64, !dbg !1898
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1898
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1898
  br label %cond.end, !dbg !1899

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1899
  ret i32 %cond, !dbg !1900
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1901 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1903, metadata !DIExpression()), !dbg !1904
  %__c.off = add i32 %__c, 128, !dbg !1905
  %0 = icmp ult i32 %__c.off, 384, !dbg !1905
  br i1 %0, label %cond.true, label %cond.end, !dbg !1905

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1906
  %1 = load i32*, i32** %call, align 8, !dbg !1907
  %idxprom = sext i32 %__c to i64, !dbg !1908
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1908
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1908
  br label %cond.end, !dbg !1909

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1909
  ret i32 %cond, !dbg !1910
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1911 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1916, metadata !DIExpression()), !dbg !1917
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1918
  %conv = trunc i64 %call to i32, !dbg !1919
  ret i32 %conv, !dbg !1920
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1921 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1925, metadata !DIExpression()), !dbg !1926
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1927
  ret i64 %call, !dbg !1928
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1929 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1934, metadata !DIExpression()), !dbg !1935
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1936
  ret i64 %call, !dbg !1937
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1938 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1944, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1945, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1946, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1947, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1948, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 0, metadata !1949, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1950, metadata !DIExpression()), !dbg !1954
  br label %while.cond, !dbg !1955

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1956
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1954
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1950, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1949, metadata !DIExpression()), !dbg !1954
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1957
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1955

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1958
  %div = lshr i64 %add, 1, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %div, metadata !1951, metadata !DIExpression()), !dbg !1954
  %mul = mul i64 %div, %__size, !dbg !1961
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1962
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1952, metadata !DIExpression()), !dbg !1954
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1963
  call void @llvm.dbg.value(metadata i32 %call, metadata !1953, metadata !DIExpression()), !dbg !1954
  %cmp1 = icmp slt i32 %call, 0, !dbg !1964
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1966

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1967
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1969

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1949, metadata !DIExpression()), !dbg !1954
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1954
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1954
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1950, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1949, metadata !DIExpression()), !dbg !1954
  br label %while.cond, !dbg !1955, !llvm.loop !1971

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1954
  ret i8* %retval.0, !dbg !1973
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1974 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1980, metadata !DIExpression()), !dbg !1981
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1982
  ret double %call, !dbg !1983
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1984 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1993, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32 %base, metadata !1995, metadata !DIExpression()), !dbg !1996
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1997
  ret i64 %call, !dbg !1998
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1999 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2006, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i32 %base, metadata !2007, metadata !DIExpression()), !dbg !2008
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2009
  ret i64 %call, !dbg !2010
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2011 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2022, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2023, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 %base, metadata !2024, metadata !DIExpression()), !dbg !2025
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2026
  ret i64 %call, !dbg !2027
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2028 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2032, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2033, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i32 %base, metadata !2034, metadata !DIExpression()), !dbg !2035
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2036
  ret i64 %call, !dbg !2037
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2038 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2080, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2081, metadata !DIExpression()), !dbg !2082
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2083
  ret i32 %call, !dbg !2084
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2085 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2087, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2088, metadata !DIExpression()), !dbg !2089
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2090
  ret i32 %call, !dbg !2091
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2092 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2096, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2097, metadata !DIExpression()), !dbg !2098
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2099
  ret i32 %call, !dbg !2100
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2101 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2105, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2106, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2107, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2108, metadata !DIExpression()), !dbg !2109
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2110
  ret i32 %call, !dbg !2111
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2112 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2116, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2117, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2118, metadata !DIExpression()), !dbg !2119
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2118, metadata !DIExpression(DW_OP_deref)), !dbg !2119
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2120
  ret i32 %call, !dbg !2121
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2122 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2126, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2127, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2129, metadata !DIExpression()), !dbg !2130
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2129, metadata !DIExpression(DW_OP_deref)), !dbg !2130
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2131
  ret i32 %call, !dbg !2132
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2133 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2157, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2158, metadata !DIExpression()), !dbg !2159
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2160
  ret i32 %call, !dbg !2161
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2162 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2164, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2165, metadata !DIExpression()), !dbg !2166
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2167
  ret i32 %call, !dbg !2168
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2169 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2173, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2174, metadata !DIExpression()), !dbg !2175
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2176
  ret i32 %call, !dbg !2177
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2178 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2182, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2183, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2184, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2185, metadata !DIExpression()), !dbg !2186
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2187
  ret i32 %call, !dbg !2188
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @reset_inline_failed(%struct.cgraph_node* %node) local_unnamed_addr #5 !dbg !2189 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2396, metadata !DIExpression()), !dbg !2398
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 2, !dbg !2399
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !2401
  %redefined_extern_inline = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !2405
  br label %for.cond, !dbg !2407

for.cond:                                         ; preds = %for.inc, %entry
  %e.0.in = phi %struct.cgraph_edge** [ %callers, %entry ], [ %next_caller, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !2408
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !2397, metadata !DIExpression()), !dbg !2398
  %tobool = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !2409
  br i1 %tobool, label %for.end, label %for.body, !dbg !2409

for.body:                                         ; preds = %for.cond
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !2410
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2410
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 19, i32 2, !dbg !2411
  store %struct.cgraph_node* null, %struct.cgraph_node** %inlined_to, align 8, !dbg !2412
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !2413
  %bf.clear = and i16 %bf.load, 32, !dbg !2413
  %tobool1 = icmp eq i16 %bf.clear, 0, !dbg !2414
  br i1 %tobool1, label %if.then, label %if.else, !dbg !2415

if.then:                                          ; preds = %for.body
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !2416
  store i32 3, i32* %inline_failed, align 8, !dbg !2417
  br label %for.inc, !dbg !2418

if.else:                                          ; preds = %for.body
  %bf.load2 = load i8, i8* %redefined_extern_inline, align 8, !dbg !2419
  %bf.clear4 = and i8 %bf.load2, 32, !dbg !2419
  %tobool6 = icmp eq i8 %bf.clear4, 0, !dbg !2420
  br i1 %tobool6, label %if.else9, label %if.then7, !dbg !2421

if.then7:                                         ; preds = %if.else
  %inline_failed8 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !2422
  store i32 4, i32* %inline_failed8, align 8, !dbg !2423
  br label %for.inc, !dbg !2424

if.else9:                                         ; preds = %if.else
  %bf.clear13 = and i8 %bf.load2, 8, !dbg !2425
  %tobool15 = icmp eq i8 %bf.clear13, 0, !dbg !2427
  br i1 %tobool15, label %if.then16, label %if.else18, !dbg !2428

if.then16:                                        ; preds = %if.else9
  %inline_failed17 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !2429
  store i32 5, i32* %inline_failed17, align 8, !dbg !2430
  br label %for.inc, !dbg !2431

if.else18:                                        ; preds = %if.else9
  %call_stmt_cannot_inline_p = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 14, !dbg !2432
  %bf.load19 = load i8, i8* %call_stmt_cannot_inline_p, align 2, !dbg !2432
  %bf.clear21 = and i8 %bf.load19, 2, !dbg !2432
  %tobool23 = icmp eq i8 %bf.clear21, 0, !dbg !2434
  %inline_failed25 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !2435
  br i1 %tobool23, label %if.else26, label %if.then24, !dbg !2436

if.then24:                                        ; preds = %if.else18
  store i32 17, i32* %inline_failed25, align 8, !dbg !2437
  br label %for.inc, !dbg !2438

if.else26:                                        ; preds = %if.else18
  store i32 2, i32* %inline_failed25, align 8, !dbg !2439
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.then16, %if.else26, %if.then24, %if.then7
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 4, !dbg !2440
  br label %for.cond, !dbg !2441, !llvm.loop !2442

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2444
}

; Function Attrs: nounwind uwtable
define dso_local i32 @compute_call_stmt_bb_frequency(%union.tree_node* %decl, %struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !2445 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2449, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2450, metadata !DIExpression()), !dbg !2453
  %f = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 1, !dbg !2454
  %0 = load %struct.function*, %struct.function** %f, align 8, !dbg !2454
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2454
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2454
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2454
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2454
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 11, !dbg !2455
  %3 = load i32, i32* %frequency, align 8, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %3, metadata !2451, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 undef, metadata !2452, metadata !DIExpression()), !dbg !2453
  %x_profile_status = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 7, !dbg !2456
  %4 = load i32, i32* %x_profile_status, align 8, !dbg !2456
  %cmp = icmp eq i32 %4, 0, !dbg !2458
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2459

if.end:                                           ; preds = %entry
  %frequency1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !2460
  %5 = load i32, i32* %frequency1, align 8, !dbg !2460
  call void @llvm.dbg.value(metadata i32 %5, metadata !2452, metadata !DIExpression()), !dbg !2453
  %tobool = icmp ne i32 %3, 0, !dbg !2461
  %spec.select = select i1 %tobool, i32 %3, i32 1, !dbg !2463
  %not.tobool = xor i1 %tobool, true, !dbg !2463
  %inc = zext i1 %not.tobool to i32, !dbg !2463
  %spec.select1 = add nsw i32 %5, %inc, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !2452, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2451, metadata !DIExpression()), !dbg !2453
  %mul = mul nsw i32 %spec.select1, 1000, !dbg !2464
  %div = sdiv i32 %mul, %spec.select, !dbg !2465
  call void @llvm.dbg.value(metadata i32 %div, metadata !2452, metadata !DIExpression()), !dbg !2453
  %6 = icmp slt i32 %div, 100000, !dbg !2466
  %freq.1 = select i1 %6, i32 %div, i32 100000, !dbg !2466
  br label %cleanup, !dbg !2466

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1000, %entry ], [ %freq.1, %if.end ], !dbg !2453
  ret i32 %retval.0, !dbg !2467
}

; Function Attrs: nounwind uwtable
define internal i32 @build_cgraph_edges() #5 !dbg !2468 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %wi = alloca %struct.walk_stmt_info, align 8
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2516
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %0) #6, !dbg !2517
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !2471, metadata !DIExpression()), !dbg !2518
  %call1 = tail call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !2519
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %call1, metadata !2472, metadata !DIExpression()), !dbg !2518
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2520
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2520
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2521
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2521
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2521
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2521
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2521
  %5 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2522
  %6 = bitcast %struct.cgraph_node* %call to i8*, !dbg !2523
  %7 = bitcast %struct.walk_stmt_info* %wi to i8*, !dbg !2526
  %info = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %wi, i64 0, i32 1, !dbg !2526
  %8 = bitcast i8** %info to %struct.cgraph_node**, !dbg !2526
  %pset = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %wi, i64 0, i32 2, !dbg !2526
  br label %for.cond, !dbg !2521

for.cond:                                         ; preds = %for.inc60, %entry
  %9 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre5, %for.inc60 ], !dbg !2527
  %10 = phi %struct.function* [ %2, %entry ], [ %.pre, %for.inc60 ], !dbg !2527
  %.pn = phi %struct.basic_block_def* [ %4, %entry ], [ %bb.0, %for.inc60 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2528
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2528
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2470, metadata !DIExpression()), !dbg !2518
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 1, !dbg !2527
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2527
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %11, !dbg !2527
  br i1 %cmp, label %for.end62, label %for.body, !dbg !2521

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !2529
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #8, !dbg !2529
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !2529
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !2529
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 8, !dbg !2530
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 10, !dbg !2530
  br label %for.cond4, !dbg !2531

for.cond4:                                        ; preds = %for.inc58, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2475, metadata !DIExpression(DW_OP_deref)), !dbg !2518
  %call5 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2532
  %tobool = icmp eq i8 %call5, 0, !dbg !2533
  br i1 %tobool, label %for.body6, label %for.inc60, !dbg !2534

for.body6:                                        ; preds = %for.cond4
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2475, metadata !DIExpression(DW_OP_deref)), !dbg !2518
  %call7 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2535
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call7, metadata !2483, metadata !DIExpression()), !dbg !2536
  %call8 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call7) #8, !dbg !2537
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2537
  br i1 %tobool9, label %if.else, label %land.lhs.true, !dbg !2538

land.lhs.true:                                    ; preds = %for.body6
  %call10 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call7) #8, !dbg !2539
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !2489, metadata !DIExpression()), !dbg !2536
  %tobool11 = icmp eq %union.tree_node* %call10, null, !dbg !2540
  br i1 %tobool11, label %if.else, label %if.then, !dbg !2541

if.then:                                          ; preds = %land.lhs.true
  %call12 = call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call7) #8, !dbg !2542
  %conv13 = zext i32 %call12 to i64, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %conv13, metadata !2493, metadata !DIExpression()), !dbg !2530
  %call14 = call %struct.cgraph_node* @cgraph_node(%union.tree_node* nonnull %call10) #6, !dbg !2543
  %12 = load i64, i64* %count, align 8, !dbg !2544
  %13 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2545
  %call15 = call i32 @compute_call_stmt_bb_frequency(%union.tree_node* %13, %struct.basic_block_def* %bb.0) #8, !dbg !2546
  %14 = load i32, i32* %loop_depth, align 4, !dbg !2547
  %call16 = call %struct.cgraph_edge* @cgraph_create_edge(%struct.cgraph_node* %call, %struct.cgraph_node* %call14, %union.gimple_statement_d* %call7, i64 %12, i32 %call15, i32 %14) #6, !dbg !2548
  call void @llvm.dbg.value(metadata i64 0, metadata !2490, metadata !DIExpression()), !dbg !2530
  br label %for.cond17, !dbg !2549

for.cond17:                                       ; preds = %for.body20, %if.then
  %i.0 = phi i64 [ 0, %if.then ], [ %inc, %for.body20 ], !dbg !2550
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2490, metadata !DIExpression()), !dbg !2530
  %exitcond = icmp eq i64 %i.0, %conv13, !dbg !2551
  br i1 %exitcond, label %for.end, label %for.body20, !dbg !2552

for.body20:                                       ; preds = %for.cond17
  %conv21 = trunc i64 %i.0 to i32, !dbg !2553
  %call22 = call fastcc %union.tree_node** @gimple_call_arg_ptr(%union.gimple_statement_d* %call7, i32 %conv21) #8, !dbg !2553
  %call23 = call %union.tree_node* @walk_tree_1(%union.tree_node** %call22, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @record_reference, i8* %6, %struct.pointer_set_t* %call1, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)* null) #6, !dbg !2553
  %inc = add nuw nsw i64 %i.0, 1, !dbg !2554
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2490, metadata !DIExpression()), !dbg !2530
  br label %for.cond17, !dbg !2555, !llvm.loop !2556

for.end:                                          ; preds = %for.cond17
  %call24 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call7) #8, !dbg !2558
  %tobool25 = icmp eq %union.tree_node* %call24, null, !dbg !2558
  br i1 %tobool25, label %for.inc58, label %if.then26, !dbg !2560

if.then26:                                        ; preds = %for.end
  %call27 = call fastcc %union.tree_node** @gimple_call_lhs_ptr(%union.gimple_statement_d* %call7) #8, !dbg !2561
  %call28 = call %union.tree_node* @walk_tree_1(%union.tree_node** %call27, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @record_reference, i8* %6, %struct.pointer_set_t* %call1, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)* null) #6, !dbg !2561
  br label %for.inc58, !dbg !2561

if.else:                                          ; preds = %land.lhs.true, %for.body6
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #7, !dbg !2562
  %call29 = call i8* @memset(i8* nonnull %7, i32 0, i64 56) #6, !dbg !2563
  store %struct.cgraph_node* %call, %struct.cgraph_node** %8, align 8, !dbg !2564
  store %struct.pointer_set_t* %call1, %struct.pointer_set_t** %pset, align 8, !dbg !2565
  call void @llvm.dbg.value(metadata %struct.walk_stmt_info* %wi, metadata !2494, metadata !DIExpression(DW_OP_deref)), !dbg !2526
  %call30 = call %union.tree_node* @walk_gimple_op(%union.gimple_statement_d* %call7, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @record_reference, %struct.walk_stmt_info* nonnull %wi) #6, !dbg !2566
  %call31 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call7) #8, !dbg !2567
  %cmp32 = icmp eq i32 %call31, 26, !dbg !2568
  br i1 %cmp32, label %land.lhs.true34, label %if.end40, !dbg !2569

land.lhs.true34:                                  ; preds = %if.else
  %call35 = call fastcc %union.tree_node* @gimple_omp_parallel_child_fn(%union.gimple_statement_d* %call7) #8, !dbg !2570
  %tobool36 = icmp eq %union.tree_node* %call35, null, !dbg !2570
  br i1 %tobool36, label %if.end40, label %if.then37, !dbg !2571

if.then37:                                        ; preds = %land.lhs.true34
  %call38 = call fastcc %union.tree_node* @gimple_omp_parallel_child_fn(%union.gimple_statement_d* %call7) #8, !dbg !2572
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !2506, metadata !DIExpression()), !dbg !2573
  %call39 = call %struct.cgraph_node* @cgraph_node(%union.tree_node* %call38) #6, !dbg !2574
  call void @cgraph_mark_needed_node(%struct.cgraph_node* %call39) #6, !dbg !2575
  br label %if.end40, !dbg !2576

if.end40:                                         ; preds = %land.lhs.true34, %if.then37, %if.else
  %call41 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call7) #8, !dbg !2577
  %cmp42 = icmp eq i32 %call41, 27, !dbg !2578
  br i1 %cmp42, label %if.then44, label %if.end56, !dbg !2579

if.then44:                                        ; preds = %if.end40
  %call46 = call fastcc %union.tree_node* @gimple_omp_task_child_fn(%union.gimple_statement_d* %call7) #8, !dbg !2580
  call void @llvm.dbg.value(metadata %union.tree_node* %call46, metadata !2509, metadata !DIExpression()), !dbg !2581
  %tobool47 = icmp eq %union.tree_node* %call46, null, !dbg !2582
  br i1 %tobool47, label %if.end50, label %if.then48, !dbg !2584

if.then48:                                        ; preds = %if.then44
  %call49 = call %struct.cgraph_node* @cgraph_node(%union.tree_node* nonnull %call46) #6, !dbg !2585
  call void @cgraph_mark_needed_node(%struct.cgraph_node* %call49) #6, !dbg !2586
  br label %if.end50, !dbg !2586

if.end50:                                         ; preds = %if.then44, %if.then48
  %call51 = call fastcc %union.tree_node* @gimple_omp_task_copy_fn(%union.gimple_statement_d* %call7) #8, !dbg !2587
  call void @llvm.dbg.value(metadata %union.tree_node* %call51, metadata !2509, metadata !DIExpression()), !dbg !2581
  %tobool52 = icmp eq %union.tree_node* %call51, null, !dbg !2588
  br i1 %tobool52, label %if.end56, label %if.then53, !dbg !2590

if.then53:                                        ; preds = %if.end50
  %call54 = call %struct.cgraph_node* @cgraph_node(%union.tree_node* nonnull %call51) #6, !dbg !2591
  call void @cgraph_mark_needed_node(%struct.cgraph_node* %call54) #6, !dbg !2592
  br label %if.end56, !dbg !2592

if.end56:                                         ; preds = %if.end50, %if.then53, %if.end40
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #7, !dbg !2593
  br label %for.inc58

for.inc58:                                        ; preds = %for.end, %if.end56, %if.then26
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2475, metadata !DIExpression(DW_OP_deref)), !dbg !2518
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2594
  br label %for.cond4, !dbg !2595, !llvm.loop !2596

for.inc60:                                        ; preds = %for.cond4
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2527
  %cfg3.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2598
  %.pre5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3.phi.trans.insert, align 8, !dbg !2527
  br label %for.cond, !dbg !2527, !llvm.loop !2599

for.end62:                                        ; preds = %for.cond
  %.lcssa = phi %struct.function* [ %10, %for.cond ], !dbg !2527
  %local_decls = getelementptr inbounds %struct.function, %struct.function* %.lcssa, i64 0, i32 9, !dbg !2601
  br label %for.cond64, !dbg !2602

for.cond64:                                       ; preds = %for.inc99, %for.end62
  %step.0.in = phi %union.tree_node** [ %local_decls, %for.end62 ], [ %chain, %for.inc99 ]
  %step.0 = load %union.tree_node*, %union.tree_node** %step.0.in, align 8, !dbg !2603
  call void @llvm.dbg.value(metadata %union.tree_node* %step.0, metadata !2482, metadata !DIExpression()), !dbg !2518
  %tobool65 = icmp eq %union.tree_node* %step.0, null, !dbg !2604
  br i1 %tobool65, label %for.end100, label %for.body66, !dbg !2604

for.body66:                                       ; preds = %for.cond64
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %step.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2605
  %16 = load %union.tree_node*, %union.tree_node** %15, align 8, !dbg !2605
  call void @llvm.dbg.value(metadata %union.tree_node* %16, metadata !2512, metadata !DIExpression()), !dbg !2606
  %17 = getelementptr inbounds %union.tree_node, %union.tree_node* %16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2607
  %bf.load = load i64, i64* %17, align 8, !dbg !2607
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2609
  %cmp68 = icmp eq i64 %bf.cast1, 32, !dbg !2609
  br i1 %cmp68, label %land.lhs.true70, label %if.else83, !dbg !2610

land.lhs.true70:                                  ; preds = %for.body66
  %bf.cast743 = and i64 %bf.load, 67108864, !dbg !2611
  %tobool75 = icmp eq i64 %bf.cast743, 0, !dbg !2611
  br i1 %tobool75, label %if.else83, label %land.lhs.true76, !dbg !2612

land.lhs.true76:                                  ; preds = %land.lhs.true70
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2613
  %18 = bitcast i40* %decl_flag_1 to i64*, !dbg !2613
  %bf.load77 = load i64, i64* %18, align 8, !dbg !2613
  %bf.cast804 = and i64 %bf.load77, 33554432, !dbg !2613
  %tobool81 = icmp eq i64 %bf.cast804, 0, !dbg !2613
  br i1 %tobool81, label %if.then82, label %if.else83, !dbg !2614

if.then82:                                        ; preds = %land.lhs.true76
  call void @varpool_finalize_decl(%union.tree_node* %16) #6, !dbg !2615
  br label %for.inc99, !dbg !2615

if.else83:                                        ; preds = %land.lhs.true76, %land.lhs.true70, %for.body66
  br i1 %cmp68, label %land.lhs.true90, label %for.inc99, !dbg !2616

land.lhs.true90:                                  ; preds = %if.else83
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2618
  %19 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2618
  %tobool92 = icmp eq %union.tree_node* %19, null, !dbg !2618
  br i1 %tobool92, label %for.inc99, label %if.then93, !dbg !2619

if.then93:                                        ; preds = %land.lhs.true90
  %call96 = call %union.tree_node* @walk_tree_1(%union.tree_node** nonnull %initial, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @record_reference, i8* %6, %struct.pointer_set_t* %call1, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)* null) #6, !dbg !2620
  br label %for.inc99, !dbg !2620

for.inc99:                                        ; preds = %land.lhs.true90, %if.then82, %if.then93, %if.else83
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %step.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2621
  br label %for.cond64, !dbg !2622, !llvm.loop !2623

for.end100:                                       ; preds = %for.cond64
  call void @pointer_set_destroy(%struct.pointer_set_t* %call1) #6, !dbg !2625
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2626
  ret i32 0, !dbg !2627
}

; Function Attrs: nounwind uwtable
define dso_local void @record_references_in_initializer(%union.tree_node* %decl, i8 zeroext %only_vars) local_unnamed_addr #5 !dbg !2628 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2632, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8 %only_vars, metadata !2633, metadata !DIExpression()), !dbg !2635
  %call = tail call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !2636
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %call, metadata !2634, metadata !DIExpression()), !dbg !2635
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2637
  %tobool = icmp eq i8 %only_vars, 0, !dbg !2637
  %0 = bitcast %union.tree_node* %decl to i8*, !dbg !2637
  %1 = select i1 %tobool, i8* %0, i8* null, !dbg !2637
  %call1 = tail call %union.tree_node* @walk_tree_1(%union.tree_node** nonnull %initial, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @record_reference, i8* %1, %struct.pointer_set_t* %call, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)* null) #6, !dbg !2637
  tail call void @pointer_set_destroy(%struct.pointer_set_t* %call) #6, !dbg !2638
  ret void, !dbg !2639
}

declare dso_local %struct.pointer_set_t* @pointer_set_create() local_unnamed_addr #2

declare dso_local %union.tree_node* @walk_tree_1(%union.tree_node**, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @record_reference(%union.tree_node** %tp, i32* %walk_subtrees, i8* %data) #5 !dbg !2640 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %tp, metadata !2645, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i32* %walk_subtrees, metadata !2646, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8* %data, metadata !2647, metadata !DIExpression()), !dbg !2651
  %0 = load %union.tree_node*, %union.tree_node** %tp, align 8, !dbg !2652
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2648, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 undef, metadata !2650, metadata !DIExpression()), !dbg !2651
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2653
  %bf.load = load i64, i64* %1, align 8, !dbg !2653
  %2 = trunc i64 %bf.load to i16, !dbg !2653
  switch i16 %2, label %sw.default [
    i16 32, label %sw.bb
    i16 122, label %sw.bb15
    i16 121, label %sw.bb15
  ], !dbg !2654

sw.bb:                                            ; preds = %entry
  %bf.cast52 = and i64 %bf.load, 67108864, !dbg !2655
  %tobool = icmp eq i64 %bf.cast52, 0, !dbg !2655
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2658

lor.lhs.false:                                    ; preds = %sw.bb
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2659
  %3 = bitcast i40* %decl_flag_1 to i64*, !dbg !2659
  %bf.load6 = load i64, i64* %3, align 8, !dbg !2659
  %bf.cast93 = and i64 %bf.load6, 33554432, !dbg !2659
  %tobool10 = icmp eq i64 %bf.cast93, 0, !dbg !2659
  br i1 %tobool10, label %cleanup, label %if.then, !dbg !2660

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  %call = tail call %struct.varpool_node* @varpool_node(%union.tree_node* %0) #6, !dbg !2661
  tail call void @varpool_mark_needed_node(%struct.varpool_node* %call) #6, !dbg !2663
  %4 = load %union.tree_node* (%union.tree_node**, i32*)*, %union.tree_node* (%union.tree_node**, i32*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 31, i32 0), align 8, !dbg !2664
  %tobool11 = icmp eq %union.tree_node* (%union.tree_node**, i32*)* %4, null, !dbg !2666
  br i1 %tobool11, label %cleanup, label %if.then12, !dbg !2667

if.then12:                                        ; preds = %if.then
  %call13 = tail call %union.tree_node* %4(%union.tree_node** %tp, i32* %walk_subtrees) #6, !dbg !2668
  br label %cleanup, !dbg !2669

sw.bb15:                                          ; preds = %entry, %entry
  %cmp = icmp ne i8* %data, null, !dbg !2670
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !2650, metadata !DIExpression()), !dbg !2651
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2671
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8, !dbg !2671
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !2649, metadata !DIExpression()), !dbg !2651
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2672
  %bf.load17 = load i64, i64* %7, align 8, !dbg !2672
  %bf.cast191 = and i64 %bf.load17, 65535, !dbg !2674
  %cmp20 = icmp eq i64 %bf.cast191, 29, !dbg !2674
  %or.cond = and i1 %cmp20, %cmp, !dbg !2675
  br i1 %or.cond, label %if.then24, label %cleanup, !dbg !2675

if.then24:                                        ; preds = %sw.bb15
  %call25 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %6) #6, !dbg !2676
  tail call void @cgraph_mark_address_taken_node(%struct.cgraph_node* %call25) #6, !dbg !2677
  br label %cleanup, !dbg !2677

sw.default:                                       ; preds = %entry
  %bf.cast30 = and i64 %bf.load, 65535, !dbg !2678
  %arrayidx31 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast30, !dbg !2678
  %8 = load i32, i32* %arrayidx31, align 4, !dbg !2678
  %cmp32 = icmp eq i32 %8, 2, !dbg !2678
  br i1 %cmp32, label %if.then43, label %lor.lhs.false34, !dbg !2678

lor.lhs.false34:                                  ; preds = %sw.default
  %cmp41 = icmp eq i32 %8, 3, !dbg !2678
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !2680

if.then43:                                        ; preds = %lor.lhs.false34, %sw.default
  store i32 0, i32* %walk_subtrees, align 4, !dbg !2681
  br label %cleanup, !dbg !2683

if.end44:                                         ; preds = %lor.lhs.false34
  %bf.cast484 = and i64 %bf.load, 65532, !dbg !2684
  %cmp49 = icmp ugt i64 %bf.cast484, 187, !dbg !2684
  br i1 %cmp49, label %if.then51, label %cleanup, !dbg !2686

if.then51:                                        ; preds = %if.end44
  %9 = load %union.tree_node* (%union.tree_node**, i32*)*, %union.tree_node* (%union.tree_node**, i32*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 31, i32 0), align 8, !dbg !2687
  %call52 = tail call %union.tree_node* %9(%union.tree_node** %tp, i32* %walk_subtrees) #6, !dbg !2688
  br label %cleanup, !dbg !2689

cleanup:                                          ; preds = %if.then, %lor.lhs.false, %if.then43, %if.then24, %sw.bb15, %if.end44, %if.then51, %if.then12
  %retval.0 = phi %union.tree_node* [ %call52, %if.then51 ], [ %call13, %if.then12 ], [ null, %if.end44 ], [ null, %sw.bb15 ], [ null, %if.then24 ], [ null, %lor.lhs.false ], [ null, %if.then ], [ null, %if.then43 ], !dbg !2651
  ret %union.tree_node* %retval.0, !dbg !2690
}

declare dso_local void @pointer_set_destroy(%struct.pointer_set_t*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rebuild_cgraph_edges() #5 !dbg !2691 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2703
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %0) #6, !dbg !2704
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !2694, metadata !DIExpression()), !dbg !2705
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2706
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2706
  tail call void @cgraph_node_remove_callees(%struct.cgraph_node* %call) #6, !dbg !2707
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2708
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2708
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2708
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2708
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2708
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 8, !dbg !2709
  %5 = load i64, i64* %count, align 8, !dbg !2709
  %count1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 23, !dbg !2710
  store i64 %5, i64* %count1, align 8, !dbg !2711
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2712
  %x_entry_block_ptr4 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !2712
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr4, align 8, !dbg !2712
  %8 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2713
  br label %for.cond, !dbg !2712

for.cond:                                         ; preds = %for.inc19, %entry
  %9 = phi %struct.control_flow_graph* [ %6, %entry ], [ %.pre1, %for.inc19 ], !dbg !2714
  %.pn = phi %struct.basic_block_def* [ %7, %entry ], [ %bb.0, %for.inc19 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2715
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2715
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2693, metadata !DIExpression()), !dbg !2705
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 1, !dbg !2714
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2714
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %10, !dbg !2714
  br i1 %cmp, label %for.end21, label %for.body, !dbg !2712

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7, !dbg !2716
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #8, !dbg !2716
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %8, i64 24, i1 false), !dbg !2716
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !2716
  %count16 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 8, !dbg !2717
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 10, !dbg !2717
  br label %for.cond7, !dbg !2719

for.cond7:                                        ; preds = %for.inc, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2695, metadata !DIExpression(DW_OP_deref)), !dbg !2705
  %call8 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2720
  %tobool = icmp eq i8 %call8, 0, !dbg !2721
  br i1 %tobool, label %for.body9, label %for.inc19, !dbg !2722

for.body9:                                        ; preds = %for.cond7
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2695, metadata !DIExpression(DW_OP_deref)), !dbg !2705
  %call10 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2723
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call10, metadata !2696, metadata !DIExpression()), !dbg !2724
  %call11 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call10) #8, !dbg !2725
  %tobool12 = icmp eq i8 %call11, 0, !dbg !2725
  br i1 %tobool12, label %for.inc, label %land.lhs.true, !dbg !2726

land.lhs.true:                                    ; preds = %for.body9
  %call13 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call10) #8, !dbg !2727
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !2702, metadata !DIExpression()), !dbg !2724
  %tobool14 = icmp eq %union.tree_node* %call13, null, !dbg !2728
  br i1 %tobool14, label %for.inc, label %if.then, !dbg !2729

if.then:                                          ; preds = %land.lhs.true
  %call15 = call %struct.cgraph_node* @cgraph_node(%union.tree_node* nonnull %call13) #6, !dbg !2730
  %11 = load i64, i64* %count16, align 8, !dbg !2731
  %12 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2732
  %call17 = call i32 @compute_call_stmt_bb_frequency(%union.tree_node* %12, %struct.basic_block_def* %bb.0) #8, !dbg !2733
  %13 = load i32, i32* %loop_depth, align 4, !dbg !2734
  %call18 = call %struct.cgraph_edge* @cgraph_create_edge(%struct.cgraph_node* %call, %struct.cgraph_node* %call15, %union.gimple_statement_d* %call10, i64 %11, i32 %call17, i32 %13) #6, !dbg !2735
  br label %for.inc, !dbg !2735

for.inc:                                          ; preds = %land.lhs.true, %for.body9, %if.then
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2695, metadata !DIExpression(DW_OP_deref)), !dbg !2705
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2736
  br label %for.cond7, !dbg !2737, !llvm.loop !2738

for.inc19:                                        ; preds = %for.cond7
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2714
  %cfg6.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2740
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6.phi.trans.insert, align 8, !dbg !2714
  br label %for.cond, !dbg !2714, !llvm.loop !2741

for.end21:                                        ; preds = %for.cond
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 19, i32 2, !dbg !2743
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !2743
  %tobool22 = icmp eq %struct.cgraph_node* %14, null, !dbg !2743
  br i1 %tobool22, label %cond.end, label %cond.true, !dbg !2743

cond.true:                                        ; preds = %for.end21
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 265, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2743
  br label %cond.end, !dbg !2743

cond.end:                                         ; preds = %for.end21, %cond.true
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2744
  ret i32 0, !dbg !2745
}

declare dso_local %struct.cgraph_node* @cgraph_node(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @cgraph_node_remove_callees(%struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2746 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2750, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2751, metadata !DIExpression()), !dbg !2754
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !2755
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2752, metadata !DIExpression()), !dbg !2753
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !2756
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2757
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2758
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2759
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2760
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2761
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2762
  ret void, !dbg !2763
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2764 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2768, metadata !DIExpression()), !dbg !2769
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2770
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2770
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2771
  %conv1 = zext i1 %cmp to i8, !dbg !2772
  ret i8 %conv1, !dbg !2773
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2774 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2778, metadata !DIExpression()), !dbg !2779
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2780
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2780
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2781
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2781
  ret %union.gimple_statement_d* %1, !dbg !2782
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2783 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2788, metadata !DIExpression()), !dbg !2789
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !2790
  %cmp = icmp eq i32 %call, 8, !dbg !2791
  %conv1 = zext i1 %cmp to i8, !dbg !2790
  ret i8 %conv1, !dbg !2792
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2793 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2797, metadata !DIExpression()), !dbg !2799
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #8, !dbg !2800
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2798, metadata !DIExpression()), !dbg !2799
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2801
  %bf.load = load i64, i64* %0, align 8, !dbg !2801
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2803
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !2803
  br i1 %cmp, label %if.then, label %cleanup, !dbg !2804

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2805
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2805
  br label %cleanup, !dbg !2806

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !2799
  ret %union.tree_node* %retval.0, !dbg !2807
}

declare dso_local %struct.cgraph_edge* @cgraph_create_edge(%struct.cgraph_node*, %struct.cgraph_node*, %union.gimple_statement_d*, i64, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2808 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2813, metadata !DIExpression()), !dbg !2814
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2815
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2815
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2816
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2816
  %2 = load i64, i64* %1, align 8, !dbg !2816
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2817
  store i64 %2, i64* %3, align 8, !dbg !2817
  ret void, !dbg !2818
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @remove_cgraph_callee_edges() #5 !dbg !2819 {
entry:
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2820
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %0) #6, !dbg !2821
  tail call void @cgraph_node_remove_callees(%struct.cgraph_node* %call) #6, !dbg !2822
  ret i32 0, !dbg !2823
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2824 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2828, metadata !DIExpression()), !dbg !2830
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !2831
  call void @llvm.dbg.value(metadata i32 %call, metadata !2829, metadata !DIExpression()), !dbg !2830
  %sub = add i32 %call, -3, !dbg !2832
  ret i32 %sub, !dbg !2833
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_call_arg_ptr(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !2834 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2838, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32 %index, metadata !2839, metadata !DIExpression()), !dbg !2840
  %add = add i32 %index, 3, !dbg !2841
  %call = tail call fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 %add) #8, !dbg !2842
  ret %union.tree_node** %call, !dbg !2843
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2844 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2846, metadata !DIExpression()), !dbg !2847
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !2848
  ret %union.tree_node* %call, !dbg !2849
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_call_lhs_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2850 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2854, metadata !DIExpression()), !dbg !2855
  %call = tail call fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !2856
  ret %union.tree_node** %call, !dbg !2857
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local %union.tree_node* @walk_gimple_op(%union.gimple_statement_d*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, %struct.walk_stmt_info*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2858 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2862, metadata !DIExpression()), !dbg !2863
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2864
  %bf.load = load i32, i32* %0, align 8, !dbg !2864
  %bf.clear = and i32 %bf.load, 255, !dbg !2864
  ret i32 %bf.clear, !dbg !2865
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_omp_parallel_child_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2866 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2868, metadata !DIExpression()), !dbg !2869
  %child_fn = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, !dbg !2870
  %0 = bitcast [1 x %struct.phi_arg_d]* %child_fn to %union.tree_node**, !dbg !2870
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2870
  ret %union.tree_node* %1, !dbg !2871
}

declare dso_local void @cgraph_mark_needed_node(%struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_omp_task_child_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2872 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2874, metadata !DIExpression()), !dbg !2875
  %child_fn = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, !dbg !2876
  %0 = bitcast [1 x %struct.phi_arg_d]* %child_fn to %union.tree_node**, !dbg !2876
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2876
  ret %union.tree_node* %1, !dbg !2877
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_omp_task_copy_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2878 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2880, metadata !DIExpression()), !dbg !2881
  %copy_fn = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 2, !dbg !2882
  %0 = bitcast %union.anon* %copy_fn to %union.tree_node**, !dbg !2882
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2882
  ret %union.tree_node* %1, !dbg !2883
}

declare dso_local void @varpool_finalize_decl(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2884 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2886, metadata !DIExpression()), !dbg !2887
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !2888
  %0 = load i32, i32* %num_ops, align 4, !dbg !2888
  ret i32 %0, !dbg !2889
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !2890 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2892, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i32 %i, metadata !2893, metadata !DIExpression()), !dbg !2894
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !2895
  %tobool = icmp eq i8 %call, 0, !dbg !2895
  br i1 %tobool, label %return, label %if.then, !dbg !2897

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !2898
  %idx.ext = zext i32 %i to i64, !dbg !2900
  %add.ptr = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idx.ext, !dbg !2900
  br label %return, !dbg !2901

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node** [ %add.ptr, %if.then ], [ null, %entry ], !dbg !2902
  ret %union.tree_node** %retval.0, !dbg !2903
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2904 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2906, metadata !DIExpression()), !dbg !2907
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !2908
  %cmp = icmp eq i32 %call, 0, !dbg !2909
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !2910

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !2911
  %cmp2 = icmp ult i32 %call1, 10, !dbg !2912
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2913
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2914 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2918, metadata !DIExpression()), !dbg !2920
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !2921
  %idxprom = zext i32 %call to i64, !dbg !2922
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !2922
  %0 = load i64, i64* %arrayidx, align 8, !dbg !2922
  call void @llvm.dbg.value(metadata i64 %0, metadata !2919, metadata !DIExpression()), !dbg !2920
  %cmp = icmp eq i64 %0, 0, !dbg !2923
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2923

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2923
  br label %cond.end, !dbg !2923

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !2924
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !2925
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !2926
  ret %union.tree_node** %2, !dbg !2927
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2928 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2932, metadata !DIExpression()), !dbg !2933
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !2934
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !2935
  ret i32 %call1, !dbg !2936
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !2937 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !2941, metadata !DIExpression()), !dbg !2942
  %idxprom = zext i32 %code to i64, !dbg !2943
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !2943
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2943
  ret i32 %0, !dbg !2944
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !2945 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2949, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i32 %i, metadata !2950, metadata !DIExpression()), !dbg !2951
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !2952
  %tobool = icmp eq i8 %call, 0, !dbg !2952
  br i1 %tobool, label %return, label %if.then, !dbg !2954

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !2955
  %idxprom = zext i32 %i to i64, !dbg !2955
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !2955
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2955
  br label %return, !dbg !2957

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !2958
  ret %union.tree_node* %retval.0, !dbg !2959
}

declare dso_local void @varpool_mark_needed_node(%struct.varpool_node*) local_unnamed_addr #2

declare dso_local %struct.varpool_node* @varpool_node(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @cgraph_mark_address_taken_node(%struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2960 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2967, metadata !DIExpression()), !dbg !2968
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !2969
  %0 = load i32, i32* %flags, align 8, !dbg !2969
  %and = and i32 %0, 512, !dbg !2970
  %tobool = icmp eq i32 %and, 0, !dbg !2970
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !2971

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !2972
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !2972
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !2973
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !2974

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !2975
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !2975
  br label %cond.end, !dbg !2974

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !2974
  ret %struct.gimple_seq_d* %cond, !dbg !2976
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !2977 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !2984, metadata !DIExpression()), !dbg !2985
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !2986
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2986

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !2987
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !2987
  br label %cond.end, !dbg !2986

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !2986
  ret %struct.gimple_seq_node_d* %cond, !dbg !2988
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2989 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2991, metadata !DIExpression()), !dbg !2992
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !2993
  ret %union.tree_node* %call, !dbg !2994
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
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1737, !1738, !1739}
!llvm.ident = !{!1740}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_build_cgraph_edges", scope: !2, file: !3, line: 205, type: !1709, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !520, globals: !1706, nameTableKind: None)
!3 = !DIFile(filename: "cgraphbuild.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !201, !207, !212, !217, !235, !242, !249, !272, !279, !455, !482}
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
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !250, line: 309, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!252 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!253 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!254 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!255 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!256 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!257 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!258 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!259 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!260 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!261 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!262 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!263 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!264 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!265 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!266 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!267 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!268 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!269 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!270 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!271 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !273, line: 104, baseType: !7, size: 32, elements: !274)
!273 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!274 = !{!275, !276, !277, !278}
!275 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!276 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!277 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!278 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !280, line: 74, baseType: !7, size: 32, elements: !281)
!280 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!282 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!283 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!284 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!285 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!286 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!287 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!288 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!289 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!290 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!291 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!292 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!293 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!294 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!295 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!296 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!297 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!298 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!299 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!300 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!301 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!302 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!303 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!304 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!305 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!306 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!307 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!308 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!309 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!310 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!311 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!312 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!313 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!314 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!315 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!316 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!317 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!318 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!319 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!320 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!321 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!322 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!323 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!324 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!325 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!326 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!327 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!328 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!329 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!330 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!331 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!332 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!333 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!334 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!335 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!336 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!337 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!338 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!339 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!340 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!341 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!342 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!343 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!344 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!345 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!346 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!347 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!348 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!349 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!350 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!351 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!352 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!353 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!354 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!355 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!356 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!357 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!358 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!359 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!360 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!361 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!362 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!363 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!364 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!365 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!366 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!367 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!368 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!369 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!370 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!371 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!372 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!373 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!374 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!375 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!376 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!377 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!378 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!379 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!380 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!381 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!382 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!383 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!384 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!385 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!386 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!387 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!388 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!389 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!390 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!391 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!392 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!393 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!394 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!395 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!396 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!397 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!398 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!399 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!400 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!454 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!455 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !456, line: 727, baseType: !7, size: 32, elements: !457)
!456 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481}
!458 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!459 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!460 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!461 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!462 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!463 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!464 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!465 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!466 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!467 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!468 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!469 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!470 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!471 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!472 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!473 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!474 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!475 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!476 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!477 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!478 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!479 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!480 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!481 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!482 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !456, line: 51, baseType: !7, size: 32, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519}
!484 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!485 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!486 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!487 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!488 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!489 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!490 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!491 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!492 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!493 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!494 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!495 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!496 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!497 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!498 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!499 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!500 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!501 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!502 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!503 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!504 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!505 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!506 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!507 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!508 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!509 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!510 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!511 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!512 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!513 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!514 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!515 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!516 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!517 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!518 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!519 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!520 = !{!521, !522, !523, !524, !527, !528, !5, !530, !1704, !1060, !525, !601, !7}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!523 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !456, line: 737, size: 768, elements: !532)
!532 = !{!533, !1551, !1561, !1567, !1572, !1577, !1584, !1590, !1596, !1601, !1615, !1620, !1626, !1631, !1641, !1646, !1662, !1669, !1676, !1682, !1687, !1693, !1699}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !531, file: !456, line: 738, baseType: !534, size: 256)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !456, line: 271, size: 256, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !551, !552, !1550}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !534, file: !456, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !534, file: !456, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !534, file: !456, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !534, file: !456, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !534, file: !456, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !534, file: !456, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !534, file: !456, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !534, file: !456, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !534, file: !456, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !534, file: !456, line: 312, baseType: !7, size: 32, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !534, file: !456, line: 316, baseType: !547, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !548, line: 58, baseType: !549)
!548 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !550, line: 44, baseType: !7)
!550 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!551 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !534, file: !456, line: 319, baseType: !7, size: 32, offset: 96)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !534, file: !456, line: 323, baseType: !553, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !202, line: 217, size: 832, elements: !555)
!555 = !{!556, !1515, !1516, !1517, !1520, !1524, !1525, !1526, !1544, !1545, !1546, !1547, !1548, !1549}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !554, file: !202, line: 219, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !202, line: 151, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !202, line: 151, size: 128, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !559, file: !202, line: 151, baseType: !562, size: 128)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !202, line: 150, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !202, line: 150, size: 128, elements: !564)
!564 = !{!565, !566, !567}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !563, file: !202, line: 150, baseType: !7, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !563, file: !202, line: 150, baseType: !7, size: 32, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !563, file: !202, line: 150, baseType: !568, size: 64, offset: 64)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 64, elements: !683)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !570, line: 108, baseType: !571)
!570 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !202, line: 122, size: 512, elements: !573)
!573 = !{!574, !575, !576, !599, !600, !1509, !1510, !1511, !1512, !1513}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !572, file: !202, line: 124, baseType: !553, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !572, file: !202, line: 125, baseType: !553, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !572, file: !202, line: 131, baseType: !577, size: 64, offset: 128)
!577 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !202, line: 128, size: 64, elements: !578)
!578 = !{!579, !595}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !577, file: !202, line: 129, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !570, line: 66, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !456, line: 143, size: 192, elements: !583)
!583 = !{!584, !593, !594}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !582, file: !456, line: 145, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !570, line: 69, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !456, line: 136, size: 192, elements: !588)
!588 = !{!589, !591, !592}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !587, file: !456, line: 137, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !570, line: 58, baseType: !530)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !587, file: !456, line: 138, baseType: !586, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !587, file: !456, line: 139, baseType: !586, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !582, file: !456, line: 146, baseType: !585, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !582, file: !456, line: 152, baseType: !580, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !577, file: !202, line: 130, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !570, line: 50, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !570, line: 49, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !572, file: !202, line: 134, baseType: !527, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !572, file: !202, line: 137, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !570, line: 56, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !6, line: 3371, size: 1792, elements: !604)
!604 = !{!605, !638, !644, !657, !664, !671, !676, !685, !691, !704, !712, !750, !755, !783, !800, !801, !806, !815, !821, !826, !830, !834, !1158, !1207, !1213, !1219, !1226, !1239, !1253, !1270, !1282, !1304, !1319, !1491}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !603, file: !6, line: 3372, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !6, line: 360, size: 64, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !606, file: !6, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !606, file: !6, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !606, file: !6, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !606, file: !6, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !606, file: !6, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !606, file: !6, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !606, file: !6, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !606, file: !6, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !606, file: !6, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !606, file: !6, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !606, file: !6, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !606, file: !6, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !606, file: !6, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !606, file: !6, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !606, file: !6, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !606, file: !6, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !606, file: !6, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !606, file: !6, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !606, file: !6, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !606, file: !6, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !606, file: !6, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !606, file: !6, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !606, file: !6, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !606, file: !6, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !606, file: !6, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !606, file: !6, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !606, file: !6, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !606, file: !6, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !606, file: !6, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !606, file: !6, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !603, file: !6, line: 3373, baseType: !639, size: 192)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !6, line: 402, size: 192, elements: !640)
!640 = !{!641, !642, !643}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !639, file: !6, line: 403, baseType: !606, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !639, file: !6, line: 404, baseType: !601, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !6, line: 405, baseType: !601, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !603, file: !6, line: 3374, baseType: !645, size: 320)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !6, line: 1384, size: 320, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !645, file: !6, line: 1385, baseType: !639, size: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !645, file: !6, line: 1386, baseType: !649, size: 128, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !650, line: 58, baseType: !651)
!650 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !650, line: 54, size: 128, elements: !652)
!652 = !{!653, !655}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !651, file: !650, line: 56, baseType: !654, size: 64)
!654 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !651, file: !650, line: 57, baseType: !656, size: 64, offset: 64)
!656 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !603, file: !6, line: 3375, baseType: !658, size: 256)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !6, line: 1397, size: 256, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !658, file: !6, line: 1398, baseType: !639, size: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !658, file: !6, line: 1399, baseType: !662, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !6, line: 1392, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !603, file: !6, line: 3376, baseType: !665, size: 256)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !6, line: 1408, size: 256, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !665, file: !6, line: 1409, baseType: !639, size: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !665, file: !6, line: 1410, baseType: !669, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !6, line: 1403, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !603, file: !6, line: 3377, baseType: !672, size: 256)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !6, line: 1437, size: 256, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !672, file: !6, line: 1438, baseType: !639, size: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !672, file: !6, line: 1439, baseType: !601, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !603, file: !6, line: 3378, baseType: !677, size: 256)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !6, line: 1418, size: 256, elements: !678)
!678 = !{!679, !680, !681}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !677, file: !6, line: 1419, baseType: !639, size: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !677, file: !6, line: 1420, baseType: !523, size: 32, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !677, file: !6, line: 1421, baseType: !682, size: 8, offset: 224)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 8, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 1)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !603, file: !6, line: 3379, baseType: !686, size: 320)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !6, line: 1428, size: 320, elements: !687)
!687 = !{!688, !689, !690}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !686, file: !6, line: 1429, baseType: !639, size: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !686, file: !6, line: 1430, baseType: !601, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !686, file: !6, line: 1431, baseType: !601, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !603, file: !6, line: 3380, baseType: !692, size: 320)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !6, line: 1460, size: 320, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !692, file: !6, line: 1461, baseType: !639, size: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !692, file: !6, line: 1462, baseType: !696, size: 128, offset: 192)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !697, line: 31, size: 128, elements: !698)
!697 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!698 = !{!699, !702, !703}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !696, file: !697, line: 32, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !696, file: !697, line: 33, baseType: !7, size: 32, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !696, file: !697, line: 34, baseType: !7, size: 32, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !603, file: !6, line: 3381, baseType: !705, size: 384)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !6, line: 2507, size: 384, elements: !706)
!706 = !{!707, !708, !709, !710, !711}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !705, file: !6, line: 2508, baseType: !639, size: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !705, file: !6, line: 2509, baseType: !547, size: 32, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !705, file: !6, line: 2510, baseType: !7, size: 32, offset: 224)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !705, file: !6, line: 2511, baseType: !601, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !705, file: !6, line: 2512, baseType: !601, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !603, file: !6, line: 3382, baseType: !713, size: 896)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !6, line: 2652, size: 896, elements: !714)
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !713, file: !6, line: 2653, baseType: !705, size: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !713, file: !6, line: 2654, baseType: !601, size: 64, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !713, file: !6, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !713, file: !6, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !713, file: !6, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !713, file: !6, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !713, file: !6, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !713, file: !6, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !713, file: !6, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !713, file: !6, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !713, file: !6, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !713, file: !6, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !713, file: !6, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !713, file: !6, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !713, file: !6, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !713, file: !6, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !713, file: !6, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !713, file: !6, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !713, file: !6, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !713, file: !6, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !713, file: !6, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !713, file: !6, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !713, file: !6, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !713, file: !6, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !713, file: !6, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !713, file: !6, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !713, file: !6, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !713, file: !6, line: 2703, baseType: !7, size: 32, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !713, file: !6, line: 2705, baseType: !601, size: 64, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !713, file: !6, line: 2706, baseType: !601, size: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !713, file: !6, line: 2707, baseType: !601, size: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !713, file: !6, line: 2708, baseType: !601, size: 64, offset: 768)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !713, file: !6, line: 2711, baseType: !748, size: 64, offset: 832)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !6, line: 2711, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !603, file: !6, line: 3383, baseType: !751, size: 960)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !6, line: 2756, size: 960, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !751, file: !6, line: 2757, baseType: !713, size: 896)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !751, file: !6, line: 2758, baseType: !596, size: 64, offset: 896)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !603, file: !6, line: 3384, baseType: !756, size: 1472)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !6, line: 3114, size: 1472, elements: !757)
!757 = !{!758, !779, !780, !781, !782}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !756, file: !6, line: 3115, baseType: !759, size: 1216)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !6, line: 2984, size: 1216, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !759, file: !6, line: 2985, baseType: !751, size: 960)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !759, file: !6, line: 2986, baseType: !601, size: 64, offset: 960)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !759, file: !6, line: 2987, baseType: !601, size: 64, offset: 1024)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !759, file: !6, line: 2988, baseType: !601, size: 64, offset: 1088)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !759, file: !6, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !759, file: !6, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !759, file: !6, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !759, file: !6, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !759, file: !6, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !759, file: !6, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !759, file: !6, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !759, file: !6, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !759, file: !6, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !759, file: !6, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !759, file: !6, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !759, file: !6, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !759, file: !6, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !759, file: !6, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !756, file: !6, line: 3117, baseType: !601, size: 64, offset: 1216)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !756, file: !6, line: 3119, baseType: !601, size: 64, offset: 1280)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !756, file: !6, line: 3121, baseType: !601, size: 64, offset: 1344)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !756, file: !6, line: 3123, baseType: !601, size: 64, offset: 1408)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !603, file: !6, line: 3385, baseType: !784, size: 1088)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !6, line: 2874, size: 1088, elements: !785)
!785 = !{!786, !787, !788}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !784, file: !6, line: 2875, baseType: !751, size: 960)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !784, file: !6, line: 2876, baseType: !596, size: 64, offset: 960)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !784, file: !6, line: 2877, baseType: !789, size: 64, offset: 1024)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !791, line: 172, size: 128, elements: !792)
!791 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!792 = !{!793, !794, !795, !796, !797, !798, !799}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !790, file: !791, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !790, file: !791, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !790, file: !791, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !790, file: !791, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !790, file: !791, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !790, file: !791, line: 195, baseType: !7, size: 32, offset: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !790, file: !791, line: 199, baseType: !601, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !603, file: !6, line: 3386, baseType: !759, size: 1216)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !603, file: !6, line: 3387, baseType: !802, size: 1280)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !6, line: 3093, size: 1280, elements: !803)
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !802, file: !6, line: 3094, baseType: !759, size: 1216)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !802, file: !6, line: 3095, baseType: !789, size: 64, offset: 1216)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !603, file: !6, line: 3388, baseType: !807, size: 1216)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !6, line: 2824, size: 1216, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !814}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !807, file: !6, line: 2825, baseType: !713, size: 896)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !807, file: !6, line: 2827, baseType: !601, size: 64, offset: 896)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !807, file: !6, line: 2828, baseType: !601, size: 64, offset: 960)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !807, file: !6, line: 2829, baseType: !601, size: 64, offset: 1024)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !807, file: !6, line: 2830, baseType: !601, size: 64, offset: 1088)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !807, file: !6, line: 2831, baseType: !601, size: 64, offset: 1152)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !603, file: !6, line: 3389, baseType: !816, size: 1024)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !6, line: 2850, size: 1024, elements: !817)
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !816, file: !6, line: 2851, baseType: !751, size: 960)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !816, file: !6, line: 2852, baseType: !523, size: 32, offset: 960)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !816, file: !6, line: 2853, baseType: !523, size: 32, offset: 992)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !603, file: !6, line: 3390, baseType: !822, size: 1024)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !6, line: 2857, size: 1024, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !822, file: !6, line: 2858, baseType: !751, size: 960)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !822, file: !6, line: 2859, baseType: !789, size: 64, offset: 960)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !603, file: !6, line: 3391, baseType: !827, size: 960)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !6, line: 2862, size: 960, elements: !828)
!828 = !{!829}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !827, file: !6, line: 2863, baseType: !751, size: 960)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !603, file: !6, line: 3392, baseType: !831, size: 1472)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !6, line: 3304, size: 1472, elements: !832)
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !831, file: !6, line: 3305, baseType: !756, size: 1472)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !603, file: !6, line: 3393, baseType: !835, size: 1792)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !6, line: 3248, size: 1792, elements: !836)
!836 = !{!837, !838, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !835, file: !6, line: 3249, baseType: !756, size: 1472)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !835, file: !6, line: 3251, baseType: !839, size: 64, offset: 1472)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !841, line: 463, size: 1152, elements: !842)
!841 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!842 = !{!843, !846, !879, !880, !1078, !1081, !1082, !1083, !1084, !1085, !1086, !1110, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !840, file: !841, line: 464, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !841, line: 464, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !840, file: !841, line: 467, baseType: !847, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !202, line: 374, size: 640, elements: !849)
!849 = !{!850, !852, !853, !866, !867, !868, !869, !870, !871, !875, !877, !878}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !848, file: !202, line: 377, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !570, line: 111, baseType: !553)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !848, file: !202, line: 378, baseType: !851, size: 64, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !848, file: !202, line: 381, baseType: !854, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !202, line: 282, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !202, line: 282, size: 128, elements: !857)
!857 = !{!858}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !856, file: !202, line: 282, baseType: !859, size: 128)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !202, line: 281, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !202, line: 281, size: 128, elements: !861)
!861 = !{!862, !863, !864}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !860, file: !202, line: 281, baseType: !7, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !860, file: !202, line: 281, baseType: !7, size: 32, offset: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !860, file: !202, line: 281, baseType: !865, size: 64, offset: 64)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !851, size: 64, elements: !683)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !848, file: !202, line: 384, baseType: !523, size: 32, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !848, file: !202, line: 387, baseType: !523, size: 32, offset: 224)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !848, file: !202, line: 390, baseType: !523, size: 32, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !848, file: !202, line: 394, baseType: !854, size: 64, offset: 320)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !848, file: !202, line: 396, baseType: !201, size: 32, offset: 384)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !848, file: !202, line: 399, baseType: !872, size: 64, offset: 416)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !873)
!873 = !{!874}
!874 = !DISubrange(count: 2)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !848, file: !202, line: 402, baseType: !876, size: 64, offset: 480)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !873)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !848, file: !202, line: 406, baseType: !523, size: 32, offset: 544)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !848, file: !202, line: 409, baseType: !523, size: 32, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !840, file: !841, line: 470, baseType: !581, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !840, file: !841, line: 473, baseType: !881, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !791, line: 39, size: 1152, elements: !883)
!883 = !{!884, !936, !949, !962, !963, !1032, !1033, !1037, !1038, !1039, !1040, !1041}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !882, file: !791, line: 41, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !886, line: 144, baseType: !887)
!886 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !886, line: 100, size: 896, elements: !889)
!889 = !{!890, !898, !903, !908, !910, !913, !914, !915, !916, !917, !922, !924, !925, !930, !935}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !888, file: !886, line: 102, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !886, line: 52, baseType: !892)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !886, line: 47, baseType: !7)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !888, file: !886, line: 105, baseType: !899, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !886, line: 59, baseType: !900)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!523, !896, !896}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !888, file: !886, line: 108, baseType: !904, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !886, line: 63, baseType: !905)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !527}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !888, file: !886, line: 111, baseType: !909, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !888, file: !886, line: 114, baseType: !911, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !912, line: 46, baseType: !654)
!912 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!913 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !888, file: !886, line: 117, baseType: !911, size: 64, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !888, file: !886, line: 120, baseType: !911, size: 64, offset: 384)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !888, file: !886, line: 124, baseType: !7, size: 32, offset: 448)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !888, file: !886, line: 128, baseType: !7, size: 32, offset: 480)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !888, file: !886, line: 131, baseType: !918, size: 64, offset: 512)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !886, line: 75, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!527, !911, !911}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !888, file: !886, line: 132, baseType: !923, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !886, line: 78, baseType: !905)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !888, file: !886, line: 135, baseType: !527, size: 64, offset: 640)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !888, file: !886, line: 136, baseType: !926, size: 64, offset: 704)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !886, line: 82, baseType: !927)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!527, !527, !911, !911}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !888, file: !886, line: 137, baseType: !931, size: 64, offset: 768)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !886, line: 83, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !527, !527}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !888, file: !886, line: 141, baseType: !7, size: 32, offset: 832)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !882, file: !791, line: 48, baseType: !937, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !456, line: 35, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !456, line: 35, size: 128, elements: !940)
!940 = !{!941}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !939, file: !456, line: 35, baseType: !942, size: 128)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !456, line: 33, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !456, line: 33, size: 128, elements: !944)
!944 = !{!945, !946, !947}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !943, file: !456, line: 33, baseType: !7, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !943, file: !456, line: 33, baseType: !7, size: 32, offset: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !943, file: !456, line: 33, baseType: !948, size: 64, offset: 64)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 64, elements: !683)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !882, file: !791, line: 51, baseType: !950, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !6, line: 183, baseType: !952)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !6, line: 183, size: 128, elements: !953)
!953 = !{!954}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !952, file: !6, line: 183, baseType: !955, size: 128)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !6, line: 182, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !6, line: 182, size: 128, elements: !957)
!957 = !{!958, !959, !960}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !956, file: !6, line: 182, baseType: !7, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !956, file: !6, line: 182, baseType: !7, size: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !956, file: !6, line: 182, baseType: !961, size: 64, offset: 64)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 64, elements: !683)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !882, file: !791, line: 54, baseType: !601, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !882, file: !791, line: 57, baseType: !964, size: 128, offset: 256)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !965, line: 31, size: 128, elements: !966)
!965 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!966 = !{!967, !968, !969, !970, !971, !972, !973}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !964, file: !965, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !964, file: !965, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !964, file: !965, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !964, file: !965, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !964, file: !965, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !964, file: !965, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !964, file: !965, line: 56, baseType: !974, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !570, line: 47, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !977, line: 75, size: 256, elements: !978)
!977 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!978 = !{!979, !991, !992, !993}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !976, file: !977, line: 76, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !977, line: 68, baseType: !982)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !977, line: 63, size: 320, elements: !983)
!983 = !{!984, !986, !987, !988}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !982, file: !977, line: 64, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !982, file: !977, line: 65, baseType: !985, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !982, file: !977, line: 66, baseType: !7, size: 32, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !982, file: !977, line: 67, baseType: !989, size: 128, offset: 192)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 128, elements: !873)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !977, line: 29, baseType: !654)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !976, file: !977, line: 77, baseType: !980, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !976, file: !977, line: 78, baseType: !7, size: 32, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !976, file: !977, line: 79, baseType: !994, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !977, line: 49, baseType: !996)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !977, line: 45, size: 832, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !996, file: !977, line: 46, baseType: !985, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !996, file: !977, line: 47, baseType: !975, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !996, file: !977, line: 48, baseType: !1001, size: 704, offset: 128)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1002, line: 164, size: 704, elements: !1003)
!1002 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1003 = !{!1004, !1005, !1015, !1016, !1017, !1018, !1019, !1020, !1024, !1028, !1029, !1030, !1031}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1001, file: !1002, line: 166, baseType: !656, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1001, file: !1002, line: 167, baseType: !1006, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1002, line: 157, size: 192, elements: !1008)
!1008 = !{!1009, !1010, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1007, file: !1002, line: 159, baseType: !525, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1007, file: !1002, line: 160, baseType: !1006, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1007, file: !1002, line: 161, baseType: !1012, size: 32, offset: 128)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 32, elements: !1013)
!1013 = !{!1014}
!1014 = !DISubrange(count: 4)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1001, file: !1002, line: 168, baseType: !525, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1001, file: !1002, line: 169, baseType: !525, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1001, file: !1002, line: 170, baseType: !525, size: 64, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1001, file: !1002, line: 171, baseType: !656, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1001, file: !1002, line: 172, baseType: !523, size: 32, offset: 384)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1001, file: !1002, line: 176, baseType: !1021, size: 64, offset: 448)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!1006, !527, !656}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1001, file: !1002, line: 177, baseType: !1025, size: 64, offset: 512)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !527, !1006}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1001, file: !1002, line: 178, baseType: !527, size: 64, offset: 576)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1001, file: !1002, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1001, file: !1002, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1001, file: !1002, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !882, file: !791, line: 60, baseType: !964, size: 128, offset: 384)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !882, file: !791, line: 64, baseType: !1034, size: 64, offset: 512)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1036, line: 33, flags: DIFlagFwdDecl)
!1036 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !882, file: !791, line: 67, baseType: !601, size: 64, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !882, file: !791, line: 73, baseType: !885, size: 64, offset: 640)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !882, file: !791, line: 77, baseType: !974, size: 64, offset: 704)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !882, file: !791, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !882, file: !791, line: 82, baseType: !1042, size: 320, offset: 832)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1043, line: 62, size: 320, elements: !1044)
!1043 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1044 = !{!1045, !1051, !1052, !1053, !1054, !1061}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1042, file: !1043, line: 63, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1043, line: 56, size: 128, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1047, file: !1043, line: 57, baseType: !1046, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1047, file: !1043, line: 58, baseType: !682, size: 8, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1042, file: !1043, line: 64, baseType: !7, size: 32, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1042, file: !1043, line: 66, baseType: !7, size: 32, offset: 96)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1042, file: !1043, line: 68, baseType: !522, size: 8, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1042, file: !1043, line: 70, baseType: !1055, size: 64, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1043, line: 37, size: 128, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1056, file: !1043, line: 39, baseType: !1055, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1056, file: !1043, line: 40, baseType: !1060, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1042, file: !1043, line: 71, baseType: !1062, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1043, line: 45, size: 320, elements: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1063, file: !1043, line: 47, baseType: !1062, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1063, file: !1043, line: 48, baseType: !1067, size: 256, offset: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !6, line: 1883, size: 256, elements: !1068)
!1068 = !{!1069, !1071, !1072, !1077}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1067, file: !6, line: 1884, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1067, file: !6, line: 1885, baseType: !1070, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1067, file: !6, line: 1891, baseType: !1073, size: 64, offset: 128)
!1073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1067, file: !6, line: 1891, size: 64, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1073, file: !6, line: 1891, baseType: !590, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1073, file: !6, line: 1891, baseType: !601, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1067, file: !6, line: 1892, baseType: !1060, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !840, file: !841, line: 476, baseType: !1079, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !841, line: 476, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !840, file: !841, line: 479, baseType: !885, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !840, file: !841, line: 484, baseType: !601, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !840, file: !841, line: 488, baseType: !601, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !840, file: !841, line: 493, baseType: !601, size: 64, offset: 512)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !840, file: !841, line: 496, baseType: !601, size: 64, offset: 576)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !840, file: !841, line: 501, baseType: !1087, size: 64, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !213, line: 2355, size: 576, elements: !1089)
!1089 = !{!1090, !1093, !1094, !1095, !1096, !1098, !1099, !1104, !1105, !1106, !1107, !1108, !1109}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1088, file: !213, line: 2356, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !213, line: 2356, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1088, file: !213, line: 2357, baseType: !528, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1088, file: !213, line: 2358, baseType: !523, size: 32, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1088, file: !213, line: 2359, baseType: !523, size: 32, offset: 160)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1088, file: !213, line: 2360, baseType: !1097, size: 128, offset: 192)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 128, elements: !1013)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1088, file: !213, line: 2364, baseType: !523, size: 32, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1088, file: !213, line: 2367, baseType: !1100, size: 128, offset: 384)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !213, line: 2349, size: 128, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1100, file: !213, line: 2351, baseType: !596, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1100, file: !213, line: 2352, baseType: !656, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1088, file: !213, line: 2371, baseType: !212, size: 32, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1088, file: !213, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1088, file: !213, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1088, file: !213, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1088, file: !213, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1088, file: !213, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !840, file: !841, line: 504, baseType: !1111, size: 64, offset: 704)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !841, line: 504, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !840, file: !841, line: 507, baseType: !885, size: 64, offset: 768)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !840, file: !841, line: 510, baseType: !523, size: 32, offset: 832)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !840, file: !841, line: 513, baseType: !523, size: 32, offset: 864)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !840, file: !841, line: 516, baseType: !547, size: 32, offset: 896)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !840, file: !841, line: 519, baseType: !547, size: 32, offset: 928)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !840, file: !841, line: 522, baseType: !7, size: 32, offset: 960)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !840, file: !841, line: 523, baseType: !7, size: 32, offset: 992)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !840, file: !841, line: 528, baseType: !528, size: 64, offset: 1024)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !840, file: !841, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !840, file: !841, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !840, file: !841, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !840, file: !841, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !840, file: !841, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !840, file: !841, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !840, file: !841, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !840, file: !841, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !840, file: !841, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !840, file: !841, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !840, file: !841, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !840, file: !841, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !840, file: !841, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !840, file: !841, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !840, file: !841, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !840, file: !841, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !835, file: !6, line: 3254, baseType: !601, size: 64, offset: 1536)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !835, file: !6, line: 3257, baseType: !601, size: 64, offset: 1600)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !835, file: !6, line: 3258, baseType: !601, size: 64, offset: 1664)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !835, file: !6, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !835, file: !6, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !835, file: !6, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !835, file: !6, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !835, file: !6, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !835, file: !6, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !835, file: !6, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !835, file: !6, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !835, file: !6, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !835, file: !6, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !835, file: !6, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !835, file: !6, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !835, file: !6, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !835, file: !6, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !835, file: !6, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !835, file: !6, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !835, file: !6, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !835, file: !6, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !603, file: !6, line: 3394, baseType: !1159, size: 1344)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !6, line: 2279, size: 1344, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1186, !1187, !1188, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1159, file: !6, line: 2280, baseType: !639, size: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1159, file: !6, line: 2281, baseType: !601, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1159, file: !6, line: 2282, baseType: !601, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1159, file: !6, line: 2283, baseType: !601, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1159, file: !6, line: 2284, baseType: !601, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1159, file: !6, line: 2285, baseType: !7, size: 32, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1159, file: !6, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1159, file: !6, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1159, file: !6, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1159, file: !6, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1159, file: !6, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1159, file: !6, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1159, file: !6, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1159, file: !6, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1159, file: !6, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1159, file: !6, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1159, file: !6, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1159, file: !6, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1159, file: !6, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1159, file: !6, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1159, file: !6, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1159, file: !6, line: 2305, baseType: !7, size: 32, offset: 512)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1159, file: !6, line: 2306, baseType: !1184, size: 32, offset: 544)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1185, line: 31, baseType: !523)
!1185 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1159, file: !6, line: 2307, baseType: !601, size: 64, offset: 576)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1159, file: !6, line: 2308, baseType: !601, size: 64, offset: 640)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1159, file: !6, line: 2314, baseType: !1189, size: 64, offset: 704)
!1189 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !6, line: 2309, size: 64, elements: !1190)
!1190 = !{!1191, !1192, !1193}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1189, file: !6, line: 2310, baseType: !523, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1189, file: !6, line: 2311, baseType: !528, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1189, file: !6, line: 2312, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !6, line: 2277, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1159, file: !6, line: 2315, baseType: !601, size: 64, offset: 768)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1159, file: !6, line: 2316, baseType: !601, size: 64, offset: 832)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1159, file: !6, line: 2317, baseType: !601, size: 64, offset: 896)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1159, file: !6, line: 2318, baseType: !601, size: 64, offset: 960)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1159, file: !6, line: 2319, baseType: !601, size: 64, offset: 1024)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1159, file: !6, line: 2320, baseType: !601, size: 64, offset: 1088)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1159, file: !6, line: 2321, baseType: !601, size: 64, offset: 1152)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1159, file: !6, line: 2322, baseType: !601, size: 64, offset: 1216)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1159, file: !6, line: 2324, baseType: !1205, size: 64, offset: 1280)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !6, line: 2324, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !603, file: !6, line: 3395, baseType: !1208, size: 320)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !6, line: 1469, size: 320, elements: !1209)
!1209 = !{!1210, !1211, !1212}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1208, file: !6, line: 1470, baseType: !639, size: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1208, file: !6, line: 1471, baseType: !601, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1208, file: !6, line: 1472, baseType: !601, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !603, file: !6, line: 3396, baseType: !1214, size: 320)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !6, line: 1482, size: 320, elements: !1215)
!1215 = !{!1216, !1217, !1218}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1214, file: !6, line: 1483, baseType: !639, size: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1214, file: !6, line: 1484, baseType: !523, size: 32, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1214, file: !6, line: 1485, baseType: !961, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !603, file: !6, line: 3397, baseType: !1220, size: 384)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !6, line: 1829, size: 384, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1220, file: !6, line: 1830, baseType: !639, size: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1220, file: !6, line: 1831, baseType: !547, size: 32, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1220, file: !6, line: 1832, baseType: !601, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1220, file: !6, line: 1835, baseType: !961, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !603, file: !6, line: 3398, baseType: !1227, size: 704)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !6, line: 1898, size: 704, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1238}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1227, file: !6, line: 1899, baseType: !639, size: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1227, file: !6, line: 1902, baseType: !601, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1227, file: !6, line: 1905, baseType: !590, size: 64, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1227, file: !6, line: 1908, baseType: !7, size: 32, offset: 320)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1227, file: !6, line: 1911, baseType: !1234, size: 64, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !791, line: 117, size: 128, elements: !1236)
!1236 = !{!1237}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1235, file: !791, line: 120, baseType: !964, size: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1227, file: !6, line: 1914, baseType: !1067, size: 256, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !603, file: !6, line: 3399, baseType: !1240, size: 704)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !6, line: 2008, size: 704, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1240, file: !6, line: 2009, baseType: !639, size: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1240, file: !6, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1240, file: !6, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1240, file: !6, line: 2014, baseType: !547, size: 32, offset: 224)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1240, file: !6, line: 2016, baseType: !601, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1240, file: !6, line: 2017, baseType: !950, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1240, file: !6, line: 2019, baseType: !601, size: 64, offset: 384)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1240, file: !6, line: 2020, baseType: !601, size: 64, offset: 448)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1240, file: !6, line: 2021, baseType: !601, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1240, file: !6, line: 2022, baseType: !601, size: 64, offset: 576)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1240, file: !6, line: 2023, baseType: !601, size: 64, offset: 640)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !603, file: !6, line: 3400, baseType: !1254, size: 832)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !6, line: 2430, size: 832, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1254, file: !6, line: 2431, baseType: !639, size: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1254, file: !6, line: 2433, baseType: !601, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1254, file: !6, line: 2434, baseType: !601, size: 64, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1254, file: !6, line: 2435, baseType: !601, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1254, file: !6, line: 2436, baseType: !601, size: 64, offset: 384)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1254, file: !6, line: 2437, baseType: !950, size: 64, offset: 448)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1254, file: !6, line: 2438, baseType: !601, size: 64, offset: 512)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1254, file: !6, line: 2440, baseType: !601, size: 64, offset: 576)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1254, file: !6, line: 2441, baseType: !601, size: 64, offset: 640)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1254, file: !6, line: 2443, baseType: !1266, size: 128, offset: 704)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !6, line: 182, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !6, line: 182, size: 128, elements: !1268)
!1268 = !{!1269}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1267, file: !6, line: 182, baseType: !955, size: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !603, file: !6, line: 3401, baseType: !1271, size: 320)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !6, line: 3327, size: 320, elements: !1272)
!1272 = !{!1273, !1274, !1281}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1271, file: !6, line: 3329, baseType: !639, size: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1271, file: !6, line: 3330, baseType: !1275, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !6, line: 3320, size: 192, elements: !1277)
!1277 = !{!1278, !1279, !1280}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1276, file: !6, line: 3322, baseType: !1275, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1276, file: !6, line: 3323, baseType: !1275, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1276, file: !6, line: 3324, baseType: !601, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1271, file: !6, line: 3331, baseType: !1275, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !603, file: !6, line: 3402, baseType: !1283, size: 256)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !6, line: 1540, size: 256, elements: !1284)
!1284 = !{!1285, !1286}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1283, file: !6, line: 1541, baseType: !639, size: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1283, file: !6, line: 1542, baseType: !1287, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !6, line: 1538, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !6, line: 1538, size: 192, elements: !1290)
!1290 = !{!1291}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1289, file: !6, line: 1538, baseType: !1292, size: 192)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !6, line: 1537, baseType: !1293)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !6, line: 1537, size: 192, elements: !1294)
!1294 = !{!1295, !1296, !1297}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1293, file: !6, line: 1537, baseType: !7, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1293, file: !6, line: 1537, baseType: !7, size: 32, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1293, file: !6, line: 1537, baseType: !1298, size: 128, offset: 64)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1299, size: 128, elements: !683)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !6, line: 1535, baseType: !1300)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !6, line: 1532, size: 128, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1300, file: !6, line: 1533, baseType: !601, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1300, file: !6, line: 1534, baseType: !601, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !603, file: !6, line: 3403, baseType: !1305, size: 512)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !6, line: 1938, size: 512, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1316, !1317, !1318}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1305, file: !6, line: 1939, baseType: !639, size: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1305, file: !6, line: 1940, baseType: !547, size: 32, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1305, file: !6, line: 1941, baseType: !217, size: 32, offset: 224)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1305, file: !6, line: 1946, baseType: !1311, size: 32, offset: 256)
!1311 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !6, line: 1942, size: 32, elements: !1312)
!1312 = !{!1313, !1314, !1315}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1311, file: !6, line: 1943, baseType: !235, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1311, file: !6, line: 1944, baseType: !242, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1311, file: !6, line: 1945, baseType: !5, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1305, file: !6, line: 1950, baseType: !580, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1305, file: !6, line: 1951, baseType: !580, size: 64, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1305, file: !6, line: 1953, baseType: !961, size: 64, offset: 448)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !603, file: !6, line: 3404, baseType: !1320, size: 1664)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !6, line: 3337, size: 1664, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1320, file: !6, line: 3338, baseType: !639, size: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1320, file: !6, line: 3341, baseType: !1324, size: 1472, offset: 192)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1325, line: 410, size: 1472, elements: !1326)
!1325 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1326 = !{!1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1324, file: !1325, line: 412, baseType: !523, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1324, file: !1325, line: 413, baseType: !523, size: 32, offset: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1324, file: !1325, line: 414, baseType: !523, size: 32, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1324, file: !1325, line: 415, baseType: !523, size: 32, offset: 96)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1324, file: !1325, line: 416, baseType: !523, size: 32, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1324, file: !1325, line: 417, baseType: !523, size: 32, offset: 160)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1324, file: !1325, line: 418, baseType: !522, size: 8, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1324, file: !1325, line: 419, baseType: !522, size: 8, offset: 200)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1324, file: !1325, line: 420, baseType: !1336, size: 8, offset: 208)
!1336 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1324, file: !1325, line: 421, baseType: !1336, size: 8, offset: 216)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1324, file: !1325, line: 422, baseType: !1336, size: 8, offset: 224)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1324, file: !1325, line: 423, baseType: !1336, size: 8, offset: 232)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1324, file: !1325, line: 424, baseType: !1336, size: 8, offset: 240)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1324, file: !1325, line: 425, baseType: !1336, size: 8, offset: 248)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1324, file: !1325, line: 426, baseType: !1336, size: 8, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1324, file: !1325, line: 427, baseType: !1336, size: 8, offset: 264)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1324, file: !1325, line: 428, baseType: !1336, size: 8, offset: 272)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1324, file: !1325, line: 429, baseType: !1336, size: 8, offset: 280)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1324, file: !1325, line: 430, baseType: !1336, size: 8, offset: 288)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1324, file: !1325, line: 431, baseType: !1336, size: 8, offset: 296)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1324, file: !1325, line: 432, baseType: !1336, size: 8, offset: 304)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1324, file: !1325, line: 433, baseType: !1336, size: 8, offset: 312)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1324, file: !1325, line: 434, baseType: !1336, size: 8, offset: 320)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1324, file: !1325, line: 435, baseType: !1336, size: 8, offset: 328)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1324, file: !1325, line: 436, baseType: !1336, size: 8, offset: 336)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1324, file: !1325, line: 437, baseType: !1336, size: 8, offset: 344)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1324, file: !1325, line: 438, baseType: !1336, size: 8, offset: 352)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1324, file: !1325, line: 439, baseType: !1336, size: 8, offset: 360)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1324, file: !1325, line: 440, baseType: !1336, size: 8, offset: 368)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1324, file: !1325, line: 441, baseType: !1336, size: 8, offset: 376)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1324, file: !1325, line: 442, baseType: !1336, size: 8, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1324, file: !1325, line: 443, baseType: !1336, size: 8, offset: 392)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1324, file: !1325, line: 444, baseType: !1336, size: 8, offset: 400)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1324, file: !1325, line: 445, baseType: !1336, size: 8, offset: 408)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1324, file: !1325, line: 446, baseType: !1336, size: 8, offset: 416)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1324, file: !1325, line: 447, baseType: !1336, size: 8, offset: 424)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1324, file: !1325, line: 448, baseType: !1336, size: 8, offset: 432)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1324, file: !1325, line: 449, baseType: !1336, size: 8, offset: 440)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1324, file: !1325, line: 450, baseType: !1336, size: 8, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1324, file: !1325, line: 451, baseType: !1336, size: 8, offset: 456)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1324, file: !1325, line: 452, baseType: !1336, size: 8, offset: 464)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1324, file: !1325, line: 453, baseType: !1336, size: 8, offset: 472)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1324, file: !1325, line: 454, baseType: !1336, size: 8, offset: 480)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1324, file: !1325, line: 455, baseType: !1336, size: 8, offset: 488)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1324, file: !1325, line: 456, baseType: !1336, size: 8, offset: 496)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1324, file: !1325, line: 457, baseType: !1336, size: 8, offset: 504)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1324, file: !1325, line: 458, baseType: !1336, size: 8, offset: 512)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1324, file: !1325, line: 459, baseType: !1336, size: 8, offset: 520)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1324, file: !1325, line: 460, baseType: !1336, size: 8, offset: 528)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1324, file: !1325, line: 461, baseType: !1336, size: 8, offset: 536)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1324, file: !1325, line: 462, baseType: !1336, size: 8, offset: 544)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1324, file: !1325, line: 463, baseType: !1336, size: 8, offset: 552)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1324, file: !1325, line: 464, baseType: !1336, size: 8, offset: 560)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1324, file: !1325, line: 465, baseType: !1336, size: 8, offset: 568)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1324, file: !1325, line: 466, baseType: !1336, size: 8, offset: 576)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1324, file: !1325, line: 467, baseType: !1336, size: 8, offset: 584)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1324, file: !1325, line: 468, baseType: !1336, size: 8, offset: 592)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1324, file: !1325, line: 469, baseType: !1336, size: 8, offset: 600)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1324, file: !1325, line: 470, baseType: !1336, size: 8, offset: 608)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1324, file: !1325, line: 471, baseType: !1336, size: 8, offset: 616)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1324, file: !1325, line: 472, baseType: !1336, size: 8, offset: 624)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1324, file: !1325, line: 473, baseType: !1336, size: 8, offset: 632)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1324, file: !1325, line: 474, baseType: !1336, size: 8, offset: 640)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1324, file: !1325, line: 475, baseType: !1336, size: 8, offset: 648)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1324, file: !1325, line: 476, baseType: !1336, size: 8, offset: 656)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1324, file: !1325, line: 477, baseType: !1336, size: 8, offset: 664)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1324, file: !1325, line: 478, baseType: !1336, size: 8, offset: 672)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1324, file: !1325, line: 479, baseType: !1336, size: 8, offset: 680)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1324, file: !1325, line: 480, baseType: !1336, size: 8, offset: 688)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1324, file: !1325, line: 481, baseType: !1336, size: 8, offset: 696)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1324, file: !1325, line: 482, baseType: !1336, size: 8, offset: 704)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1324, file: !1325, line: 483, baseType: !1336, size: 8, offset: 712)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1324, file: !1325, line: 484, baseType: !1336, size: 8, offset: 720)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1324, file: !1325, line: 485, baseType: !1336, size: 8, offset: 728)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1324, file: !1325, line: 486, baseType: !1336, size: 8, offset: 736)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1324, file: !1325, line: 487, baseType: !1336, size: 8, offset: 744)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1324, file: !1325, line: 488, baseType: !1336, size: 8, offset: 752)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1324, file: !1325, line: 489, baseType: !1336, size: 8, offset: 760)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1324, file: !1325, line: 490, baseType: !1336, size: 8, offset: 768)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1324, file: !1325, line: 491, baseType: !1336, size: 8, offset: 776)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1324, file: !1325, line: 492, baseType: !1336, size: 8, offset: 784)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1324, file: !1325, line: 493, baseType: !1336, size: 8, offset: 792)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1324, file: !1325, line: 494, baseType: !1336, size: 8, offset: 800)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1324, file: !1325, line: 495, baseType: !1336, size: 8, offset: 808)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1324, file: !1325, line: 496, baseType: !1336, size: 8, offset: 816)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1324, file: !1325, line: 497, baseType: !1336, size: 8, offset: 824)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1324, file: !1325, line: 498, baseType: !1336, size: 8, offset: 832)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1324, file: !1325, line: 499, baseType: !1336, size: 8, offset: 840)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1324, file: !1325, line: 500, baseType: !1336, size: 8, offset: 848)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1324, file: !1325, line: 501, baseType: !1336, size: 8, offset: 856)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1324, file: !1325, line: 502, baseType: !1336, size: 8, offset: 864)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1324, file: !1325, line: 503, baseType: !1336, size: 8, offset: 872)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1324, file: !1325, line: 504, baseType: !1336, size: 8, offset: 880)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1324, file: !1325, line: 505, baseType: !1336, size: 8, offset: 888)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1324, file: !1325, line: 506, baseType: !1336, size: 8, offset: 896)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1324, file: !1325, line: 507, baseType: !1336, size: 8, offset: 904)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1324, file: !1325, line: 508, baseType: !1336, size: 8, offset: 912)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1324, file: !1325, line: 509, baseType: !1336, size: 8, offset: 920)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1324, file: !1325, line: 510, baseType: !1336, size: 8, offset: 928)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1324, file: !1325, line: 511, baseType: !1336, size: 8, offset: 936)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1324, file: !1325, line: 512, baseType: !1336, size: 8, offset: 944)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1324, file: !1325, line: 513, baseType: !1336, size: 8, offset: 952)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1324, file: !1325, line: 514, baseType: !1336, size: 8, offset: 960)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1324, file: !1325, line: 515, baseType: !1336, size: 8, offset: 968)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1324, file: !1325, line: 516, baseType: !1336, size: 8, offset: 976)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1324, file: !1325, line: 517, baseType: !1336, size: 8, offset: 984)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1324, file: !1325, line: 518, baseType: !1336, size: 8, offset: 992)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1324, file: !1325, line: 519, baseType: !1336, size: 8, offset: 1000)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1324, file: !1325, line: 520, baseType: !1336, size: 8, offset: 1008)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1324, file: !1325, line: 521, baseType: !1336, size: 8, offset: 1016)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1324, file: !1325, line: 522, baseType: !1336, size: 8, offset: 1024)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1324, file: !1325, line: 523, baseType: !1336, size: 8, offset: 1032)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1324, file: !1325, line: 524, baseType: !1336, size: 8, offset: 1040)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1324, file: !1325, line: 525, baseType: !1336, size: 8, offset: 1048)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1324, file: !1325, line: 526, baseType: !1336, size: 8, offset: 1056)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1324, file: !1325, line: 527, baseType: !1336, size: 8, offset: 1064)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1324, file: !1325, line: 528, baseType: !1336, size: 8, offset: 1072)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1324, file: !1325, line: 529, baseType: !1336, size: 8, offset: 1080)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1324, file: !1325, line: 530, baseType: !1336, size: 8, offset: 1088)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1324, file: !1325, line: 531, baseType: !1336, size: 8, offset: 1096)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1324, file: !1325, line: 532, baseType: !1336, size: 8, offset: 1104)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1324, file: !1325, line: 533, baseType: !1336, size: 8, offset: 1112)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1324, file: !1325, line: 534, baseType: !1336, size: 8, offset: 1120)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1324, file: !1325, line: 535, baseType: !1336, size: 8, offset: 1128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1324, file: !1325, line: 536, baseType: !1336, size: 8, offset: 1136)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1324, file: !1325, line: 537, baseType: !1336, size: 8, offset: 1144)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1324, file: !1325, line: 538, baseType: !1336, size: 8, offset: 1152)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1324, file: !1325, line: 539, baseType: !1336, size: 8, offset: 1160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1324, file: !1325, line: 540, baseType: !1336, size: 8, offset: 1168)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1324, file: !1325, line: 541, baseType: !1336, size: 8, offset: 1176)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1324, file: !1325, line: 542, baseType: !1336, size: 8, offset: 1184)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1324, file: !1325, line: 543, baseType: !1336, size: 8, offset: 1192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1324, file: !1325, line: 544, baseType: !1336, size: 8, offset: 1200)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1324, file: !1325, line: 545, baseType: !1336, size: 8, offset: 1208)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1324, file: !1325, line: 546, baseType: !1336, size: 8, offset: 1216)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1324, file: !1325, line: 547, baseType: !1336, size: 8, offset: 1224)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1324, file: !1325, line: 548, baseType: !1336, size: 8, offset: 1232)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1324, file: !1325, line: 549, baseType: !1336, size: 8, offset: 1240)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1324, file: !1325, line: 550, baseType: !1336, size: 8, offset: 1248)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1324, file: !1325, line: 551, baseType: !1336, size: 8, offset: 1256)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1324, file: !1325, line: 552, baseType: !1336, size: 8, offset: 1264)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1324, file: !1325, line: 553, baseType: !1336, size: 8, offset: 1272)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1324, file: !1325, line: 554, baseType: !1336, size: 8, offset: 1280)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1324, file: !1325, line: 555, baseType: !1336, size: 8, offset: 1288)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1324, file: !1325, line: 556, baseType: !1336, size: 8, offset: 1296)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1324, file: !1325, line: 557, baseType: !1336, size: 8, offset: 1304)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1324, file: !1325, line: 558, baseType: !1336, size: 8, offset: 1312)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1324, file: !1325, line: 559, baseType: !1336, size: 8, offset: 1320)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1324, file: !1325, line: 560, baseType: !1336, size: 8, offset: 1328)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1324, file: !1325, line: 561, baseType: !1336, size: 8, offset: 1336)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1324, file: !1325, line: 562, baseType: !1336, size: 8, offset: 1344)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1324, file: !1325, line: 563, baseType: !1336, size: 8, offset: 1352)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1324, file: !1325, line: 564, baseType: !1336, size: 8, offset: 1360)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1324, file: !1325, line: 565, baseType: !1336, size: 8, offset: 1368)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1324, file: !1325, line: 566, baseType: !1336, size: 8, offset: 1376)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1324, file: !1325, line: 567, baseType: !1336, size: 8, offset: 1384)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1324, file: !1325, line: 568, baseType: !1336, size: 8, offset: 1392)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1324, file: !1325, line: 569, baseType: !1336, size: 8, offset: 1400)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1324, file: !1325, line: 570, baseType: !1336, size: 8, offset: 1408)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1324, file: !1325, line: 571, baseType: !1336, size: 8, offset: 1416)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1324, file: !1325, line: 572, baseType: !1336, size: 8, offset: 1424)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1324, file: !1325, line: 573, baseType: !1336, size: 8, offset: 1432)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1324, file: !1325, line: 574, baseType: !1336, size: 8, offset: 1440)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !603, file: !6, line: 3405, baseType: !1492, size: 384)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !6, line: 3352, size: 384, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1492, file: !6, line: 3353, baseType: !639, size: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1492, file: !6, line: 3356, baseType: !1496, size: 192, offset: 192)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1325, line: 578, size: 192, elements: !1497)
!1497 = !{!1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1496, file: !1325, line: 580, baseType: !523, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1496, file: !1325, line: 581, baseType: !523, size: 32, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1496, file: !1325, line: 582, baseType: !523, size: 32, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1496, file: !1325, line: 583, baseType: !523, size: 32, offset: 96)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1496, file: !1325, line: 584, baseType: !522, size: 8, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1496, file: !1325, line: 585, baseType: !522, size: 8, offset: 136)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1496, file: !1325, line: 586, baseType: !522, size: 8, offset: 144)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1496, file: !1325, line: 587, baseType: !522, size: 8, offset: 152)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1496, file: !1325, line: 588, baseType: !522, size: 8, offset: 160)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1496, file: !1325, line: 589, baseType: !522, size: 8, offset: 168)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1496, file: !1325, line: 590, baseType: !522, size: 8, offset: 176)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !572, file: !202, line: 138, baseType: !547, size: 32, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !572, file: !202, line: 142, baseType: !7, size: 32, offset: 352)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !202, line: 144, baseType: !523, size: 32, offset: 384)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !572, file: !202, line: 145, baseType: !523, size: 32, offset: 416)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !572, file: !202, line: 146, baseType: !1514, size: 64, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !202, line: 119, baseType: !656)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !554, file: !202, line: 220, baseType: !557, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !554, file: !202, line: 223, baseType: !527, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !554, file: !202, line: 226, baseType: !1518, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !202, line: 185, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !554, file: !202, line: 229, baseType: !1521, size: 128, offset: 256)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1522, size: 128, elements: !873)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !202, line: 229, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !554, file: !202, line: 232, baseType: !553, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !554, file: !202, line: 233, baseType: !553, size: 64, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !554, file: !202, line: 238, baseType: !1527, size: 64, offset: 512)
!1527 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !202, line: 235, size: 64, elements: !1528)
!1528 = !{!1529, !1535}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1527, file: !202, line: 236, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !202, line: 273, size: 128, elements: !1532)
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1531, file: !202, line: 275, baseType: !580, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1531, file: !202, line: 278, baseType: !580, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1527, file: !202, line: 237, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !202, line: 259, size: 320, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1543}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1537, file: !202, line: 261, baseType: !596, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1537, file: !202, line: 262, baseType: !596, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1537, file: !202, line: 266, baseType: !596, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1537, file: !202, line: 267, baseType: !596, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1537, file: !202, line: 270, baseType: !523, size: 32, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !554, file: !202, line: 241, baseType: !1514, size: 64, offset: 576)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !554, file: !202, line: 244, baseType: !523, size: 32, offset: 640)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !554, file: !202, line: 247, baseType: !523, size: 32, offset: 672)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !554, file: !202, line: 250, baseType: !523, size: 32, offset: 704)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !554, file: !202, line: 253, baseType: !523, size: 32, offset: 736)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !202, line: 256, baseType: !523, size: 32, offset: 768)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !534, file: !456, line: 327, baseType: !601, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !531, file: !456, line: 739, baseType: !1552, size: 448)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !456, line: 350, size: 448, elements: !1553)
!1553 = !{!1554, !1560}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1552, file: !456, line: 353, baseType: !1555, size: 384)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !456, line: 333, size: 384, elements: !1556)
!1556 = !{!1557, !1558, !1559}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1555, file: !456, line: 336, baseType: !534, size: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1555, file: !456, line: 343, baseType: !1055, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1555, file: !456, line: 344, baseType: !1062, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1552, file: !456, line: 359, baseType: !961, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !531, file: !456, line: 740, baseType: !1562, size: 512)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !456, line: 365, size: 512, elements: !1563)
!1563 = !{!1564, !1565, !1566}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1562, file: !456, line: 368, baseType: !1555, size: 384)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1562, file: !456, line: 373, baseType: !601, size: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1562, file: !456, line: 374, baseType: !601, size: 64, offset: 448)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !531, file: !456, line: 741, baseType: !1568, size: 576)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !456, line: 380, size: 576, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1568, file: !456, line: 383, baseType: !1562, size: 512)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1568, file: !456, line: 389, baseType: !961, size: 64, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !531, file: !456, line: 742, baseType: !1573, size: 320)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !456, line: 395, size: 320, elements: !1574)
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1573, file: !456, line: 397, baseType: !534, size: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1573, file: !456, line: 400, baseType: !580, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !531, file: !456, line: 743, baseType: !1578, size: 448)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !456, line: 406, size: 448, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1578, file: !456, line: 408, baseType: !534, size: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1578, file: !456, line: 412, baseType: !601, size: 64, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1578, file: !456, line: 420, baseType: !601, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1578, file: !456, line: 423, baseType: !580, size: 64, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !531, file: !456, line: 744, baseType: !1585, size: 384)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !456, line: 429, size: 384, elements: !1586)
!1586 = !{!1587, !1588, !1589}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1585, file: !456, line: 431, baseType: !534, size: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1585, file: !456, line: 434, baseType: !601, size: 64, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1585, file: !456, line: 437, baseType: !580, size: 64, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !531, file: !456, line: 745, baseType: !1591, size: 384)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !456, line: 443, size: 384, elements: !1592)
!1592 = !{!1593, !1594, !1595}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1591, file: !456, line: 445, baseType: !534, size: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1591, file: !456, line: 449, baseType: !601, size: 64, offset: 256)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1591, file: !456, line: 453, baseType: !580, size: 64, offset: 320)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !531, file: !456, line: 746, baseType: !1597, size: 320)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !456, line: 459, size: 320, elements: !1598)
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1597, file: !456, line: 461, baseType: !534, size: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1597, file: !456, line: 464, baseType: !601, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !531, file: !456, line: 747, baseType: !1602, size: 768)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !456, line: 469, size: 768, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1607, !1608}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1602, file: !456, line: 471, baseType: !534, size: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1602, file: !456, line: 474, baseType: !7, size: 32, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1602, file: !456, line: 475, baseType: !7, size: 32, offset: 288)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1602, file: !456, line: 478, baseType: !601, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1602, file: !456, line: 481, baseType: !1609, size: 384, offset: 384)
!1609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1610, size: 384, elements: !683)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !6, line: 1917, size: 384, elements: !1611)
!1611 = !{!1612, !1613, !1614}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1610, file: !6, line: 1920, baseType: !1067, size: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1610, file: !6, line: 1921, baseType: !601, size: 64, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1610, file: !6, line: 1922, baseType: !547, size: 32, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !531, file: !456, line: 748, baseType: !1616, size: 320)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !456, line: 487, size: 320, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1616, file: !456, line: 490, baseType: !534, size: 256)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1616, file: !456, line: 494, baseType: !523, size: 32, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !531, file: !456, line: 749, baseType: !1621, size: 384)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !456, line: 500, size: 384, elements: !1622)
!1622 = !{!1623, !1624, !1625}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1621, file: !456, line: 502, baseType: !534, size: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1621, file: !456, line: 506, baseType: !580, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1621, file: !456, line: 510, baseType: !580, size: 64, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !531, file: !456, line: 750, baseType: !1627, size: 320)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !456, line: 529, size: 320, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1627, file: !456, line: 531, baseType: !534, size: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1627, file: !456, line: 540, baseType: !580, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !531, file: !456, line: 751, baseType: !1632, size: 704)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !456, line: 546, size: 704, elements: !1633)
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1639, !1640}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1632, file: !456, line: 549, baseType: !1562, size: 512)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1632, file: !456, line: 553, baseType: !528, size: 64, offset: 512)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1632, file: !456, line: 557, baseType: !522, size: 8, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1632, file: !456, line: 558, baseType: !522, size: 8, offset: 584)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1632, file: !456, line: 559, baseType: !522, size: 8, offset: 592)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1632, file: !456, line: 560, baseType: !522, size: 8, offset: 600)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1632, file: !456, line: 566, baseType: !961, size: 64, offset: 640)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !531, file: !456, line: 752, baseType: !1642, size: 384)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !456, line: 571, size: 384, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1642, file: !456, line: 573, baseType: !1573, size: 320)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1642, file: !456, line: 577, baseType: !601, size: 64, offset: 320)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !531, file: !456, line: 753, baseType: !1647, size: 576)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !456, line: 600, size: 576, elements: !1648)
!1648 = !{!1649, !1650, !1651, !1652, !1661}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1647, file: !456, line: 602, baseType: !1573, size: 320)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1647, file: !456, line: 605, baseType: !601, size: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1647, file: !456, line: 609, baseType: !911, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1647, file: !456, line: 612, baseType: !1653, size: 64, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !456, line: 581, size: 320, elements: !1655)
!1655 = !{!1656, !1657, !1658, !1659, !1660}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1654, file: !456, line: 583, baseType: !5, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1654, file: !456, line: 586, baseType: !601, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1654, file: !456, line: 589, baseType: !601, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1654, file: !456, line: 592, baseType: !601, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1654, file: !456, line: 595, baseType: !601, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1647, file: !456, line: 616, baseType: !580, size: 64, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !531, file: !456, line: 754, baseType: !1663, size: 512)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !456, line: 622, size: 512, elements: !1664)
!1664 = !{!1665, !1666, !1667, !1668}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1663, file: !456, line: 624, baseType: !1573, size: 320)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1663, file: !456, line: 628, baseType: !601, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1663, file: !456, line: 632, baseType: !601, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1663, file: !456, line: 636, baseType: !601, size: 64, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !531, file: !456, line: 755, baseType: !1670, size: 704)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !456, line: 642, size: 704, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1670, file: !456, line: 644, baseType: !1663, size: 512)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1670, file: !456, line: 648, baseType: !601, size: 64, offset: 512)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1670, file: !456, line: 652, baseType: !601, size: 64, offset: 576)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1670, file: !456, line: 653, baseType: !601, size: 64, offset: 640)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !531, file: !456, line: 756, baseType: !1677, size: 448)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !456, line: 663, size: 448, elements: !1678)
!1678 = !{!1679, !1680, !1681}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1677, file: !456, line: 665, baseType: !1573, size: 320)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1677, file: !456, line: 668, baseType: !601, size: 64, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1677, file: !456, line: 673, baseType: !601, size: 64, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !531, file: !456, line: 757, baseType: !1683, size: 384)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !456, line: 694, size: 384, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1683, file: !456, line: 696, baseType: !1573, size: 320)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1683, file: !456, line: 699, baseType: !601, size: 64, offset: 320)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !531, file: !456, line: 758, baseType: !1688, size: 384)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !456, line: 681, size: 384, elements: !1689)
!1689 = !{!1690, !1691, !1692}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1688, file: !456, line: 683, baseType: !534, size: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1688, file: !456, line: 686, baseType: !601, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1688, file: !456, line: 689, baseType: !601, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !531, file: !456, line: 759, baseType: !1694, size: 384)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !456, line: 707, size: 384, elements: !1695)
!1695 = !{!1696, !1697, !1698}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1694, file: !456, line: 709, baseType: !534, size: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1694, file: !456, line: 712, baseType: !601, size: 64, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1694, file: !456, line: 712, baseType: !601, size: 64, offset: 320)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !531, file: !456, line: 760, baseType: !1700, size: 320)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !456, line: 718, size: 320, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1700, file: !456, line: 720, baseType: !534, size: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1700, file: !456, line: 723, baseType: !601, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!1706 = !{!0, !1707, !1735}
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(name: "pass_rebuild_cgraph_edges", scope: !2, file: !3, line: 270, type: !1709, isLocal: false, isDefinition: true)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !273, line: 156, size: 640, elements: !1710)
!1710 = !{!1711}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1709, file: !273, line: 158, baseType: !1712, size: 640)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !273, line: 114, size: 640, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1720, !1724, !1726, !1727, !1728, !1730, !1731, !1732, !1733, !1734}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1712, file: !273, line: 117, baseType: !272, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1712, file: !273, line: 121, baseType: !528, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1712, file: !273, line: 125, baseType: !1717, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!522}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1712, file: !273, line: 130, baseType: !1721, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!7}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1712, file: !273, line: 133, baseType: !1725, size: 64, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1712, file: !273, line: 136, baseType: !1725, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1712, file: !273, line: 139, baseType: !523, size: 32, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1712, file: !273, line: 143, baseType: !1729, size: 32, offset: 416)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !280, line: 80, baseType: !279)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1712, file: !273, line: 146, baseType: !7, size: 32, offset: 448)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1712, file: !273, line: 147, baseType: !7, size: 32, offset: 480)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1712, file: !273, line: 148, baseType: !7, size: 32, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1712, file: !273, line: 151, baseType: !7, size: 32, offset: 544)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1712, file: !273, line: 152, baseType: !7, size: 32, offset: 576)
!1735 = !DIGlobalVariableExpression(var: !1736, expr: !DIExpression())
!1736 = distinct !DIGlobalVariable(name: "pass_remove_cgraph_callee_edges", scope: !2, file: !3, line: 297, type: !1709, isLocal: false, isDefinition: true)
!1737 = !{i32 2, !"Dwarf Version", i32 4}
!1738 = !{i32 2, !"Debug Info Version", i32 3}
!1739 = !{i32 1, !"wchar_size", i32 4}
!1740 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1741 = distinct !DISubprogram(name: "vprintf", scope: !1742, file: !1742, line: 39, type: !1743, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1753)
!1742 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!523, !1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !528)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1748)
!1748 = !{!1749, !1750, !1751, !1752}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1747, file: !3, baseType: !7, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1747, file: !3, baseType: !7, size: 32, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1747, file: !3, baseType: !527, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1747, file: !3, baseType: !527, size: 64, offset: 128)
!1753 = !{!1754, !1755}
!1754 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1741, file: !1742, line: 39, type: !1745)
!1755 = !DILocalVariable(name: "__arg", arg: 2, scope: !1741, file: !1742, line: 39, type: !1746)
!1756 = !DILocation(line: 0, scope: !1741)
!1757 = !DILocation(line: 41, column: 20, scope: !1741)
!1758 = !DILocation(line: 41, column: 10, scope: !1741)
!1759 = !DILocation(line: 41, column: 3, scope: !1741)
!1760 = distinct !DISubprogram(name: "getchar", scope: !1742, file: !1742, line: 47, type: !1761, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!523}
!1763 = !{}
!1764 = !DILocation(line: 49, column: 16, scope: !1760)
!1765 = !DILocation(line: 49, column: 10, scope: !1760)
!1766 = !DILocation(line: 49, column: 3, scope: !1760)
!1767 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1742, file: !1742, line: 56, type: !1768, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1821)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!523, !1770}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1772, line: 7, baseType: !1773)
!1772 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1774, line: 49, size: 1728, elements: !1775)
!1774 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1775 = !{!1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1791, !1793, !1794, !1795, !1798, !1800, !1801, !1802, !1805, !1807, !1810, !1813, !1814, !1815, !1816, !1817}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1773, file: !1774, line: 51, baseType: !523, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1773, file: !1774, line: 54, baseType: !525, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1773, file: !1774, line: 55, baseType: !525, size: 64, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1773, file: !1774, line: 56, baseType: !525, size: 64, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1773, file: !1774, line: 57, baseType: !525, size: 64, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1773, file: !1774, line: 58, baseType: !525, size: 64, offset: 320)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1773, file: !1774, line: 59, baseType: !525, size: 64, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1773, file: !1774, line: 60, baseType: !525, size: 64, offset: 448)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1773, file: !1774, line: 61, baseType: !525, size: 64, offset: 512)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1773, file: !1774, line: 64, baseType: !525, size: 64, offset: 576)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1773, file: !1774, line: 65, baseType: !525, size: 64, offset: 640)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1773, file: !1774, line: 66, baseType: !525, size: 64, offset: 704)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1773, file: !1774, line: 68, baseType: !1789, size: 64, offset: 768)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1774, line: 36, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1773, file: !1774, line: 70, baseType: !1792, size: 64, offset: 832)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1773, file: !1774, line: 72, baseType: !523, size: 32, offset: 896)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1773, file: !1774, line: 73, baseType: !523, size: 32, offset: 928)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1773, file: !1774, line: 74, baseType: !1796, size: 64, offset: 960)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1797, line: 152, baseType: !656)
!1797 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1773, file: !1774, line: 77, baseType: !1799, size: 16, offset: 1024)
!1799 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1773, file: !1774, line: 78, baseType: !1336, size: 8, offset: 1040)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1773, file: !1774, line: 79, baseType: !682, size: 8, offset: 1048)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1773, file: !1774, line: 81, baseType: !1803, size: 64, offset: 1088)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1774, line: 43, baseType: null)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1773, file: !1774, line: 89, baseType: !1806, size: 64, offset: 1152)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1797, line: 153, baseType: !656)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1773, file: !1774, line: 91, baseType: !1808, size: 64, offset: 1216)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1774, line: 37, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1773, file: !1774, line: 92, baseType: !1811, size: 64, offset: 1280)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1774, line: 38, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1773, file: !1774, line: 93, baseType: !1792, size: 64, offset: 1344)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1773, file: !1774, line: 94, baseType: !527, size: 64, offset: 1408)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1773, file: !1774, line: 95, baseType: !911, size: 64, offset: 1472)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1773, file: !1774, line: 96, baseType: !523, size: 32, offset: 1536)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1773, file: !1774, line: 98, baseType: !1818, size: 160, offset: 1568)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 160, elements: !1819)
!1819 = !{!1820}
!1820 = !DISubrange(count: 20)
!1821 = !{!1822}
!1822 = !DILocalVariable(name: "__fp", arg: 1, scope: !1767, file: !1742, line: 56, type: !1770)
!1823 = !DILocation(line: 0, scope: !1767)
!1824 = !DILocation(line: 58, column: 10, scope: !1767)
!1825 = !DILocation(line: 58, column: 3, scope: !1767)
!1826 = distinct !DISubprogram(name: "getc_unlocked", scope: !1742, file: !1742, line: 66, type: !1768, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1827)
!1827 = !{!1828}
!1828 = !DILocalVariable(name: "__fp", arg: 1, scope: !1826, file: !1742, line: 66, type: !1770)
!1829 = !DILocation(line: 0, scope: !1826)
!1830 = !DILocation(line: 68, column: 10, scope: !1826)
!1831 = !DILocation(line: 68, column: 3, scope: !1826)
!1832 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1742, file: !1742, line: 73, type: !1761, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1763)
!1833 = !DILocation(line: 75, column: 10, scope: !1832)
!1834 = !DILocation(line: 75, column: 3, scope: !1832)
!1835 = distinct !DISubprogram(name: "putchar", scope: !1742, file: !1742, line: 82, type: !1836, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1838)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!523, !523}
!1838 = !{!1839}
!1839 = !DILocalVariable(name: "__c", arg: 1, scope: !1835, file: !1742, line: 82, type: !523)
!1840 = !DILocation(line: 0, scope: !1835)
!1841 = !DILocation(line: 84, column: 21, scope: !1835)
!1842 = !DILocation(line: 84, column: 10, scope: !1835)
!1843 = !DILocation(line: 84, column: 3, scope: !1835)
!1844 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1742, file: !1742, line: 91, type: !1845, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1847)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!523, !523, !1770}
!1847 = !{!1848, !1849}
!1848 = !DILocalVariable(name: "__c", arg: 1, scope: !1844, file: !1742, line: 91, type: !523)
!1849 = !DILocalVariable(name: "__stream", arg: 2, scope: !1844, file: !1742, line: 91, type: !1770)
!1850 = !DILocation(line: 0, scope: !1844)
!1851 = !DILocation(line: 93, column: 10, scope: !1844)
!1852 = !DILocation(line: 93, column: 3, scope: !1844)
!1853 = distinct !DISubprogram(name: "putc_unlocked", scope: !1742, file: !1742, line: 101, type: !1845, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1854)
!1854 = !{!1855, !1856}
!1855 = !DILocalVariable(name: "__c", arg: 1, scope: !1853, file: !1742, line: 101, type: !523)
!1856 = !DILocalVariable(name: "__stream", arg: 2, scope: !1853, file: !1742, line: 101, type: !1770)
!1857 = !DILocation(line: 0, scope: !1853)
!1858 = !DILocation(line: 103, column: 10, scope: !1853)
!1859 = !DILocation(line: 103, column: 3, scope: !1853)
!1860 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1742, file: !1742, line: 108, type: !1836, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1861)
!1861 = !{!1862}
!1862 = !DILocalVariable(name: "__c", arg: 1, scope: !1860, file: !1742, line: 108, type: !523)
!1863 = !DILocation(line: 0, scope: !1860)
!1864 = !DILocation(line: 110, column: 10, scope: !1860)
!1865 = !DILocation(line: 110, column: 3, scope: !1860)
!1866 = distinct !DISubprogram(name: "getline", scope: !1742, file: !1742, line: 118, type: !1867, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1871)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!1869, !524, !1870, !1770}
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1797, line: 193, baseType: !656)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!1871 = !{!1872, !1873, !1874}
!1872 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1866, file: !1742, line: 118, type: !524)
!1873 = !DILocalVariable(name: "__n", arg: 2, scope: !1866, file: !1742, line: 118, type: !1870)
!1874 = !DILocalVariable(name: "__stream", arg: 3, scope: !1866, file: !1742, line: 118, type: !1770)
!1875 = !DILocation(line: 0, scope: !1866)
!1876 = !DILocation(line: 120, column: 10, scope: !1866)
!1877 = !DILocation(line: 120, column: 3, scope: !1866)
!1878 = distinct !DISubprogram(name: "feof_unlocked", scope: !1742, file: !1742, line: 128, type: !1768, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1879)
!1879 = !{!1880}
!1880 = !DILocalVariable(name: "__stream", arg: 1, scope: !1878, file: !1742, line: 128, type: !1770)
!1881 = !DILocation(line: 0, scope: !1878)
!1882 = !DILocation(line: 130, column: 10, scope: !1878)
!1883 = !DILocation(line: 130, column: 3, scope: !1878)
!1884 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1742, file: !1742, line: 135, type: !1768, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1885)
!1885 = !{!1886}
!1886 = !DILocalVariable(name: "__stream", arg: 1, scope: !1884, file: !1742, line: 135, type: !1770)
!1887 = !DILocation(line: 0, scope: !1884)
!1888 = !DILocation(line: 137, column: 10, scope: !1884)
!1889 = !DILocation(line: 137, column: 3, scope: !1884)
!1890 = distinct !DISubprogram(name: "tolower", scope: !1891, file: !1891, line: 207, type: !1836, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1892)
!1891 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1892 = !{!1893}
!1893 = !DILocalVariable(name: "__c", arg: 1, scope: !1890, file: !1891, line: 207, type: !523)
!1894 = !DILocation(line: 0, scope: !1890)
!1895 = !DILocation(line: 209, column: 22, scope: !1890)
!1896 = !DILocation(line: 209, column: 39, scope: !1890)
!1897 = !DILocation(line: 209, column: 38, scope: !1890)
!1898 = !DILocation(line: 209, column: 37, scope: !1890)
!1899 = !DILocation(line: 209, column: 10, scope: !1890)
!1900 = !DILocation(line: 209, column: 3, scope: !1890)
!1901 = distinct !DISubprogram(name: "toupper", scope: !1891, file: !1891, line: 213, type: !1836, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1902)
!1902 = !{!1903}
!1903 = !DILocalVariable(name: "__c", arg: 1, scope: !1901, file: !1891, line: 213, type: !523)
!1904 = !DILocation(line: 0, scope: !1901)
!1905 = !DILocation(line: 215, column: 22, scope: !1901)
!1906 = !DILocation(line: 215, column: 39, scope: !1901)
!1907 = !DILocation(line: 215, column: 38, scope: !1901)
!1908 = !DILocation(line: 215, column: 37, scope: !1901)
!1909 = !DILocation(line: 215, column: 10, scope: !1901)
!1910 = !DILocation(line: 215, column: 3, scope: !1901)
!1911 = distinct !DISubprogram(name: "atoi", scope: !1912, file: !1912, line: 361, type: !1913, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1915)
!1912 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!523, !528}
!1915 = !{!1916}
!1916 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1911, file: !1912, line: 361, type: !528)
!1917 = !DILocation(line: 0, scope: !1911)
!1918 = !DILocation(line: 363, column: 16, scope: !1911)
!1919 = !DILocation(line: 363, column: 10, scope: !1911)
!1920 = !DILocation(line: 363, column: 3, scope: !1911)
!1921 = distinct !DISubprogram(name: "atol", scope: !1912, file: !1912, line: 366, type: !1922, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!656, !528}
!1924 = !{!1925}
!1925 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1921, file: !1912, line: 366, type: !528)
!1926 = !DILocation(line: 0, scope: !1921)
!1927 = !DILocation(line: 368, column: 10, scope: !1921)
!1928 = !DILocation(line: 368, column: 3, scope: !1921)
!1929 = distinct !DISubprogram(name: "atoll", scope: !1912, file: !1912, line: 373, type: !1930, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1933)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!1932, !528}
!1932 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1933 = !{!1934}
!1934 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1929, file: !1912, line: 373, type: !528)
!1935 = !DILocation(line: 0, scope: !1929)
!1936 = !DILocation(line: 375, column: 10, scope: !1929)
!1937 = !DILocation(line: 375, column: 3, scope: !1929)
!1938 = distinct !DISubprogram(name: "bsearch", scope: !1939, file: !1939, line: 20, type: !1940, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1943)
!1939 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!527, !896, !896, !911, !911, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1912, line: 808, baseType: !900)
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953}
!1944 = !DILocalVariable(name: "__key", arg: 1, scope: !1938, file: !1939, line: 20, type: !896)
!1945 = !DILocalVariable(name: "__base", arg: 2, scope: !1938, file: !1939, line: 20, type: !896)
!1946 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1938, file: !1939, line: 20, type: !911)
!1947 = !DILocalVariable(name: "__size", arg: 4, scope: !1938, file: !1939, line: 20, type: !911)
!1948 = !DILocalVariable(name: "__compar", arg: 5, scope: !1938, file: !1939, line: 21, type: !1942)
!1949 = !DILocalVariable(name: "__l", scope: !1938, file: !1939, line: 23, type: !911)
!1950 = !DILocalVariable(name: "__u", scope: !1938, file: !1939, line: 23, type: !911)
!1951 = !DILocalVariable(name: "__idx", scope: !1938, file: !1939, line: 23, type: !911)
!1952 = !DILocalVariable(name: "__p", scope: !1938, file: !1939, line: 24, type: !896)
!1953 = !DILocalVariable(name: "__comparison", scope: !1938, file: !1939, line: 25, type: !523)
!1954 = !DILocation(line: 0, scope: !1938)
!1955 = !DILocation(line: 29, column: 3, scope: !1938)
!1956 = !DILocation(line: 27, column: 7, scope: !1938)
!1957 = !DILocation(line: 29, column: 14, scope: !1938)
!1958 = !DILocation(line: 31, column: 20, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1938, file: !1939, line: 30, column: 5)
!1960 = !DILocation(line: 31, column: 27, scope: !1959)
!1961 = !DILocation(line: 32, column: 56, scope: !1959)
!1962 = !DILocation(line: 32, column: 47, scope: !1959)
!1963 = !DILocation(line: 33, column: 22, scope: !1959)
!1964 = !DILocation(line: 34, column: 24, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1959, file: !1939, line: 34, column: 11)
!1966 = !DILocation(line: 34, column: 11, scope: !1959)
!1967 = !DILocation(line: 36, column: 29, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1965, file: !1939, line: 36, column: 16)
!1969 = !DILocation(line: 36, column: 16, scope: !1965)
!1970 = !DILocation(line: 37, column: 14, scope: !1968)
!1971 = distinct !{!1971, !1955, !1972}
!1972 = !DILocation(line: 40, column: 5, scope: !1938)
!1973 = !DILocation(line: 43, column: 1, scope: !1938)
!1974 = distinct !DISubprogram(name: "atof", scope: !1975, file: !1975, line: 25, type: !1976, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1979)
!1975 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!1978, !528}
!1978 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1979 = !{!1980}
!1980 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1974, file: !1975, line: 25, type: !528)
!1981 = !DILocation(line: 0, scope: !1974)
!1982 = !DILocation(line: 27, column: 10, scope: !1974)
!1983 = !DILocation(line: 27, column: 3, scope: !1974)
!1984 = distinct !DISubprogram(name: "strtoimax", scope: !1985, file: !1985, line: 324, type: !1986, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1992)
!1985 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!1988, !1745, !1991, !523}
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1989, line: 101, baseType: !1990)
!1989 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1797, line: 72, baseType: !656)
!1991 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !524)
!1992 = !{!1993, !1994, !1995}
!1993 = !DILocalVariable(name: "nptr", arg: 1, scope: !1984, file: !1985, line: 324, type: !1745)
!1994 = !DILocalVariable(name: "endptr", arg: 2, scope: !1984, file: !1985, line: 324, type: !1991)
!1995 = !DILocalVariable(name: "base", arg: 3, scope: !1984, file: !1985, line: 324, type: !523)
!1996 = !DILocation(line: 0, scope: !1984)
!1997 = !DILocation(line: 327, column: 10, scope: !1984)
!1998 = !DILocation(line: 327, column: 3, scope: !1984)
!1999 = distinct !DISubprogram(name: "strtoumax", scope: !1985, file: !1985, line: 336, type: !2000, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2004)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!2002, !1745, !1991, !523}
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1989, line: 102, baseType: !2003)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1797, line: 73, baseType: !654)
!2004 = !{!2005, !2006, !2007}
!2005 = !DILocalVariable(name: "nptr", arg: 1, scope: !1999, file: !1985, line: 336, type: !1745)
!2006 = !DILocalVariable(name: "endptr", arg: 2, scope: !1999, file: !1985, line: 336, type: !1991)
!2007 = !DILocalVariable(name: "base", arg: 3, scope: !1999, file: !1985, line: 336, type: !523)
!2008 = !DILocation(line: 0, scope: !1999)
!2009 = !DILocation(line: 339, column: 10, scope: !1999)
!2010 = !DILocation(line: 339, column: 3, scope: !1999)
!2011 = distinct !DISubprogram(name: "wcstoimax", scope: !1985, file: !1985, line: 348, type: !2012, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2021)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!1988, !2014, !2018, !523}
!2014 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2015)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2017)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1985, line: 34, baseType: !523)
!2018 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2019)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2021 = !{!2022, !2023, !2024}
!2022 = !DILocalVariable(name: "nptr", arg: 1, scope: !2011, file: !1985, line: 348, type: !2014)
!2023 = !DILocalVariable(name: "endptr", arg: 2, scope: !2011, file: !1985, line: 348, type: !2018)
!2024 = !DILocalVariable(name: "base", arg: 3, scope: !2011, file: !1985, line: 348, type: !523)
!2025 = !DILocation(line: 0, scope: !2011)
!2026 = !DILocation(line: 351, column: 10, scope: !2011)
!2027 = !DILocation(line: 351, column: 3, scope: !2011)
!2028 = distinct !DISubprogram(name: "wcstoumax", scope: !1985, file: !1985, line: 362, type: !2029, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!2002, !2014, !2018, !523}
!2031 = !{!2032, !2033, !2034}
!2032 = !DILocalVariable(name: "nptr", arg: 1, scope: !2028, file: !1985, line: 362, type: !2014)
!2033 = !DILocalVariable(name: "endptr", arg: 2, scope: !2028, file: !1985, line: 362, type: !2018)
!2034 = !DILocalVariable(name: "base", arg: 3, scope: !2028, file: !1985, line: 362, type: !523)
!2035 = !DILocation(line: 0, scope: !2028)
!2036 = !DILocation(line: 365, column: 10, scope: !2028)
!2037 = !DILocation(line: 365, column: 3, scope: !2028)
!2038 = distinct !DISubprogram(name: "stat", scope: !2039, file: !2039, line: 453, type: !2040, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2079)
!2039 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!523, !528, !2042}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2044, line: 46, size: 1152, elements: !2045)
!2044 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2045 = !{!2046, !2048, !2050, !2052, !2054, !2056, !2058, !2059, !2060, !2061, !2063, !2065, !2073, !2074, !2075}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2043, file: !2044, line: 48, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1797, line: 145, baseType: !654)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2043, file: !2044, line: 53, baseType: !2049, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1797, line: 148, baseType: !654)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2043, file: !2044, line: 61, baseType: !2051, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1797, line: 151, baseType: !654)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2043, file: !2044, line: 62, baseType: !2053, size: 32, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1797, line: 150, baseType: !7)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2043, file: !2044, line: 64, baseType: !2055, size: 32, offset: 224)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1797, line: 146, baseType: !7)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2043, file: !2044, line: 65, baseType: !2057, size: 32, offset: 256)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1797, line: 147, baseType: !7)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2043, file: !2044, line: 67, baseType: !523, size: 32, offset: 288)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2043, file: !2044, line: 69, baseType: !2047, size: 64, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2043, file: !2044, line: 74, baseType: !1796, size: 64, offset: 384)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2043, file: !2044, line: 78, baseType: !2062, size: 64, offset: 448)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1797, line: 174, baseType: !656)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2043, file: !2044, line: 80, baseType: !2064, size: 64, offset: 512)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1797, line: 179, baseType: !656)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2043, file: !2044, line: 91, baseType: !2066, size: 128, offset: 576)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2067, line: 10, size: 128, elements: !2068)
!2067 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2068 = !{!2069, !2071}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2066, file: !2067, line: 12, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1797, line: 160, baseType: !656)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2066, file: !2067, line: 16, baseType: !2072, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1797, line: 196, baseType: !656)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2043, file: !2044, line: 92, baseType: !2066, size: 128, offset: 704)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2043, file: !2044, line: 93, baseType: !2066, size: 128, offset: 832)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2043, file: !2044, line: 106, baseType: !2076, size: 192, offset: 960)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2072, size: 192, elements: !2077)
!2077 = !{!2078}
!2078 = !DISubrange(count: 3)
!2079 = !{!2080, !2081}
!2080 = !DILocalVariable(name: "__path", arg: 1, scope: !2038, file: !2039, line: 453, type: !528)
!2081 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2038, file: !2039, line: 453, type: !2042)
!2082 = !DILocation(line: 0, scope: !2038)
!2083 = !DILocation(line: 455, column: 10, scope: !2038)
!2084 = !DILocation(line: 455, column: 3, scope: !2038)
!2085 = distinct !DISubprogram(name: "lstat", scope: !2039, file: !2039, line: 460, type: !2040, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2086)
!2086 = !{!2087, !2088}
!2087 = !DILocalVariable(name: "__path", arg: 1, scope: !2085, file: !2039, line: 460, type: !528)
!2088 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2085, file: !2039, line: 460, type: !2042)
!2089 = !DILocation(line: 0, scope: !2085)
!2090 = !DILocation(line: 462, column: 10, scope: !2085)
!2091 = !DILocation(line: 462, column: 3, scope: !2085)
!2092 = distinct !DISubprogram(name: "fstat", scope: !2039, file: !2039, line: 467, type: !2093, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2095)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!523, !523, !2042}
!2095 = !{!2096, !2097}
!2096 = !DILocalVariable(name: "__fd", arg: 1, scope: !2092, file: !2039, line: 467, type: !523)
!2097 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2092, file: !2039, line: 467, type: !2042)
!2098 = !DILocation(line: 0, scope: !2092)
!2099 = !DILocation(line: 469, column: 10, scope: !2092)
!2100 = !DILocation(line: 469, column: 3, scope: !2092)
!2101 = distinct !DISubprogram(name: "fstatat", scope: !2039, file: !2039, line: 474, type: !2102, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2104)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!523, !523, !528, !2042, !523}
!2104 = !{!2105, !2106, !2107, !2108}
!2105 = !DILocalVariable(name: "__fd", arg: 1, scope: !2101, file: !2039, line: 474, type: !523)
!2106 = !DILocalVariable(name: "__filename", arg: 2, scope: !2101, file: !2039, line: 474, type: !528)
!2107 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2101, file: !2039, line: 474, type: !2042)
!2108 = !DILocalVariable(name: "__flag", arg: 4, scope: !2101, file: !2039, line: 474, type: !523)
!2109 = !DILocation(line: 0, scope: !2101)
!2110 = !DILocation(line: 477, column: 10, scope: !2101)
!2111 = !DILocation(line: 477, column: 3, scope: !2101)
!2112 = distinct !DISubprogram(name: "mknod", scope: !2039, file: !2039, line: 483, type: !2113, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!523, !528, !2053, !2047}
!2115 = !{!2116, !2117, !2118}
!2116 = !DILocalVariable(name: "__path", arg: 1, scope: !2112, file: !2039, line: 483, type: !528)
!2117 = !DILocalVariable(name: "__mode", arg: 2, scope: !2112, file: !2039, line: 483, type: !2053)
!2118 = !DILocalVariable(name: "__dev", arg: 3, scope: !2112, file: !2039, line: 483, type: !2047)
!2119 = !DILocation(line: 0, scope: !2112)
!2120 = !DILocation(line: 485, column: 10, scope: !2112)
!2121 = !DILocation(line: 485, column: 3, scope: !2112)
!2122 = distinct !DISubprogram(name: "mknodat", scope: !2039, file: !2039, line: 491, type: !2123, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!523, !523, !528, !2053, !2047}
!2125 = !{!2126, !2127, !2128, !2129}
!2126 = !DILocalVariable(name: "__fd", arg: 1, scope: !2122, file: !2039, line: 491, type: !523)
!2127 = !DILocalVariable(name: "__path", arg: 2, scope: !2122, file: !2039, line: 491, type: !528)
!2128 = !DILocalVariable(name: "__mode", arg: 3, scope: !2122, file: !2039, line: 491, type: !2053)
!2129 = !DILocalVariable(name: "__dev", arg: 4, scope: !2122, file: !2039, line: 491, type: !2047)
!2130 = !DILocation(line: 0, scope: !2122)
!2131 = !DILocation(line: 494, column: 10, scope: !2122)
!2132 = !DILocation(line: 494, column: 3, scope: !2122)
!2133 = distinct !DISubprogram(name: "stat64", scope: !2039, file: !2039, line: 502, type: !2134, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2156)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!523, !528, !2136}
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2044, line: 119, size: 1152, elements: !2138)
!2138 = !{!2139, !2140, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2152, !2153, !2154, !2155}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2137, file: !2044, line: 121, baseType: !2047, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2137, file: !2044, line: 123, baseType: !2141, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1797, line: 149, baseType: !654)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2137, file: !2044, line: 124, baseType: !2051, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2137, file: !2044, line: 125, baseType: !2053, size: 32, offset: 192)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2137, file: !2044, line: 132, baseType: !2055, size: 32, offset: 224)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2137, file: !2044, line: 133, baseType: !2057, size: 32, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2137, file: !2044, line: 135, baseType: !523, size: 32, offset: 288)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2137, file: !2044, line: 136, baseType: !2047, size: 64, offset: 320)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2137, file: !2044, line: 137, baseType: !1796, size: 64, offset: 384)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2137, file: !2044, line: 143, baseType: !2062, size: 64, offset: 448)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2137, file: !2044, line: 144, baseType: !2151, size: 64, offset: 512)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1797, line: 180, baseType: !656)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2137, file: !2044, line: 152, baseType: !2066, size: 128, offset: 576)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2137, file: !2044, line: 153, baseType: !2066, size: 128, offset: 704)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2137, file: !2044, line: 154, baseType: !2066, size: 128, offset: 832)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2137, file: !2044, line: 164, baseType: !2076, size: 192, offset: 960)
!2156 = !{!2157, !2158}
!2157 = !DILocalVariable(name: "__path", arg: 1, scope: !2133, file: !2039, line: 502, type: !528)
!2158 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2133, file: !2039, line: 502, type: !2136)
!2159 = !DILocation(line: 0, scope: !2133)
!2160 = !DILocation(line: 504, column: 10, scope: !2133)
!2161 = !DILocation(line: 504, column: 3, scope: !2133)
!2162 = distinct !DISubprogram(name: "lstat64", scope: !2039, file: !2039, line: 509, type: !2134, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2163)
!2163 = !{!2164, !2165}
!2164 = !DILocalVariable(name: "__path", arg: 1, scope: !2162, file: !2039, line: 509, type: !528)
!2165 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2162, file: !2039, line: 509, type: !2136)
!2166 = !DILocation(line: 0, scope: !2162)
!2167 = !DILocation(line: 511, column: 10, scope: !2162)
!2168 = !DILocation(line: 511, column: 3, scope: !2162)
!2169 = distinct !DISubprogram(name: "fstat64", scope: !2039, file: !2039, line: 516, type: !2170, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!523, !523, !2136}
!2172 = !{!2173, !2174}
!2173 = !DILocalVariable(name: "__fd", arg: 1, scope: !2169, file: !2039, line: 516, type: !523)
!2174 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2169, file: !2039, line: 516, type: !2136)
!2175 = !DILocation(line: 0, scope: !2169)
!2176 = !DILocation(line: 518, column: 10, scope: !2169)
!2177 = !DILocation(line: 518, column: 3, scope: !2169)
!2178 = distinct !DISubprogram(name: "fstatat64", scope: !2039, file: !2039, line: 523, type: !2179, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!523, !523, !528, !2136, !523}
!2181 = !{!2182, !2183, !2184, !2185}
!2182 = !DILocalVariable(name: "__fd", arg: 1, scope: !2178, file: !2039, line: 523, type: !523)
!2183 = !DILocalVariable(name: "__filename", arg: 2, scope: !2178, file: !2039, line: 523, type: !528)
!2184 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2178, file: !2039, line: 523, type: !2136)
!2185 = !DILocalVariable(name: "__flag", arg: 4, scope: !2178, file: !2039, line: 523, type: !523)
!2186 = !DILocation(line: 0, scope: !2178)
!2187 = !DILocation(line: 526, column: 10, scope: !2178)
!2188 = !DILocation(line: 526, column: 3, scope: !2178)
!2189 = distinct !DISubprogram(name: "reset_inline_failed", scope: !3, file: !3, line: 87, type: !2190, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2395)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{null, !2192}
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !250, line: 181, size: 2496, elements: !2194)
!2194 = !{!2195, !2196, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2310, !2332, !2342, !2346, !2372, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2193, file: !250, line: 182, baseType: !601, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !2193, file: !250, line: 183, baseType: !2197, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !250, line: 314, size: 768, elements: !2199)
!2199 = !{!2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2211, !2212, !2213, !2214, !2215, !2216, !2217}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2198, file: !250, line: 316, baseType: !1514, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2198, file: !250, line: 317, baseType: !2192, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !2198, file: !250, line: 318, baseType: !2192, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !2198, file: !250, line: 319, baseType: !2197, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !2198, file: !250, line: 320, baseType: !2197, size: 64, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !2198, file: !250, line: 321, baseType: !2197, size: 64, offset: 320)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !2198, file: !250, line: 322, baseType: !2197, size: 64, offset: 384)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !2198, file: !250, line: 323, baseType: !590, size: 64, offset: 448)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2198, file: !250, line: 324, baseType: !527, size: 64, offset: 512)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !2198, file: !250, line: 327, baseType: !2210, size: 32, offset: 576)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !250, line: 312, baseType: !249)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !2198, file: !250, line: 330, baseType: !7, size: 32, offset: 608)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2198, file: !250, line: 334, baseType: !523, size: 32, offset: 640)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2198, file: !250, line: 336, baseType: !523, size: 32, offset: 672)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !2198, file: !250, line: 338, baseType: !1799, size: 16, offset: 704)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !2198, file: !250, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !2198, file: !250, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !2198, file: !250, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !2193, file: !250, line: 184, baseType: !2197, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2193, file: !250, line: 185, baseType: !2192, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !2193, file: !250, line: 186, baseType: !2192, size: 64, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2193, file: !250, line: 188, baseType: !2192, size: 64, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2193, file: !250, line: 190, baseType: !2192, size: 64, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !2193, file: !250, line: 192, baseType: !2192, size: 64, offset: 448)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2193, file: !250, line: 194, baseType: !2192, size: 64, offset: 512)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !2193, file: !250, line: 196, baseType: !2192, size: 64, offset: 576)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !2193, file: !250, line: 197, baseType: !2192, size: 64, offset: 640)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !2193, file: !250, line: 198, baseType: !2192, size: 64, offset: 704)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !2193, file: !250, line: 199, baseType: !2192, size: 64, offset: 768)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !2193, file: !250, line: 202, baseType: !2192, size: 64, offset: 832)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !2193, file: !250, line: 204, baseType: !2192, size: 64, offset: 896)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !2193, file: !250, line: 207, baseType: !885, size: 64, offset: 960)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2193, file: !250, line: 209, baseType: !527, size: 64, offset: 1024)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !2193, file: !250, line: 214, baseType: !2234, size: 64, offset: 1088)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !841, line: 177, baseType: !2236)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !841, line: 177, size: 128, elements: !2237)
!2237 = !{!2238}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2236, file: !841, line: 177, baseType: !2239, size: 128)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !841, line: 176, baseType: !2240)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !841, line: 176, size: 128, elements: !2241)
!2241 = !{!2242, !2243, !2244}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2240, file: !841, line: 176, baseType: !7, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2240, file: !841, line: 176, baseType: !7, size: 32, offset: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2240, file: !841, line: 176, baseType: !2245, size: 64, offset: 64)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2246, size: 64, elements: !683)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !841, line: 174, baseType: !2247)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !273, line: 173, size: 1152, elements: !2249)
!2249 = !{!2250, !2251, !2255, !2278, !2279, !2281, !2286, !2287, !2291}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2248, file: !273, line: 175, baseType: !1712, size: 640)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !2248, file: !273, line: 179, baseType: !2252, size: 64, offset: 640)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{null}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !2248, file: !273, line: 182, baseType: !2256, size: 64, offset: 704)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !2259}
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !250, line: 276, size: 192, elements: !2261)
!2261 = !{!2262, !2263, !2277}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !2260, file: !250, line: 278, baseType: !885, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2260, file: !250, line: 279, baseType: !2264, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !250, line: 272, baseType: !2266)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !250, line: 272, size: 128, elements: !2267)
!2267 = !{!2268}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2266, file: !250, line: 272, baseType: !2269, size: 128)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !250, line: 270, baseType: !2270)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !250, line: 270, size: 128, elements: !2271)
!2271 = !{!2272, !2273, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2270, file: !250, line: 270, baseType: !7, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2270, file: !250, line: 270, baseType: !7, size: 32, offset: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2270, file: !250, line: 270, baseType: !2275, size: 64, offset: 64)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2276, size: 64, elements: !683)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !250, line: 268, baseType: !2192)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2260, file: !250, line: 280, baseType: !527, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !2248, file: !273, line: 187, baseType: !2252, size: 64, offset: 768)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !2248, file: !273, line: 188, baseType: !2280, size: 64, offset: 832)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !2248, file: !273, line: 191, baseType: !2282, size: 64, offset: 896)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !2192, !2285}
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !2248, file: !273, line: 195, baseType: !7, size: 32, offset: 960)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !2248, file: !273, line: 196, baseType: !2288, size: 64, offset: 1024)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!7, !2192}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !2248, file: !273, line: 197, baseType: !2292, size: 64, offset: 1088)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{null, !2295}
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !250, line: 358, size: 320, elements: !2297)
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2296, file: !250, line: 359, baseType: !601, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2296, file: !250, line: 361, baseType: !2295, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2296, file: !250, line: 363, baseType: !2295, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !2296, file: !250, line: 366, baseType: !2295, size: 64, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2296, file: !250, line: 368, baseType: !523, size: 32, offset: 256)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2296, file: !250, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !2296, file: !250, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2296, file: !250, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2296, file: !250, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !2296, file: !250, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2296, file: !250, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2296, file: !250, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2193, file: !250, line: 216, baseType: !2311, size: 320, offset: 1152)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !250, line: 88, size: 320, elements: !2312)
!2312 = !{!2313, !2316, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !2311, file: !250, line: 90, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !250, line: 51, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !2311, file: !250, line: 92, baseType: !2317, size: 192, offset: 64)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !250, line: 57, size: 192, elements: !2318)
!2318 = !{!2319, !2320, !2321, !2322, !2323}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !2317, file: !250, line: 60, baseType: !656, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !2317, file: !250, line: 63, baseType: !523, size: 32, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !2317, file: !250, line: 65, baseType: !523, size: 32, offset: 96)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !2317, file: !250, line: 67, baseType: !523, size: 32, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !2317, file: !250, line: 69, baseType: !523, size: 32, offset: 160)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2311, file: !250, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2311, file: !250, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2311, file: !250, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !2311, file: !250, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2311, file: !250, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !2311, file: !250, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !2311, file: !250, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !2311, file: !250, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !2193, file: !250, line: 217, baseType: !2333, size: 320, offset: 1472)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !250, line: 126, size: 320, elements: !2334)
!2334 = !{!2335, !2336, !2337, !2338, !2339, !2340, !2341}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !2333, file: !250, line: 128, baseType: !656, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !2333, file: !250, line: 130, baseType: !656, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !2333, file: !250, line: 134, baseType: !2192, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2333, file: !250, line: 137, baseType: !523, size: 32, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2333, file: !250, line: 138, baseType: !523, size: 32, offset: 224)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !2333, file: !250, line: 141, baseType: !523, size: 32, offset: 256)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !2333, file: !250, line: 144, baseType: !522, size: 8, offset: 288)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2193, file: !250, line: 218, baseType: !2343, size: 32, offset: 1792)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !250, line: 150, size: 32, elements: !2344)
!2344 = !{!2345}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2343, file: !250, line: 151, baseType: !7, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !2193, file: !250, line: 219, baseType: !2347, size: 192, offset: 1856)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !250, line: 171, size: 192, elements: !2348)
!2348 = !{!2349, !2370, !2371}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2347, file: !250, line: 173, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !250, line: 169, baseType: !2352)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !250, line: 169, size: 128, elements: !2353)
!2353 = !{!2354}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2352, file: !250, line: 169, baseType: !2355, size: 128)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !250, line: 168, baseType: !2356)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !250, line: 168, size: 128, elements: !2357)
!2357 = !{!2358, !2359, !2360}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2356, file: !250, line: 168, baseType: !7, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2356, file: !250, line: 168, baseType: !7, size: 32, offset: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2356, file: !250, line: 168, baseType: !2361, size: 64, offset: 64)
!2361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2362, size: 64, elements: !683)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !250, line: 167, baseType: !2363)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !250, line: 156, size: 192, elements: !2365)
!2365 = !{!2366, !2367, !2368, !2369}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2364, file: !250, line: 159, baseType: !601, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2364, file: !250, line: 161, baseType: !601, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2364, file: !250, line: 163, baseType: !522, size: 8, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2364, file: !250, line: 165, baseType: !522, size: 8, offset: 136)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2347, file: !250, line: 174, baseType: !974, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2347, file: !250, line: 175, baseType: !974, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !2193, file: !250, line: 220, baseType: !2373, size: 256, offset: 2048)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !250, line: 74, size: 256, elements: !2374)
!2374 = !{!2375, !2376, !2377, !2378, !2379, !2380}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2373, file: !250, line: 76, baseType: !656, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2373, file: !250, line: 77, baseType: !656, size: 64, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2373, file: !250, line: 78, baseType: !601, size: 64, offset: 128)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2373, file: !250, line: 79, baseType: !522, size: 8, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2373, file: !250, line: 80, baseType: !522, size: 8, offset: 200)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2373, file: !250, line: 82, baseType: !522, size: 8, offset: 208)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2193, file: !250, line: 223, baseType: !1514, size: 64, offset: 2304)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2193, file: !250, line: 225, baseType: !523, size: 32, offset: 2368)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2193, file: !250, line: 227, baseType: !523, size: 32, offset: 2400)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2193, file: !250, line: 231, baseType: !523, size: 32, offset: 2432)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2193, file: !250, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !2193, file: !250, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !2193, file: !250, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !2193, file: !250, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !2193, file: !250, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2193, file: !250, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !2193, file: !250, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2193, file: !250, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !2193, file: !250, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !2193, file: !250, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2395 = !{!2396, !2397}
!2396 = !DILocalVariable(name: "node", arg: 1, scope: !2189, file: !3, line: 87, type: !2192)
!2397 = !DILocalVariable(name: "e", scope: !2189, file: !3, line: 89, type: !2197)
!2398 = !DILocation(line: 0, scope: !2189)
!2399 = !DILocation(line: 91, column: 18, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 91, column: 3)
!2401 = !DILocation(line: 0, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 94, column: 11)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 92, column: 5)
!2404 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 91, column: 3)
!2405 = !DILocation(line: 0, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 96, column: 16)
!2407 = !DILocation(line: 91, column: 8, scope: !2400)
!2408 = !DILocation(line: 0, scope: !2400)
!2409 = !DILocation(line: 91, column: 3, scope: !2400)
!2410 = !DILocation(line: 93, column: 10, scope: !2403)
!2411 = !DILocation(line: 93, column: 25, scope: !2403)
!2412 = !DILocation(line: 93, column: 36, scope: !2403)
!2413 = !DILocation(line: 94, column: 18, scope: !2402)
!2414 = !DILocation(line: 94, column: 12, scope: !2402)
!2415 = !DILocation(line: 94, column: 11, scope: !2403)
!2416 = !DILocation(line: 95, column: 5, scope: !2402)
!2417 = !DILocation(line: 95, column: 19, scope: !2402)
!2418 = !DILocation(line: 95, column: 2, scope: !2402)
!2419 = !DILocation(line: 96, column: 28, scope: !2406)
!2420 = !DILocation(line: 96, column: 16, scope: !2406)
!2421 = !DILocation(line: 96, column: 16, scope: !2402)
!2422 = !DILocation(line: 97, column: 5, scope: !2406)
!2423 = !DILocation(line: 97, column: 19, scope: !2406)
!2424 = !DILocation(line: 97, column: 2, scope: !2406)
!2425 = !DILocation(line: 98, column: 29, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2406, file: !3, line: 98, column: 16)
!2427 = !DILocation(line: 98, column: 17, scope: !2426)
!2428 = !DILocation(line: 98, column: 16, scope: !2406)
!2429 = !DILocation(line: 99, column: 5, scope: !2426)
!2430 = !DILocation(line: 99, column: 19, scope: !2426)
!2431 = !DILocation(line: 99, column: 2, scope: !2426)
!2432 = !DILocation(line: 100, column: 19, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 100, column: 16)
!2434 = !DILocation(line: 100, column: 16, scope: !2433)
!2435 = !DILocation(line: 0, scope: !2433)
!2436 = !DILocation(line: 100, column: 16, scope: !2426)
!2437 = !DILocation(line: 101, column: 19, scope: !2433)
!2438 = !DILocation(line: 101, column: 2, scope: !2433)
!2439 = !DILocation(line: 103, column: 19, scope: !2433)
!2440 = !DILocation(line: 91, column: 37, scope: !2404)
!2441 = !DILocation(line: 91, column: 3, scope: !2404)
!2442 = distinct !{!2442, !2409, !2443}
!2443 = !DILocation(line: 104, column: 5, scope: !2400)
!2444 = !DILocation(line: 105, column: 1, scope: !2189)
!2445 = distinct !DISubprogram(name: "compute_call_stmt_bb_frequency", scope: !3, file: !3, line: 110, type: !2446, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!523, !601, !851}
!2448 = !{!2449, !2450, !2451, !2452}
!2449 = !DILocalVariable(name: "decl", arg: 1, scope: !2445, file: !3, line: 110, type: !601)
!2450 = !DILocalVariable(name: "bb", arg: 2, scope: !2445, file: !3, line: 110, type: !851)
!2451 = !DILocalVariable(name: "entry_freq", scope: !2445, file: !3, line: 112, type: !523)
!2452 = !DILocalVariable(name: "freq", scope: !2445, file: !3, line: 114, type: !523)
!2453 = !DILocation(line: 0, scope: !2445)
!2454 = !DILocation(line: 112, column: 20, scope: !2445)
!2455 = !DILocation(line: 113, column: 41, scope: !2445)
!2456 = !DILocation(line: 116, column: 7, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 116, column: 7)
!2458 = !DILocation(line: 116, column: 65, scope: !2457)
!2459 = !DILocation(line: 116, column: 7, scope: !2445)
!2460 = !DILocation(line: 114, column: 18, scope: !2445)
!2461 = !DILocation(line: 119, column: 8, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 119, column: 7)
!2463 = !DILocation(line: 119, column: 7, scope: !2445)
!2464 = !DILocation(line: 122, column: 15, scope: !2445)
!2465 = !DILocation(line: 122, column: 34, scope: !2445)
!2466 = !DILocation(line: 123, column: 7, scope: !2445)
!2467 = !DILocation(line: 127, column: 1, scope: !2445)
!2468 = distinct !DISubprogram(name: "build_cgraph_edges", scope: !3, file: !3, line: 133, type: !1722, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2469)
!2469 = !{!2470, !2471, !2472, !2475, !2482, !2483, !2489, !2490, !2493, !2494, !2506, !2509, !2512}
!2470 = !DILocalVariable(name: "bb", scope: !2468, file: !3, line: 135, type: !851)
!2471 = !DILocalVariable(name: "node", scope: !2468, file: !3, line: 136, type: !2192)
!2472 = !DILocalVariable(name: "visited_nodes", scope: !2468, file: !3, line: 137, type: !2473)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_set_t", file: !6, line: 5199, flags: DIFlagFwdDecl)
!2475 = !DILocalVariable(name: "gsi", scope: !2468, file: !3, line: 138, type: !2476)
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !456, line: 265, baseType: !2477)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !456, line: 254, size: 192, elements: !2478)
!2478 = !{!2479, !2480, !2481}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2477, file: !456, line: 257, baseType: !585, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2477, file: !456, line: 263, baseType: !580, size: 64, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2477, file: !456, line: 264, baseType: !851, size: 64, offset: 128)
!2482 = !DILocalVariable(name: "step", scope: !2468, file: !3, line: 139, type: !601)
!2483 = !DILocalVariable(name: "stmt", scope: !2484, file: !3, line: 146, type: !590)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 145, column: 7)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 144, column: 5)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 144, column: 5)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 143, column: 3)
!2488 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 143, column: 3)
!2489 = !DILocalVariable(name: "decl", scope: !2484, file: !3, line: 147, type: !601)
!2490 = !DILocalVariable(name: "i", scope: !2491, file: !3, line: 151, type: !911)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 150, column: 4)
!2492 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 149, column: 6)
!2493 = !DILocalVariable(name: "n", scope: !2491, file: !3, line: 152, type: !911)
!2494 = !DILocalVariable(name: "wi", scope: !2495, file: !3, line: 165, type: !2496)
!2495 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 164, column: 4)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "walk_stmt_info", file: !456, line: 4652, size: 448, elements: !2497)
!2497 = !{!2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "gsi", scope: !2496, file: !456, line: 4655, baseType: !2476, size: 192)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2496, file: !456, line: 4659, baseType: !527, size: 64, offset: 192)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "pset", scope: !2496, file: !456, line: 4664, baseType: !2473, size: 64, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "val_only", scope: !2496, file: !456, line: 4678, baseType: !522, size: 8, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "is_lhs", scope: !2496, file: !456, line: 4681, baseType: !522, size: 8, offset: 328)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2496, file: !456, line: 4685, baseType: !522, size: 8, offset: 336)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "want_locations", scope: !2496, file: !456, line: 4688, baseType: !522, size: 8, offset: 344)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "callback_result", scope: !2496, file: !456, line: 4694, baseType: !601, size: 64, offset: 384)
!2506 = !DILocalVariable(name: "fn", scope: !2507, file: !3, line: 173, type: !601)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 172, column: 8)
!2508 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 170, column: 10)
!2509 = !DILocalVariable(name: "fn", scope: !2510, file: !3, line: 178, type: !601)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 177, column: 8)
!2511 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 176, column: 10)
!2512 = !DILocalVariable(name: "decl", scope: !2513, file: !3, line: 193, type: !601)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 192, column: 5)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 189, column: 3)
!2515 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 189, column: 3)
!2516 = !DILocation(line: 136, column: 43, scope: !2468)
!2517 = !DILocation(line: 136, column: 30, scope: !2468)
!2518 = !DILocation(line: 0, scope: !2468)
!2519 = !DILocation(line: 137, column: 41, scope: !2468)
!2520 = !DILocation(line: 138, column: 3, scope: !2468)
!2521 = !DILocation(line: 143, column: 3, scope: !2488)
!2522 = !DILocation(line: 0, scope: !2486)
!2523 = !DILocation(line: 0, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 156, column: 6)
!2525 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 156, column: 6)
!2526 = !DILocation(line: 0, scope: !2495)
!2527 = !DILocation(line: 143, column: 3, scope: !2487)
!2528 = !DILocation(line: 0, scope: !2488)
!2529 = !DILocation(line: 144, column: 16, scope: !2486)
!2530 = !DILocation(line: 0, scope: !2491)
!2531 = !DILocation(line: 144, column: 10, scope: !2486)
!2532 = !DILocation(line: 144, column: 36, scope: !2485)
!2533 = !DILocation(line: 144, column: 35, scope: !2485)
!2534 = !DILocation(line: 144, column: 5, scope: !2486)
!2535 = !DILocation(line: 146, column: 16, scope: !2484)
!2536 = !DILocation(line: 0, scope: !2484)
!2537 = !DILocation(line: 149, column: 6, scope: !2492)
!2538 = !DILocation(line: 149, column: 28, scope: !2492)
!2539 = !DILocation(line: 149, column: 39, scope: !2492)
!2540 = !DILocation(line: 149, column: 37, scope: !2492)
!2541 = !DILocation(line: 149, column: 6, scope: !2484)
!2542 = !DILocation(line: 152, column: 17, scope: !2491)
!2543 = !DILocation(line: 153, column: 32, scope: !2491)
!2544 = !DILocation(line: 154, column: 9, scope: !2491)
!2545 = !DILocation(line: 154, column: 48, scope: !2491)
!2546 = !DILocation(line: 154, column: 16, scope: !2491)
!2547 = !DILocation(line: 155, column: 9, scope: !2491)
!2548 = !DILocation(line: 153, column: 6, scope: !2491)
!2549 = !DILocation(line: 156, column: 11, scope: !2525)
!2550 = !DILocation(line: 0, scope: !2525)
!2551 = !DILocation(line: 156, column: 20, scope: !2524)
!2552 = !DILocation(line: 156, column: 6, scope: !2525)
!2553 = !DILocation(line: 157, column: 8, scope: !2524)
!2554 = !DILocation(line: 156, column: 26, scope: !2524)
!2555 = !DILocation(line: 156, column: 6, scope: !2524)
!2556 = distinct !{!2556, !2552, !2557}
!2557 = !DILocation(line: 157, column: 8, scope: !2525)
!2558 = !DILocation(line: 159, column: 10, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 159, column: 10)
!2560 = !DILocation(line: 159, column: 10, scope: !2491)
!2561 = !DILocation(line: 160, column: 8, scope: !2559)
!2562 = !DILocation(line: 165, column: 6, scope: !2495)
!2563 = !DILocation(line: 166, column: 6, scope: !2495)
!2564 = !DILocation(line: 167, column: 14, scope: !2495)
!2565 = !DILocation(line: 168, column: 14, scope: !2495)
!2566 = !DILocation(line: 169, column: 6, scope: !2495)
!2567 = !DILocation(line: 170, column: 10, scope: !2508)
!2568 = !DILocation(line: 170, column: 29, scope: !2508)
!2569 = !DILocation(line: 171, column: 3, scope: !2508)
!2570 = !DILocation(line: 171, column: 6, scope: !2508)
!2571 = !DILocation(line: 170, column: 10, scope: !2495)
!2572 = !DILocation(line: 173, column: 13, scope: !2507)
!2573 = !DILocation(line: 0, scope: !2507)
!2574 = !DILocation(line: 174, column: 28, scope: !2507)
!2575 = !DILocation(line: 174, column: 3, scope: !2507)
!2576 = !DILocation(line: 175, column: 8, scope: !2507)
!2577 = !DILocation(line: 176, column: 10, scope: !2511)
!2578 = !DILocation(line: 176, column: 29, scope: !2511)
!2579 = !DILocation(line: 176, column: 10, scope: !2495)
!2580 = !DILocation(line: 178, column: 13, scope: !2510)
!2581 = !DILocation(line: 0, scope: !2510)
!2582 = !DILocation(line: 179, column: 7, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 179, column: 7)
!2584 = !DILocation(line: 179, column: 7, scope: !2510)
!2585 = !DILocation(line: 180, column: 30, scope: !2583)
!2586 = !DILocation(line: 180, column: 5, scope: !2583)
!2587 = !DILocation(line: 181, column: 8, scope: !2510)
!2588 = !DILocation(line: 182, column: 7, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 182, column: 7)
!2590 = !DILocation(line: 182, column: 7, scope: !2510)
!2591 = !DILocation(line: 183, column: 30, scope: !2589)
!2592 = !DILocation(line: 183, column: 5, scope: !2589)
!2593 = !DILocation(line: 185, column: 4, scope: !2492)
!2594 = !DILocation(line: 144, column: 53, scope: !2485)
!2595 = !DILocation(line: 144, column: 5, scope: !2485)
!2596 = distinct !{!2596, !2534, !2597}
!2597 = !DILocation(line: 186, column: 7, scope: !2486)
!2598 = !DILocation(line: 0, scope: !2487)
!2599 = distinct !{!2599, !2521, !2600}
!2600 = !DILocation(line: 186, column: 7, scope: !2488)
!2601 = !DILocation(line: 189, column: 21, scope: !2515)
!2602 = !DILocation(line: 189, column: 8, scope: !2515)
!2603 = !DILocation(line: 0, scope: !2515)
!2604 = !DILocation(line: 189, column: 3, scope: !2515)
!2605 = !DILocation(line: 193, column: 19, scope: !2513)
!2606 = !DILocation(line: 0, scope: !2513)
!2607 = !DILocation(line: 194, column: 11, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 194, column: 11)
!2609 = !DILocation(line: 194, column: 28, scope: !2608)
!2610 = !DILocation(line: 195, column: 4, scope: !2608)
!2611 = !DILocation(line: 195, column: 8, scope: !2608)
!2612 = !DILocation(line: 195, column: 27, scope: !2608)
!2613 = !DILocation(line: 195, column: 31, scope: !2608)
!2614 = !DILocation(line: 194, column: 11, scope: !2513)
!2615 = !DILocation(line: 196, column: 2, scope: !2608)
!2616 = !DILocation(line: 197, column: 45, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 197, column: 16)
!2618 = !DILocation(line: 197, column: 48, scope: !2617)
!2619 = !DILocation(line: 197, column: 16, scope: !2608)
!2620 = !DILocation(line: 198, column: 2, scope: !2617)
!2621 = !DILocation(line: 191, column: 15, scope: !2514)
!2622 = !DILocation(line: 189, column: 3, scope: !2514)
!2623 = distinct !{!2623, !2604, !2624}
!2624 = !DILocation(line: 199, column: 5, scope: !2515)
!2625 = !DILocation(line: 201, column: 3, scope: !2468)
!2626 = !DILocation(line: 203, column: 1, scope: !2468)
!2627 = !DILocation(line: 202, column: 3, scope: !2468)
!2628 = distinct !DISubprogram(name: "record_references_in_initializer", scope: !3, file: !3, line: 229, type: !2629, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{null, !601, !522}
!2631 = !{!2632, !2633, !2634}
!2632 = !DILocalVariable(name: "decl", arg: 1, scope: !2628, file: !3, line: 229, type: !601)
!2633 = !DILocalVariable(name: "only_vars", arg: 2, scope: !2628, file: !3, line: 229, type: !522)
!2634 = !DILocalVariable(name: "visited_nodes", scope: !2628, file: !3, line: 231, type: !2473)
!2635 = !DILocation(line: 0, scope: !2628)
!2636 = !DILocation(line: 231, column: 41, scope: !2628)
!2637 = !DILocation(line: 232, column: 3, scope: !2628)
!2638 = !DILocation(line: 234, column: 3, scope: !2628)
!2639 = !DILocation(line: 235, column: 1, scope: !2628)
!2640 = distinct !DISubprogram(name: "record_reference", scope: !3, file: !3, line: 41, type: !2641, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2644)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!601, !1060, !2643, !527}
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!2644 = !{!2645, !2646, !2647, !2648, !2649, !2650}
!2645 = !DILocalVariable(name: "tp", arg: 1, scope: !2640, file: !3, line: 41, type: !1060)
!2646 = !DILocalVariable(name: "walk_subtrees", arg: 2, scope: !2640, file: !3, line: 41, type: !2643)
!2647 = !DILocalVariable(name: "data", arg: 3, scope: !2640, file: !3, line: 41, type: !527)
!2648 = !DILocalVariable(name: "t", scope: !2640, file: !3, line: 43, type: !601)
!2649 = !DILocalVariable(name: "decl", scope: !2640, file: !3, line: 44, type: !601)
!2650 = !DILocalVariable(name: "do_callgraph", scope: !2640, file: !3, line: 45, type: !522)
!2651 = !DILocation(line: 0, scope: !2640)
!2652 = !DILocation(line: 43, column: 12, scope: !2640)
!2653 = !DILocation(line: 47, column: 11, scope: !2640)
!2654 = !DILocation(line: 47, column: 3, scope: !2640)
!2655 = !DILocation(line: 50, column: 11, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 50, column: 11)
!2657 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 48, column: 5)
!2658 = !DILocation(line: 50, column: 27, scope: !2656)
!2659 = !DILocation(line: 50, column: 30, scope: !2656)
!2660 = !DILocation(line: 50, column: 11, scope: !2657)
!2661 = !DILocation(line: 52, column: 30, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 51, column: 2)
!2663 = !DILocation(line: 52, column: 4, scope: !2662)
!2664 = !DILocation(line: 53, column: 29, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 53, column: 8)
!2666 = !DILocation(line: 53, column: 8, scope: !2665)
!2667 = !DILocation(line: 53, column: 8, scope: !2662)
!2668 = !DILocation(line: 54, column: 13, scope: !2665)
!2669 = !DILocation(line: 54, column: 6, scope: !2665)
!2670 = !DILocation(line: 45, column: 28, scope: !2640)
!2671 = !DILocation(line: 62, column: 14, scope: !2657)
!2672 = !DILocation(line: 63, column: 11, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 63, column: 11)
!2674 = !DILocation(line: 63, column: 28, scope: !2673)
!2675 = !DILocation(line: 63, column: 45, scope: !2673)
!2676 = !DILocation(line: 64, column: 34, scope: !2673)
!2677 = !DILocation(line: 64, column: 2, scope: !2673)
!2678 = !DILocation(line: 70, column: 11, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 70, column: 11)
!2680 = !DILocation(line: 70, column: 11, scope: !2657)
!2681 = !DILocation(line: 72, column: 19, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 71, column: 2)
!2683 = !DILocation(line: 73, column: 4, scope: !2682)
!2684 = !DILocation(line: 76, column: 40, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 76, column: 11)
!2686 = !DILocation(line: 76, column: 11, scope: !2657)
!2687 = !DILocation(line: 77, column: 30, scope: !2685)
!2688 = !DILocation(line: 77, column: 9, scope: !2685)
!2689 = !DILocation(line: 77, column: 2, scope: !2685)
!2690 = !DILocation(line: 82, column: 1, scope: !2640)
!2691 = distinct !DISubprogram(name: "rebuild_cgraph_edges", scope: !3, file: !3, line: 241, type: !1722, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2692)
!2692 = !{!2693, !2694, !2695, !2696, !2702}
!2693 = !DILocalVariable(name: "bb", scope: !2691, file: !3, line: 243, type: !851)
!2694 = !DILocalVariable(name: "node", scope: !2691, file: !3, line: 244, type: !2192)
!2695 = !DILocalVariable(name: "gsi", scope: !2691, file: !3, line: 245, type: !2476)
!2696 = !DILocalVariable(name: "stmt", scope: !2697, file: !3, line: 254, type: !590)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 253, column: 7)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 252, column: 5)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 252, column: 5)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 251, column: 3)
!2701 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 251, column: 3)
!2702 = !DILocalVariable(name: "decl", scope: !2697, file: !3, line: 255, type: !601)
!2703 = !DILocation(line: 244, column: 43, scope: !2691)
!2704 = !DILocation(line: 244, column: 30, scope: !2691)
!2705 = !DILocation(line: 0, scope: !2691)
!2706 = !DILocation(line: 245, column: 3, scope: !2691)
!2707 = !DILocation(line: 247, column: 3, scope: !2691)
!2708 = !DILocation(line: 249, column: 17, scope: !2691)
!2709 = !DILocation(line: 249, column: 34, scope: !2691)
!2710 = !DILocation(line: 249, column: 9, scope: !2691)
!2711 = !DILocation(line: 249, column: 15, scope: !2691)
!2712 = !DILocation(line: 251, column: 3, scope: !2701)
!2713 = !DILocation(line: 0, scope: !2699)
!2714 = !DILocation(line: 251, column: 3, scope: !2700)
!2715 = !DILocation(line: 0, scope: !2701)
!2716 = !DILocation(line: 252, column: 16, scope: !2699)
!2717 = !DILocation(line: 0, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 257, column: 6)
!2719 = !DILocation(line: 252, column: 10, scope: !2699)
!2720 = !DILocation(line: 252, column: 36, scope: !2698)
!2721 = !DILocation(line: 252, column: 35, scope: !2698)
!2722 = !DILocation(line: 252, column: 5, scope: !2699)
!2723 = !DILocation(line: 254, column: 16, scope: !2697)
!2724 = !DILocation(line: 0, scope: !2697)
!2725 = !DILocation(line: 257, column: 6, scope: !2718)
!2726 = !DILocation(line: 257, column: 28, scope: !2718)
!2727 = !DILocation(line: 257, column: 39, scope: !2718)
!2728 = !DILocation(line: 257, column: 37, scope: !2718)
!2729 = !DILocation(line: 257, column: 6, scope: !2697)
!2730 = !DILocation(line: 258, column: 30, scope: !2718)
!2731 = !DILocation(line: 259, column: 14, scope: !2718)
!2732 = !DILocation(line: 261, column: 13, scope: !2718)
!2733 = !DILocation(line: 260, column: 10, scope: !2718)
!2734 = !DILocation(line: 262, column: 14, scope: !2718)
!2735 = !DILocation(line: 258, column: 4, scope: !2718)
!2736 = !DILocation(line: 252, column: 53, scope: !2698)
!2737 = !DILocation(line: 252, column: 5, scope: !2698)
!2738 = distinct !{!2738, !2722, !2739}
!2739 = !DILocation(line: 264, column: 7, scope: !2699)
!2740 = !DILocation(line: 0, scope: !2700)
!2741 = distinct !{!2741, !2712, !2742}
!2742 = !DILocation(line: 264, column: 7, scope: !2701)
!2743 = !DILocation(line: 265, column: 3, scope: !2691)
!2744 = !DILocation(line: 268, column: 1, scope: !2691)
!2745 = !DILocation(line: 267, column: 3, scope: !2691)
!2746 = distinct !DISubprogram(name: "gsi_start_bb", scope: !456, file: !456, line: 4418, type: !2747, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!2476, !851}
!2749 = !{!2750, !2751, !2752}
!2750 = !DILocalVariable(name: "bb", arg: 1, scope: !2746, file: !456, line: 4418, type: !851)
!2751 = !DILocalVariable(name: "i", scope: !2746, file: !456, line: 4420, type: !2476)
!2752 = !DILocalVariable(name: "seq", scope: !2746, file: !456, line: 4421, type: !580)
!2753 = !DILocation(line: 0, scope: !2746)
!2754 = !DILocation(line: 4420, column: 24, scope: !2746)
!2755 = !DILocation(line: 4423, column: 9, scope: !2746)
!2756 = !DILocation(line: 4424, column: 11, scope: !2746)
!2757 = !DILocation(line: 4424, column: 5, scope: !2746)
!2758 = !DILocation(line: 4424, column: 9, scope: !2746)
!2759 = !DILocation(line: 4425, column: 5, scope: !2746)
!2760 = !DILocation(line: 4425, column: 9, scope: !2746)
!2761 = !DILocation(line: 4426, column: 5, scope: !2746)
!2762 = !DILocation(line: 4426, column: 8, scope: !2746)
!2763 = !DILocation(line: 4429, column: 1, scope: !2746)
!2764 = distinct !DISubprogram(name: "gsi_end_p", scope: !456, file: !456, line: 4467, type: !2765, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!522, !2476}
!2767 = !{!2768}
!2768 = !DILocalVariable(name: "i", arg: 1, scope: !2764, file: !456, line: 4467, type: !2476)
!2769 = !DILocation(line: 4467, column: 33, scope: !2764)
!2770 = !DILocation(line: 4469, column: 12, scope: !2764)
!2771 = !DILocation(line: 4469, column: 16, scope: !2764)
!2772 = !DILocation(line: 4469, column: 10, scope: !2764)
!2773 = !DILocation(line: 4469, column: 3, scope: !2764)
!2774 = distinct !DISubprogram(name: "gsi_stmt", scope: !456, file: !456, line: 4501, type: !2775, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!590, !2476}
!2777 = !{!2778}
!2778 = !DILocalVariable(name: "i", arg: 1, scope: !2774, file: !456, line: 4501, type: !2476)
!2779 = !DILocation(line: 4501, column: 32, scope: !2774)
!2780 = !DILocation(line: 4503, column: 12, scope: !2774)
!2781 = !DILocation(line: 4503, column: 17, scope: !2774)
!2782 = !DILocation(line: 4503, column: 3, scope: !2774)
!2783 = distinct !DISubprogram(name: "is_gimple_call", scope: !456, file: !456, line: 1870, type: !2784, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2787)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!522, !2786}
!2786 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !570, line: 60, baseType: !1704)
!2787 = !{!2788}
!2788 = !DILocalVariable(name: "gs", arg: 1, scope: !2783, file: !456, line: 1870, type: !2786)
!2789 = !DILocation(line: 0, scope: !2783)
!2790 = !DILocation(line: 1872, column: 10, scope: !2783)
!2791 = !DILocation(line: 1872, column: 27, scope: !2783)
!2792 = !DILocation(line: 1872, column: 3, scope: !2783)
!2793 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !456, file: !456, line: 1954, type: !2794, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!601, !2786}
!2796 = !{!2797, !2798}
!2797 = !DILocalVariable(name: "gs", arg: 1, scope: !2793, file: !456, line: 1954, type: !2786)
!2798 = !DILocalVariable(name: "addr", scope: !2793, file: !456, line: 1956, type: !601)
!2799 = !DILocation(line: 0, scope: !2793)
!2800 = !DILocation(line: 1956, column: 15, scope: !2793)
!2801 = !DILocation(line: 1957, column: 7, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2793, file: !456, line: 1957, column: 7)
!2803 = !DILocation(line: 1957, column: 24, scope: !2802)
!2804 = !DILocation(line: 1957, column: 7, scope: !2793)
!2805 = !DILocation(line: 1958, column: 12, scope: !2802)
!2806 = !DILocation(line: 1958, column: 5, scope: !2802)
!2807 = !DILocation(line: 1960, column: 1, scope: !2793)
!2808 = distinct !DISubprogram(name: "gsi_next", scope: !456, file: !456, line: 4485, type: !2809, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2812)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !2811}
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2812 = !{!2813}
!2813 = !DILocalVariable(name: "i", arg: 1, scope: !2808, file: !456, line: 4485, type: !2811)
!2814 = !DILocation(line: 0, scope: !2808)
!2815 = !DILocation(line: 4487, column: 15, scope: !2808)
!2816 = !DILocation(line: 4487, column: 20, scope: !2808)
!2817 = !DILocation(line: 4487, column: 10, scope: !2808)
!2818 = !DILocation(line: 4488, column: 1, scope: !2808)
!2819 = distinct !DISubprogram(name: "remove_cgraph_callee_edges", scope: !3, file: !3, line: 291, type: !1722, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1763)
!2820 = !DILocation(line: 293, column: 44, scope: !2819)
!2821 = !DILocation(line: 293, column: 31, scope: !2819)
!2822 = !DILocation(line: 293, column: 3, scope: !2819)
!2823 = !DILocation(line: 294, column: 3, scope: !2819)
!2824 = distinct !DISubprogram(name: "gimple_call_num_args", scope: !456, file: !456, line: 2013, type: !2825, scopeLine: 2014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!7, !2786}
!2827 = !{!2828, !2829}
!2828 = !DILocalVariable(name: "gs", arg: 1, scope: !2824, file: !456, line: 2013, type: !2786)
!2829 = !DILocalVariable(name: "num_ops", scope: !2824, file: !456, line: 2015, type: !7)
!2830 = !DILocation(line: 0, scope: !2824)
!2831 = !DILocation(line: 2017, column: 13, scope: !2824)
!2832 = !DILocation(line: 2018, column: 18, scope: !2824)
!2833 = !DILocation(line: 2018, column: 3, scope: !2824)
!2834 = distinct !DISubprogram(name: "gimple_call_arg_ptr", scope: !456, file: !456, line: 2036, type: !2835, scopeLine: 2037, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!1060, !2786, !7}
!2837 = !{!2838, !2839}
!2838 = !DILocalVariable(name: "gs", arg: 1, scope: !2834, file: !456, line: 2036, type: !2786)
!2839 = !DILocalVariable(name: "index", arg: 2, scope: !2834, file: !456, line: 2036, type: !7)
!2840 = !DILocation(line: 0, scope: !2834)
!2841 = !DILocation(line: 2039, column: 35, scope: !2834)
!2842 = !DILocation(line: 2039, column: 10, scope: !2834)
!2843 = !DILocation(line: 2039, column: 3, scope: !2834)
!2844 = distinct !DISubprogram(name: "gimple_call_lhs", scope: !456, file: !456, line: 1878, type: !2794, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2845)
!2845 = !{!2846}
!2846 = !DILocalVariable(name: "gs", arg: 1, scope: !2844, file: !456, line: 1878, type: !2786)
!2847 = !DILocation(line: 0, scope: !2844)
!2848 = !DILocation(line: 1881, column: 10, scope: !2844)
!2849 = !DILocation(line: 1881, column: 3, scope: !2844)
!2850 = distinct !DISubprogram(name: "gimple_call_lhs_ptr", scope: !456, file: !456, line: 1888, type: !2851, scopeLine: 1889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!1060, !2786}
!2853 = !{!2854}
!2854 = !DILocalVariable(name: "gs", arg: 1, scope: !2850, file: !456, line: 1888, type: !2786)
!2855 = !DILocation(line: 0, scope: !2850)
!2856 = !DILocation(line: 1891, column: 10, scope: !2850)
!2857 = !DILocation(line: 1891, column: 3, scope: !2850)
!2858 = distinct !DISubprogram(name: "gimple_code", scope: !456, file: !456, line: 1052, type: !2859, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!482, !2786}
!2861 = !{!2862}
!2862 = !DILocalVariable(name: "g", arg: 1, scope: !2858, file: !456, line: 1052, type: !2786)
!2863 = !DILocation(line: 0, scope: !2858)
!2864 = !DILocation(line: 1054, column: 20, scope: !2858)
!2865 = !DILocation(line: 1054, column: 3, scope: !2858)
!2866 = distinct !DISubprogram(name: "gimple_omp_parallel_child_fn", scope: !456, file: !456, line: 3635, type: !2794, scopeLine: 3636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2867)
!2867 = !{!2868}
!2868 = !DILocalVariable(name: "gs", arg: 1, scope: !2866, file: !456, line: 3635, type: !2786)
!2869 = !DILocation(line: 0, scope: !2866)
!2870 = !DILocation(line: 3638, column: 34, scope: !2866)
!2871 = !DILocation(line: 3638, column: 3, scope: !2866)
!2872 = distinct !DISubprogram(name: "gimple_omp_task_child_fn", scope: !456, file: !456, line: 3727, type: !2794, scopeLine: 3728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2873)
!2873 = !{!2874}
!2874 = !DILocalVariable(name: "gs", arg: 1, scope: !2872, file: !456, line: 3727, type: !2786)
!2875 = !DILocation(line: 0, scope: !2872)
!2876 = !DILocation(line: 3730, column: 34, scope: !2872)
!2877 = !DILocation(line: 3730, column: 3, scope: !2872)
!2878 = distinct !DISubprogram(name: "gimple_omp_task_copy_fn", scope: !456, file: !456, line: 3889, type: !2794, scopeLine: 3890, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2879)
!2879 = !{!2880}
!2880 = !DILocalVariable(name: "gs", arg: 1, scope: !2878, file: !456, line: 3889, type: !2786)
!2881 = !DILocation(line: 0, scope: !2878)
!2882 = !DILocation(line: 3892, column: 30, scope: !2878)
!2883 = !DILocation(line: 3892, column: 3, scope: !2878)
!2884 = distinct !DISubprogram(name: "gimple_num_ops", scope: !456, file: !456, line: 1596, type: !2825, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2885)
!2885 = !{!2886}
!2886 = !DILocalVariable(name: "gs", arg: 1, scope: !2884, file: !456, line: 1596, type: !2786)
!2887 = !DILocation(line: 0, scope: !2884)
!2888 = !DILocation(line: 1598, column: 21, scope: !2884)
!2889 = !DILocation(line: 1598, column: 3, scope: !2884)
!2890 = distinct !DISubprogram(name: "gimple_op_ptr", scope: !456, file: !456, line: 1647, type: !2835, scopeLine: 1648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2891)
!2891 = !{!2892, !2893}
!2892 = !DILocalVariable(name: "gs", arg: 1, scope: !2890, file: !456, line: 1647, type: !2786)
!2893 = !DILocalVariable(name: "i", arg: 2, scope: !2890, file: !456, line: 1647, type: !7)
!2894 = !DILocation(line: 0, scope: !2890)
!2895 = !DILocation(line: 1649, column: 7, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2890, file: !456, line: 1649, column: 7)
!2897 = !DILocation(line: 1649, column: 7, scope: !2890)
!2898 = !DILocation(line: 1654, column: 14, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2896, file: !456, line: 1650, column: 5)
!2900 = !DILocation(line: 1654, column: 50, scope: !2899)
!2901 = !DILocation(line: 1654, column: 7, scope: !2899)
!2902 = !DILocation(line: 0, scope: !2896)
!2903 = !DILocation(line: 1658, column: 1, scope: !2890)
!2904 = distinct !DISubprogram(name: "gimple_has_ops", scope: !456, file: !456, line: 1274, type: !2784, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2905)
!2905 = !{!2906}
!2906 = !DILocalVariable(name: "g", arg: 1, scope: !2904, file: !456, line: 1274, type: !2786)
!2907 = !DILocation(line: 0, scope: !2904)
!2908 = !DILocation(line: 1276, column: 10, scope: !2904)
!2909 = !DILocation(line: 1276, column: 26, scope: !2904)
!2910 = !DILocation(line: 1276, column: 41, scope: !2904)
!2911 = !DILocation(line: 1276, column: 44, scope: !2904)
!2912 = !DILocation(line: 1276, column: 60, scope: !2904)
!2913 = !DILocation(line: 1276, column: 3, scope: !2904)
!2914 = distinct !DISubprogram(name: "gimple_ops", scope: !456, file: !456, line: 1614, type: !2915, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!1060, !590}
!2917 = !{!2918, !2919}
!2918 = !DILocalVariable(name: "gs", arg: 1, scope: !2914, file: !456, line: 1614, type: !590)
!2919 = !DILocalVariable(name: "off", scope: !2914, file: !456, line: 1616, type: !911)
!2920 = !DILocation(line: 0, scope: !2914)
!2921 = !DILocation(line: 1621, column: 28, scope: !2914)
!2922 = !DILocation(line: 1621, column: 9, scope: !2914)
!2923 = !DILocation(line: 1622, column: 3, scope: !2914)
!2924 = !DILocation(line: 1624, column: 20, scope: !2914)
!2925 = !DILocation(line: 1624, column: 32, scope: !2914)
!2926 = !DILocation(line: 1624, column: 10, scope: !2914)
!2927 = !DILocation(line: 1624, column: 3, scope: !2914)
!2928 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !456, file: !456, line: 1073, type: !2929, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!455, !590}
!2931 = !{!2932}
!2932 = !DILocalVariable(name: "gs", arg: 1, scope: !2928, file: !456, line: 1073, type: !590)
!2933 = !DILocation(line: 0, scope: !2928)
!2934 = !DILocation(line: 1075, column: 24, scope: !2928)
!2935 = !DILocation(line: 1075, column: 10, scope: !2928)
!2936 = !DILocation(line: 1075, column: 3, scope: !2928)
!2937 = distinct !DISubprogram(name: "gss_for_code", scope: !456, file: !456, line: 1061, type: !2938, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!455, !482}
!2940 = !{!2941}
!2941 = !DILocalVariable(name: "code", arg: 1, scope: !2937, file: !456, line: 1061, type: !482)
!2942 = !DILocation(line: 0, scope: !2937)
!2943 = !DILocation(line: 1066, column: 10, scope: !2937)
!2944 = !DILocation(line: 1066, column: 3, scope: !2937)
!2945 = distinct !DISubprogram(name: "gimple_op", scope: !456, file: !456, line: 1631, type: !2946, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2948)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!601, !2786, !7}
!2948 = !{!2949, !2950}
!2949 = !DILocalVariable(name: "gs", arg: 1, scope: !2945, file: !456, line: 1631, type: !2786)
!2950 = !DILocalVariable(name: "i", arg: 2, scope: !2945, file: !456, line: 1631, type: !7)
!2951 = !DILocation(line: 0, scope: !2945)
!2952 = !DILocation(line: 1633, column: 7, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2945, file: !456, line: 1633, column: 7)
!2954 = !DILocation(line: 1633, column: 7, scope: !2945)
!2955 = !DILocation(line: 1638, column: 14, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2953, file: !456, line: 1634, column: 5)
!2957 = !DILocation(line: 1638, column: 7, scope: !2956)
!2958 = !DILocation(line: 0, scope: !2953)
!2959 = !DILocation(line: 1642, column: 1, scope: !2945)
!2960 = distinct !DISubprogram(name: "bb_seq", scope: !456, file: !456, line: 237, type: !2961, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2966)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!580, !2963}
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !570, line: 112, baseType: !2964)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!2966 = !{!2967}
!2967 = !DILocalVariable(name: "bb", arg: 1, scope: !2960, file: !456, line: 237, type: !2963)
!2968 = !DILocation(line: 0, scope: !2960)
!2969 = !DILocation(line: 239, column: 17, scope: !2960)
!2970 = !DILocation(line: 239, column: 23, scope: !2960)
!2971 = !DILocation(line: 239, column: 33, scope: !2960)
!2972 = !DILocation(line: 239, column: 43, scope: !2960)
!2973 = !DILocation(line: 239, column: 36, scope: !2960)
!2974 = !DILocation(line: 239, column: 10, scope: !2960)
!2975 = !DILocation(line: 239, column: 68, scope: !2960)
!2976 = !DILocation(line: 239, column: 3, scope: !2960)
!2977 = distinct !DISubprogram(name: "gimple_seq_first", scope: !456, file: !456, line: 159, type: !2978, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2983)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!585, !2980}
!2980 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !570, line: 67, baseType: !2981)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!2983 = !{!2984}
!2984 = !DILocalVariable(name: "s", arg: 1, scope: !2977, file: !456, line: 159, type: !2980)
!2985 = !DILocation(line: 0, scope: !2977)
!2986 = !DILocation(line: 161, column: 10, scope: !2977)
!2987 = !DILocation(line: 161, column: 17, scope: !2977)
!2988 = !DILocation(line: 161, column: 3, scope: !2977)
!2989 = distinct !DISubprogram(name: "gimple_call_fn", scope: !456, file: !456, line: 1911, type: !2794, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2990)
!2990 = !{!2991}
!2991 = !DILocalVariable(name: "gs", arg: 1, scope: !2989, file: !456, line: 1911, type: !2786)
!2992 = !DILocation(line: 0, scope: !2989)
!2993 = !DILocation(line: 1914, column: 10, scope: !2989)
!2994 = !DILocation(line: 1914, column: 3, scope: !2989)
