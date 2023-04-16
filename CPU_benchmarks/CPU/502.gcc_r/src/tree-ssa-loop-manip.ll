; ModuleID = 'tree-ssa-loop-manip.bc'
source_filename = "tree-ssa-loop-manip.c"
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
%struct.loop = type { i32, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.lpt_decision, i32, i32, %struct.VEC_loop_p_gc*, %struct.loop*, %struct.loop*, i8*, %union.tree_node*, %struct.double_int, %struct.double_int, i8, i8, i32, %struct.nb_iter_bound*, %struct.loop_exit*, i8, %union.tree_node* }
%struct.lpt_decision = type { i32, i32 }
%struct.VEC_loop_p_gc = type { %struct.VEC_loop_p_base }
%struct.VEC_loop_p_base = type { i32, i32, [1 x %struct.loop*] }
%struct.double_int = type { i64, i64 }
%struct.nb_iter_bound = type { %union.gimple_statement_d*, %struct.double_int, i8, %struct.nb_iter_bound* }
%union.gimple_statement_d = type { %struct.gimple_statement_phi }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, %union.tree_node*, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, %struct.basic_block_def*, %union.tree_node* }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, %union.tree_node*, i32 }
%struct.ssa_use_operand_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %union.anon, %union.tree_node** }
%union.anon = type { %union.gimple_statement_d* }
%struct.loop_exit = type { %struct.edge_def*, %struct.loop_exit*, %struct.loop_exit*, %struct.loop_exit* }
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_seq_d = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_d* }
%struct.gimple_seq_node_d = type { %union.gimple_statement_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d* }
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
%struct.loops = type { i32, %struct.VEC_loop_p_gc*, %struct.htab*, %struct.loop* }
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, %union.tree_node*, i32, i32 }
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
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.VEC_edge_heap = type { %struct.VEC_edge_base }
%struct.tree_niter_desc = type { %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.double_int, %struct.affine_iv, %union.tree_node*, i32 }
%struct.affine_iv = type { %union.tree_node*, %union.tree_node*, i8 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"ivtmp\00", align 1
@sizetype_tab = external dso_local local_unnamed_addr global [4 x %union.tree_node*], align 16
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@eni_size_weights = external dso_local global %struct.eni_weights_d, align 4
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"tree-ssa-loop-manip.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"unrinittmp\00", align 1
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1859 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1872, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1873, metadata !DIExpression()), !dbg !1874
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1875
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1876
  ret i32 %call, !dbg !1877
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1878 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1882
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1883
  ret i32 %call, !dbg !1884
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1885 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1940, metadata !DIExpression()), !dbg !1941
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1942
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1942
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1942
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1942
  %cmp = icmp uge i8* %0, %1, !dbg !1942
  %conv1 = zext i1 %cmp to i64, !dbg !1942
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1942
  %tobool = icmp eq i64 %expval, 0, !dbg !1942
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1942

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1942
  br label %cond.end, !dbg !1942

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1942
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1942
  %2 = load i8, i8* %0, align 1, !dbg !1942
  %conv3 = zext i8 %2 to i32, !dbg !1942
  br label %cond.end, !dbg !1942

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1942
  ret i32 %cond, !dbg !1943
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1944 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1946, metadata !DIExpression()), !dbg !1947
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1948
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1948
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1948
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1948
  %cmp = icmp uge i8* %0, %1, !dbg !1948
  %conv1 = zext i1 %cmp to i64, !dbg !1948
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1948
  %tobool = icmp eq i64 %expval, 0, !dbg !1948
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1948

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1948
  br label %cond.end, !dbg !1948

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1948
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1948
  %2 = load i8, i8* %0, align 1, !dbg !1948
  %conv3 = zext i8 %2 to i32, !dbg !1948
  br label %cond.end, !dbg !1948

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1948
  ret i32 %cond, !dbg !1949
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1950 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1951
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1951
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1951
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1951
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1951
  %cmp = icmp uge i8* %1, %2, !dbg !1951
  %conv1 = zext i1 %cmp to i64, !dbg !1951
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1951
  %tobool = icmp eq i64 %expval, 0, !dbg !1951
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1951

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1951
  br label %cond.end, !dbg !1951

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1951
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1951
  %3 = load i8, i8* %1, align 1, !dbg !1951
  %conv3 = zext i8 %3 to i32, !dbg !1951
  br label %cond.end, !dbg !1951

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1951
  ret i32 %cond, !dbg !1952
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1953 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1957, metadata !DIExpression()), !dbg !1958
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1959
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1960
  ret i32 %call, !dbg !1961
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1962 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1966, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1967, metadata !DIExpression()), !dbg !1968
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1969
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1969
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1969
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1969
  %cmp = icmp uge i8* %0, %1, !dbg !1969
  %conv1 = zext i1 %cmp to i64, !dbg !1969
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1969
  %tobool = icmp eq i64 %expval, 0, !dbg !1969
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1969

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1969
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1969
  br label %cond.end, !dbg !1969

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1969
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1969
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1969
  store i8 %conv2, i8* %0, align 1, !dbg !1969
  %conv6 = and i32 %__c, 255, !dbg !1969
  br label %cond.end, !dbg !1969

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1969
  ret i32 %cond, !dbg !1970
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1971 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1973, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1974, metadata !DIExpression()), !dbg !1975
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1976
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1976
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1976
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1976
  %cmp = icmp uge i8* %0, %1, !dbg !1976
  %conv1 = zext i1 %cmp to i64, !dbg !1976
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1976
  %tobool = icmp eq i64 %expval, 0, !dbg !1976
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1976

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1976
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1976
  br label %cond.end, !dbg !1976

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1976
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1976
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1976
  store i8 %conv2, i8* %0, align 1, !dbg !1976
  %conv6 = and i32 %__c, 255, !dbg !1976
  br label %cond.end, !dbg !1976

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1976
  ret i32 %cond, !dbg !1977
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1978 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1980, metadata !DIExpression()), !dbg !1981
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1982
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1982
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1982
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1982
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1982
  %cmp = icmp uge i8* %1, %2, !dbg !1982
  %conv1 = zext i1 %cmp to i64, !dbg !1982
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1982
  %tobool = icmp eq i64 %expval, 0, !dbg !1982
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1982

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1982
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1982
  br label %cond.end, !dbg !1982

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1982
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1982
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1982
  store i8 %conv4, i8* %1, align 1, !dbg !1982
  %conv6 = and i32 %__c, 255, !dbg !1982
  br label %cond.end, !dbg !1982

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1982
  ret i32 %cond, !dbg !1983
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1984 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1990, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1991, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1992, metadata !DIExpression()), !dbg !1993
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1994
  ret i64 %call, !dbg !1995
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1996 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1998, metadata !DIExpression()), !dbg !1999
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2000
  %0 = load i32, i32* %_flags, align 8, !dbg !2000
  %and = lshr i32 %0, 4, !dbg !2000
  %and.lobit = and i32 %and, 1, !dbg !2000
  ret i32 %and.lobit, !dbg !2001
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2002 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2004, metadata !DIExpression()), !dbg !2005
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2006
  %0 = load i32, i32* %_flags, align 8, !dbg !2006
  %and = lshr i32 %0, 5, !dbg !2006
  %and.lobit = and i32 %and, 1, !dbg !2006
  ret i32 %and.lobit, !dbg !2007
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2008 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2011, metadata !DIExpression()), !dbg !2012
  %__c.off = add i32 %__c, 128, !dbg !2013
  %0 = icmp ult i32 %__c.off, 384, !dbg !2013
  br i1 %0, label %cond.true, label %cond.end, !dbg !2013

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2014
  %1 = load i32*, i32** %call, align 8, !dbg !2015
  %idxprom = sext i32 %__c to i64, !dbg !2016
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2016
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2016
  br label %cond.end, !dbg !2017

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2017
  ret i32 %cond, !dbg !2018
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2019 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2021, metadata !DIExpression()), !dbg !2022
  %__c.off = add i32 %__c, 128, !dbg !2023
  %0 = icmp ult i32 %__c.off, 384, !dbg !2023
  br i1 %0, label %cond.true, label %cond.end, !dbg !2023

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2024
  %1 = load i32*, i32** %call, align 8, !dbg !2025
  %idxprom = sext i32 %__c to i64, !dbg !2026
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2026
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2026
  br label %cond.end, !dbg !2027

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2027
  ret i32 %cond, !dbg !2028
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2029 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2034, metadata !DIExpression()), !dbg !2035
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2036
  %conv = trunc i64 %call to i32, !dbg !2037
  ret i32 %conv, !dbg !2038
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2039 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2043, metadata !DIExpression()), !dbg !2044
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2045
  ret i64 %call, !dbg !2046
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2047 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2052, metadata !DIExpression()), !dbg !2053
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2054
  ret i64 %call, !dbg !2055
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2056 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2062, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2063, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2064, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2065, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2066, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 0, metadata !2067, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2068, metadata !DIExpression()), !dbg !2072
  br label %while.cond, !dbg !2073

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2074
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2072
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2068, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2067, metadata !DIExpression()), !dbg !2072
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2075
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2073

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2076
  %div = lshr i64 %add, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %div, metadata !2069, metadata !DIExpression()), !dbg !2072
  %mul = mul i64 %div, %__size, !dbg !2079
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2080
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2070, metadata !DIExpression()), !dbg !2072
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %call, metadata !2071, metadata !DIExpression()), !dbg !2072
  %cmp1 = icmp slt i32 %call, 0, !dbg !2082
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2084

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2085
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2087

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2067, metadata !DIExpression()), !dbg !2072
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2072
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2072
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2068, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2067, metadata !DIExpression()), !dbg !2072
  br label %while.cond, !dbg !2073, !llvm.loop !2089

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2072
  ret i8* %retval.0, !dbg !2091
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2092 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2098, metadata !DIExpression()), !dbg !2099
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2100
  ret double %call, !dbg !2101
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2102 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2111, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2112, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 %base, metadata !2113, metadata !DIExpression()), !dbg !2114
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2115
  ret i64 %call, !dbg !2116
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2117 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2123, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2124, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %base, metadata !2125, metadata !DIExpression()), !dbg !2126
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2127
  ret i64 %call, !dbg !2128
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2129 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2140, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2141, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i32 %base, metadata !2142, metadata !DIExpression()), !dbg !2143
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2144
  ret i64 %call, !dbg !2145
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2146 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2150, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2151, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 %base, metadata !2152, metadata !DIExpression()), !dbg !2153
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2154
  ret i64 %call, !dbg !2155
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2156 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2197, metadata !DIExpression()), !dbg !2198
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2199
  ret i32 %call, !dbg !2200
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2201 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2203, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2204, metadata !DIExpression()), !dbg !2205
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2206
  ret i32 %call, !dbg !2207
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2208 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2212, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2213, metadata !DIExpression()), !dbg !2214
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2215
  ret i32 %call, !dbg !2216
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2217 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2221, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2222, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2223, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2224, metadata !DIExpression()), !dbg !2225
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2226
  ret i32 %call, !dbg !2227
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2228 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2232, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2233, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2234, metadata !DIExpression()), !dbg !2235
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2234, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2236
  ret i32 %call, !dbg !2237
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2238 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2242, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2243, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2245, metadata !DIExpression()), !dbg !2246
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2245, metadata !DIExpression(DW_OP_deref)), !dbg !2246
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2247
  ret i32 %call, !dbg !2248
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2249 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2273, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2274, metadata !DIExpression()), !dbg !2275
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2276
  ret i32 %call, !dbg !2277
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2278 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2280, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2281, metadata !DIExpression()), !dbg !2282
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2283
  ret i32 %call, !dbg !2284
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2285 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2289, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2290, metadata !DIExpression()), !dbg !2291
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2292
  ret i32 %call, !dbg !2293
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2294 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2298, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2299, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2300, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2301, metadata !DIExpression()), !dbg !2302
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2303
  ret i32 %call, !dbg !2304
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @create_iv(%union.tree_node* %base, %union.tree_node* %step, %union.tree_node* %var, %struct.loop* %loop, %struct.gimple_stmt_iterator* %incr_pos, i8 zeroext %after, %union.tree_node** %var_before, %union.tree_node** %var_after) local_unnamed_addr #5 !dbg !2305 {
entry:
  %stmts = alloca %struct.gimple_seq_d*, align 8
  %ovf = alloca i8, align 1
  call void @llvm.dbg.value(metadata %union.tree_node* %base, metadata !2316, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata %union.tree_node* %step, metadata !2317, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2318, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2319, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %incr_pos, metadata !2320, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i8 %after, metadata !2321, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata %union.tree_node** %var_before, metadata !2322, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata %union.tree_node** %var_after, metadata !2323, metadata !DIExpression()), !dbg !2337
  %0 = bitcast %struct.gimple_seq_d** %stmts to i8*, !dbg !2338
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2338
  call void @llvm.dbg.value(metadata i32 63, metadata !2330, metadata !DIExpression()), !dbg !2337
  %call = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2339
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !2331, metadata !DIExpression()), !dbg !2337
  %tobool = icmp eq %union.tree_node* %var, null, !dbg !2340
  br i1 %tobool, label %if.then, label %if.end, !dbg !2342

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %base, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2343
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2343
  %call1 = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2345
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2318, metadata !DIExpression()), !dbg !2337
  %call2 = tail call zeroext i8 @add_referenced_var(%union.tree_node* %call1) #6, !dbg !2346
  br label %if.end, !dbg !2347

if.end:                                           ; preds = %entry, %if.then
  %var.addr.0 = phi %union.tree_node* [ %var, %entry ], [ %call1, %if.then ]
  call void @llvm.dbg.value(metadata %union.tree_node* %var.addr.0, metadata !2318, metadata !DIExpression()), !dbg !2337
  %call3 = tail call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var.addr.0, %union.gimple_statement_d* null) #8, !dbg !2348
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2328, metadata !DIExpression()), !dbg !2337
  %tobool4 = icmp eq %union.tree_node** %var_before, null, !dbg !2349
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2351

if.then5:                                         ; preds = %if.end
  store %union.tree_node* %call3, %union.tree_node** %var_before, align 8, !dbg !2352
  br label %if.end6, !dbg !2353

if.end6:                                          ; preds = %if.end, %if.then5
  %call7 = tail call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var.addr.0, %union.gimple_statement_d* null) #8, !dbg !2354
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !2329, metadata !DIExpression()), !dbg !2337
  %tobool8 = icmp eq %union.tree_node** %var_after, null, !dbg !2355
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2357

if.then9:                                         ; preds = %if.end6
  store %union.tree_node* %call7, %union.tree_node** %var_after, align 8, !dbg !2358
  br label %if.end10, !dbg !2359

if.end10:                                         ; preds = %if.end6, %if.then9
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %step, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2360
  %bf.load = load i64, i64* %2, align 8, !dbg !2360
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !2361
  %cmp = icmp eq i64 %bf.cast2, 23, !dbg !2361
  br i1 %cmp, label %if.then12, label %if.end38, !dbg !2362

if.then12:                                        ; preds = %if.end10
  %type14 = getelementptr inbounds %union.tree_node, %union.tree_node* %step, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2363
  %3 = bitcast %union.tree_node** %type14 to i64**, !dbg !2363
  %4 = load i64*, i64** %3, align 8, !dbg !2363
  %bf.load16 = load i64, i64* %4, align 8, !dbg !2363
  %bf.cast186 = and i64 %bf.load16, 2097152, !dbg !2363
  %tobool19 = icmp eq i64 %bf.cast186, 0, !dbg !2363
  br i1 %tobool19, label %if.else, label %if.then20, !dbg !2364

if.then20:                                        ; preds = %if.then12
  %5 = bitcast i64* %4 to %union.tree_node*, !dbg !2364
  %call23 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 79, %union.tree_node* %5, %union.tree_node* %step) #6, !dbg !2365
  call void @llvm.dbg.value(metadata %union.tree_node* %call23, metadata !2326, metadata !DIExpression()), !dbg !2337
  %call24 = tail call i32 @tree_int_cst_lt(%union.tree_node* %call23, %union.tree_node* %step) #6, !dbg !2367
  %tobool25 = icmp ne i32 %call24, 0, !dbg !2367
  %spec.select = select i1 %tobool25, %union.tree_node* %call23, %union.tree_node* %step, !dbg !2369
  %spec.select1 = select i1 %tobool25, i32 64, i32 63, !dbg !2369
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !2330, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select, metadata !2317, metadata !DIExpression()), !dbg !2337
  br label %if.end38, !dbg !2370

if.else:                                          ; preds = %if.then12
  call void @llvm.dbg.value(metadata i8* %ovf, metadata !2332, metadata !DIExpression(DW_OP_deref)), !dbg !2371
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %ovf) #7, !dbg !2372
  call void @llvm.dbg.value(metadata i8* %ovf, metadata !2332, metadata !DIExpression(DW_OP_deref)), !dbg !2371
  %call28 = call zeroext i8 @tree_expr_nonnegative_warnv_p(%union.tree_node* %step, i8* nonnull %ovf) #6, !dbg !2373
  %tobool29 = icmp eq i8 %call28, 0, !dbg !2373
  br i1 %tobool29, label %land.lhs.true, label %if.end36, !dbg !2375

land.lhs.true:                                    ; preds = %if.else
  %call30 = call zeroext i8 @may_negate_without_overflow_p(%union.tree_node* %step) #6, !dbg !2376
  %tobool31 = icmp eq i8 %call30, 0, !dbg !2376
  br i1 %tobool31, label %if.end36, label %if.then32, !dbg !2377

if.then32:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32 64, metadata !2330, metadata !DIExpression()), !dbg !2337
  %6 = load %union.tree_node*, %union.tree_node** %type14, align 8, !dbg !2378
  %call35 = call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 79, %union.tree_node* %6, %union.tree_node* %step) #6, !dbg !2378
  call void @llvm.dbg.value(metadata %union.tree_node* %call35, metadata !2317, metadata !DIExpression()), !dbg !2337
  br label %if.end36, !dbg !2380

if.end36:                                         ; preds = %land.lhs.true, %if.else, %if.then32
  %step.addr.1 = phi %union.tree_node* [ %step, %if.else ], [ %call35, %if.then32 ], [ %step, %land.lhs.true ]
  %incr_op.1 = phi i32 [ 63, %if.else ], [ 64, %if.then32 ], [ 63, %land.lhs.true ], !dbg !2337
  call void @llvm.dbg.value(metadata i32 %incr_op.1, metadata !2330, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata %union.tree_node* %step.addr.1, metadata !2317, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i8* %ovf, metadata !2332, metadata !DIExpression(DW_OP_deref)), !dbg !2371
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %ovf) #7, !dbg !2381
  br label %if.end38

if.end38:                                         ; preds = %if.then20, %if.end36, %if.end10
  %step.addr.3 = phi %union.tree_node* [ %step, %if.end10 ], [ %spec.select, %if.then20 ], [ %step.addr.1, %if.end36 ]
  %incr_op.3 = phi i32 [ 63, %if.end10 ], [ %spec.select1, %if.then20 ], [ %incr_op.1, %if.end36 ], !dbg !2337
  call void @llvm.dbg.value(metadata i32 %incr_op.3, metadata !2330, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata %union.tree_node* %step.addr.3, metadata !2317, metadata !DIExpression()), !dbg !2337
  %type40 = getelementptr inbounds %union.tree_node, %union.tree_node* %base, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2382
  %7 = bitcast %union.tree_node** %type40 to i64**, !dbg !2382
  %8 = load i64*, i64** %7, align 8, !dbg !2382
  %bf.load42 = load i64, i64* %8, align 8, !dbg !2382
  %bf.cast443 = and i64 %bf.load42, 65535, !dbg !2382
  %cmp45 = icmp eq i64 %bf.cast443, 10, !dbg !2382
  br i1 %cmp45, label %if.then55, label %lor.lhs.false, !dbg !2382

lor.lhs.false:                                    ; preds = %if.end38
  %cmp53 = icmp eq i64 %bf.cast443, 12, !dbg !2382
  br i1 %cmp53, label %if.then55, label %if.end70, !dbg !2384

if.then55:                                        ; preds = %lor.lhs.false, %if.end38
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %base, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2385
  %bf.load57 = load i64, i64* %9, align 8, !dbg !2385
  %bf.cast595 = and i64 %bf.load57, 65535, !dbg !2388
  %cmp60 = icmp eq i64 %bf.cast595, 121, !dbg !2388
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !2389

if.then62:                                        ; preds = %if.then55
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %base, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2390
  %10 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2390
  call void @mark_addressable(%union.tree_node* %10) #6, !dbg !2391
  br label %if.end63, !dbg !2391

if.end63:                                         ; preds = %if.then62, %if.then55
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2392
  %call64 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %11, %union.tree_node* %step.addr.3) #6, !dbg !2392
  call void @llvm.dbg.value(metadata %union.tree_node* %call64, metadata !2317, metadata !DIExpression()), !dbg !2337
  %cmp65 = icmp eq i32 %incr_op.3, 64, !dbg !2393
  br i1 %cmp65, label %if.then67, label %if.end70, !dbg !2395

if.then67:                                        ; preds = %if.end63
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2396
  %call68 = call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 79, %union.tree_node* %12, %union.tree_node* %call64) #6, !dbg !2396
  call void @llvm.dbg.value(metadata %union.tree_node* %call68, metadata !2317, metadata !DIExpression()), !dbg !2337
  br label %if.end70, !dbg !2397

if.end70:                                         ; preds = %if.end63, %if.then67, %lor.lhs.false
  %step.addr.5 = phi %union.tree_node* [ %step.addr.3, %lor.lhs.false ], [ %call68, %if.then67 ], [ %call64, %if.end63 ], !dbg !2337
  %incr_op.4 = phi i32 [ %incr_op.3, %lor.lhs.false ], [ 66, %if.then67 ], [ 66, %if.end63 ], !dbg !2337
  call void @llvm.dbg.value(metadata i32 %incr_op.4, metadata !2330, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata %union.tree_node* %step.addr.5, metadata !2317, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !2327, metadata !DIExpression(DW_OP_deref)), !dbg !2337
  %call71 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %step.addr.5, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 1, %union.tree_node* null) #6, !dbg !2398
  call void @llvm.dbg.value(metadata %union.tree_node* %call71, metadata !2317, metadata !DIExpression()), !dbg !2337
  %13 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !2399
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %13, metadata !2327, metadata !DIExpression()), !dbg !2337
  %tobool72 = icmp eq %struct.gimple_seq_d* %13, null, !dbg !2399
  br i1 %tobool72, label %if.end75, label %if.then73, !dbg !2401

if.then73:                                        ; preds = %if.end70
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %13, metadata !2327, metadata !DIExpression()), !dbg !2337
  %call74 = call %struct.basic_block_def* @gsi_insert_seq_on_edge_immediate(%struct.edge_def* %call, %struct.gimple_seq_d* nonnull %13) #6, !dbg !2402
  br label %if.end75, !dbg !2402

if.end75:                                         ; preds = %if.end70, %if.then73
  %call76 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 %incr_op.4, %union.tree_node* %call7, %union.tree_node* %call3, %union.tree_node* %call71) #6, !dbg !2403
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call76, metadata !2324, metadata !DIExpression()), !dbg !2337
  %tobool77 = icmp eq i8 %after, 0, !dbg !2404
  br i1 %tobool77, label %if.else79, label %if.then78, !dbg !2406

if.then78:                                        ; preds = %if.end75
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* %incr_pos, %union.gimple_statement_d* %call76, i32 0) #6, !dbg !2407
  br label %if.end80, !dbg !2407

if.else79:                                        ; preds = %if.end75
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* %incr_pos, %union.gimple_statement_d* %call76, i32 0) #6, !dbg !2408
  br label %if.end80

if.end80:                                         ; preds = %if.else79, %if.then78
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !2327, metadata !DIExpression(DW_OP_deref)), !dbg !2337
  %call81 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %base, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 1, %union.tree_node* %var.addr.0) #6, !dbg !2409
  call void @llvm.dbg.value(metadata %union.tree_node* %call81, metadata !2325, metadata !DIExpression()), !dbg !2337
  %14 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !2410
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %14, metadata !2327, metadata !DIExpression()), !dbg !2337
  %tobool82 = icmp eq %struct.gimple_seq_d* %14, null, !dbg !2410
  br i1 %tobool82, label %if.end85, label %if.then83, !dbg !2412

if.then83:                                        ; preds = %if.end80
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %14, metadata !2327, metadata !DIExpression()), !dbg !2337
  %call84 = call %struct.basic_block_def* @gsi_insert_seq_on_edge_immediate(%struct.edge_def* %call, %struct.gimple_seq_d* nonnull %14) #6, !dbg !2413
  br label %if.end85, !dbg !2413

if.end85:                                         ; preds = %if.end80, %if.then83
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !2414
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2414
  %call86 = call %union.gimple_statement_d* @create_phi_node(%union.tree_node* %call3, %struct.basic_block_def* %15) #6, !dbg !2415
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call86, metadata !2324, metadata !DIExpression()), !dbg !2337
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2416
  %16 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2416
  store %union.gimple_statement_d* %call86, %union.gimple_statement_d** %16, align 8, !dbg !2417
  %call87 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2418
  call void @add_phi_arg(%union.gimple_statement_d* %call86, %union.tree_node* %call81, %struct.edge_def* %call87, i32 0) #6, !dbg !2419
  %call88 = call %struct.edge_def* @loop_latch_edge(%struct.loop* %loop) #6, !dbg !2420
  call void @add_phi_arg(%union.gimple_statement_d* %call86, %union.tree_node* %call7, %struct.edge_def* %call88, i32 0) #6, !dbg !2421
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2422
  ret void, !dbg !2422
}

declare dso_local %struct.edge_def* @loop_preheader_edge(%struct.loop*) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @add_referenced_var(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2423 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2428, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !2429, metadata !DIExpression()), !dbg !2430
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2431
  %call = tail call %union.tree_node* @make_ssa_name_fn(%struct.function* %0, %union.tree_node* %var, %union.gimple_statement_d* null) #6, !dbg !2432
  ret %union.tree_node* %call, !dbg !2433
}

declare dso_local %union.tree_node* @fold_build1_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @tree_int_cst_lt(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @tree_expr_nonnegative_warnv_p(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @may_negate_without_overflow_p(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @mark_addressable(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @force_gimple_operand(%union.tree_node*, %struct.gimple_seq_d**, i8 zeroext, %union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @gsi_insert_seq_on_edge_immediate(%struct.edge_def*, %struct.gimple_seq_d*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @gsi_insert_after(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @create_phi_node(%union.tree_node*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @add_phi_arg(%union.gimple_statement_d*, %union.tree_node*, %struct.edge_def*, i32) local_unnamed_addr #2

declare dso_local %struct.edge_def* @loop_latch_edge(%struct.loop*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @rewrite_into_loop_closed_ssa(%struct.bitmap_head_def* %changed_bbs, i32 %update_flag) local_unnamed_addr #5 !dbg !2434 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %changed_bbs, metadata !2438, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 %update_flag, metadata !2439, metadata !DIExpression()), !dbg !2445
  tail call fastcc void @loops_state_set(i32 32) #8, !dbg !2446
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2447
  %cmp = icmp ult i32 %call, 2, !dbg !2449
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !2450

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.bitmap_head_def* @get_loops_exits() #8, !dbg !2451
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call1, metadata !2440, metadata !DIExpression()), !dbg !2445
  %call2 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2452
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call2, metadata !2444, metadata !DIExpression()), !dbg !2445
  tail call void @update_ssa(i32 %update_flag) #6, !dbg !2453
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2454
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !2454
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2454
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 2, !dbg !2454
  %2 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2454
  %tobool = icmp eq %struct.VEC_tree_gc* %2, null, !dbg !2454
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2454

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %2, i64 0, i32 0, !dbg !2454
  br label %cond.end, !dbg !2454

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2454
  %call6 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #8, !dbg !2454
  call void @llvm.dbg.value(metadata i32 %call6, metadata !2443, metadata !DIExpression()), !dbg !2445
  %conv = zext i32 %call6 to i64, !dbg !2455
  %call7 = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2455
  %3 = bitcast i8* %call7 to %struct.bitmap_head_def**, !dbg !2455
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %3, metadata !2441, metadata !DIExpression()), !dbg !2445
  tail call fastcc void @find_uses_to_rename(%struct.bitmap_head_def* %changed_bbs, %struct.bitmap_head_def** %3, %struct.bitmap_head_def* %call2) #8, !dbg !2456
  tail call fastcc void @add_exit_phis(%struct.bitmap_head_def* %call2, %struct.bitmap_head_def** %3, %struct.bitmap_head_def* %call1) #8, !dbg !2457
  call void @llvm.dbg.value(metadata i32 0, metadata !2442, metadata !DIExpression()), !dbg !2445
  %wide.trip.count = zext i32 %call6 to i64, !dbg !2458
  br label %for.cond, !dbg !2461

for.cond:                                         ; preds = %for.body, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %cond.end ], !dbg !2462
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2442, metadata !DIExpression()), !dbg !2445
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2458
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2463

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %3, i64 %indvars.iv, !dbg !2464
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !2464
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %4) #6, !dbg !2464
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !2464
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2465
  br label %for.cond, !dbg !2466, !llvm.loop !2467

for.end:                                          ; preds = %for.cond
  tail call void @free(i8* %call7) #6, !dbg !2469
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call1) #6, !dbg !2470
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2440, metadata !DIExpression()), !dbg !2445
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call2) #6, !dbg !2471
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2444, metadata !DIExpression()), !dbg !2445
  tail call void @update_ssa(i32 2048) #6, !dbg !2472
  br label %cleanup.cont, !dbg !2473

cleanup.cont:                                     ; preds = %for.end, %entry
  ret void, !dbg !2473
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @loops_state_set(i32 %flags) unnamed_addr #0 !dbg !2474 {
entry:
  call void @llvm.dbg.value(metadata i32 32, metadata !2478, metadata !DIExpression()), !dbg !2479
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2480
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2480
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2480
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !2481
  %2 = load i32, i32* %state, align 8, !dbg !2482
  %or = or i32 %2, 32, !dbg !2482
  store i32 %or, i32* %state, align 8, !dbg !2482
  ret void, !dbg !2483
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !2484 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2487
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2487
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2487
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2487
  br i1 %tobool, label %return, label %if.end, !dbg !2489

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2490
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2490
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2490
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2490

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2490
  br label %cond.end, !dbg !2490

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2490
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2490
  br label %return, !dbg !2491

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !2492
  ret i32 %retval.0, !dbg !2493
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.bitmap_head_def* @get_loops_exits() unnamed_addr #5 !dbg !2494 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2508
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !2498, metadata !DIExpression()), !dbg !2509
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2510
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2510
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2511
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2511
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2512
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2512
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2512
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2512
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2512
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2514
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2514
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2514
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2518
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2518
  br label %for.cond, !dbg !2512

for.cond:                                         ; preds = %for.inc15, %entry
  %10 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre1, %for.inc15 ], !dbg !2520
  %.pn = phi %struct.basic_block_def* [ %4, %entry ], [ %bb.0, %for.inc15 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2521
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2521
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2499, metadata !DIExpression()), !dbg !2509
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !2520
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2520
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %11, !dbg !2520
  br i1 %cmp, label %for.end17, label %for.body, !dbg !2512

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2522
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 0, !dbg !2522
  %call3 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !2522
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call3, 0, !dbg !2522
  store i32 %12, i32* %6, align 8, !dbg !2522
  %13 = extractvalue { i32, %struct.VEC_edge_gc** } %call3, 1, !dbg !2522
  store %struct.VEC_edge_gc** %13, %struct.VEC_edge_gc*** %7, align 8, !dbg !2522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !2522
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2522
  br label %for.cond4, !dbg !2522

for.cond4:                                        ; preds = %for.inc, %for.body
  %14 = load i32, i32* %8, align 8, !dbg !2523
  %15 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !2523
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2500, metadata !DIExpression(DW_OP_deref)), !dbg !2509
  %call5 = call fastcc zeroext i8 @ei_cond(i32 %14, %struct.VEC_edge_gc** %15, %struct.edge_def** nonnull %e) #8, !dbg !2523
  %tobool = icmp eq i8 %call5, 0, !dbg !2522
  br i1 %tobool, label %for.inc15.loopexit, label %for.body6, !dbg !2522

for.body6:                                        ; preds = %for.cond4
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2524
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !2500, metadata !DIExpression()), !dbg !2509
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 0, !dbg !2526
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2526
  %18 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2527
  %cfg8 = getelementptr inbounds %struct.function, %struct.function* %18, i64 0, i32 1, !dbg !2527
  %19 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg8, align 8, !dbg !2527
  %x_entry_block_ptr9 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %19, i64 0, i32 0, !dbg !2527
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr9, align 8, !dbg !2527
  %cmp10 = icmp eq %struct.basic_block_def* %17, %20, !dbg !2528
  br i1 %cmp10, label %for.inc, label %land.lhs.true, !dbg !2529

land.lhs.true:                                    ; preds = %for.body6
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !2500, metadata !DIExpression()), !dbg !2509
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i64 0, i32 3, !dbg !2530
  %21 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2530
  %call12 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %21, %struct.basic_block_def* %bb.0) #6, !dbg !2531
  %tobool13 = icmp eq i8 %call12, 0, !dbg !2531
  br i1 %tobool13, label %if.then, label %for.inc, !dbg !2532

if.then:                                          ; preds = %land.lhs.true
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2533
  %22 = load i32, i32* %index, align 8, !dbg !2533
  %call14 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call, i32 %22) #6, !dbg !2535
  br label %for.inc15, !dbg !2536

for.inc:                                          ; preds = %land.lhs.true, %for.body6
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2501, metadata !DIExpression(DW_OP_deref)), !dbg !2509
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2523
  br label %for.cond4, !dbg !2523, !llvm.loop !2537

for.inc15.loopexit:                               ; preds = %for.cond4
  br label %for.inc15, !dbg !2520

for.inc15:                                        ; preds = %for.inc15.loopexit, %if.then
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2520
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2539
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2520
  br label %for.cond, !dbg !2520, !llvm.loop !2540

for.end17:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2542
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2542
  ret %struct.bitmap_head_def* %call, !dbg !2543
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local void @update_ssa(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !2544 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2550, metadata !DIExpression()), !dbg !2551
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2552
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2552

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2552
  %0 = load i32, i32* %num, align 8, !dbg !2552
  br label %cond.end, !dbg !2552

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2552
  ret i32 %cond, !dbg !2552
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @find_uses_to_rename(%struct.bitmap_head_def* %changed_bbs, %struct.bitmap_head_def** %use_blocks, %struct.bitmap_head_def* %need_phis) unnamed_addr #5 !dbg !2553 {
entry:
  %index = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %changed_bbs, metadata !2557, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %use_blocks, metadata !2558, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %need_phis, metadata !2559, metadata !DIExpression()), !dbg !2570
  %0 = bitcast i32* %index to i8*, !dbg !2571
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2571
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2572
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2572
  %tobool = icmp eq %struct.bitmap_head_def* %changed_bbs, null, !dbg !2573
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2575

land.lhs.true:                                    ; preds = %entry
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %changed_bbs, i64 0, i32 0, !dbg !2576
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2576
  %tobool1 = icmp eq %struct.bitmap_element_def* %2, null, !dbg !2576
  br i1 %tobool1, label %if.else, label %if.then, !dbg !2577

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32* %index, metadata !2561, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2562, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %changed_bbs, i32 0, i32* nonnull %index) #8, !dbg !2578
  br label %for.cond, !dbg !2578

for.cond:                                         ; preds = %cond.end, %if.then
  call void @llvm.dbg.value(metadata i32* %index, metadata !2561, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2562, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  %call = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #8, !dbg !2581
  %tobool2 = icmp eq i8 %call, 0, !dbg !2578
  br i1 %tobool2, label %if.end.loopexit1, label %for.body, !dbg !2578

for.body:                                         ; preds = %for.cond
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2583
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !2583
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2583
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 2, !dbg !2583
  %5 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2583
  %tobool3 = icmp eq %struct.VEC_basic_block_gc* %5, null, !dbg !2583
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2583

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %5, i64 0, i32 0, !dbg !2583
  br label %cond.end, !dbg !2583

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !2583
  %6 = load i32, i32* %index, align 4, !dbg !2583
  call void @llvm.dbg.value(metadata i32 %6, metadata !2561, metadata !DIExpression()), !dbg !2570
  %call7 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %6) #8, !dbg !2583
  call fastcc void @find_uses_to_rename_bb(%struct.basic_block_def* %call7, %struct.bitmap_head_def** %use_blocks, %struct.bitmap_head_def* %need_phis) #8, !dbg !2585
  call void @llvm.dbg.value(metadata i32* %index, metadata !2561, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2562, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #8, !dbg !2581
  br label %for.cond, !dbg !2581, !llvm.loop !2586

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2588
  %cfg9 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !2588
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg9, align 8, !dbg !2588
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 0, !dbg !2588
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2588
  br label %for.cond10, !dbg !2588

for.cond10:                                       ; preds = %for.body13, %if.else
  %10 = phi %struct.control_flow_graph* [ %8, %if.else ], [ %.pre2, %for.body13 ], !dbg !2591
  %.pn = phi %struct.basic_block_def* [ %9, %if.else ], [ %bb.0, %for.body13 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2593
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2593
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2560, metadata !DIExpression()), !dbg !2570
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !2591
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2591
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %11, !dbg !2591
  br i1 %cmp, label %if.end.loopexit, label %for.body13, !dbg !2588

for.body13:                                       ; preds = %for.cond10
  tail call fastcc void @find_uses_to_rename_bb(%struct.basic_block_def* %bb.0, %struct.bitmap_head_def** %use_blocks, %struct.bitmap_head_def* %need_phis) #8, !dbg !2594
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2591
  %cfg12.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2596
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg12.phi.trans.insert, align 8, !dbg !2591
  br label %for.cond10, !dbg !2591, !llvm.loop !2597

if.end.loopexit:                                  ; preds = %for.cond10
  br label %if.end, !dbg !2599

if.end.loopexit1:                                 ; preds = %for.cond
  br label %if.end, !dbg !2599

if.end:                                           ; preds = %if.end.loopexit1, %if.end.loopexit
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2599
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2599
  ret void, !dbg !2599
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_exit_phis(%struct.bitmap_head_def* %names_to_rename, %struct.bitmap_head_def** %use_blocks, %struct.bitmap_head_def* %loop_exits) unnamed_addr #5 !dbg !2600 {
entry:
  %i = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %names_to_rename, metadata !2602, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %use_blocks, metadata !2603, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %loop_exits, metadata !2604, metadata !DIExpression()), !dbg !2607
  %0 = bitcast i32* %i to i8*, !dbg !2608
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2608
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2609
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2609
  call void @llvm.dbg.value(metadata i32* %i, metadata !2605, metadata !DIExpression(DW_OP_deref)), !dbg !2607
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2606, metadata !DIExpression(DW_OP_deref)), !dbg !2607
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %names_to_rename, i32 0, i32* nonnull %i) #8, !dbg !2610
  br label %for.cond, !dbg !2610

for.cond:                                         ; preds = %cond.end, %entry
  call void @llvm.dbg.value(metadata i32* %i, metadata !2605, metadata !DIExpression(DW_OP_deref)), !dbg !2607
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2606, metadata !DIExpression(DW_OP_deref)), !dbg !2607
  %call = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !2612
  %tobool = icmp eq i8 %call, 0, !dbg !2610
  br i1 %tobool, label %for.end, label %for.body, !dbg !2610

for.body:                                         ; preds = %for.cond
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2614
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 3, !dbg !2614
  %3 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2614
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %3, i64 0, i32 2, !dbg !2614
  %4 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2614
  %tobool1 = icmp eq %struct.VEC_tree_gc* %4, null, !dbg !2614
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !2614

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %4, i64 0, i32 0, !dbg !2614
  br label %cond.end, !dbg !2614

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !2614
  %5 = load i32, i32* %i, align 4, !dbg !2614
  call void @llvm.dbg.value(metadata i32 %5, metadata !2605, metadata !DIExpression()), !dbg !2607
  %call5 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond, i32 %5) #8, !dbg !2614
  %6 = load i32, i32* %i, align 4, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %6, metadata !2605, metadata !DIExpression()), !dbg !2607
  %idxprom = zext i32 %6 to i64, !dbg !2617
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %use_blocks, i64 %idxprom, !dbg !2617
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !2617
  call fastcc void @add_exit_phis_var(%union.tree_node* %call5, %struct.bitmap_head_def* %7, %struct.bitmap_head_def* %loop_exits) #8, !dbg !2618
  call void @llvm.dbg.value(metadata i32* %i, metadata !2605, metadata !DIExpression(DW_OP_deref)), !dbg !2607
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2606, metadata !DIExpression(DW_OP_deref)), !dbg !2607
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !2612
  br label %for.cond, !dbg !2612, !llvm.loop !2619

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2621
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2621
  ret void, !dbg !2621
}

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @verify_loop_closed_ssa() local_unnamed_addr #5 !dbg !2622 {
entry:
  %bsi = alloca %struct.gimple_stmt_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp8 = alloca %struct.edge_iterator, align 8
  %tmp18 = alloca %struct.gimple_stmt_iterator, align 8
  %0 = bitcast %struct.gimple_stmt_iterator* %bsi to i8*, !dbg !2631
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2631
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !2632
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2632
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2633
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2633
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2634
  %cmp = icmp ult i32 %call, 2, !dbg !2636
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2637

if.end:                                           ; preds = %entry
  tail call void @verify_ssa(i8 zeroext 0) #6, !dbg !2638
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2639
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !2639
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2639
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 0, !dbg !2639
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2639
  %6 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2641
  %7 = bitcast %struct.edge_iterator* %tmp8 to i8*, !dbg !2645
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp8, i64 0, i32 0, !dbg !2645
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp8, i64 0, i32 1, !dbg !2645
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2649
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2649
  %12 = bitcast %struct.gimple_stmt_iterator* %tmp18 to i8*, !dbg !2651
  br label %for.cond, !dbg !2639

for.cond:                                         ; preds = %for.inc27, %if.end
  %13 = phi %struct.control_flow_graph* [ %4, %if.end ], [ %.pre1, %for.inc27 ], !dbg !2653
  %.pn = phi %struct.basic_block_def* [ %5, %if.end ], [ %bb.0, %for.inc27 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2654
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2654
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2626, metadata !DIExpression()), !dbg !2655
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %13, i64 0, i32 1, !dbg !2653
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2653
  %cmp3 = icmp eq %struct.basic_block_def* %bb.0, %14, !dbg !2653
  br i1 %cmp3, label %cleanup.loopexit, label %for.body, !dbg !2639

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #7, !dbg !2656
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #6, !dbg !2656
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !2656
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7, !dbg !2656
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 0, !dbg !2645
  br label %for.cond4, !dbg !2657

for.cond4:                                        ; preds = %for.inc16, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2627, metadata !DIExpression(DW_OP_deref)), !dbg !2655
  %call5 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !2658
  %tobool = icmp eq i8 %call5, 0, !dbg !2659
  br i1 %tobool, label %for.body6, label %for.end17, !dbg !2660

for.body6:                                        ; preds = %for.cond4
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2627, metadata !DIExpression(DW_OP_deref)), !dbg !2655
  %call7 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !2661
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call7, metadata !2628, metadata !DIExpression()), !dbg !2655
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !2662
  %call9 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !2662
  %15 = extractvalue { i32, %struct.VEC_edge_gc** } %call9, 0, !dbg !2662
  store i32 %15, i32* %8, align 8, !dbg !2662
  %16 = extractvalue { i32, %struct.VEC_edge_gc** } %call9, 1, !dbg !2662
  store %struct.VEC_edge_gc** %16, %struct.VEC_edge_gc*** %9, align 8, !dbg !2662
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !2662
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !2662
  br label %for.cond10, !dbg !2662

for.cond10:                                       ; preds = %for.body13, %for.body6
  %17 = load i32, i32* %10, align 8, !dbg !2663
  %18 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %11, align 8, !dbg !2663
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2629, metadata !DIExpression(DW_OP_deref)), !dbg !2655
  %call11 = call fastcc zeroext i8 @ei_cond(i32 %17, %struct.VEC_edge_gc** %18, %struct.edge_def** nonnull %e) #8, !dbg !2663
  %tobool12 = icmp eq i8 %call11, 0, !dbg !2662
  br i1 %tobool12, label %for.inc16, label %for.body13, !dbg !2662

for.body13:                                       ; preds = %for.cond10
  %19 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2664
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !2629, metadata !DIExpression()), !dbg !2655
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %19, i64 0, i32 0, !dbg !2665
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2665
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !2629, metadata !DIExpression()), !dbg !2655
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %19, i64 0, i32 6, !dbg !2666
  %21 = load i32, i32* %dest_idx, align 4, !dbg !2666
  %call14 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call7, i32 %21) #8, !dbg !2666
  %call15 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call14) #8, !dbg !2666
  call fastcc void @check_loop_closed_ssa_use(%struct.basic_block_def* %20, %union.tree_node* %call15) #8, !dbg !2667
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2630, metadata !DIExpression(DW_OP_deref)), !dbg !2655
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2663
  br label %for.cond10, !dbg !2663, !llvm.loop !2668

for.inc16:                                        ; preds = %for.cond10
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2627, metadata !DIExpression(DW_OP_deref)), !dbg !2655
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #8, !dbg !2670
  br label %for.cond4, !dbg !2671, !llvm.loop !2672

for.end17:                                        ; preds = %for.cond4
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #7, !dbg !2674
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp18, %struct.basic_block_def* %bb.0) #8, !dbg !2674
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %12, i64 24, i1 false), !dbg !2674
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #7, !dbg !2674
  br label %for.cond19, !dbg !2675

for.cond19:                                       ; preds = %for.body23, %for.end17
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2627, metadata !DIExpression(DW_OP_deref)), !dbg !2655
  %call20 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !2676
  %tobool21 = icmp eq i8 %call20, 0, !dbg !2678
  br i1 %tobool21, label %for.body23, label %for.inc27, !dbg !2679

for.body23:                                       ; preds = %for.cond19
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2627, metadata !DIExpression(DW_OP_deref)), !dbg !2655
  %call24 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !2680
  call fastcc void @check_loop_closed_ssa_stmt(%struct.basic_block_def* %bb.0, %union.gimple_statement_d* %call24) #8, !dbg !2681
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2627, metadata !DIExpression(DW_OP_deref)), !dbg !2655
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #8, !dbg !2682
  br label %for.cond19, !dbg !2683, !llvm.loop !2684

for.inc27:                                        ; preds = %for.cond19
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2653
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2686
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2653
  br label %for.cond, !dbg !2653, !llvm.loop !2687

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !2689

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2689
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2689
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2689
  ret void, !dbg !2689
}

declare dso_local void @verify_ssa(i8 zeroext) local_unnamed_addr #2

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2690 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2694, metadata !DIExpression()), !dbg !2695
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2696
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2696
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2697
  %conv1 = zext i1 %cmp to i8, !dbg !2698
  ret i8 %conv1, !dbg !2699
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2700 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2704, metadata !DIExpression()), !dbg !2705
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2706
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2706
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2707
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2707
  ret %union.gimple_statement_d* %1, !dbg !2708
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2709 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2713, metadata !DIExpression()), !dbg !2715
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2716
  store i32 0, i32* %index, align 8, !dbg !2717
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2718
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2719
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2720
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2720
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2720
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2721 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2727, metadata !DIExpression()), !dbg !2728
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !2729
  %tobool = icmp eq i8 %call, 0, !dbg !2729
  br i1 %tobool, label %if.then, label %if.else, !dbg !2731

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !2732
  br label %return, !dbg !2734

if.else:                                          ; preds = %entry
  br label %return, !dbg !2735

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2737
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2737
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2737
  ret i8 %retval.0, !dbg !2738
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_loop_closed_ssa_use(%struct.basic_block_def* %bb, %union.tree_node* %use) unnamed_addr #5 !dbg !2739 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2743, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata %union.tree_node* %use, metadata !2744, metadata !DIExpression()), !dbg !2747
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %use, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2748
  %bf.load = load i64, i64* %0, align 8, !dbg !2748
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2750
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2750
  br i1 %cmp, label %lor.lhs.false, label %cleanup.cont, !dbg !2751

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %use) #6, !dbg !2752
  %tobool = icmp eq i8 %call, 0, !dbg !2752
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !2753

if.end:                                           ; preds = %lor.lhs.false
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %use, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2754
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2754
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %1, align 8, !dbg !2754
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %2, metadata !2745, metadata !DIExpression()), !dbg !2747
  %call1 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %2) #8, !dbg !2755
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call1, metadata !2746, metadata !DIExpression()), !dbg !2747
  %tobool2 = icmp eq %struct.basic_block_def* %call1, null, !dbg !2756
  br i1 %tobool2, label %cleanup.cont, label %lor.lhs.false3, !dbg !2756

lor.lhs.false3:                                   ; preds = %if.end
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call1, i64 0, i32 3, !dbg !2756
  %3 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2756
  %call4 = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %3, %struct.basic_block_def* %bb) #6, !dbg !2756
  %tobool5 = icmp eq i8 %call4, 0, !dbg !2756
  br i1 %tobool5, label %cond.true, label %cleanup.cont, !dbg !2756

cond.true:                                        ; preds = %lor.lhs.false3
  tail call void @fancy_abort(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 425, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2756
  br label %cleanup.cont, !dbg !2756

cleanup.cont:                                     ; preds = %lor.lhs.false3, %if.end, %lor.lhs.false, %entry, %cond.true
  ret void, !dbg !2757
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !2758 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !2765, metadata !DIExpression()), !dbg !2766
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !2767
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !2767
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2768
  ret %union.tree_node* %1, !dbg !2769
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !2770 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2774, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i32 %i, metadata !2775, metadata !DIExpression()), !dbg !2776
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #8, !dbg !2777
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !2778
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !2779
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2780 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2785, metadata !DIExpression()), !dbg !2786
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2787
  %0 = load i32, i32* %index, align 8, !dbg !2787
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2787
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2787
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !2787
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2787
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2787

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2787
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2787
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !2787
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2787
  br label %cond.end, !dbg !2787

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2787
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2787
  %cmp = icmp ult i32 %0, %call2, !dbg !2787
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2787

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2787
  br label %cond.end5, !dbg !2787

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2788
  %inc = add i32 %5, 1, !dbg !2788
  store i32 %inc, i32* %index, align 8, !dbg !2788
  ret void, !dbg !2789
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2790 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2794, metadata !DIExpression()), !dbg !2795
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2796
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2796
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2797
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2797
  %2 = load i64, i64* %1, align 8, !dbg !2797
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2798
  store i64 %2, i64* %3, align 8, !dbg !2798
  ret void, !dbg !2799
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2800 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2804, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2805, metadata !DIExpression()), !dbg !2808
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !2809
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2806, metadata !DIExpression()), !dbg !2807
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !2810
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2811
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2812
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2813
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2814
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2815
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2816
  ret void, !dbg !2817
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_loop_closed_ssa_stmt(%struct.basic_block_def* %bb, %union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !2818 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2822, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2823, metadata !DIExpression()), !dbg !2838
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2839
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7, !dbg !2839
  %call = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %stmt) #8, !dbg !2840
  %tobool = icmp eq i8 %call, 0, !dbg !2840
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2842

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2824, metadata !DIExpression(DW_OP_deref)), !dbg !2838
  %call1 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 5) #8, !dbg !2843
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2837, metadata !DIExpression()), !dbg !2838
  br label %for.cond, !dbg !2843

for.cond:                                         ; preds = %for.body, %if.end
  %var.0 = phi %union.tree_node* [ %call1, %if.end ], [ %call4, %for.body ], !dbg !2845
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !2837, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2824, metadata !DIExpression(DW_OP_deref)), !dbg !2838
  %call2 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !2846
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2846
  br i1 %tobool3, label %for.body, label %cleanup.loopexit, !dbg !2843

for.body:                                         ; preds = %for.cond
  call fastcc void @check_loop_closed_ssa_use(%struct.basic_block_def* %bb, %union.tree_node* %var.0) #8, !dbg !2848
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2824, metadata !DIExpression(DW_OP_deref)), !dbg !2838
  %call4 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !2846
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2837, metadata !DIExpression()), !dbg !2838
  br label %for.cond, !dbg !2846, !llvm.loop !2849

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !2851

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7, !dbg !2851
  ret void, !dbg !2851
}

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @split_loop_exit_edge(%struct.edge_def* %exit) local_unnamed_addr #5 !dbg !2852 {
entry:
  %psi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %exit, metadata !2856, metadata !DIExpression()), !dbg !2866
  %dest1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %exit, i64 0, i32 1, !dbg !2867
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest1, align 8, !dbg !2867
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2857, metadata !DIExpression()), !dbg !2866
  %call = tail call %struct.basic_block_def* @split_edge(%struct.edge_def* %exit) #6, !dbg !2868
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2858, metadata !DIExpression()), !dbg !2866
  %1 = bitcast %struct.gimple_stmt_iterator* %psi to i8*, !dbg !2869
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2869
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2870
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !2870
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %0) #6, !dbg !2870
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !2870
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !2870
  br label %for.cond, !dbg !2872

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !2864, metadata !DIExpression(DW_OP_deref)), !dbg !2866
  %call2 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %psi) #8, !dbg !2873
  %tobool = icmp eq i8 %call2, 0, !dbg !2875
  br i1 %tobool, label %for.body, label %for.end, !dbg !2876

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !2864, metadata !DIExpression(DW_OP_deref)), !dbg !2866
  %call3 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %psi) #8, !dbg !2877
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call3, metadata !2859, metadata !DIExpression()), !dbg !2866
  %call4 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call) #8, !dbg !2879
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call4, i64 0, i32 6, !dbg !2879
  %3 = load i32, i32* %dest_idx, align 4, !dbg !2879
  %call5 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call3, i32 %3) #8, !dbg !2879
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call5, metadata !2863, metadata !DIExpression()), !dbg !2866
  %call6 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call) #8, !dbg !2880
  %call7 = call fastcc i32 @gimple_phi_arg_location_from_edge(%union.gimple_statement_d* %call3, %struct.edge_def* %call6) #8, !dbg !2881
  call void @llvm.dbg.value(metadata i32 %call7, metadata !2865, metadata !DIExpression()), !dbg !2866
  %call8 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call5) #8, !dbg !2882
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !2862, metadata !DIExpression()), !dbg !2866
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2883
  %bf.load = load i64, i64* %4, align 8, !dbg !2883
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2885
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2885
  br i1 %cmp, label %if.end, label %for.inc, !dbg !2886

if.end:                                           ; preds = %for.body
  %call9 = call %union.tree_node* @duplicate_ssa_name(%union.tree_node* %call8, %union.gimple_statement_d* null) #6, !dbg !2887
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !2861, metadata !DIExpression()), !dbg !2866
  %call10 = call %union.gimple_statement_d* @create_phi_node(%union.tree_node* %call9, %struct.basic_block_def* %call) #6, !dbg !2888
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call10, metadata !2860, metadata !DIExpression()), !dbg !2866
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2889
  %5 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2889
  store %union.gimple_statement_d* %call10, %union.gimple_statement_d** %5, align 8, !dbg !2890
  call void @add_phi_arg(%union.gimple_statement_d* %call10, %union.tree_node* %call8, %struct.edge_def* %exit, i32 %call7) #6, !dbg !2891
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %call5, %union.tree_node* %call9) #8, !dbg !2892
  br label %for.inc, !dbg !2893

for.inc:                                          ; preds = %for.body, %if.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !2864, metadata !DIExpression(DW_OP_deref)), !dbg !2866
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %psi) #8, !dbg !2894
  br label %for.cond, !dbg !2895, !llvm.loop !2896

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2898
  ret %struct.basic_block_def* %call, !dbg !2899
}

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2900 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2907, metadata !DIExpression()), !dbg !2908
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #8, !dbg !2909
  %tobool = icmp eq i8 %call, 0, !dbg !2909
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2909

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2909
  br label %cond.end, !dbg !2909

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2910
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2910
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2910
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2910

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2910
  br label %cond.end5, !dbg !2910

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !2910
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !2910
  ret %struct.edge_def* %call7, !dbg !2911
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(%union.gimple_statement_d* %gs, %struct.edge_def* %e) unnamed_addr #0 !dbg !2912 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2916, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2917, metadata !DIExpression()), !dbg !2918
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 6, !dbg !2919
  %0 = load i32, i32* %dest_idx, align 4, !dbg !2919
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %0) #8, !dbg !2920
  %locus = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 2, !dbg !2921
  %1 = load i32, i32* %locus, align 8, !dbg !2921
  ret i32 %1, !dbg !2922
}

declare dso_local %union.tree_node* @duplicate_ssa_name(%union.tree_node*, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) unnamed_addr #0 !dbg !2923 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !2927, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !2928, metadata !DIExpression()), !dbg !2929
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use) #8, !dbg !2930
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !2931
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !2931
  store %union.tree_node* %val, %union.tree_node** %0, align 8, !dbg !2932
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) #8, !dbg !2933
  ret void, !dbg !2934
}

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @ip_end_pos(%struct.loop* %loop) local_unnamed_addr #5 !dbg !2935 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2939, metadata !DIExpression()), !dbg !2940
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !2941
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !2941
  ret %struct.basic_block_def* %0, !dbg !2942
}

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @ip_normal_pos(%struct.loop* %loop) local_unnamed_addr #5 !dbg !2943 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2945, metadata !DIExpression()), !dbg !2949
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !2950
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !2950
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %0) #8, !dbg !2952
  %tobool = icmp eq i8 %call, 0, !dbg !2952
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2953

if.end:                                           ; preds = %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !2954
  %call2 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %1) #8, !dbg !2955
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call2, metadata !2947, metadata !DIExpression()), !dbg !2949
  %call3 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %call2) #6, !dbg !2956
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call3, metadata !2946, metadata !DIExpression()), !dbg !2949
  %tobool4 = icmp eq %union.gimple_statement_d* %call3, null, !dbg !2957
  br i1 %tobool4, label %cleanup, label %lor.lhs.false, !dbg !2959

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call3) #8, !dbg !2960
  %cmp = icmp eq i32 %call5, 1, !dbg !2961
  br i1 %cmp, label %if.end7, label %cleanup, !dbg !2962

if.end7:                                          ; preds = %lor.lhs.false
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call2, i64 0, i32 1, !dbg !2963
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2963
  %tobool8 = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !2963
  br i1 %tobool8, label %cond.end, label %cond.true, !dbg !2963

cond.true:                                        ; preds = %if.end7
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !2963
  br label %cond.end, !dbg !2963

cond.end:                                         ; preds = %if.end7, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.end7 ], !dbg !2963
  %call10 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 0) #8, !dbg !2963
  call void @llvm.dbg.value(metadata %struct.edge_def* %call10, metadata !2948, metadata !DIExpression()), !dbg !2949
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call10, i64 0, i32 1, !dbg !2964
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2964
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !2966
  %cmp12 = icmp eq %struct.basic_block_def* %3, %4, !dbg !2967
  br i1 %cmp12, label %if.then13, label %if.end23, !dbg !2968

if.then13:                                        ; preds = %cond.end
  %5 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2969
  %tobool15 = icmp eq %struct.VEC_edge_gc* %5, null, !dbg !2969
  br i1 %tobool15, label %cond.end20, label %cond.true16, !dbg !2969

cond.true16:                                      ; preds = %if.then13
  %base18 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %5, i64 0, i32 0, !dbg !2969
  br label %cond.end20, !dbg !2969

cond.end20:                                       ; preds = %if.then13, %cond.true16
  %cond21 = phi %struct.VEC_edge_base* [ %base18, %cond.true16 ], [ null, %if.then13 ], !dbg !2969
  %call22 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond21, i32 1) #8, !dbg !2969
  call void @llvm.dbg.value(metadata %struct.edge_def* %call22, metadata !2948, metadata !DIExpression()), !dbg !2949
  %dest24.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call22, i64 0, i32 1, !dbg !2970
  %.pre = load %struct.basic_block_def*, %struct.basic_block_def** %dest24.phi.trans.insert, align 8, !dbg !2972
  br label %if.end23, !dbg !2973

if.end23:                                         ; preds = %cond.end20, %cond.end
  %6 = phi %struct.basic_block_def* [ %.pre, %cond.end20 ], [ %3, %cond.end ], !dbg !2972
  %call25 = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %6) #6, !dbg !2974
  %tobool26 = icmp eq i8 %call25, 0, !dbg !2974
  %.call2 = select i1 %tobool26, %struct.basic_block_def* %call2, %struct.basic_block_def* null, !dbg !2949
  br label %cleanup, !dbg !2949

cleanup:                                          ; preds = %lor.lhs.false, %if.end, %entry, %if.end23
  %retval.0 = phi %struct.basic_block_def* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %if.end ], [ %.call2, %if.end23 ], !dbg !2949
  ret %struct.basic_block_def* %retval.0, !dbg !2975
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2976 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2980, metadata !DIExpression()), !dbg !2981
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2982
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2982
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2982
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2982

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2982
  br label %cond.end, !dbg !2982

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2982
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2982
  %cmp = icmp eq i32 %call, 1, !dbg !2983
  %conv2 = zext i1 %cmp to i8, !dbg !2982
  ret i8 %conv2, !dbg !2984
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2985 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2989, metadata !DIExpression()), !dbg !2990
  %call = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) #8, !dbg !2991
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !2992
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2992
  ret %struct.basic_block_def* %0, !dbg !2993
}

declare dso_local %union.gimple_statement_d* @last_stmt(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2994 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3001, metadata !DIExpression()), !dbg !3002
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3003
  %bf.load = load i32, i32* %0, align 8, !dbg !3003
  %bf.clear = and i32 %bf.load, 255, !dbg !3003
  ret i32 %bf.clear, !dbg !3004
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3005 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3011, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3012, metadata !DIExpression()), !dbg !3013
  br label %land.end, !dbg !3014

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3014
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3014
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3014
  ret %struct.edge_def* %0, !dbg !3014
}

declare dso_local zeroext i8 @flow_bb_inside_loop_p(%struct.loop*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @standard_iv_increment_position(%struct.loop* %loop, %struct.gimple_stmt_iterator* %bsi, i8* %insert_after) local_unnamed_addr #5 !dbg !3015 {
entry:
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3019, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !3020, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8* %insert_after, metadata !3021, metadata !DIExpression()), !dbg !3025
  %call = tail call %struct.basic_block_def* @ip_normal_pos(%struct.loop* %loop) #8, !dbg !3026
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3022, metadata !DIExpression()), !dbg !3025
  %call1 = tail call %struct.basic_block_def* @ip_end_pos(%struct.loop* %loop) #8, !dbg !3027
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call1, metadata !3023, metadata !DIExpression()), !dbg !3025
  %call2 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %call1) #6, !dbg !3028
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !3024, metadata !DIExpression()), !dbg !3025
  %tobool = icmp eq %struct.basic_block_def* %call, null, !dbg !3029
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3031

lor.lhs.false:                                    ; preds = %entry
  %tobool3 = icmp eq %union.gimple_statement_d* %call2, null, !dbg !3032
  br i1 %tobool3, label %if.else, label %land.lhs.true, !dbg !3033

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call2) #8, !dbg !3034
  %cmp = icmp eq i32 %call4, 4, !dbg !3035
  br i1 %cmp, label %if.else, label %if.then, !dbg !3036

if.then:                                          ; preds = %land.lhs.true, %entry
  %0 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3037
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3037
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %call1) #8, !dbg !3037
  %1 = bitcast %struct.gimple_stmt_iterator* %bsi to i8*, !dbg !3037
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* nonnull align 8 %0, i64 24, i1 false), !dbg !3037
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3037
  br label %if.end, !dbg !3039

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp5 to i8*, !dbg !3040
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !3040
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp5, %struct.basic_block_def* nonnull %call) #8, !dbg !3040
  %3 = bitcast %struct.gimple_stmt_iterator* %bsi to i8*, !dbg !3040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !3040
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !3040
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3042
  store i8 %storemerge, i8* %insert_after, align 1, !dbg !3042
  ret void, !dbg !3043
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3044 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3046, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3047, metadata !DIExpression()), !dbg !3050
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !3051
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3048, metadata !DIExpression()), !dbg !3049
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #8, !dbg !3052
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3053
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3054
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3055
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3056
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3057
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3058
  ret void, !dbg !3059
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @gimple_duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %e, i32 %ndupl, %struct.simple_bitmap_def* %wont_exit, %struct.edge_def* %orig, %struct.VEC_edge_heap** %to_remove, i32 %flags) local_unnamed_addr #5 !dbg !3060 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3080, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3081, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i32 %ndupl, metadata !3082, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %wont_exit, metadata !3083, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata %struct.edge_def* %orig, metadata !3084, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %to_remove, metadata !3085, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3086, metadata !DIExpression()), !dbg !3088
  %call = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 2) #8, !dbg !3089
  %tobool = icmp eq i8 %call, 0, !dbg !3089
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3091

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 1) #8, !dbg !3092
  %tobool2 = icmp eq i8 %call1, 0, !dbg !3092
  br i1 %tobool2, label %cleanup, label %if.end4, !dbg !3094

if.end4:                                          ; preds = %if.end
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3095
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3095
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3095
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !3095
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !3095
  call void @llvm.dbg.value(metadata i32 %2, metadata !3087, metadata !DIExpression()), !dbg !3088
  %call5 = tail call zeroext i8 @duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %e, i32 %ndupl, %struct.simple_bitmap_def* %wont_exit, %struct.edge_def* %orig, %struct.VEC_edge_heap** %to_remove, i32 %flags) #6, !dbg !3096
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3096
  br i1 %tobool6, label %cleanup, label %if.end8, !dbg !3098

if.end8:                                          ; preds = %if.end4
  tail call void @flush_pending_stmts(%struct.edge_def* %e) #6, !dbg !3099
  tail call fastcc void @copy_phi_node_args(i32 %2) #8, !dbg !3100
  tail call void @scev_reset() #6, !dbg !3101
  br label %cleanup, !dbg !3102

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.end8
  %retval.0 = phi i8 [ 1, %if.end8 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ], !dbg !3088
  ret i8 %retval.0, !dbg !3103
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 %flags) unnamed_addr #0 !dbg !3104 {
entry:
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3108, metadata !DIExpression()), !dbg !3109
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3110
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3110
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3110
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !3111
  %2 = load i32, i32* %state, align 8, !dbg !3111
  %and = and i32 %2, %flags, !dbg !3112
  %cmp = icmp eq i32 %and, %flags, !dbg !3113
  %conv1 = zext i1 %cmp to i8, !dbg !3114
  ret i8 %conv1, !dbg !3115
}

declare dso_local zeroext i8 @duplicate_loop_to_header_edge(%struct.loop*, %struct.edge_def*, i32, %struct.simple_bitmap_def*, %struct.edge_def*, %struct.VEC_edge_heap**, i32) local_unnamed_addr #2

declare dso_local void @flush_pending_stmts(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_phi_node_args(i32 %first_new_block) unnamed_addr #5 !dbg !3116 {
entry:
  call void @llvm.dbg.value(metadata i32 %first_new_block, metadata !3118, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 %first_new_block, metadata !3119, metadata !DIExpression()), !dbg !3120
  br label %for.cond, !dbg !3121

for.cond:                                         ; preds = %cond.end, %entry
  %i.0 = phi i32 [ %first_new_block, %entry ], [ %inc, %cond.end ], !dbg !3123
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3119, metadata !DIExpression()), !dbg !3120
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3124
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3124
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3124
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !3124
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !3124
  %cmp = icmp ult i32 %i.0, %2, !dbg !3126
  br i1 %cmp, label %for.body, label %for.cond6.preheader, !dbg !3127

for.cond6.preheader:                              ; preds = %for.cond
  %.lcssa11 = phi %struct.control_flow_graph* [ %1, %for.cond ], !dbg !3124
  %.lcssa10 = phi i32 [ %2, %for.cond ], !dbg !3124
  br label %for.cond6, !dbg !3128

for.body:                                         ; preds = %for.cond
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 2, !dbg !3130
  %3 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3130
  %tobool = icmp eq %struct.VEC_basic_block_gc* %3, null, !dbg !3130
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3130

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %3, i64 0, i32 0, !dbg !3130
  br label %cond.end, !dbg !3130

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !3130
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %i.0) #8, !dbg !3130
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 13, !dbg !3131
  %4 = load i32, i32* %flags, align 8, !dbg !3132
  %or = or i32 %4, 128, !dbg !3132
  store i32 %or, i32* %flags, align 8, !dbg !3132
  %inc = add i32 %i.0, 1, !dbg !3133
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3119, metadata !DIExpression()), !dbg !3120
  br label %for.cond, !dbg !3134, !llvm.loop !3135

for.cond6:                                        ; preds = %for.cond6.preheader, %cond.end22
  %5 = phi i32 [ %.pre2, %cond.end22 ], [ %.lcssa10, %for.cond6.preheader ], !dbg !3137
  %6 = phi %struct.control_flow_graph* [ %.pre1, %cond.end22 ], [ %.lcssa11, %for.cond6.preheader ], !dbg !3137
  %i.1 = phi i32 [ %inc26, %cond.end22 ], [ %first_new_block, %for.cond6.preheader ], !dbg !3139
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3119, metadata !DIExpression()), !dbg !3120
  %cmp10 = icmp ult i32 %i.1, %5, !dbg !3140
  br i1 %cmp10, label %for.body11, label %for.cond28.preheader, !dbg !3128

for.cond28.preheader:                             ; preds = %for.cond6
  %.lcssa9 = phi i32 [ %5, %for.cond6 ], !dbg !3137
  %.lcssa = phi %struct.control_flow_graph* [ %6, %for.cond6 ], !dbg !3137
  br label %for.cond28, !dbg !3141

for.body11:                                       ; preds = %for.cond6
  %x_basic_block_info14 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 2, !dbg !3143
  %7 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info14, align 8, !dbg !3143
  %tobool15 = icmp eq %struct.VEC_basic_block_gc* %7, null, !dbg !3143
  br i1 %tobool15, label %cond.end22, label %cond.true16, !dbg !3143

cond.true16:                                      ; preds = %for.body11
  %base20 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %7, i64 0, i32 0, !dbg !3143
  br label %cond.end22, !dbg !3143

cond.end22:                                       ; preds = %for.body11, %cond.true16
  %cond23 = phi %struct.VEC_basic_block_base* [ %base20, %cond.true16 ], [ null, %for.body11 ], !dbg !3143
  %call24 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond23, i32 %i.1) #8, !dbg !3143
  tail call void @add_phi_args_after_copy_bb(%struct.basic_block_def* %call24) #6, !dbg !3144
  %inc26 = add i32 %i.1, 1, !dbg !3145
  call void @llvm.dbg.value(metadata i32 %inc26, metadata !3119, metadata !DIExpression()), !dbg !3120
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3137
  %cfg8.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3146
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg8.phi.trans.insert, align 8, !dbg !3137
  %x_last_basic_block9.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre1, i64 0, i32 5, !dbg !3146
  %.pre2 = load i32, i32* %x_last_basic_block9.phi.trans.insert, align 8, !dbg !3137
  br label %for.cond6, !dbg !3147, !llvm.loop !3148

for.cond28:                                       ; preds = %for.cond28.preheader, %cond.end44
  %8 = phi i32 [ %.pre5, %cond.end44 ], [ %.lcssa9, %for.cond28.preheader ], !dbg !3150
  %9 = phi %struct.control_flow_graph* [ %.pre4, %cond.end44 ], [ %.lcssa, %for.cond28.preheader ], !dbg !3150
  %i.2 = phi i32 [ %inc49, %cond.end44 ], [ %first_new_block, %for.cond28.preheader ], !dbg !3152
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !3119, metadata !DIExpression()), !dbg !3120
  %cmp32 = icmp ult i32 %i.2, %8, !dbg !3153
  br i1 %cmp32, label %for.body33, label %for.end50, !dbg !3141

for.body33:                                       ; preds = %for.cond28
  %x_basic_block_info36 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 2, !dbg !3154
  %10 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info36, align 8, !dbg !3154
  %tobool37 = icmp eq %struct.VEC_basic_block_gc* %10, null, !dbg !3154
  br i1 %tobool37, label %cond.end44, label %cond.true38, !dbg !3154

cond.true38:                                      ; preds = %for.body33
  %base42 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %10, i64 0, i32 0, !dbg !3154
  br label %cond.end44, !dbg !3154

cond.end44:                                       ; preds = %for.body33, %cond.true38
  %cond45 = phi %struct.VEC_basic_block_base* [ %base42, %cond.true38 ], [ null, %for.body33 ], !dbg !3154
  %call46 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond45, i32 %i.2) #8, !dbg !3154
  %flags47 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call46, i64 0, i32 13, !dbg !3155
  %11 = load i32, i32* %flags47, align 8, !dbg !3156
  %and = and i32 %11, -129, !dbg !3156
  store i32 %and, i32* %flags47, align 8, !dbg !3156
  %inc49 = add i32 %i.2, 1, !dbg !3157
  call void @llvm.dbg.value(metadata i32 %inc49, metadata !3119, metadata !DIExpression()), !dbg !3120
  %.pre3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3150
  %cfg30.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre3, i64 0, i32 1, !dbg !3158
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg30.phi.trans.insert, align 8, !dbg !3150
  %x_last_basic_block31.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre4, i64 0, i32 5, !dbg !3158
  %.pre5 = load i32, i32* %x_last_basic_block31.phi.trans.insert, align 8, !dbg !3150
  br label %for.cond28, !dbg !3159, !llvm.loop !3160

for.end50:                                        ; preds = %for.cond28
  ret void, !dbg !3162
}

declare dso_local void @scev_reset() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @can_unroll_loop_p(%struct.loop* %loop, i32 %factor, %struct.tree_niter_desc* %niter) local_unnamed_addr #5 !dbg !3163 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3183, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i32 %factor, metadata !3184, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata %struct.tree_niter_desc* %niter, metadata !3185, metadata !DIExpression()), !dbg !3187
  %call = tail call %struct.edge_def* @single_dom_exit(%struct.loop* %loop) #6, !dbg !3188
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !3186, metadata !DIExpression()), !dbg !3187
  %tobool = icmp eq %struct.edge_def* %call, null, !dbg !3189
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3191

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i8 @number_of_iterations_exit(%struct.loop* %loop, %struct.edge_def* nonnull %call, %struct.tree_niter_desc* %niter, i8 zeroext 0) #6, !dbg !3192
  %tobool2 = icmp eq i8 %call1, 0, !dbg !3192
  br i1 %tobool2, label %cleanup, label %lor.lhs.false, !dbg !3194

lor.lhs.false:                                    ; preds = %if.end
  %cmp = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %niter, i64 0, i32 6, !dbg !3195
  %0 = load i32, i32* %cmp, align 8, !dbg !3195
  %cmp3 = icmp eq i32 %0, 0, !dbg !3196
  br i1 %cmp3, label %cleanup, label %lor.lhs.false4, !dbg !3197

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %may_be_zero = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %niter, i64 0, i32 1, !dbg !3198
  %1 = load %union.tree_node*, %union.tree_node** %may_be_zero, align 8, !dbg !3198
  %call5 = tail call zeroext i8 @contains_abnormal_ssa_name_p(%union.tree_node* %1) #6, !dbg !3199
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3199
  br i1 %tobool6, label %lor.lhs.false7, label %cleanup, !dbg !3200

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %base = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %niter, i64 0, i32 4, i32 0, !dbg !3201
  %2 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !3201
  %call8 = tail call zeroext i8 @contains_abnormal_ssa_name_p(%union.tree_node* %2) #6, !dbg !3202
  %tobool10 = icmp eq i8 %call8, 0, !dbg !3202
  br i1 %tobool10, label %lor.lhs.false11, label %cleanup, !dbg !3203

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %step = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %niter, i64 0, i32 4, i32 1, !dbg !3204
  %3 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !3204
  %call13 = tail call zeroext i8 @contains_abnormal_ssa_name_p(%union.tree_node* %3) #6, !dbg !3205
  %tobool15 = icmp eq i8 %call13, 0, !dbg !3205
  br i1 %tobool15, label %lor.lhs.false16, label %cleanup, !dbg !3206

lor.lhs.false16:                                  ; preds = %lor.lhs.false11
  %bound = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %niter, i64 0, i32 5, !dbg !3207
  %4 = load %union.tree_node*, %union.tree_node** %bound, align 8, !dbg !3207
  %call17 = tail call zeroext i8 @contains_abnormal_ssa_name_p(%union.tree_node* %4) #6, !dbg !3208
  %tobool19 = icmp eq i8 %call17, 0, !dbg !3208
  br i1 %tobool19, label %if.end21, label %cleanup, !dbg !3209

if.end21:                                         ; preds = %lor.lhs.false16
  %call22 = tail call zeroext i8 @can_duplicate_loop_p(%struct.loop* %loop) #6, !dbg !3210
  %tobool23 = icmp eq i8 %call22, 0, !dbg !3210
  br i1 %tobool23, label %cleanup, label %if.end25, !dbg !3212

if.end25:                                         ; preds = %if.end21
  %call26 = tail call i32 @tree_num_loop_insns(%struct.loop* %loop, %struct.eni_weights_d* nonnull @eni_size_weights) #6, !dbg !3213
  %mul = mul i32 %call26, %factor, !dbg !3215
  %5 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !3216
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %5, i64 26, i32 1, !dbg !3216
  %6 = load i32, i32* %value, align 8, !dbg !3216
  %cmp27 = icmp ule i32 %mul, %6, !dbg !3217
  %. = zext i1 %cmp27 to i8, !dbg !3187
  br label %cleanup, !dbg !3187

cleanup:                                          ; preds = %if.end21, %lor.lhs.false16, %lor.lhs.false11, %lor.lhs.false7, %lor.lhs.false4, %if.end, %entry, %if.end25, %lor.lhs.false
  %retval.0 = phi i8 [ 0, %entry ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false4 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.end21 ], [ %., %if.end25 ], !dbg !3187
  ret i8 %retval.0, !dbg !3218
}

declare dso_local %struct.edge_def* @single_dom_exit(%struct.loop*) local_unnamed_addr #2

declare dso_local zeroext i8 @number_of_iterations_exit(%struct.loop*, %struct.edge_def*, %struct.tree_niter_desc*, i8 zeroext) local_unnamed_addr #2

declare dso_local zeroext i8 @contains_abnormal_ssa_name_p(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @can_duplicate_loop_p(%struct.loop*) local_unnamed_addr #2

declare dso_local i32 @tree_num_loop_insns(%struct.loop*, %struct.eni_weights_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @tree_transform_and_unroll_loop(%struct.loop* %loop, i32 %factor, %struct.edge_def* %exit, %struct.tree_niter_desc* %desc, void (%struct.loop*, i8*)* %transform, i8* %data) local_unnamed_addr #5 !dbg !3219 {
entry:
  %ctr_before = alloca %union.tree_node*, align 8
  %ctr_after = alloca %union.tree_node*, align 8
  %enter_main_cond = alloca %union.tree_node*, align 8
  %exit_base = alloca %union.tree_node*, align 8
  %exit_step = alloca %union.tree_node*, align 8
  %exit_bound = alloca %union.tree_node*, align 8
  %exit_cmp = alloca i32, align 4
  %psi_old_loop = alloca %struct.gimple_stmt_iterator, align 8
  %psi_new_loop = alloca %struct.gimple_stmt_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %bsi = alloca %struct.gimple_stmt_iterator, align 8
  %to_remove = alloca %struct.VEC_edge_heap*, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp41 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp42 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp197 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3227, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 %factor, metadata !3228, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata %struct.edge_def* %exit, metadata !3229, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata %struct.tree_niter_desc* %desc, metadata !3230, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata void (%struct.loop*, i8*)* %transform, metadata !3231, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i8* %data, metadata !3232, metadata !DIExpression()), !dbg !3275
  %0 = bitcast %union.tree_node** %ctr_before to i8*, !dbg !3276
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3276
  %1 = bitcast %union.tree_node** %ctr_after to i8*, !dbg !3276
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3276
  %2 = bitcast %union.tree_node** %enter_main_cond to i8*, !dbg !3277
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !3277
  %3 = bitcast %union.tree_node** %exit_base to i8*, !dbg !3277
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !3277
  %4 = bitcast %union.tree_node** %exit_step to i8*, !dbg !3277
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7, !dbg !3277
  %5 = bitcast %union.tree_node** %exit_bound to i8*, !dbg !3277
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !3277
  %6 = bitcast i32* %exit_cmp to i8*, !dbg !3278
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #7, !dbg !3278
  %7 = bitcast %struct.gimple_stmt_iterator* %psi_old_loop to i8*, !dbg !3279
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #7, !dbg !3279
  %8 = bitcast %struct.gimple_stmt_iterator* %psi_new_loop to i8*, !dbg !3279
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7, !dbg !3279
  %9 = bitcast %struct.edge_def** %e to i8*, !dbg !3280
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7, !dbg !3280
  %10 = bitcast %struct.gimple_stmt_iterator* %bsi to i8*, !dbg !3281
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #7, !dbg !3281
  %call = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !3282
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 7, !dbg !3283
  %11 = load i32, i32* %flags, align 8, !dbg !3283
  %and = and i32 %11, 128, !dbg !3284
  call void @llvm.dbg.value(metadata i32 %and, metadata !3272, metadata !DIExpression()), !dbg !3275
  %12 = bitcast %struct.VEC_edge_heap** %to_remove to i8*, !dbg !3285
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #7, !dbg !3285
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* null, metadata !3274, metadata !DIExpression()), !dbg !3275
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %to_remove, align 8, !dbg !3286
  %call1 = tail call i32 @expected_loop_iterations(%struct.loop* %loop) #6, !dbg !3287
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3263, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata %union.tree_node** %enter_main_cond, metadata !3236, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  call void @llvm.dbg.value(metadata %union.tree_node** %exit_base, metadata !3237, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  call void @llvm.dbg.value(metadata %union.tree_node** %exit_step, metadata !3238, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  call void @llvm.dbg.value(metadata %union.tree_node** %exit_bound, metadata !3239, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  call void @llvm.dbg.value(metadata i32* %exit_cmp, metadata !3240, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  call fastcc void @determine_exit_conditions(%struct.loop* %loop, %struct.tree_niter_desc* %desc, i32 %factor, %union.tree_node** nonnull %enter_main_cond, %union.tree_node** nonnull %exit_base, %union.tree_node** nonnull %exit_step, i32* nonnull %exit_cmp, %union.tree_node** nonnull %exit_bound) #8, !dbg !3288
  %13 = load %union.tree_node*, %union.tree_node** %enter_main_cond, align 8, !dbg !3289
  call void @llvm.dbg.value(metadata %union.tree_node* %13, metadata !3236, metadata !DIExpression()), !dbg !3275
  %call2 = call i32 @integer_nonzerop(%union.tree_node* %13) #6, !dbg !3291
  %tobool = icmp eq i32 %call2, 0, !dbg !3291
  %. = select i1 %tobool, i32 9000, i32 10000
  call void @llvm.dbg.value(metadata i32 %., metadata !3264, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 %., metadata !3265, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 10000, metadata !3266, metadata !DIExpression()), !dbg !3275
  %14 = bitcast %union.tree_node** %enter_main_cond to i8**, !dbg !3292
  %15 = load i8*, i8** %14, align 8, !dbg !3292
  %call3 = call %struct.loop* @loop_version(%struct.loop* %loop, i8* %15, %struct.basic_block_def** null, i32 %., i32 %., i32 10000, i8 zeroext 1) #6, !dbg !3293
  call void @llvm.dbg.value(metadata %struct.loop* %call3, metadata !3250, metadata !DIExpression()), !dbg !3275
  %cmp = icmp eq %struct.loop* %call3, null, !dbg !3294
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3294

cond.true:                                        ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 928, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3294
  br label %cond.end, !dbg !3294

cond.end:                                         ; preds = %entry, %cond.true
  call void @update_ssa(i32 2048) #6, !dbg !3295
  %div = udiv i32 %call1, %factor, !dbg !3296
  call void @llvm.dbg.value(metadata i32 %div, metadata !3269, metadata !DIExpression()), !dbg !3275
  %cmp4 = icmp ult i32 %div, 5, !dbg !3297
  %cmp6 = icmp ult i32 %call1, 5, !dbg !3299
  %call1. = select i1 %cmp6, i32 %call1, i32 5, !dbg !3299
  %new_est_niter.1 = select i1 %cmp4, i32 %call1., i32 %div, !dbg !3299
  call void @llvm.dbg.value(metadata i32 %new_est_niter.1, metadata !3269, metadata !DIExpression()), !dbg !3275
  %call11 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %call3) #6, !dbg !3300
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call11, i64 0, i32 0, !dbg !3301
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3301
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %16, metadata !3251, metadata !DIExpression()), !dbg !3275
  %call12 = call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %16) #8, !dbg !3302
  call void @llvm.dbg.value(metadata %struct.edge_def* %call12, metadata !3256, metadata !DIExpression()), !dbg !3275
  %call13 = call %struct.edge_def* @loop_latch_edge(%struct.loop* %loop) #6, !dbg !3303
  %call14 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call13) #6, !dbg !3304
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !3305
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3305
  %call15 = call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %17) #8, !dbg !3306
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call15, metadata !3252, metadata !DIExpression()), !dbg !3275
  %src16 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %exit, i64 0, i32 0, !dbg !3307
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %src16, align 8, !dbg !3307
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %exit, i64 0, i32 8, !dbg !3308
  %19 = load i32, i32* %probability, align 4, !dbg !3308
  %sub = sub nsw i32 10000, %19, !dbg !3309
  call fastcc void @scale_dominated_blocks_in_loop(%struct.loop* %loop, %struct.basic_block_def* %18, i32 10000, i32 %sub) #8, !dbg !3310
  %20 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3311
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %20) #7, !dbg !3311
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %call15) #8, !dbg !3311
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %10, i8* nonnull align 8 %20, i64 24, i1 false), !dbg !3311
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %20) #7, !dbg !3311
  %21 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !3312
  %call17 = call %union.gimple_statement_d* @gimple_build_cond(i32 101, %union.tree_node* %21, %union.tree_node* %21, %union.tree_node* null, %union.tree_node* null) #6, !dbg !3313
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call17, metadata !3233, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !3260, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %bsi, %union.gimple_statement_d* %call17, i32 0) #6, !dbg !3314
  %or = or i32 %and, 2048, !dbg !3315
  %call18 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call15, %struct.basic_block_def* %16, i32 %or) #6, !dbg !3316
  call void @llvm.dbg.value(metadata %struct.edge_def* %call18, metadata !3257, metadata !DIExpression()), !dbg !3275
  call void @rescan_loop_exit(%struct.edge_def* %call18, i8 zeroext 1, i8 zeroext 0) #6, !dbg !3317
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %exit, i64 0, i32 9, !dbg !3318
  %22 = load i64, i64* %count, align 8, !dbg !3318
  %count19 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call18, i64 0, i32 9, !dbg !3319
  store i64 %22, i64* %count19, align 8, !dbg !3320
  %23 = load i32, i32* %probability, align 4, !dbg !3321
  %probability21 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call18, i64 0, i32 8, !dbg !3322
  store i32 %23, i32* %probability21, align 4, !dbg !3323
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3324
  %call23 = call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %24) #8, !dbg !3325
  call void @llvm.dbg.value(metadata %struct.edge_def* %call23, metadata !3258, metadata !DIExpression()), !dbg !3275
  %25 = load i32, i32* %probability, align 4, !dbg !3326
  %sub25 = sub nsw i32 10000, %25, !dbg !3327
  %probability26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call23, i64 0, i32 8, !dbg !3328
  store i32 %sub25, i32* %probability26, align 4, !dbg !3329
  %flags27 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call23, i64 0, i32 7, !dbg !3330
  store i32 1024, i32* %flags27, align 8, !dbg !3331
  %26 = load i64, i64* %count, align 8, !dbg !3332
  %count29 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call23, i64 0, i32 9, !dbg !3333
  %27 = load i64, i64* %count29, align 8, !dbg !3334
  %sub30 = sub nsw i64 %27, %26, !dbg !3334
  %cmp32 = icmp slt i64 %sub30, 0, !dbg !3335
  br i1 %cmp32, label %if.then33, label %if.end35, !dbg !3337

if.then33:                                        ; preds = %cond.end
  br label %if.end35, !dbg !3338

if.end35:                                         ; preds = %if.then33, %cond.end
  %storemerge4 = phi i64 [ 0, %if.then33 ], [ %sub30, %cond.end ], !dbg !3275
  store i64 %storemerge4, i64* %count29, align 8, !dbg !3275
  call void @scale_bbs_frequencies_int(%struct.basic_block_def** nonnull %latch, i32 1, i32 %sub25, i32 10000) #6, !dbg !3339
  %call38 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !3340
  call void @llvm.dbg.value(metadata %struct.edge_def* %call38, metadata !3253, metadata !DIExpression()), !dbg !3275
  %call39 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %call3) #6, !dbg !3341
  call void @llvm.dbg.value(metadata %struct.edge_def* %call39, metadata !3254, metadata !DIExpression()), !dbg !3275
  %call40 = call %struct.edge_def* @loop_latch_edge(%struct.loop* %loop) #6, !dbg !3342
  call void @llvm.dbg.value(metadata %struct.edge_def* %call40, metadata !3255, metadata !DIExpression()), !dbg !3275
  %28 = bitcast %struct.gimple_stmt_iterator* %tmp41 to i8*, !dbg !3343
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %28) #7, !dbg !3343
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !3345
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3345
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp41, %struct.basic_block_def* %29) #6, !dbg !3343
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* nonnull align 8 %28, i64 24, i1 false), !dbg !3343
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28) #7, !dbg !3343
  %30 = bitcast %struct.gimple_stmt_iterator* %tmp42 to i8*, !dbg !3346
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %30) #7, !dbg !3346
  %header43 = getelementptr inbounds %struct.loop, %struct.loop* %call3, i64 0, i32 2, !dbg !3347
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %header43, align 8, !dbg !3347
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp42, %struct.basic_block_def* %31) #6, !dbg !3346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %30, i64 24, i1 false), !dbg !3346
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %30) #7, !dbg !3346
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call38, i64 0, i32 6, !dbg !3348
  %dest_idx50 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call39, i64 0, i32 6, !dbg !3348
  %dest_idx59 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call40, i64 0, i32 6, !dbg !3348
  br label %for.cond, !dbg !3351

for.cond:                                         ; preds = %if.end106, %if.end35
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi_old_loop, metadata !3244, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  %call44 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %psi_old_loop) #8, !dbg !3352
  %tobool45 = icmp eq i8 %call44, 0, !dbg !3353
  br i1 %tobool45, label %for.body, label %for.end, !dbg !3354

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi_old_loop, metadata !3244, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  %call46 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %psi_old_loop) #8, !dbg !3355
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call46, metadata !3241, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi_new_loop, metadata !3245, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  %call47 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %psi_new_loop) #8, !dbg !3356
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call47, metadata !3242, metadata !DIExpression()), !dbg !3275
  %32 = load i32, i32* %dest_idx, align 4, !dbg !3357
  %call48 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call46, i32 %32) #8, !dbg !3357
  %call49 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call48) #8, !dbg !3357
  call void @llvm.dbg.value(metadata %union.tree_node* %call49, metadata !3246, metadata !DIExpression()), !dbg !3275
  %33 = load i32, i32* %dest_idx50, align 4, !dbg !3358
  %call51 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call47, i32 %33) #8, !dbg !3358
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call51, metadata !3261, metadata !DIExpression()), !dbg !3275
  %call52 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call51) #8, !dbg !3359
  %call53 = call i32 @operand_equal_for_phi_arg_p(%union.tree_node* %call49, %union.tree_node* %call52) #6, !dbg !3359
  %tobool54 = icmp eq i32 %call53, 0, !dbg !3359
  br i1 %tobool54, label %cond.true55, label %cond.end57, !dbg !3359

cond.true55:                                      ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 997, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3359
  br label %cond.end57, !dbg !3359

cond.end57:                                       ; preds = %for.body, %cond.true55
  %34 = load i32, i32* %dest_idx59, align 4, !dbg !3360
  %call60 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call46, i32 %34) #8, !dbg !3360
  %call61 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call60) #8, !dbg !3360
  call void @llvm.dbg.value(metadata %union.tree_node* %call61, metadata !3247, metadata !DIExpression()), !dbg !3275
  %35 = getelementptr inbounds %union.tree_node, %union.tree_node* %call61, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3361
  %bf.load = load i64, i64* %35, align 8, !dbg !3361
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3363
  %cmp62 = icmp eq i64 %bf.cast1, 141, !dbg !3363
  br i1 %cmp62, label %land.lhs.true, label %if.else69, !dbg !3364

land.lhs.true:                                    ; preds = %cond.end57
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call61, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3365
  %36 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3365
  %type64 = getelementptr inbounds %union.tree_node, %union.tree_node* %call49, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3366
  %37 = load %union.tree_node*, %union.tree_node** %type64, align 8, !dbg !3366
  %call65 = call zeroext i8 @useless_type_conversion_p(%union.tree_node* %36, %union.tree_node* %37) #6, !dbg !3367
  %tobool66 = icmp eq i8 %call65, 0, !dbg !3367
  br i1 %tobool66, label %if.else69, label %if.then67, !dbg !3368

if.then67:                                        ; preds = %land.lhs.true
  %var68 = getelementptr inbounds %union.tree_node, %union.tree_node* %call61, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3369
  %38 = bitcast i32* %var68 to %union.tree_node**, !dbg !3369
  %39 = load %union.tree_node*, %union.tree_node** %38, align 8, !dbg !3369
  call void @llvm.dbg.value(metadata %union.tree_node* %39, metadata !3249, metadata !DIExpression()), !dbg !3275
  br label %if.end106, !dbg !3370

if.else69:                                        ; preds = %land.lhs.true, %cond.end57
  %40 = getelementptr inbounds %union.tree_node, %union.tree_node* %call49, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3371
  %bf.load71 = load i64, i64* %40, align 8, !dbg !3371
  %bf.cast732 = and i64 %bf.load71, 65535, !dbg !3373
  %cmp74 = icmp eq i64 %bf.cast732, 141, !dbg !3373
  br i1 %cmp74, label %land.lhs.true76, label %if.else87, !dbg !3374

land.lhs.true76:                                  ; preds = %if.else69
  %type78 = getelementptr inbounds %union.tree_node, %union.tree_node* %call49, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3375
  %41 = load %union.tree_node*, %union.tree_node** %type78, align 8, !dbg !3375
  %type80 = getelementptr inbounds %union.tree_node, %union.tree_node* %call61, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3376
  %42 = load %union.tree_node*, %union.tree_node** %type80, align 8, !dbg !3376
  %call81 = call zeroext i8 @useless_type_conversion_p(%union.tree_node* %41, %union.tree_node* %42) #6, !dbg !3377
  %tobool83 = icmp eq i8 %call81, 0, !dbg !3377
  br i1 %tobool83, label %if.else87, label %if.then84, !dbg !3378

if.then84:                                        ; preds = %land.lhs.true76
  %var86 = getelementptr inbounds %union.tree_node, %union.tree_node* %call49, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3379
  %43 = bitcast i32* %var86 to %union.tree_node**, !dbg !3379
  %44 = load %union.tree_node*, %union.tree_node** %43, align 8, !dbg !3379
  call void @llvm.dbg.value(metadata %union.tree_node* %44, metadata !3249, metadata !DIExpression()), !dbg !3275
  br label %if.end106, !dbg !3380

if.else87:                                        ; preds = %land.lhs.true76, %if.else69
  %type89 = getelementptr inbounds %union.tree_node, %union.tree_node* %call61, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3381
  %45 = load %union.tree_node*, %union.tree_node** %type89, align 8, !dbg !3381
  %type91 = getelementptr inbounds %union.tree_node, %union.tree_node* %call49, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3383
  %46 = load %union.tree_node*, %union.tree_node** %type91, align 8, !dbg !3383
  %call92 = call zeroext i8 @useless_type_conversion_p(%union.tree_node* %45, %union.tree_node* %46) #6, !dbg !3384
  %tobool93 = icmp eq i8 %call92, 0, !dbg !3384
  br i1 %tobool93, label %if.else99, label %if.then94, !dbg !3385

if.then94:                                        ; preds = %if.else87
  %47 = load %union.tree_node*, %union.tree_node** %type89, align 8, !dbg !3386
  %call97 = call %union.tree_node* @create_tmp_var(%union.tree_node* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3388
  call void @llvm.dbg.value(metadata %union.tree_node* %call97, metadata !3249, metadata !DIExpression()), !dbg !3275
  %call98 = call zeroext i8 @add_referenced_var(%union.tree_node* %call97) #6, !dbg !3389
  br label %if.end106, !dbg !3390

if.else99:                                        ; preds = %if.else87
  %48 = load %union.tree_node*, %union.tree_node** %type91, align 8, !dbg !3391
  %call102 = call %union.tree_node* @create_tmp_var(%union.tree_node* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3393
  call void @llvm.dbg.value(metadata %union.tree_node* %call102, metadata !3249, metadata !DIExpression()), !dbg !3275
  %call103 = call zeroext i8 @add_referenced_var(%union.tree_node* %call102) #6, !dbg !3394
  br label %if.end106

if.end106:                                        ; preds = %if.then84, %if.else99, %if.then94, %if.then67
  %var.2 = phi %union.tree_node* [ %39, %if.then67 ], [ %44, %if.then84 ], [ %call97, %if.then94 ], [ %call102, %if.else99 ], !dbg !3395
  call void @llvm.dbg.value(metadata %union.tree_node* %var.2, metadata !3249, metadata !DIExpression()), !dbg !3275
  %call107 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var.2, %union.gimple_statement_d* null) #8, !dbg !3396
  call void @llvm.dbg.value(metadata %union.tree_node* %call107, metadata !3248, metadata !DIExpression()), !dbg !3275
  %call108 = call %union.gimple_statement_d* @create_phi_node(%union.tree_node* %call107, %struct.basic_block_def* %16) #6, !dbg !3397
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call108, metadata !3243, metadata !DIExpression()), !dbg !3275
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call107, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3398
  %49 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3398
  store %union.gimple_statement_d* %call108, %union.gimple_statement_d** %49, align 8, !dbg !3399
  call void @add_phi_arg(%union.gimple_statement_d* %call108, %union.tree_node* %call49, %struct.edge_def* %call12, i32 0) #6, !dbg !3400
  call void @add_phi_arg(%union.gimple_statement_d* %call108, %union.tree_node* %call61, %struct.edge_def* %call18, i32 0) #6, !dbg !3401
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %call51, %union.tree_node* %call107) #8, !dbg !3402
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi_old_loop, metadata !3244, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %psi_old_loop) #8, !dbg !3403
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi_new_loop, metadata !3245, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %psi_new_loop) #8, !dbg !3404
  br label %for.cond, !dbg !3405, !llvm.loop !3406

for.end:                                          ; preds = %for.cond
  %call110 = call zeroext i8 @remove_path(%struct.edge_def* %exit) #6, !dbg !3408
  %tobool111 = icmp eq void (%struct.loop*, i8*)* %transform, null, !dbg !3409
  br i1 %tobool111, label %if.end113, label %if.then112, !dbg !3411

if.then112:                                       ; preds = %for.end
  call void %transform(%struct.loop* %loop, i8* %data) #6, !dbg !3412
  br label %if.end113, !dbg !3412

if.end113:                                        ; preds = %for.end, %if.then112
  %call114 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %factor) #6, !dbg !3413
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call114, metadata !3273, metadata !DIExpression()), !dbg !3275
  call void @sbitmap_ones(%struct.simple_bitmap_def* %call114) #6, !dbg !3414
  %sub115 = add i32 %factor, -1, !dbg !3415
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %call114, i32 %sub115) #8, !dbg !3416
  %call116 = call %struct.edge_def* @loop_latch_edge(%struct.loop* %loop) #6, !dbg !3417
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %to_remove, metadata !3274, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  %call118 = call zeroext i8 @gimple_duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %call116, i32 %sub115, %struct.simple_bitmap_def* %call114, %struct.edge_def* %call18, %struct.VEC_edge_heap** nonnull %to_remove, i32 1) #8, !dbg !3418
  call void @llvm.dbg.value(metadata i8 %call118, metadata !3262, metadata !DIExpression()), !dbg !3275
  %50 = bitcast %struct.simple_bitmap_def* %call114 to i8*, !dbg !3419
  call void @free(i8* %50) #6, !dbg !3420
  %tobool119 = icmp eq i8 %call118, 0, !dbg !3421
  br i1 %tobool119, label %cond.true120, label %cond.end122, !dbg !3421

cond.true120:                                     ; preds = %if.end113
  call void @fancy_abort(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 1047, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3421
  br label %cond.end122, !dbg !3421

cond.end122:                                      ; preds = %if.end113, %cond.true120
  call void @llvm.dbg.value(metadata i32 0, metadata !3270, metadata !DIExpression()), !dbg !3275
  br label %for.cond124, !dbg !3422

for.cond124:                                      ; preds = %for.inc140, %cond.end122
  %i.0 = phi i32 [ 0, %cond.end122 ], [ %inc, %for.inc140 ], !dbg !3424
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3270, metadata !DIExpression()), !dbg !3275
  %51 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %to_remove, align 8, !dbg !3425
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %51, metadata !3274, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %51, metadata !3274, metadata !DIExpression()), !dbg !3275
  %base127 = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %51, i64 0, i32 0, !dbg !3425
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3259, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  %call131 = call fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %base127, i32 %i.0, %struct.edge_def** nonnull %e) #8, !dbg !3425
  %tobool132 = icmp eq i32 %call131, 0, !dbg !3427
  br i1 %tobool132, label %for.end141, label %for.body133, !dbg !3427

for.body133:                                      ; preds = %for.cond124
  %52 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3428
  call void @llvm.dbg.value(metadata %struct.edge_def* %52, metadata !3259, metadata !DIExpression()), !dbg !3275
  %call134 = call zeroext i8 @remove_path(%struct.edge_def* %52) #6, !dbg !3430
  call void @llvm.dbg.value(metadata i8 %call134, metadata !3262, metadata !DIExpression()), !dbg !3275
  %tobool135 = icmp eq i8 %call134, 0, !dbg !3431
  br i1 %tobool135, label %cond.true136, label %for.inc140, !dbg !3431

cond.true136:                                     ; preds = %for.body133
  call void @fancy_abort(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 1052, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3431
  br label %for.inc140, !dbg !3431

for.inc140:                                       ; preds = %for.body133, %cond.true136
  %inc = add i32 %i.0, 1, !dbg !3432
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3270, metadata !DIExpression()), !dbg !3275
  br label %for.cond124, !dbg !3433, !llvm.loop !3434

for.end141:                                       ; preds = %for.cond124
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %to_remove, metadata !3274, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  call fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** nonnull %to_remove) #8, !dbg !3436
  call void @update_ssa(i32 2048) #6, !dbg !3437
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3438
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %53, i64 0, i32 11, !dbg !3439
  %54 = load i32, i32* %frequency, align 8, !dbg !3439
  call void @llvm.dbg.value(metadata i32 %54, metadata !3268, metadata !DIExpression()), !dbg !3275
  %call143 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !3440
  %src144 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call143, i64 0, i32 0, !dbg !3440
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %src144, align 8, !dbg !3440
  %frequency145 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %55, i64 0, i32 11, !dbg !3440
  %56 = load i32, i32* %frequency145, align 8, !dbg !3440
  %call146 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !3440
  call void @llvm.dbg.value(metadata i32 undef, metadata !3267, metadata !DIExpression(DW_OP_plus_uconst, 5000, DW_OP_constu, 10000, DW_OP_div, DW_OP_stack_value)), !dbg !3275
  %cmp149 = icmp eq i32 %54, 0, !dbg !3441
  br i1 %cmp149, label %for.end141.if.end154_crit_edge, label %if.then151, !dbg !3443

for.end141.if.end154_crit_edge:                   ; preds = %for.end141
  %.pre = add i32 %new_est_niter.1, 1, !dbg !3444
  br label %if.end154, !dbg !3443

if.then151:                                       ; preds = %for.end141
  %probability147 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call146, i64 0, i32 8, !dbg !3440
  %57 = load i32, i32* %probability147, align 4, !dbg !3440
  %mul = mul nsw i32 %56, %57, !dbg !3440
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3267, metadata !DIExpression(DW_OP_plus_uconst, 5000, DW_OP_constu, 10000, DW_OP_div, DW_OP_stack_value)), !dbg !3275
  %add = add nsw i32 %mul, 5000, !dbg !3440
  call void @llvm.dbg.value(metadata i32 %add, metadata !3267, metadata !DIExpression(DW_OP_constu, 10000, DW_OP_div, DW_OP_stack_value)), !dbg !3275
  %div148 = sdiv i32 %add, 10000, !dbg !3440
  call void @llvm.dbg.value(metadata i32 %div148, metadata !3267, metadata !DIExpression()), !dbg !3275
  %add152 = add i32 %new_est_niter.1, 1, !dbg !3445
  %mul153 = mul i32 %div148, %add152, !dbg !3446
  call void @scale_loop_frequencies(%struct.loop* %loop, i32 %mul153, i32 %54) #6, !dbg !3447
  br label %if.end154, !dbg !3447

if.end154:                                        ; preds = %for.end141.if.end154_crit_edge, %if.then151
  %add161.pre-phi = phi i32 [ %.pre, %for.end141.if.end154_crit_edge ], [ %add152, %if.then151 ], !dbg !3444
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3448
  %call156 = call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %58) #8, !dbg !3449
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call156, metadata !3252, metadata !DIExpression()), !dbg !3275
  %call157 = call %struct.edge_def* @find_edge(%struct.basic_block_def* %call156, %struct.basic_block_def* %16) #6, !dbg !3450
  call void @llvm.dbg.value(metadata %struct.edge_def* %call157, metadata !3257, metadata !DIExpression()), !dbg !3275
  %call158 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !3451
  %count159 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call158, i64 0, i32 9, !dbg !3452
  %59 = load i64, i64* %count159, align 8, !dbg !3452
  %count160 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call157, i64 0, i32 9, !dbg !3453
  store i64 %59, i64* %count160, align 8, !dbg !3454
  %div162 = udiv i32 10000, %add161.pre-phi, !dbg !3455
  %probability163 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call157, i64 0, i32 8, !dbg !3456
  store i32 %div162, i32* %probability163, align 4, !dbg !3457
  %count165 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i64 0, i32 8, !dbg !3458
  %60 = load i64, i64* %count165, align 8, !dbg !3459
  %add166 = add nsw i64 %60, %59, !dbg !3459
  store i64 %add166, i64* %count165, align 8, !dbg !3459
  %src167 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call157, i64 0, i32 0, !dbg !3460
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %src167, align 8, !dbg !3460
  %frequency168 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %61, i64 0, i32 11, !dbg !3460
  %62 = load i32, i32* %frequency168, align 8, !dbg !3460
  %63 = load i32, i32* %probability163, align 4, !dbg !3460
  %mul170 = mul nsw i32 %62, %63, !dbg !3460
  %add171 = add nsw i32 %mul170, 5000, !dbg !3460
  %div172 = sdiv i32 %add171, 10000, !dbg !3460
  %frequency173 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i64 0, i32 11, !dbg !3461
  %64 = load i32, i32* %frequency173, align 8, !dbg !3462
  %add174 = add nsw i32 %64, %div172, !dbg !3462
  store i32 %add174, i32* %frequency173, align 8, !dbg !3462
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3463
  %call176 = call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %65) #8, !dbg !3464
  call void @llvm.dbg.value(metadata %struct.edge_def* %call176, metadata !3258, metadata !DIExpression()), !dbg !3275
  %probability177 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call176, i64 0, i32 8, !dbg !3465
  %66 = load i32, i32* %probability177, align 4, !dbg !3465
  call void @llvm.dbg.value(metadata i32 %66, metadata !3271, metadata !DIExpression()), !dbg !3275
  %67 = load i32, i32* %probability163, align 4, !dbg !3466
  %sub179 = sub nsw i32 10000, %67, !dbg !3467
  store i32 %sub179, i32* %probability177, align 4, !dbg !3468
  %count181 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call156, i64 0, i32 8, !dbg !3469
  %68 = load i64, i64* %count181, align 8, !dbg !3469
  %69 = load i64, i64* %count160, align 8, !dbg !3470
  %sub183 = sub nsw i64 %68, %69, !dbg !3471
  %count184 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call176, i64 0, i32 9, !dbg !3472
  %cmp186 = icmp slt i64 %sub183, 0, !dbg !3473
  br i1 %cmp186, label %if.then188, label %if.end190, !dbg !3475

if.then188:                                       ; preds = %if.end154
  br label %if.end190, !dbg !3476

if.end190:                                        ; preds = %if.then188, %if.end154
  %storemerge = phi i64 [ 0, %if.then188 ], [ %sub183, %if.end154 ], !dbg !3275
  store i64 %storemerge, i64* %count184, align 8, !dbg !3275
  %cmp191 = icmp eq i32 %66, 0, !dbg !3477
  br i1 %cmp191, label %if.end196, label %if.then193, !dbg !3479

if.then193:                                       ; preds = %if.end190
  call void @scale_bbs_frequencies_int(%struct.basic_block_def** nonnull %latch, i32 1, i32 %sub179, i32 %66) #6, !dbg !3480
  br label %if.end196, !dbg !3480

if.end196:                                        ; preds = %if.end190, %if.then193
  %70 = bitcast %struct.gimple_stmt_iterator* %tmp197 to i8*, !dbg !3481
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %70) #7, !dbg !3481
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp197, %struct.basic_block_def* %call156) #8, !dbg !3481
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %10, i8* nonnull align 8 %70, i64 24, i1 false), !dbg !3481
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %70) #7, !dbg !3481
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !3260, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  %call198 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !3482
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call198, metadata !3233, metadata !DIExpression()), !dbg !3275
  %71 = load %union.tree_node*, %union.tree_node** %exit_base, align 8, !dbg !3483
  call void @llvm.dbg.value(metadata %union.tree_node* %71, metadata !3237, metadata !DIExpression()), !dbg !3275
  %72 = load %union.tree_node*, %union.tree_node** %exit_step, align 8, !dbg !3484
  call void @llvm.dbg.value(metadata %union.tree_node* %72, metadata !3238, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata %union.tree_node** %ctr_before, metadata !3234, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  call void @llvm.dbg.value(metadata %union.tree_node** %ctr_after, metadata !3235, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !3260, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  call void @create_iv(%union.tree_node* %71, %union.tree_node* %72, %union.tree_node* null, %struct.loop* %loop, %struct.gimple_stmt_iterator* nonnull %bsi, i8 zeroext 0, %union.tree_node** nonnull %ctr_before, %union.tree_node** nonnull %ctr_after) #8, !dbg !3485
  %73 = load i32, i32* %exit_cmp, align 4, !dbg !3486
  call void @llvm.dbg.value(metadata i32 %73, metadata !3240, metadata !DIExpression()), !dbg !3275
  call fastcc void @gimple_cond_set_code(%union.gimple_statement_d* %call198, i32 %73) #8, !dbg !3487
  %74 = load %union.tree_node*, %union.tree_node** %ctr_after, align 8, !dbg !3488
  call void @llvm.dbg.value(metadata %union.tree_node* %74, metadata !3235, metadata !DIExpression()), !dbg !3275
  call fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %call198, %union.tree_node* %74) #8, !dbg !3489
  %75 = load %union.tree_node*, %union.tree_node** %exit_bound, align 8, !dbg !3490
  call void @llvm.dbg.value(metadata %union.tree_node* %75, metadata !3239, metadata !DIExpression()), !dbg !3275
  call fastcc void @gimple_cond_set_rhs(%union.gimple_statement_d* %call198, %union.tree_node* %75) #8, !dbg !3491
  call fastcc void @update_stmt(%union.gimple_statement_d* %call198) #8, !dbg !3492
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7, !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #7, !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7, !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #7, !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #7, !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7, !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3493
  ret void, !dbg !3493
}

declare dso_local i32 @expected_loop_iterations(%struct.loop*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @determine_exit_conditions(%struct.loop* %loop, %struct.tree_niter_desc* %desc, i32 %factor, %union.tree_node** %enter_cond, %union.tree_node** %exit_base, %union.tree_node** %exit_step, i32* %exit_cmp, %union.tree_node** %exit_bound) unnamed_addr #5 !dbg !3494 {
entry:
  %stmts = alloca %struct.gimple_seq_d*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3499, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata %struct.tree_niter_desc* %desc, metadata !3500, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i32 %factor, metadata !3501, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata %union.tree_node** %enter_cond, metadata !3502, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata %union.tree_node** %exit_base, metadata !3503, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata %union.tree_node** %exit_step, metadata !3504, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i32* %exit_cmp, metadata !3505, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata %union.tree_node** %exit_bound, metadata !3506, metadata !DIExpression()), !dbg !3519
  %0 = bitcast %struct.gimple_seq_d** %stmts to i8*, !dbg !3520
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3520
  %base1 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %desc, i64 0, i32 4, i32 0, !dbg !3521
  %1 = load %union.tree_node*, %union.tree_node** %base1, align 8, !dbg !3521
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3508, metadata !DIExpression()), !dbg !3519
  %step3 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %desc, i64 0, i32 4, i32 1, !dbg !3522
  %2 = load %union.tree_node*, %union.tree_node** %step3, align 8, !dbg !3522
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3509, metadata !DIExpression()), !dbg !3519
  %bound4 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %desc, i64 0, i32 5, !dbg !3523
  %3 = load %union.tree_node*, %union.tree_node** %bound4, align 8, !dbg !3523
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3510, metadata !DIExpression()), !dbg !3519
  %type5 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3524
  %4 = load %union.tree_node*, %union.tree_node** %type5, align 8, !dbg !3524
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !3511, metadata !DIExpression()), !dbg !3519
  %call = tail call %union.tree_node* @lower_bound_in_type(%union.tree_node* %4, %union.tree_node* %4) #6, !dbg !3525
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3514, metadata !DIExpression()), !dbg !3519
  %call6 = tail call %union.tree_node* @upper_bound_in_type(%union.tree_node* %4, %union.tree_node* %4) #6, !dbg !3526
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !3515, metadata !DIExpression()), !dbg !3519
  %cmp7 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %desc, i64 0, i32 6, !dbg !3527
  %5 = load i32, i32* %cmp7, align 8, !dbg !3527
  call void @llvm.dbg.value(metadata i32 %5, metadata !3516, metadata !DIExpression()), !dbg !3519
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !3528
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !3517, metadata !DIExpression()), !dbg !3519
  %call8 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %4, %union.tree_node* %1) #6, !dbg !3529
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !3508, metadata !DIExpression()), !dbg !3519
  %call9 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %4, %union.tree_node* %3) #6, !dbg !3530
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !3510, metadata !DIExpression()), !dbg !3519
  %7 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 25) to i64*), align 8, !dbg !3531
  %8 = bitcast %union.tree_node** %enter_cond to i64*, !dbg !3532
  store i64 %7, i64* %8, align 8, !dbg !3532
  store %union.tree_node* null, %union.tree_node** %exit_base, align 8, !dbg !3533
  store %union.tree_node* null, %union.tree_node** %exit_step, align 8, !dbg !3534
  store i32 0, i32* %exit_cmp, align 4, !dbg !3535
  store %union.tree_node* null, %union.tree_node** %exit_bound, align 8, !dbg !3536
  switch i32 %5, label %if.else33 [
    i32 0, label %cond.true
    i32 102, label %if.then
    i32 97, label %if.then17
    i32 99, label %if.then26
  ], !dbg !3537

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 714, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3537
  br label %if.else33, !dbg !3538

if.then:                                          ; preds = %entry
  %call13 = tail call i32 @tree_int_cst_sign_bit(%union.tree_node* %2) #6, !dbg !3539
  %tobool = icmp eq i32 %call13, 0, !dbg !3539
  %. = select i1 %tobool, i32 97, i32 99
  call void @llvm.dbg.value(metadata i32 %., metadata !3516, metadata !DIExpression()), !dbg !3519
  br label %if.end36, !dbg !3543

if.then17:                                        ; preds = %entry
  %call18 = tail call i32 @tree_int_cst_sign_bit(%union.tree_node* %2) #6, !dbg !3544
  %tobool19 = icmp eq i32 %call18, 0, !dbg !3544
  br i1 %tobool19, label %if.end36, label %cond.true20, !dbg !3544

cond.true20:                                      ; preds = %if.then17
  tail call void @fancy_abort(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 729, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3544
  br label %if.end36, !dbg !3544

if.then26:                                        ; preds = %entry
  %call27 = tail call i32 @tree_int_cst_sign_bit(%union.tree_node* %2) #6, !dbg !3547
  %tobool28 = icmp eq i32 %call27, 0, !dbg !3547
  br i1 %tobool28, label %cond.true29, label %if.end36, !dbg !3547

cond.true29:                                      ; preds = %if.then26
  tail call void @fancy_abort(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 733, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3547
  br label %if.end36, !dbg !3547

if.else33:                                        ; preds = %cond.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 736, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3550
  br label %if.end36

if.end36:                                         ; preds = %if.then17, %if.then26, %cond.true20, %cond.true29, %if.else33, %if.then
  %cmp.1 = phi i32 [ %., %if.then ], [ %5, %if.else33 ], [ 99, %if.then26 ], [ 99, %cond.true29 ], [ 97, %cond.true20 ], [ 97, %if.then17 ], !dbg !3519
  call void @llvm.dbg.value(metadata i32 %cmp.1, metadata !3516, metadata !DIExpression()), !dbg !3519
  %may_be_zero = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %desc, i64 0, i32 1, !dbg !3551
  %9 = load %union.tree_node*, %union.tree_node** %may_be_zero, align 8, !dbg !3551
  %call37 = tail call i32 @integer_zerop(%union.tree_node* %9) #6, !dbg !3553
  %tobool38 = icmp eq i32 %call37, 0, !dbg !3553
  br i1 %tobool38, label %if.then39, label %if.end43, !dbg !3554

if.then39:                                        ; preds = %if.end36
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3555
  %11 = load %union.tree_node*, %union.tree_node** %may_be_zero, align 8, !dbg !3555
  %call41 = tail call %union.tree_node* @invert_truthvalue_loc(i32 0, %union.tree_node* %11) #6, !dbg !3555
  %call42 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 93, %union.tree_node* %10, %union.tree_node* %call41, %union.tree_node* %6) #6, !dbg !3555
  call void @llvm.dbg.value(metadata %union.tree_node* %call42, metadata !3517, metadata !DIExpression()), !dbg !3519
  br label %if.end43, !dbg !3556

if.end43:                                         ; preds = %if.end36, %if.then39
  %cond.0 = phi %union.tree_node* [ %6, %if.end36 ], [ %call42, %if.then39 ], !dbg !3519
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.0, metadata !3517, metadata !DIExpression()), !dbg !3519
  %conv = zext i32 %factor to i64, !dbg !3557
  %call44 = tail call %union.tree_node* @build_int_cst_type(%union.tree_node* %4, i64 %conv) #6, !dbg !3557
  %call45 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %4, %union.tree_node* %2, %union.tree_node* %call44) #6, !dbg !3557
  call void @llvm.dbg.value(metadata %union.tree_node* %call45, metadata !3512, metadata !DIExpression()), !dbg !3519
  %call46 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 64, %union.tree_node* %4, %union.tree_node* %call45, %union.tree_node* %2) #6, !dbg !3558
  call void @llvm.dbg.value(metadata %union.tree_node* %call46, metadata !3513, metadata !DIExpression()), !dbg !3519
  %cmp47 = icmp eq i32 %cmp.1, 97, !dbg !3559
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3561
  br i1 %cmp47, label %if.then49, label %if.else52, !dbg !3562

if.then49:                                        ; preds = %if.end43
  %call50 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 63, %union.tree_node* %4, %union.tree_node* %call, %union.tree_node* %call46) #6, !dbg !3563
  %call51 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 100, %union.tree_node* %12, %union.tree_node* %call9, %union.tree_node* %call50) #6, !dbg !3563
  call void @llvm.dbg.value(metadata %union.tree_node* %call51, metadata !3518, metadata !DIExpression()), !dbg !3519
  br label %if.end55, !dbg !3564

if.else52:                                        ; preds = %if.end43
  %call53 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 63, %union.tree_node* %4, %union.tree_node* %call6, %union.tree_node* %call46) #6, !dbg !3565
  %call54 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 98, %union.tree_node* %12, %union.tree_node* %call9, %union.tree_node* %call53) #6, !dbg !3565
  call void @llvm.dbg.value(metadata %union.tree_node* %call54, metadata !3518, metadata !DIExpression()), !dbg !3519
  br label %if.end55

if.end55:                                         ; preds = %if.else52, %if.then49
  %assum.0 = phi %union.tree_node* [ %call51, %if.then49 ], [ %call54, %if.else52 ], !dbg !3561
  call void @llvm.dbg.value(metadata %union.tree_node* %assum.0, metadata !3518, metadata !DIExpression()), !dbg !3519
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3566
  %call56 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 93, %union.tree_node* %13, %union.tree_node* %assum.0, %union.tree_node* %cond.0) #6, !dbg !3566
  call void @llvm.dbg.value(metadata %union.tree_node* %call56, metadata !3517, metadata !DIExpression()), !dbg !3519
  %call57 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 64, %union.tree_node* %4, %union.tree_node* %call9, %union.tree_node* %call46) #6, !dbg !3567
  call void @llvm.dbg.value(metadata %union.tree_node* %call57, metadata !3510, metadata !DIExpression()), !dbg !3519
  %14 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3568
  %call58 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 %cmp.1, %union.tree_node* %14, %union.tree_node* %call8, %union.tree_node* %call57) #6, !dbg !3568
  call void @llvm.dbg.value(metadata %union.tree_node* %call58, metadata !3518, metadata !DIExpression()), !dbg !3519
  %15 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3569
  %call59 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 93, %union.tree_node* %15, %union.tree_node* %call58, %union.tree_node* %call56) #6, !dbg !3569
  call void @llvm.dbg.value(metadata %union.tree_node* %call59, metadata !3517, metadata !DIExpression()), !dbg !3519
  %call60 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %call59) #6, !dbg !3570
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !3507, metadata !DIExpression(DW_OP_deref)), !dbg !3519
  %call61 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %call60, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 0, %union.tree_node* null) #6, !dbg !3571
  call void @llvm.dbg.value(metadata %union.tree_node* %call61, metadata !3517, metadata !DIExpression()), !dbg !3519
  %16 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !3572
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %16, metadata !3507, metadata !DIExpression()), !dbg !3519
  %tobool62 = icmp eq %struct.gimple_seq_d* %16, null, !dbg !3572
  br i1 %tobool62, label %if.end66, label %if.then63, !dbg !3574

if.then63:                                        ; preds = %if.end55
  %call64 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !3575
  %17 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !3576
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %17, metadata !3507, metadata !DIExpression()), !dbg !3519
  %call65 = call %struct.basic_block_def* @gsi_insert_seq_on_edge_immediate(%struct.edge_def* %call64, %struct.gimple_seq_d* %17) #6, !dbg !3577
  br label %if.end66, !dbg !3577

if.end66:                                         ; preds = %if.end55, %if.then63
  %call67 = call zeroext i8 @is_gimple_condexpr(%union.tree_node* %call61) #6, !dbg !3578
  %tobool68 = icmp eq i8 %call67, 0, !dbg !3578
  br i1 %tobool68, label %if.then69, label %if.end76, !dbg !3580

if.then69:                                        ; preds = %if.end66
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !3507, metadata !DIExpression(DW_OP_deref)), !dbg !3519
  %call70 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %call61, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 1, %union.tree_node* null) #6, !dbg !3581
  call void @llvm.dbg.value(metadata %union.tree_node* %call70, metadata !3517, metadata !DIExpression()), !dbg !3519
  %18 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !3583
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %18, metadata !3507, metadata !DIExpression()), !dbg !3519
  %tobool71 = icmp eq %struct.gimple_seq_d* %18, null, !dbg !3583
  br i1 %tobool71, label %if.end76, label %if.then72, !dbg !3585

if.then72:                                        ; preds = %if.then69
  %call73 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !3586
  %19 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !3587
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %19, metadata !3507, metadata !DIExpression()), !dbg !3519
  %call74 = call %struct.basic_block_def* @gsi_insert_seq_on_edge_immediate(%struct.edge_def* %call73, %struct.gimple_seq_d* %19) #6, !dbg !3588
  br label %if.end76, !dbg !3588

if.end76:                                         ; preds = %if.then69, %if.end66, %if.then72
  %cond.1 = phi %union.tree_node* [ %call61, %if.end66 ], [ %call70, %if.then72 ], [ %call70, %if.then69 ], !dbg !3519
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.1, metadata !3517, metadata !DIExpression()), !dbg !3519
  store %union.tree_node* %cond.1, %union.tree_node** %enter_cond, align 8, !dbg !3589
  %call77 = call %union.tree_node* @unshare_expr(%union.tree_node* %call8) #6, !dbg !3590
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !3507, metadata !DIExpression(DW_OP_deref)), !dbg !3519
  %call78 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %call77, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 1, %union.tree_node* null) #6, !dbg !3591
  call void @llvm.dbg.value(metadata %union.tree_node* %call78, metadata !3508, metadata !DIExpression()), !dbg !3519
  %20 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !3592
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %20, metadata !3507, metadata !DIExpression()), !dbg !3519
  %tobool79 = icmp eq %struct.gimple_seq_d* %20, null, !dbg !3592
  br i1 %tobool79, label %if.end83, label %if.then80, !dbg !3594

if.then80:                                        ; preds = %if.end76
  %call81 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !3595
  %21 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !3596
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %21, metadata !3507, metadata !DIExpression()), !dbg !3519
  %call82 = call %struct.basic_block_def* @gsi_insert_seq_on_edge_immediate(%struct.edge_def* %call81, %struct.gimple_seq_d* %21) #6, !dbg !3597
  br label %if.end83, !dbg !3597

if.end83:                                         ; preds = %if.end76, %if.then80
  %call84 = call %union.tree_node* @unshare_expr(%union.tree_node* %call57) #6, !dbg !3598
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !3507, metadata !DIExpression(DW_OP_deref)), !dbg !3519
  %call85 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %call84, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 1, %union.tree_node* null) #6, !dbg !3599
  call void @llvm.dbg.value(metadata %union.tree_node* %call85, metadata !3510, metadata !DIExpression()), !dbg !3519
  %22 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !3600
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %22, metadata !3507, metadata !DIExpression()), !dbg !3519
  %tobool86 = icmp eq %struct.gimple_seq_d* %22, null, !dbg !3600
  br i1 %tobool86, label %if.end90, label %if.then87, !dbg !3602

if.then87:                                        ; preds = %if.end83
  %call88 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !3603
  %23 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !3604
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %23, metadata !3507, metadata !DIExpression()), !dbg !3519
  %call89 = call %struct.basic_block_def* @gsi_insert_seq_on_edge_immediate(%struct.edge_def* %call88, %struct.gimple_seq_d* %23) #6, !dbg !3605
  br label %if.end90, !dbg !3605

if.end90:                                         ; preds = %if.end83, %if.then87
  store %union.tree_node* %call78, %union.tree_node** %exit_base, align 8, !dbg !3606
  store %union.tree_node* %call45, %union.tree_node** %exit_step, align 8, !dbg !3607
  store i32 %cmp.1, i32* %exit_cmp, align 4, !dbg !3608
  store %union.tree_node* %call85, %union.tree_node** %exit_bound, align 8, !dbg !3609
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3610
  ret void, !dbg !3610
}

declare dso_local i32 @integer_nonzerop(%union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.loop* @loop_version(%struct.loop*, i8*, %struct.basic_block_def**, i32, i32, i32, i8 zeroext) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3611 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3613, metadata !DIExpression()), !dbg !3614
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #8, !dbg !3615
  %tobool = icmp eq i8 %call, 0, !dbg !3615
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3615

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3615
  br label %cond.end, !dbg !3615

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3616
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3616
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3616
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3616

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3616
  br label %cond.end5, !dbg !3616

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3616
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !3616
  ret %struct.edge_def* %call7, !dbg !3617
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scale_dominated_blocks_in_loop(%struct.loop* %loop, %struct.basic_block_def* %bb, i32 %num, i32 %den) unnamed_addr #5 !dbg !3618 {
entry:
  %son = alloca %struct.basic_block_def*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3622, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3623, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i32 10000, metadata !3624, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i32 %den, metadata !3625, metadata !DIExpression()), !dbg !3627
  %0 = bitcast %struct.basic_block_def** %son to i8*, !dbg !3628
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3628
  %cmp = icmp eq i32 %den, 0, !dbg !3629
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3631

if.end:                                           ; preds = %entry
  %call = tail call %struct.basic_block_def* @first_dom_son(i32 1, %struct.basic_block_def* %bb) #6, !dbg !3632
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3626, metadata !DIExpression()), !dbg !3627
  br label %for.cond, !dbg !3634

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = phi %struct.basic_block_def* [ %call, %if.end ], [ %call5, %for.inc ], !dbg !3635
  store %struct.basic_block_def* %1, %struct.basic_block_def** %son, align 8, !dbg !3635
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !3626, metadata !DIExpression()), !dbg !3627
  %tobool = icmp eq %struct.basic_block_def* %1, null, !dbg !3636
  br i1 %tobool, label %cleanup.loopexit, label %for.body, !dbg !3636

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !3626, metadata !DIExpression()), !dbg !3627
  %call1 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* nonnull %1) #6, !dbg !3637
  %tobool2 = icmp eq i8 %call1, 0, !dbg !3637
  br i1 %tobool2, label %for.inc, label %if.end4, !dbg !3641

if.end4:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %son, metadata !3626, metadata !DIExpression(DW_OP_deref)), !dbg !3627
  call void @scale_bbs_frequencies_int(%struct.basic_block_def** nonnull %son, i32 1, i32 10000, i32 %den) #6, !dbg !3642
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %son, align 8, !dbg !3643
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %2, metadata !3626, metadata !DIExpression()), !dbg !3627
  call fastcc void @scale_dominated_blocks_in_loop(%struct.loop* %loop, %struct.basic_block_def* %2, i32 10000, i32 %den) #8, !dbg !3644
  br label %for.inc, !dbg !3645

for.inc:                                          ; preds = %for.body, %if.end4
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %son, align 8, !dbg !3646
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %3, metadata !3626, metadata !DIExpression()), !dbg !3627
  %call5 = call %struct.basic_block_def* @next_dom_son(i32 1, %struct.basic_block_def* %3) #6, !dbg !3647
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call5, metadata !3626, metadata !DIExpression()), !dbg !3627
  br label %for.cond, !dbg !3648, !llvm.loop !3649

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3651

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3651
  ret void, !dbg !3651
}

declare dso_local %union.gimple_statement_d* @gimple_build_cond(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

declare dso_local void @rescan_loop_exit(%struct.edge_def*, i8 zeroext, i8 zeroext) local_unnamed_addr #2

declare dso_local void @scale_bbs_frequencies_int(%struct.basic_block_def**, i32, i32, i32) local_unnamed_addr #2

declare dso_local i32 @operand_equal_for_phi_arg_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @useless_type_conversion_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @remove_path(%struct.edge_def*) local_unnamed_addr #2

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #2

declare dso_local void @sbitmap_ones(%struct.simple_bitmap_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @RESET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3652 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3656, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3657, metadata !DIExpression()), !dbg !3661
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3662
  %0 = load i8*, i8** %popcount, align 8, !dbg !3662
  %tobool = icmp eq i8* %0, null, !dbg !3663
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3664

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3665
  %.pre2 = zext i32 %.pre to i64, !dbg !3666
  %.pre3 = shl i64 1, %.pre2, !dbg !3666
  %.pre4 = lshr i32 %bitno, 6, !dbg !3667
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3668
  br label %if.end7, !dbg !3664

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3669
  %idxprom = zext i32 %div to i64, !dbg !3669
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3669
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3669
  %rem = and i32 %bitno, 63, !dbg !3669
  %sh_prom = zext i32 %rem to i64, !dbg !3669
  %2 = shl i64 1, %sh_prom, !dbg !3670
  %3 = and i64 %1, %2, !dbg !3670
  %tobool1 = icmp eq i64 %3, 0, !dbg !3670
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !3672

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3673
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3674
  %dec = add i8 %4, -1, !dbg !3674
  store i8 %dec, i8* %arrayidx6, align 1, !dbg !3674
  br label %if.end7, !dbg !3673

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3668
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3666
  %neg = xor i64 %shl.pre-phi, -1, !dbg !3675
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3668
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3676
  %and14 = and i64 %5, %neg, !dbg !3676
  store i64 %and14, i64* %arrayidx13, align 8, !dbg !3676
  ret void, !dbg !3677
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %vec_, i32 %ix_, %struct.edge_def** %ptr) unnamed_addr #0 !dbg !3678 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3682, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3683, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata %struct.edge_def** %ptr, metadata !3684, metadata !DIExpression()), !dbg !3685
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3686
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3686

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3686
  %0 = load i32, i32* %num, align 8, !dbg !3686
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3686
  br i1 %cmp, label %if.then, label %if.else, !dbg !3688

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3689
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3689
  %1 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3689
  br label %return, !dbg !3689

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3691

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ null, %if.else ], [ %1, %if.then ], !dbg !3693
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3693
  store %struct.edge_def* %storemerge, %struct.edge_def** %ptr, align 8, !dbg !3693
  ret i32 %retval.0, !dbg !3688
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** %vec_) unnamed_addr #0 !dbg !3694 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %vec_, metadata !3698, metadata !DIExpression()), !dbg !3699
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %vec_, align 8, !dbg !3700
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !3700
  br i1 %tobool, label %if.end, label %if.then, !dbg !3702

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_edge_heap* %0 to i8*, !dbg !3702
  tail call void @free(i8* nonnull %1) #6, !dbg !3700
  br label %if.end, !dbg !3700

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %vec_, align 8, !dbg !3702
  ret void, !dbg !3702
}

declare dso_local void @scale_loop_frequencies(%struct.loop*, i32, i32) local_unnamed_addr #2

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_code(%union.gimple_statement_d* %gs, i32 %code) unnamed_addr #0 !dbg !3703 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3707, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i32 %code, metadata !3708, metadata !DIExpression()), !dbg !3709
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !3710
  %bf.load = load i32, i32* %0, align 8, !dbg !3711
  %bf.shl = shl i32 %code, 16, !dbg !3711
  %bf.clear = and i32 %bf.load, 65535, !dbg !3711
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !3711
  store i32 %bf.set, i32* %0, align 8, !dbg !3711
  ret void, !dbg !3712
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !3713 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3717, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !3718, metadata !DIExpression()), !dbg !3719
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #8, !dbg !3720
  ret void, !dbg !3721
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_rhs(%union.gimple_statement_d* %gs, %union.tree_node* %rhs) unnamed_addr #0 !dbg !3722 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3724, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !3725, metadata !DIExpression()), !dbg !3726
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 1, %union.tree_node* %rhs) #8, !dbg !3727
  ret void, !dbg !3728
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3729 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3733, metadata !DIExpression()), !dbg !3734
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #8, !dbg !3735
  %tobool = icmp eq i8 %call, 0, !dbg !3735
  br i1 %tobool, label %if.end, label %if.then, !dbg !3737

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !3738
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !3740
  br label %if.end, !dbg !3741

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3742
}

; Function Attrs: nounwind uwtable
define dso_local void @tree_unroll_loop(%struct.loop* %loop, i32 %factor, %struct.edge_def* %exit, %struct.tree_niter_desc* %desc) local_unnamed_addr #5 !dbg !3743 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3747, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 %factor, metadata !3748, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata %struct.edge_def* %exit, metadata !3749, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata %struct.tree_niter_desc* %desc, metadata !3750, metadata !DIExpression()), !dbg !3751
  tail call void @tree_transform_and_unroll_loop(%struct.loop* %loop, i32 %factor, %struct.edge_def* %exit, %struct.tree_niter_desc* %desc, void (%struct.loop*, i8*)* null, i8* null) #8, !dbg !3752
  ret void, !dbg !3753
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @canonicalize_loop_ivs(%struct.loop* %loop, %union.tree_node** %nit, i8 zeroext %bump_in_latch) local_unnamed_addr #5 !dbg !3754 {
entry:
  %var_before = alloca %union.tree_node*, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %psi = alloca %struct.gimple_stmt_iterator, align 8
  %stmts = alloca %struct.gimple_seq_d*, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp35 = alloca %struct.gimple_stmt_iterator, align 8
  %te = alloca %struct.edge_def*, align 8
  %fe = alloca %struct.edge_def*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3758, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata %union.tree_node** %nit, metadata !3759, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i8 %bump_in_latch, metadata !3760, metadata !DIExpression()), !dbg !3779
  %0 = bitcast %union.tree_node** %nit to %struct.tree_common**, !dbg !3780
  %1 = load %struct.tree_common*, %struct.tree_common** %0, align 8, !dbg !3780
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1, i64 0, i32 2, !dbg !3780
  %2 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !3780
  %3 = load %struct.tree_type*, %struct.tree_type** %2, align 8, !dbg !3780
  %precision2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 6, !dbg !3780
  %bf.load = load i32, i32* %precision2, align 4, !dbg !3780
  %bf.clear = and i32 %bf.load, 1023, !dbg !3780
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3761, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3762, metadata !DIExpression()), !dbg !3779
  %4 = bitcast %union.tree_node** %var_before to i8*, !dbg !3781
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7, !dbg !3781
  %5 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3782
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !3782
  %6 = bitcast %struct.gimple_stmt_iterator* %psi to i8*, !dbg !3782
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #7, !dbg !3782
  %call = tail call %struct.edge_def* @single_dom_exit(%struct.loop* %loop) #6, !dbg !3783
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !3768, metadata !DIExpression()), !dbg !3779
  %7 = bitcast %struct.gimple_seq_d** %stmts to i8*, !dbg !3784
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !3784
  %8 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3785
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7, !dbg !3785
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !3786
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3786
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %9) #6, !dbg !3785
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* nonnull align 8 %8, i64 24, i1 false), !dbg !3785
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !3785
  br label %for.cond, !dbg !3787

for.cond:                                         ; preds = %for.inc, %entry
  %precision.0 = phi i32 [ %bf.clear, %entry ], [ %precision.1, %for.inc ], !dbg !3779
  call void @llvm.dbg.value(metadata i32 %precision.0, metadata !3761, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !3766, metadata !DIExpression(DW_OP_deref)), !dbg !3779
  %call4 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %psi) #8, !dbg !3788
  %tobool = icmp eq i8 %call4, 0, !dbg !3789
  br i1 %tobool, label %for.body, label %for.end, !dbg !3790

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !3766, metadata !DIExpression(DW_OP_deref)), !dbg !3779
  %call5 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %psi) #8, !dbg !3791
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !3770, metadata !DIExpression()), !dbg !3792
  %call6 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call5) #8, !dbg !3793
  %call7 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call6) #8, !dbg !3793
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !3774, metadata !DIExpression()), !dbg !3792
  %call8 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call7) #6, !dbg !3794
  %tobool9 = icmp eq i8 %call8, 0, !dbg !3794
  br i1 %tobool9, label %for.inc, label %land.lhs.true, !dbg !3796

land.lhs.true:                                    ; preds = %for.body
  %type11 = getelementptr inbounds %union.tree_node, %union.tree_node* %call7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3797
  %10 = bitcast %union.tree_node** %type11 to %struct.tree_type**, !dbg !3797
  %11 = load %struct.tree_type*, %struct.tree_type** %10, align 8, !dbg !3797
  %precision13 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %11, i64 0, i32 6, !dbg !3797
  %bf.load14 = load i32, i32* %precision13, align 4, !dbg !3797
  %bf.clear15 = and i32 %bf.load14, 1023, !dbg !3797
  %cmp = icmp ugt i32 %bf.clear15, %precision.0, !dbg !3798
  br i1 %cmp, label %if.then, label %for.inc, !dbg !3799

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32 %bf.clear15, metadata !3761, metadata !DIExpression()), !dbg !3779
  br label %for.inc, !dbg !3800

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %precision.1 = phi i32 [ %bf.clear15, %if.then ], [ %precision.0, %land.lhs.true ], [ %precision.0, %for.body ], !dbg !3779
  call void @llvm.dbg.value(metadata i32 %precision.1, metadata !3761, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !3766, metadata !DIExpression(DW_OP_deref)), !dbg !3779
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %psi) #8, !dbg !3801
  br label %for.cond, !dbg !3802, !llvm.loop !3803

for.end:                                          ; preds = %for.cond
  %precision.0.lcssa = phi i32 [ %precision.0, %for.cond ], !dbg !3779
  call void @llvm.dbg.value(metadata i32 %precision.0.lcssa, metadata !3761, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i32 %precision.0.lcssa, metadata !3761, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i32 %precision.0.lcssa, metadata !3761, metadata !DIExpression()), !dbg !3779
  %12 = load %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 34, i32 3), align 8, !dbg !3805
  %call23 = call %union.tree_node* %12(i32 %precision.0.lcssa, i32 1) #6, !dbg !3806
  call void @llvm.dbg.value(metadata %union.tree_node* %call23, metadata !3763, metadata !DIExpression()), !dbg !3779
  %cmp24 = icmp eq i32 %bf.clear, %precision.0.lcssa, !dbg !3807
  br i1 %cmp24, label %if.end34, label %if.then26, !dbg !3809

if.then26:                                        ; preds = %for.end
  %13 = load %union.tree_node*, %union.tree_node** %nit, align 8, !dbg !3810
  %call27 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %call23, %union.tree_node* %13) #6, !dbg !3810
  store %union.tree_node* %call27, %union.tree_node** %nit, align 8, !dbg !3812
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !3769, metadata !DIExpression(DW_OP_deref)), !dbg !3779
  %call28 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %call27, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 1, %union.tree_node* null) #6, !dbg !3813
  store %union.tree_node* %call28, %union.tree_node** %nit, align 8, !dbg !3814
  %14 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !3815
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %14, metadata !3769, metadata !DIExpression()), !dbg !3779
  %tobool29 = icmp eq %struct.gimple_seq_d* %14, null, !dbg !3815
  br i1 %tobool29, label %if.end34, label %if.then30, !dbg !3817

if.then30:                                        ; preds = %if.then26
  %call31 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !3818
  %15 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !3819
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %15, metadata !3769, metadata !DIExpression()), !dbg !3779
  %call32 = call %struct.basic_block_def* @gsi_insert_seq_on_edge_immediate(%struct.edge_def* %call31, %struct.gimple_seq_d* %15) #6, !dbg !3820
  br label %if.end34, !dbg !3820

if.end34:                                         ; preds = %if.then26, %for.end, %if.then30
  %16 = bitcast %struct.gimple_stmt_iterator* %tmp35 to i8*, !dbg !3821
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %16) #7, !dbg !3821
  %tobool37 = icmp eq i8 %bump_in_latch, 0, !dbg !3822
  br i1 %tobool37, label %cond.false, label %cond.true, !dbg !3822

cond.true:                                        ; preds = %if.end34
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !3823
  br label %cond.end, !dbg !3822

cond.false:                                       ; preds = %if.end34
  br label %cond.end, !dbg !3822

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.basic_block_def** [ %latch, %cond.true ], [ %header, %cond.false ]
  %cond = load %struct.basic_block_def*, %struct.basic_block_def** %cond.in, align 8, !dbg !3822
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp35, %struct.basic_block_def* %cond) #8, !dbg !3821
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %16, i64 24, i1 false), !dbg !3821
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #7, !dbg !3821
  %call39 = call %union.tree_node* @build_int_cst_type(%union.tree_node* %call23, i64 0) #6, !dbg !3824
  %call40 = call %union.tree_node* @build_int_cst(%union.tree_node* %call23, i64 1) #6, !dbg !3825
  call void @llvm.dbg.value(metadata %union.tree_node** %var_before, metadata !3764, metadata !DIExpression(DW_OP_deref)), !dbg !3779
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3765, metadata !DIExpression(DW_OP_deref)), !dbg !3779
  call void @create_iv(%union.tree_node* %call39, %union.tree_node* %call40, %union.tree_node* null, %struct.loop* %loop, %struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext %bump_in_latch, %union.tree_node** nonnull %var_before, %union.tree_node** null) #8, !dbg !3826
  %17 = load %union.tree_node*, %union.tree_node** %var_before, align 8, !dbg !3827
  call void @llvm.dbg.value(metadata %union.tree_node* %17, metadata !3764, metadata !DIExpression()), !dbg !3779
  call fastcc void @rewrite_all_phi_nodes_with_iv(%struct.loop* %loop, %union.tree_node* %17) #8, !dbg !3828
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !3829
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3829
  %call41 = call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %18) #6, !dbg !3830
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call41, metadata !3767, metadata !DIExpression()), !dbg !3779
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 7, !dbg !3831
  %19 = load i32, i32* %flags, align 8, !dbg !3831
  %and = and i32 %19, 1024, !dbg !3832
  %tobool42 = icmp eq i32 %and, 0, !dbg !3832
  br i1 %tobool42, label %if.end47, label %if.then43, !dbg !3833

if.then43:                                        ; preds = %cond.end
  %20 = bitcast %struct.edge_def** %te to i8*, !dbg !3834
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #7, !dbg !3834
  %21 = bitcast %struct.edge_def** %fe to i8*, !dbg !3834
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #7, !dbg !3834
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3835
  call void @llvm.dbg.value(metadata %struct.edge_def** %te, metadata !3775, metadata !DIExpression(DW_OP_deref)), !dbg !3836
  call void @llvm.dbg.value(metadata %struct.edge_def** %fe, metadata !3778, metadata !DIExpression(DW_OP_deref)), !dbg !3836
  call void @extract_true_false_edges_from_block(%struct.basic_block_def* %22, %struct.edge_def** nonnull %te, %struct.edge_def** nonnull %fe) #6, !dbg !3837
  %23 = load %struct.edge_def*, %struct.edge_def** %te, align 8, !dbg !3838
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !3775, metadata !DIExpression()), !dbg !3836
  %flags45 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i64 0, i32 7, !dbg !3839
  store i32 2048, i32* %flags45, align 8, !dbg !3840
  %24 = load %struct.edge_def*, %struct.edge_def** %fe, align 8, !dbg !3841
  call void @llvm.dbg.value(metadata %struct.edge_def* %24, metadata !3778, metadata !DIExpression()), !dbg !3836
  %flags46 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i64 0, i32 7, !dbg !3842
  store i32 1024, i32* %flags46, align 8, !dbg !3843
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !3844
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #7, !dbg !3844
  br label %if.end47, !dbg !3845

if.end47:                                         ; preds = %cond.end, %if.then43
  call fastcc void @gimple_cond_set_code(%union.gimple_statement_d* %call41, i32 97) #8, !dbg !3846
  %25 = load %union.tree_node*, %union.tree_node** %var_before, align 8, !dbg !3847
  call void @llvm.dbg.value(metadata %union.tree_node* %25, metadata !3764, metadata !DIExpression()), !dbg !3779
  call fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %call41, %union.tree_node* %25) #8, !dbg !3848
  %26 = load %union.tree_node*, %union.tree_node** %nit, align 8, !dbg !3849
  call fastcc void @gimple_cond_set_rhs(%union.gimple_statement_d* %call41, %union.tree_node* %26) #8, !dbg !3850
  call fastcc void @update_stmt(%union.gimple_statement_d* %call41) #8, !dbg !3851
  %27 = load %union.tree_node*, %union.tree_node** %var_before, align 8, !dbg !3852
  call void @llvm.dbg.value(metadata %union.tree_node* %27, metadata !3764, metadata !DIExpression()), !dbg !3779
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !3853
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7, !dbg !3853
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !3853
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7, !dbg !3853
  ret %union.tree_node* %27, !dbg !3854
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !3855 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !3860, metadata !DIExpression()), !dbg !3861
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !3862
  ret %union.tree_node* %0, !dbg !3863
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3864 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3868, metadata !DIExpression()), !dbg !3869
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3870
  ret %union.tree_node** %result, !dbg !3871
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cst_type(%union.tree_node*, i64) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @rewrite_all_phi_nodes_with_iv(%struct.loop* %loop, %union.tree_node* %main_iv) unnamed_addr #5 !dbg !3872 {
entry:
  %psi = alloca %struct.gimple_stmt_iterator, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3876, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata %union.tree_node* %main_iv, metadata !3877, metadata !DIExpression()), !dbg !3887
  %call = tail call %struct.basic_block_def** @get_loop_body_in_dom_order(%struct.loop* %loop) #6, !dbg !3888
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call, metadata !3879, metadata !DIExpression()), !dbg !3887
  %0 = bitcast %struct.gimple_stmt_iterator* %psi to i8*, !dbg !3889
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3889
  call void @llvm.dbg.value(metadata i32 0, metadata !3878, metadata !DIExpression()), !dbg !3887
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3890
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3891
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3892
  br label %for.cond, !dbg !3894

for.cond:                                         ; preds = %cleanup, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %entry ], !dbg !3895
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3878, metadata !DIExpression()), !dbg !3887
  %3 = load i32, i32* %num_nodes, align 4, !dbg !3896
  %4 = zext i32 %3 to i64, !dbg !3897
  %cmp = icmp ult i64 %indvars.iv, %4, !dbg !3897
  br i1 %cmp, label %for.body, label %for.end6, !dbg !3898

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call, i64 %indvars.iv, !dbg !3899
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3899
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %5, metadata !3882, metadata !DIExpression()), !dbg !3891
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3900
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3886, metadata !DIExpression(DW_OP_deref)), !dbg !3891
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %gsi, %struct.basic_block_def* %5) #8, !dbg !3901
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 3, !dbg !3902
  %6 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3902
  %cmp1 = icmp eq %struct.loop* %6, %loop, !dbg !3904
  br i1 %cmp1, label %if.end, label %cleanup, !dbg !3905

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !3906
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %5) #6, !dbg !3906
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !3906
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !3906
  br label %for.cond2, !dbg !3907

for.cond2:                                        ; preds = %for.body4, %if.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !3881, metadata !DIExpression(DW_OP_deref)), !dbg !3887
  %call3 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %psi) #8, !dbg !3908
  %tobool = icmp eq i8 %call3, 0, !dbg !3910
  br i1 %tobool, label %for.body4, label %cleanup.loopexit, !dbg !3911

for.body4:                                        ; preds = %for.cond2
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !3881, metadata !DIExpression(DW_OP_deref)), !dbg !3887
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3886, metadata !DIExpression(DW_OP_deref)), !dbg !3891
  call fastcc void @rewrite_phi_with_iv(%struct.loop* %loop, %struct.gimple_stmt_iterator* nonnull %psi, %struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %main_iv) #8, !dbg !3912
  br label %for.cond2, !dbg !3913, !llvm.loop !3914

cleanup.loopexit:                                 ; preds = %for.cond2
  br label %cleanup, !dbg !3916

cleanup:                                          ; preds = %cleanup.loopexit, %for.body
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3916
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3917
  br label %for.cond, !dbg !3918, !llvm.loop !3919

for.end6:                                         ; preds = %for.cond
  %7 = bitcast %struct.basic_block_def** %call to i8*, !dbg !3921
  call void @free(i8* %7) #6, !dbg !3922
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3923
  ret void, !dbg !3923
}

declare dso_local void @extract_true_false_edges_from_block(%struct.basic_block_def*, %struct.edge_def**, %struct.edge_def**) local_unnamed_addr #2

declare dso_local %union.tree_node* @make_ssa_name_fn(%struct.function*, %union.tree_node*, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !3924 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3930, metadata !DIExpression()), !dbg !3931
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !3932
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3932

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !3932
  %0 = load i32, i32* %num, align 8, !dbg !3932
  br label %cond.end, !dbg !3932

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3932
  ret i32 %cond, !dbg !3932
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !3933 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3942, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !3943, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 0, metadata !3944, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3945, metadata !DIExpression()), !dbg !3946
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !3947
  %1 = load i64, i64* %0, align 8, !dbg !3947
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3948
  store i64 %1, i64* %2, align 8, !dbg !3948
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !3949
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !3950
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3951
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !3954
  br label %while.body, !dbg !3954

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !3955
  br i1 %tobool, label %if.then, label %if.end, !dbg !3956

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !3957
  br label %while.end, !dbg !3959

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !3960

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !3954, !llvm.loop !3961

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !3963

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !3963
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !3965
  %7 = load i32, i32* %indx9, align 8, !dbg !3965
  %cmp11 = icmp eq i32 %7, 0, !dbg !3966
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !3967

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !3968
  %8 = load i32, i32* %indx14, align 8, !dbg !3968
  %mul = shl i32 %8, 7, !dbg !3969
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3944, metadata !DIExpression()), !dbg !3946
  br label %if.end15, !dbg !3970

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !3944, metadata !DIExpression()), !dbg !3946
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3971
  store i32 0, i32* %word_no, align 8, !dbg !3972
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !3973
  %9 = load i64, i64* %arrayidx, align 8, !dbg !3973
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3974
  store i64 %9, i64* %bits21, align 8, !dbg !3975
  %tobool23 = icmp eq i64 %9, 0, !dbg !3976
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !3976
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !3977
  call void @llvm.dbg.value(metadata i32 %add, metadata !3944, metadata !DIExpression()), !dbg !3946
  store i32 %add, i32* %bit_no, align 4, !dbg !3978
  ret void, !dbg !3979
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3980 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3984, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3985, metadata !DIExpression()), !dbg !3989
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3990
  %0 = load i64, i64* %bits, align 8, !dbg !3990
  %tobool = icmp eq i64 %0, 0, !dbg !3991
  br i1 %tobool, label %if.end, label %next_bit, !dbg !3992

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !3993
  br label %next_bit, !dbg !3996

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !3986), !dbg !3997
  br label %while.cond, !dbg !3996

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !3998
  %and = and i64 %2, 1, !dbg !3999
  %tobool2 = icmp eq i64 %and, 0, !dbg !4000
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !3996

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !4001
  store i64 %shr, i64* %bits, align 8, !dbg !4001
  %3 = load i32, i32* %bit_no, align 4, !dbg !4003
  %add = add i32 %3, 1, !dbg !4003
  store i32 %add, i32* %bit_no, align 4, !dbg !4003
  %.pre = load i64, i64* %bits, align 8, !dbg !3998
  br label %while.cond, !dbg !3996, !llvm.loop !4004

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !4006
  %sub = add i32 %4, 63, !dbg !4007
  %div = and i32 %sub, -64, !dbg !4008
  store i32 %div, i32* %bit_no, align 4, !dbg !4009
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4010
  %5 = load i32, i32* %word_no, align 8, !dbg !4011
  %inc = add i32 %5, 1, !dbg !4011
  store i32 %inc, i32* %word_no, align 8, !dbg !4011
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4012
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4012
  br label %while.body6, !dbg !4013

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !4014

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !4015
  %cmp = icmp eq i32 %8, 2, !dbg !4016
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !4012
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !4014

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !3993
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !3993
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3993
  store i64 %10, i64* %bits, align 8, !dbg !4017
  %tobool14 = icmp eq i64 %10, 0, !dbg !4018
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !4020

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !4021
  %add17 = add i32 %11, 64, !dbg !4021
  store i32 %add17, i32* %bit_no, align 4, !dbg !4021
  %12 = load i32, i32* %word_no, align 8, !dbg !4022
  %inc19 = add i32 %12, 1, !dbg !4022
  store i32 %inc19, i32* %word_no, align 8, !dbg !4022
  br label %while.cond7, !dbg !4014, !llvm.loop !4023

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !4012
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !4025
  %14 = load i64, i64* %13, align 8, !dbg !4025
  store i64 %14, i64* %6, align 8, !dbg !4026
  %tobool24 = icmp eq i64 %14, 0, !dbg !4027
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !4029

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !4029
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !4030
  %16 = load i32, i32* %indx, align 8, !dbg !4030
  %mul28 = shl i32 %16, 7, !dbg !4031
  store i32 %mul28, i32* %bit_no, align 4, !dbg !4032
  store i32 0, i32* %word_no, align 8, !dbg !4033
  br label %while.body6, !dbg !4013, !llvm.loop !4034

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !4036

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !4036

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !3989
  ret i8 %retval.0, !dbg !4036
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_uses_to_rename_bb(%struct.basic_block_def* %bb, %struct.bitmap_head_def** %use_blocks, %struct.bitmap_head_def* %need_phis) unnamed_addr #5 !dbg !4037 {
entry:
  %bsi = alloca %struct.gimple_stmt_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp2 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp12 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4041, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %use_blocks, metadata !4042, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %need_phis, metadata !4043, metadata !DIExpression()), !dbg !4047
  %0 = bitcast %struct.gimple_stmt_iterator* %bsi to i8*, !dbg !4048
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !4048
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !4049
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4049
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4050
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4050
  %3 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4051
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4051
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4051
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !4051
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4051
  %5 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !4051
  store i32 %5, i32* %4, align 8, !dbg !4051
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4051
  %7 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !4051
  store %struct.VEC_edge_gc** %7, %struct.VEC_edge_gc*** %6, align 8, !dbg !4051
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !4051
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4051
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4053
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4053
  %10 = bitcast %struct.gimple_stmt_iterator* %tmp2 to i8*, !dbg !4055
  br label %for.cond, !dbg !4051

for.cond:                                         ; preds = %for.inc10, %entry
  %11 = load i32, i32* %8, align 8, !dbg !4057
  %12 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !4057
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4045, metadata !DIExpression(DW_OP_deref)), !dbg !4047
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %11, %struct.VEC_edge_gc** %12, %struct.edge_def** nonnull %e) #8, !dbg !4057
  %tobool = icmp eq i8 %call1, 0, !dbg !4051
  br i1 %tobool, label %for.end11, label %for.body, !dbg !4051

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #7, !dbg !4058
  %13 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4059
  call void @llvm.dbg.value(metadata %struct.edge_def* %13, metadata !4045, metadata !DIExpression()), !dbg !4047
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i64 0, i32 1, !dbg !4060
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4060
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp2, %struct.basic_block_def* %14) #6, !dbg !4058
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %10, i64 24, i1 false), !dbg !4058
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #7, !dbg !4058
  br label %for.cond3, !dbg !4061

for.cond3:                                        ; preds = %for.body6, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4044, metadata !DIExpression(DW_OP_deref)), !dbg !4047
  %call4 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !4062
  %tobool5 = icmp eq i8 %call4, 0, !dbg !4064
  br i1 %tobool5, label %for.body6, label %for.inc10, !dbg !4065

for.body6:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4044, metadata !DIExpression(DW_OP_deref)), !dbg !4047
  %call7 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !4066
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4066
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !4045, metadata !DIExpression()), !dbg !4047
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 6, !dbg !4066
  %16 = load i32, i32* %dest_idx, align 4, !dbg !4066
  %call8 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call7, i32 %16) #8, !dbg !4066
  %call9 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call8) #8, !dbg !4066
  call fastcc void @find_uses_to_rename_use(%struct.basic_block_def* %bb, %union.tree_node* %call9, %struct.bitmap_head_def** %use_blocks, %struct.bitmap_head_def* %need_phis) #8, !dbg !4067
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4044, metadata !DIExpression(DW_OP_deref)), !dbg !4047
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #8, !dbg !4068
  br label %for.cond3, !dbg !4069, !llvm.loop !4070

for.inc10:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4046, metadata !DIExpression(DW_OP_deref)), !dbg !4047
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4057
  br label %for.cond, !dbg !4057, !llvm.loop !4072

for.end11:                                        ; preds = %for.cond
  %17 = bitcast %struct.gimple_stmt_iterator* %tmp12 to i8*, !dbg !4074
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #7, !dbg !4074
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp12, %struct.basic_block_def* %bb) #8, !dbg !4074
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %17, i64 24, i1 false), !dbg !4074
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #7, !dbg !4074
  br label %for.cond13, !dbg !4076

for.cond13:                                       ; preds = %for.body17, %for.end11
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4044, metadata !DIExpression(DW_OP_deref)), !dbg !4047
  %call14 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !4077
  %tobool15 = icmp eq i8 %call14, 0, !dbg !4079
  br i1 %tobool15, label %for.body17, label %for.end20, !dbg !4080

for.body17:                                       ; preds = %for.cond13
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4044, metadata !DIExpression(DW_OP_deref)), !dbg !4047
  %call18 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !4081
  call fastcc void @find_uses_to_rename_stmt(%union.gimple_statement_d* %call18, %struct.bitmap_head_def** %use_blocks, %struct.bitmap_head_def* %need_phis) #8, !dbg !4082
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4044, metadata !DIExpression(DW_OP_deref)), !dbg !4047
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #8, !dbg !4083
  br label %for.cond13, !dbg !4084, !llvm.loop !4085

for.end20:                                        ; preds = %for.cond13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4087
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4087
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !4087
  ret void, !dbg !4087
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4088 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !4094, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4095, metadata !DIExpression()), !dbg !4096
  br label %land.end, !dbg !4097

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4097
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4097
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4097
  ret %struct.basic_block_def* %0, !dbg !4097
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4098 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4102, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4103, metadata !DIExpression()), !dbg !4104
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4105
  %0 = load i64, i64* %bits, align 8, !dbg !4106
  %shr = lshr i64 %0, 1, !dbg !4106
  store i64 %shr, i64* %bits, align 8, !dbg !4106
  %1 = load i32, i32* %bit_no, align 4, !dbg !4107
  %add = add i32 %1, 1, !dbg !4107
  store i32 %add, i32* %bit_no, align 4, !dbg !4107
  ret void, !dbg !4108
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @find_uses_to_rename_use(%struct.basic_block_def* %bb, %union.tree_node* %use, %struct.bitmap_head_def** %use_blocks, %struct.bitmap_head_def* %need_phis) unnamed_addr #5 !dbg !4109 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4113, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata %union.tree_node* %use, metadata !4114, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %use_blocks, metadata !4115, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %need_phis, metadata !4116, metadata !DIExpression()), !dbg !4120
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %use, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4121
  %bf.load = load i64, i64* %0, align 8, !dbg !4121
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4123
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4123
  br i1 %cmp, label %if.end, label %cleanup.cont, !dbg !4124

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %use) #6, !dbg !4125
  %tobool = icmp eq i8 %call, 0, !dbg !4125
  br i1 %tobool, label %cleanup.cont, label %if.end2, !dbg !4127

if.end2:                                          ; preds = %if.end
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %use, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4128
  %1 = bitcast %union.tree_node** %version to i32*, !dbg !4128
  %2 = load i32, i32* %1, align 8, !dbg !4128
  call void @llvm.dbg.value(metadata i32 %2, metadata !4117, metadata !DIExpression()), !dbg !4120
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %use, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4129
  %3 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4129
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %3, align 8, !dbg !4129
  %call4 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %4) #8, !dbg !4130
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call4, metadata !4118, metadata !DIExpression()), !dbg !4120
  %tobool5 = icmp eq %struct.basic_block_def* %call4, null, !dbg !4131
  br i1 %tobool5, label %cleanup.cont, label %if.end7, !dbg !4133

if.end7:                                          ; preds = %if.end2
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call4, i64 0, i32 3, !dbg !4134
  %5 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !4134
  call void @llvm.dbg.value(metadata %struct.loop* %5, metadata !4119, metadata !DIExpression()), !dbg !4120
  %call8 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %5) #8, !dbg !4135
  %tobool9 = icmp eq %struct.loop* %call8, null, !dbg !4135
  br i1 %tobool9, label %cleanup.cont, label %if.end11, !dbg !4137

if.end11:                                         ; preds = %if.end7
  %call12 = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %5, %struct.basic_block_def* %bb) #6, !dbg !4138
  %tobool13 = icmp eq i8 %call12, 0, !dbg !4138
  br i1 %tobool13, label %if.end15, label %cleanup.cont, !dbg !4140

if.end15:                                         ; preds = %if.end11
  %idxprom = zext i32 %2 to i64, !dbg !4141
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %use_blocks, i64 %idxprom, !dbg !4141
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4141
  %tobool16 = icmp eq %struct.bitmap_head_def* %6, null, !dbg !4141
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !4143

if.then17:                                        ; preds = %if.end15
  %call18 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !4144
  store %struct.bitmap_head_def* %call18, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4145
  br label %if.end21, !dbg !4146

if.end21:                                         ; preds = %if.end15, %if.then17
  %7 = phi %struct.bitmap_head_def* [ %6, %if.end15 ], [ %call18, %if.then17 ], !dbg !4147
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !4148
  %8 = load i32, i32* %index, align 8, !dbg !4148
  %call24 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %7, i32 %8) #6, !dbg !4149
  %call25 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %need_phis, i32 %2) #6, !dbg !4150
  br label %cleanup.cont, !dbg !4151

cleanup.cont:                                     ; preds = %if.end11, %if.end7, %if.end2, %if.end, %entry, %if.end21
  ret void, !dbg !4151
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_uses_to_rename_stmt(%union.gimple_statement_d* %stmt, %struct.bitmap_head_def** %use_blocks, %struct.bitmap_head_def* %need_phis) unnamed_addr #5 !dbg !4152 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4156, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %use_blocks, metadata !4157, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %need_phis, metadata !4158, metadata !DIExpression()), !dbg !4162
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !4163
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7, !dbg !4163
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #8, !dbg !4164
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4161, metadata !DIExpression()), !dbg !4162
  %call1 = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %stmt) #8, !dbg !4165
  %tobool = icmp eq i8 %call1, 0, !dbg !4165
  br i1 %tobool, label %if.end, label %cleanup, !dbg !4167

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4159, metadata !DIExpression(DW_OP_deref)), !dbg !4162
  %call2 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 5) #8, !dbg !4168
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !4160, metadata !DIExpression()), !dbg !4162
  br label %for.cond, !dbg !4168

for.cond:                                         ; preds = %for.body, %if.end
  %var.0 = phi %union.tree_node* [ %call2, %if.end ], [ %call5, %for.body ], !dbg !4170
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !4160, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4159, metadata !DIExpression(DW_OP_deref)), !dbg !4162
  %call3 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !4171
  %tobool4 = icmp eq i8 %call3, 0, !dbg !4171
  br i1 %tobool4, label %for.body, label %cleanup.loopexit, !dbg !4168

for.body:                                         ; preds = %for.cond
  call fastcc void @find_uses_to_rename_use(%struct.basic_block_def* %call, %union.tree_node* %var.0, %struct.bitmap_head_def** %use_blocks, %struct.bitmap_head_def* %need_phis) #8, !dbg !4173
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4159, metadata !DIExpression(DW_OP_deref)), !dbg !4162
  %call5 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !4171
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !4160, metadata !DIExpression()), !dbg !4162
  br label %for.cond, !dbg !4171, !llvm.loop !4174

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !4176

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7, !dbg !4176
  ret void, !dbg !4176
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4177 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4181, metadata !DIExpression()), !dbg !4182
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !4183
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4183
  ret %struct.basic_block_def* %0, !dbg !4184
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !4185 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4191, metadata !DIExpression()), !dbg !4193
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !4194
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !4194
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !4194
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4194

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !4194
  br label %cond.end, !dbg !4194

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4194
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !4194
  call void @llvm.dbg.value(metadata i32 %call, metadata !4192, metadata !DIExpression()), !dbg !4193
  %cmp = icmp eq i32 %call, 0, !dbg !4195
  br i1 %cmp, label %cleanup, label %if.end, !dbg !4197

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !4198
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !4198
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !4198

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !4198
  br label %cond.end8, !dbg !4198

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !4198
  %sub = add i32 %call, -1, !dbg !4198
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #8, !dbg !4198
  br label %cleanup, !dbg !4199

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !4193
  ret %struct.loop* %retval.0, !dbg !4200
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4201 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !4205, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4206, metadata !DIExpression()), !dbg !4207
  br label %land.end, !dbg !4208

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4208
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4208
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !4208
  ret %struct.loop* %0, !dbg !4208
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4209 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4213, metadata !DIExpression()), !dbg !4214
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !4215
  %cmp = icmp eq i32 %call, 2, !dbg !4216
  %conv1 = zext i1 %cmp to i8, !dbg !4215
  ret i8 %conv1, !dbg !4217
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4218 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4223, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4224, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i32 5, metadata !4225, metadata !DIExpression()), !dbg !4226
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 5) #8, !dbg !4227
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4228
  store i32 1, i32* %iter_type, align 4, !dbg !4229
  %call = tail call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !4230
  ret %union.tree_node* %call, !dbg !4231
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4232 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4238, metadata !DIExpression()), !dbg !4239
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4240
  %0 = load i8, i8* %done, align 8, !dbg !4240
  ret i8 %0, !dbg !4241
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4242 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4246, metadata !DIExpression()), !dbg !4248
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4249
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !4249
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !4251
  br i1 %tobool, label %if.end, label %if.then, !dbg !4252

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !4253
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %use_ptr) #8, !dbg !4253
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4247, metadata !DIExpression()), !dbg !4248
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !4255
  %2 = load i64*, i64** %1, align 8, !dbg !4255
  %3 = load i64, i64* %2, align 8, !dbg !4256
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !4257
  store i64 %3, i64* %4, align 8, !dbg !4257
  br label %cleanup, !dbg !4258

if.end:                                           ; preds = %entry
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4259
  %5 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !4259
  %tobool4 = icmp eq %struct.def_optype_d* %5, null, !dbg !4261
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !4262

if.then5:                                         ; preds = %if.end
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %5, i64 0, i32 1, !dbg !4263
  %6 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !4263
  %call7 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %6) #8, !dbg !4263
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !4247, metadata !DIExpression()), !dbg !4248
  %7 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !4265
  %8 = load i64*, i64** %7, align 8, !dbg !4265
  %9 = load i64, i64* %8, align 8, !dbg !4266
  %10 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !4267
  store i64 %9, i64* %10, align 8, !dbg !4267
  br label %cleanup, !dbg !4268

if.end11:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4269
  store i8 1, i8* %done, align 8, !dbg !4270
  br label %cleanup, !dbg !4271

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call7, %if.then5 ], [ null, %if.end11 ], !dbg !4248
  ret %union.tree_node* %retval.0, !dbg !4272
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4273 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4277, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4278, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 5, metadata !4279, metadata !DIExpression()), !dbg !4280
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4281
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !4282
  br i1 true, label %land.lhs.true16, label %entry.if.end_crit_edge, !dbg !4283

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end, !dbg !4283

land.lhs.true16:                                  ; preds = %entry
  br i1 true, label %if.end, label %land.lhs.true19, !dbg !4285

land.lhs.true19:                                  ; preds = %land.lhs.true16
  br i1 undef, label %land.lhs.true19.if.end_crit_edge, label %if.then, !dbg !4286

land.lhs.true19.if.end_crit_edge:                 ; preds = %land.lhs.true19
  br label %if.end, !dbg !4286

if.then:                                          ; preds = %land.lhs.true19
  br label %if.end, !dbg !4287

if.end:                                           ; preds = %land.lhs.true19.if.end_crit_edge, %entry.if.end_crit_edge, %land.lhs.true16, %if.then
  br i1 false, label %if.end.cond.end28_crit_edge, label %cond.true25, !dbg !4288

if.end.cond.end28_crit_edge:                      ; preds = %if.end
  br label %cond.end28, !dbg !4288

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #8, !dbg !4289
  br label %cond.end28, !dbg !4288

cond.end28:                                       ; preds = %if.end.cond.end28_crit_edge, %cond.true25
  %cond29 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ undef, %if.end.cond.end28_crit_edge ], !dbg !4288
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4290
  store %struct.use_optype_d* %cond29, %struct.use_optype_d** %uses, align 8, !dbg !4291
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4292
  store i8 0, i8* %done, align 8, !dbg !4293
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4294
  store i32 0, i32* %phi_i, align 8, !dbg !4295
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4296
  store i32 0, i32* %num_phi, align 4, !dbg !4297
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4298
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4299
  ret void, !dbg !4300
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4301 {
entry:
  unreachable, !dbg !4306
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4307 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4311, metadata !DIExpression()), !dbg !4312
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !4313
  %tobool = icmp eq i8 %call, 0, !dbg !4313
  br i1 %tobool, label %return, label %if.end, !dbg !4315

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !4316
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !4316
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4316
  br label %return, !dbg !4317

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !4312
  ret %union.tree_node* %retval.0, !dbg !4318
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4319 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4323, metadata !DIExpression()), !dbg !4324
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #8, !dbg !4325
  %tobool = icmp eq i8 %call, 0, !dbg !4325
  br i1 %tobool, label %return, label %if.end, !dbg !4327

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !4328
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !4328
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !4328
  br label %return, !dbg !4329

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !4324
  ret %struct.use_optype_d* %retval.0, !dbg !4330
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4331 {
entry:
  unreachable, !dbg !4334
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4335 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4337, metadata !DIExpression()), !dbg !4338
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4339
  %cmp = icmp eq i32 %call, 0, !dbg !4340
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !4341

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4342
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4343
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4344
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4345 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4347, metadata !DIExpression()), !dbg !4348
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4349
  %cmp = icmp ugt i32 %call, 5, !dbg !4350
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4351

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4352
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4353
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4354
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_exit_phis_var(%union.tree_node* %var, %struct.bitmap_head_def* %livein, %struct.bitmap_head_def* %exits) unnamed_addr #5 !dbg !4355 {
entry:
  %index = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4359, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %livein, metadata !4360, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %exits, metadata !4361, metadata !DIExpression()), !dbg !4366
  %0 = bitcast i32* %index to i8*, !dbg !4367
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !4367
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4368
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4368
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %1, align 8, !dbg !4368
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %2) #8, !dbg !4369
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4364, metadata !DIExpression()), !dbg !4366
  %3 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !4370
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #7, !dbg !4370
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %var) #6, !dbg !4371
  %tobool = icmp eq i8 %call1, 0, !dbg !4371
  %index2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 9, !dbg !4373
  %4 = load i32, i32* %index2, align 8, !dbg !4373
  br i1 %tobool, label %if.else, label %if.then, !dbg !4374

if.then:                                          ; preds = %entry
  %call3 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %livein, i32 %4) #6, !dbg !4375
  br label %if.end, !dbg !4375

if.else:                                          ; preds = %entry
  %call5 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %livein, i32 %4) #6, !dbg !4376
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call6 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !4377
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call6, metadata !4362, metadata !DIExpression()), !dbg !4366
  %5 = load i32, i32* %index2, align 8, !dbg !4378
  %call8 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call6, i32 %5) #6, !dbg !4379
  tail call void @compute_global_livein(%struct.bitmap_head_def* %livein, %struct.bitmap_head_def* %call6) #6, !dbg !4380
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call6) #6, !dbg !4381
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !4362, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32* %index, metadata !4363, metadata !DIExpression(DW_OP_deref)), !dbg !4366
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4365, metadata !DIExpression(DW_OP_deref)), !dbg !4366
  call fastcc void @bmp_iter_and_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %exits, %struct.bitmap_head_def* %livein, i32 0, i32* nonnull %index) #8, !dbg !4382
  br label %for.cond, !dbg !4382

for.cond:                                         ; preds = %cond.end, %if.end
  call void @llvm.dbg.value(metadata i32* %index, metadata !4363, metadata !DIExpression(DW_OP_deref)), !dbg !4366
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4365, metadata !DIExpression(DW_OP_deref)), !dbg !4366
  %call9 = call fastcc zeroext i8 @bmp_iter_and(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #8, !dbg !4384
  %tobool10 = icmp eq i8 %call9, 0, !dbg !4382
  br i1 %tobool10, label %for.end, label %for.body, !dbg !4382

for.body:                                         ; preds = %for.cond
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4386
  %cfg = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !4386
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4386
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 2, !dbg !4386
  %8 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !4386
  %tobool11 = icmp eq %struct.VEC_basic_block_gc* %8, null, !dbg !4386
  br i1 %tobool11, label %cond.end, label %cond.true, !dbg !4386

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %8, i64 0, i32 0, !dbg !4386
  br label %cond.end, !dbg !4386

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !4386
  %9 = load i32, i32* %index, align 4, !dbg !4386
  call void @llvm.dbg.value(metadata i32 %9, metadata !4363, metadata !DIExpression()), !dbg !4366
  %call15 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %9) #8, !dbg !4386
  call fastcc void @add_exit_phis_edge(%struct.basic_block_def* %call15, %union.tree_node* %var) #8, !dbg !4388
  call void @llvm.dbg.value(metadata i32* %index, metadata !4363, metadata !DIExpression(DW_OP_deref)), !dbg !4366
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4365, metadata !DIExpression(DW_OP_deref)), !dbg !4366
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #8, !dbg !4384
  br label %for.cond, !dbg !4384, !llvm.loop !4389

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #7, !dbg !4391
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !4391
  ret void, !dbg !4391
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4392 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4396, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4397, metadata !DIExpression()), !dbg !4398
  br label %land.end, !dbg !4399

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4399
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4399
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4399
  ret %union.tree_node* %0, !dbg !4399
}

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local void @compute_global_livein(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_and_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map1, %struct.bitmap_head_def* %map2, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !4400 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4404, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map1, metadata !4405, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map2, metadata !4406, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i32 0, metadata !4407, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4408, metadata !DIExpression()), !dbg !4409
  %0 = bitcast %struct.bitmap_head_def* %map1 to i64*, !dbg !4410
  %1 = load i64, i64* %0, align 8, !dbg !4410
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4411
  store i64 %1, i64* %2, align 8, !dbg !4411
  %3 = bitcast %struct.bitmap_head_def* %map2 to i64*, !dbg !4412
  %4 = load i64, i64* %3, align 8, !dbg !4412
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !4413
  %5 = bitcast %struct.bitmap_element_def** %elt2 to i64*, !dbg !4414
  store i64 %4, i64* %5, align 8, !dbg !4414
  %elt12 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4415
  %6 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !4418
  %7 = inttoptr i64 %4 to %struct.bitmap_element_def*, !dbg !4418
  %8 = inttoptr i64 %4 to i64*, !dbg !4418
  br label %while.body, !dbg !4418

while.body:                                       ; preds = %entry, %if.end6
  %tobool = icmp eq i64 %1, 0, !dbg !4419
  br i1 %tobool, label %if.then, label %if.end, !dbg !4420

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !4421
  br label %while.end, !dbg !4423

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end6, label %while.end.loopexit, !dbg !4424

if.end6:                                          ; preds = %if.end
  br label %while.body, !dbg !4418, !llvm.loop !4425

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !4427

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %9 = phi %struct.bitmap_element_def* [ %7, %while.end.loopexit ], [ null, %if.then ]
  %10 = phi %struct.bitmap_element_def* [ %7, %while.end.loopexit ], [ null, %if.then ]
  %11 = phi i64* [ %8, %while.end.loopexit ], [ null, %if.then ]
  %12 = phi %struct.bitmap_element_def* [ %7, %while.end.loopexit ], [ null, %if.then ]
  %13 = phi %struct.bitmap_element_def* [ %7, %while.end.loopexit ], [ null, %if.then ]
  br label %while.body9, !dbg !4427

while.body9:                                      ; preds = %while.end, %if.end22
  %14 = phi %struct.bitmap_element_def* [ %9, %while.end ], [ %22, %if.end22 ]
  %15 = phi %struct.bitmap_element_def* [ %10, %while.end ], [ %22, %if.end22 ]
  %16 = phi i64* [ %11, %while.end ], [ %23, %if.end22 ]
  %17 = phi %struct.bitmap_element_def* [ %12, %while.end ], [ %22, %if.end22 ]
  %18 = phi %struct.bitmap_element_def* [ %13, %while.end ], [ %22, %if.end22 ], !dbg !4428
  %tobool11 = icmp eq %struct.bitmap_element_def* %18, null, !dbg !4431
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !4432

if.then12:                                        ; preds = %while.body9
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt2, align 8, !dbg !4433
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt12, align 8, !dbg !4435
  %.pre = load i32, i32* getelementptr inbounds (%struct.bitmap_element_def, %struct.bitmap_element_def* @bitmap_zero_bits, i64 0, i32 2), align 8, !dbg !4436
  br label %while.end26, !dbg !4438

if.end15:                                         ; preds = %while.body9
  %indx17 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %17, i64 0, i32 2, !dbg !4439
  %19 = load i32, i32* %indx17, align 8, !dbg !4439
  %indx19 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !4441
  %20 = load i32, i32* %indx19, align 8, !dbg !4441
  %cmp20 = icmp ult i32 %19, %20, !dbg !4442
  br i1 %cmp20, label %if.end22, label %while.end26.loopexit, !dbg !4443

if.end22:                                         ; preds = %if.end15
  %21 = load i64, i64* %16, align 8, !dbg !4444
  store i64 %21, i64* %5, align 8, !dbg !4445
  %22 = inttoptr i64 %21 to %struct.bitmap_element_def*, !dbg !4427
  %23 = inttoptr i64 %21 to i64*, !dbg !4427
  br label %while.body9, !dbg !4427, !llvm.loop !4446

while.end26.loopexit:                             ; preds = %if.end15
  %.lcssa11 = phi i32 [ %20, %if.end15 ], !dbg !4441
  %.lcssa10 = phi %struct.bitmap_element_def* [ %14, %if.end15 ]
  %.lcssa8 = phi %struct.bitmap_element_def* [ %15, %if.end15 ]
  %indx30.phi.trans.insert = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %.lcssa8, i64 0, i32 2, !dbg !4448
  %.pre2 = load i32, i32* %indx30.phi.trans.insert, align 8, !dbg !4449
  br label %while.end26, !dbg !4450

while.end26:                                      ; preds = %while.end26.loopexit, %if.then12
  %24 = phi i32 [ %.pre2, %while.end26.loopexit ], [ %.pre, %if.then12 ], !dbg !4449
  %25 = phi i32 [ %.lcssa11, %while.end26.loopexit ], [ %.pre, %if.then12 ], !dbg !4436
  %26 = phi %struct.bitmap_element_def* [ %.lcssa10, %while.end26.loopexit ], [ @bitmap_zero_bits, %if.then12 ]
  %27 = phi %struct.bitmap_element_def* [ %6, %while.end26.loopexit ], [ @bitmap_zero_bits, %if.then12 ]
  %cmp31 = icmp eq i32 %25, %24, !dbg !4451
  br i1 %cmp31, label %if.then32, label %if.else, !dbg !4452

if.then32:                                        ; preds = %while.end26
  %cmp36 = icmp eq i32 %24, 0, !dbg !4453
  br i1 %cmp36, label %if.end40, label %if.then37, !dbg !4456

if.then37:                                        ; preds = %if.then32
  %mul = shl i32 %24, 7, !dbg !4457
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4407, metadata !DIExpression()), !dbg !4409
  br label %if.end40, !dbg !4458

if.end40:                                         ; preds = %if.then32, %if.then37
  %start_bit.addr.0 = phi i32 [ %mul, %if.then37 ], [ 0, %if.then32 ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !4407, metadata !DIExpression()), !dbg !4409
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4459
  store i32 0, i32* %word_no, align 8, !dbg !4460
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %27, i64 0, i32 3, i64 0, !dbg !4461
  %28 = load i64, i64* %arrayidx, align 8, !dbg !4461
  %arrayidx48 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %26, i64 0, i32 3, i64 0, !dbg !4462
  %29 = load i64, i64* %arrayidx48, align 8, !dbg !4462
  %and = and i64 %28, %29, !dbg !4463
  %bits51 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4464
  store i64 %and, i64* %bits51, align 8, !dbg !4465
  %phitmp = icmp eq i64 %and, 0, !dbg !4466
  %phitmp7 = zext i1 %phitmp to i32, !dbg !4466
  br label %if.end54, !dbg !4466

if.else:                                          ; preds = %while.end26
  %word_no52 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4467
  store i32 1, i32* %word_no52, align 8, !dbg !4469
  %bits53 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4470
  store i64 0, i64* %bits53, align 8, !dbg !4471
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.end40
  %30 = phi i32 [ %phitmp7, %if.end40 ], [ 1, %if.else ]
  %start_bit.addr.1 = phi i32 [ %start_bit.addr.0, %if.end40 ], [ 0, %if.else ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.1, metadata !4407, metadata !DIExpression()), !dbg !4409
  %add = add i32 %start_bit.addr.1, %30, !dbg !4472
  call void @llvm.dbg.value(metadata i32 %add, metadata !4407, metadata !DIExpression()), !dbg !4409
  store i32 %add, i32* %bit_no, align 4, !dbg !4473
  ret void, !dbg !4474
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_and(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4475 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4477, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4478, metadata !DIExpression()), !dbg !4482
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4483
  %0 = load i64, i64* %bits, align 8, !dbg !4483
  %tobool = icmp eq i64 %0, 0, !dbg !4484
  br i1 %tobool, label %if.end, label %next_bit, !dbg !4485

next_bit.loopexit:                                ; preds = %while.body9
  %and16.lcssa = phi i64 [ %and16, %while.body9 ], !dbg !4486
  br label %next_bit, !dbg !4489

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %and16.lcssa, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !4479), !dbg !4490
  br label %while.cond, !dbg !4489

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !4491
  %and = and i64 %2, 1, !dbg !4492
  %tobool2 = icmp eq i64 %and, 0, !dbg !4493
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !4489

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !4494
  store i64 %shr, i64* %bits, align 8, !dbg !4494
  %3 = load i32, i32* %bit_no, align 4, !dbg !4496
  %add = add i32 %3, 1, !dbg !4496
  store i32 %add, i32* %bit_no, align 4, !dbg !4496
  %.pre = load i64, i64* %bits, align 8, !dbg !4491
  br label %while.cond, !dbg !4489, !llvm.loop !4497

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !4499
  %sub = add i32 %4, 63, !dbg !4500
  %div = and i32 %sub, -64, !dbg !4501
  store i32 %div, i32* %bit_no, align 4, !dbg !4502
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4503
  %5 = load i32, i32* %word_no, align 8, !dbg !4504
  %inc = add i32 %5, 1, !dbg !4504
  store i32 %inc, i32* %word_no, align 8, !dbg !4504
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4505
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !4505
  %6 = bitcast %struct.bitmap_iterator* %bi to i64**, !dbg !4506
  %7 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4506
  %8 = bitcast %struct.bitmap_element_def** %elt2 to i64*, !dbg !4509
  br label %while.body6, !dbg !4511

while.body6:                                      ; preds = %if.end, %do.end58
  %9 = phi i32 [ %inc, %if.end ], [ 0, %do.end58 ]
  br label %while.cond7, !dbg !4512

while.cond7:                                      ; preds = %if.end21, %while.body6
  %10 = phi i32 [ %inc24, %if.end21 ], [ %9, %while.body6 ], !dbg !4513
  %cmp = icmp eq i32 %10, 2, !dbg !4514
  br i1 %cmp, label %do.body.preheader, label %while.body9, !dbg !4512

do.body.preheader:                                ; preds = %while.cond7
  %.pre3.pre = load i64*, i64** %6, align 8, !dbg !4515
  br label %do.body, !dbg !4516

while.body9:                                      ; preds = %while.cond7
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !4517
  %idxprom = zext i32 %10 to i64, !dbg !4518
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %11, i64 0, i32 3, i64 %idxprom, !dbg !4518
  %12 = load i64, i64* %arrayidx, align 8, !dbg !4518
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt2, align 8, !dbg !4519
  %arrayidx15 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %13, i64 0, i32 3, i64 %idxprom, !dbg !4520
  %14 = load i64, i64* %arrayidx15, align 8, !dbg !4520
  %and16 = and i64 %12, %14, !dbg !4486
  store i64 %and16, i64* %bits, align 8, !dbg !4521
  %tobool19 = icmp eq i64 %and16, 0, !dbg !4522
  br i1 %tobool19, label %if.end21, label %next_bit.loopexit, !dbg !4524

if.end21:                                         ; preds = %while.body9
  %15 = load i32, i32* %bit_no, align 4, !dbg !4525
  %add22 = add i32 %15, 64, !dbg !4525
  store i32 %add22, i32* %bit_no, align 4, !dbg !4525
  %16 = load i32, i32* %word_no, align 8, !dbg !4526
  %inc24 = add i32 %16, 1, !dbg !4526
  store i32 %inc24, i32* %word_no, align 8, !dbg !4526
  br label %while.cond7, !dbg !4512, !llvm.loop !4527

do.body:                                          ; preds = %do.body.preheader, %do.cond52
  %.pre3 = phi i64* [ %.pre3.pre, %do.body.preheader ], [ %.lcssa16, %do.cond52 ], !dbg !4515
  br label %do.body26, !dbg !4529

do.body26:                                        ; preds = %do.cond, %do.body
  %17 = phi i64* [ %24, %do.cond ], [ %.pre3, %do.body ], !dbg !4515
  %18 = load i64, i64* %17, align 8, !dbg !4530
  store i64 %18, i64* %7, align 8, !dbg !4531
  %tobool30 = icmp eq i64 %18, 0, !dbg !4532
  br i1 %tobool30, label %return.loopexit2, label %do.cond, !dbg !4534

do.cond:                                          ; preds = %do.body26
  %19 = inttoptr i64 %18 to %struct.bitmap_element_def*, !dbg !4534
  %20 = inttoptr i64 %18 to i64*, !dbg !4534
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %19, i64 0, i32 2, !dbg !4535
  %21 = load i32, i32* %indx, align 8, !dbg !4535
  %22 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt2, align 8, !dbg !4536
  %indx35 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %22, i64 0, i32 2, !dbg !4537
  %23 = load i32, i32* %indx35, align 8, !dbg !4537
  %cmp36 = icmp ult i32 %21, %23, !dbg !4538
  %24 = inttoptr i64 %18 to i64*, !dbg !4539
  br i1 %cmp36, label %do.body26, label %while.cond37.preheader, !dbg !4539, !llvm.loop !4540

while.cond37.preheader:                           ; preds = %do.cond
  %.lcssa16 = phi i64* [ %20, %do.cond ], !dbg !4534
  %indx.lcssa = phi i32* [ %indx, %do.cond ], !dbg !4535
  %.lcssa15 = phi i32 [ %21, %do.cond ], !dbg !4535
  %.lcssa14 = phi %struct.bitmap_element_def* [ %22, %do.cond ], !dbg !4536
  %.lcssa = phi i32 [ %23, %do.cond ], !dbg !4537
  %25 = bitcast %struct.bitmap_element_def* %.lcssa14 to i64*, !dbg !4539
  br label %while.cond37, !dbg !4542

while.cond37:                                     ; preds = %while.body43.while.cond37_crit_edge, %while.cond37.preheader
  %26 = phi i64* [ %25, %while.cond37.preheader ], [ %30, %while.body43.while.cond37_crit_edge ]
  %27 = phi i32 [ %.lcssa15, %while.cond37.preheader ], [ %.pre5, %while.body43.while.cond37_crit_edge ], !dbg !4543
  %28 = phi i32 [ %.lcssa, %while.cond37.preheader ], [ %.pre4, %while.body43.while.cond37_crit_edge ], !dbg !4544
  %cmp42 = icmp ult i32 %28, %27, !dbg !4545
  br i1 %cmp42, label %while.body43, label %do.cond52, !dbg !4542

while.body43:                                     ; preds = %while.cond37
  %29 = load i64, i64* %26, align 8, !dbg !4546
  store i64 %29, i64* %8, align 8, !dbg !4547
  %tobool48 = icmp eq i64 %29, 0, !dbg !4548
  br i1 %tobool48, label %return.loopexit1, label %while.body43.while.cond37_crit_edge, !dbg !4550, !llvm.loop !4551

while.body43.while.cond37_crit_edge:              ; preds = %while.body43
  %30 = inttoptr i64 %29 to i64*, !dbg !4550
  %31 = inttoptr i64 %29 to %struct.bitmap_element_def*, !dbg !4550
  %indx39.phi.trans.insert = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %31, i64 0, i32 2, !dbg !4553
  %.pre4 = load i32, i32* %indx39.phi.trans.insert, align 8, !dbg !4544
  %.pre5 = load i32, i32* %indx.lcssa, align 8, !dbg !4543
  br label %while.cond37, !dbg !4550

do.cond52:                                        ; preds = %while.cond37
  %.lcssa19 = phi i32 [ %27, %while.cond37 ], !dbg !4543
  %.lcssa17 = phi i32 [ %28, %while.cond37 ], !dbg !4544
  %cmp57 = icmp eq i32 %.lcssa19, %.lcssa17, !dbg !4554
  br i1 %cmp57, label %do.end58, label %do.body, !dbg !4555, !llvm.loop !4556

do.end58:                                         ; preds = %do.cond52
  %.lcssa19.lcssa = phi i32 [ %.lcssa19, %do.cond52 ], !dbg !4543
  %mul61 = shl i32 %.lcssa19.lcssa, 7, !dbg !4558
  store i32 %mul61, i32* %bit_no, align 4, !dbg !4559
  store i32 0, i32* %word_no, align 8, !dbg !4560
  br label %while.body6, !dbg !4511, !llvm.loop !4561

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !4563

return.loopexit1:                                 ; preds = %while.body43
  br label %return, !dbg !4563

return.loopexit2:                                 ; preds = %do.body26
  br label %return, !dbg !4563

return:                                           ; preds = %return.loopexit2, %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], [ 0, %return.loopexit2 ], !dbg !4482
  ret i8 %retval.0, !dbg !4563
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_exit_phis_edge(%struct.basic_block_def* %exit, %union.tree_node* %use) unnamed_addr #5 !dbg !4564 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp15 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %exit, metadata !4566, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata %union.tree_node* %use, metadata !4567, metadata !DIExpression()), !dbg !4574
  %def_stmt1 = getelementptr inbounds %union.tree_node, %union.tree_node* %use, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4575
  %0 = bitcast %union.tree_node** %def_stmt1 to %union.gimple_statement_d**, !dbg !4575
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %0, align 8, !dbg !4575
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !4569, metadata !DIExpression()), !dbg !4574
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %1) #8, !dbg !4576
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4570, metadata !DIExpression()), !dbg !4574
  %2 = bitcast %struct.edge_def** %e to i8*, !dbg !4577
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !4577
  %3 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4578
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4578
  %4 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4579
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !4579
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %exit, i64 0, i32 0, !dbg !4579
  %call2 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !4579
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4579
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call2, 0, !dbg !4579
  store i32 %6, i32* %5, align 8, !dbg !4579
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4579
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call2, 1, !dbg !4579
  store %struct.VEC_edge_gc** %8, %struct.VEC_edge_gc*** %7, align 8, !dbg !4579
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !4579
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !4579
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 3, !dbg !4581
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4584
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4584
  br label %for.cond, !dbg !4579

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %9, align 8, !dbg !4585
  %12 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %10, align 8, !dbg !4585
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4572, metadata !DIExpression(DW_OP_deref)), !dbg !4574
  %call3 = call fastcc zeroext i8 @ei_cond(i32 %11, %struct.VEC_edge_gc** %12, %struct.edge_def** nonnull %e) #8, !dbg !4585
  %tobool = icmp eq i8 %call3, 0, !dbg !4579
  br i1 %tobool, label %for.end, label %for.body, !dbg !4579

for.body:                                         ; preds = %for.cond
  %13 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !4581
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4586
  call void @llvm.dbg.value(metadata %struct.edge_def* %14, metadata !4572, metadata !DIExpression()), !dbg !4574
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i64 0, i32 0, !dbg !4587
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4587
  %loop_father4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 3, !dbg !4588
  %16 = load %struct.loop*, %struct.loop** %loop_father4, align 8, !dbg !4588
  %call5 = call %struct.loop* @find_common_loop(%struct.loop* %13, %struct.loop* %16) #6, !dbg !4589
  call void @llvm.dbg.value(metadata %struct.loop* %call5, metadata !4571, metadata !DIExpression()), !dbg !4574
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4590
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !4572, metadata !DIExpression()), !dbg !4574
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 1, !dbg !4592
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4592
  %call6 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %call5, %struct.basic_block_def* %18) #6, !dbg !4593
  %tobool7 = icmp eq i8 %call6, 0, !dbg !4593
  br i1 %tobool7, label %for.end, label %for.inc, !dbg !4594

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4573, metadata !DIExpression(DW_OP_deref)), !dbg !4574
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4585
  br label %for.cond, !dbg !4585, !llvm.loop !4595

for.end:                                          ; preds = %for.body, %for.cond
  %19 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4597
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !4572, metadata !DIExpression()), !dbg !4574
  %tobool8 = icmp eq %struct.edge_def* %19, null, !dbg !4597
  br i1 %tobool8, label %cleanup, label %if.end10, !dbg !4599

if.end10:                                         ; preds = %for.end
  %call11 = call %union.gimple_statement_d* @create_phi_node(%union.tree_node* %use, %struct.basic_block_def* %exit) #6, !dbg !4600
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call11, metadata !4568, metadata !DIExpression()), !dbg !4574
  %call12 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call11) #8, !dbg !4601
  %call13 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call11) #8, !dbg !4602
  %call14 = call %union.tree_node* @create_new_def_for(%union.tree_node* %call12, %union.gimple_statement_d* %call11, %union.tree_node** %call13) #6, !dbg !4603
  %20 = bitcast %struct.edge_iterator* %tmp15 to i8*, !dbg !4604
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #7, !dbg !4604
  %call17 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !4604
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp15, i64 0, i32 0, !dbg !4604
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call17, 0, !dbg !4604
  store i32 %22, i32* %21, align 8, !dbg !4604
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp15, i64 0, i32 1, !dbg !4604
  %24 = extractvalue { i32, %struct.VEC_edge_gc** } %call17, 1, !dbg !4604
  store %struct.VEC_edge_gc** %24, %struct.VEC_edge_gc*** %23, align 8, !dbg !4604
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %20, i64 16, i1 false), !dbg !4604
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #7, !dbg !4604
  br label %for.cond18, !dbg !4604

for.cond18:                                       ; preds = %for.body21, %if.end10
  %25 = load i32, i32* %9, align 8, !dbg !4606
  %26 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %10, align 8, !dbg !4606
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4572, metadata !DIExpression(DW_OP_deref)), !dbg !4574
  %call19 = call fastcc zeroext i8 @ei_cond(i32 %25, %struct.VEC_edge_gc** %26, %struct.edge_def** nonnull %e) #8, !dbg !4606
  %tobool20 = icmp eq i8 %call19, 0, !dbg !4604
  br i1 %tobool20, label %cleanup.loopexit, label %for.body21, !dbg !4604

for.body21:                                       ; preds = %for.cond18
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4608
  call void @llvm.dbg.value(metadata %struct.edge_def* %27, metadata !4572, metadata !DIExpression()), !dbg !4574
  call void @add_phi_arg(%union.gimple_statement_d* %call11, %union.tree_node* %use, %struct.edge_def* %27, i32 0) #6, !dbg !4609
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4573, metadata !DIExpression(DW_OP_deref)), !dbg !4574
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4606
  br label %for.cond18, !dbg !4606, !llvm.loop !4610

cleanup.loopexit:                                 ; preds = %for.cond18
  br label %cleanup, !dbg !4612

cleanup:                                          ; preds = %cleanup.loopexit, %for.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4612
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !4612
  ret void, !dbg !4612
}

declare dso_local %struct.loop* @find_common_loop(%struct.loop*, %struct.loop*) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_new_def_for(%union.tree_node*, %union.gimple_statement_d*, %union.tree_node**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4613 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4615, metadata !DIExpression()), !dbg !4616
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !4617
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !4617
  ret %union.tree_node* %0, !dbg !4618
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4619 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4624
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4624
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4624

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4624
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4624
  br label %cond.end, !dbg !4624

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4624
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4624
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !4625
  %conv3 = zext i1 %cmp to i8, !dbg !4626
  ret i8 %conv3, !dbg !4627
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4628 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4633
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4633
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4633

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4633
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4633
  br label %cond.end, !dbg !4633

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4633
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !4633
  ret %struct.edge_def* %call2, !dbg !4634
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !4635 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4639, metadata !DIExpression()), !dbg !4640
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4641
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4641

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4641
  %0 = load i32, i32* %num, align 8, !dbg !4641
  br label %cond.end, !dbg !4641

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4641
  ret i32 %cond, !dbg !4641
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4642 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !4647
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4647

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4647
  br label %cond.end, !dbg !4647

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !4648
  ret %struct.VEC_edge_gc* %0, !dbg !4649
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4650 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4655, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i32 %index, metadata !4656, metadata !DIExpression()), !dbg !4657
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !4658
  %0 = load i32, i32* %capacity, align 8, !dbg !4658
  %cmp = icmp ult i32 %0, %index, !dbg !4658
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4658

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4658
  br label %cond.end, !dbg !4658

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !4659
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !4659
  ret %struct.phi_arg_d* %arrayidx, !dbg !4660
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4661 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4665, metadata !DIExpression()), !dbg !4666
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4667
  %0 = load i32, i32* %flags, align 8, !dbg !4667
  %and = and i32 %0, 512, !dbg !4668
  %tobool = icmp eq i32 %and, 0, !dbg !4668
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !4669

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4670
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4670
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !4671
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4672

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4673
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4673
  br label %cond.end, !dbg !4672

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !4672
  ret %struct.gimple_seq_d* %cond, !dbg !4674
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4675 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4682, metadata !DIExpression()), !dbg !4683
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4684
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4684

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4685
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4685
  br label %cond.end, !dbg !4684

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4684
  ret %struct.gimple_seq_node_d* %cond, !dbg !4686
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4687 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4689, metadata !DIExpression()), !dbg !4690
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4691
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4691
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4691
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4691

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4691
  br label %cond.end, !dbg !4691

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4691
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4691
  %cmp = icmp eq i32 %call, 1, !dbg !4692
  %conv2 = zext i1 %cmp to i8, !dbg !4691
  ret i8 %conv2, !dbg !4693
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !4694 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4698, metadata !DIExpression()), !dbg !4699
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4700
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4700
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !4702
  br i1 %cmp, label %return, label %if.end, !dbg !4703

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !4704
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4704
  %2 = load i64, i64* %1, align 8, !dbg !4704
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !4705
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !4706
  store i64 %2, i64* %3, align 8, !dbg !4706
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !4707
  %5 = load i64, i64* %4, align 8, !dbg !4707
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !4708
  %7 = load i64*, i64** %6, align 8, !dbg !4708
  store i64 %5, i64* %7, align 8, !dbg !4709
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4710
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !4711
  br label %return, !dbg !4712

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !4712
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* %def) unnamed_addr #0 !dbg !4713 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4717, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !4718, metadata !DIExpression()), !dbg !4720
  %tobool = icmp eq %union.tree_node* %def, null, !dbg !4721
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4723

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4724
  %bf.load = load i64, i64* %0, align 8, !dbg !4724
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4725
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4725
  br i1 %cmp, label %if.else, label %if.then, !dbg !4726

if.then:                                          ; preds = %lor.lhs.false, %entry
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4727
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4728
  br label %if.end, !dbg !4729

if.else:                                          ; preds = %lor.lhs.false
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4730
  %1 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !4730
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %1, metadata !4719, metadata !DIExpression()), !dbg !4720
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* nonnull %1) #8, !dbg !4732
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4733
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !4734 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4738, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !4739, metadata !DIExpression()), !dbg !4740
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4741
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4742
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !4743
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4743
  %1 = load i64, i64* %0, align 8, !dbg !4743
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !4744
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !4745
  store i64 %1, i64* %2, align 8, !dbg !4745
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !4746
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !4747
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !4748
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !4749
  ret void, !dbg !4750
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4751 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4753, metadata !DIExpression()), !dbg !4754
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4755
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4755

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !4756
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !4756
  br label %cond.end, !dbg !4755

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4755
  ret %struct.gimple_seq_node_d* %cond, !dbg !4757
}

declare dso_local void @add_phi_args_after_copy_bb(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %union.tree_node* @lower_bound_in_type(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @upper_bound_in_type(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @tree_int_cst_sign_bit(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @invert_truthvalue_loc(i32, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @unshare_expr(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @is_gimple_condexpr(%union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @first_dom_son(i32, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @next_dom_son(i32, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !4758 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4762, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i32 %i, metadata !4763, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !4764, metadata !DIExpression()), !dbg !4765
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !4766
  %tobool = icmp eq i8 %call, 0, !dbg !4766
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !4766

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !4766
  %cmp = icmp ugt i32 %call1, %i, !dbg !4766
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4766

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4766
  br label %cond.end, !dbg !4766

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !4767
  %idxprom = zext i32 %i to i64, !dbg !4767
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call3, i64 %idxprom, !dbg !4767
  store %union.tree_node* %op, %union.tree_node** %arrayidx, align 8, !dbg !4768
  ret void, !dbg !4769
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4770 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4774, metadata !DIExpression()), !dbg !4775
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !4776
  %0 = load i32, i32* %num_ops, align 4, !dbg !4776
  ret i32 %0, !dbg !4777
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4778 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4780, metadata !DIExpression()), !dbg !4782
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !4783
  %idxprom = zext i32 %call to i64, !dbg !4784
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !4784
  %0 = load i64, i64* %arrayidx, align 8, !dbg !4784
  call void @llvm.dbg.value(metadata i64 %0, metadata !4781, metadata !DIExpression()), !dbg !4782
  %cmp = icmp eq i64 %0, 0, !dbg !4785
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4785

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4785
  br label %cond.end, !dbg !4785

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !4786
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !4787
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !4788
  ret %union.tree_node** %2, !dbg !4789
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4790 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4794, metadata !DIExpression()), !dbg !4795
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !4796
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !4797
  ret i32 %call1, !dbg !4798
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !4799 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4803, metadata !DIExpression()), !dbg !4804
  %idxprom = zext i32 %code to i64, !dbg !4805
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !4805
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4805
  ret i32 %0, !dbg !4806
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def** @get_loop_body_in_dom_order(%struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4807 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4809, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4810, metadata !DIExpression()), !dbg !4812
  tail call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* sret %agg.result, %struct.basic_block_def* %bb) #8, !dbg !4813
  br label %while.cond, !dbg !4814

while.cond:                                       ; preds = %while.body, %entry
  %call = tail call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #8, !dbg !4815
  %tobool = icmp eq i8 %call, 0, !dbg !4815
  br i1 %tobool, label %land.rhs, label %while.end, !dbg !4816

land.rhs:                                         ; preds = %while.cond
  %call1 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #8, !dbg !4817
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call1) #8, !dbg !4818
  %cmp = icmp eq i32 %call2, 4, !dbg !4819
  br i1 %cmp, label %while.body, label %while.end, !dbg !4814

while.body:                                       ; preds = %land.rhs
  tail call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %agg.result) #8, !dbg !4820
  br label %while.cond, !dbg !4814, !llvm.loop !4821

while.end:                                        ; preds = %while.cond, %land.rhs
  ret void, !dbg !4823
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rewrite_phi_with_iv(%struct.loop* %loop, %struct.gimple_stmt_iterator* %psi, %struct.gimple_stmt_iterator* %gsi, %union.tree_node* %main_iv) unnamed_addr #5 !dbg !4824 {
entry:
  %iv = alloca %struct.affine_iv, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4828, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !4829, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4830, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata %union.tree_node* %main_iv, metadata !4831, metadata !DIExpression()), !dbg !4839
  %0 = bitcast %struct.affine_iv* %iv to i8*, !dbg !4840
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !4840
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %psi) #8, !dbg !4841
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !4834, metadata !DIExpression()), !dbg !4839
  %call1 = tail call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call) #8, !dbg !4842
  %call2 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call1) #8, !dbg !4842
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !4838, metadata !DIExpression()), !dbg !4839
  %call3 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call2) #6, !dbg !4843
  %tobool = icmp eq i8 %call3, 0, !dbg !4843
  %cmp = icmp eq %union.tree_node* %call2, %main_iv, !dbg !4845
  %or.cond = or i1 %tobool, %cmp, !dbg !4846
  br i1 %or.cond, label %if.then, label %if.end, !dbg !4846

if.then:                                          ; preds = %entry
  tail call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %psi) #8, !dbg !4847
  br label %cleanup, !dbg !4849

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.affine_iv* %iv, metadata !4832, metadata !DIExpression(DW_OP_deref)), !dbg !4839
  %call4 = call zeroext i8 @simple_iv(%struct.loop* %loop, %struct.loop* %loop, %union.tree_node* %call2, %struct.affine_iv* nonnull %iv, i8 zeroext 1) #6, !dbg !4850
  %tobool5 = icmp eq i8 %call4, 0, !dbg !4850
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4852

if.then6:                                         ; preds = %if.end
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %psi) #8, !dbg !4853
  br label %cleanup, !dbg !4855

if.end7:                                          ; preds = %if.end
  call void @remove_phi_node(%struct.gimple_stmt_iterator* %psi, i8 zeroext 0) #6, !dbg !4856
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4857
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !4857
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !4835, metadata !DIExpression()), !dbg !4839
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4858
  %bf.load = load i64, i64* %2, align 8, !dbg !4858
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4858
  %cmp8 = icmp eq i64 %bf.cast1, 10, !dbg !4858
  br i1 %cmp8, label %cond.true, label %lor.lhs.false9, !dbg !4858

lor.lhs.false9:                                   ; preds = %if.end7
  %cmp14 = icmp eq i64 %bf.cast1, 12, !dbg !4858
  br i1 %cmp14, label %cond.true, label %cond.end, !dbg !4858

cond.true:                                        ; preds = %lor.lhs.false9, %if.end7
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !4859
  br label %cond.end, !dbg !4858

cond.end:                                         ; preds = %lor.lhs.false9, %cond.true
  %cond = phi %union.tree_node* [ %3, %cond.true ], [ %1, %lor.lhs.false9 ], !dbg !4858
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !4836, metadata !DIExpression()), !dbg !4839
  %step = getelementptr inbounds %struct.affine_iv, %struct.affine_iv* %iv, i64 0, i32 1, !dbg !4860
  %4 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !4860
  %call15 = call %union.tree_node* @unshare_expr(%union.tree_node* %4) #6, !dbg !4860
  %call16 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %cond, %union.tree_node* %main_iv) #6, !dbg !4860
  %call17 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %cond, %union.tree_node* %call15, %union.tree_node* %call16) #6, !dbg !4860
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !4837, metadata !DIExpression()), !dbg !4839
  %bf.load19 = load i64, i64* %2, align 8, !dbg !4861
  %bf.cast213 = and i64 %bf.load19, 65535, !dbg !4861
  %cmp22 = icmp eq i64 %bf.cast213, 10, !dbg !4861
  br i1 %cmp22, label %lor.end, label %lor.rhs, !dbg !4861

lor.rhs:                                          ; preds = %cond.end
  %cmp27 = icmp eq i64 %bf.cast213, 12, !dbg !4861
  %phitmp = select i1 %cmp27, i32 66, i32 63, !dbg !4861
  br label %lor.end, !dbg !4861

lor.end:                                          ; preds = %lor.rhs, %cond.end
  %5 = phi i32 [ 66, %cond.end ], [ %phitmp, %lor.rhs ]
  %base29 = getelementptr inbounds %struct.affine_iv, %struct.affine_iv* %iv, i64 0, i32 0, !dbg !4861
  %6 = load %union.tree_node*, %union.tree_node** %base29, align 8, !dbg !4861
  %call30 = call %union.tree_node* @unshare_expr(%union.tree_node* %6) #6, !dbg !4861
  %call31 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 %5, %union.tree_node* %1, %union.tree_node* %call30, %union.tree_node* %call17) #6, !dbg !4861
  call void @llvm.dbg.value(metadata %union.tree_node* %call31, metadata !4837, metadata !DIExpression()), !dbg !4839
  %call32 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call31, i8 zeroext 0, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !4862
  call void @llvm.dbg.value(metadata %union.tree_node* %call32, metadata !4837, metadata !DIExpression()), !dbg !4839
  %call33 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call2, %union.tree_node* %call32) #6, !dbg !4863
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call33, metadata !4833, metadata !DIExpression()), !dbg !4839
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call33, i32 1) #6, !dbg !4864
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4865
  %7 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4865
  store %union.gimple_statement_d* %call33, %union.gimple_statement_d** %7, align 8, !dbg !4866
  br label %cleanup, !dbg !4867

cleanup:                                          ; preds = %lor.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !4867
  ret void, !dbg !4867
}

declare dso_local zeroext i8 @simple_iv(%struct.loop*, %struct.loop*, %union.tree_node*, %struct.affine_iv*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @remove_phi_node(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

declare dso_local %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator*, %union.tree_node*, i8 zeroext, %union.tree_node*, i8 zeroext, i32) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1855, !1856, !1857}
!llvm.ident = !{!1858}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !460, nameTableKind: None)
!1 = !DIFile(filename: "tree-ssa-loop-manip.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !327, !336, !340, !346, !351, !356, !374, !381, !388, !395, !434}
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
!327 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !328, line: 31, baseType: !5, size: 32, elements: !329)
!328 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!329 = !{!330, !331, !332, !333, !334, !335}
!330 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!331 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!332 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!333 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!334 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!335 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !328, line: 91, baseType: !5, size: 32, elements: !337)
!337 = !{!338, !339}
!338 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!339 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !341, line: 363, baseType: !5, size: 32, elements: !342)
!341 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!342 = !{!343, !344, !345}
!343 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!344 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!345 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!346 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !341, line: 355, baseType: !5, size: 32, elements: !347)
!347 = !{!348, !349, !350}
!348 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!349 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!350 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!351 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !352, line: 474, baseType: !5, size: 32, elements: !353)
!352 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!353 = !{!354, !355}
!354 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!355 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!356 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !133, line: 280, baseType: !5, size: 32, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373}
!358 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!370 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!372 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!374 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !133, line: 1817, baseType: !5, size: 32, elements: !375)
!375 = !{!376, !377, !378, !379, !380}
!376 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!377 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!378 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!379 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!380 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!381 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !133, line: 1805, baseType: !5, size: 32, elements: !382)
!382 = !{!383, !384, !385, !386, !387}
!383 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!384 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!385 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!386 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!387 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !389, line: 119, baseType: !5, size: 32, elements: !390)
!389 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!390 = !{!391, !392, !393, !394}
!391 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!392 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!393 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!394 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!395 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !396, line: 51, baseType: !5, size: 32, elements: !397)
!396 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!398 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!399 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!400 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!401 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!402 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!403 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!404 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!405 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!406 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!407 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!408 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!409 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!410 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!411 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!412 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!413 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!414 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!415 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!416 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!417 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!418 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!419 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!420 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!421 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!422 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!423 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!424 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!425 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!426 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!427 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!428 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!429 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!430 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!431 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!432 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!433 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!434 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !396, line: 727, baseType: !5, size: 32, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459}
!436 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!437 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!438 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!439 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!440 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!441 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!442 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!443 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!444 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!445 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!446 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!447 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!448 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!449 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!450 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!451 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!452 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!453 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!454 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!455 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!456 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!457 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!458 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!459 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!460 = !{!461, !462, !463, !464, !467, !468, !132, !470, !472, !1854, !1396, !5, !526, !774, !828, !465}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!463 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !471, line: 44, baseType: !5)
!471 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !473, line: 56, baseType: !474)
!473 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !133, line: 3371, size: 1792, elements: !476)
!476 = !{!477, !510, !516, !529, !548, !559, !564, !573, !579, !592, !602, !640, !1184, !1212, !1229, !1230, !1235, !1244, !1250, !1255, !1259, !1263, !1505, !1552, !1558, !1564, !1571, !1584, !1598, !1615, !1627, !1649, !1664, !1836}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !475, file: !133, line: 3372, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !133, line: 360, size: 64, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !478, file: !133, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !478, file: !133, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !478, file: !133, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !478, file: !133, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !478, file: !133, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !478, file: !133, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !478, file: !133, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !478, file: !133, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !478, file: !133, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !478, file: !133, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !478, file: !133, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !478, file: !133, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !478, file: !133, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !478, file: !133, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !478, file: !133, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !478, file: !133, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !478, file: !133, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !478, file: !133, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !478, file: !133, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !478, file: !133, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !478, file: !133, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !478, file: !133, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !478, file: !133, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !478, file: !133, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !478, file: !133, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !478, file: !133, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !478, file: !133, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !478, file: !133, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !478, file: !133, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !478, file: !133, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !475, file: !133, line: 3373, baseType: !511, size: 192)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !133, line: 402, size: 192, elements: !512)
!512 = !{!513, !514, !515}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !511, file: !133, line: 403, baseType: !478, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !511, file: !133, line: 404, baseType: !472, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !511, file: !133, line: 405, baseType: !472, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !475, file: !133, line: 3374, baseType: !517, size: 320)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !133, line: 1384, size: 320, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !517, file: !133, line: 1385, baseType: !511, size: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !517, file: !133, line: 1386, baseType: !521, size: 128, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !522, line: 58, baseType: !523)
!522 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !522, line: 54, size: 128, elements: !524)
!524 = !{!525, !527}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !523, file: !522, line: 56, baseType: !526, size: 64)
!526 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !523, file: !522, line: 57, baseType: !528, size: 64, offset: 64)
!528 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !475, file: !133, line: 3375, baseType: !530, size: 256)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !133, line: 1397, size: 256, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !530, file: !133, line: 1398, baseType: !511, size: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !530, file: !133, line: 1399, baseType: !534, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !536, line: 52, size: 256, elements: !537)
!536 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!537 = !{!538, !539, !540, !541, !542, !543, !544}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !535, file: !536, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !535, file: !536, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !535, file: !536, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !535, file: !536, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !535, file: !536, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !535, file: !536, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !535, file: !536, line: 62, baseType: !545, size: 192, offset: 64)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 192, elements: !546)
!546 = !{!547}
!547 = !DISubrange(count: 3)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !475, file: !133, line: 3376, baseType: !549, size: 256)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !133, line: 1408, size: 256, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !549, file: !133, line: 1409, baseType: !511, size: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !549, file: !133, line: 1410, baseType: !553, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !555, line: 27, size: 192, elements: !556)
!555 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !554, file: !555, line: 29, baseType: !521, size: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !554, file: !555, line: 30, baseType: !3, size: 32, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !475, file: !133, line: 3377, baseType: !560, size: 256)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !133, line: 1437, size: 256, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !560, file: !133, line: 1438, baseType: !511, size: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !560, file: !133, line: 1439, baseType: !472, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !475, file: !133, line: 3378, baseType: !565, size: 256)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !133, line: 1418, size: 256, elements: !566)
!566 = !{!567, !568, !569}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !565, file: !133, line: 1419, baseType: !511, size: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !565, file: !133, line: 1420, baseType: !463, size: 32, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !565, file: !133, line: 1421, baseType: !570, size: 8, offset: 224)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 8, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 1)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !475, file: !133, line: 3379, baseType: !574, size: 320)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !133, line: 1428, size: 320, elements: !575)
!575 = !{!576, !577, !578}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !574, file: !133, line: 1429, baseType: !511, size: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !574, file: !133, line: 1430, baseType: !472, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !574, file: !133, line: 1431, baseType: !472, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !475, file: !133, line: 3380, baseType: !580, size: 320)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !133, line: 1460, size: 320, elements: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !580, file: !133, line: 1461, baseType: !511, size: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !580, file: !133, line: 1462, baseType: !584, size: 128, offset: 192)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !585, line: 31, size: 128, elements: !586)
!585 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!586 = !{!587, !590, !591}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !584, file: !585, line: 32, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !584, file: !585, line: 33, baseType: !5, size: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !584, file: !585, line: 34, baseType: !5, size: 32, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !475, file: !133, line: 3381, baseType: !593, size: 384)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !133, line: 2507, size: 384, elements: !594)
!594 = !{!595, !596, !599, !600, !601}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !593, file: !133, line: 2508, baseType: !511, size: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !593, file: !133, line: 2509, baseType: !597, size: 32, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !598, line: 58, baseType: !470)
!598 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!599 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !593, file: !133, line: 2510, baseType: !5, size: 32, offset: 224)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !593, file: !133, line: 2511, baseType: !472, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !593, file: !133, line: 2512, baseType: !472, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !475, file: !133, line: 3382, baseType: !603, size: 896)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !133, line: 2652, size: 896, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !603, file: !133, line: 2653, baseType: !593, size: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !603, file: !133, line: 2654, baseType: !472, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !603, file: !133, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !603, file: !133, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !603, file: !133, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !603, file: !133, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !603, file: !133, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !603, file: !133, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !603, file: !133, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !603, file: !133, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !603, file: !133, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !603, file: !133, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !603, file: !133, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !603, file: !133, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !603, file: !133, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !603, file: !133, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !603, file: !133, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !603, file: !133, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !603, file: !133, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !603, file: !133, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !603, file: !133, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !603, file: !133, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !603, file: !133, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !603, file: !133, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !603, file: !133, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !603, file: !133, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !603, file: !133, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !603, file: !133, line: 2703, baseType: !5, size: 32, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !603, file: !133, line: 2705, baseType: !472, size: 64, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !603, file: !133, line: 2706, baseType: !472, size: 64, offset: 640)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !603, file: !133, line: 2707, baseType: !472, size: 64, offset: 704)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !603, file: !133, line: 2708, baseType: !472, size: 64, offset: 768)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !603, file: !133, line: 2711, baseType: !638, size: 64, offset: 832)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !133, line: 2711, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !475, file: !133, line: 3383, baseType: !641, size: 960)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !133, line: 2756, size: 960, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !641, file: !133, line: 2757, baseType: !603, size: 896)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !641, file: !133, line: 2758, baseType: !645, size: 64, offset: 896)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !473, line: 50, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !648, line: 240, size: 384, elements: !649)
!648 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !647, file: !648, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !647, file: !648, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !647, file: !648, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !647, file: !648, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !647, file: !648, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !647, file: !648, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !647, file: !648, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !647, file: !648, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !647, file: !648, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !647, file: !648, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !647, file: !648, line: 321, baseType: !661, size: 320, offset: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !648, line: 315, size: 320, elements: !662)
!662 = !{!663, !1117, !1119, !1182, !1183}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !661, file: !648, line: 316, baseType: !664, size: 64)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 64, elements: !571)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !648, line: 183, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !648, line: 166, size: 64, elements: !667)
!667 = !{!668, !669, !670, !671, !672, !680, !681, !693, !696, !756, !757, !1094, !1107, !1114}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !666, file: !648, line: 168, baseType: !463, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !666, file: !648, line: 169, baseType: !5, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !666, file: !648, line: 170, baseType: !468, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !666, file: !648, line: 171, baseType: !645, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !666, file: !648, line: 172, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !473, line: 53, baseType: !674)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !648, line: 359, size: 128, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !675, file: !648, line: 360, baseType: !463, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !675, file: !648, line: 361, baseType: !679, size: 64, offset: 64)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 64, elements: !571)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !666, file: !648, line: 173, baseType: !3, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !666, file: !648, line: 174, baseType: !682, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !648, line: 133, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !648, line: 115, size: 32, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !683, file: !648, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !683, file: !648, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !683, file: !648, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !683, file: !648, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !683, file: !648, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !683, file: !648, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !683, file: !648, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !683, file: !648, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !666, file: !648, line: 175, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !648, line: 175, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !666, file: !648, line: 176, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !699, line: 75, size: 256, elements: !700)
!699 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!700 = !{!701, !715, !716, !717}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !698, file: !699, line: 76, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !699, line: 68, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !699, line: 63, size: 320, elements: !705)
!705 = !{!706, !708, !709, !710}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !699, line: 64, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !704, file: !699, line: 65, baseType: !707, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !704, file: !699, line: 66, baseType: !5, size: 32, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !704, file: !699, line: 67, baseType: !711, size: 128, offset: 192)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 128, elements: !713)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !699, line: 29, baseType: !526)
!713 = !{!714}
!714 = !DISubrange(count: 2)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !698, file: !699, line: 77, baseType: !702, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !698, file: !699, line: 78, baseType: !5, size: 32, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !698, file: !699, line: 79, baseType: !718, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !699, line: 49, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !699, line: 45, size: 832, elements: !721)
!721 = !{!722, !723, !724}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !720, file: !699, line: 46, baseType: !707, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !720, file: !699, line: 47, baseType: !697, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !720, file: !699, line: 48, baseType: !725, size: 704, offset: 128)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !726, line: 164, size: 704, elements: !727)
!726 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!727 = !{!728, !729, !739, !740, !741, !742, !743, !744, !748, !752, !753, !754, !755}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !725, file: !726, line: 166, baseType: !528, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !725, file: !726, line: 167, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !726, line: 157, size: 192, elements: !732)
!732 = !{!733, !734, !735}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !731, file: !726, line: 159, baseType: !465, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !731, file: !726, line: 160, baseType: !730, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !731, file: !726, line: 161, baseType: !736, size: 32, offset: 128)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 32, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 4)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !725, file: !726, line: 168, baseType: !465, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !725, file: !726, line: 169, baseType: !465, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !725, file: !726, line: 170, baseType: !465, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !725, file: !726, line: 171, baseType: !528, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !725, file: !726, line: 172, baseType: !463, size: 32, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !725, file: !726, line: 176, baseType: !745, size: 64, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!730, !467, !528}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !725, file: !726, line: 177, baseType: !749, size: 64, offset: 512)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !467, !730}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !725, file: !726, line: 178, baseType: !467, size: 64, offset: 576)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !725, file: !726, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !725, file: !726, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !725, file: !726, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !666, file: !648, line: 177, baseType: !472, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !666, file: !648, line: 178, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !341, line: 217, size: 832, elements: !760)
!760 = !{!761, !1006, !1007, !1008, !1064, !1068, !1069, !1070, !1088, !1089, !1090, !1091, !1092, !1093}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !759, file: !341, line: 219, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !341, line: 151, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !341, line: 151, size: 128, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !764, file: !341, line: 151, baseType: !767, size: 128)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !341, line: 150, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !341, line: 150, size: 128, elements: !769)
!769 = !{!770, !771, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !768, file: !341, line: 150, baseType: !5, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !768, file: !341, line: 150, baseType: !5, size: 32, offset: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !768, file: !341, line: 150, baseType: !773, size: 64, offset: 64)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 64, elements: !571)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !473, line: 108, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !341, line: 122, size: 512, elements: !777)
!777 = !{!778, !779, !780, !998, !999, !1000, !1001, !1002, !1003, !1004}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !776, file: !341, line: 124, baseType: !758, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !776, file: !341, line: 125, baseType: !758, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !776, file: !341, line: 131, baseType: !781, size: 64, offset: 128)
!781 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !341, line: 128, size: 64, elements: !782)
!782 = !{!783, !997}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !781, file: !341, line: 129, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !473, line: 66, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !396, line: 143, size: 192, elements: !787)
!787 = !{!788, !995, !996}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !786, file: !396, line: 145, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !473, line: 69, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !396, line: 136, size: 192, elements: !792)
!792 = !{!793, !993, !994}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !791, file: !396, line: 137, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !473, line: 58, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !396, line: 737, size: 768, elements: !797)
!797 = !{!798, !815, !848, !854, !859, !864, !871, !877, !883, !888, !902, !907, !913, !918, !928, !933, !951, !958, !965, !971, !976, !982, !988}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !796, file: !396, line: 738, baseType: !799, size: 256)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !396, line: 271, size: 256, elements: !800)
!800 = !{!801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !799, file: !396, line: 274, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !799, file: !396, line: 277, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !799, file: !396, line: 281, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !799, file: !396, line: 284, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !799, file: !396, line: 291, baseType: !5, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !799, file: !396, line: 295, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !799, file: !396, line: 298, baseType: !5, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !799, file: !396, line: 301, baseType: !5, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !799, file: !396, line: 307, baseType: !5, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !799, file: !396, line: 312, baseType: !5, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !799, file: !396, line: 316, baseType: !597, size: 32, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !799, file: !396, line: 319, baseType: !5, size: 32, offset: 96)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !799, file: !396, line: 323, baseType: !758, size: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !799, file: !396, line: 327, baseType: !472, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !796, file: !396, line: 739, baseType: !816, size: 448)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !396, line: 350, size: 448, elements: !817)
!817 = !{!818, !846}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !816, file: !396, line: 353, baseType: !819, size: 384)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !396, line: 333, size: 384, elements: !820)
!820 = !{!821, !822, !829}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !819, file: !396, line: 336, baseType: !799, size: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !819, file: !396, line: 343, baseType: !823, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !389, line: 37, size: 128, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !824, file: !389, line: 39, baseType: !823, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !824, file: !389, line: 40, baseType: !828, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !819, file: !396, line: 344, baseType: !830, size: 64, offset: 320)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !389, line: 45, size: 320, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !831, file: !389, line: 47, baseType: !830, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !831, file: !389, line: 48, baseType: !835, size: 256, offset: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !133, line: 1883, size: 256, elements: !836)
!836 = !{!837, !839, !840, !845}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !835, file: !133, line: 1884, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !835, file: !133, line: 1885, baseType: !838, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !835, file: !133, line: 1891, baseType: !841, size: 64, offset: 128)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !133, line: 1891, size: 64, elements: !842)
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !841, file: !133, line: 1891, baseType: !794, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !841, file: !133, line: 1891, baseType: !472, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !835, file: !133, line: 1892, baseType: !828, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !816, file: !396, line: 359, baseType: !847, size: 64, offset: 384)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 64, elements: !571)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !796, file: !396, line: 740, baseType: !849, size: 512)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !396, line: 365, size: 512, elements: !850)
!850 = !{!851, !852, !853}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !849, file: !396, line: 368, baseType: !819, size: 384)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !849, file: !396, line: 373, baseType: !472, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !849, file: !396, line: 374, baseType: !472, size: 64, offset: 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !796, file: !396, line: 741, baseType: !855, size: 576)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !396, line: 380, size: 576, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !855, file: !396, line: 383, baseType: !849, size: 512)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !855, file: !396, line: 389, baseType: !847, size: 64, offset: 512)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !796, file: !396, line: 742, baseType: !860, size: 320)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !396, line: 395, size: 320, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !860, file: !396, line: 397, baseType: !799, size: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !860, file: !396, line: 400, baseType: !784, size: 64, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !796, file: !396, line: 743, baseType: !865, size: 448)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !396, line: 406, size: 448, elements: !866)
!866 = !{!867, !868, !869, !870}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !865, file: !396, line: 408, baseType: !799, size: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !865, file: !396, line: 412, baseType: !472, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !865, file: !396, line: 420, baseType: !472, size: 64, offset: 320)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !865, file: !396, line: 423, baseType: !784, size: 64, offset: 384)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !796, file: !396, line: 744, baseType: !872, size: 384)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !396, line: 429, size: 384, elements: !873)
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !872, file: !396, line: 431, baseType: !799, size: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !872, file: !396, line: 434, baseType: !472, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !872, file: !396, line: 437, baseType: !784, size: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !796, file: !396, line: 745, baseType: !878, size: 384)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !396, line: 443, size: 384, elements: !879)
!879 = !{!880, !881, !882}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !878, file: !396, line: 445, baseType: !799, size: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !878, file: !396, line: 449, baseType: !472, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !878, file: !396, line: 453, baseType: !784, size: 64, offset: 320)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !796, file: !396, line: 746, baseType: !884, size: 320)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !396, line: 459, size: 320, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !884, file: !396, line: 461, baseType: !799, size: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !884, file: !396, line: 464, baseType: !472, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !796, file: !396, line: 747, baseType: !889, size: 768)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !396, line: 469, size: 768, elements: !890)
!890 = !{!891, !892, !893, !894, !895}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !889, file: !396, line: 471, baseType: !799, size: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !889, file: !396, line: 474, baseType: !5, size: 32, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !889, file: !396, line: 475, baseType: !5, size: 32, offset: 288)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !889, file: !396, line: 478, baseType: !472, size: 64, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !889, file: !396, line: 481, baseType: !896, size: 384, offset: 384)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 384, elements: !571)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !133, line: 1917, size: 384, elements: !898)
!898 = !{!899, !900, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !897, file: !133, line: 1920, baseType: !835, size: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !897, file: !133, line: 1921, baseType: !472, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !897, file: !133, line: 1922, baseType: !597, size: 32, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !796, file: !396, line: 748, baseType: !903, size: 320)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !396, line: 487, size: 320, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !903, file: !396, line: 490, baseType: !799, size: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !903, file: !396, line: 494, baseType: !463, size: 32, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !796, file: !396, line: 749, baseType: !908, size: 384)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !396, line: 500, size: 384, elements: !909)
!909 = !{!910, !911, !912}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !908, file: !396, line: 502, baseType: !799, size: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !908, file: !396, line: 506, baseType: !784, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !908, file: !396, line: 510, baseType: !784, size: 64, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !796, file: !396, line: 750, baseType: !914, size: 320)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !396, line: 529, size: 320, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !914, file: !396, line: 531, baseType: !799, size: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !914, file: !396, line: 540, baseType: !784, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !796, file: !396, line: 751, baseType: !919, size: 704)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !396, line: 546, size: 704, elements: !920)
!920 = !{!921, !922, !923, !924, !925, !926, !927}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !919, file: !396, line: 549, baseType: !849, size: 512)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !919, file: !396, line: 553, baseType: !468, size: 64, offset: 512)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !919, file: !396, line: 557, baseType: !462, size: 8, offset: 576)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !919, file: !396, line: 558, baseType: !462, size: 8, offset: 584)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !919, file: !396, line: 559, baseType: !462, size: 8, offset: 592)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !919, file: !396, line: 560, baseType: !462, size: 8, offset: 600)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !919, file: !396, line: 566, baseType: !847, size: 64, offset: 640)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !796, file: !396, line: 752, baseType: !929, size: 384)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !396, line: 571, size: 384, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !929, file: !396, line: 573, baseType: !860, size: 320)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !929, file: !396, line: 577, baseType: !472, size: 64, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !796, file: !396, line: 753, baseType: !934, size: 576)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !396, line: 600, size: 576, elements: !935)
!935 = !{!936, !937, !938, !941, !950}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !934, file: !396, line: 602, baseType: !860, size: 320)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !934, file: !396, line: 605, baseType: !472, size: 64, offset: 320)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !934, file: !396, line: 609, baseType: !939, size: 64, offset: 384)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !940, line: 46, baseType: !526)
!940 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!941 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !934, file: !396, line: 612, baseType: !942, size: 64, offset: 448)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !396, line: 581, size: 320, elements: !944)
!944 = !{!945, !946, !947, !948, !949}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !943, file: !396, line: 583, baseType: !132, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !943, file: !396, line: 586, baseType: !472, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !943, file: !396, line: 589, baseType: !472, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !943, file: !396, line: 592, baseType: !472, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !943, file: !396, line: 595, baseType: !472, size: 64, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !934, file: !396, line: 616, baseType: !784, size: 64, offset: 512)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !796, file: !396, line: 754, baseType: !952, size: 512)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !396, line: 622, size: 512, elements: !953)
!953 = !{!954, !955, !956, !957}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !952, file: !396, line: 624, baseType: !860, size: 320)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !952, file: !396, line: 628, baseType: !472, size: 64, offset: 320)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !952, file: !396, line: 632, baseType: !472, size: 64, offset: 384)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !952, file: !396, line: 636, baseType: !472, size: 64, offset: 448)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !796, file: !396, line: 755, baseType: !959, size: 704)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !396, line: 642, size: 704, elements: !960)
!960 = !{!961, !962, !963, !964}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !959, file: !396, line: 644, baseType: !952, size: 512)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !959, file: !396, line: 648, baseType: !472, size: 64, offset: 512)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !959, file: !396, line: 652, baseType: !472, size: 64, offset: 576)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !959, file: !396, line: 653, baseType: !472, size: 64, offset: 640)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !796, file: !396, line: 756, baseType: !966, size: 448)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !396, line: 663, size: 448, elements: !967)
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !966, file: !396, line: 665, baseType: !860, size: 320)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !966, file: !396, line: 668, baseType: !472, size: 64, offset: 320)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !966, file: !396, line: 673, baseType: !472, size: 64, offset: 384)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !796, file: !396, line: 757, baseType: !972, size: 384)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !396, line: 694, size: 384, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !972, file: !396, line: 696, baseType: !860, size: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !972, file: !396, line: 699, baseType: !472, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !796, file: !396, line: 758, baseType: !977, size: 384)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !396, line: 681, size: 384, elements: !978)
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !977, file: !396, line: 683, baseType: !799, size: 256)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !977, file: !396, line: 686, baseType: !472, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !977, file: !396, line: 689, baseType: !472, size: 64, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !796, file: !396, line: 759, baseType: !983, size: 384)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !396, line: 707, size: 384, elements: !984)
!984 = !{!985, !986, !987}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !983, file: !396, line: 709, baseType: !799, size: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !983, file: !396, line: 712, baseType: !472, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !983, file: !396, line: 712, baseType: !472, size: 64, offset: 320)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !796, file: !396, line: 760, baseType: !989, size: 320)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !396, line: 718, size: 320, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !989, file: !396, line: 720, baseType: !799, size: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !989, file: !396, line: 723, baseType: !472, size: 64, offset: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !791, file: !396, line: 138, baseType: !790, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !791, file: !396, line: 139, baseType: !790, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !786, file: !396, line: 146, baseType: !789, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !786, file: !396, line: 152, baseType: !784, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !781, file: !341, line: 130, baseType: !645, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !776, file: !341, line: 134, baseType: !467, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !776, file: !341, line: 137, baseType: !472, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !776, file: !341, line: 138, baseType: !597, size: 32, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !776, file: !341, line: 142, baseType: !5, size: 32, offset: 352)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !776, file: !341, line: 144, baseType: !463, size: 32, offset: 384)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !776, file: !341, line: 145, baseType: !463, size: 32, offset: 416)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !776, file: !341, line: 146, baseType: !1005, size: 64, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !341, line: 119, baseType: !528)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !759, file: !341, line: 220, baseType: !762, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !759, file: !341, line: 223, baseType: !467, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !759, file: !341, line: 226, baseType: !1009, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !328, line: 100, size: 1216, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1021, !1022, !1023, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1054, !1062, !1063}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1010, file: !328, line: 102, baseType: !463, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1010, file: !328, line: 105, baseType: !5, size: 32, offset: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1010, file: !328, line: 108, baseType: !758, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1010, file: !328, line: 111, baseType: !758, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1010, file: !328, line: 114, baseType: !1017, size: 64, offset: 192)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !328, line: 41, size: 64, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1017, file: !328, line: 42, baseType: !327, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1017, file: !328, line: 43, baseType: !5, size: 32, offset: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1010, file: !328, line: 117, baseType: !5, size: 32, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1010, file: !328, line: 120, baseType: !5, size: 32, offset: 288)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1010, file: !328, line: 123, baseType: !1024, size: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !328, line: 87, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !328, line: 87, size: 128, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1026, file: !328, line: 87, baseType: !1029, size: 128)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !328, line: 85, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !328, line: 85, size: 128, elements: !1031)
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1030, file: !328, line: 85, baseType: !5, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1030, file: !328, line: 85, baseType: !5, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1030, file: !328, line: 85, baseType: !1035, size: 64, offset: 64)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, size: 64, elements: !571)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !328, line: 84, baseType: !1009)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1010, file: !328, line: 126, baseType: !1009, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1010, file: !328, line: 129, baseType: !1009, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1010, file: !328, line: 132, baseType: !467, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1010, file: !328, line: 139, baseType: !472, size: 64, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1010, file: !328, line: 143, baseType: !521, size: 128, offset: 640)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1010, file: !328, line: 146, baseType: !521, size: 128, offset: 768)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1010, file: !328, line: 148, baseType: !462, size: 8, offset: 896)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1010, file: !328, line: 149, baseType: !462, size: 8, offset: 904)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1010, file: !328, line: 153, baseType: !336, size: 32, offset: 928)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1010, file: !328, line: 156, baseType: !1047, size: 64, offset: 960)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !328, line: 48, size: 320, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1048, file: !328, line: 50, baseType: !794, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1048, file: !328, line: 59, baseType: !521, size: 128, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1048, file: !328, line: 64, baseType: !462, size: 8, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1048, file: !328, line: 67, baseType: !1047, size: 64, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1010, file: !328, line: 159, baseType: !1055, size: 64, offset: 1024)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !328, line: 72, size: 256, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1061}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1056, file: !328, line: 74, baseType: !775, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1056, file: !328, line: 77, baseType: !1055, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1056, file: !328, line: 78, baseType: !1055, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1056, file: !328, line: 81, baseType: !1055, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1010, file: !328, line: 162, baseType: !462, size: 8, offset: 1088)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1010, file: !328, line: 166, baseType: !472, size: 64, offset: 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !759, file: !341, line: 229, baseType: !1065, size: 128, offset: 256)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 128, elements: !713)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !341, line: 229, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !759, file: !341, line: 232, baseType: !758, size: 64, offset: 384)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !759, file: !341, line: 233, baseType: !758, size: 64, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !759, file: !341, line: 238, baseType: !1071, size: 64, offset: 512)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !341, line: 235, size: 64, elements: !1072)
!1072 = !{!1073, !1079}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1071, file: !341, line: 236, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !341, line: 273, size: 128, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1075, file: !341, line: 275, baseType: !784, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1075, file: !341, line: 278, baseType: !784, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1071, file: !341, line: 237, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !341, line: 259, size: 320, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1081, file: !341, line: 261, baseType: !645, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1081, file: !341, line: 262, baseType: !645, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1081, file: !341, line: 266, baseType: !645, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1081, file: !341, line: 267, baseType: !645, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1081, file: !341, line: 270, baseType: !463, size: 32, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !759, file: !341, line: 241, baseType: !1005, size: 64, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !759, file: !341, line: 244, baseType: !463, size: 32, offset: 640)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !759, file: !341, line: 247, baseType: !463, size: 32, offset: 672)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !759, file: !341, line: 250, baseType: !463, size: 32, offset: 704)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !759, file: !341, line: 253, baseType: !463, size: 32, offset: 736)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !341, line: 256, baseType: !463, size: 32, offset: 768)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !666, file: !648, line: 179, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !648, line: 150, baseType: !1097)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !648, line: 142, size: 320, elements: !1098)
!1098 = !{!1099, !1100, !1101, !1102, !1105, !1106}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1097, file: !648, line: 144, baseType: !472, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1097, file: !648, line: 145, baseType: !645, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1097, file: !648, line: 146, baseType: !645, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1097, file: !648, line: 147, baseType: !1103, size: 32, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1104, line: 31, baseType: !463)
!1104 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1097, file: !648, line: 148, baseType: !5, size: 32, offset: 224)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1097, file: !648, line: 149, baseType: !462, size: 8, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !666, file: !648, line: 180, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !648, line: 162, baseType: !1110)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !648, line: 159, size: 128, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1110, file: !648, line: 160, baseType: !472, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1110, file: !648, line: 161, baseType: !528, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !666, file: !648, line: 181, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !648, line: 181, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !661, file: !648, line: 317, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 64, elements: !571)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !661, file: !648, line: 318, baseType: !1120, size: 320)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !648, line: 188, size: 320, elements: !1121)
!1121 = !{!1122, !1124, !1181}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1120, file: !648, line: 190, baseType: !1123, size: 192)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 192, elements: !546)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1120, file: !648, line: 193, baseType: !1125, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !648, line: 206, size: 320, elements: !1127)
!1127 = !{!1128, !1166, !1167, !1168, !1180}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1126, file: !648, line: 208, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !473, line: 62, baseType: !1131)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1132, line: 538, size: 256, elements: !1133)
!1132 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1133 = !{!1134, !1138, !1144, !1157}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1131, file: !1132, line: 539, baseType: !1135, size: 32)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1132, line: 482, size: 32, elements: !1136)
!1136 = !{!1137}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1135, file: !1132, line: 484, baseType: !5, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1131, file: !1132, line: 540, baseType: !1139, size: 192)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1132, line: 488, size: 192, elements: !1140)
!1140 = !{!1141, !1142, !1143}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1139, file: !1132, line: 489, baseType: !1135, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1139, file: !1132, line: 492, baseType: !468, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1139, file: !1132, line: 496, baseType: !472, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1131, file: !1132, line: 541, baseType: !1145, size: 256)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1132, line: 504, size: 256, elements: !1146)
!1146 = !{!1147, !1148, !1155, !1156}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1145, file: !1132, line: 505, baseType: !1135, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1145, file: !1132, line: 509, baseType: !1149, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1132, line: 501, baseType: !1150)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !1153}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1145, file: !1132, line: 510, baseType: !1153, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1145, file: !1132, line: 513, baseType: !1129, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1131, file: !1132, line: 542, baseType: !1158, size: 128)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1132, line: 530, size: 128, elements: !1159)
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1158, file: !1132, line: 531, baseType: !1135, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1158, file: !1132, line: 534, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1132, line: 525, baseType: !1163)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!462, !472, !468, !526, !526}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1126, file: !648, line: 211, baseType: !5, size: 32, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1126, file: !648, line: 214, baseType: !528, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1126, file: !648, line: 224, baseType: !1169, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !648, line: 202, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !648, line: 202, size: 128, elements: !1172)
!1172 = !{!1173}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1171, file: !648, line: 202, baseType: !1174, size: 128)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !648, line: 200, baseType: !1175)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !648, line: 200, size: 128, elements: !1176)
!1176 = !{!1177, !1178, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1175, file: !648, line: 200, baseType: !5, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1175, file: !648, line: 200, baseType: !5, size: 32, offset: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1175, file: !648, line: 200, baseType: !679, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1126, file: !648, line: 234, baseType: !1169, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1120, file: !648, line: 197, baseType: !528, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !661, file: !648, line: 319, baseType: !535, size: 256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !661, file: !648, line: 320, baseType: !554, size: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !475, file: !133, line: 3384, baseType: !1185, size: 1472)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !133, line: 3114, size: 1472, elements: !1186)
!1186 = !{!1187, !1208, !1209, !1210, !1211}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1185, file: !133, line: 3115, baseType: !1188, size: 1216)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !133, line: 2984, size: 1216, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1188, file: !133, line: 2985, baseType: !641, size: 960)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1188, file: !133, line: 2986, baseType: !472, size: 64, offset: 960)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1188, file: !133, line: 2987, baseType: !472, size: 64, offset: 1024)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1188, file: !133, line: 2988, baseType: !472, size: 64, offset: 1088)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1188, file: !133, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1188, file: !133, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1188, file: !133, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1188, file: !133, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1188, file: !133, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1188, file: !133, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1188, file: !133, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1188, file: !133, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1188, file: !133, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1188, file: !133, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1188, file: !133, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1188, file: !133, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1188, file: !133, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1188, file: !133, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1185, file: !133, line: 3117, baseType: !472, size: 64, offset: 1216)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1185, file: !133, line: 3119, baseType: !472, size: 64, offset: 1280)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1185, file: !133, line: 3121, baseType: !472, size: 64, offset: 1344)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1185, file: !133, line: 3123, baseType: !472, size: 64, offset: 1408)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !475, file: !133, line: 3385, baseType: !1213, size: 1088)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !133, line: 2874, size: 1088, elements: !1214)
!1214 = !{!1215, !1216, !1217}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1213, file: !133, line: 2875, baseType: !641, size: 960)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1213, file: !133, line: 2876, baseType: !645, size: 64, offset: 960)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1213, file: !133, line: 2877, baseType: !1218, size: 64, offset: 1024)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1220, line: 172, size: 128, elements: !1221)
!1220 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227, !1228}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1219, file: !1220, line: 174, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1219, file: !1220, line: 178, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1219, file: !1220, line: 183, baseType: !5, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1219, file: !1220, line: 187, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1219, file: !1220, line: 192, baseType: !5, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1219, file: !1220, line: 195, baseType: !5, size: 32, offset: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1219, file: !1220, line: 199, baseType: !472, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !475, file: !133, line: 3386, baseType: !1188, size: 1216)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !475, file: !133, line: 3387, baseType: !1231, size: 1280)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !133, line: 3093, size: 1280, elements: !1232)
!1232 = !{!1233, !1234}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1231, file: !133, line: 3094, baseType: !1188, size: 1216)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1231, file: !133, line: 3095, baseType: !1218, size: 64, offset: 1216)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !475, file: !133, line: 3388, baseType: !1236, size: 1216)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !133, line: 2824, size: 1216, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1236, file: !133, line: 2825, baseType: !603, size: 896)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1236, file: !133, line: 2827, baseType: !472, size: 64, offset: 896)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1236, file: !133, line: 2828, baseType: !472, size: 64, offset: 960)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1236, file: !133, line: 2829, baseType: !472, size: 64, offset: 1024)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1236, file: !133, line: 2830, baseType: !472, size: 64, offset: 1088)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1236, file: !133, line: 2831, baseType: !472, size: 64, offset: 1152)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !475, file: !133, line: 3389, baseType: !1245, size: 1024)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !133, line: 2850, size: 1024, elements: !1246)
!1246 = !{!1247, !1248, !1249}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1245, file: !133, line: 2851, baseType: !641, size: 960)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1245, file: !133, line: 2852, baseType: !463, size: 32, offset: 960)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1245, file: !133, line: 2853, baseType: !463, size: 32, offset: 992)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !475, file: !133, line: 3390, baseType: !1251, size: 1024)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !133, line: 2857, size: 1024, elements: !1252)
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1251, file: !133, line: 2858, baseType: !641, size: 960)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1251, file: !133, line: 2859, baseType: !1218, size: 64, offset: 960)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !475, file: !133, line: 3391, baseType: !1256, size: 960)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !133, line: 2862, size: 960, elements: !1257)
!1257 = !{!1258}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1256, file: !133, line: 2863, baseType: !641, size: 960)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !475, file: !133, line: 3392, baseType: !1260, size: 1472)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !133, line: 3304, size: 1472, elements: !1261)
!1261 = !{!1262}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1260, file: !133, line: 3305, baseType: !1185, size: 1472)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !475, file: !133, line: 3393, baseType: !1264, size: 1792)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !133, line: 3248, size: 1792, elements: !1265)
!1265 = !{!1266, !1267, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1264, file: !133, line: 3249, baseType: !1185, size: 1472)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1264, file: !133, line: 3251, baseType: !1268, size: 64, offset: 1472)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1270, line: 463, size: 1152, elements: !1271)
!1270 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1271 = !{!1272, !1275, !1306, !1307, !1420, !1428, !1429, !1430, !1431, !1432, !1433, !1457, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1269, file: !1270, line: 464, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1270, line: 464, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1269, file: !1270, line: 467, baseType: !1276, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !341, line: 374, size: 640, elements: !1278)
!1278 = !{!1279, !1281, !1282, !1295, !1296, !1297, !1298, !1299, !1300, !1302, !1304, !1305}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1277, file: !341, line: 377, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !473, line: 111, baseType: !758)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1277, file: !341, line: 378, baseType: !1280, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1277, file: !341, line: 381, baseType: !1283, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !341, line: 282, baseType: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !341, line: 282, size: 128, elements: !1286)
!1286 = !{!1287}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1285, file: !341, line: 282, baseType: !1288, size: 128)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !341, line: 281, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !341, line: 281, size: 128, elements: !1290)
!1290 = !{!1291, !1292, !1293}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1289, file: !341, line: 281, baseType: !5, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1289, file: !341, line: 281, baseType: !5, size: 32, offset: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1289, file: !341, line: 281, baseType: !1294, size: 64, offset: 64)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1280, size: 64, elements: !571)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1277, file: !341, line: 384, baseType: !463, size: 32, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1277, file: !341, line: 387, baseType: !463, size: 32, offset: 224)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1277, file: !341, line: 390, baseType: !463, size: 32, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1277, file: !341, line: 394, baseType: !1283, size: 64, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1277, file: !341, line: 396, baseType: !340, size: 32, offset: 384)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1277, file: !341, line: 399, baseType: !1301, size: 64, offset: 416)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 64, elements: !713)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1277, file: !341, line: 402, baseType: !1303, size: 64, offset: 480)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !713)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1277, file: !341, line: 406, baseType: !463, size: 32, offset: 544)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1277, file: !341, line: 409, baseType: !463, size: 32, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1269, file: !1270, line: 470, baseType: !785, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1269, file: !1270, line: 473, baseType: !1308, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1220, line: 39, size: 1152, elements: !1310)
!1310 = !{!1311, !1359, !1372, !1384, !1385, !1397, !1398, !1402, !1403, !1404, !1405, !1406}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1309, file: !1220, line: 41, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1313, line: 144, baseType: !1314)
!1313 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1313, line: 100, size: 896, elements: !1316)
!1316 = !{!1317, !1323, !1328, !1333, !1335, !1336, !1337, !1338, !1339, !1340, !1345, !1347, !1348, !1353, !1358}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1315, file: !1313, line: 102, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1313, line: 52, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!1322, !1153}
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1313, line: 47, baseType: !5)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1315, file: !1313, line: 105, baseType: !1324, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1313, line: 59, baseType: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!463, !1153, !1153}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1315, file: !1313, line: 108, baseType: !1329, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1313, line: 63, baseType: !1330)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{null, !467}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1315, file: !1313, line: 111, baseType: !1334, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1315, file: !1313, line: 114, baseType: !939, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1315, file: !1313, line: 117, baseType: !939, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1315, file: !1313, line: 120, baseType: !939, size: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1315, file: !1313, line: 124, baseType: !5, size: 32, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1315, file: !1313, line: 128, baseType: !5, size: 32, offset: 480)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1315, file: !1313, line: 131, baseType: !1341, size: 64, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1313, line: 75, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!467, !939, !939}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1315, file: !1313, line: 132, baseType: !1346, size: 64, offset: 576)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1313, line: 78, baseType: !1330)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1315, file: !1313, line: 135, baseType: !467, size: 64, offset: 640)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1315, file: !1313, line: 136, baseType: !1349, size: 64, offset: 704)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1313, line: 82, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!467, !467, !939, !939}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1315, file: !1313, line: 137, baseType: !1354, size: 64, offset: 768)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1313, line: 83, baseType: !1355)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null, !467, !467}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1315, file: !1313, line: 141, baseType: !5, size: 32, offset: 832)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1309, file: !1220, line: 48, baseType: !1360, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !396, line: 35, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !396, line: 35, size: 128, elements: !1363)
!1363 = !{!1364}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1362, file: !396, line: 35, baseType: !1365, size: 128)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !396, line: 33, baseType: !1366)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !396, line: 33, size: 128, elements: !1367)
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1366, file: !396, line: 33, baseType: !5, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1366, file: !396, line: 33, baseType: !5, size: 32, offset: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1366, file: !396, line: 33, baseType: !1371, size: 64, offset: 64)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 64, elements: !571)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1309, file: !1220, line: 51, baseType: !1373, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !133, line: 183, baseType: !1375)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !133, line: 183, size: 128, elements: !1376)
!1376 = !{!1377}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1375, file: !133, line: 183, baseType: !1378, size: 128)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !133, line: 182, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !133, line: 182, size: 128, elements: !1380)
!1380 = !{!1381, !1382, !1383}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1379, file: !133, line: 182, baseType: !5, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1379, file: !133, line: 182, baseType: !5, size: 32, offset: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1379, file: !133, line: 182, baseType: !847, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1309, file: !1220, line: 54, baseType: !472, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1309, file: !1220, line: 57, baseType: !1386, size: 128, offset: 256)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1387, line: 31, size: 128, elements: !1388)
!1387 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1386, file: !1387, line: 35, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1386, file: !1387, line: 39, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1386, file: !1387, line: 42, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1386, file: !1387, line: 46, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1386, file: !1387, line: 50, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1386, file: !1387, line: 53, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1386, file: !1387, line: 56, baseType: !1396, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !473, line: 47, baseType: !697)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1309, file: !1220, line: 60, baseType: !1386, size: 128, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1309, file: !1220, line: 64, baseType: !1399, size: 64, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1401, line: 33, flags: DIFlagFwdDecl)
!1401 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1309, file: !1220, line: 67, baseType: !472, size: 64, offset: 576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1309, file: !1220, line: 73, baseType: !1312, size: 64, offset: 640)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1309, file: !1220, line: 77, baseType: !1396, size: 64, offset: 704)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1309, file: !1220, line: 80, baseType: !5, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1309, file: !1220, line: 82, baseType: !1407, size: 320, offset: 832)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !389, line: 62, size: 320, elements: !1408)
!1408 = !{!1409, !1415, !1416, !1417, !1418, !1419}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1407, file: !389, line: 63, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !389, line: 56, size: 128, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1411, file: !389, line: 57, baseType: !1410, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1411, file: !389, line: 58, baseType: !570, size: 8, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1407, file: !389, line: 64, baseType: !5, size: 32, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1407, file: !389, line: 66, baseType: !5, size: 32, offset: 96)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1407, file: !389, line: 68, baseType: !462, size: 8, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1407, file: !389, line: 70, baseType: !823, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1407, file: !389, line: 71, baseType: !830, size: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1269, file: !1270, line: 476, baseType: !1421, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !328, line: 187, size: 256, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1427}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1422, file: !328, line: 189, baseType: !463, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1422, file: !328, line: 192, baseType: !1024, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1422, file: !328, line: 197, baseType: !1312, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1422, file: !328, line: 200, baseType: !1009, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1269, file: !1270, line: 479, baseType: !1312, size: 64, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1269, file: !1270, line: 484, baseType: !472, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1269, file: !1270, line: 488, baseType: !472, size: 64, offset: 448)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1269, file: !1270, line: 493, baseType: !472, size: 64, offset: 512)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1269, file: !1270, line: 496, baseType: !472, size: 64, offset: 576)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1269, file: !1270, line: 501, baseType: !1434, size: 64, offset: 640)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !352, line: 2355, size: 576, elements: !1436)
!1436 = !{!1437, !1440, !1441, !1442, !1443, !1445, !1446, !1451, !1452, !1453, !1454, !1455, !1456}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1435, file: !352, line: 2356, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !352, line: 2356, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1435, file: !352, line: 2357, baseType: !468, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1435, file: !352, line: 2358, baseType: !463, size: 32, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1435, file: !352, line: 2359, baseType: !463, size: 32, offset: 160)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1435, file: !352, line: 2360, baseType: !1444, size: 128, offset: 192)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 128, elements: !737)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1435, file: !352, line: 2364, baseType: !463, size: 32, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1435, file: !352, line: 2367, baseType: !1447, size: 128, offset: 384)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !352, line: 2349, size: 128, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1447, file: !352, line: 2351, baseType: !645, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1447, file: !352, line: 2352, baseType: !528, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1435, file: !352, line: 2371, baseType: !351, size: 32, offset: 512)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1435, file: !352, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1435, file: !352, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1435, file: !352, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1435, file: !352, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1435, file: !352, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1269, file: !1270, line: 504, baseType: !1458, size: 64, offset: 704)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1270, line: 504, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1269, file: !1270, line: 507, baseType: !1312, size: 64, offset: 768)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1269, file: !1270, line: 510, baseType: !463, size: 32, offset: 832)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1269, file: !1270, line: 513, baseType: !463, size: 32, offset: 864)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1269, file: !1270, line: 516, baseType: !597, size: 32, offset: 896)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1269, file: !1270, line: 519, baseType: !597, size: 32, offset: 928)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1269, file: !1270, line: 522, baseType: !5, size: 32, offset: 960)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1269, file: !1270, line: 523, baseType: !5, size: 32, offset: 992)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1269, file: !1270, line: 528, baseType: !468, size: 64, offset: 1024)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1269, file: !1270, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1269, file: !1270, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1269, file: !1270, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1269, file: !1270, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1269, file: !1270, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1269, file: !1270, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1269, file: !1270, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1269, file: !1270, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1269, file: !1270, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1269, file: !1270, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1269, file: !1270, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1269, file: !1270, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1269, file: !1270, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1269, file: !1270, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1269, file: !1270, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1269, file: !1270, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1264, file: !133, line: 3254, baseType: !472, size: 64, offset: 1536)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1264, file: !133, line: 3257, baseType: !472, size: 64, offset: 1600)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1264, file: !133, line: 3258, baseType: !472, size: 64, offset: 1664)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1264, file: !133, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1264, file: !133, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1264, file: !133, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1264, file: !133, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1264, file: !133, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1264, file: !133, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1264, file: !133, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1264, file: !133, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1264, file: !133, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1264, file: !133, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1264, file: !133, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1264, file: !133, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1264, file: !133, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1264, file: !133, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1264, file: !133, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1264, file: !133, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1264, file: !133, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1264, file: !133, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !475, file: !133, line: 3394, baseType: !1506, size: 1344)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !133, line: 2279, size: 1344, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1506, file: !133, line: 2280, baseType: !511, size: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1506, file: !133, line: 2281, baseType: !472, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1506, file: !133, line: 2282, baseType: !472, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1506, file: !133, line: 2283, baseType: !472, size: 64, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1506, file: !133, line: 2284, baseType: !472, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1506, file: !133, line: 2285, baseType: !5, size: 32, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1506, file: !133, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1506, file: !133, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1506, file: !133, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1506, file: !133, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1506, file: !133, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1506, file: !133, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1506, file: !133, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1506, file: !133, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1506, file: !133, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1506, file: !133, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1506, file: !133, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1506, file: !133, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1506, file: !133, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1506, file: !133, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1506, file: !133, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1506, file: !133, line: 2305, baseType: !5, size: 32, offset: 512)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1506, file: !133, line: 2306, baseType: !1103, size: 32, offset: 544)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1506, file: !133, line: 2307, baseType: !472, size: 64, offset: 576)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1506, file: !133, line: 2308, baseType: !472, size: 64, offset: 640)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1506, file: !133, line: 2314, baseType: !1534, size: 64, offset: 704)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !133, line: 2309, size: 64, elements: !1535)
!1535 = !{!1536, !1537, !1538}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1534, file: !133, line: 2310, baseType: !463, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1534, file: !133, line: 2311, baseType: !468, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1534, file: !133, line: 2312, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !133, line: 2277, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1506, file: !133, line: 2315, baseType: !472, size: 64, offset: 768)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1506, file: !133, line: 2316, baseType: !472, size: 64, offset: 832)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1506, file: !133, line: 2317, baseType: !472, size: 64, offset: 896)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1506, file: !133, line: 2318, baseType: !472, size: 64, offset: 960)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1506, file: !133, line: 2319, baseType: !472, size: 64, offset: 1024)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1506, file: !133, line: 2320, baseType: !472, size: 64, offset: 1088)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1506, file: !133, line: 2321, baseType: !472, size: 64, offset: 1152)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1506, file: !133, line: 2322, baseType: !472, size: 64, offset: 1216)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1506, file: !133, line: 2324, baseType: !1550, size: 64, offset: 1280)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !133, line: 2324, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !475, file: !133, line: 3395, baseType: !1553, size: 320)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !133, line: 1469, size: 320, elements: !1554)
!1554 = !{!1555, !1556, !1557}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1553, file: !133, line: 1470, baseType: !511, size: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1553, file: !133, line: 1471, baseType: !472, size: 64, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1553, file: !133, line: 1472, baseType: !472, size: 64, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !475, file: !133, line: 3396, baseType: !1559, size: 320)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !133, line: 1482, size: 320, elements: !1560)
!1560 = !{!1561, !1562, !1563}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1559, file: !133, line: 1483, baseType: !511, size: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1559, file: !133, line: 1484, baseType: !463, size: 32, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1559, file: !133, line: 1485, baseType: !847, size: 64, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !475, file: !133, line: 3397, baseType: !1565, size: 384)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !133, line: 1829, size: 384, elements: !1566)
!1566 = !{!1567, !1568, !1569, !1570}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1565, file: !133, line: 1830, baseType: !511, size: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1565, file: !133, line: 1831, baseType: !597, size: 32, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1565, file: !133, line: 1832, baseType: !472, size: 64, offset: 256)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1565, file: !133, line: 1835, baseType: !847, size: 64, offset: 320)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !475, file: !133, line: 3398, baseType: !1572, size: 704)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !133, line: 1898, size: 704, elements: !1573)
!1573 = !{!1574, !1575, !1576, !1577, !1578, !1583}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1572, file: !133, line: 1899, baseType: !511, size: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1572, file: !133, line: 1902, baseType: !472, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1572, file: !133, line: 1905, baseType: !794, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1572, file: !133, line: 1908, baseType: !5, size: 32, offset: 320)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1572, file: !133, line: 1911, baseType: !1579, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1220, line: 117, size: 128, elements: !1581)
!1581 = !{!1582}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1580, file: !1220, line: 120, baseType: !1386, size: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1572, file: !133, line: 1914, baseType: !835, size: 256, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !475, file: !133, line: 3399, baseType: !1585, size: 704)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !133, line: 2008, size: 704, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1585, file: !133, line: 2009, baseType: !511, size: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1585, file: !133, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1585, file: !133, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1585, file: !133, line: 2014, baseType: !597, size: 32, offset: 224)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1585, file: !133, line: 2016, baseType: !472, size: 64, offset: 256)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1585, file: !133, line: 2017, baseType: !1373, size: 64, offset: 320)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1585, file: !133, line: 2019, baseType: !472, size: 64, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1585, file: !133, line: 2020, baseType: !472, size: 64, offset: 448)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1585, file: !133, line: 2021, baseType: !472, size: 64, offset: 512)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1585, file: !133, line: 2022, baseType: !472, size: 64, offset: 576)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1585, file: !133, line: 2023, baseType: !472, size: 64, offset: 640)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !475, file: !133, line: 3400, baseType: !1599, size: 832)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !133, line: 2430, size: 832, elements: !1600)
!1600 = !{!1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1599, file: !133, line: 2431, baseType: !511, size: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1599, file: !133, line: 2433, baseType: !472, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1599, file: !133, line: 2434, baseType: !472, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1599, file: !133, line: 2435, baseType: !472, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1599, file: !133, line: 2436, baseType: !472, size: 64, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1599, file: !133, line: 2437, baseType: !1373, size: 64, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1599, file: !133, line: 2438, baseType: !472, size: 64, offset: 512)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1599, file: !133, line: 2440, baseType: !472, size: 64, offset: 576)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1599, file: !133, line: 2441, baseType: !472, size: 64, offset: 640)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1599, file: !133, line: 2443, baseType: !1611, size: 128, offset: 704)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !133, line: 182, baseType: !1612)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !133, line: 182, size: 128, elements: !1613)
!1613 = !{!1614}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1612, file: !133, line: 182, baseType: !1378, size: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !475, file: !133, line: 3401, baseType: !1616, size: 320)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !133, line: 3327, size: 320, elements: !1617)
!1617 = !{!1618, !1619, !1626}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1616, file: !133, line: 3329, baseType: !511, size: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1616, file: !133, line: 3330, baseType: !1620, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !133, line: 3320, size: 192, elements: !1622)
!1622 = !{!1623, !1624, !1625}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1621, file: !133, line: 3322, baseType: !1620, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1621, file: !133, line: 3323, baseType: !1620, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1621, file: !133, line: 3324, baseType: !472, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1616, file: !133, line: 3331, baseType: !1620, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !475, file: !133, line: 3402, baseType: !1628, size: 256)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !133, line: 1540, size: 256, elements: !1629)
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1628, file: !133, line: 1541, baseType: !511, size: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1628, file: !133, line: 1542, baseType: !1632, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !133, line: 1538, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !133, line: 1538, size: 192, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1634, file: !133, line: 1538, baseType: !1637, size: 192)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !133, line: 1537, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !133, line: 1537, size: 192, elements: !1639)
!1639 = !{!1640, !1641, !1642}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1638, file: !133, line: 1537, baseType: !5, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1638, file: !133, line: 1537, baseType: !5, size: 32, offset: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1638, file: !133, line: 1537, baseType: !1643, size: 128, offset: 64)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1644, size: 128, elements: !571)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !133, line: 1535, baseType: !1645)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !133, line: 1532, size: 128, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1645, file: !133, line: 1533, baseType: !472, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1645, file: !133, line: 1534, baseType: !472, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !475, file: !133, line: 3403, baseType: !1650, size: 512)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !133, line: 1938, size: 512, elements: !1651)
!1651 = !{!1652, !1653, !1654, !1655, !1661, !1662, !1663}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1650, file: !133, line: 1939, baseType: !511, size: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1650, file: !133, line: 1940, baseType: !597, size: 32, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1650, file: !133, line: 1941, baseType: !356, size: 32, offset: 224)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1650, file: !133, line: 1946, baseType: !1656, size: 32, offset: 256)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !133, line: 1942, size: 32, elements: !1657)
!1657 = !{!1658, !1659, !1660}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1656, file: !133, line: 1943, baseType: !374, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1656, file: !133, line: 1944, baseType: !381, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1656, file: !133, line: 1945, baseType: !132, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1650, file: !133, line: 1950, baseType: !784, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1650, file: !133, line: 1951, baseType: !784, size: 64, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1650, file: !133, line: 1953, baseType: !847, size: 64, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !475, file: !133, line: 3404, baseType: !1665, size: 1664)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !133, line: 3337, size: 1664, elements: !1666)
!1666 = !{!1667, !1668}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1665, file: !133, line: 3338, baseType: !511, size: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1665, file: !133, line: 3341, baseType: !1669, size: 1472, offset: 192)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1670, line: 410, size: 1472, elements: !1671)
!1670 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1669, file: !1670, line: 412, baseType: !463, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1669, file: !1670, line: 413, baseType: !463, size: 32, offset: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1669, file: !1670, line: 414, baseType: !463, size: 32, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1669, file: !1670, line: 415, baseType: !463, size: 32, offset: 96)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1669, file: !1670, line: 416, baseType: !463, size: 32, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1669, file: !1670, line: 417, baseType: !463, size: 32, offset: 160)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1669, file: !1670, line: 418, baseType: !462, size: 8, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1669, file: !1670, line: 419, baseType: !462, size: 8, offset: 200)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1669, file: !1670, line: 420, baseType: !1681, size: 8, offset: 208)
!1681 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1669, file: !1670, line: 421, baseType: !1681, size: 8, offset: 216)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1669, file: !1670, line: 422, baseType: !1681, size: 8, offset: 224)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1669, file: !1670, line: 423, baseType: !1681, size: 8, offset: 232)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1669, file: !1670, line: 424, baseType: !1681, size: 8, offset: 240)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1669, file: !1670, line: 425, baseType: !1681, size: 8, offset: 248)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1669, file: !1670, line: 426, baseType: !1681, size: 8, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1669, file: !1670, line: 427, baseType: !1681, size: 8, offset: 264)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1669, file: !1670, line: 428, baseType: !1681, size: 8, offset: 272)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1669, file: !1670, line: 429, baseType: !1681, size: 8, offset: 280)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1669, file: !1670, line: 430, baseType: !1681, size: 8, offset: 288)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1669, file: !1670, line: 431, baseType: !1681, size: 8, offset: 296)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1669, file: !1670, line: 432, baseType: !1681, size: 8, offset: 304)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1669, file: !1670, line: 433, baseType: !1681, size: 8, offset: 312)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1669, file: !1670, line: 434, baseType: !1681, size: 8, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1669, file: !1670, line: 435, baseType: !1681, size: 8, offset: 328)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1669, file: !1670, line: 436, baseType: !1681, size: 8, offset: 336)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1669, file: !1670, line: 437, baseType: !1681, size: 8, offset: 344)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1669, file: !1670, line: 438, baseType: !1681, size: 8, offset: 352)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1669, file: !1670, line: 439, baseType: !1681, size: 8, offset: 360)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1669, file: !1670, line: 440, baseType: !1681, size: 8, offset: 368)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1669, file: !1670, line: 441, baseType: !1681, size: 8, offset: 376)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1669, file: !1670, line: 442, baseType: !1681, size: 8, offset: 384)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1669, file: !1670, line: 443, baseType: !1681, size: 8, offset: 392)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1669, file: !1670, line: 444, baseType: !1681, size: 8, offset: 400)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1669, file: !1670, line: 445, baseType: !1681, size: 8, offset: 408)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1669, file: !1670, line: 446, baseType: !1681, size: 8, offset: 416)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1669, file: !1670, line: 447, baseType: !1681, size: 8, offset: 424)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1669, file: !1670, line: 448, baseType: !1681, size: 8, offset: 432)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1669, file: !1670, line: 449, baseType: !1681, size: 8, offset: 440)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1669, file: !1670, line: 450, baseType: !1681, size: 8, offset: 448)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1669, file: !1670, line: 451, baseType: !1681, size: 8, offset: 456)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1669, file: !1670, line: 452, baseType: !1681, size: 8, offset: 464)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1669, file: !1670, line: 453, baseType: !1681, size: 8, offset: 472)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1669, file: !1670, line: 454, baseType: !1681, size: 8, offset: 480)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1669, file: !1670, line: 455, baseType: !1681, size: 8, offset: 488)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1669, file: !1670, line: 456, baseType: !1681, size: 8, offset: 496)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1669, file: !1670, line: 457, baseType: !1681, size: 8, offset: 504)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1669, file: !1670, line: 458, baseType: !1681, size: 8, offset: 512)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1669, file: !1670, line: 459, baseType: !1681, size: 8, offset: 520)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1669, file: !1670, line: 460, baseType: !1681, size: 8, offset: 528)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1669, file: !1670, line: 461, baseType: !1681, size: 8, offset: 536)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1669, file: !1670, line: 462, baseType: !1681, size: 8, offset: 544)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1669, file: !1670, line: 463, baseType: !1681, size: 8, offset: 552)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1669, file: !1670, line: 464, baseType: !1681, size: 8, offset: 560)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1669, file: !1670, line: 465, baseType: !1681, size: 8, offset: 568)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1669, file: !1670, line: 466, baseType: !1681, size: 8, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1669, file: !1670, line: 467, baseType: !1681, size: 8, offset: 584)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1669, file: !1670, line: 468, baseType: !1681, size: 8, offset: 592)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1669, file: !1670, line: 469, baseType: !1681, size: 8, offset: 600)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1669, file: !1670, line: 470, baseType: !1681, size: 8, offset: 608)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1669, file: !1670, line: 471, baseType: !1681, size: 8, offset: 616)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1669, file: !1670, line: 472, baseType: !1681, size: 8, offset: 624)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1669, file: !1670, line: 473, baseType: !1681, size: 8, offset: 632)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1669, file: !1670, line: 474, baseType: !1681, size: 8, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1669, file: !1670, line: 475, baseType: !1681, size: 8, offset: 648)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1669, file: !1670, line: 476, baseType: !1681, size: 8, offset: 656)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1669, file: !1670, line: 477, baseType: !1681, size: 8, offset: 664)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1669, file: !1670, line: 478, baseType: !1681, size: 8, offset: 672)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1669, file: !1670, line: 479, baseType: !1681, size: 8, offset: 680)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1669, file: !1670, line: 480, baseType: !1681, size: 8, offset: 688)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1669, file: !1670, line: 481, baseType: !1681, size: 8, offset: 696)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1669, file: !1670, line: 482, baseType: !1681, size: 8, offset: 704)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1669, file: !1670, line: 483, baseType: !1681, size: 8, offset: 712)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1669, file: !1670, line: 484, baseType: !1681, size: 8, offset: 720)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1669, file: !1670, line: 485, baseType: !1681, size: 8, offset: 728)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1669, file: !1670, line: 486, baseType: !1681, size: 8, offset: 736)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1669, file: !1670, line: 487, baseType: !1681, size: 8, offset: 744)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1669, file: !1670, line: 488, baseType: !1681, size: 8, offset: 752)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1669, file: !1670, line: 489, baseType: !1681, size: 8, offset: 760)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1669, file: !1670, line: 490, baseType: !1681, size: 8, offset: 768)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1669, file: !1670, line: 491, baseType: !1681, size: 8, offset: 776)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1669, file: !1670, line: 492, baseType: !1681, size: 8, offset: 784)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1669, file: !1670, line: 493, baseType: !1681, size: 8, offset: 792)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1669, file: !1670, line: 494, baseType: !1681, size: 8, offset: 800)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1669, file: !1670, line: 495, baseType: !1681, size: 8, offset: 808)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1669, file: !1670, line: 496, baseType: !1681, size: 8, offset: 816)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1669, file: !1670, line: 497, baseType: !1681, size: 8, offset: 824)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1669, file: !1670, line: 498, baseType: !1681, size: 8, offset: 832)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1669, file: !1670, line: 499, baseType: !1681, size: 8, offset: 840)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1669, file: !1670, line: 500, baseType: !1681, size: 8, offset: 848)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1669, file: !1670, line: 501, baseType: !1681, size: 8, offset: 856)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1669, file: !1670, line: 502, baseType: !1681, size: 8, offset: 864)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1669, file: !1670, line: 503, baseType: !1681, size: 8, offset: 872)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1669, file: !1670, line: 504, baseType: !1681, size: 8, offset: 880)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1669, file: !1670, line: 505, baseType: !1681, size: 8, offset: 888)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1669, file: !1670, line: 506, baseType: !1681, size: 8, offset: 896)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1669, file: !1670, line: 507, baseType: !1681, size: 8, offset: 904)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1669, file: !1670, line: 508, baseType: !1681, size: 8, offset: 912)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1669, file: !1670, line: 509, baseType: !1681, size: 8, offset: 920)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1669, file: !1670, line: 510, baseType: !1681, size: 8, offset: 928)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1669, file: !1670, line: 511, baseType: !1681, size: 8, offset: 936)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1669, file: !1670, line: 512, baseType: !1681, size: 8, offset: 944)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1669, file: !1670, line: 513, baseType: !1681, size: 8, offset: 952)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1669, file: !1670, line: 514, baseType: !1681, size: 8, offset: 960)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1669, file: !1670, line: 515, baseType: !1681, size: 8, offset: 968)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1669, file: !1670, line: 516, baseType: !1681, size: 8, offset: 976)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1669, file: !1670, line: 517, baseType: !1681, size: 8, offset: 984)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1669, file: !1670, line: 518, baseType: !1681, size: 8, offset: 992)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1669, file: !1670, line: 519, baseType: !1681, size: 8, offset: 1000)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1669, file: !1670, line: 520, baseType: !1681, size: 8, offset: 1008)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1669, file: !1670, line: 521, baseType: !1681, size: 8, offset: 1016)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1669, file: !1670, line: 522, baseType: !1681, size: 8, offset: 1024)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1669, file: !1670, line: 523, baseType: !1681, size: 8, offset: 1032)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1669, file: !1670, line: 524, baseType: !1681, size: 8, offset: 1040)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1669, file: !1670, line: 525, baseType: !1681, size: 8, offset: 1048)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1669, file: !1670, line: 526, baseType: !1681, size: 8, offset: 1056)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1669, file: !1670, line: 527, baseType: !1681, size: 8, offset: 1064)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1669, file: !1670, line: 528, baseType: !1681, size: 8, offset: 1072)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1669, file: !1670, line: 529, baseType: !1681, size: 8, offset: 1080)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1669, file: !1670, line: 530, baseType: !1681, size: 8, offset: 1088)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1669, file: !1670, line: 531, baseType: !1681, size: 8, offset: 1096)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1669, file: !1670, line: 532, baseType: !1681, size: 8, offset: 1104)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1669, file: !1670, line: 533, baseType: !1681, size: 8, offset: 1112)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1669, file: !1670, line: 534, baseType: !1681, size: 8, offset: 1120)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1669, file: !1670, line: 535, baseType: !1681, size: 8, offset: 1128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1669, file: !1670, line: 536, baseType: !1681, size: 8, offset: 1136)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1669, file: !1670, line: 537, baseType: !1681, size: 8, offset: 1144)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1669, file: !1670, line: 538, baseType: !1681, size: 8, offset: 1152)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1669, file: !1670, line: 539, baseType: !1681, size: 8, offset: 1160)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1669, file: !1670, line: 540, baseType: !1681, size: 8, offset: 1168)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1669, file: !1670, line: 541, baseType: !1681, size: 8, offset: 1176)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1669, file: !1670, line: 542, baseType: !1681, size: 8, offset: 1184)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1669, file: !1670, line: 543, baseType: !1681, size: 8, offset: 1192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1669, file: !1670, line: 544, baseType: !1681, size: 8, offset: 1200)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1669, file: !1670, line: 545, baseType: !1681, size: 8, offset: 1208)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1669, file: !1670, line: 546, baseType: !1681, size: 8, offset: 1216)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1669, file: !1670, line: 547, baseType: !1681, size: 8, offset: 1224)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1669, file: !1670, line: 548, baseType: !1681, size: 8, offset: 1232)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1669, file: !1670, line: 549, baseType: !1681, size: 8, offset: 1240)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1669, file: !1670, line: 550, baseType: !1681, size: 8, offset: 1248)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1669, file: !1670, line: 551, baseType: !1681, size: 8, offset: 1256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1669, file: !1670, line: 552, baseType: !1681, size: 8, offset: 1264)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1669, file: !1670, line: 553, baseType: !1681, size: 8, offset: 1272)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1669, file: !1670, line: 554, baseType: !1681, size: 8, offset: 1280)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1669, file: !1670, line: 555, baseType: !1681, size: 8, offset: 1288)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1669, file: !1670, line: 556, baseType: !1681, size: 8, offset: 1296)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1669, file: !1670, line: 557, baseType: !1681, size: 8, offset: 1304)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1669, file: !1670, line: 558, baseType: !1681, size: 8, offset: 1312)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1669, file: !1670, line: 559, baseType: !1681, size: 8, offset: 1320)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1669, file: !1670, line: 560, baseType: !1681, size: 8, offset: 1328)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1669, file: !1670, line: 561, baseType: !1681, size: 8, offset: 1336)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1669, file: !1670, line: 562, baseType: !1681, size: 8, offset: 1344)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1669, file: !1670, line: 563, baseType: !1681, size: 8, offset: 1352)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1669, file: !1670, line: 564, baseType: !1681, size: 8, offset: 1360)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1669, file: !1670, line: 565, baseType: !1681, size: 8, offset: 1368)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1669, file: !1670, line: 566, baseType: !1681, size: 8, offset: 1376)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1669, file: !1670, line: 567, baseType: !1681, size: 8, offset: 1384)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1669, file: !1670, line: 568, baseType: !1681, size: 8, offset: 1392)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1669, file: !1670, line: 569, baseType: !1681, size: 8, offset: 1400)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1669, file: !1670, line: 570, baseType: !1681, size: 8, offset: 1408)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1669, file: !1670, line: 571, baseType: !1681, size: 8, offset: 1416)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1669, file: !1670, line: 572, baseType: !1681, size: 8, offset: 1424)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1669, file: !1670, line: 573, baseType: !1681, size: 8, offset: 1432)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1669, file: !1670, line: 574, baseType: !1681, size: 8, offset: 1440)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !475, file: !133, line: 3405, baseType: !1837, size: 384)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !133, line: 3352, size: 384, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1837, file: !133, line: 3353, baseType: !511, size: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1837, file: !133, line: 3356, baseType: !1841, size: 192, offset: 192)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1670, line: 578, size: 192, elements: !1842)
!1842 = !{!1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1841, file: !1670, line: 580, baseType: !463, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1841, file: !1670, line: 581, baseType: !463, size: 32, offset: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1841, file: !1670, line: 582, baseType: !463, size: 32, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1841, file: !1670, line: 583, baseType: !463, size: 32, offset: 96)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1841, file: !1670, line: 584, baseType: !462, size: 8, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1841, file: !1670, line: 585, baseType: !462, size: 8, offset: 136)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1841, file: !1670, line: 586, baseType: !462, size: 8, offset: 144)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1841, file: !1670, line: 587, baseType: !462, size: 8, offset: 152)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1841, file: !1670, line: 588, baseType: !462, size: 8, offset: 160)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1841, file: !1670, line: 589, baseType: !462, size: 8, offset: 168)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1841, file: !1670, line: 590, baseType: !462, size: 8, offset: 176)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1855 = !{i32 2, !"Dwarf Version", i32 4}
!1856 = !{i32 2, !"Debug Info Version", i32 3}
!1857 = !{i32 1, !"wchar_size", i32 4}
!1858 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1859 = distinct !DISubprogram(name: "vprintf", scope: !1860, file: !1860, line: 39, type: !1861, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1871)
!1860 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!463, !1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !468)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1866)
!1866 = !{!1867, !1868, !1869, !1870}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1865, file: !1, baseType: !5, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1865, file: !1, baseType: !5, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1865, file: !1, baseType: !467, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1865, file: !1, baseType: !467, size: 64, offset: 128)
!1871 = !{!1872, !1873}
!1872 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1859, file: !1860, line: 39, type: !1863)
!1873 = !DILocalVariable(name: "__arg", arg: 2, scope: !1859, file: !1860, line: 39, type: !1864)
!1874 = !DILocation(line: 0, scope: !1859)
!1875 = !DILocation(line: 41, column: 20, scope: !1859)
!1876 = !DILocation(line: 41, column: 10, scope: !1859)
!1877 = !DILocation(line: 41, column: 3, scope: !1859)
!1878 = distinct !DISubprogram(name: "getchar", scope: !1860, file: !1860, line: 47, type: !1879, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1881)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!463}
!1881 = !{}
!1882 = !DILocation(line: 49, column: 16, scope: !1878)
!1883 = !DILocation(line: 49, column: 10, scope: !1878)
!1884 = !DILocation(line: 49, column: 3, scope: !1878)
!1885 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1860, file: !1860, line: 56, type: !1886, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1939)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!463, !1888}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1890, line: 7, baseType: !1891)
!1890 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1892, line: 49, size: 1728, elements: !1893)
!1892 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1909, !1911, !1912, !1913, !1916, !1918, !1919, !1920, !1923, !1925, !1928, !1931, !1932, !1933, !1934, !1935}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1891, file: !1892, line: 51, baseType: !463, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1891, file: !1892, line: 54, baseType: !465, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1891, file: !1892, line: 55, baseType: !465, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1891, file: !1892, line: 56, baseType: !465, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1891, file: !1892, line: 57, baseType: !465, size: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1891, file: !1892, line: 58, baseType: !465, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1891, file: !1892, line: 59, baseType: !465, size: 64, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1891, file: !1892, line: 60, baseType: !465, size: 64, offset: 448)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1891, file: !1892, line: 61, baseType: !465, size: 64, offset: 512)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1891, file: !1892, line: 64, baseType: !465, size: 64, offset: 576)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1891, file: !1892, line: 65, baseType: !465, size: 64, offset: 640)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1891, file: !1892, line: 66, baseType: !465, size: 64, offset: 704)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1891, file: !1892, line: 68, baseType: !1907, size: 64, offset: 768)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1892, line: 36, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1891, file: !1892, line: 70, baseType: !1910, size: 64, offset: 832)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1891, file: !1892, line: 72, baseType: !463, size: 32, offset: 896)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1891, file: !1892, line: 73, baseType: !463, size: 32, offset: 928)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1891, file: !1892, line: 74, baseType: !1914, size: 64, offset: 960)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1915, line: 152, baseType: !528)
!1915 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1891, file: !1892, line: 77, baseType: !1917, size: 16, offset: 1024)
!1917 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1891, file: !1892, line: 78, baseType: !1681, size: 8, offset: 1040)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1891, file: !1892, line: 79, baseType: !570, size: 8, offset: 1048)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1891, file: !1892, line: 81, baseType: !1921, size: 64, offset: 1088)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1892, line: 43, baseType: null)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1891, file: !1892, line: 89, baseType: !1924, size: 64, offset: 1152)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1915, line: 153, baseType: !528)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1891, file: !1892, line: 91, baseType: !1926, size: 64, offset: 1216)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1892, line: 37, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1891, file: !1892, line: 92, baseType: !1929, size: 64, offset: 1280)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1892, line: 38, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1891, file: !1892, line: 93, baseType: !1910, size: 64, offset: 1344)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1891, file: !1892, line: 94, baseType: !467, size: 64, offset: 1408)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1891, file: !1892, line: 95, baseType: !939, size: 64, offset: 1472)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1891, file: !1892, line: 96, baseType: !463, size: 32, offset: 1536)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1891, file: !1892, line: 98, baseType: !1936, size: 160, offset: 1568)
!1936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 160, elements: !1937)
!1937 = !{!1938}
!1938 = !DISubrange(count: 20)
!1939 = !{!1940}
!1940 = !DILocalVariable(name: "__fp", arg: 1, scope: !1885, file: !1860, line: 56, type: !1888)
!1941 = !DILocation(line: 0, scope: !1885)
!1942 = !DILocation(line: 58, column: 10, scope: !1885)
!1943 = !DILocation(line: 58, column: 3, scope: !1885)
!1944 = distinct !DISubprogram(name: "getc_unlocked", scope: !1860, file: !1860, line: 66, type: !1886, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1945)
!1945 = !{!1946}
!1946 = !DILocalVariable(name: "__fp", arg: 1, scope: !1944, file: !1860, line: 66, type: !1888)
!1947 = !DILocation(line: 0, scope: !1944)
!1948 = !DILocation(line: 68, column: 10, scope: !1944)
!1949 = !DILocation(line: 68, column: 3, scope: !1944)
!1950 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1860, file: !1860, line: 73, type: !1879, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1881)
!1951 = !DILocation(line: 75, column: 10, scope: !1950)
!1952 = !DILocation(line: 75, column: 3, scope: !1950)
!1953 = distinct !DISubprogram(name: "putchar", scope: !1860, file: !1860, line: 82, type: !1954, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1956)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!463, !463}
!1956 = !{!1957}
!1957 = !DILocalVariable(name: "__c", arg: 1, scope: !1953, file: !1860, line: 82, type: !463)
!1958 = !DILocation(line: 0, scope: !1953)
!1959 = !DILocation(line: 84, column: 21, scope: !1953)
!1960 = !DILocation(line: 84, column: 10, scope: !1953)
!1961 = !DILocation(line: 84, column: 3, scope: !1953)
!1962 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1860, file: !1860, line: 91, type: !1963, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!463, !463, !1888}
!1965 = !{!1966, !1967}
!1966 = !DILocalVariable(name: "__c", arg: 1, scope: !1962, file: !1860, line: 91, type: !463)
!1967 = !DILocalVariable(name: "__stream", arg: 2, scope: !1962, file: !1860, line: 91, type: !1888)
!1968 = !DILocation(line: 0, scope: !1962)
!1969 = !DILocation(line: 93, column: 10, scope: !1962)
!1970 = !DILocation(line: 93, column: 3, scope: !1962)
!1971 = distinct !DISubprogram(name: "putc_unlocked", scope: !1860, file: !1860, line: 101, type: !1963, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1972)
!1972 = !{!1973, !1974}
!1973 = !DILocalVariable(name: "__c", arg: 1, scope: !1971, file: !1860, line: 101, type: !463)
!1974 = !DILocalVariable(name: "__stream", arg: 2, scope: !1971, file: !1860, line: 101, type: !1888)
!1975 = !DILocation(line: 0, scope: !1971)
!1976 = !DILocation(line: 103, column: 10, scope: !1971)
!1977 = !DILocation(line: 103, column: 3, scope: !1971)
!1978 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1860, file: !1860, line: 108, type: !1954, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1979)
!1979 = !{!1980}
!1980 = !DILocalVariable(name: "__c", arg: 1, scope: !1978, file: !1860, line: 108, type: !463)
!1981 = !DILocation(line: 0, scope: !1978)
!1982 = !DILocation(line: 110, column: 10, scope: !1978)
!1983 = !DILocation(line: 110, column: 3, scope: !1978)
!1984 = distinct !DISubprogram(name: "getline", scope: !1860, file: !1860, line: 118, type: !1985, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1989)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!1987, !464, !1988, !1888}
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1915, line: 193, baseType: !528)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!1989 = !{!1990, !1991, !1992}
!1990 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1984, file: !1860, line: 118, type: !464)
!1991 = !DILocalVariable(name: "__n", arg: 2, scope: !1984, file: !1860, line: 118, type: !1988)
!1992 = !DILocalVariable(name: "__stream", arg: 3, scope: !1984, file: !1860, line: 118, type: !1888)
!1993 = !DILocation(line: 0, scope: !1984)
!1994 = !DILocation(line: 120, column: 10, scope: !1984)
!1995 = !DILocation(line: 120, column: 3, scope: !1984)
!1996 = distinct !DISubprogram(name: "feof_unlocked", scope: !1860, file: !1860, line: 128, type: !1886, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1997)
!1997 = !{!1998}
!1998 = !DILocalVariable(name: "__stream", arg: 1, scope: !1996, file: !1860, line: 128, type: !1888)
!1999 = !DILocation(line: 0, scope: !1996)
!2000 = !DILocation(line: 130, column: 10, scope: !1996)
!2001 = !DILocation(line: 130, column: 3, scope: !1996)
!2002 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1860, file: !1860, line: 135, type: !1886, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2003)
!2003 = !{!2004}
!2004 = !DILocalVariable(name: "__stream", arg: 1, scope: !2002, file: !1860, line: 135, type: !1888)
!2005 = !DILocation(line: 0, scope: !2002)
!2006 = !DILocation(line: 137, column: 10, scope: !2002)
!2007 = !DILocation(line: 137, column: 3, scope: !2002)
!2008 = distinct !DISubprogram(name: "tolower", scope: !2009, file: !2009, line: 207, type: !1954, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2010)
!2009 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2010 = !{!2011}
!2011 = !DILocalVariable(name: "__c", arg: 1, scope: !2008, file: !2009, line: 207, type: !463)
!2012 = !DILocation(line: 0, scope: !2008)
!2013 = !DILocation(line: 209, column: 22, scope: !2008)
!2014 = !DILocation(line: 209, column: 39, scope: !2008)
!2015 = !DILocation(line: 209, column: 38, scope: !2008)
!2016 = !DILocation(line: 209, column: 37, scope: !2008)
!2017 = !DILocation(line: 209, column: 10, scope: !2008)
!2018 = !DILocation(line: 209, column: 3, scope: !2008)
!2019 = distinct !DISubprogram(name: "toupper", scope: !2009, file: !2009, line: 213, type: !1954, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2020)
!2020 = !{!2021}
!2021 = !DILocalVariable(name: "__c", arg: 1, scope: !2019, file: !2009, line: 213, type: !463)
!2022 = !DILocation(line: 0, scope: !2019)
!2023 = !DILocation(line: 215, column: 22, scope: !2019)
!2024 = !DILocation(line: 215, column: 39, scope: !2019)
!2025 = !DILocation(line: 215, column: 38, scope: !2019)
!2026 = !DILocation(line: 215, column: 37, scope: !2019)
!2027 = !DILocation(line: 215, column: 10, scope: !2019)
!2028 = !DILocation(line: 215, column: 3, scope: !2019)
!2029 = distinct !DISubprogram(name: "atoi", scope: !2030, file: !2030, line: 361, type: !2031, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2033)
!2030 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!463, !468}
!2033 = !{!2034}
!2034 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2029, file: !2030, line: 361, type: !468)
!2035 = !DILocation(line: 0, scope: !2029)
!2036 = !DILocation(line: 363, column: 16, scope: !2029)
!2037 = !DILocation(line: 363, column: 10, scope: !2029)
!2038 = !DILocation(line: 363, column: 3, scope: !2029)
!2039 = distinct !DISubprogram(name: "atol", scope: !2030, file: !2030, line: 366, type: !2040, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!528, !468}
!2042 = !{!2043}
!2043 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2039, file: !2030, line: 366, type: !468)
!2044 = !DILocation(line: 0, scope: !2039)
!2045 = !DILocation(line: 368, column: 10, scope: !2039)
!2046 = !DILocation(line: 368, column: 3, scope: !2039)
!2047 = distinct !DISubprogram(name: "atoll", scope: !2030, file: !2030, line: 373, type: !2048, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2051)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!2050, !468}
!2050 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2051 = !{!2052}
!2052 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2047, file: !2030, line: 373, type: !468)
!2053 = !DILocation(line: 0, scope: !2047)
!2054 = !DILocation(line: 375, column: 10, scope: !2047)
!2055 = !DILocation(line: 375, column: 3, scope: !2047)
!2056 = distinct !DISubprogram(name: "bsearch", scope: !2057, file: !2057, line: 20, type: !2058, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2061)
!2057 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!467, !1153, !1153, !939, !939, !2060}
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2030, line: 808, baseType: !1325)
!2061 = !{!2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071}
!2062 = !DILocalVariable(name: "__key", arg: 1, scope: !2056, file: !2057, line: 20, type: !1153)
!2063 = !DILocalVariable(name: "__base", arg: 2, scope: !2056, file: !2057, line: 20, type: !1153)
!2064 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2056, file: !2057, line: 20, type: !939)
!2065 = !DILocalVariable(name: "__size", arg: 4, scope: !2056, file: !2057, line: 20, type: !939)
!2066 = !DILocalVariable(name: "__compar", arg: 5, scope: !2056, file: !2057, line: 21, type: !2060)
!2067 = !DILocalVariable(name: "__l", scope: !2056, file: !2057, line: 23, type: !939)
!2068 = !DILocalVariable(name: "__u", scope: !2056, file: !2057, line: 23, type: !939)
!2069 = !DILocalVariable(name: "__idx", scope: !2056, file: !2057, line: 23, type: !939)
!2070 = !DILocalVariable(name: "__p", scope: !2056, file: !2057, line: 24, type: !1153)
!2071 = !DILocalVariable(name: "__comparison", scope: !2056, file: !2057, line: 25, type: !463)
!2072 = !DILocation(line: 0, scope: !2056)
!2073 = !DILocation(line: 29, column: 3, scope: !2056)
!2074 = !DILocation(line: 27, column: 7, scope: !2056)
!2075 = !DILocation(line: 29, column: 14, scope: !2056)
!2076 = !DILocation(line: 31, column: 20, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2056, file: !2057, line: 30, column: 5)
!2078 = !DILocation(line: 31, column: 27, scope: !2077)
!2079 = !DILocation(line: 32, column: 56, scope: !2077)
!2080 = !DILocation(line: 32, column: 47, scope: !2077)
!2081 = !DILocation(line: 33, column: 22, scope: !2077)
!2082 = !DILocation(line: 34, column: 24, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2077, file: !2057, line: 34, column: 11)
!2084 = !DILocation(line: 34, column: 11, scope: !2077)
!2085 = !DILocation(line: 36, column: 29, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2083, file: !2057, line: 36, column: 16)
!2087 = !DILocation(line: 36, column: 16, scope: !2083)
!2088 = !DILocation(line: 37, column: 14, scope: !2086)
!2089 = distinct !{!2089, !2073, !2090}
!2090 = !DILocation(line: 40, column: 5, scope: !2056)
!2091 = !DILocation(line: 43, column: 1, scope: !2056)
!2092 = distinct !DISubprogram(name: "atof", scope: !2093, file: !2093, line: 25, type: !2094, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2097)
!2093 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!2096, !468}
!2096 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2097 = !{!2098}
!2098 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2092, file: !2093, line: 25, type: !468)
!2099 = !DILocation(line: 0, scope: !2092)
!2100 = !DILocation(line: 27, column: 10, scope: !2092)
!2101 = !DILocation(line: 27, column: 3, scope: !2092)
!2102 = distinct !DISubprogram(name: "strtoimax", scope: !2103, file: !2103, line: 324, type: !2104, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2110)
!2103 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!2106, !1863, !2109, !463}
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2107, line: 101, baseType: !2108)
!2107 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1915, line: 72, baseType: !528)
!2109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !464)
!2110 = !{!2111, !2112, !2113}
!2111 = !DILocalVariable(name: "nptr", arg: 1, scope: !2102, file: !2103, line: 324, type: !1863)
!2112 = !DILocalVariable(name: "endptr", arg: 2, scope: !2102, file: !2103, line: 324, type: !2109)
!2113 = !DILocalVariable(name: "base", arg: 3, scope: !2102, file: !2103, line: 324, type: !463)
!2114 = !DILocation(line: 0, scope: !2102)
!2115 = !DILocation(line: 327, column: 10, scope: !2102)
!2116 = !DILocation(line: 327, column: 3, scope: !2102)
!2117 = distinct !DISubprogram(name: "strtoumax", scope: !2103, file: !2103, line: 336, type: !2118, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2122)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!2120, !1863, !2109, !463}
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2107, line: 102, baseType: !2121)
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1915, line: 73, baseType: !526)
!2122 = !{!2123, !2124, !2125}
!2123 = !DILocalVariable(name: "nptr", arg: 1, scope: !2117, file: !2103, line: 336, type: !1863)
!2124 = !DILocalVariable(name: "endptr", arg: 2, scope: !2117, file: !2103, line: 336, type: !2109)
!2125 = !DILocalVariable(name: "base", arg: 3, scope: !2117, file: !2103, line: 336, type: !463)
!2126 = !DILocation(line: 0, scope: !2117)
!2127 = !DILocation(line: 339, column: 10, scope: !2117)
!2128 = !DILocation(line: 339, column: 3, scope: !2117)
!2129 = distinct !DISubprogram(name: "wcstoimax", scope: !2103, file: !2103, line: 348, type: !2130, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2139)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!2106, !2132, !2136, !463}
!2132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2133)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2135)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2103, line: 34, baseType: !463)
!2136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2137)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2139 = !{!2140, !2141, !2142}
!2140 = !DILocalVariable(name: "nptr", arg: 1, scope: !2129, file: !2103, line: 348, type: !2132)
!2141 = !DILocalVariable(name: "endptr", arg: 2, scope: !2129, file: !2103, line: 348, type: !2136)
!2142 = !DILocalVariable(name: "base", arg: 3, scope: !2129, file: !2103, line: 348, type: !463)
!2143 = !DILocation(line: 0, scope: !2129)
!2144 = !DILocation(line: 351, column: 10, scope: !2129)
!2145 = !DILocation(line: 351, column: 3, scope: !2129)
!2146 = distinct !DISubprogram(name: "wcstoumax", scope: !2103, file: !2103, line: 362, type: !2147, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!2120, !2132, !2136, !463}
!2149 = !{!2150, !2151, !2152}
!2150 = !DILocalVariable(name: "nptr", arg: 1, scope: !2146, file: !2103, line: 362, type: !2132)
!2151 = !DILocalVariable(name: "endptr", arg: 2, scope: !2146, file: !2103, line: 362, type: !2136)
!2152 = !DILocalVariable(name: "base", arg: 3, scope: !2146, file: !2103, line: 362, type: !463)
!2153 = !DILocation(line: 0, scope: !2146)
!2154 = !DILocation(line: 365, column: 10, scope: !2146)
!2155 = !DILocation(line: 365, column: 3, scope: !2146)
!2156 = distinct !DISubprogram(name: "stat", scope: !2157, file: !2157, line: 453, type: !2158, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2195)
!2157 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!463, !468, !2160}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2162, line: 46, size: 1152, elements: !2163)
!2162 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2163 = !{!2164, !2166, !2168, !2170, !2172, !2174, !2176, !2177, !2178, !2179, !2181, !2183, !2191, !2192, !2193}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2161, file: !2162, line: 48, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1915, line: 145, baseType: !526)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2161, file: !2162, line: 53, baseType: !2167, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1915, line: 148, baseType: !526)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2161, file: !2162, line: 61, baseType: !2169, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1915, line: 151, baseType: !526)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2161, file: !2162, line: 62, baseType: !2171, size: 32, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1915, line: 150, baseType: !5)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2161, file: !2162, line: 64, baseType: !2173, size: 32, offset: 224)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1915, line: 146, baseType: !5)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2161, file: !2162, line: 65, baseType: !2175, size: 32, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1915, line: 147, baseType: !5)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2161, file: !2162, line: 67, baseType: !463, size: 32, offset: 288)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2161, file: !2162, line: 69, baseType: !2165, size: 64, offset: 320)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2161, file: !2162, line: 74, baseType: !1914, size: 64, offset: 384)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2161, file: !2162, line: 78, baseType: !2180, size: 64, offset: 448)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1915, line: 174, baseType: !528)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2161, file: !2162, line: 80, baseType: !2182, size: 64, offset: 512)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1915, line: 179, baseType: !528)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2161, file: !2162, line: 91, baseType: !2184, size: 128, offset: 576)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2185, line: 10, size: 128, elements: !2186)
!2185 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2186 = !{!2187, !2189}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2184, file: !2185, line: 12, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1915, line: 160, baseType: !528)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2184, file: !2185, line: 16, baseType: !2190, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1915, line: 196, baseType: !528)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2161, file: !2162, line: 92, baseType: !2184, size: 128, offset: 704)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2161, file: !2162, line: 93, baseType: !2184, size: 128, offset: 832)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2161, file: !2162, line: 106, baseType: !2194, size: 192, offset: 960)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2190, size: 192, elements: !546)
!2195 = !{!2196, !2197}
!2196 = !DILocalVariable(name: "__path", arg: 1, scope: !2156, file: !2157, line: 453, type: !468)
!2197 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2156, file: !2157, line: 453, type: !2160)
!2198 = !DILocation(line: 0, scope: !2156)
!2199 = !DILocation(line: 455, column: 10, scope: !2156)
!2200 = !DILocation(line: 455, column: 3, scope: !2156)
!2201 = distinct !DISubprogram(name: "lstat", scope: !2157, file: !2157, line: 460, type: !2158, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2202)
!2202 = !{!2203, !2204}
!2203 = !DILocalVariable(name: "__path", arg: 1, scope: !2201, file: !2157, line: 460, type: !468)
!2204 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2201, file: !2157, line: 460, type: !2160)
!2205 = !DILocation(line: 0, scope: !2201)
!2206 = !DILocation(line: 462, column: 10, scope: !2201)
!2207 = !DILocation(line: 462, column: 3, scope: !2201)
!2208 = distinct !DISubprogram(name: "fstat", scope: !2157, file: !2157, line: 467, type: !2209, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!463, !463, !2160}
!2211 = !{!2212, !2213}
!2212 = !DILocalVariable(name: "__fd", arg: 1, scope: !2208, file: !2157, line: 467, type: !463)
!2213 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2208, file: !2157, line: 467, type: !2160)
!2214 = !DILocation(line: 0, scope: !2208)
!2215 = !DILocation(line: 469, column: 10, scope: !2208)
!2216 = !DILocation(line: 469, column: 3, scope: !2208)
!2217 = distinct !DISubprogram(name: "fstatat", scope: !2157, file: !2157, line: 474, type: !2218, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!463, !463, !468, !2160, !463}
!2220 = !{!2221, !2222, !2223, !2224}
!2221 = !DILocalVariable(name: "__fd", arg: 1, scope: !2217, file: !2157, line: 474, type: !463)
!2222 = !DILocalVariable(name: "__filename", arg: 2, scope: !2217, file: !2157, line: 474, type: !468)
!2223 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2217, file: !2157, line: 474, type: !2160)
!2224 = !DILocalVariable(name: "__flag", arg: 4, scope: !2217, file: !2157, line: 474, type: !463)
!2225 = !DILocation(line: 0, scope: !2217)
!2226 = !DILocation(line: 477, column: 10, scope: !2217)
!2227 = !DILocation(line: 477, column: 3, scope: !2217)
!2228 = distinct !DISubprogram(name: "mknod", scope: !2157, file: !2157, line: 483, type: !2229, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2231)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!463, !468, !2171, !2165}
!2231 = !{!2232, !2233, !2234}
!2232 = !DILocalVariable(name: "__path", arg: 1, scope: !2228, file: !2157, line: 483, type: !468)
!2233 = !DILocalVariable(name: "__mode", arg: 2, scope: !2228, file: !2157, line: 483, type: !2171)
!2234 = !DILocalVariable(name: "__dev", arg: 3, scope: !2228, file: !2157, line: 483, type: !2165)
!2235 = !DILocation(line: 0, scope: !2228)
!2236 = !DILocation(line: 485, column: 10, scope: !2228)
!2237 = !DILocation(line: 485, column: 3, scope: !2228)
!2238 = distinct !DISubprogram(name: "mknodat", scope: !2157, file: !2157, line: 491, type: !2239, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!463, !463, !468, !2171, !2165}
!2241 = !{!2242, !2243, !2244, !2245}
!2242 = !DILocalVariable(name: "__fd", arg: 1, scope: !2238, file: !2157, line: 491, type: !463)
!2243 = !DILocalVariable(name: "__path", arg: 2, scope: !2238, file: !2157, line: 491, type: !468)
!2244 = !DILocalVariable(name: "__mode", arg: 3, scope: !2238, file: !2157, line: 491, type: !2171)
!2245 = !DILocalVariable(name: "__dev", arg: 4, scope: !2238, file: !2157, line: 491, type: !2165)
!2246 = !DILocation(line: 0, scope: !2238)
!2247 = !DILocation(line: 494, column: 10, scope: !2238)
!2248 = !DILocation(line: 494, column: 3, scope: !2238)
!2249 = distinct !DISubprogram(name: "stat64", scope: !2157, file: !2157, line: 502, type: !2250, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2272)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!463, !468, !2252}
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2162, line: 119, size: 1152, elements: !2254)
!2254 = !{!2255, !2256, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2268, !2269, !2270, !2271}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2253, file: !2162, line: 121, baseType: !2165, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2253, file: !2162, line: 123, baseType: !2257, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1915, line: 149, baseType: !526)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2253, file: !2162, line: 124, baseType: !2169, size: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2253, file: !2162, line: 125, baseType: !2171, size: 32, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2253, file: !2162, line: 132, baseType: !2173, size: 32, offset: 224)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2253, file: !2162, line: 133, baseType: !2175, size: 32, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2253, file: !2162, line: 135, baseType: !463, size: 32, offset: 288)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2253, file: !2162, line: 136, baseType: !2165, size: 64, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2253, file: !2162, line: 137, baseType: !1914, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2253, file: !2162, line: 143, baseType: !2180, size: 64, offset: 448)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2253, file: !2162, line: 144, baseType: !2267, size: 64, offset: 512)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1915, line: 180, baseType: !528)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2253, file: !2162, line: 152, baseType: !2184, size: 128, offset: 576)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2253, file: !2162, line: 153, baseType: !2184, size: 128, offset: 704)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2253, file: !2162, line: 154, baseType: !2184, size: 128, offset: 832)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2253, file: !2162, line: 164, baseType: !2194, size: 192, offset: 960)
!2272 = !{!2273, !2274}
!2273 = !DILocalVariable(name: "__path", arg: 1, scope: !2249, file: !2157, line: 502, type: !468)
!2274 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2249, file: !2157, line: 502, type: !2252)
!2275 = !DILocation(line: 0, scope: !2249)
!2276 = !DILocation(line: 504, column: 10, scope: !2249)
!2277 = !DILocation(line: 504, column: 3, scope: !2249)
!2278 = distinct !DISubprogram(name: "lstat64", scope: !2157, file: !2157, line: 509, type: !2250, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2279)
!2279 = !{!2280, !2281}
!2280 = !DILocalVariable(name: "__path", arg: 1, scope: !2278, file: !2157, line: 509, type: !468)
!2281 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2278, file: !2157, line: 509, type: !2252)
!2282 = !DILocation(line: 0, scope: !2278)
!2283 = !DILocation(line: 511, column: 10, scope: !2278)
!2284 = !DILocation(line: 511, column: 3, scope: !2278)
!2285 = distinct !DISubprogram(name: "fstat64", scope: !2157, file: !2157, line: 516, type: !2286, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2288)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!463, !463, !2252}
!2288 = !{!2289, !2290}
!2289 = !DILocalVariable(name: "__fd", arg: 1, scope: !2285, file: !2157, line: 516, type: !463)
!2290 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2285, file: !2157, line: 516, type: !2252)
!2291 = !DILocation(line: 0, scope: !2285)
!2292 = !DILocation(line: 518, column: 10, scope: !2285)
!2293 = !DILocation(line: 518, column: 3, scope: !2285)
!2294 = distinct !DISubprogram(name: "fstatat64", scope: !2157, file: !2157, line: 523, type: !2295, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2297)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!463, !463, !468, !2252, !463}
!2297 = !{!2298, !2299, !2300, !2301}
!2298 = !DILocalVariable(name: "__fd", arg: 1, scope: !2294, file: !2157, line: 523, type: !463)
!2299 = !DILocalVariable(name: "__filename", arg: 2, scope: !2294, file: !2157, line: 523, type: !468)
!2300 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2294, file: !2157, line: 523, type: !2252)
!2301 = !DILocalVariable(name: "__flag", arg: 4, scope: !2294, file: !2157, line: 523, type: !463)
!2302 = !DILocation(line: 0, scope: !2294)
!2303 = !DILocation(line: 526, column: 10, scope: !2294)
!2304 = !DILocation(line: 526, column: 3, scope: !2294)
!2305 = distinct !DISubprogram(name: "create_iv", scope: !1, file: !1, line: 53, type: !2306, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2315)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !472, !472, !472, !1009, !2308, !462, !828, !828}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !396, line: 265, baseType: !2310)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 254, size: 192, elements: !2311)
!2311 = !{!2312, !2313, !2314}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2310, file: !396, line: 257, baseType: !789, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2310, file: !396, line: 263, baseType: !784, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2310, file: !396, line: 264, baseType: !1280, size: 64, offset: 128)
!2315 = !{!2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332}
!2316 = !DILocalVariable(name: "base", arg: 1, scope: !2305, file: !1, line: 53, type: !472)
!2317 = !DILocalVariable(name: "step", arg: 2, scope: !2305, file: !1, line: 53, type: !472)
!2318 = !DILocalVariable(name: "var", arg: 3, scope: !2305, file: !1, line: 53, type: !472)
!2319 = !DILocalVariable(name: "loop", arg: 4, scope: !2305, file: !1, line: 53, type: !1009)
!2320 = !DILocalVariable(name: "incr_pos", arg: 5, scope: !2305, file: !1, line: 54, type: !2308)
!2321 = !DILocalVariable(name: "after", arg: 6, scope: !2305, file: !1, line: 54, type: !462)
!2322 = !DILocalVariable(name: "var_before", arg: 7, scope: !2305, file: !1, line: 55, type: !828)
!2323 = !DILocalVariable(name: "var_after", arg: 8, scope: !2305, file: !1, line: 55, type: !828)
!2324 = !DILocalVariable(name: "stmt", scope: !2305, file: !1, line: 57, type: !794)
!2325 = !DILocalVariable(name: "initial", scope: !2305, file: !1, line: 58, type: !472)
!2326 = !DILocalVariable(name: "step1", scope: !2305, file: !1, line: 58, type: !472)
!2327 = !DILocalVariable(name: "stmts", scope: !2305, file: !1, line: 59, type: !784)
!2328 = !DILocalVariable(name: "vb", scope: !2305, file: !1, line: 60, type: !472)
!2329 = !DILocalVariable(name: "va", scope: !2305, file: !1, line: 60, type: !472)
!2330 = !DILocalVariable(name: "incr_op", scope: !2305, file: !1, line: 61, type: !132)
!2331 = !DILocalVariable(name: "pe", scope: !2305, file: !1, line: 62, type: !774)
!2332 = !DILocalVariable(name: "ovf", scope: !2333, file: !1, line: 92, type: !462)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !1, line: 91, column: 2)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !1, line: 81, column: 11)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !1, line: 80, column: 5)
!2336 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 79, column: 7)
!2337 = !DILocation(line: 0, scope: !2305)
!2338 = !DILocation(line: 59, column: 3, scope: !2305)
!2339 = !DILocation(line: 62, column: 13, scope: !2305)
!2340 = !DILocation(line: 64, column: 8, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 64, column: 7)
!2342 = !DILocation(line: 64, column: 7, scope: !2305)
!2343 = !DILocation(line: 66, column: 29, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2341, file: !1, line: 65, column: 5)
!2345 = !DILocation(line: 66, column: 13, scope: !2344)
!2346 = !DILocation(line: 67, column: 7, scope: !2344)
!2347 = !DILocation(line: 68, column: 5, scope: !2344)
!2348 = !DILocation(line: 70, column: 8, scope: !2305)
!2349 = !DILocation(line: 71, column: 7, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 71, column: 7)
!2351 = !DILocation(line: 71, column: 7, scope: !2305)
!2352 = !DILocation(line: 72, column: 17, scope: !2350)
!2353 = !DILocation(line: 72, column: 5, scope: !2350)
!2354 = !DILocation(line: 73, column: 8, scope: !2305)
!2355 = !DILocation(line: 74, column: 7, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 74, column: 7)
!2357 = !DILocation(line: 74, column: 7, scope: !2305)
!2358 = !DILocation(line: 75, column: 16, scope: !2356)
!2359 = !DILocation(line: 75, column: 5, scope: !2356)
!2360 = !DILocation(line: 79, column: 7, scope: !2336)
!2361 = !DILocation(line: 79, column: 24, scope: !2336)
!2362 = !DILocation(line: 79, column: 7, scope: !2305)
!2363 = !DILocation(line: 81, column: 11, scope: !2334)
!2364 = !DILocation(line: 81, column: 11, scope: !2335)
!2365 = !DILocation(line: 83, column: 12, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2334, file: !1, line: 82, column: 2)
!2367 = !DILocation(line: 84, column: 8, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2366, file: !1, line: 84, column: 8)
!2369 = !DILocation(line: 84, column: 8, scope: !2366)
!2370 = !DILocation(line: 89, column: 2, scope: !2366)
!2371 = !DILocation(line: 0, scope: !2333)
!2372 = !DILocation(line: 92, column: 4, scope: !2333)
!2373 = !DILocation(line: 94, column: 9, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2333, file: !1, line: 94, column: 8)
!2375 = !DILocation(line: 95, column: 8, scope: !2374)
!2376 = !DILocation(line: 95, column: 11, scope: !2374)
!2377 = !DILocation(line: 94, column: 8, scope: !2333)
!2378 = !DILocation(line: 98, column: 15, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2374, file: !1, line: 96, column: 6)
!2380 = !DILocation(line: 99, column: 6, scope: !2379)
!2381 = !DILocation(line: 100, column: 2, scope: !2334)
!2382 = !DILocation(line: 102, column: 7, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 102, column: 7)
!2384 = !DILocation(line: 102, column: 7, scope: !2305)
!2385 = !DILocation(line: 104, column: 11, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !1, line: 104, column: 11)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !1, line: 103, column: 5)
!2388 = !DILocation(line: 104, column: 28, scope: !2386)
!2389 = !DILocation(line: 104, column: 11, scope: !2387)
!2390 = !DILocation(line: 105, column: 20, scope: !2386)
!2391 = !DILocation(line: 105, column: 2, scope: !2386)
!2392 = !DILocation(line: 106, column: 14, scope: !2387)
!2393 = !DILocation(line: 107, column: 19, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2387, file: !1, line: 107, column: 11)
!2395 = !DILocation(line: 107, column: 11, scope: !2387)
!2396 = !DILocation(line: 108, column: 9, scope: !2394)
!2397 = !DILocation(line: 108, column: 2, scope: !2394)
!2398 = !DILocation(line: 113, column: 10, scope: !2305)
!2399 = !DILocation(line: 114, column: 7, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 114, column: 7)
!2401 = !DILocation(line: 114, column: 7, scope: !2305)
!2402 = !DILocation(line: 115, column: 5, scope: !2400)
!2403 = !DILocation(line: 117, column: 10, scope: !2305)
!2404 = !DILocation(line: 118, column: 7, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 118, column: 7)
!2406 = !DILocation(line: 118, column: 7, scope: !2305)
!2407 = !DILocation(line: 119, column: 5, scope: !2405)
!2408 = !DILocation(line: 121, column: 5, scope: !2405)
!2409 = !DILocation(line: 123, column: 13, scope: !2305)
!2410 = !DILocation(line: 124, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 124, column: 7)
!2412 = !DILocation(line: 124, column: 7, scope: !2305)
!2413 = !DILocation(line: 125, column: 5, scope: !2411)
!2414 = !DILocation(line: 127, column: 37, scope: !2305)
!2415 = !DILocation(line: 127, column: 10, scope: !2305)
!2416 = !DILocation(line: 128, column: 3, scope: !2305)
!2417 = !DILocation(line: 128, column: 26, scope: !2305)
!2418 = !DILocation(line: 129, column: 31, scope: !2305)
!2419 = !DILocation(line: 129, column: 3, scope: !2305)
!2420 = !DILocation(line: 130, column: 26, scope: !2305)
!2421 = !DILocation(line: 130, column: 3, scope: !2305)
!2422 = !DILocation(line: 131, column: 1, scope: !2305)
!2423 = distinct !DISubprogram(name: "make_ssa_name", scope: !2424, file: !2424, line: 1245, type: !2425, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2427)
!2424 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!472, !472, !794}
!2427 = !{!2428, !2429}
!2428 = !DILocalVariable(name: "var", arg: 1, scope: !2423, file: !2424, line: 1245, type: !472)
!2429 = !DILocalVariable(name: "stmt", arg: 2, scope: !2423, file: !2424, line: 1245, type: !794)
!2430 = !DILocation(line: 0, scope: !2423)
!2431 = !DILocation(line: 1247, column: 28, scope: !2423)
!2432 = !DILocation(line: 1247, column: 10, scope: !2423)
!2433 = !DILocation(line: 1247, column: 3, scope: !2423)
!2434 = distinct !DISubprogram(name: "rewrite_into_loop_closed_ssa", scope: !1, file: !1, line: 372, type: !2435, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{null, !1396, !5}
!2437 = !{!2438, !2439, !2440, !2441, !2442, !2443, !2444}
!2438 = !DILocalVariable(name: "changed_bbs", arg: 1, scope: !2434, file: !1, line: 372, type: !1396)
!2439 = !DILocalVariable(name: "update_flag", arg: 2, scope: !2434, file: !1, line: 372, type: !5)
!2440 = !DILocalVariable(name: "loop_exits", scope: !2434, file: !1, line: 374, type: !1396)
!2441 = !DILocalVariable(name: "use_blocks", scope: !2434, file: !1, line: 375, type: !1854)
!2442 = !DILocalVariable(name: "i", scope: !2434, file: !1, line: 376, type: !5)
!2443 = !DILocalVariable(name: "old_num_ssa_names", scope: !2434, file: !1, line: 376, type: !5)
!2444 = !DILocalVariable(name: "names_to_rename", scope: !2434, file: !1, line: 377, type: !1396)
!2445 = !DILocation(line: 0, scope: !2434)
!2446 = !DILocation(line: 379, column: 3, scope: !2434)
!2447 = !DILocation(line: 380, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2434, file: !1, line: 380, column: 7)
!2449 = !DILocation(line: 380, column: 26, scope: !2448)
!2450 = !DILocation(line: 380, column: 7, scope: !2434)
!2451 = !DILocation(line: 383, column: 16, scope: !2434)
!2452 = !DILocation(line: 384, column: 21, scope: !2434)
!2453 = !DILocation(line: 388, column: 3, scope: !2434)
!2454 = !DILocation(line: 390, column: 23, scope: !2434)
!2455 = !DILocation(line: 391, column: 16, scope: !2434)
!2456 = !DILocation(line: 394, column: 3, scope: !2434)
!2457 = !DILocation(line: 398, column: 3, scope: !2434)
!2458 = !DILocation(line: 400, column: 17, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !1, line: 400, column: 3)
!2460 = distinct !DILexicalBlock(scope: !2434, file: !1, line: 400, column: 3)
!2461 = !DILocation(line: 400, column: 8, scope: !2460)
!2462 = !DILocation(line: 0, scope: !2460)
!2463 = !DILocation(line: 400, column: 3, scope: !2460)
!2464 = !DILocation(line: 401, column: 5, scope: !2459)
!2465 = !DILocation(line: 400, column: 39, scope: !2459)
!2466 = !DILocation(line: 400, column: 3, scope: !2459)
!2467 = distinct !{!2467, !2463, !2468}
!2468 = !DILocation(line: 401, column: 5, scope: !2460)
!2469 = !DILocation(line: 402, column: 3, scope: !2434)
!2470 = !DILocation(line: 403, column: 3, scope: !2434)
!2471 = !DILocation(line: 404, column: 3, scope: !2434)
!2472 = !DILocation(line: 408, column: 3, scope: !2434)
!2473 = !DILocation(line: 409, column: 1, scope: !2434)
!2474 = distinct !DISubprogram(name: "loops_state_set", scope: !328, file: !328, line: 479, type: !2475, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !5}
!2477 = !{!2478}
!2478 = !DILocalVariable(name: "flags", arg: 1, scope: !2474, file: !328, line: 479, type: !5)
!2479 = !DILocation(line: 0, scope: !2474)
!2480 = !DILocation(line: 481, column: 3, scope: !2474)
!2481 = !DILocation(line: 481, column: 18, scope: !2474)
!2482 = !DILocation(line: 481, column: 24, scope: !2474)
!2483 = !DILocation(line: 482, column: 1, scope: !2474)
!2484 = distinct !DISubprogram(name: "number_of_loops", scope: !328, file: !328, line: 459, type: !2485, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1881)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!5}
!2487 = !DILocation(line: 461, column: 8, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !328, line: 461, column: 7)
!2489 = !DILocation(line: 461, column: 7, scope: !2484)
!2490 = !DILocation(line: 464, column: 10, scope: !2484)
!2491 = !DILocation(line: 464, column: 3, scope: !2484)
!2492 = !DILocation(line: 0, scope: !2484)
!2493 = !DILocation(line: 465, column: 1, scope: !2484)
!2494 = distinct !DISubprogram(name: "get_loops_exits", scope: !1, file: !1, line: 209, type: !2495, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!1396}
!2497 = !{!2498, !2499, !2500, !2501}
!2498 = !DILocalVariable(name: "exits", scope: !2494, file: !1, line: 211, type: !1396)
!2499 = !DILocalVariable(name: "bb", scope: !2494, file: !1, line: 212, type: !1280)
!2500 = !DILocalVariable(name: "e", scope: !2494, file: !1, line: 213, type: !774)
!2501 = !DILocalVariable(name: "ei", scope: !2494, file: !1, line: 214, type: !2502)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !341, line: 682, baseType: !2503)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 679, size: 128, elements: !2504)
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2503, file: !341, line: 680, baseType: !5, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2503, file: !341, line: 681, baseType: !2507, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!2508 = !DILocation(line: 211, column: 18, scope: !2494)
!2509 = !DILocation(line: 0, scope: !2494)
!2510 = !DILocation(line: 213, column: 3, scope: !2494)
!2511 = !DILocation(line: 214, column: 3, scope: !2494)
!2512 = !DILocation(line: 216, column: 3, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2494, file: !1, line: 216, column: 3)
!2514 = !DILocation(line: 0, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !1, line: 218, column: 7)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !1, line: 217, column: 5)
!2517 = distinct !DILexicalBlock(scope: !2513, file: !1, line: 216, column: 3)
!2518 = !DILocation(line: 0, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !1, line: 218, column: 7)
!2520 = !DILocation(line: 216, column: 3, scope: !2517)
!2521 = !DILocation(line: 0, scope: !2513)
!2522 = !DILocation(line: 218, column: 7, scope: !2515)
!2523 = !DILocation(line: 218, column: 7, scope: !2519)
!2524 = !DILocation(line: 219, column: 6, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 219, column: 6)
!2526 = !DILocation(line: 219, column: 9, scope: !2525)
!2527 = !DILocation(line: 219, column: 16, scope: !2525)
!2528 = !DILocation(line: 219, column: 13, scope: !2525)
!2529 = !DILocation(line: 220, column: 6, scope: !2525)
!2530 = !DILocation(line: 220, column: 41, scope: !2525)
!2531 = !DILocation(line: 220, column: 10, scope: !2525)
!2532 = !DILocation(line: 219, column: 6, scope: !2519)
!2533 = !DILocation(line: 222, column: 33, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2525, file: !1, line: 221, column: 4)
!2535 = !DILocation(line: 222, column: 6, scope: !2534)
!2536 = !DILocation(line: 223, column: 6, scope: !2534)
!2537 = distinct !{!2537, !2522, !2538}
!2538 = !DILocation(line: 224, column: 4, scope: !2515)
!2539 = !DILocation(line: 0, scope: !2517)
!2540 = distinct !{!2540, !2512, !2541}
!2541 = !DILocation(line: 225, column: 5, scope: !2513)
!2542 = !DILocation(line: 228, column: 1, scope: !2494)
!2543 = !DILocation(line: 227, column: 3, scope: !2494)
!2544 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !133, file: !133, line: 182, type: !2545, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2549)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!5, !2547}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!2549 = !{!2550}
!2550 = !DILocalVariable(name: "vec_", arg: 1, scope: !2544, file: !133, line: 182, type: !2547)
!2551 = !DILocation(line: 0, scope: !2544)
!2552 = !DILocation(line: 182, column: 1, scope: !2544)
!2553 = distinct !DISubprogram(name: "find_uses_to_rename", scope: !1, file: !1, line: 317, type: !2554, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2556)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{null, !1396, !1854, !1396}
!2556 = !{!2557, !2558, !2559, !2560, !2561, !2562}
!2557 = !DILocalVariable(name: "changed_bbs", arg: 1, scope: !2553, file: !1, line: 317, type: !1396)
!2558 = !DILocalVariable(name: "use_blocks", arg: 2, scope: !2553, file: !1, line: 317, type: !1854)
!2559 = !DILocalVariable(name: "need_phis", arg: 3, scope: !2553, file: !1, line: 317, type: !1396)
!2560 = !DILocalVariable(name: "bb", scope: !2553, file: !1, line: 319, type: !1280)
!2561 = !DILocalVariable(name: "index", scope: !2553, file: !1, line: 320, type: !5)
!2562 = !DILocalVariable(name: "bi", scope: !2553, file: !1, line: 321, type: !2563)
!2563 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !699, line: 218, baseType: !2564)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !699, line: 203, size: 256, elements: !2565)
!2565 = !{!2566, !2567, !2568, !2569}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2564, file: !699, line: 206, baseType: !702, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2564, file: !699, line: 209, baseType: !702, size: 64, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2564, file: !699, line: 212, baseType: !5, size: 32, offset: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2564, file: !699, line: 217, baseType: !712, size: 64, offset: 192)
!2570 = !DILocation(line: 0, scope: !2553)
!2571 = !DILocation(line: 320, column: 3, scope: !2553)
!2572 = !DILocation(line: 321, column: 3, scope: !2553)
!2573 = !DILocation(line: 323, column: 7, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2553, file: !1, line: 323, column: 7)
!2575 = !DILocation(line: 323, column: 19, scope: !2574)
!2576 = !DILocation(line: 323, column: 23, scope: !2574)
!2577 = !DILocation(line: 323, column: 7, scope: !2553)
!2578 = !DILocation(line: 325, column: 7, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !1, line: 325, column: 7)
!2580 = distinct !DILexicalBlock(scope: !2574, file: !1, line: 324, column: 5)
!2581 = !DILocation(line: 325, column: 7, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2579, file: !1, line: 325, column: 7)
!2583 = !DILocation(line: 327, column: 28, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2582, file: !1, line: 326, column: 2)
!2585 = !DILocation(line: 327, column: 4, scope: !2584)
!2586 = distinct !{!2586, !2578, !2587}
!2587 = !DILocation(line: 328, column: 2, scope: !2579)
!2588 = !DILocation(line: 332, column: 7, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !1, line: 332, column: 7)
!2590 = distinct !DILexicalBlock(scope: !2574, file: !1, line: 331, column: 5)
!2591 = !DILocation(line: 332, column: 7, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2589, file: !1, line: 332, column: 7)
!2593 = !DILocation(line: 0, scope: !2589)
!2594 = !DILocation(line: 334, column: 4, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2592, file: !1, line: 333, column: 2)
!2596 = !DILocation(line: 0, scope: !2592)
!2597 = distinct !{!2597, !2588, !2598}
!2598 = !DILocation(line: 335, column: 2, scope: !2589)
!2599 = !DILocation(line: 337, column: 1, scope: !2553)
!2600 = distinct !DISubprogram(name: "add_exit_phis", scope: !1, file: !1, line: 195, type: !2554, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2601)
!2601 = !{!2602, !2603, !2604, !2605, !2606}
!2602 = !DILocalVariable(name: "names_to_rename", arg: 1, scope: !2600, file: !1, line: 195, type: !1396)
!2603 = !DILocalVariable(name: "use_blocks", arg: 2, scope: !2600, file: !1, line: 195, type: !1854)
!2604 = !DILocalVariable(name: "loop_exits", arg: 3, scope: !2600, file: !1, line: 195, type: !1396)
!2605 = !DILocalVariable(name: "i", scope: !2600, file: !1, line: 197, type: !5)
!2606 = !DILocalVariable(name: "bi", scope: !2600, file: !1, line: 198, type: !2563)
!2607 = !DILocation(line: 0, scope: !2600)
!2608 = !DILocation(line: 197, column: 3, scope: !2600)
!2609 = !DILocation(line: 198, column: 3, scope: !2600)
!2610 = !DILocation(line: 200, column: 3, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2600, file: !1, line: 200, column: 3)
!2612 = !DILocation(line: 200, column: 3, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2611, file: !1, line: 200, column: 3)
!2614 = !DILocation(line: 202, column: 26, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2613, file: !1, line: 201, column: 5)
!2616 = !DILocation(line: 202, column: 51, scope: !2615)
!2617 = !DILocation(line: 202, column: 40, scope: !2615)
!2618 = !DILocation(line: 202, column: 7, scope: !2615)
!2619 = distinct !{!2619, !2610, !2620}
!2620 = !DILocation(line: 203, column: 5, scope: !2611)
!2621 = !DILocation(line: 204, column: 1, scope: !2600)
!2622 = distinct !DISubprogram(name: "verify_loop_closed_ssa", scope: !1, file: !1, line: 446, type: !2623, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{null}
!2625 = !{!2626, !2627, !2628, !2629, !2630}
!2626 = !DILocalVariable(name: "bb", scope: !2622, file: !1, line: 448, type: !1280)
!2627 = !DILocalVariable(name: "bsi", scope: !2622, file: !1, line: 449, type: !2309)
!2628 = !DILocalVariable(name: "phi", scope: !2622, file: !1, line: 450, type: !794)
!2629 = !DILocalVariable(name: "e", scope: !2622, file: !1, line: 451, type: !774)
!2630 = !DILocalVariable(name: "ei", scope: !2622, file: !1, line: 452, type: !2502)
!2631 = !DILocation(line: 449, column: 3, scope: !2622)
!2632 = !DILocation(line: 451, column: 3, scope: !2622)
!2633 = !DILocation(line: 452, column: 3, scope: !2622)
!2634 = !DILocation(line: 454, column: 7, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 454, column: 7)
!2636 = !DILocation(line: 454, column: 26, scope: !2635)
!2637 = !DILocation(line: 454, column: 7, scope: !2622)
!2638 = !DILocation(line: 457, column: 3, scope: !2622)
!2639 = !DILocation(line: 459, column: 3, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 459, column: 3)
!2641 = !DILocation(line: 0, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !1, line: 461, column: 7)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 460, column: 5)
!2644 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 459, column: 3)
!2645 = !DILocation(line: 0, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !1, line: 464, column: 4)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !1, line: 462, column: 2)
!2648 = distinct !DILexicalBlock(scope: !2642, file: !1, line: 461, column: 7)
!2649 = !DILocation(line: 0, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2646, file: !1, line: 464, column: 4)
!2651 = !DILocation(line: 0, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2643, file: !1, line: 469, column: 7)
!2653 = !DILocation(line: 459, column: 3, scope: !2644)
!2654 = !DILocation(line: 0, scope: !2640)
!2655 = !DILocation(line: 0, scope: !2622)
!2656 = !DILocation(line: 461, column: 18, scope: !2642)
!2657 = !DILocation(line: 461, column: 12, scope: !2642)
!2658 = !DILocation(line: 461, column: 40, scope: !2648)
!2659 = !DILocation(line: 461, column: 39, scope: !2648)
!2660 = !DILocation(line: 461, column: 7, scope: !2642)
!2661 = !DILocation(line: 463, column: 10, scope: !2647)
!2662 = !DILocation(line: 464, column: 4, scope: !2646)
!2663 = !DILocation(line: 464, column: 4, scope: !2650)
!2664 = !DILocation(line: 465, column: 33, scope: !2650)
!2665 = !DILocation(line: 465, column: 36, scope: !2650)
!2666 = !DILocation(line: 466, column: 12, scope: !2650)
!2667 = !DILocation(line: 465, column: 6, scope: !2650)
!2668 = distinct !{!2668, !2662, !2669}
!2669 = !DILocation(line: 466, column: 42, scope: !2646)
!2670 = !DILocation(line: 461, column: 57, scope: !2648)
!2671 = !DILocation(line: 461, column: 7, scope: !2648)
!2672 = distinct !{!2672, !2660, !2673}
!2673 = !DILocation(line: 467, column: 2, scope: !2642)
!2674 = !DILocation(line: 469, column: 18, scope: !2652)
!2675 = !DILocation(line: 469, column: 12, scope: !2652)
!2676 = !DILocation(line: 469, column: 38, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 469, column: 7)
!2678 = !DILocation(line: 469, column: 37, scope: !2677)
!2679 = !DILocation(line: 469, column: 7, scope: !2652)
!2680 = !DILocation(line: 470, column: 34, scope: !2677)
!2681 = !DILocation(line: 470, column: 2, scope: !2677)
!2682 = !DILocation(line: 469, column: 55, scope: !2677)
!2683 = !DILocation(line: 469, column: 7, scope: !2677)
!2684 = distinct !{!2684, !2679, !2685}
!2685 = !DILocation(line: 470, column: 48, scope: !2652)
!2686 = !DILocation(line: 0, scope: !2644)
!2687 = distinct !{!2687, !2639, !2688}
!2688 = !DILocation(line: 471, column: 5, scope: !2640)
!2689 = !DILocation(line: 472, column: 1, scope: !2622)
!2690 = distinct !DISubprogram(name: "gsi_end_p", scope: !396, file: !396, line: 4467, type: !2691, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!462, !2309}
!2693 = !{!2694}
!2694 = !DILocalVariable(name: "i", arg: 1, scope: !2690, file: !396, line: 4467, type: !2309)
!2695 = !DILocation(line: 4467, column: 33, scope: !2690)
!2696 = !DILocation(line: 4469, column: 12, scope: !2690)
!2697 = !DILocation(line: 4469, column: 16, scope: !2690)
!2698 = !DILocation(line: 4469, column: 10, scope: !2690)
!2699 = !DILocation(line: 4469, column: 3, scope: !2690)
!2700 = distinct !DISubprogram(name: "gsi_stmt", scope: !396, file: !396, line: 4501, type: !2701, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!794, !2309}
!2703 = !{!2704}
!2704 = !DILocalVariable(name: "i", arg: 1, scope: !2700, file: !396, line: 4501, type: !2309)
!2705 = !DILocation(line: 4501, column: 32, scope: !2700)
!2706 = !DILocation(line: 4503, column: 12, scope: !2700)
!2707 = !DILocation(line: 4503, column: 17, scope: !2700)
!2708 = !DILocation(line: 4503, column: 3, scope: !2700)
!2709 = distinct !DISubprogram(name: "ei_start_1", scope: !341, file: !341, line: 696, type: !2710, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!2502, !2507}
!2712 = !{!2713, !2714}
!2713 = !DILocalVariable(name: "ev", arg: 1, scope: !2709, file: !341, line: 696, type: !2507)
!2714 = !DILocalVariable(name: "i", scope: !2709, file: !341, line: 698, type: !2502)
!2715 = !DILocation(line: 0, scope: !2709)
!2716 = !DILocation(line: 700, column: 5, scope: !2709)
!2717 = !DILocation(line: 700, column: 11, scope: !2709)
!2718 = !DILocation(line: 701, column: 5, scope: !2709)
!2719 = !DILocation(line: 701, column: 15, scope: !2709)
!2720 = !DILocation(line: 703, column: 3, scope: !2709)
!2721 = distinct !DISubprogram(name: "ei_cond", scope: !341, file: !341, line: 771, type: !2722, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2725)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!462, !2502, !2724}
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!2725 = !{!2726, !2727}
!2726 = !DILocalVariable(name: "ei", arg: 1, scope: !2721, file: !341, line: 771, type: !2502)
!2727 = !DILocalVariable(name: "p", arg: 2, scope: !2721, file: !341, line: 771, type: !2724)
!2728 = !DILocation(line: 0, scope: !2721)
!2729 = !DILocation(line: 773, column: 8, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2721, file: !341, line: 773, column: 7)
!2731 = !DILocation(line: 773, column: 7, scope: !2721)
!2732 = !DILocation(line: 775, column: 12, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2730, file: !341, line: 774, column: 5)
!2734 = !DILocation(line: 776, column: 7, scope: !2733)
!2735 = !DILocation(line: 781, column: 7, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2730, file: !341, line: 779, column: 5)
!2737 = !DILocation(line: 0, scope: !2730)
!2738 = !DILocation(line: 783, column: 1, scope: !2721)
!2739 = distinct !DISubprogram(name: "check_loop_closed_ssa_use", scope: !1, file: !1, line: 414, type: !2740, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{null, !1280, !472}
!2742 = !{!2743, !2744, !2745, !2746}
!2743 = !DILocalVariable(name: "bb", arg: 1, scope: !2739, file: !1, line: 414, type: !1280)
!2744 = !DILocalVariable(name: "use", arg: 2, scope: !2739, file: !1, line: 414, type: !472)
!2745 = !DILocalVariable(name: "def", scope: !2739, file: !1, line: 416, type: !794)
!2746 = !DILocalVariable(name: "def_bb", scope: !2739, file: !1, line: 417, type: !1280)
!2747 = !DILocation(line: 0, scope: !2739)
!2748 = !DILocation(line: 419, column: 7, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2739, file: !1, line: 419, column: 7)
!2750 = !DILocation(line: 419, column: 23, scope: !2749)
!2751 = !DILocation(line: 419, column: 35, scope: !2749)
!2752 = !DILocation(line: 419, column: 39, scope: !2749)
!2753 = !DILocation(line: 419, column: 7, scope: !2739)
!2754 = !DILocation(line: 422, column: 9, scope: !2739)
!2755 = !DILocation(line: 423, column: 12, scope: !2739)
!2756 = !DILocation(line: 424, column: 3, scope: !2739)
!2757 = !DILocation(line: 426, column: 1, scope: !2739)
!2758 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2424, file: !2424, line: 427, type: !2759, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2764)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!472, !2761}
!2761 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !389, line: 30, baseType: !2762)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !133, line: 1893, baseType: !835)
!2764 = !{!2765}
!2765 = !DILocalVariable(name: "use", arg: 1, scope: !2758, file: !2424, line: 427, type: !2761)
!2766 = !DILocation(line: 0, scope: !2758)
!2767 = !DILocation(line: 429, column: 17, scope: !2758)
!2768 = !DILocation(line: 429, column: 10, scope: !2758)
!2769 = !DILocation(line: 429, column: 3, scope: !2758)
!2770 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2424, file: !2424, line: 442, type: !2771, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!2761, !794, !463}
!2773 = !{!2774, !2775}
!2774 = !DILocalVariable(name: "gs", arg: 1, scope: !2770, file: !2424, line: 442, type: !794)
!2775 = !DILocalVariable(name: "i", arg: 2, scope: !2770, file: !2424, line: 442, type: !463)
!2776 = !DILocation(line: 0, scope: !2770)
!2777 = !DILocation(line: 444, column: 11, scope: !2770)
!2778 = !DILocation(line: 444, column: 35, scope: !2770)
!2779 = !DILocation(line: 444, column: 3, scope: !2770)
!2780 = distinct !DISubprogram(name: "ei_next", scope: !341, file: !341, line: 736, type: !2781, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2784)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !2783}
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2784 = !{!2785}
!2785 = !DILocalVariable(name: "i", arg: 1, scope: !2780, file: !341, line: 736, type: !2783)
!2786 = !DILocation(line: 0, scope: !2780)
!2787 = !DILocation(line: 738, column: 3, scope: !2780)
!2788 = !DILocation(line: 739, column: 11, scope: !2780)
!2789 = !DILocation(line: 740, column: 1, scope: !2780)
!2790 = distinct !DISubprogram(name: "gsi_next", scope: !396, file: !396, line: 4485, type: !2791, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{null, !2308}
!2793 = !{!2794}
!2794 = !DILocalVariable(name: "i", arg: 1, scope: !2790, file: !396, line: 4485, type: !2308)
!2795 = !DILocation(line: 0, scope: !2790)
!2796 = !DILocation(line: 4487, column: 15, scope: !2790)
!2797 = !DILocation(line: 4487, column: 20, scope: !2790)
!2798 = !DILocation(line: 4487, column: 10, scope: !2790)
!2799 = !DILocation(line: 4488, column: 1, scope: !2790)
!2800 = distinct !DISubprogram(name: "gsi_start_bb", scope: !396, file: !396, line: 4418, type: !2801, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!2309, !1280}
!2803 = !{!2804, !2805, !2806}
!2804 = !DILocalVariable(name: "bb", arg: 1, scope: !2800, file: !396, line: 4418, type: !1280)
!2805 = !DILocalVariable(name: "i", scope: !2800, file: !396, line: 4420, type: !2309)
!2806 = !DILocalVariable(name: "seq", scope: !2800, file: !396, line: 4421, type: !784)
!2807 = !DILocation(line: 0, scope: !2800)
!2808 = !DILocation(line: 4420, column: 24, scope: !2800)
!2809 = !DILocation(line: 4423, column: 9, scope: !2800)
!2810 = !DILocation(line: 4424, column: 11, scope: !2800)
!2811 = !DILocation(line: 4424, column: 5, scope: !2800)
!2812 = !DILocation(line: 4424, column: 9, scope: !2800)
!2813 = !DILocation(line: 4425, column: 5, scope: !2800)
!2814 = !DILocation(line: 4425, column: 9, scope: !2800)
!2815 = !DILocation(line: 4426, column: 5, scope: !2800)
!2816 = !DILocation(line: 4426, column: 8, scope: !2800)
!2817 = !DILocation(line: 4429, column: 1, scope: !2800)
!2818 = distinct !DISubprogram(name: "check_loop_closed_ssa_stmt", scope: !1, file: !1, line: 431, type: !2819, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !1280, !794}
!2821 = !{!2822, !2823, !2824, !2837}
!2822 = !DILocalVariable(name: "bb", arg: 1, scope: !2818, file: !1, line: 431, type: !1280)
!2823 = !DILocalVariable(name: "stmt", arg: 2, scope: !2818, file: !1, line: 431, type: !794)
!2824 = !DILocalVariable(name: "iter", scope: !2818, file: !1, line: 433, type: !2825)
!2825 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !389, line: 140, baseType: !2826)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !389, line: 131, size: 320, elements: !2827)
!2827 = !{!2828, !2829, !2830, !2832, !2834, !2835, !2836}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2826, file: !389, line: 133, baseType: !462, size: 8)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2826, file: !389, line: 134, baseType: !388, size: 32, offset: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2826, file: !389, line: 135, baseType: !2831, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !389, line: 42, baseType: !823)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2826, file: !389, line: 136, baseType: !2833, size: 64, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !389, line: 50, baseType: !830)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !2826, file: !389, line: 137, baseType: !463, size: 32, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !2826, file: !389, line: 138, baseType: !463, size: 32, offset: 224)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !2826, file: !389, line: 139, baseType: !794, size: 64, offset: 256)
!2837 = !DILocalVariable(name: "var", scope: !2818, file: !1, line: 434, type: !472)
!2838 = !DILocation(line: 0, scope: !2818)
!2839 = !DILocation(line: 433, column: 3, scope: !2818)
!2840 = !DILocation(line: 436, column: 7, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2818, file: !1, line: 436, column: 7)
!2842 = !DILocation(line: 436, column: 7, scope: !2818)
!2843 = !DILocation(line: 439, column: 3, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2818, file: !1, line: 439, column: 3)
!2845 = !DILocation(line: 0, scope: !2844)
!2846 = !DILocation(line: 439, column: 3, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2844, file: !1, line: 439, column: 3)
!2848 = !DILocation(line: 440, column: 5, scope: !2847)
!2849 = distinct !{!2849, !2843, !2850}
!2850 = !DILocation(line: 440, column: 39, scope: !2844)
!2851 = !DILocation(line: 441, column: 1, scope: !2818)
!2852 = distinct !DISubprogram(name: "split_loop_exit_edge", scope: !1, file: !1, line: 478, type: !2853, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!1280, !774}
!2855 = !{!2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865}
!2856 = !DILocalVariable(name: "exit", arg: 1, scope: !2852, file: !1, line: 478, type: !774)
!2857 = !DILocalVariable(name: "dest", scope: !2852, file: !1, line: 480, type: !1280)
!2858 = !DILocalVariable(name: "bb", scope: !2852, file: !1, line: 481, type: !1280)
!2859 = !DILocalVariable(name: "phi", scope: !2852, file: !1, line: 482, type: !794)
!2860 = !DILocalVariable(name: "new_phi", scope: !2852, file: !1, line: 482, type: !794)
!2861 = !DILocalVariable(name: "new_name", scope: !2852, file: !1, line: 483, type: !472)
!2862 = !DILocalVariable(name: "name", scope: !2852, file: !1, line: 483, type: !472)
!2863 = !DILocalVariable(name: "op_p", scope: !2852, file: !1, line: 484, type: !2761)
!2864 = !DILocalVariable(name: "psi", scope: !2852, file: !1, line: 485, type: !2309)
!2865 = !DILocalVariable(name: "locus", scope: !2852, file: !1, line: 486, type: !470)
!2866 = !DILocation(line: 0, scope: !2852)
!2867 = !DILocation(line: 480, column: 28, scope: !2852)
!2868 = !DILocation(line: 481, column: 20, scope: !2852)
!2869 = !DILocation(line: 485, column: 3, scope: !2852)
!2870 = !DILocation(line: 488, column: 14, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2852, file: !1, line: 488, column: 3)
!2872 = !DILocation(line: 488, column: 8, scope: !2871)
!2873 = !DILocation(line: 488, column: 38, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !1, line: 488, column: 3)
!2875 = !DILocation(line: 488, column: 37, scope: !2874)
!2876 = !DILocation(line: 488, column: 3, scope: !2871)
!2877 = !DILocation(line: 490, column: 13, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2874, file: !1, line: 489, column: 5)
!2879 = !DILocation(line: 491, column: 14, scope: !2878)
!2880 = !DILocation(line: 492, column: 55, scope: !2878)
!2881 = !DILocation(line: 492, column: 15, scope: !2878)
!2882 = !DILocation(line: 494, column: 14, scope: !2878)
!2883 = !DILocation(line: 498, column: 11, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2878, file: !1, line: 498, column: 11)
!2885 = !DILocation(line: 498, column: 28, scope: !2884)
!2886 = !DILocation(line: 498, column: 11, scope: !2878)
!2887 = !DILocation(line: 503, column: 18, scope: !2878)
!2888 = !DILocation(line: 504, column: 17, scope: !2878)
!2889 = !DILocation(line: 505, column: 7, scope: !2878)
!2890 = !DILocation(line: 505, column: 36, scope: !2878)
!2891 = !DILocation(line: 506, column: 7, scope: !2878)
!2892 = !DILocation(line: 507, column: 7, scope: !2878)
!2893 = !DILocation(line: 508, column: 5, scope: !2878)
!2894 = !DILocation(line: 488, column: 55, scope: !2874)
!2895 = !DILocation(line: 488, column: 3, scope: !2874)
!2896 = distinct !{!2896, !2876, !2897}
!2897 = !DILocation(line: 508, column: 5, scope: !2871)
!2898 = !DILocation(line: 511, column: 1, scope: !2852)
!2899 = !DILocation(line: 510, column: 3, scope: !2852)
!2900 = distinct !DISubprogram(name: "single_succ_edge", scope: !341, file: !341, line: 643, type: !2901, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2906)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!774, !2903}
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !473, line: 112, baseType: !2904)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!2906 = !{!2907}
!2907 = !DILocalVariable(name: "bb", arg: 1, scope: !2900, file: !341, line: 643, type: !2903)
!2908 = !DILocation(line: 0, scope: !2900)
!2909 = !DILocation(line: 645, column: 3, scope: !2900)
!2910 = !DILocation(line: 646, column: 10, scope: !2900)
!2911 = !DILocation(line: 646, column: 3, scope: !2900)
!2912 = distinct !DISubprogram(name: "gimple_phi_arg_location_from_edge", scope: !2424, file: !2424, line: 483, type: !2913, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2915)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!470, !794, !774}
!2915 = !{!2916, !2917}
!2916 = !DILocalVariable(name: "gs", arg: 1, scope: !2912, file: !2424, line: 483, type: !794)
!2917 = !DILocalVariable(name: "e", arg: 2, scope: !2912, file: !2424, line: 483, type: !774)
!2918 = !DILocation(line: 0, scope: !2912)
!2919 = !DILocation(line: 485, column: 33, scope: !2912)
!2920 = !DILocation(line: 485, column: 10, scope: !2912)
!2921 = !DILocation(line: 485, column: 44, scope: !2912)
!2922 = !DILocation(line: 485, column: 3, scope: !2912)
!2923 = distinct !DISubprogram(name: "set_ssa_use_from_ptr", scope: !2424, file: !2424, line: 233, type: !2924, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2926)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{null, !2761, !472}
!2926 = !{!2927, !2928}
!2927 = !DILocalVariable(name: "use", arg: 1, scope: !2923, file: !2424, line: 233, type: !2761)
!2928 = !DILocalVariable(name: "val", arg: 2, scope: !2923, file: !2424, line: 233, type: !472)
!2929 = !DILocation(line: 0, scope: !2923)
!2930 = !DILocation(line: 235, column: 3, scope: !2923)
!2931 = !DILocation(line: 236, column: 10, scope: !2923)
!2932 = !DILocation(line: 236, column: 15, scope: !2923)
!2933 = !DILocation(line: 237, column: 3, scope: !2923)
!2934 = !DILocation(line: 238, column: 1, scope: !2923)
!2935 = distinct !DISubprogram(name: "ip_end_pos", scope: !1, file: !1, line: 517, type: !2936, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!1280, !1009}
!2938 = !{!2939}
!2939 = !DILocalVariable(name: "loop", arg: 1, scope: !2935, file: !1, line: 517, type: !1009)
!2940 = !DILocation(line: 0, scope: !2935)
!2941 = !DILocation(line: 519, column: 16, scope: !2935)
!2942 = !DILocation(line: 519, column: 3, scope: !2935)
!2943 = distinct !DISubprogram(name: "ip_normal_pos", scope: !1, file: !1, line: 526, type: !2936, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2944)
!2944 = !{!2945, !2946, !2947, !2948}
!2945 = !DILocalVariable(name: "loop", arg: 1, scope: !2943, file: !1, line: 526, type: !1009)
!2946 = !DILocalVariable(name: "last", scope: !2943, file: !1, line: 528, type: !794)
!2947 = !DILocalVariable(name: "bb", scope: !2943, file: !1, line: 529, type: !1280)
!2948 = !DILocalVariable(name: "exit", scope: !2943, file: !1, line: 530, type: !774)
!2949 = !DILocation(line: 0, scope: !2943)
!2950 = !DILocation(line: 532, column: 29, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2943, file: !1, line: 532, column: 7)
!2952 = !DILocation(line: 532, column: 8, scope: !2951)
!2953 = !DILocation(line: 532, column: 7, scope: !2943)
!2954 = !DILocation(line: 535, column: 27, scope: !2943)
!2955 = !DILocation(line: 535, column: 8, scope: !2943)
!2956 = !DILocation(line: 536, column: 10, scope: !2943)
!2957 = !DILocation(line: 537, column: 8, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2943, file: !1, line: 537, column: 7)
!2959 = !DILocation(line: 538, column: 7, scope: !2958)
!2960 = !DILocation(line: 538, column: 10, scope: !2958)
!2961 = !DILocation(line: 538, column: 29, scope: !2958)
!2962 = !DILocation(line: 537, column: 7, scope: !2943)
!2963 = !DILocation(line: 541, column: 10, scope: !2943)
!2964 = !DILocation(line: 542, column: 13, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2943, file: !1, line: 542, column: 7)
!2966 = !DILocation(line: 542, column: 27, scope: !2965)
!2967 = !DILocation(line: 542, column: 18, scope: !2965)
!2968 = !DILocation(line: 542, column: 7, scope: !2943)
!2969 = !DILocation(line: 543, column: 12, scope: !2965)
!2970 = !DILocation(line: 0, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2943, file: !1, line: 545, column: 7)
!2972 = !DILocation(line: 545, column: 42, scope: !2971)
!2973 = !DILocation(line: 543, column: 5, scope: !2965)
!2974 = !DILocation(line: 545, column: 7, scope: !2971)
!2975 = !DILocation(line: 549, column: 1, scope: !2943)
!2976 = distinct !DISubprogram(name: "single_pred_p", scope: !341, file: !341, line: 634, type: !2977, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!462, !2903}
!2979 = !{!2980}
!2980 = !DILocalVariable(name: "bb", arg: 1, scope: !2976, file: !341, line: 634, type: !2903)
!2981 = !DILocation(line: 0, scope: !2976)
!2982 = !DILocation(line: 636, column: 10, scope: !2976)
!2983 = !DILocation(line: 636, column: 33, scope: !2976)
!2984 = !DILocation(line: 636, column: 3, scope: !2976)
!2985 = distinct !DISubprogram(name: "single_pred", scope: !341, file: !341, line: 672, type: !2986, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2988)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!1280, !2903}
!2988 = !{!2989}
!2989 = !DILocalVariable(name: "bb", arg: 1, scope: !2985, file: !341, line: 672, type: !2903)
!2990 = !DILocation(line: 0, scope: !2985)
!2991 = !DILocation(line: 674, column: 10, scope: !2985)
!2992 = !DILocation(line: 674, column: 33, scope: !2985)
!2993 = !DILocation(line: 674, column: 3, scope: !2985)
!2994 = distinct !DISubprogram(name: "gimple_code", scope: !396, file: !396, line: 1052, type: !2995, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3000)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!395, !2997}
!2997 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !473, line: 60, baseType: !2998)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!3000 = !{!3001}
!3001 = !DILocalVariable(name: "g", arg: 1, scope: !2994, file: !396, line: 1052, type: !2997)
!3002 = !DILocation(line: 0, scope: !2994)
!3003 = !DILocation(line: 1054, column: 20, scope: !2994)
!3004 = !DILocation(line: 1054, column: 3, scope: !2994)
!3005 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !341, file: !341, line: 150, type: !3006, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3010)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!774, !3008, !5}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!3010 = !{!3011, !3012}
!3011 = !DILocalVariable(name: "vec_", arg: 1, scope: !3005, file: !341, line: 150, type: !3008)
!3012 = !DILocalVariable(name: "ix_", arg: 2, scope: !3005, file: !341, line: 150, type: !5)
!3013 = !DILocation(line: 0, scope: !3005)
!3014 = !DILocation(line: 150, column: 1, scope: !3005)
!3015 = distinct !DISubprogram(name: "standard_iv_increment_position", scope: !1, file: !1, line: 557, type: !3016, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !1009, !2308, !461}
!3018 = !{!3019, !3020, !3021, !3022, !3023, !3024}
!3019 = !DILocalVariable(name: "loop", arg: 1, scope: !3015, file: !1, line: 557, type: !1009)
!3020 = !DILocalVariable(name: "bsi", arg: 2, scope: !3015, file: !1, line: 557, type: !2308)
!3021 = !DILocalVariable(name: "insert_after", arg: 3, scope: !3015, file: !1, line: 558, type: !461)
!3022 = !DILocalVariable(name: "bb", scope: !3015, file: !1, line: 560, type: !1280)
!3023 = !DILocalVariable(name: "latch", scope: !3015, file: !1, line: 560, type: !1280)
!3024 = !DILocalVariable(name: "last", scope: !3015, file: !1, line: 561, type: !794)
!3025 = !DILocation(line: 0, scope: !3015)
!3026 = !DILocation(line: 560, column: 20, scope: !3015)
!3027 = !DILocation(line: 560, column: 50, scope: !3015)
!3028 = !DILocation(line: 561, column: 17, scope: !3015)
!3029 = !DILocation(line: 563, column: 8, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3015, file: !1, line: 563, column: 7)
!3031 = !DILocation(line: 564, column: 7, scope: !3030)
!3032 = !DILocation(line: 564, column: 11, scope: !3030)
!3033 = !DILocation(line: 564, column: 16, scope: !3030)
!3034 = !DILocation(line: 564, column: 19, scope: !3030)
!3035 = !DILocation(line: 564, column: 38, scope: !3030)
!3036 = !DILocation(line: 563, column: 7, scope: !3015)
!3037 = !DILocation(line: 566, column: 14, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 565, column: 5)
!3039 = !DILocation(line: 568, column: 5, scope: !3038)
!3040 = !DILocation(line: 571, column: 14, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 570, column: 5)
!3042 = !DILocation(line: 0, scope: !3030)
!3043 = !DILocation(line: 574, column: 1, scope: !3015)
!3044 = distinct !DISubprogram(name: "gsi_last_bb", scope: !396, file: !396, line: 4450, type: !2801, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DILocalVariable(name: "bb", arg: 1, scope: !3044, file: !396, line: 4450, type: !1280)
!3047 = !DILocalVariable(name: "i", scope: !3044, file: !396, line: 4452, type: !2309)
!3048 = !DILocalVariable(name: "seq", scope: !3044, file: !396, line: 4453, type: !784)
!3049 = !DILocation(line: 0, scope: !3044)
!3050 = !DILocation(line: 4452, column: 24, scope: !3044)
!3051 = !DILocation(line: 4455, column: 9, scope: !3044)
!3052 = !DILocation(line: 4456, column: 11, scope: !3044)
!3053 = !DILocation(line: 4456, column: 5, scope: !3044)
!3054 = !DILocation(line: 4456, column: 9, scope: !3044)
!3055 = !DILocation(line: 4457, column: 5, scope: !3044)
!3056 = !DILocation(line: 4457, column: 9, scope: !3044)
!3057 = !DILocation(line: 4458, column: 5, scope: !3044)
!3058 = !DILocation(line: 4458, column: 8, scope: !3044)
!3059 = !DILocation(line: 4461, column: 1, scope: !3044)
!3060 = distinct !DISubprogram(name: "gimple_duplicate_loop_to_header_edge", scope: !1, file: !1, line: 605, type: !3061, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3079)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!462, !1009, !774, !5, !3063, !774, !3073, !463}
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !3064, line: 45, baseType: !3065)
!3064 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !3064, line: 39, size: 192, elements: !3067)
!3067 = !{!3068, !3069, !3070, !3071}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !3066, file: !3064, line: 41, baseType: !461, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !3066, file: !3064, line: 42, baseType: !5, size: 32, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3066, file: !3064, line: 43, baseType: !5, size: 32, offset: 96)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !3066, file: !3064, line: 44, baseType: !3072, size: 64, offset: 128)
!3072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 64, elements: !571)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_heap", file: !341, line: 152, baseType: !3076)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_heap", file: !341, line: 152, size: 128, elements: !3077)
!3077 = !{!3078}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3076, file: !341, line: 152, baseType: !767, size: 128)
!3079 = !{!3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087}
!3080 = !DILocalVariable(name: "loop", arg: 1, scope: !3060, file: !1, line: 605, type: !1009)
!3081 = !DILocalVariable(name: "e", arg: 2, scope: !3060, file: !1, line: 605, type: !774)
!3082 = !DILocalVariable(name: "ndupl", arg: 3, scope: !3060, file: !1, line: 606, type: !5)
!3083 = !DILocalVariable(name: "wont_exit", arg: 4, scope: !3060, file: !1, line: 606, type: !3063)
!3084 = !DILocalVariable(name: "orig", arg: 5, scope: !3060, file: !1, line: 607, type: !774)
!3085 = !DILocalVariable(name: "to_remove", arg: 6, scope: !3060, file: !1, line: 607, type: !3073)
!3086 = !DILocalVariable(name: "flags", arg: 7, scope: !3060, file: !1, line: 608, type: !463)
!3087 = !DILocalVariable(name: "first_new_block", scope: !3060, file: !1, line: 610, type: !5)
!3088 = !DILocation(line: 0, scope: !3060)
!3089 = !DILocation(line: 612, column: 8, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3060, file: !1, line: 612, column: 7)
!3091 = !DILocation(line: 612, column: 7, scope: !3060)
!3092 = !DILocation(line: 614, column: 8, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3060, file: !1, line: 614, column: 7)
!3094 = !DILocation(line: 614, column: 7, scope: !3060)
!3095 = !DILocation(line: 622, column: 21, scope: !3060)
!3096 = !DILocation(line: 623, column: 8, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3060, file: !1, line: 623, column: 7)
!3098 = !DILocation(line: 623, column: 7, scope: !3060)
!3099 = !DILocation(line: 628, column: 3, scope: !3060)
!3100 = !DILocation(line: 631, column: 3, scope: !3060)
!3101 = !DILocation(line: 633, column: 3, scope: !3060)
!3102 = !DILocation(line: 635, column: 3, scope: !3060)
!3103 = !DILocation(line: 636, column: 1, scope: !3060)
!3104 = distinct !DISubprogram(name: "loops_state_satisfies_p", scope: !328, file: !328, line: 471, type: !3105, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!462, !5}
!3107 = !{!3108}
!3108 = !DILocalVariable(name: "flags", arg: 1, scope: !3104, file: !328, line: 471, type: !5)
!3109 = !DILocation(line: 0, scope: !3104)
!3110 = !DILocation(line: 473, column: 11, scope: !3104)
!3111 = !DILocation(line: 473, column: 26, scope: !3104)
!3112 = !DILocation(line: 473, column: 32, scope: !3104)
!3113 = !DILocation(line: 473, column: 41, scope: !3104)
!3114 = !DILocation(line: 473, column: 10, scope: !3104)
!3115 = !DILocation(line: 473, column: 3, scope: !3104)
!3116 = distinct !DISubprogram(name: "copy_phi_node_args", scope: !1, file: !1, line: 580, type: !2475, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3117)
!3117 = !{!3118, !3119}
!3118 = !DILocalVariable(name: "first_new_block", arg: 1, scope: !3116, file: !1, line: 580, type: !5)
!3119 = !DILocalVariable(name: "i", scope: !3116, file: !1, line: 582, type: !5)
!3120 = !DILocation(line: 0, scope: !3116)
!3121 = !DILocation(line: 584, column: 8, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3116, file: !1, line: 584, column: 3)
!3123 = !DILocation(line: 0, scope: !3122)
!3124 = !DILocation(line: 584, column: 44, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3122, file: !1, line: 584, column: 3)
!3126 = !DILocation(line: 584, column: 31, scope: !3125)
!3127 = !DILocation(line: 584, column: 3, scope: !3122)
!3128 = !DILocation(line: 587, column: 3, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3116, file: !1, line: 587, column: 3)
!3130 = !DILocation(line: 585, column: 5, scope: !3125)
!3131 = !DILocation(line: 585, column: 22, scope: !3125)
!3132 = !DILocation(line: 585, column: 28, scope: !3125)
!3133 = !DILocation(line: 584, column: 63, scope: !3125)
!3134 = !DILocation(line: 584, column: 3, scope: !3125)
!3135 = distinct !{!3135, !3127, !3136}
!3136 = !DILocation(line: 585, column: 31, scope: !3122)
!3137 = !DILocation(line: 587, column: 44, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3129, file: !1, line: 587, column: 3)
!3139 = !DILocation(line: 0, scope: !3129)
!3140 = !DILocation(line: 587, column: 31, scope: !3138)
!3141 = !DILocation(line: 590, column: 3, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3116, file: !1, line: 590, column: 3)
!3143 = !DILocation(line: 588, column: 33, scope: !3138)
!3144 = !DILocation(line: 588, column: 5, scope: !3138)
!3145 = !DILocation(line: 587, column: 63, scope: !3138)
!3146 = !DILocation(line: 0, scope: !3138)
!3147 = !DILocation(line: 587, column: 3, scope: !3138)
!3148 = distinct !{!3148, !3128, !3149}
!3149 = !DILocation(line: 588, column: 48, scope: !3129)
!3150 = !DILocation(line: 590, column: 44, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3142, file: !1, line: 590, column: 3)
!3152 = !DILocation(line: 0, scope: !3142)
!3153 = !DILocation(line: 590, column: 31, scope: !3151)
!3154 = !DILocation(line: 591, column: 5, scope: !3151)
!3155 = !DILocation(line: 591, column: 22, scope: !3151)
!3156 = !DILocation(line: 591, column: 28, scope: !3151)
!3157 = !DILocation(line: 590, column: 63, scope: !3151)
!3158 = !DILocation(line: 0, scope: !3151)
!3159 = !DILocation(line: 590, column: 3, scope: !3151)
!3160 = distinct !{!3160, !3141, !3161}
!3161 = !DILocation(line: 591, column: 32, scope: !3142)
!3162 = !DILocation(line: 592, column: 1, scope: !3116)
!3163 = distinct !DISubprogram(name: "can_unroll_loop_p", scope: !1, file: !1, line: 642, type: !3164, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3182)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!462, !1009, !5, !3166}
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_niter_desc", file: !1220, line: 657, size: 640, elements: !3168)
!3168 = !{!3169, !3170, !3171, !3172, !3173, !3180, !3181}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "assumptions", scope: !3167, file: !1220, line: 659, baseType: !472, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "may_be_zero", scope: !3167, file: !1220, line: 663, baseType: !472, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "niter", scope: !3167, file: !1220, line: 667, baseType: !472, size: 64, offset: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3167, file: !1220, line: 671, baseType: !521, size: 128, offset: 192)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !3167, file: !1220, line: 679, baseType: !3174, size: 192, offset: 320)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "affine_iv", file: !1220, line: 651, baseType: !3175)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1220, line: 644, size: 192, elements: !3176)
!3176 = !{!3177, !3178, !3179}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3175, file: !1220, line: 647, baseType: !472, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !3175, file: !1220, line: 647, baseType: !472, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "no_overflow", scope: !3175, file: !1220, line: 650, baseType: !462, size: 8, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !3167, file: !1220, line: 680, baseType: !472, size: 64, offset: 512)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !3167, file: !1220, line: 681, baseType: !132, size: 32, offset: 576)
!3182 = !{!3183, !3184, !3185, !3186}
!3183 = !DILocalVariable(name: "loop", arg: 1, scope: !3163, file: !1, line: 642, type: !1009)
!3184 = !DILocalVariable(name: "factor", arg: 2, scope: !3163, file: !1, line: 642, type: !5)
!3185 = !DILocalVariable(name: "niter", arg: 3, scope: !3163, file: !1, line: 643, type: !3166)
!3186 = !DILocalVariable(name: "exit", scope: !3163, file: !1, line: 645, type: !774)
!3187 = !DILocation(line: 0, scope: !3163)
!3188 = !DILocation(line: 653, column: 10, scope: !3163)
!3189 = !DILocation(line: 654, column: 8, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3163, file: !1, line: 654, column: 7)
!3191 = !DILocation(line: 654, column: 7, scope: !3163)
!3192 = !DILocation(line: 657, column: 8, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3163, file: !1, line: 657, column: 7)
!3194 = !DILocation(line: 658, column: 7, scope: !3193)
!3195 = !DILocation(line: 658, column: 17, scope: !3193)
!3196 = !DILocation(line: 658, column: 21, scope: !3193)
!3197 = !DILocation(line: 664, column: 7, scope: !3193)
!3198 = !DILocation(line: 664, column: 47, scope: !3193)
!3199 = !DILocation(line: 664, column: 10, scope: !3193)
!3200 = !DILocation(line: 665, column: 7, scope: !3193)
!3201 = !DILocation(line: 665, column: 55, scope: !3193)
!3202 = !DILocation(line: 665, column: 10, scope: !3193)
!3203 = !DILocation(line: 666, column: 7, scope: !3193)
!3204 = !DILocation(line: 666, column: 55, scope: !3193)
!3205 = !DILocation(line: 666, column: 10, scope: !3193)
!3206 = !DILocation(line: 667, column: 7, scope: !3193)
!3207 = !DILocation(line: 667, column: 47, scope: !3193)
!3208 = !DILocation(line: 667, column: 10, scope: !3193)
!3209 = !DILocation(line: 657, column: 7, scope: !3163)
!3210 = !DILocation(line: 671, column: 8, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3163, file: !1, line: 671, column: 7)
!3212 = !DILocation(line: 671, column: 7, scope: !3163)
!3213 = !DILocation(line: 675, column: 7, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3163, file: !1, line: 675, column: 7)
!3215 = !DILocation(line: 675, column: 53, scope: !3214)
!3216 = !DILocation(line: 676, column: 20, scope: !3214)
!3217 = !DILocation(line: 676, column: 7, scope: !3214)
!3218 = !DILocation(line: 680, column: 1, scope: !3163)
!3219 = distinct !DISubprogram(name: "tree_transform_and_unroll_loop", scope: !1, file: !1, line: 875, type: !3220, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3226)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{null, !1009, !5, !774, !3166, !3222, !467}
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "transform_callback", file: !1220, line: 743, baseType: !3223)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{null, !1009, !467}
!3226 = !{!3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274}
!3227 = !DILocalVariable(name: "loop", arg: 1, scope: !3219, file: !1, line: 875, type: !1009)
!3228 = !DILocalVariable(name: "factor", arg: 2, scope: !3219, file: !1, line: 875, type: !5)
!3229 = !DILocalVariable(name: "exit", arg: 3, scope: !3219, file: !1, line: 876, type: !774)
!3230 = !DILocalVariable(name: "desc", arg: 4, scope: !3219, file: !1, line: 876, type: !3166)
!3231 = !DILocalVariable(name: "transform", arg: 5, scope: !3219, file: !1, line: 877, type: !3222)
!3232 = !DILocalVariable(name: "data", arg: 6, scope: !3219, file: !1, line: 878, type: !467)
!3233 = !DILocalVariable(name: "exit_if", scope: !3219, file: !1, line: 880, type: !794)
!3234 = !DILocalVariable(name: "ctr_before", scope: !3219, file: !1, line: 881, type: !472)
!3235 = !DILocalVariable(name: "ctr_after", scope: !3219, file: !1, line: 881, type: !472)
!3236 = !DILocalVariable(name: "enter_main_cond", scope: !3219, file: !1, line: 882, type: !472)
!3237 = !DILocalVariable(name: "exit_base", scope: !3219, file: !1, line: 882, type: !472)
!3238 = !DILocalVariable(name: "exit_step", scope: !3219, file: !1, line: 882, type: !472)
!3239 = !DILocalVariable(name: "exit_bound", scope: !3219, file: !1, line: 882, type: !472)
!3240 = !DILocalVariable(name: "exit_cmp", scope: !3219, file: !1, line: 883, type: !132)
!3241 = !DILocalVariable(name: "phi_old_loop", scope: !3219, file: !1, line: 884, type: !794)
!3242 = !DILocalVariable(name: "phi_new_loop", scope: !3219, file: !1, line: 884, type: !794)
!3243 = !DILocalVariable(name: "phi_rest", scope: !3219, file: !1, line: 884, type: !794)
!3244 = !DILocalVariable(name: "psi_old_loop", scope: !3219, file: !1, line: 885, type: !2309)
!3245 = !DILocalVariable(name: "psi_new_loop", scope: !3219, file: !1, line: 885, type: !2309)
!3246 = !DILocalVariable(name: "init", scope: !3219, file: !1, line: 886, type: !472)
!3247 = !DILocalVariable(name: "next", scope: !3219, file: !1, line: 886, type: !472)
!3248 = !DILocalVariable(name: "new_init", scope: !3219, file: !1, line: 886, type: !472)
!3249 = !DILocalVariable(name: "var", scope: !3219, file: !1, line: 886, type: !472)
!3250 = !DILocalVariable(name: "new_loop", scope: !3219, file: !1, line: 887, type: !1009)
!3251 = !DILocalVariable(name: "rest", scope: !3219, file: !1, line: 888, type: !1280)
!3252 = !DILocalVariable(name: "exit_bb", scope: !3219, file: !1, line: 888, type: !1280)
!3253 = !DILocalVariable(name: "old_entry", scope: !3219, file: !1, line: 889, type: !774)
!3254 = !DILocalVariable(name: "new_entry", scope: !3219, file: !1, line: 889, type: !774)
!3255 = !DILocalVariable(name: "old_latch", scope: !3219, file: !1, line: 889, type: !774)
!3256 = !DILocalVariable(name: "precond_edge", scope: !3219, file: !1, line: 889, type: !774)
!3257 = !DILocalVariable(name: "new_exit", scope: !3219, file: !1, line: 889, type: !774)
!3258 = !DILocalVariable(name: "new_nonexit", scope: !3219, file: !1, line: 890, type: !774)
!3259 = !DILocalVariable(name: "e", scope: !3219, file: !1, line: 890, type: !774)
!3260 = !DILocalVariable(name: "bsi", scope: !3219, file: !1, line: 891, type: !2309)
!3261 = !DILocalVariable(name: "op", scope: !3219, file: !1, line: 892, type: !2761)
!3262 = !DILocalVariable(name: "ok", scope: !3219, file: !1, line: 893, type: !462)
!3263 = !DILocalVariable(name: "est_niter", scope: !3219, file: !1, line: 894, type: !5)
!3264 = !DILocalVariable(name: "prob_entry", scope: !3219, file: !1, line: 894, type: !5)
!3265 = !DILocalVariable(name: "scale_unrolled", scope: !3219, file: !1, line: 894, type: !5)
!3266 = !DILocalVariable(name: "scale_rest", scope: !3219, file: !1, line: 894, type: !5)
!3267 = !DILocalVariable(name: "freq_e", scope: !3219, file: !1, line: 894, type: !5)
!3268 = !DILocalVariable(name: "freq_h", scope: !3219, file: !1, line: 894, type: !5)
!3269 = !DILocalVariable(name: "new_est_niter", scope: !3219, file: !1, line: 895, type: !5)
!3270 = !DILocalVariable(name: "i", scope: !3219, file: !1, line: 895, type: !5)
!3271 = !DILocalVariable(name: "prob", scope: !3219, file: !1, line: 895, type: !5)
!3272 = !DILocalVariable(name: "irr", scope: !3219, file: !1, line: 896, type: !5)
!3273 = !DILocalVariable(name: "wont_exit", scope: !3219, file: !1, line: 897, type: !3063)
!3274 = !DILocalVariable(name: "to_remove", scope: !3219, file: !1, line: 898, type: !3074)
!3275 = !DILocation(line: 0, scope: !3219)
!3276 = !DILocation(line: 881, column: 3, scope: !3219)
!3277 = !DILocation(line: 882, column: 3, scope: !3219)
!3278 = !DILocation(line: 883, column: 3, scope: !3219)
!3279 = !DILocation(line: 885, column: 3, scope: !3219)
!3280 = !DILocation(line: 890, column: 3, scope: !3219)
!3281 = !DILocation(line: 891, column: 3, scope: !3219)
!3282 = !DILocation(line: 896, column: 18, scope: !3219)
!3283 = !DILocation(line: 896, column: 46, scope: !3219)
!3284 = !DILocation(line: 896, column: 52, scope: !3219)
!3285 = !DILocation(line: 898, column: 3, scope: !3219)
!3286 = !DILocation(line: 898, column: 21, scope: !3219)
!3287 = !DILocation(line: 900, column: 15, scope: !3219)
!3288 = !DILocation(line: 901, column: 3, scope: !3219)
!3289 = !DILocation(line: 906, column: 25, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3219, file: !1, line: 906, column: 7)
!3291 = !DILocation(line: 906, column: 7, scope: !3290)
!3292 = !DILocation(line: 926, column: 34, scope: !3219)
!3293 = !DILocation(line: 926, column: 14, scope: !3219)
!3294 = !DILocation(line: 928, column: 3, scope: !3219)
!3295 = !DILocation(line: 929, column: 3, scope: !3219)
!3296 = !DILocation(line: 932, column: 29, scope: !3219)
!3297 = !DILocation(line: 939, column: 21, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3219, file: !1, line: 939, column: 7)
!3299 = !DILocation(line: 939, column: 7, scope: !3219)
!3300 = !DILocation(line: 949, column: 10, scope: !3219)
!3301 = !DILocation(line: 949, column: 42, scope: !3219)
!3302 = !DILocation(line: 950, column: 18, scope: !3219)
!3303 = !DILocation(line: 951, column: 15, scope: !3219)
!3304 = !DILocation(line: 951, column: 3, scope: !3219)
!3305 = !DILocation(line: 952, column: 32, scope: !3219)
!3306 = !DILocation(line: 952, column: 13, scope: !3219)
!3307 = !DILocation(line: 957, column: 47, scope: !3219)
!3308 = !DILocation(line: 959, column: 32, scope: !3219)
!3309 = !DILocation(line: 959, column: 24, scope: !3219)
!3310 = !DILocation(line: 957, column: 3, scope: !3219)
!3311 = !DILocation(line: 961, column: 9, scope: !3219)
!3312 = !DILocation(line: 962, column: 41, scope: !3219)
!3313 = !DILocation(line: 962, column: 13, scope: !3219)
!3314 = !DILocation(line: 966, column: 3, scope: !3219)
!3315 = !DILocation(line: 967, column: 57, scope: !3219)
!3316 = !DILocation(line: 967, column: 14, scope: !3219)
!3317 = !DILocation(line: 968, column: 3, scope: !3219)
!3318 = !DILocation(line: 973, column: 27, scope: !3219)
!3319 = !DILocation(line: 973, column: 13, scope: !3219)
!3320 = !DILocation(line: 973, column: 19, scope: !3219)
!3321 = !DILocation(line: 974, column: 33, scope: !3219)
!3322 = !DILocation(line: 974, column: 13, scope: !3219)
!3323 = !DILocation(line: 974, column: 25, scope: !3219)
!3324 = !DILocation(line: 975, column: 41, scope: !3219)
!3325 = !DILocation(line: 975, column: 17, scope: !3219)
!3326 = !DILocation(line: 976, column: 55, scope: !3219)
!3327 = !DILocation(line: 976, column: 47, scope: !3219)
!3328 = !DILocation(line: 976, column: 16, scope: !3219)
!3329 = !DILocation(line: 976, column: 28, scope: !3219)
!3330 = !DILocation(line: 977, column: 16, scope: !3219)
!3331 = !DILocation(line: 977, column: 22, scope: !3219)
!3332 = !DILocation(line: 978, column: 31, scope: !3219)
!3333 = !DILocation(line: 978, column: 16, scope: !3219)
!3334 = !DILocation(line: 978, column: 22, scope: !3219)
!3335 = !DILocation(line: 979, column: 26, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3219, file: !1, line: 979, column: 7)
!3337 = !DILocation(line: 979, column: 7, scope: !3219)
!3338 = !DILocation(line: 980, column: 5, scope: !3336)
!3339 = !DILocation(line: 981, column: 3, scope: !3219)
!3340 = !DILocation(line: 984, column: 15, scope: !3219)
!3341 = !DILocation(line: 985, column: 15, scope: !3219)
!3342 = !DILocation(line: 986, column: 15, scope: !3219)
!3343 = !DILocation(line: 987, column: 23, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3219, file: !1, line: 987, column: 3)
!3345 = !DILocation(line: 987, column: 45, scope: !3344)
!3346 = !DILocation(line: 988, column: 23, scope: !3344)
!3347 = !DILocation(line: 988, column: 49, scope: !3344)
!3348 = !DILocation(line: 0, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !1, line: 991, column: 5)
!3350 = distinct !DILexicalBlock(scope: !3344, file: !1, line: 987, column: 3)
!3351 = !DILocation(line: 987, column: 8, scope: !3344)
!3352 = !DILocation(line: 989, column: 9, scope: !3350)
!3353 = !DILocation(line: 989, column: 8, scope: !3350)
!3354 = !DILocation(line: 987, column: 3, scope: !3344)
!3355 = !DILocation(line: 992, column: 22, scope: !3349)
!3356 = !DILocation(line: 993, column: 22, scope: !3349)
!3357 = !DILocation(line: 995, column: 14, scope: !3349)
!3358 = !DILocation(line: 996, column: 12, scope: !3349)
!3359 = !DILocation(line: 997, column: 7, scope: !3349)
!3360 = !DILocation(line: 998, column: 14, scope: !3349)
!3361 = !DILocation(line: 1003, column: 11, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3349, file: !1, line: 1003, column: 11)
!3363 = !DILocation(line: 1003, column: 28, scope: !3362)
!3364 = !DILocation(line: 1004, column: 4, scope: !3362)
!3365 = !DILocation(line: 1004, column: 34, scope: !3362)
!3366 = !DILocation(line: 1005, column: 6, scope: !3362)
!3367 = !DILocation(line: 1004, column: 7, scope: !3362)
!3368 = !DILocation(line: 1003, column: 11, scope: !3349)
!3369 = !DILocation(line: 1006, column: 8, scope: !3362)
!3370 = !DILocation(line: 1006, column: 2, scope: !3362)
!3371 = !DILocation(line: 1007, column: 16, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3362, file: !1, line: 1007, column: 16)
!3373 = !DILocation(line: 1007, column: 33, scope: !3372)
!3374 = !DILocation(line: 1008, column: 9, scope: !3372)
!3375 = !DILocation(line: 1008, column: 39, scope: !3372)
!3376 = !DILocation(line: 1009, column: 11, scope: !3372)
!3377 = !DILocation(line: 1008, column: 12, scope: !3372)
!3378 = !DILocation(line: 1007, column: 16, scope: !3362)
!3379 = !DILocation(line: 1010, column: 8, scope: !3372)
!3380 = !DILocation(line: 1010, column: 2, scope: !3372)
!3381 = !DILocation(line: 1011, column: 43, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3372, file: !1, line: 1011, column: 16)
!3383 = !DILocation(line: 1011, column: 61, scope: !3382)
!3384 = !DILocation(line: 1011, column: 16, scope: !3382)
!3385 = !DILocation(line: 1011, column: 16, scope: !3372)
!3386 = !DILocation(line: 1013, column: 26, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3382, file: !1, line: 1012, column: 2)
!3388 = !DILocation(line: 1013, column: 10, scope: !3387)
!3389 = !DILocation(line: 1014, column: 4, scope: !3387)
!3390 = !DILocation(line: 1015, column: 2, scope: !3387)
!3391 = !DILocation(line: 1018, column: 26, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3382, file: !1, line: 1017, column: 2)
!3393 = !DILocation(line: 1018, column: 10, scope: !3392)
!3394 = !DILocation(line: 1019, column: 4, scope: !3392)
!3395 = !DILocation(line: 0, scope: !3362)
!3396 = !DILocation(line: 1022, column: 18, scope: !3349)
!3397 = !DILocation(line: 1023, column: 18, scope: !3349)
!3398 = !DILocation(line: 1024, column: 7, scope: !3349)
!3399 = !DILocation(line: 1024, column: 36, scope: !3349)
!3400 = !DILocation(line: 1026, column: 7, scope: !3349)
!3401 = !DILocation(line: 1027, column: 7, scope: !3349)
!3402 = !DILocation(line: 1028, column: 7, scope: !3349)
!3403 = !DILocation(line: 990, column: 8, scope: !3350)
!3404 = !DILocation(line: 990, column: 34, scope: !3350)
!3405 = !DILocation(line: 987, column: 3, scope: !3350)
!3406 = distinct !{!3406, !3354, !3407}
!3407 = !DILocation(line: 1029, column: 5, scope: !3344)
!3408 = !DILocation(line: 1031, column: 3, scope: !3219)
!3409 = !DILocation(line: 1034, column: 7, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3219, file: !1, line: 1034, column: 7)
!3411 = !DILocation(line: 1034, column: 7, scope: !3219)
!3412 = !DILocation(line: 1035, column: 5, scope: !3410)
!3413 = !DILocation(line: 1039, column: 15, scope: !3219)
!3414 = !DILocation(line: 1040, column: 3, scope: !3219)
!3415 = !DILocation(line: 1041, column: 32, scope: !3219)
!3416 = !DILocation(line: 1041, column: 3, scope: !3219)
!3417 = !DILocation(line: 1044, column: 11, scope: !3219)
!3418 = !DILocation(line: 1043, column: 8, scope: !3219)
!3419 = !DILocation(line: 1046, column: 9, scope: !3219)
!3420 = !DILocation(line: 1046, column: 3, scope: !3219)
!3421 = !DILocation(line: 1047, column: 3, scope: !3219)
!3422 = !DILocation(line: 1049, column: 8, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3219, file: !1, line: 1049, column: 3)
!3424 = !DILocation(line: 0, scope: !3423)
!3425 = !DILocation(line: 1049, column: 15, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3423, file: !1, line: 1049, column: 3)
!3427 = !DILocation(line: 1049, column: 3, scope: !3423)
!3428 = !DILocation(line: 1051, column: 25, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !1, line: 1050, column: 5)
!3430 = !DILocation(line: 1051, column: 12, scope: !3429)
!3431 = !DILocation(line: 1052, column: 7, scope: !3429)
!3432 = !DILocation(line: 1049, column: 53, scope: !3426)
!3433 = !DILocation(line: 1049, column: 3, scope: !3426)
!3434 = distinct !{!3434, !3427, !3435}
!3435 = !DILocation(line: 1053, column: 5, scope: !3423)
!3436 = !DILocation(line: 1054, column: 3, scope: !3219)
!3437 = !DILocation(line: 1055, column: 3, scope: !3219)
!3438 = !DILocation(line: 1060, column: 18, scope: !3219)
!3439 = !DILocation(line: 1060, column: 26, scope: !3219)
!3440 = !DILocation(line: 1061, column: 12, scope: !3219)
!3441 = !DILocation(line: 1062, column: 14, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3219, file: !1, line: 1062, column: 7)
!3443 = !DILocation(line: 1062, column: 7, scope: !3219)
!3444 = !DILocation(line: 1068, column: 61, scope: !3219)
!3445 = !DILocation(line: 1063, column: 59, scope: !3442)
!3446 = !DILocation(line: 1063, column: 42, scope: !3442)
!3447 = !DILocation(line: 1063, column: 5, scope: !3442)
!3448 = !DILocation(line: 1065, column: 32, scope: !3219)
!3449 = !DILocation(line: 1065, column: 13, scope: !3219)
!3450 = !DILocation(line: 1066, column: 14, scope: !3219)
!3451 = !DILocation(line: 1067, column: 21, scope: !3219)
!3452 = !DILocation(line: 1067, column: 49, scope: !3219)
!3453 = !DILocation(line: 1067, column: 13, scope: !3219)
!3454 = !DILocation(line: 1067, column: 19, scope: !3219)
!3455 = !DILocation(line: 1068, column: 44, scope: !3219)
!3456 = !DILocation(line: 1068, column: 13, scope: !3219)
!3457 = !DILocation(line: 1068, column: 25, scope: !3219)
!3458 = !DILocation(line: 1070, column: 9, scope: !3219)
!3459 = !DILocation(line: 1070, column: 15, scope: !3219)
!3460 = !DILocation(line: 1071, column: 22, scope: !3219)
!3461 = !DILocation(line: 1071, column: 9, scope: !3219)
!3462 = !DILocation(line: 1071, column: 19, scope: !3219)
!3463 = !DILocation(line: 1073, column: 41, scope: !3219)
!3464 = !DILocation(line: 1073, column: 17, scope: !3219)
!3465 = !DILocation(line: 1074, column: 23, scope: !3219)
!3466 = !DILocation(line: 1075, column: 59, scope: !3219)
!3467 = !DILocation(line: 1075, column: 47, scope: !3219)
!3468 = !DILocation(line: 1075, column: 28, scope: !3219)
!3469 = !DILocation(line: 1076, column: 33, scope: !3219)
!3470 = !DILocation(line: 1076, column: 51, scope: !3219)
!3471 = !DILocation(line: 1076, column: 39, scope: !3219)
!3472 = !DILocation(line: 1076, column: 16, scope: !3219)
!3473 = !DILocation(line: 1077, column: 26, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3219, file: !1, line: 1077, column: 7)
!3475 = !DILocation(line: 1077, column: 7, scope: !3219)
!3476 = !DILocation(line: 1078, column: 5, scope: !3474)
!3477 = !DILocation(line: 1079, column: 12, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3219, file: !1, line: 1079, column: 7)
!3479 = !DILocation(line: 1079, column: 7, scope: !3219)
!3480 = !DILocation(line: 1080, column: 5, scope: !3478)
!3481 = !DILocation(line: 1085, column: 9, scope: !3219)
!3482 = !DILocation(line: 1086, column: 13, scope: !3219)
!3483 = !DILocation(line: 1087, column: 14, scope: !3219)
!3484 = !DILocation(line: 1087, column: 25, scope: !3219)
!3485 = !DILocation(line: 1087, column: 3, scope: !3219)
!3486 = !DILocation(line: 1089, column: 34, scope: !3219)
!3487 = !DILocation(line: 1089, column: 3, scope: !3219)
!3488 = !DILocation(line: 1090, column: 33, scope: !3219)
!3489 = !DILocation(line: 1090, column: 3, scope: !3219)
!3490 = !DILocation(line: 1091, column: 33, scope: !3219)
!3491 = !DILocation(line: 1091, column: 3, scope: !3219)
!3492 = !DILocation(line: 1092, column: 3, scope: !3219)
!3493 = !DILocation(line: 1100, column: 1, scope: !3219)
!3494 = distinct !DISubprogram(name: "determine_exit_conditions", scope: !1, file: !1, line: 689, type: !3495, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3498)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{null, !1009, !3166, !5, !828, !828, !828, !3497, !828}
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!3498 = !{!3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518}
!3499 = !DILocalVariable(name: "loop", arg: 1, scope: !3494, file: !1, line: 689, type: !1009)
!3500 = !DILocalVariable(name: "desc", arg: 2, scope: !3494, file: !1, line: 689, type: !3166)
!3501 = !DILocalVariable(name: "factor", arg: 3, scope: !3494, file: !1, line: 690, type: !5)
!3502 = !DILocalVariable(name: "enter_cond", arg: 4, scope: !3494, file: !1, line: 690, type: !828)
!3503 = !DILocalVariable(name: "exit_base", arg: 5, scope: !3494, file: !1, line: 691, type: !828)
!3504 = !DILocalVariable(name: "exit_step", arg: 6, scope: !3494, file: !1, line: 691, type: !828)
!3505 = !DILocalVariable(name: "exit_cmp", arg: 7, scope: !3494, file: !1, line: 692, type: !3497)
!3506 = !DILocalVariable(name: "exit_bound", arg: 8, scope: !3494, file: !1, line: 692, type: !828)
!3507 = !DILocalVariable(name: "stmts", scope: !3494, file: !1, line: 694, type: !784)
!3508 = !DILocalVariable(name: "base", scope: !3494, file: !1, line: 695, type: !472)
!3509 = !DILocalVariable(name: "step", scope: !3494, file: !1, line: 696, type: !472)
!3510 = !DILocalVariable(name: "bound", scope: !3494, file: !1, line: 697, type: !472)
!3511 = !DILocalVariable(name: "type", scope: !3494, file: !1, line: 698, type: !472)
!3512 = !DILocalVariable(name: "bigstep", scope: !3494, file: !1, line: 699, type: !472)
!3513 = !DILocalVariable(name: "delta", scope: !3494, file: !1, line: 699, type: !472)
!3514 = !DILocalVariable(name: "min", scope: !3494, file: !1, line: 700, type: !472)
!3515 = !DILocalVariable(name: "max", scope: !3494, file: !1, line: 701, type: !472)
!3516 = !DILocalVariable(name: "cmp", scope: !3494, file: !1, line: 702, type: !132)
!3517 = !DILocalVariable(name: "cond", scope: !3494, file: !1, line: 703, type: !472)
!3518 = !DILocalVariable(name: "assum", scope: !3494, file: !1, line: 703, type: !472)
!3519 = !DILocation(line: 0, scope: !3494)
!3520 = !DILocation(line: 694, column: 3, scope: !3494)
!3521 = !DILocation(line: 695, column: 29, scope: !3494)
!3522 = !DILocation(line: 696, column: 29, scope: !3494)
!3523 = !DILocation(line: 697, column: 22, scope: !3494)
!3524 = !DILocation(line: 698, column: 15, scope: !3494)
!3525 = !DILocation(line: 700, column: 14, scope: !3494)
!3526 = !DILocation(line: 701, column: 14, scope: !3494)
!3527 = !DILocation(line: 702, column: 30, scope: !3494)
!3528 = !DILocation(line: 703, column: 15, scope: !3494)
!3529 = !DILocation(line: 706, column: 10, scope: !3494)
!3530 = !DILocation(line: 707, column: 11, scope: !3494)
!3531 = !DILocation(line: 709, column: 17, scope: !3494)
!3532 = !DILocation(line: 709, column: 15, scope: !3494)
!3533 = !DILocation(line: 710, column: 14, scope: !3494)
!3534 = !DILocation(line: 711, column: 14, scope: !3494)
!3535 = !DILocation(line: 712, column: 13, scope: !3494)
!3536 = !DILocation(line: 713, column: 15, scope: !3494)
!3537 = !DILocation(line: 714, column: 3, scope: !3494)
!3538 = !DILocation(line: 720, column: 7, scope: !3494)
!3539 = !DILocation(line: 722, column: 11, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !1, line: 722, column: 11)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !1, line: 721, column: 5)
!3542 = distinct !DILexicalBlock(scope: !3494, file: !1, line: 720, column: 7)
!3543 = !DILocation(line: 726, column: 5, scope: !3541)
!3544 = !DILocation(line: 729, column: 7, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !1, line: 728, column: 5)
!3546 = distinct !DILexicalBlock(scope: !3542, file: !1, line: 727, column: 12)
!3547 = !DILocation(line: 733, column: 7, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !1, line: 732, column: 5)
!3549 = distinct !DILexicalBlock(scope: !3546, file: !1, line: 731, column: 12)
!3550 = !DILocation(line: 736, column: 5, scope: !3549)
!3551 = !DILocation(line: 745, column: 29, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3494, file: !1, line: 745, column: 7)
!3553 = !DILocation(line: 745, column: 8, scope: !3552)
!3554 = !DILocation(line: 745, column: 7, scope: !3494)
!3555 = !DILocation(line: 746, column: 12, scope: !3552)
!3556 = !DILocation(line: 746, column: 5, scope: !3552)
!3557 = !DILocation(line: 750, column: 13, scope: !3494)
!3558 = !DILocation(line: 752, column: 11, scope: !3494)
!3559 = !DILocation(line: 753, column: 11, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3494, file: !1, line: 753, column: 7)
!3561 = !DILocation(line: 0, scope: !3560)
!3562 = !DILocation(line: 753, column: 7, scope: !3494)
!3563 = !DILocation(line: 754, column: 13, scope: !3560)
!3564 = !DILocation(line: 754, column: 5, scope: !3560)
!3565 = !DILocation(line: 758, column: 13, scope: !3560)
!3566 = !DILocation(line: 761, column: 10, scope: !3494)
!3567 = !DILocation(line: 763, column: 11, scope: !3494)
!3568 = !DILocation(line: 764, column: 11, scope: !3494)
!3569 = !DILocation(line: 765, column: 10, scope: !3494)
!3570 = !DILocation(line: 767, column: 32, scope: !3494)
!3571 = !DILocation(line: 767, column: 10, scope: !3494)
!3572 = !DILocation(line: 768, column: 7, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3494, file: !1, line: 768, column: 7)
!3574 = !DILocation(line: 768, column: 7, scope: !3494)
!3575 = !DILocation(line: 769, column: 39, scope: !3573)
!3576 = !DILocation(line: 769, column: 67, scope: !3573)
!3577 = !DILocation(line: 769, column: 5, scope: !3573)
!3578 = !DILocation(line: 773, column: 8, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3494, file: !1, line: 773, column: 7)
!3580 = !DILocation(line: 773, column: 7, scope: !3494)
!3581 = !DILocation(line: 775, column: 14, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3579, file: !1, line: 774, column: 5)
!3583 = !DILocation(line: 776, column: 11, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3582, file: !1, line: 776, column: 11)
!3585 = !DILocation(line: 776, column: 11, scope: !3582)
!3586 = !DILocation(line: 777, column: 36, scope: !3584)
!3587 = !DILocation(line: 777, column: 64, scope: !3584)
!3588 = !DILocation(line: 777, column: 2, scope: !3584)
!3589 = !DILocation(line: 779, column: 15, scope: !3494)
!3590 = !DILocation(line: 781, column: 32, scope: !3494)
!3591 = !DILocation(line: 781, column: 10, scope: !3494)
!3592 = !DILocation(line: 782, column: 7, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3494, file: !1, line: 782, column: 7)
!3594 = !DILocation(line: 782, column: 7, scope: !3494)
!3595 = !DILocation(line: 783, column: 39, scope: !3593)
!3596 = !DILocation(line: 783, column: 67, scope: !3593)
!3597 = !DILocation(line: 783, column: 5, scope: !3593)
!3598 = !DILocation(line: 784, column: 33, scope: !3494)
!3599 = !DILocation(line: 784, column: 11, scope: !3494)
!3600 = !DILocation(line: 785, column: 7, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3494, file: !1, line: 785, column: 7)
!3602 = !DILocation(line: 785, column: 7, scope: !3494)
!3603 = !DILocation(line: 786, column: 39, scope: !3601)
!3604 = !DILocation(line: 786, column: 67, scope: !3601)
!3605 = !DILocation(line: 786, column: 5, scope: !3601)
!3606 = !DILocation(line: 788, column: 14, scope: !3494)
!3607 = !DILocation(line: 789, column: 14, scope: !3494)
!3608 = !DILocation(line: 790, column: 13, scope: !3494)
!3609 = !DILocation(line: 791, column: 15, scope: !3494)
!3610 = !DILocation(line: 792, column: 1, scope: !3494)
!3611 = distinct !DISubprogram(name: "single_pred_edge", scope: !341, file: !341, line: 653, type: !2901, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3612)
!3612 = !{!3613}
!3613 = !DILocalVariable(name: "bb", arg: 1, scope: !3611, file: !341, line: 653, type: !2903)
!3614 = !DILocation(line: 0, scope: !3611)
!3615 = !DILocation(line: 655, column: 3, scope: !3611)
!3616 = !DILocation(line: 656, column: 10, scope: !3611)
!3617 = !DILocation(line: 656, column: 3, scope: !3611)
!3618 = distinct !DISubprogram(name: "scale_dominated_blocks_in_loop", scope: !1, file: !1, line: 798, type: !3619, scopeLine: 800, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3621)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{null, !1009, !1280, !463, !463}
!3621 = !{!3622, !3623, !3624, !3625, !3626}
!3622 = !DILocalVariable(name: "loop", arg: 1, scope: !3618, file: !1, line: 798, type: !1009)
!3623 = !DILocalVariable(name: "bb", arg: 2, scope: !3618, file: !1, line: 798, type: !1280)
!3624 = !DILocalVariable(name: "num", arg: 3, scope: !3618, file: !1, line: 799, type: !463)
!3625 = !DILocalVariable(name: "den", arg: 4, scope: !3618, file: !1, line: 799, type: !463)
!3626 = !DILocalVariable(name: "son", scope: !3618, file: !1, line: 801, type: !1280)
!3627 = !DILocation(line: 0, scope: !3618)
!3628 = !DILocation(line: 801, column: 3, scope: !3618)
!3629 = !DILocation(line: 803, column: 11, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3618, file: !1, line: 803, column: 7)
!3631 = !DILocation(line: 803, column: 7, scope: !3618)
!3632 = !DILocation(line: 806, column: 14, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3618, file: !1, line: 806, column: 3)
!3634 = !DILocation(line: 806, column: 8, scope: !3633)
!3635 = !DILocation(line: 0, scope: !3633)
!3636 = !DILocation(line: 806, column: 3, scope: !3633)
!3637 = !DILocation(line: 810, column: 12, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !1, line: 810, column: 11)
!3639 = distinct !DILexicalBlock(scope: !3640, file: !1, line: 809, column: 5)
!3640 = distinct !DILexicalBlock(scope: !3633, file: !1, line: 806, column: 3)
!3641 = !DILocation(line: 810, column: 11, scope: !3639)
!3642 = !DILocation(line: 812, column: 7, scope: !3639)
!3643 = !DILocation(line: 813, column: 45, scope: !3639)
!3644 = !DILocation(line: 813, column: 7, scope: !3639)
!3645 = !DILocation(line: 814, column: 5, scope: !3639)
!3646 = !DILocation(line: 808, column: 44, scope: !3640)
!3647 = !DILocation(line: 808, column: 14, scope: !3640)
!3648 = !DILocation(line: 806, column: 3, scope: !3640)
!3649 = distinct !{!3649, !3636, !3650}
!3650 = !DILocation(line: 814, column: 5, scope: !3633)
!3651 = !DILocation(line: 815, column: 1, scope: !3618)
!3652 = distinct !DISubprogram(name: "RESET_BIT", scope: !3064, file: !3064, line: 82, type: !3653, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3655)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{null, !3063, !5}
!3655 = !{!3656, !3657, !3658}
!3656 = !DILocalVariable(name: "map", arg: 1, scope: !3652, file: !3064, line: 82, type: !3063)
!3657 = !DILocalVariable(name: "bitno", arg: 2, scope: !3652, file: !3064, line: 82, type: !5)
!3658 = !DILocalVariable(name: "oldbit", scope: !3659, file: !3064, line: 86, type: !462)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !3064, line: 85, column: 5)
!3660 = distinct !DILexicalBlock(scope: !3652, file: !3064, line: 84, column: 7)
!3661 = !DILocation(line: 0, scope: !3652)
!3662 = !DILocation(line: 84, column: 12, scope: !3660)
!3663 = !DILocation(line: 84, column: 7, scope: !3660)
!3664 = !DILocation(line: 84, column: 7, scope: !3652)
!3665 = !DILocation(line: 92, column: 42, scope: !3652)
!3666 = !DILocation(line: 92, column: 31, scope: !3652)
!3667 = !DILocation(line: 91, column: 19, scope: !3652)
!3668 = !DILocation(line: 91, column: 3, scope: !3652)
!3669 = !DILocation(line: 87, column: 16, scope: !3659)
!3670 = !DILocation(line: 88, column: 11, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3659, file: !3064, line: 88, column: 11)
!3672 = !DILocation(line: 88, column: 11, scope: !3659)
!3673 = !DILocation(line: 89, column: 2, scope: !3671)
!3674 = !DILocation(line: 89, column: 41, scope: !3671)
!3675 = !DILocation(line: 92, column: 8, scope: !3652)
!3676 = !DILocation(line: 92, column: 5, scope: !3652)
!3677 = !DILocation(line: 93, column: 1, scope: !3652)
!3678 = distinct !DISubprogram(name: "VEC_edge_base_iterate", scope: !341, file: !341, line: 150, type: !3679, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3681)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!463, !3008, !5, !2724}
!3681 = !{!3682, !3683, !3684}
!3682 = !DILocalVariable(name: "vec_", arg: 1, scope: !3678, file: !341, line: 150, type: !3008)
!3683 = !DILocalVariable(name: "ix_", arg: 2, scope: !3678, file: !341, line: 150, type: !5)
!3684 = !DILocalVariable(name: "ptr", arg: 3, scope: !3678, file: !341, line: 150, type: !2724)
!3685 = !DILocation(line: 0, scope: !3678)
!3686 = !DILocation(line: 150, column: 1, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3678, file: !341, line: 150, column: 1)
!3688 = !DILocation(line: 150, column: 1, scope: !3678)
!3689 = !DILocation(line: 150, column: 1, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3687, file: !341, line: 150, column: 1)
!3691 = !DILocation(line: 150, column: 1, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3687, file: !341, line: 150, column: 1)
!3693 = !DILocation(line: 0, scope: !3687)
!3694 = distinct !DISubprogram(name: "VEC_edge_heap_free", scope: !341, file: !341, line: 152, type: !3695, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3697)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{null, !3073}
!3697 = !{!3698}
!3698 = !DILocalVariable(name: "vec_", arg: 1, scope: !3694, file: !341, line: 152, type: !3073)
!3699 = !DILocation(line: 0, scope: !3694)
!3700 = !DILocation(line: 152, column: 1, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3694, file: !341, line: 152, column: 1)
!3702 = !DILocation(line: 152, column: 1, scope: !3694)
!3703 = distinct !DISubprogram(name: "gimple_cond_set_code", scope: !396, file: !396, line: 2231, type: !3704, scopeLine: 2232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3706)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{null, !794, !132}
!3706 = !{!3707, !3708}
!3707 = !DILocalVariable(name: "gs", arg: 1, scope: !3703, file: !396, line: 2231, type: !794)
!3708 = !DILocalVariable(name: "code", arg: 2, scope: !3703, file: !396, line: 2231, type: !132)
!3709 = !DILocation(line: 0, scope: !3703)
!3710 = !DILocation(line: 2234, column: 14, scope: !3703)
!3711 = !DILocation(line: 2234, column: 22, scope: !3703)
!3712 = !DILocation(line: 2235, column: 1, scope: !3703)
!3713 = distinct !DISubprogram(name: "gimple_cond_set_lhs", scope: !396, file: !396, line: 2261, type: !3714, scopeLine: 2262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3716)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{null, !794, !472}
!3716 = !{!3717, !3718}
!3717 = !DILocalVariable(name: "gs", arg: 1, scope: !3713, file: !396, line: 2261, type: !794)
!3718 = !DILocalVariable(name: "lhs", arg: 2, scope: !3713, file: !396, line: 2261, type: !472)
!3719 = !DILocation(line: 0, scope: !3713)
!3720 = !DILocation(line: 2264, column: 3, scope: !3713)
!3721 = !DILocation(line: 2265, column: 1, scope: !3713)
!3722 = distinct !DISubprogram(name: "gimple_cond_set_rhs", scope: !396, file: !396, line: 2292, type: !3714, scopeLine: 2293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3723)
!3723 = !{!3724, !3725}
!3724 = !DILocalVariable(name: "gs", arg: 1, scope: !3722, file: !396, line: 2292, type: !794)
!3725 = !DILocalVariable(name: "rhs", arg: 2, scope: !3722, file: !396, line: 2292, type: !472)
!3726 = !DILocation(line: 0, scope: !3722)
!3727 = !DILocation(line: 2295, column: 3, scope: !3722)
!3728 = !DILocation(line: 2296, column: 1, scope: !3722)
!3729 = distinct !DISubprogram(name: "update_stmt", scope: !396, file: !396, line: 1456, type: !3730, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{null, !794}
!3732 = !{!3733}
!3733 = !DILocalVariable(name: "s", arg: 1, scope: !3729, file: !396, line: 1456, type: !794)
!3734 = !DILocation(line: 0, scope: !3729)
!3735 = !DILocation(line: 1458, column: 7, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3729, file: !396, line: 1458, column: 7)
!3737 = !DILocation(line: 1458, column: 7, scope: !3729)
!3738 = !DILocation(line: 1460, column: 7, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3736, file: !396, line: 1459, column: 5)
!3740 = !DILocation(line: 1461, column: 7, scope: !3739)
!3741 = !DILocation(line: 1462, column: 5, scope: !3739)
!3742 = !DILocation(line: 1463, column: 1, scope: !3729)
!3743 = distinct !DISubprogram(name: "tree_unroll_loop", scope: !1, file: !1, line: 1107, type: !3744, scopeLine: 1109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3746)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{null, !1009, !5, !774, !3166}
!3746 = !{!3747, !3748, !3749, !3750}
!3747 = !DILocalVariable(name: "loop", arg: 1, scope: !3743, file: !1, line: 1107, type: !1009)
!3748 = !DILocalVariable(name: "factor", arg: 2, scope: !3743, file: !1, line: 1107, type: !5)
!3749 = !DILocalVariable(name: "exit", arg: 3, scope: !3743, file: !1, line: 1108, type: !774)
!3750 = !DILocalVariable(name: "desc", arg: 4, scope: !3743, file: !1, line: 1108, type: !3166)
!3751 = !DILocation(line: 0, scope: !3743)
!3752 = !DILocation(line: 1110, column: 3, scope: !3743)
!3753 = !DILocation(line: 1112, column: 1, scope: !3743)
!3754 = distinct !DISubprogram(name: "canonicalize_loop_ivs", scope: !1, file: !1, line: 1191, type: !3755, scopeLine: 1192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3757)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!472, !1009, !828, !462}
!3757 = !{!3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3774, !3775, !3778}
!3758 = !DILocalVariable(name: "loop", arg: 1, scope: !3754, file: !1, line: 1191, type: !1009)
!3759 = !DILocalVariable(name: "nit", arg: 2, scope: !3754, file: !1, line: 1191, type: !828)
!3760 = !DILocalVariable(name: "bump_in_latch", arg: 3, scope: !3754, file: !1, line: 1191, type: !462)
!3761 = !DILocalVariable(name: "precision", scope: !3754, file: !1, line: 1193, type: !5)
!3762 = !DILocalVariable(name: "original_precision", scope: !3754, file: !1, line: 1194, type: !5)
!3763 = !DILocalVariable(name: "type", scope: !3754, file: !1, line: 1195, type: !472)
!3764 = !DILocalVariable(name: "var_before", scope: !3754, file: !1, line: 1195, type: !472)
!3765 = !DILocalVariable(name: "gsi", scope: !3754, file: !1, line: 1196, type: !2309)
!3766 = !DILocalVariable(name: "psi", scope: !3754, file: !1, line: 1196, type: !2309)
!3767 = !DILocalVariable(name: "stmt", scope: !3754, file: !1, line: 1197, type: !794)
!3768 = !DILocalVariable(name: "exit", scope: !3754, file: !1, line: 1198, type: !774)
!3769 = !DILocalVariable(name: "stmts", scope: !3754, file: !1, line: 1199, type: !784)
!3770 = !DILocalVariable(name: "phi", scope: !3771, file: !1, line: 1204, type: !794)
!3771 = distinct !DILexicalBlock(scope: !3772, file: !1, line: 1203, column: 5)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !1, line: 1201, column: 3)
!3773 = distinct !DILexicalBlock(scope: !3754, file: !1, line: 1201, column: 3)
!3774 = !DILocalVariable(name: "res", scope: !3771, file: !1, line: 1205, type: !472)
!3775 = !DILocalVariable(name: "te", scope: !3776, file: !1, line: 1231, type: !774)
!3776 = distinct !DILexicalBlock(scope: !3777, file: !1, line: 1230, column: 5)
!3777 = distinct !DILexicalBlock(scope: !3754, file: !1, line: 1229, column: 7)
!3778 = !DILocalVariable(name: "fe", scope: !3776, file: !1, line: 1231, type: !774)
!3779 = !DILocation(line: 0, scope: !3754)
!3780 = !DILocation(line: 1193, column: 24, scope: !3754)
!3781 = !DILocation(line: 1195, column: 3, scope: !3754)
!3782 = !DILocation(line: 1196, column: 3, scope: !3754)
!3783 = !DILocation(line: 1198, column: 15, scope: !3754)
!3784 = !DILocation(line: 1199, column: 3, scope: !3754)
!3785 = !DILocation(line: 1201, column: 14, scope: !3773)
!3786 = !DILocation(line: 1201, column: 36, scope: !3773)
!3787 = !DILocation(line: 1201, column: 8, scope: !3773)
!3788 = !DILocation(line: 1202, column: 9, scope: !3772)
!3789 = !DILocation(line: 1202, column: 8, scope: !3772)
!3790 = !DILocation(line: 1201, column: 3, scope: !3773)
!3791 = !DILocation(line: 1204, column: 20, scope: !3771)
!3792 = !DILocation(line: 0, scope: !3771)
!3793 = !DILocation(line: 1205, column: 18, scope: !3771)
!3794 = !DILocation(line: 1207, column: 11, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3771, file: !1, line: 1207, column: 11)
!3796 = !DILocation(line: 1207, column: 31, scope: !3795)
!3797 = !DILocation(line: 1207, column: 34, scope: !3795)
!3798 = !DILocation(line: 1207, column: 67, scope: !3795)
!3799 = !DILocation(line: 1207, column: 11, scope: !3771)
!3800 = !DILocation(line: 1208, column: 2, scope: !3795)
!3801 = !DILocation(line: 1202, column: 26, scope: !3772)
!3802 = !DILocation(line: 1201, column: 3, scope: !3772)
!3803 = distinct !{!3803, !3790, !3804}
!3804 = !DILocation(line: 1209, column: 5, scope: !3773)
!3805 = !DILocation(line: 1211, column: 27, scope: !3754)
!3806 = !DILocation(line: 1211, column: 10, scope: !3754)
!3807 = !DILocation(line: 1213, column: 26, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3754, file: !1, line: 1213, column: 7)
!3809 = !DILocation(line: 1213, column: 7, scope: !3754)
!3810 = !DILocation(line: 1215, column: 14, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3808, file: !1, line: 1214, column: 5)
!3812 = !DILocation(line: 1215, column: 12, scope: !3811)
!3813 = !DILocation(line: 1216, column: 14, scope: !3811)
!3814 = !DILocation(line: 1216, column: 12, scope: !3811)
!3815 = !DILocation(line: 1217, column: 11, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3811, file: !1, line: 1217, column: 11)
!3817 = !DILocation(line: 1217, column: 11, scope: !3811)
!3818 = !DILocation(line: 1218, column: 36, scope: !3816)
!3819 = !DILocation(line: 1218, column: 64, scope: !3816)
!3820 = !DILocation(line: 1218, column: 2, scope: !3816)
!3821 = !DILocation(line: 1221, column: 9, scope: !3754)
!3822 = !DILocation(line: 1221, column: 22, scope: !3754)
!3823 = !DILocation(line: 1221, column: 44, scope: !3754)
!3824 = !DILocation(line: 1222, column: 14, scope: !3754)
!3825 = !DILocation(line: 1222, column: 44, scope: !3754)
!3826 = !DILocation(line: 1222, column: 3, scope: !3754)
!3827 = !DILocation(line: 1225, column: 40, scope: !3754)
!3828 = !DILocation(line: 1225, column: 3, scope: !3754)
!3829 = !DILocation(line: 1227, column: 27, scope: !3754)
!3830 = !DILocation(line: 1227, column: 10, scope: !3754)
!3831 = !DILocation(line: 1229, column: 13, scope: !3777)
!3832 = !DILocation(line: 1229, column: 19, scope: !3777)
!3833 = !DILocation(line: 1229, column: 7, scope: !3754)
!3834 = !DILocation(line: 1231, column: 7, scope: !3776)
!3835 = !DILocation(line: 1233, column: 50, scope: !3776)
!3836 = !DILocation(line: 0, scope: !3776)
!3837 = !DILocation(line: 1233, column: 7, scope: !3776)
!3838 = !DILocation(line: 1234, column: 7, scope: !3776)
!3839 = !DILocation(line: 1234, column: 11, scope: !3776)
!3840 = !DILocation(line: 1234, column: 17, scope: !3776)
!3841 = !DILocation(line: 1235, column: 7, scope: !3776)
!3842 = !DILocation(line: 1235, column: 11, scope: !3776)
!3843 = !DILocation(line: 1235, column: 17, scope: !3776)
!3844 = !DILocation(line: 1236, column: 5, scope: !3777)
!3845 = !DILocation(line: 1236, column: 5, scope: !3776)
!3846 = !DILocation(line: 1237, column: 3, scope: !3754)
!3847 = !DILocation(line: 1238, column: 30, scope: !3754)
!3848 = !DILocation(line: 1238, column: 3, scope: !3754)
!3849 = !DILocation(line: 1239, column: 30, scope: !3754)
!3850 = !DILocation(line: 1239, column: 3, scope: !3754)
!3851 = !DILocation(line: 1240, column: 3, scope: !3754)
!3852 = !DILocation(line: 1242, column: 10, scope: !3754)
!3853 = !DILocation(line: 1243, column: 1, scope: !3754)
!3854 = !DILocation(line: 1242, column: 3, scope: !3754)
!3855 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2424, file: !2424, line: 434, type: !3856, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3859)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!472, !3858}
!3858 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !389, line: 27, baseType: !828)
!3859 = !{!3860}
!3860 = !DILocalVariable(name: "def", arg: 1, scope: !3855, file: !2424, line: 434, type: !3858)
!3861 = !DILocation(line: 0, scope: !3855)
!3862 = !DILocation(line: 436, column: 10, scope: !3855)
!3863 = !DILocation(line: 436, column: 3, scope: !3855)
!3864 = distinct !DISubprogram(name: "gimple_phi_result_ptr", scope: !396, file: !396, line: 3080, type: !3865, scopeLine: 3081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3867)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!828, !794}
!3867 = !{!3868}
!3868 = !DILocalVariable(name: "gs", arg: 1, scope: !3864, file: !396, line: 3080, type: !794)
!3869 = !DILocation(line: 0, scope: !3864)
!3870 = !DILocation(line: 3083, column: 26, scope: !3864)
!3871 = !DILocation(line: 3083, column: 3, scope: !3864)
!3872 = distinct !DISubprogram(name: "rewrite_all_phi_nodes_with_iv", scope: !1, file: !1, line: 1159, type: !3873, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !1036, !472}
!3875 = !{!3876, !3877, !3878, !3879, !3881, !3882, !3886}
!3876 = !DILocalVariable(name: "loop", arg: 1, scope: !3872, file: !1, line: 1159, type: !1036)
!3877 = !DILocalVariable(name: "main_iv", arg: 2, scope: !3872, file: !1, line: 1159, type: !472)
!3878 = !DILocalVariable(name: "i", scope: !3872, file: !1, line: 1161, type: !5)
!3879 = !DILocalVariable(name: "bbs", scope: !3872, file: !1, line: 1162, type: !3880)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!3881 = !DILocalVariable(name: "psi", scope: !3872, file: !1, line: 1163, type: !2309)
!3882 = !DILocalVariable(name: "bb", scope: !3883, file: !1, line: 1167, type: !1280)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !1, line: 1166, column: 5)
!3884 = distinct !DILexicalBlock(scope: !3885, file: !1, line: 1165, column: 3)
!3885 = distinct !DILexicalBlock(scope: !3872, file: !1, line: 1165, column: 3)
!3886 = !DILocalVariable(name: "gsi", scope: !3883, file: !1, line: 1168, type: !2309)
!3887 = !DILocation(line: 0, scope: !3872)
!3888 = !DILocation(line: 1162, column: 22, scope: !3872)
!3889 = !DILocation(line: 1163, column: 3, scope: !3872)
!3890 = !DILocation(line: 0, scope: !3884)
!3891 = !DILocation(line: 0, scope: !3883)
!3892 = !DILocation(line: 0, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3883, file: !1, line: 1173, column: 7)
!3894 = !DILocation(line: 1165, column: 8, scope: !3885)
!3895 = !DILocation(line: 0, scope: !3885)
!3896 = !DILocation(line: 1165, column: 25, scope: !3884)
!3897 = !DILocation(line: 1165, column: 17, scope: !3884)
!3898 = !DILocation(line: 1165, column: 3, scope: !3885)
!3899 = !DILocation(line: 1167, column: 24, scope: !3883)
!3900 = !DILocation(line: 1168, column: 7, scope: !3883)
!3901 = !DILocation(line: 1168, column: 34, scope: !3883)
!3902 = !DILocation(line: 1170, column: 15, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3883, file: !1, line: 1170, column: 11)
!3904 = !DILocation(line: 1170, column: 27, scope: !3903)
!3905 = !DILocation(line: 1170, column: 11, scope: !3883)
!3906 = !DILocation(line: 1173, column: 18, scope: !3893)
!3907 = !DILocation(line: 1173, column: 12, scope: !3893)
!3908 = !DILocation(line: 1173, column: 40, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3893, file: !1, line: 1173, column: 7)
!3910 = !DILocation(line: 1173, column: 39, scope: !3909)
!3911 = !DILocation(line: 1173, column: 7, scope: !3893)
!3912 = !DILocation(line: 1174, column: 2, scope: !3909)
!3913 = !DILocation(line: 1173, column: 7, scope: !3909)
!3914 = distinct !{!3914, !3911, !3915}
!3915 = !DILocation(line: 1174, column: 48, scope: !3893)
!3916 = !DILocation(line: 1175, column: 5, scope: !3884)
!3917 = !DILocation(line: 1165, column: 37, scope: !3884)
!3918 = !DILocation(line: 1165, column: 3, scope: !3884)
!3919 = distinct !{!3919, !3898, !3920}
!3920 = !DILocation(line: 1175, column: 5, scope: !3885)
!3921 = !DILocation(line: 1177, column: 9, scope: !3872)
!3922 = !DILocation(line: 1177, column: 3, scope: !3872)
!3923 = !DILocation(line: 1178, column: 1, scope: !3872)
!3924 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !328, file: !328, line: 85, type: !3925, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3929)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!5, !3927}
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1029)
!3929 = !{!3930}
!3930 = !DILocalVariable(name: "vec_", arg: 1, scope: !3924, file: !328, line: 85, type: !3927)
!3931 = !DILocation(line: 0, scope: !3924)
!3932 = !DILocation(line: 85, column: 1, scope: !3924)
!3933 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !699, file: !699, line: 224, type: !3934, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3941)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{null, !3936, !3937, !5, !3940}
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !473, line: 48, baseType: !3938)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!3941 = !{!3942, !3943, !3944, !3945}
!3942 = !DILocalVariable(name: "bi", arg: 1, scope: !3933, file: !699, line: 224, type: !3936)
!3943 = !DILocalVariable(name: "map", arg: 2, scope: !3933, file: !699, line: 224, type: !3937)
!3944 = !DILocalVariable(name: "start_bit", arg: 3, scope: !3933, file: !699, line: 225, type: !5)
!3945 = !DILocalVariable(name: "bit_no", arg: 4, scope: !3933, file: !699, line: 225, type: !3940)
!3946 = !DILocation(line: 0, scope: !3933)
!3947 = !DILocation(line: 227, column: 19, scope: !3933)
!3948 = !DILocation(line: 227, column: 12, scope: !3933)
!3949 = !DILocation(line: 228, column: 7, scope: !3933)
!3950 = !DILocation(line: 228, column: 12, scope: !3933)
!3951 = !DILocation(line: 0, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !699, line: 233, column: 11)
!3953 = distinct !DILexicalBlock(scope: !3933, file: !699, line: 232, column: 5)
!3954 = !DILocation(line: 231, column: 3, scope: !3933)
!3955 = !DILocation(line: 233, column: 12, scope: !3952)
!3956 = !DILocation(line: 233, column: 11, scope: !3953)
!3957 = !DILocation(line: 235, column: 13, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3952, file: !699, line: 234, column: 2)
!3959 = !DILocation(line: 236, column: 4, scope: !3958)
!3960 = !DILocation(line: 239, column: 11, scope: !3953)
!3961 = distinct !{!3961, !3954, !3962}
!3962 = !DILocation(line: 242, column: 5, scope: !3933)
!3963 = !DILocation(line: 245, column: 11, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3933, file: !699, line: 245, column: 7)
!3965 = !DILocation(line: 245, column: 17, scope: !3964)
!3966 = !DILocation(line: 245, column: 22, scope: !3964)
!3967 = !DILocation(line: 245, column: 7, scope: !3933)
!3968 = !DILocation(line: 246, column: 27, scope: !3964)
!3969 = !DILocation(line: 246, column: 32, scope: !3964)
!3970 = !DILocation(line: 246, column: 5, scope: !3964)
!3971 = !DILocation(line: 249, column: 7, scope: !3933)
!3972 = !DILocation(line: 249, column: 15, scope: !3933)
!3973 = !DILocation(line: 250, column: 14, scope: !3933)
!3974 = !DILocation(line: 251, column: 7, scope: !3933)
!3975 = !DILocation(line: 251, column: 12, scope: !3933)
!3976 = !DILocation(line: 257, column: 16, scope: !3933)
!3977 = !DILocation(line: 257, column: 13, scope: !3933)
!3978 = !DILocation(line: 259, column: 11, scope: !3933)
!3979 = !DILocation(line: 260, column: 1, scope: !3933)
!3980 = distinct !DISubprogram(name: "bmp_iter_set", scope: !699, file: !699, line: 393, type: !3981, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3983)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!462, !3936, !3940}
!3983 = !{!3984, !3985, !3986}
!3984 = !DILocalVariable(name: "bi", arg: 1, scope: !3980, file: !699, line: 393, type: !3936)
!3985 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3980, file: !699, line: 393, type: !3940)
!3986 = !DILabel(scope: !3987, name: "next_bit", file: !699, line: 398)
!3987 = distinct !DILexicalBlock(scope: !3988, file: !699, line: 397, column: 5)
!3988 = distinct !DILexicalBlock(scope: !3980, file: !699, line: 396, column: 7)
!3989 = !DILocation(line: 0, scope: !3980)
!3990 = !DILocation(line: 396, column: 11, scope: !3988)
!3991 = !DILocation(line: 396, column: 7, scope: !3988)
!3992 = !DILocation(line: 396, column: 7, scope: !3980)
!3993 = !DILocation(line: 419, column: 15, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !699, line: 418, column: 2)
!3995 = distinct !DILexicalBlock(scope: !3980, file: !699, line: 415, column: 5)
!3996 = !DILocation(line: 399, column: 7, scope: !3987)
!3997 = !DILocation(line: 398, column: 5, scope: !3987)
!3998 = !DILocation(line: 399, column: 20, scope: !3987)
!3999 = !DILocation(line: 399, column: 25, scope: !3987)
!4000 = !DILocation(line: 399, column: 14, scope: !3987)
!4001 = !DILocation(line: 401, column: 13, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3987, file: !699, line: 400, column: 2)
!4003 = !DILocation(line: 402, column: 12, scope: !4002)
!4004 = distinct !{!4004, !3996, !4005}
!4005 = !DILocation(line: 403, column: 2, scope: !3987)
!4006 = !DILocation(line: 410, column: 15, scope: !3980)
!4007 = !DILocation(line: 410, column: 42, scope: !3980)
!4008 = !DILocation(line: 411, column: 26, scope: !3980)
!4009 = !DILocation(line: 410, column: 11, scope: !3980)
!4010 = !DILocation(line: 412, column: 7, scope: !3980)
!4011 = !DILocation(line: 412, column: 14, scope: !3980)
!4012 = !DILocation(line: 0, scope: !3995)
!4013 = !DILocation(line: 414, column: 3, scope: !3980)
!4014 = !DILocation(line: 417, column: 7, scope: !3995)
!4015 = !DILocation(line: 417, column: 18, scope: !3995)
!4016 = !DILocation(line: 417, column: 26, scope: !3995)
!4017 = !DILocation(line: 419, column: 13, scope: !3994)
!4018 = !DILocation(line: 420, column: 8, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3994, file: !699, line: 420, column: 8)
!4020 = !DILocation(line: 420, column: 8, scope: !3994)
!4021 = !DILocation(line: 422, column: 12, scope: !3994)
!4022 = !DILocation(line: 423, column: 15, scope: !3994)
!4023 = distinct !{!4023, !4014, !4024}
!4024 = !DILocation(line: 424, column: 2, scope: !3995)
!4025 = !DILocation(line: 427, column: 28, scope: !3995)
!4026 = !DILocation(line: 427, column: 16, scope: !3995)
!4027 = !DILocation(line: 428, column: 12, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3995, file: !699, line: 428, column: 11)
!4029 = !DILocation(line: 428, column: 11, scope: !3995)
!4030 = !DILocation(line: 430, column: 27, scope: !3995)
!4031 = !DILocation(line: 430, column: 32, scope: !3995)
!4032 = !DILocation(line: 430, column: 15, scope: !3995)
!4033 = !DILocation(line: 431, column: 19, scope: !3995)
!4034 = distinct !{!4034, !4013, !4035}
!4035 = !DILocation(line: 432, column: 5, scope: !3980)
!4036 = !DILocation(line: 433, column: 1, scope: !3980)
!4037 = distinct !DISubprogram(name: "find_uses_to_rename_bb", scope: !1, file: !1, line: 296, type: !4038, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4040)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !1280, !1854, !1396}
!4040 = !{!4041, !4042, !4043, !4044, !4045, !4046}
!4041 = !DILocalVariable(name: "bb", arg: 1, scope: !4037, file: !1, line: 296, type: !1280)
!4042 = !DILocalVariable(name: "use_blocks", arg: 2, scope: !4037, file: !1, line: 296, type: !1854)
!4043 = !DILocalVariable(name: "need_phis", arg: 3, scope: !4037, file: !1, line: 296, type: !1396)
!4044 = !DILocalVariable(name: "bsi", scope: !4037, file: !1, line: 298, type: !2309)
!4045 = !DILocalVariable(name: "e", scope: !4037, file: !1, line: 299, type: !774)
!4046 = !DILocalVariable(name: "ei", scope: !4037, file: !1, line: 300, type: !2502)
!4047 = !DILocation(line: 0, scope: !4037)
!4048 = !DILocation(line: 298, column: 3, scope: !4037)
!4049 = !DILocation(line: 299, column: 3, scope: !4037)
!4050 = !DILocation(line: 300, column: 3, scope: !4037)
!4051 = !DILocation(line: 302, column: 3, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4037, file: !1, line: 302, column: 3)
!4053 = !DILocation(line: 0, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4052, file: !1, line: 302, column: 3)
!4055 = !DILocation(line: 0, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4054, file: !1, line: 303, column: 5)
!4057 = !DILocation(line: 302, column: 3, scope: !4054)
!4058 = !DILocation(line: 303, column: 16, scope: !4056)
!4059 = !DILocation(line: 303, column: 32, scope: !4056)
!4060 = !DILocation(line: 303, column: 35, scope: !4056)
!4061 = !DILocation(line: 303, column: 10, scope: !4056)
!4062 = !DILocation(line: 303, column: 43, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4056, file: !1, line: 303, column: 5)
!4064 = !DILocation(line: 303, column: 42, scope: !4063)
!4065 = !DILocation(line: 303, column: 5, scope: !4056)
!4066 = !DILocation(line: 304, column: 36, scope: !4063)
!4067 = !DILocation(line: 304, column: 7, scope: !4063)
!4068 = !DILocation(line: 303, column: 60, scope: !4063)
!4069 = !DILocation(line: 303, column: 5, scope: !4063)
!4070 = distinct !{!4070, !4065, !4071}
!4071 = !DILocation(line: 305, column: 32, scope: !4056)
!4072 = distinct !{!4072, !4051, !4073}
!4073 = !DILocation(line: 305, column: 32, scope: !4052)
!4074 = !DILocation(line: 307, column: 14, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4037, file: !1, line: 307, column: 3)
!4076 = !DILocation(line: 307, column: 8, scope: !4075)
!4077 = !DILocation(line: 307, column: 34, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4075, file: !1, line: 307, column: 3)
!4079 = !DILocation(line: 307, column: 33, scope: !4078)
!4080 = !DILocation(line: 307, column: 3, scope: !4075)
!4081 = !DILocation(line: 308, column: 31, scope: !4078)
!4082 = !DILocation(line: 308, column: 5, scope: !4078)
!4083 = !DILocation(line: 307, column: 51, scope: !4078)
!4084 = !DILocation(line: 307, column: 3, scope: !4078)
!4085 = distinct !{!4085, !4080, !4086}
!4086 = !DILocation(line: 308, column: 68, scope: !4075)
!4087 = !DILocation(line: 309, column: 1, scope: !4037)
!4088 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !341, file: !341, line: 281, type: !4089, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4093)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!1280, !4091, !5}
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1288)
!4093 = !{!4094, !4095}
!4094 = !DILocalVariable(name: "vec_", arg: 1, scope: !4088, file: !341, line: 281, type: !4091)
!4095 = !DILocalVariable(name: "ix_", arg: 2, scope: !4088, file: !341, line: 281, type: !5)
!4096 = !DILocation(line: 0, scope: !4088)
!4097 = !DILocation(line: 281, column: 1, scope: !4088)
!4098 = distinct !DISubprogram(name: "bmp_iter_next", scope: !699, file: !699, line: 382, type: !4099, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !3936, !3940}
!4101 = !{!4102, !4103}
!4102 = !DILocalVariable(name: "bi", arg: 1, scope: !4098, file: !699, line: 382, type: !3936)
!4103 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4098, file: !699, line: 382, type: !3940)
!4104 = !DILocation(line: 0, scope: !4098)
!4105 = !DILocation(line: 384, column: 7, scope: !4098)
!4106 = !DILocation(line: 384, column: 12, scope: !4098)
!4107 = !DILocation(line: 385, column: 11, scope: !4098)
!4108 = !DILocation(line: 386, column: 1, scope: !4098)
!4109 = distinct !DISubprogram(name: "find_uses_to_rename_use", scope: !1, file: !1, line: 235, type: !4110, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4112)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{null, !1280, !472, !1854, !1396}
!4112 = !{!4113, !4114, !4115, !4116, !4117, !4118, !4119}
!4113 = !DILocalVariable(name: "bb", arg: 1, scope: !4109, file: !1, line: 235, type: !1280)
!4114 = !DILocalVariable(name: "use", arg: 2, scope: !4109, file: !1, line: 235, type: !472)
!4115 = !DILocalVariable(name: "use_blocks", arg: 3, scope: !4109, file: !1, line: 235, type: !1854)
!4116 = !DILocalVariable(name: "need_phis", arg: 4, scope: !4109, file: !1, line: 236, type: !1396)
!4117 = !DILocalVariable(name: "ver", scope: !4109, file: !1, line: 238, type: !5)
!4118 = !DILocalVariable(name: "def_bb", scope: !4109, file: !1, line: 239, type: !1280)
!4119 = !DILocalVariable(name: "def_loop", scope: !4109, file: !1, line: 240, type: !1009)
!4120 = !DILocation(line: 0, scope: !4109)
!4121 = !DILocation(line: 242, column: 7, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4109, file: !1, line: 242, column: 7)
!4123 = !DILocation(line: 242, column: 23, scope: !4122)
!4124 = !DILocation(line: 242, column: 7, scope: !4109)
!4125 = !DILocation(line: 246, column: 8, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4109, file: !1, line: 246, column: 7)
!4127 = !DILocation(line: 246, column: 7, scope: !4109)
!4128 = !DILocation(line: 249, column: 9, scope: !4109)
!4129 = !DILocation(line: 250, column: 23, scope: !4109)
!4130 = !DILocation(line: 250, column: 12, scope: !4109)
!4131 = !DILocation(line: 251, column: 8, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4109, file: !1, line: 251, column: 7)
!4133 = !DILocation(line: 251, column: 7, scope: !4109)
!4134 = !DILocation(line: 253, column: 22, scope: !4109)
!4135 = !DILocation(line: 256, column: 8, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4109, file: !1, line: 256, column: 7)
!4137 = !DILocation(line: 256, column: 7, scope: !4109)
!4138 = !DILocation(line: 261, column: 7, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4109, file: !1, line: 261, column: 7)
!4140 = !DILocation(line: 261, column: 7, scope: !4109)
!4141 = !DILocation(line: 264, column: 8, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4109, file: !1, line: 264, column: 7)
!4143 = !DILocation(line: 264, column: 7, scope: !4109)
!4144 = !DILocation(line: 265, column: 23, scope: !4142)
!4145 = !DILocation(line: 265, column: 21, scope: !4142)
!4146 = !DILocation(line: 265, column: 5, scope: !4142)
!4147 = !DILocation(line: 266, column: 19, scope: !4109)
!4148 = !DILocation(line: 266, column: 40, scope: !4109)
!4149 = !DILocation(line: 266, column: 3, scope: !4109)
!4150 = !DILocation(line: 268, column: 3, scope: !4109)
!4151 = !DILocation(line: 269, column: 1, scope: !4109)
!4152 = distinct !DISubprogram(name: "find_uses_to_rename_stmt", scope: !1, file: !1, line: 277, type: !4153, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4155)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{null, !794, !1854, !1396}
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4161}
!4156 = !DILocalVariable(name: "stmt", arg: 1, scope: !4152, file: !1, line: 277, type: !794)
!4157 = !DILocalVariable(name: "use_blocks", arg: 2, scope: !4152, file: !1, line: 277, type: !1854)
!4158 = !DILocalVariable(name: "need_phis", arg: 3, scope: !4152, file: !1, line: 277, type: !1396)
!4159 = !DILocalVariable(name: "iter", scope: !4152, file: !1, line: 279, type: !2825)
!4160 = !DILocalVariable(name: "var", scope: !4152, file: !1, line: 280, type: !472)
!4161 = !DILocalVariable(name: "bb", scope: !4152, file: !1, line: 281, type: !1280)
!4162 = !DILocation(line: 0, scope: !4152)
!4163 = !DILocation(line: 279, column: 3, scope: !4152)
!4164 = !DILocation(line: 281, column: 20, scope: !4152)
!4165 = !DILocation(line: 283, column: 7, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4152, file: !1, line: 283, column: 7)
!4167 = !DILocation(line: 283, column: 7, scope: !4152)
!4168 = !DILocation(line: 286, column: 3, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4152, file: !1, line: 286, column: 3)
!4170 = !DILocation(line: 0, scope: !4169)
!4171 = !DILocation(line: 286, column: 3, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4169, file: !1, line: 286, column: 3)
!4173 = !DILocation(line: 287, column: 5, scope: !4172)
!4174 = distinct !{!4174, !4168, !4175}
!4175 = !DILocation(line: 287, column: 60, scope: !4169)
!4176 = !DILocation(line: 288, column: 1, scope: !4152)
!4177 = distinct !DISubprogram(name: "gimple_bb", scope: !396, file: !396, line: 1112, type: !4178, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4180)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!758, !2997}
!4180 = !{!4181}
!4181 = !DILocalVariable(name: "g", arg: 1, scope: !4177, file: !396, line: 1112, type: !2997)
!4182 = !DILocation(line: 0, scope: !4177)
!4183 = !DILocation(line: 1114, column: 20, scope: !4177)
!4184 = !DILocation(line: 1114, column: 3, scope: !4177)
!4185 = distinct !DISubprogram(name: "loop_outer", scope: !328, file: !328, line: 434, type: !4186, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4190)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!1009, !4188}
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!4190 = !{!4191, !4192}
!4191 = !DILocalVariable(name: "loop", arg: 1, scope: !4185, file: !328, line: 434, type: !4188)
!4192 = !DILocalVariable(name: "n", scope: !4185, file: !328, line: 436, type: !5)
!4193 = !DILocation(line: 0, scope: !4185)
!4194 = !DILocation(line: 436, column: 16, scope: !4185)
!4195 = !DILocation(line: 438, column: 9, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4185, file: !328, line: 438, column: 7)
!4197 = !DILocation(line: 438, column: 7, scope: !4185)
!4198 = !DILocation(line: 441, column: 10, scope: !4185)
!4199 = !DILocation(line: 441, column: 3, scope: !4185)
!4200 = !DILocation(line: 442, column: 1, scope: !4185)
!4201 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !328, file: !328, line: 85, type: !4202, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4204)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!1036, !3927, !5}
!4204 = !{!4205, !4206}
!4205 = !DILocalVariable(name: "vec_", arg: 1, scope: !4201, file: !328, line: 85, type: !3927)
!4206 = !DILocalVariable(name: "ix_", arg: 2, scope: !4201, file: !328, line: 85, type: !5)
!4207 = !DILocation(line: 0, scope: !4201)
!4208 = !DILocation(line: 85, column: 1, scope: !4201)
!4209 = distinct !DISubprogram(name: "is_gimple_debug", scope: !396, file: !396, line: 3249, type: !4210, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4212)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!462, !2997}
!4212 = !{!4213}
!4213 = !DILocalVariable(name: "gs", arg: 1, scope: !4209, file: !396, line: 3249, type: !2997)
!4214 = !DILocation(line: 0, scope: !4209)
!4215 = !DILocation(line: 3251, column: 10, scope: !4209)
!4216 = !DILocation(line: 3251, column: 27, scope: !4209)
!4217 = !DILocation(line: 3251, column: 3, scope: !4209)
!4218 = distinct !DISubprogram(name: "op_iter_init_tree", scope: !2424, file: !2424, line: 792, type: !4219, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4222)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!472, !4221, !794, !463}
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!4222 = !{!4223, !4224, !4225}
!4223 = !DILocalVariable(name: "ptr", arg: 1, scope: !4218, file: !2424, line: 792, type: !4221)
!4224 = !DILocalVariable(name: "stmt", arg: 2, scope: !4218, file: !2424, line: 792, type: !794)
!4225 = !DILocalVariable(name: "flags", arg: 3, scope: !4218, file: !2424, line: 792, type: !463)
!4226 = !DILocation(line: 0, scope: !4218)
!4227 = !DILocation(line: 794, column: 3, scope: !4218)
!4228 = !DILocation(line: 795, column: 8, scope: !4218)
!4229 = !DILocation(line: 795, column: 18, scope: !4218)
!4230 = !DILocation(line: 796, column: 10, scope: !4218)
!4231 = !DILocation(line: 796, column: 3, scope: !4218)
!4232 = distinct !DISubprogram(name: "op_iter_done", scope: !2424, file: !2424, line: 652, type: !4233, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4237)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!462, !4235}
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2825)
!4237 = !{!4238}
!4238 = !DILocalVariable(name: "ptr", arg: 1, scope: !4232, file: !2424, line: 652, type: !4235)
!4239 = !DILocation(line: 0, scope: !4232)
!4240 = !DILocation(line: 654, column: 15, scope: !4232)
!4241 = !DILocation(line: 654, column: 3, scope: !4232)
!4242 = distinct !DISubprogram(name: "op_iter_next_tree", scope: !2424, file: !2424, line: 699, type: !4243, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4245)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!472, !4221}
!4245 = !{!4246, !4247}
!4246 = !DILocalVariable(name: "ptr", arg: 1, scope: !4242, file: !2424, line: 699, type: !4221)
!4247 = !DILocalVariable(name: "val", scope: !4242, file: !2424, line: 701, type: !472)
!4248 = !DILocation(line: 0, scope: !4242)
!4249 = !DILocation(line: 705, column: 12, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4242, file: !2424, line: 705, column: 7)
!4251 = !DILocation(line: 705, column: 7, scope: !4250)
!4252 = !DILocation(line: 705, column: 7, scope: !4242)
!4253 = !DILocation(line: 707, column: 13, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4250, file: !2424, line: 706, column: 5)
!4255 = !DILocation(line: 708, column: 24, scope: !4254)
!4256 = !DILocation(line: 708, column: 30, scope: !4254)
!4257 = !DILocation(line: 708, column: 17, scope: !4254)
!4258 = !DILocation(line: 709, column: 7, scope: !4254)
!4259 = !DILocation(line: 711, column: 12, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4242, file: !2424, line: 711, column: 7)
!4261 = !DILocation(line: 711, column: 7, scope: !4260)
!4262 = !DILocation(line: 711, column: 7, scope: !4242)
!4263 = !DILocation(line: 713, column: 13, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4260, file: !2424, line: 712, column: 5)
!4265 = !DILocation(line: 714, column: 24, scope: !4264)
!4266 = !DILocation(line: 714, column: 30, scope: !4264)
!4267 = !DILocation(line: 714, column: 17, scope: !4264)
!4268 = !DILocation(line: 715, column: 7, scope: !4264)
!4269 = !DILocation(line: 718, column: 8, scope: !4242)
!4270 = !DILocation(line: 718, column: 13, scope: !4242)
!4271 = !DILocation(line: 719, column: 3, scope: !4242)
!4272 = !DILocation(line: 721, column: 1, scope: !4242)
!4273 = distinct !DISubprogram(name: "op_iter_init", scope: !2424, file: !2424, line: 742, type: !4274, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4276)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{null, !4221, !794, !463}
!4276 = !{!4277, !4278, !4279}
!4277 = !DILocalVariable(name: "ptr", arg: 1, scope: !4273, file: !2424, line: 742, type: !4221)
!4278 = !DILocalVariable(name: "stmt", arg: 2, scope: !4273, file: !2424, line: 742, type: !794)
!4279 = !DILocalVariable(name: "flags", arg: 3, scope: !4273, file: !2424, line: 742, type: !463)
!4280 = !DILocation(line: 0, scope: !4273)
!4281 = !DILocation(line: 748, column: 8, scope: !4273)
!4282 = !DILocation(line: 748, column: 13, scope: !4273)
!4283 = !DILocation(line: 750, column: 7, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4273, file: !2424, line: 749, column: 7)
!4285 = !DILocation(line: 751, column: 7, scope: !4284)
!4286 = !DILocation(line: 749, column: 7, scope: !4273)
!4287 = !DILocation(line: 752, column: 5, scope: !4284)
!4288 = !DILocation(line: 753, column: 15, scope: !4273)
!4289 = !DILocation(line: 753, column: 52, scope: !4273)
!4290 = !DILocation(line: 753, column: 8, scope: !4273)
!4291 = !DILocation(line: 753, column: 13, scope: !4273)
!4292 = !DILocation(line: 758, column: 8, scope: !4273)
!4293 = !DILocation(line: 758, column: 13, scope: !4273)
!4294 = !DILocation(line: 760, column: 8, scope: !4273)
!4295 = !DILocation(line: 760, column: 14, scope: !4273)
!4296 = !DILocation(line: 761, column: 8, scope: !4273)
!4297 = !DILocation(line: 761, column: 16, scope: !4273)
!4298 = !DILocation(line: 762, column: 8, scope: !4273)
!4299 = !DILocation(line: 762, column: 17, scope: !4273)
!4300 = !DILocation(line: 763, column: 1, scope: !4273)
!4301 = distinct !DISubprogram(name: "gimple_def_ops", scope: !396, file: !396, line: 1292, type: !4302, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4304)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!823, !2997}
!4304 = !{!4305}
!4305 = !DILocalVariable(name: "g", arg: 1, scope: !4301, file: !396, line: 1292, type: !2997)
!4306 = !DILocation(line: 0, scope: !4301)
!4307 = distinct !DISubprogram(name: "gimple_vdef", scope: !396, file: !396, line: 1375, type: !4308, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4310)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!472, !2997}
!4310 = !{!4311}
!4311 = !DILocalVariable(name: "g", arg: 1, scope: !4307, file: !396, line: 1375, type: !2997)
!4312 = !DILocation(line: 0, scope: !4307)
!4313 = !DILocation(line: 1377, column: 8, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4307, file: !396, line: 1377, column: 7)
!4315 = !DILocation(line: 1377, column: 7, scope: !4307)
!4316 = !DILocation(line: 1379, column: 23, scope: !4307)
!4317 = !DILocation(line: 1379, column: 3, scope: !4307)
!4318 = !DILocation(line: 1380, column: 1, scope: !4307)
!4319 = distinct !DISubprogram(name: "gimple_use_ops", scope: !396, file: !396, line: 1313, type: !4320, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4322)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!830, !2997}
!4322 = !{!4323}
!4323 = !DILocalVariable(name: "g", arg: 1, scope: !4319, file: !396, line: 1313, type: !2997)
!4324 = !DILocation(line: 0, scope: !4319)
!4325 = !DILocation(line: 1315, column: 8, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4319, file: !396, line: 1315, column: 7)
!4327 = !DILocation(line: 1315, column: 7, scope: !4319)
!4328 = !DILocation(line: 1317, column: 26, scope: !4319)
!4329 = !DILocation(line: 1317, column: 3, scope: !4319)
!4330 = !DILocation(line: 1318, column: 1, scope: !4319)
!4331 = distinct !DISubprogram(name: "gimple_vuse", scope: !396, file: !396, line: 1365, type: !4308, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4332)
!4332 = !{!4333}
!4333 = !DILocalVariable(name: "g", arg: 1, scope: !4331, file: !396, line: 1365, type: !2997)
!4334 = !DILocation(line: 0, scope: !4331)
!4335 = distinct !DISubprogram(name: "gimple_has_ops", scope: !396, file: !396, line: 1274, type: !4210, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4336)
!4336 = !{!4337}
!4337 = !DILocalVariable(name: "g", arg: 1, scope: !4335, file: !396, line: 1274, type: !2997)
!4338 = !DILocation(line: 0, scope: !4335)
!4339 = !DILocation(line: 1276, column: 10, scope: !4335)
!4340 = !DILocation(line: 1276, column: 26, scope: !4335)
!4341 = !DILocation(line: 1276, column: 41, scope: !4335)
!4342 = !DILocation(line: 1276, column: 44, scope: !4335)
!4343 = !DILocation(line: 1276, column: 60, scope: !4335)
!4344 = !DILocation(line: 1276, column: 3, scope: !4335)
!4345 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !396, file: !396, line: 1283, type: !4210, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4346)
!4346 = !{!4347}
!4347 = !DILocalVariable(name: "g", arg: 1, scope: !4345, file: !396, line: 1283, type: !2997)
!4348 = !DILocation(line: 0, scope: !4345)
!4349 = !DILocation(line: 1285, column: 10, scope: !4345)
!4350 = !DILocation(line: 1285, column: 26, scope: !4345)
!4351 = !DILocation(line: 1285, column: 43, scope: !4345)
!4352 = !DILocation(line: 1285, column: 46, scope: !4345)
!4353 = !DILocation(line: 1285, column: 62, scope: !4345)
!4354 = !DILocation(line: 1285, column: 3, scope: !4345)
!4355 = distinct !DISubprogram(name: "add_exit_phis_var", scope: !1, file: !1, line: 167, type: !4356, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4358)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{null, !472, !1396, !1396}
!4358 = !{!4359, !4360, !4361, !4362, !4363, !4364, !4365}
!4359 = !DILocalVariable(name: "var", arg: 1, scope: !4355, file: !1, line: 167, type: !472)
!4360 = !DILocalVariable(name: "livein", arg: 2, scope: !4355, file: !1, line: 167, type: !1396)
!4361 = !DILocalVariable(name: "exits", arg: 3, scope: !4355, file: !1, line: 167, type: !1396)
!4362 = !DILocalVariable(name: "def", scope: !4355, file: !1, line: 169, type: !1396)
!4363 = !DILocalVariable(name: "index", scope: !4355, file: !1, line: 170, type: !5)
!4364 = !DILocalVariable(name: "def_bb", scope: !4355, file: !1, line: 171, type: !1280)
!4365 = !DILocalVariable(name: "bi", scope: !4355, file: !1, line: 172, type: !2563)
!4366 = !DILocation(line: 0, scope: !4355)
!4367 = !DILocation(line: 170, column: 3, scope: !4355)
!4368 = !DILocation(line: 171, column: 35, scope: !4355)
!4369 = !DILocation(line: 171, column: 24, scope: !4355)
!4370 = !DILocation(line: 172, column: 3, scope: !4355)
!4371 = !DILocation(line: 174, column: 7, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4355, file: !1, line: 174, column: 7)
!4373 = !DILocation(line: 0, scope: !4372)
!4374 = !DILocation(line: 174, column: 7, scope: !4355)
!4375 = !DILocation(line: 175, column: 5, scope: !4372)
!4376 = !DILocation(line: 177, column: 5, scope: !4372)
!4377 = !DILocation(line: 179, column: 9, scope: !4355)
!4378 = !DILocation(line: 180, column: 32, scope: !4355)
!4379 = !DILocation(line: 180, column: 3, scope: !4355)
!4380 = !DILocation(line: 181, column: 3, scope: !4355)
!4381 = !DILocation(line: 182, column: 3, scope: !4355)
!4382 = !DILocation(line: 184, column: 3, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4355, file: !1, line: 184, column: 3)
!4384 = !DILocation(line: 184, column: 3, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4383, file: !1, line: 184, column: 3)
!4386 = !DILocation(line: 186, column: 27, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4385, file: !1, line: 185, column: 5)
!4388 = !DILocation(line: 186, column: 7, scope: !4387)
!4389 = distinct !{!4389, !4382, !4390}
!4390 = !DILocation(line: 187, column: 5, scope: !4383)
!4391 = !DILocation(line: 188, column: 1, scope: !4355)
!4392 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !133, file: !133, line: 182, type: !4393, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4395)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!472, !2547, !5}
!4395 = !{!4396, !4397}
!4396 = !DILocalVariable(name: "vec_", arg: 1, scope: !4392, file: !133, line: 182, type: !2547)
!4397 = !DILocalVariable(name: "ix_", arg: 2, scope: !4392, file: !133, line: 182, type: !5)
!4398 = !DILocation(line: 0, scope: !4392)
!4399 = !DILocation(line: 182, column: 1, scope: !4392)
!4400 = distinct !DISubprogram(name: "bmp_iter_and_init", scope: !699, file: !699, line: 266, type: !4401, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4403)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{null, !3936, !3937, !3937, !5, !3940}
!4403 = !{!4404, !4405, !4406, !4407, !4408}
!4404 = !DILocalVariable(name: "bi", arg: 1, scope: !4400, file: !699, line: 266, type: !3936)
!4405 = !DILocalVariable(name: "map1", arg: 2, scope: !4400, file: !699, line: 266, type: !3937)
!4406 = !DILocalVariable(name: "map2", arg: 3, scope: !4400, file: !699, line: 266, type: !3937)
!4407 = !DILocalVariable(name: "start_bit", arg: 4, scope: !4400, file: !699, line: 267, type: !5)
!4408 = !DILocalVariable(name: "bit_no", arg: 5, scope: !4400, file: !699, line: 267, type: !3940)
!4409 = !DILocation(line: 0, scope: !4400)
!4410 = !DILocation(line: 269, column: 20, scope: !4400)
!4411 = !DILocation(line: 269, column: 12, scope: !4400)
!4412 = !DILocation(line: 270, column: 20, scope: !4400)
!4413 = !DILocation(line: 270, column: 7, scope: !4400)
!4414 = !DILocation(line: 270, column: 12, scope: !4400)
!4415 = !DILocation(line: 0, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !699, line: 276, column: 11)
!4417 = distinct !DILexicalBlock(scope: !4400, file: !699, line: 275, column: 5)
!4418 = !DILocation(line: 274, column: 3, scope: !4400)
!4419 = !DILocation(line: 276, column: 12, scope: !4416)
!4420 = !DILocation(line: 276, column: 11, scope: !4417)
!4421 = !DILocation(line: 278, column: 13, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4416, file: !699, line: 277, column: 2)
!4423 = !DILocation(line: 279, column: 4, scope: !4422)
!4424 = !DILocation(line: 282, column: 11, scope: !4417)
!4425 = distinct !{!4425, !4418, !4426}
!4426 = !DILocation(line: 285, column: 5, scope: !4400)
!4427 = !DILocation(line: 288, column: 3, scope: !4400)
!4428 = !DILocation(line: 290, column: 16, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4430, file: !699, line: 290, column: 11)
!4430 = distinct !DILexicalBlock(scope: !4400, file: !699, line: 289, column: 5)
!4431 = !DILocation(line: 290, column: 12, scope: !4429)
!4432 = !DILocation(line: 290, column: 11, scope: !4430)
!4433 = !DILocation(line: 292, column: 24, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4429, file: !699, line: 291, column: 2)
!4435 = !DILocation(line: 292, column: 13, scope: !4434)
!4436 = !DILocation(line: 302, column: 17, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4400, file: !699, line: 302, column: 7)
!4438 = !DILocation(line: 293, column: 4, scope: !4434)
!4439 = !DILocation(line: 296, column: 21, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4430, file: !699, line: 296, column: 11)
!4441 = !DILocation(line: 296, column: 39, scope: !4440)
!4442 = !DILocation(line: 296, column: 26, scope: !4440)
!4443 = !DILocation(line: 296, column: 11, scope: !4430)
!4444 = !DILocation(line: 298, column: 28, scope: !4430)
!4445 = !DILocation(line: 298, column: 16, scope: !4430)
!4446 = distinct !{!4446, !4427, !4447}
!4447 = !DILocation(line: 299, column: 5, scope: !4400)
!4448 = !DILocation(line: 0, scope: !4437)
!4449 = !DILocation(line: 302, column: 35, scope: !4437)
!4450 = !DILocation(line: 302, column: 11, scope: !4437)
!4451 = !DILocation(line: 302, column: 22, scope: !4437)
!4452 = !DILocation(line: 302, column: 7, scope: !4400)
!4453 = !DILocation(line: 306, column: 26, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !699, line: 306, column: 11)
!4455 = distinct !DILexicalBlock(scope: !4437, file: !699, line: 303, column: 5)
!4456 = !DILocation(line: 306, column: 11, scope: !4455)
!4457 = !DILocation(line: 307, column: 29, scope: !4454)
!4458 = !DILocation(line: 307, column: 2, scope: !4454)
!4459 = !DILocation(line: 309, column: 11, scope: !4455)
!4460 = !DILocation(line: 309, column: 19, scope: !4455)
!4461 = !DILocation(line: 310, column: 18, scope: !4455)
!4462 = !DILocation(line: 310, column: 48, scope: !4455)
!4463 = !DILocation(line: 310, column: 46, scope: !4455)
!4464 = !DILocation(line: 311, column: 11, scope: !4455)
!4465 = !DILocation(line: 311, column: 16, scope: !4455)
!4466 = !DILocation(line: 312, column: 5, scope: !4455)
!4467 = !DILocation(line: 317, column: 11, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4437, file: !699, line: 314, column: 5)
!4469 = !DILocation(line: 317, column: 19, scope: !4468)
!4470 = !DILocation(line: 318, column: 11, scope: !4468)
!4471 = !DILocation(line: 318, column: 16, scope: !4468)
!4472 = !DILocation(line: 325, column: 13, scope: !4400)
!4473 = !DILocation(line: 327, column: 11, scope: !4400)
!4474 = !DILocation(line: 328, column: 1, scope: !4400)
!4475 = distinct !DISubprogram(name: "bmp_iter_and", scope: !699, file: !699, line: 440, type: !3981, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4476)
!4476 = !{!4477, !4478, !4479}
!4477 = !DILocalVariable(name: "bi", arg: 1, scope: !4475, file: !699, line: 440, type: !3936)
!4478 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4475, file: !699, line: 440, type: !3940)
!4479 = !DILabel(scope: !4480, name: "next_bit", file: !699, line: 445)
!4480 = distinct !DILexicalBlock(scope: !4481, file: !699, line: 444, column: 5)
!4481 = distinct !DILexicalBlock(scope: !4475, file: !699, line: 443, column: 7)
!4482 = !DILocation(line: 0, scope: !4475)
!4483 = !DILocation(line: 443, column: 11, scope: !4481)
!4484 = !DILocation(line: 443, column: 7, scope: !4481)
!4485 = !DILocation(line: 443, column: 7, scope: !4475)
!4486 = !DILocation(line: 466, column: 43, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4488, file: !699, line: 465, column: 2)
!4488 = distinct !DILexicalBlock(scope: !4475, file: !699, line: 462, column: 5)
!4489 = !DILocation(line: 446, column: 7, scope: !4480)
!4490 = !DILocation(line: 445, column: 5, scope: !4480)
!4491 = !DILocation(line: 446, column: 20, scope: !4480)
!4492 = !DILocation(line: 446, column: 25, scope: !4480)
!4493 = !DILocation(line: 446, column: 14, scope: !4480)
!4494 = !DILocation(line: 448, column: 13, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4480, file: !699, line: 447, column: 2)
!4496 = !DILocation(line: 449, column: 12, scope: !4495)
!4497 = distinct !{!4497, !4489, !4498}
!4498 = !DILocation(line: 450, column: 2, scope: !4480)
!4499 = !DILocation(line: 457, column: 15, scope: !4475)
!4500 = !DILocation(line: 457, column: 42, scope: !4475)
!4501 = !DILocation(line: 458, column: 26, scope: !4475)
!4502 = !DILocation(line: 457, column: 11, scope: !4475)
!4503 = !DILocation(line: 459, column: 7, scope: !4475)
!4504 = !DILocation(line: 459, column: 14, scope: !4475)
!4505 = !DILocation(line: 0, scope: !4487)
!4506 = !DILocation(line: 0, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4508, file: !699, line: 479, column: 6)
!4508 = distinct !DILexicalBlock(scope: !4488, file: !699, line: 475, column: 2)
!4509 = !DILocation(line: 0, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4508, file: !699, line: 489, column: 6)
!4511 = !DILocation(line: 461, column: 3, scope: !4475)
!4512 = !DILocation(line: 464, column: 7, scope: !4488)
!4513 = !DILocation(line: 464, column: 18, scope: !4488)
!4514 = !DILocation(line: 464, column: 26, scope: !4488)
!4515 = !DILocation(line: 480, column: 23, scope: !4507)
!4516 = !DILocation(line: 474, column: 7, scope: !4488)
!4517 = !DILocation(line: 466, column: 19, scope: !4487)
!4518 = !DILocation(line: 466, column: 15, scope: !4487)
!4519 = !DILocation(line: 466, column: 49, scope: !4487)
!4520 = !DILocation(line: 466, column: 45, scope: !4487)
!4521 = !DILocation(line: 466, column: 13, scope: !4487)
!4522 = !DILocation(line: 467, column: 8, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4487, file: !699, line: 467, column: 8)
!4524 = !DILocation(line: 467, column: 8, scope: !4487)
!4525 = !DILocation(line: 469, column: 12, scope: !4487)
!4526 = !DILocation(line: 470, column: 15, scope: !4487)
!4527 = distinct !{!4527, !4512, !4528}
!4528 = !DILocation(line: 471, column: 2, scope: !4488)
!4529 = !DILocation(line: 478, column: 4, scope: !4508)
!4530 = !DILocation(line: 480, column: 29, scope: !4507)
!4531 = !DILocation(line: 480, column: 17, scope: !4507)
!4532 = !DILocation(line: 481, column: 13, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4507, file: !699, line: 481, column: 12)
!4534 = !DILocation(line: 481, column: 12, scope: !4507)
!4535 = !DILocation(line: 484, column: 21, scope: !4508)
!4536 = !DILocation(line: 484, column: 32, scope: !4508)
!4537 = !DILocation(line: 484, column: 38, scope: !4508)
!4538 = !DILocation(line: 484, column: 26, scope: !4508)
!4539 = !DILocation(line: 483, column: 6, scope: !4507)
!4540 = distinct !{!4540, !4529, !4541}
!4541 = !DILocation(line: 484, column: 42, scope: !4508)
!4542 = !DILocation(line: 488, column: 4, scope: !4508)
!4543 = !DILocation(line: 488, column: 38, scope: !4508)
!4544 = !DILocation(line: 488, column: 21, scope: !4508)
!4545 = !DILocation(line: 488, column: 26, scope: !4508)
!4546 = !DILocation(line: 490, column: 29, scope: !4510)
!4547 = !DILocation(line: 490, column: 17, scope: !4510)
!4548 = !DILocation(line: 491, column: 13, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4510, file: !699, line: 491, column: 12)
!4550 = !DILocation(line: 491, column: 12, scope: !4510)
!4551 = distinct !{!4551, !4542, !4552}
!4552 = !DILocation(line: 493, column: 6, scope: !4508)
!4553 = !DILocation(line: 0, scope: !4508)
!4554 = !DILocation(line: 495, column: 29, scope: !4488)
!4555 = !DILocation(line: 494, column: 2, scope: !4508)
!4556 = distinct !{!4556, !4516, !4557}
!4557 = !DILocation(line: 495, column: 46, scope: !4488)
!4558 = !DILocation(line: 497, column: 32, scope: !4488)
!4559 = !DILocation(line: 497, column: 15, scope: !4488)
!4560 = !DILocation(line: 498, column: 19, scope: !4488)
!4561 = distinct !{!4561, !4511, !4562}
!4562 = !DILocation(line: 499, column: 5, scope: !4475)
!4563 = !DILocation(line: 500, column: 1, scope: !4475)
!4564 = distinct !DISubprogram(name: "add_exit_phis_edge", scope: !1, file: !1, line: 136, type: !2740, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4565)
!4565 = !{!4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573}
!4566 = !DILocalVariable(name: "exit", arg: 1, scope: !4564, file: !1, line: 136, type: !1280)
!4567 = !DILocalVariable(name: "use", arg: 2, scope: !4564, file: !1, line: 136, type: !472)
!4568 = !DILocalVariable(name: "phi", scope: !4564, file: !1, line: 138, type: !794)
!4569 = !DILocalVariable(name: "def_stmt", scope: !4564, file: !1, line: 138, type: !794)
!4570 = !DILocalVariable(name: "def_bb", scope: !4564, file: !1, line: 139, type: !1280)
!4571 = !DILocalVariable(name: "def_loop", scope: !4564, file: !1, line: 140, type: !1009)
!4572 = !DILocalVariable(name: "e", scope: !4564, file: !1, line: 141, type: !774)
!4573 = !DILocalVariable(name: "ei", scope: !4564, file: !1, line: 142, type: !2502)
!4574 = !DILocation(line: 0, scope: !4564)
!4575 = !DILocation(line: 138, column: 26, scope: !4564)
!4576 = !DILocation(line: 139, column: 24, scope: !4564)
!4577 = !DILocation(line: 141, column: 3, scope: !4564)
!4578 = !DILocation(line: 142, column: 3, scope: !4564)
!4579 = !DILocation(line: 146, column: 3, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4564, file: !1, line: 146, column: 3)
!4581 = !DILocation(line: 148, column: 44, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4583, file: !1, line: 147, column: 5)
!4583 = distinct !DILexicalBlock(scope: !4580, file: !1, line: 146, column: 3)
!4584 = !DILocation(line: 0, scope: !4583)
!4585 = !DILocation(line: 146, column: 3, scope: !4583)
!4586 = !DILocation(line: 148, column: 57, scope: !4582)
!4587 = !DILocation(line: 148, column: 60, scope: !4582)
!4588 = !DILocation(line: 148, column: 65, scope: !4582)
!4589 = !DILocation(line: 148, column: 18, scope: !4582)
!4590 = !DILocation(line: 149, column: 45, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4582, file: !1, line: 149, column: 11)
!4592 = !DILocation(line: 149, column: 48, scope: !4591)
!4593 = !DILocation(line: 149, column: 12, scope: !4591)
!4594 = !DILocation(line: 149, column: 11, scope: !4582)
!4595 = distinct !{!4595, !4579, !4596}
!4596 = !DILocation(line: 151, column: 5, scope: !4580)
!4597 = !DILocation(line: 153, column: 8, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4564, file: !1, line: 153, column: 7)
!4599 = !DILocation(line: 153, column: 7, scope: !4564)
!4600 = !DILocation(line: 156, column: 9, scope: !4564)
!4601 = !DILocation(line: 157, column: 23, scope: !4564)
!4602 = !DILocation(line: 158, column: 9, scope: !4564)
!4603 = !DILocation(line: 157, column: 3, scope: !4564)
!4604 = !DILocation(line: 159, column: 3, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4564, file: !1, line: 159, column: 3)
!4606 = !DILocation(line: 159, column: 3, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4605, file: !1, line: 159, column: 3)
!4608 = !DILocation(line: 160, column: 28, scope: !4607)
!4609 = !DILocation(line: 160, column: 5, scope: !4607)
!4610 = distinct !{!4610, !4604, !4611}
!4611 = !DILocation(line: 160, column: 47, scope: !4605)
!4612 = !DILocation(line: 161, column: 1, scope: !4564)
!4613 = distinct !DISubprogram(name: "gimple_phi_result", scope: !396, file: !396, line: 3071, type: !4308, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4614)
!4614 = !{!4615}
!4615 = !DILocalVariable(name: "gs", arg: 1, scope: !4613, file: !396, line: 3071, type: !2997)
!4616 = !DILocation(line: 0, scope: !4613)
!4617 = !DILocation(line: 3074, column: 25, scope: !4613)
!4618 = !DILocation(line: 3074, column: 3, scope: !4613)
!4619 = distinct !DISubprogram(name: "ei_end_p", scope: !341, file: !341, line: 721, type: !4620, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4622)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!462, !2502}
!4622 = !{!4623}
!4623 = !DILocalVariable(name: "i", arg: 1, scope: !4619, file: !341, line: 721, type: !2502)
!4624 = !DILocation(line: 723, column: 22, scope: !4619)
!4625 = !DILocation(line: 723, column: 19, scope: !4619)
!4626 = !DILocation(line: 723, column: 10, scope: !4619)
!4627 = !DILocation(line: 723, column: 3, scope: !4619)
!4628 = distinct !DISubprogram(name: "ei_edge", scope: !341, file: !341, line: 752, type: !4629, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4631)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!774, !2502}
!4631 = !{!4632}
!4632 = !DILocalVariable(name: "i", arg: 1, scope: !4628, file: !341, line: 752, type: !2502)
!4633 = !DILocation(line: 754, column: 10, scope: !4628)
!4634 = !DILocation(line: 754, column: 3, scope: !4628)
!4635 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !341, file: !341, line: 150, type: !4636, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4638)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!5, !3008}
!4638 = !{!4639}
!4639 = !DILocalVariable(name: "vec_", arg: 1, scope: !4635, file: !341, line: 150, type: !3008)
!4640 = !DILocation(line: 0, scope: !4635)
!4641 = !DILocation(line: 150, column: 1, scope: !4635)
!4642 = distinct !DISubprogram(name: "ei_container", scope: !341, file: !341, line: 685, type: !4643, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4645)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{!762, !2502}
!4645 = !{!4646}
!4646 = !DILocalVariable(name: "i", arg: 1, scope: !4642, file: !341, line: 685, type: !2502)
!4647 = !DILocation(line: 687, column: 3, scope: !4642)
!4648 = !DILocation(line: 688, column: 10, scope: !4642)
!4649 = !DILocation(line: 688, column: 3, scope: !4642)
!4650 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !396, file: !396, line: 3100, type: !4651, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4654)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!4653, !794, !5}
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!4654 = !{!4655, !4656}
!4655 = !DILocalVariable(name: "gs", arg: 1, scope: !4650, file: !396, line: 3100, type: !794)
!4656 = !DILocalVariable(name: "index", arg: 2, scope: !4650, file: !396, line: 3100, type: !5)
!4657 = !DILocation(line: 0, scope: !4650)
!4658 = !DILocation(line: 3103, column: 3, scope: !4650)
!4659 = !DILocation(line: 3104, column: 12, scope: !4650)
!4660 = !DILocation(line: 3104, column: 3, scope: !4650)
!4661 = distinct !DISubprogram(name: "bb_seq", scope: !396, file: !396, line: 237, type: !4662, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4664)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!784, !2903}
!4664 = !{!4665}
!4665 = !DILocalVariable(name: "bb", arg: 1, scope: !4661, file: !396, line: 237, type: !2903)
!4666 = !DILocation(line: 0, scope: !4661)
!4667 = !DILocation(line: 239, column: 17, scope: !4661)
!4668 = !DILocation(line: 239, column: 23, scope: !4661)
!4669 = !DILocation(line: 239, column: 33, scope: !4661)
!4670 = !DILocation(line: 239, column: 43, scope: !4661)
!4671 = !DILocation(line: 239, column: 36, scope: !4661)
!4672 = !DILocation(line: 239, column: 10, scope: !4661)
!4673 = !DILocation(line: 239, column: 68, scope: !4661)
!4674 = !DILocation(line: 239, column: 3, scope: !4661)
!4675 = distinct !DISubprogram(name: "gimple_seq_first", scope: !396, file: !396, line: 159, type: !4676, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4681)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!789, !4678}
!4678 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !473, line: 67, baseType: !4679)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!4681 = !{!4682}
!4682 = !DILocalVariable(name: "s", arg: 1, scope: !4675, file: !396, line: 159, type: !4678)
!4683 = !DILocation(line: 0, scope: !4675)
!4684 = !DILocation(line: 161, column: 10, scope: !4675)
!4685 = !DILocation(line: 161, column: 17, scope: !4675)
!4686 = !DILocation(line: 161, column: 3, scope: !4675)
!4687 = distinct !DISubprogram(name: "single_succ_p", scope: !341, file: !341, line: 626, type: !2977, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4688)
!4688 = !{!4689}
!4689 = !DILocalVariable(name: "bb", arg: 1, scope: !4687, file: !341, line: 626, type: !2903)
!4690 = !DILocation(line: 0, scope: !4687)
!4691 = !DILocation(line: 628, column: 10, scope: !4687)
!4692 = !DILocation(line: 628, column: 33, scope: !4687)
!4693 = !DILocation(line: 628, column: 3, scope: !4687)
!4694 = distinct !DISubprogram(name: "delink_imm_use", scope: !2424, file: !2424, line: 188, type: !4695, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4697)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{null, !2762}
!4697 = !{!4698}
!4698 = !DILocalVariable(name: "linknode", arg: 1, scope: !4694, file: !2424, line: 188, type: !2762)
!4699 = !DILocation(line: 0, scope: !4694)
!4700 = !DILocation(line: 191, column: 17, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4694, file: !2424, line: 191, column: 7)
!4702 = !DILocation(line: 191, column: 22, scope: !4701)
!4703 = !DILocation(line: 191, column: 7, scope: !4694)
!4704 = !DILocation(line: 194, column: 36, scope: !4694)
!4705 = !DILocation(line: 194, column: 19, scope: !4694)
!4706 = !DILocation(line: 194, column: 24, scope: !4694)
!4707 = !DILocation(line: 195, column: 36, scope: !4694)
!4708 = !DILocation(line: 195, column: 13, scope: !4694)
!4709 = !DILocation(line: 195, column: 24, scope: !4694)
!4710 = !DILocation(line: 196, column: 18, scope: !4694)
!4711 = !DILocation(line: 197, column: 18, scope: !4694)
!4712 = !DILocation(line: 198, column: 1, scope: !4694)
!4713 = distinct !DISubprogram(name: "link_imm_use", scope: !2424, file: !2424, line: 214, type: !4714, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4716)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{null, !2762, !472}
!4716 = !{!4717, !4718, !4719}
!4717 = !DILocalVariable(name: "linknode", arg: 1, scope: !4713, file: !2424, line: 214, type: !2762)
!4718 = !DILocalVariable(name: "def", arg: 2, scope: !4713, file: !2424, line: 214, type: !472)
!4719 = !DILocalVariable(name: "root", scope: !4713, file: !2424, line: 216, type: !2762)
!4720 = !DILocation(line: 0, scope: !4713)
!4721 = !DILocation(line: 218, column: 8, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4713, file: !2424, line: 218, column: 7)
!4723 = !DILocation(line: 218, column: 12, scope: !4722)
!4724 = !DILocation(line: 218, column: 15, scope: !4722)
!4725 = !DILocation(line: 218, column: 31, scope: !4722)
!4726 = !DILocation(line: 218, column: 7, scope: !4713)
!4727 = !DILocation(line: 219, column: 15, scope: !4722)
!4728 = !DILocation(line: 219, column: 20, scope: !4722)
!4729 = !DILocation(line: 219, column: 5, scope: !4722)
!4730 = !DILocation(line: 222, column: 16, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4722, file: !2424, line: 221, column: 5)
!4732 = !DILocation(line: 227, column: 7, scope: !4731)
!4733 = !DILocation(line: 229, column: 1, scope: !4713)
!4734 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !2424, file: !2424, line: 202, type: !4735, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4737)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{null, !2762, !2762}
!4737 = !{!4738, !4739}
!4738 = !DILocalVariable(name: "linknode", arg: 1, scope: !4734, file: !2424, line: 202, type: !2762)
!4739 = !DILocalVariable(name: "list", arg: 2, scope: !4734, file: !2424, line: 202, type: !2762)
!4740 = !DILocation(line: 0, scope: !4734)
!4741 = !DILocation(line: 206, column: 13, scope: !4734)
!4742 = !DILocation(line: 206, column: 18, scope: !4734)
!4743 = !DILocation(line: 207, column: 26, scope: !4734)
!4744 = !DILocation(line: 207, column: 13, scope: !4734)
!4745 = !DILocation(line: 207, column: 18, scope: !4734)
!4746 = !DILocation(line: 208, column: 9, scope: !4734)
!4747 = !DILocation(line: 208, column: 15, scope: !4734)
!4748 = !DILocation(line: 208, column: 20, scope: !4734)
!4749 = !DILocation(line: 209, column: 14, scope: !4734)
!4750 = !DILocation(line: 210, column: 1, scope: !4734)
!4751 = distinct !DISubprogram(name: "gimple_seq_last", scope: !396, file: !396, line: 178, type: !4676, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4752)
!4752 = !{!4753}
!4753 = !DILocalVariable(name: "s", arg: 1, scope: !4751, file: !396, line: 178, type: !4678)
!4754 = !DILocation(line: 0, scope: !4751)
!4755 = !DILocation(line: 180, column: 10, scope: !4751)
!4756 = !DILocation(line: 180, column: 17, scope: !4751)
!4757 = !DILocation(line: 180, column: 3, scope: !4751)
!4758 = distinct !DISubprogram(name: "gimple_set_op", scope: !396, file: !396, line: 1663, type: !4759, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4761)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{null, !794, !5, !472}
!4761 = !{!4762, !4763, !4764}
!4762 = !DILocalVariable(name: "gs", arg: 1, scope: !4758, file: !396, line: 1663, type: !794)
!4763 = !DILocalVariable(name: "i", arg: 2, scope: !4758, file: !396, line: 1663, type: !5)
!4764 = !DILocalVariable(name: "op", arg: 3, scope: !4758, file: !396, line: 1663, type: !472)
!4765 = !DILocation(line: 0, scope: !4758)
!4766 = !DILocation(line: 1665, column: 3, scope: !4758)
!4767 = !DILocation(line: 1671, column: 3, scope: !4758)
!4768 = !DILocation(line: 1671, column: 22, scope: !4758)
!4769 = !DILocation(line: 1672, column: 1, scope: !4758)
!4770 = distinct !DISubprogram(name: "gimple_num_ops", scope: !396, file: !396, line: 1596, type: !4771, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4773)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!5, !2997}
!4773 = !{!4774}
!4774 = !DILocalVariable(name: "gs", arg: 1, scope: !4770, file: !396, line: 1596, type: !2997)
!4775 = !DILocation(line: 0, scope: !4770)
!4776 = !DILocation(line: 1598, column: 21, scope: !4770)
!4777 = !DILocation(line: 1598, column: 3, scope: !4770)
!4778 = distinct !DISubprogram(name: "gimple_ops", scope: !396, file: !396, line: 1614, type: !3865, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4779)
!4779 = !{!4780, !4781}
!4780 = !DILocalVariable(name: "gs", arg: 1, scope: !4778, file: !396, line: 1614, type: !794)
!4781 = !DILocalVariable(name: "off", scope: !4778, file: !396, line: 1616, type: !939)
!4782 = !DILocation(line: 0, scope: !4778)
!4783 = !DILocation(line: 1621, column: 28, scope: !4778)
!4784 = !DILocation(line: 1621, column: 9, scope: !4778)
!4785 = !DILocation(line: 1622, column: 3, scope: !4778)
!4786 = !DILocation(line: 1624, column: 20, scope: !4778)
!4787 = !DILocation(line: 1624, column: 32, scope: !4778)
!4788 = !DILocation(line: 1624, column: 10, scope: !4778)
!4789 = !DILocation(line: 1624, column: 3, scope: !4778)
!4790 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !396, file: !396, line: 1073, type: !4791, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4793)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!434, !794}
!4793 = !{!4794}
!4794 = !DILocalVariable(name: "gs", arg: 1, scope: !4790, file: !396, line: 1073, type: !794)
!4795 = !DILocation(line: 0, scope: !4790)
!4796 = !DILocation(line: 1075, column: 24, scope: !4790)
!4797 = !DILocation(line: 1075, column: 10, scope: !4790)
!4798 = !DILocation(line: 1075, column: 3, scope: !4790)
!4799 = distinct !DISubprogram(name: "gss_for_code", scope: !396, file: !396, line: 1061, type: !4800, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4802)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!434, !395}
!4802 = !{!4803}
!4803 = !DILocalVariable(name: "code", arg: 1, scope: !4799, file: !396, line: 1061, type: !395)
!4804 = !DILocation(line: 0, scope: !4799)
!4805 = !DILocation(line: 1066, column: 10, scope: !4799)
!4806 = !DILocation(line: 1066, column: 3, scope: !4799)
!4807 = distinct !DISubprogram(name: "gsi_after_labels", scope: !396, file: !396, line: 4510, type: !2801, scopeLine: 4511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4808)
!4808 = !{!4809, !4810}
!4809 = !DILocalVariable(name: "bb", arg: 1, scope: !4807, file: !396, line: 4510, type: !1280)
!4810 = !DILocalVariable(name: "gsi", scope: !4807, file: !396, line: 4512, type: !2309)
!4811 = !DILocation(line: 0, scope: !4807)
!4812 = !DILocation(line: 4512, column: 24, scope: !4807)
!4813 = !DILocation(line: 4512, column: 30, scope: !4807)
!4814 = !DILocation(line: 4514, column: 3, scope: !4807)
!4815 = !DILocation(line: 4514, column: 11, scope: !4807)
!4816 = !DILocation(line: 4514, column: 27, scope: !4807)
!4817 = !DILocation(line: 4514, column: 43, scope: !4807)
!4818 = !DILocation(line: 4514, column: 30, scope: !4807)
!4819 = !DILocation(line: 4514, column: 59, scope: !4807)
!4820 = !DILocation(line: 4515, column: 5, scope: !4807)
!4821 = distinct !{!4821, !4814, !4822}
!4822 = !DILocation(line: 4515, column: 19, scope: !4807)
!4823 = !DILocation(line: 4517, column: 3, scope: !4807)
!4824 = distinct !DISubprogram(name: "rewrite_phi_with_iv", scope: !1, file: !1, line: 1118, type: !4825, scopeLine: 1122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4827)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{null, !1036, !2308, !2308, !472}
!4827 = !{!4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838}
!4828 = !DILocalVariable(name: "loop", arg: 1, scope: !4824, file: !1, line: 1118, type: !1036)
!4829 = !DILocalVariable(name: "psi", arg: 2, scope: !4824, file: !1, line: 1119, type: !2308)
!4830 = !DILocalVariable(name: "gsi", arg: 3, scope: !4824, file: !1, line: 1120, type: !2308)
!4831 = !DILocalVariable(name: "main_iv", arg: 4, scope: !4824, file: !1, line: 1121, type: !472)
!4832 = !DILocalVariable(name: "iv", scope: !4824, file: !1, line: 1123, type: !3174)
!4833 = !DILocalVariable(name: "stmt", scope: !4824, file: !1, line: 1124, type: !794)
!4834 = !DILocalVariable(name: "phi", scope: !4824, file: !1, line: 1124, type: !794)
!4835 = !DILocalVariable(name: "atype", scope: !4824, file: !1, line: 1125, type: !472)
!4836 = !DILocalVariable(name: "mtype", scope: !4824, file: !1, line: 1125, type: !472)
!4837 = !DILocalVariable(name: "val", scope: !4824, file: !1, line: 1125, type: !472)
!4838 = !DILocalVariable(name: "res", scope: !4824, file: !1, line: 1125, type: !472)
!4839 = !DILocation(line: 0, scope: !4824)
!4840 = !DILocation(line: 1123, column: 3, scope: !4824)
!4841 = !DILocation(line: 1124, column: 22, scope: !4824)
!4842 = !DILocation(line: 1125, column: 33, scope: !4824)
!4843 = !DILocation(line: 1127, column: 8, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4824, file: !1, line: 1127, column: 7)
!4845 = !DILocation(line: 1127, column: 35, scope: !4844)
!4846 = !DILocation(line: 1127, column: 28, scope: !4844)
!4847 = !DILocation(line: 1129, column: 7, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4844, file: !1, line: 1128, column: 5)
!4849 = !DILocation(line: 1130, column: 7, scope: !4848)
!4850 = !DILocation(line: 1133, column: 8, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4824, file: !1, line: 1133, column: 7)
!4852 = !DILocation(line: 1133, column: 7, scope: !4824)
!4853 = !DILocation(line: 1135, column: 7, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4851, file: !1, line: 1134, column: 5)
!4855 = !DILocation(line: 1136, column: 7, scope: !4854)
!4856 = !DILocation(line: 1139, column: 3, scope: !4824)
!4857 = !DILocation(line: 1141, column: 11, scope: !4824)
!4858 = !DILocation(line: 1142, column: 11, scope: !4824)
!4859 = !DILocation(line: 1142, column: 36, scope: !4824)
!4860 = !DILocation(line: 1143, column: 9, scope: !4824)
!4861 = !DILocation(line: 1145, column: 9, scope: !4824)
!4862 = !DILocation(line: 1148, column: 9, scope: !4824)
!4863 = !DILocation(line: 1150, column: 10, scope: !4824)
!4864 = !DILocation(line: 1151, column: 3, scope: !4824)
!4865 = !DILocation(line: 1152, column: 3, scope: !4824)
!4866 = !DILocation(line: 1152, column: 27, scope: !4824)
!4867 = !DILocation(line: 1153, column: 1, scope: !4824)
