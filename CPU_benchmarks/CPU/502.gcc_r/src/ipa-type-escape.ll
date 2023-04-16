; ModuleID = 'ipa-type-escape.bc'
source_filename = "ipa-type-escape.c"
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
%struct.splay_tree_s = type { %struct.splay_tree_node_s*, i32 (i64, i64)*, void (i64)*, void (i64)*, i8* (i32, i8*)*, void (i8*, i8*)*, i8* }
%struct.splay_tree_node_s = type { i64, i64, %struct.splay_tree_node_s*, %struct.splay_tree_node_s* }
%struct.pointer_set_t = type opaque
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
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
%struct.varpool_node = type { %union.tree_node*, %struct.varpool_node*, %struct.varpool_node*, %struct.varpool_node*, i32, i8 }
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, void ()*, void (%struct.cgraph_node_set_def*)*, void ()*, void (%struct.cgraph_node*)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* }
%struct.cgraph_node_set_def = type { %struct.htab*, %struct.VEC_cgraph_node_ptr_gc*, i8* }
%struct.VEC_cgraph_node_ptr_gc = type { %struct.VEC_cgraph_node_ptr_base }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x %struct.cgraph_node*] }
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.cast = type { i32, %union.gimple_statement_d* }
%struct.tree_ssa_name = type { %struct.tree_common, %union.tree_node*, %union.gimple_statement_d*, i32, %struct.ptr_info_def*, %struct.ssa_use_operand_d }
%struct.ptr_info_def = type { %struct.pt_solution }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.type_brand_s = type { i8*, i32 }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, i8*, i8, i8, i8, i8, [1 x %union.tree_node*] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, %union.tree_node*, %union.tree_node* }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, %struct.def_optype_d*, %struct.use_optype_d* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@initialized = internal unnamed_addr global i1 false, align 1, !dbg !0
@global_types_full_escape = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !1787
@uid_to_addressof_down_map = internal unnamed_addr global %struct.splay_tree_s* null, align 8, !dbg !1789
@visited_stmts = internal unnamed_addr global %struct.pointer_set_t* null, align 8, !dbg !1827
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [16 x i8] c"type-escape-var\00", align 1
@pass_ipa_type_escape = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_type_escape_vars, i32 ()* @type_escape_execute, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !1759
@type_to_canon_type = internal unnamed_addr global %struct.splay_tree_s* null, align 8, !dbg !1832
@all_canon_types = internal unnamed_addr global %struct.splay_tree_s* null, align 8, !dbg !1834
@uid_to_canon_type = internal unnamed_addr global %struct.splay_tree_s* null, align 8, !dbg !1836
@global_types_seen = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !1838
@.str.1 = private unnamed_addr constant [10 x i8] c"<UNNAMED>\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ipa-type-escape.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_types_exposed_parameter = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !1840
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@flag_ipa_type_escape = external dso_local local_unnamed_addr global i32, align 4
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@varpool_nodes_queue = external dso_local local_unnamed_addr global %struct.varpool_node*, align 8
@cgraph_nodes = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8
@visited_nodes = internal unnamed_addr global %struct.pointer_set_t* null, align 8, !dbg !1842
@ipa_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8, !dbg !1844
@been_there_done_that = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !1846
@bitmap_tmp = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !1848
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"type %d \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" escaped\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" contained\0A\00", align 1
@uid_to_addressof_up_map = internal unnamed_addr global %struct.splay_tree_s* null, align 8, !dbg !1850
@uid_to_subtype_map = internal unnamed_addr global %struct.splay_tree_s* null, align 8, !dbg !1852
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.9 = private unnamed_addr constant [23 x i8] c"\0A local analysis of %s\00", align 1
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1858 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1871, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1872, metadata !DIExpression()), !dbg !1873
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1874
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1875
  ret i32 %call, !dbg !1876
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1877 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1881
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1882
  ret i32 %call, !dbg !1883
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1884 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1939, metadata !DIExpression()), !dbg !1940
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1941
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1941
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1941
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1941
  %cmp = icmp uge i8* %0, %1, !dbg !1941
  %conv1 = zext i1 %cmp to i64, !dbg !1941
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1941
  %tobool = icmp eq i64 %expval, 0, !dbg !1941
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1941

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1941
  br label %cond.end, !dbg !1941

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1941
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1941
  %2 = load i8, i8* %0, align 1, !dbg !1941
  %conv3 = zext i8 %2 to i32, !dbg !1941
  br label %cond.end, !dbg !1941

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1941
  ret i32 %cond, !dbg !1942
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1943 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1945, metadata !DIExpression()), !dbg !1946
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1947
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1947
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1947
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1947
  %cmp = icmp uge i8* %0, %1, !dbg !1947
  %conv1 = zext i1 %cmp to i64, !dbg !1947
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1947
  %tobool = icmp eq i64 %expval, 0, !dbg !1947
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1947

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1947
  br label %cond.end, !dbg !1947

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1947
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1947
  %2 = load i8, i8* %0, align 1, !dbg !1947
  %conv3 = zext i8 %2 to i32, !dbg !1947
  br label %cond.end, !dbg !1947

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1947
  ret i32 %cond, !dbg !1948
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1949 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1950
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1950
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1950
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1950
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1950
  %cmp = icmp uge i8* %1, %2, !dbg !1950
  %conv1 = zext i1 %cmp to i64, !dbg !1950
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1950
  %tobool = icmp eq i64 %expval, 0, !dbg !1950
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1950

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1950
  br label %cond.end, !dbg !1950

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1950
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1950
  %3 = load i8, i8* %1, align 1, !dbg !1950
  %conv3 = zext i8 %3 to i32, !dbg !1950
  br label %cond.end, !dbg !1950

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1950
  ret i32 %cond, !dbg !1951
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1952 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1956, metadata !DIExpression()), !dbg !1957
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1958
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1959
  ret i32 %call, !dbg !1960
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1961 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1965, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1966, metadata !DIExpression()), !dbg !1967
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1968
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1968
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1968
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1968
  %cmp = icmp uge i8* %0, %1, !dbg !1968
  %conv1 = zext i1 %cmp to i64, !dbg !1968
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1968
  %tobool = icmp eq i64 %expval, 0, !dbg !1968
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1968

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1968
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1968
  br label %cond.end, !dbg !1968

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1968
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1968
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1968
  store i8 %conv2, i8* %0, align 1, !dbg !1968
  %conv6 = and i32 %__c, 255, !dbg !1968
  br label %cond.end, !dbg !1968

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1968
  ret i32 %cond, !dbg !1969
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1970 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1972, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1973, metadata !DIExpression()), !dbg !1974
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1975
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1975
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1975
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1975
  %cmp = icmp uge i8* %0, %1, !dbg !1975
  %conv1 = zext i1 %cmp to i64, !dbg !1975
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1975
  %tobool = icmp eq i64 %expval, 0, !dbg !1975
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1975

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1975
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1975
  br label %cond.end, !dbg !1975

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1975
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1975
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1975
  store i8 %conv2, i8* %0, align 1, !dbg !1975
  %conv6 = and i32 %__c, 255, !dbg !1975
  br label %cond.end, !dbg !1975

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1975
  ret i32 %cond, !dbg !1976
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1977 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1979, metadata !DIExpression()), !dbg !1980
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1981
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1981
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1981
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1981
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1981
  %cmp = icmp uge i8* %1, %2, !dbg !1981
  %conv1 = zext i1 %cmp to i64, !dbg !1981
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1981
  %tobool = icmp eq i64 %expval, 0, !dbg !1981
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1981

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1981
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1981
  br label %cond.end, !dbg !1981

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1981
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1981
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1981
  store i8 %conv4, i8* %1, align 1, !dbg !1981
  %conv6 = and i32 %__c, 255, !dbg !1981
  br label %cond.end, !dbg !1981

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1981
  ret i32 %cond, !dbg !1982
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1983 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1989, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1990, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1991, metadata !DIExpression()), !dbg !1992
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1993
  ret i64 %call, !dbg !1994
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1995 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1997, metadata !DIExpression()), !dbg !1998
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1999
  %0 = load i32, i32* %_flags, align 8, !dbg !1999
  %and = lshr i32 %0, 4, !dbg !1999
  %and.lobit = and i32 %and, 1, !dbg !1999
  ret i32 %and.lobit, !dbg !2000
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2001 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2003, metadata !DIExpression()), !dbg !2004
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2005
  %0 = load i32, i32* %_flags, align 8, !dbg !2005
  %and = lshr i32 %0, 5, !dbg !2005
  %and.lobit = and i32 %and, 1, !dbg !2005
  ret i32 %and.lobit, !dbg !2006
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2007 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2010, metadata !DIExpression()), !dbg !2011
  %__c.off = add i32 %__c, 128, !dbg !2012
  %0 = icmp ult i32 %__c.off, 384, !dbg !2012
  br i1 %0, label %cond.true, label %cond.end, !dbg !2012

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2013
  %1 = load i32*, i32** %call, align 8, !dbg !2014
  %idxprom = sext i32 %__c to i64, !dbg !2015
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2015
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2015
  br label %cond.end, !dbg !2016

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2016
  ret i32 %cond, !dbg !2017
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2018 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2020, metadata !DIExpression()), !dbg !2021
  %__c.off = add i32 %__c, 128, !dbg !2022
  %0 = icmp ult i32 %__c.off, 384, !dbg !2022
  br i1 %0, label %cond.true, label %cond.end, !dbg !2022

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2023
  %1 = load i32*, i32** %call, align 8, !dbg !2024
  %idxprom = sext i32 %__c to i64, !dbg !2025
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2025
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2025
  br label %cond.end, !dbg !2026

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2026
  ret i32 %cond, !dbg !2027
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2028 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2033, metadata !DIExpression()), !dbg !2034
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2035
  %conv = trunc i64 %call to i32, !dbg !2036
  ret i32 %conv, !dbg !2037
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2038 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2042, metadata !DIExpression()), !dbg !2043
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2044
  ret i64 %call, !dbg !2045
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2046 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2051, metadata !DIExpression()), !dbg !2052
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2053
  ret i64 %call, !dbg !2054
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2055 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2061, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2062, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2063, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2064, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2065, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 0, metadata !2066, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2067, metadata !DIExpression()), !dbg !2071
  br label %while.cond, !dbg !2072

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2073
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2071
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2067, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2066, metadata !DIExpression()), !dbg !2071
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2074
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2072

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2075
  %div = lshr i64 %add, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %div, metadata !2068, metadata !DIExpression()), !dbg !2071
  %mul = mul i64 %div, %__size, !dbg !2078
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2079
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2069, metadata !DIExpression()), !dbg !2071
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %call, metadata !2070, metadata !DIExpression()), !dbg !2071
  %cmp1 = icmp slt i32 %call, 0, !dbg !2081
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2083

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2084
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2086

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2066, metadata !DIExpression()), !dbg !2071
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2071
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2071
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2067, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2066, metadata !DIExpression()), !dbg !2071
  br label %while.cond, !dbg !2072, !llvm.loop !2088

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2071
  ret i8* %retval.0, !dbg !2090
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2091 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2097, metadata !DIExpression()), !dbg !2098
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2099
  ret double %call, !dbg !2100
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2101 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2110, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2111, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %base, metadata !2112, metadata !DIExpression()), !dbg !2113
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2114
  ret i64 %call, !dbg !2115
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2116 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2122, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2123, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i32 %base, metadata !2124, metadata !DIExpression()), !dbg !2125
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2126
  ret i64 %call, !dbg !2127
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2128 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2139, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2140, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i32 %base, metadata !2141, metadata !DIExpression()), !dbg !2142
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2143
  ret i64 %call, !dbg !2144
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2145 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2149, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2150, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i32 %base, metadata !2151, metadata !DIExpression()), !dbg !2152
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2153
  ret i64 %call, !dbg !2154
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2155 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2197, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2198, metadata !DIExpression()), !dbg !2199
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2200
  ret i32 %call, !dbg !2201
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2202 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2204, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2205, metadata !DIExpression()), !dbg !2206
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2207
  ret i32 %call, !dbg !2208
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2209 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2213, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2214, metadata !DIExpression()), !dbg !2215
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2216
  ret i32 %call, !dbg !2217
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2218 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2222, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2223, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2224, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2225, metadata !DIExpression()), !dbg !2226
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2227
  ret i32 %call, !dbg !2228
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2229 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2233, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2234, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2235, metadata !DIExpression()), !dbg !2236
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2235, metadata !DIExpression(DW_OP_deref)), !dbg !2236
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2237
  ret i32 %call, !dbg !2238
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2239 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2243, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2244, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2245, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2246, metadata !DIExpression()), !dbg !2247
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2246, metadata !DIExpression(DW_OP_deref)), !dbg !2247
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2248
  ret i32 %call, !dbg !2249
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2250 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2274, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2275, metadata !DIExpression()), !dbg !2276
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2277
  ret i32 %call, !dbg !2278
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2279 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2281, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2282, metadata !DIExpression()), !dbg !2283
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2284
  ret i32 %call, !dbg !2285
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2286 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2290, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2291, metadata !DIExpression()), !dbg !2292
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2293
  ret i32 %call, !dbg !2294
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2295 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2299, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2300, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2301, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2302, metadata !DIExpression()), !dbg !2303
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2304
  ret i32 %call, !dbg !2305
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ipa_type_escape_star_count_of_interesting_type(%union.tree_node* %type) local_unnamed_addr #5 !dbg !2306 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2310, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 0, metadata !2311, metadata !DIExpression()), !dbg !2312
  %tobool = icmp eq %union.tree_node* %type, null, !dbg !2313
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2315

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2316
  br label %while.cond, !dbg !2317

while.cond:                                       ; preds = %while.body, %if.end
  %count.0 = phi i32 [ 0, %if.end ], [ %inc, %while.body ], !dbg !2312
  %type.addr.0.in = phi %union.tree_node** [ %0, %if.end ], [ %main_variant9, %while.body ]
  %type.addr.0 = load %union.tree_node*, %union.tree_node** %type.addr.0.in, align 8, !dbg !2312
  call void @llvm.dbg.value(metadata %union.tree_node* %type.addr.0, metadata !2310, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !2311, metadata !DIExpression()), !dbg !2312
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2318
  %bf.load = load i64, i64* %1, align 8, !dbg !2318
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2318
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !2318
  %cmp6 = icmp eq i64 %bf.cast1, 12, !dbg !2318
  %or.cond = or i1 %cmp, %cmp6, !dbg !2318
  br i1 %or.cond, label %while.body, label %while.end, !dbg !2318

while.body:                                       ; preds = %while.cond
  %type7 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2319
  %2 = bitcast %union.tree_node** %type7 to %struct.tree_type**, !dbg !2319
  %3 = load %struct.tree_type*, %struct.tree_type** %2, align 8, !dbg !2319
  %main_variant9 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 16, !dbg !2319
  %inc = add nuw nsw i32 %count.0, 1, !dbg !2321
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2311, metadata !DIExpression()), !dbg !2312
  br label %while.cond, !dbg !2317, !llvm.loop !2322

while.end:                                        ; preds = %while.cond
  %count.0.lcssa = phi i32 [ %count.0, %while.cond ], !dbg !2312
  %bf.cast1.lcssa = phi i64 [ %bf.cast1, %while.cond ], !dbg !2318
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !2311, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !2311, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !2311, metadata !DIExpression()), !dbg !2312
  %cmp14 = icmp eq i64 %bf.cast1.lcssa, 16, !dbg !2324
  br i1 %cmp14, label %cleanup, label %lor.lhs.false, !dbg !2326

lor.lhs.false:                                    ; preds = %while.end
  %cmp19 = icmp eq i64 %bf.cast1.lcssa, 18, !dbg !2327
  br i1 %cmp19, label %cleanup, label %lor.lhs.false20, !dbg !2328

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %cmp25 = icmp eq i64 %bf.cast1.lcssa, 17, !dbg !2329
  %spec.select = select i1 %cmp25, i32 %count.0.lcssa, i32 -1, !dbg !2330
  ret i32 %spec.select, !dbg !2330

cleanup:                                          ; preds = %entry, %while.end, %lor.lhs.false
  %retval.0 = phi i32 [ -1, %entry ], [ %count.0.lcssa, %lor.lhs.false ], [ %count.0.lcssa, %while.end ], !dbg !2312
  ret i32 %retval.0, !dbg !2331
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ipa_type_escape_star_count_of_interesting_or_array_type(%union.tree_node* %type) local_unnamed_addr #5 !dbg !2332 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i32 0, metadata !2335, metadata !DIExpression()), !dbg !2336
  %tobool = icmp eq %union.tree_node* %type, null, !dbg !2337
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2339

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2340
  br label %while.cond, !dbg !2341

while.cond:                                       ; preds = %while.body, %if.end
  %count.0 = phi i32 [ 0, %if.end ], [ %inc, %while.body ], !dbg !2336
  %type.addr.0.in = phi %union.tree_node** [ %0, %if.end ], [ %main_variant14, %while.body ]
  %type.addr.0 = load %union.tree_node*, %union.tree_node** %type.addr.0.in, align 8, !dbg !2336
  call void @llvm.dbg.value(metadata %union.tree_node* %type.addr.0, metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !2335, metadata !DIExpression()), !dbg !2336
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2342
  %bf.load = load i64, i64* %1, align 8, !dbg !2342
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !2342
  %cmp = icmp eq i64 %bf.cast2, 10, !dbg !2342
  br i1 %cmp, label %while.body, label %lor.lhs.false, !dbg !2342

lor.lhs.false:                                    ; preds = %while.cond
  %cmp6 = icmp eq i64 %bf.cast2, 12, !dbg !2342
  %cmp11 = icmp eq i64 %bf.cast2, 15, !dbg !2343
  %or.cond = or i1 %cmp6, %cmp11, !dbg !2344
  br i1 %or.cond, label %while.body, label %while.end, !dbg !2344

while.body:                                       ; preds = %while.cond, %lor.lhs.false
  %type12 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2345
  %2 = bitcast %union.tree_node** %type12 to %struct.tree_type**, !dbg !2345
  %3 = load %struct.tree_type*, %struct.tree_type** %2, align 8, !dbg !2345
  %main_variant14 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 16, !dbg !2345
  %inc = add nuw nsw i32 %count.0, 1, !dbg !2347
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2335, metadata !DIExpression()), !dbg !2336
  br label %while.cond, !dbg !2341, !llvm.loop !2348

while.end:                                        ; preds = %lor.lhs.false
  %count.0.lcssa = phi i32 [ %count.0, %lor.lhs.false ], !dbg !2336
  %bf.cast2.lcssa = phi i64 [ %bf.cast2, %lor.lhs.false ], !dbg !2342
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !2335, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !2335, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !2335, metadata !DIExpression()), !dbg !2336
  %cmp19 = icmp eq i64 %bf.cast2.lcssa, 16, !dbg !2350
  br i1 %cmp19, label %cleanup, label %lor.lhs.false20, !dbg !2352

lor.lhs.false20:                                  ; preds = %while.end
  %cmp25 = icmp eq i64 %bf.cast2.lcssa, 18, !dbg !2353
  br i1 %cmp25, label %cleanup, label %lor.lhs.false26, !dbg !2354

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %cmp31 = icmp eq i64 %bf.cast2.lcssa, 17, !dbg !2355
  %spec.select = select i1 %cmp31, i32 %count.0.lcssa, i32 -1, !dbg !2356
  ret i32 %spec.select, !dbg !2356

cleanup:                                          ; preds = %entry, %while.end, %lor.lhs.false20
  %retval.0 = phi i32 [ -1, %entry ], [ %count.0.lcssa, %lor.lhs.false20 ], [ %count.0.lcssa, %while.end ], !dbg !2336
  ret i32 %retval.0, !dbg !2357
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ipa_type_escape_type_contained_p(%union.tree_node* %type) local_unnamed_addr #5 !dbg !2358 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2362, metadata !DIExpression()), !dbg !2363
  %.b = load i1, i1* @initialized, align 1, !dbg !2364
  br i1 %.b, label %if.end, label %return, !dbg !2366

if.end:                                           ; preds = %entry
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @global_types_full_escape, align 8, !dbg !2367
  %call = tail call fastcc i32 @get_canon_type_uid(%union.tree_node* %type, i8 zeroext 1, i8 zeroext 0) #7, !dbg !2368
  %call1 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %0, i32 %call) #6, !dbg !2369
  %tobool2 = icmp eq i32 %call1, 0, !dbg !2370
  %conv = zext i1 %tobool2 to i8, !dbg !2370
  br label %return, !dbg !2371

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %conv, %if.end ], [ 0, %entry ], !dbg !2363
  ret i8 %retval.0, !dbg !2372
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_canon_type_uid(%union.tree_node* %type, i8 zeroext %see_thru_ptrs, i8 zeroext %see_thru_arrays) unnamed_addr #5 !dbg !2373 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2377, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 1, metadata !2378, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 %see_thru_arrays, metadata !2379, metadata !DIExpression()), !dbg !2380
  %call = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %type, i8 zeroext 1, i8 zeroext %see_thru_arrays) #7, !dbg !2381
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2377, metadata !DIExpression()), !dbg !2380
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !2382
  br i1 %tobool, label %return, label %if.then, !dbg !2384

if.then:                                          ; preds = %entry
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2385
  %0 = bitcast i40* %uid to i32*, !dbg !2385
  %1 = load i32, i32* %0, align 8, !dbg !2385
  br label %return, !dbg !2386

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %entry ], !dbg !2387
  ret i32 %retval.0, !dbg !2388
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ipa_type_escape_field_does_not_clobber_p(%union.tree_node* %record_type, %union.tree_node* %field_type) local_unnamed_addr #5 !dbg !2389 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %record_type, metadata !2393, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata %union.tree_node* %field_type, metadata !2394, metadata !DIExpression()), !dbg !2400
  %.b = load i1, i1* @initialized, align 1, !dbg !2401
  br i1 %.b, label %if.end, label %cleanup, !dbg !2403

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %record_type, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2404
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2404
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2393, metadata !DIExpression()), !dbg !2400
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %field_type, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2405
  br label %while.cond, !dbg !2406

while.cond:                                       ; preds = %if.then21, %if.end
  %field_type.addr.0.in = phi %union.tree_node** [ %2, %if.end ], [ %main_variant25, %if.then21 ]
  %record_type.addr.0 = phi %union.tree_node* [ %1, %if.end ], [ %6, %if.then21 ], !dbg !2400
  %field_type.addr.0 = load %union.tree_node*, %union.tree_node** %field_type.addr.0.in, align 8, !dbg !2400
  call void @llvm.dbg.value(metadata %union.tree_node* %record_type.addr.0, metadata !2393, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata %union.tree_node* %field_type.addr.0, metadata !2394, metadata !DIExpression()), !dbg !2400
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %record_type.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2407
  %bf.load = load i64, i64* %3, align 8, !dbg !2407
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2407
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !2407
  br i1 %cmp, label %while.body, label %lor.rhs, !dbg !2407

lor.rhs:                                          ; preds = %while.cond
  %cmp7 = icmp eq i64 %bf.cast1, 12, !dbg !2407
  br i1 %cmp7, label %while.body, label %while.end58.loopexit9, !dbg !2406

while.body:                                       ; preds = %while.cond, %lor.rhs
  %type8 = getelementptr inbounds %union.tree_node, %union.tree_node* %record_type.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2408
  %4 = bitcast %union.tree_node** %type8 to %struct.tree_type**, !dbg !2408
  %5 = load %struct.tree_type*, %struct.tree_type** %4, align 8, !dbg !2408
  %main_variant10 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %5, i64 0, i32 16, !dbg !2408
  %6 = load %union.tree_node*, %union.tree_node** %main_variant10, align 8, !dbg !2408
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !2393, metadata !DIExpression()), !dbg !2400
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %field_type.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2410
  %bf.load12 = load i64, i64* %7, align 8, !dbg !2410
  %bf.cast143 = and i64 %bf.load12, 65535, !dbg !2410
  %cmp15 = icmp eq i64 %bf.cast143, 10, !dbg !2410
  br i1 %cmp15, label %if.then21, label %lor.lhs.false, !dbg !2410

lor.lhs.false:                                    ; preds = %while.body
  %cmp20 = icmp eq i64 %bf.cast143, 12, !dbg !2410
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !2412

if.then21:                                        ; preds = %lor.lhs.false, %while.body
  %type23 = getelementptr inbounds %union.tree_node, %union.tree_node* %field_type.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2413
  %8 = bitcast %union.tree_node** %type23 to %struct.tree_type**, !dbg !2413
  %9 = load %struct.tree_type*, %struct.tree_type** %8, align 8, !dbg !2413
  %main_variant25 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %9, i64 0, i32 16, !dbg !2413
  br label %while.cond, !dbg !2406, !llvm.loop !2414

if.else:                                          ; preds = %lor.lhs.false
  %.lcssa = phi %union.tree_node* [ %6, %lor.lhs.false ], !dbg !2408
  %bf.cast143.lcssa = phi i64 [ %bf.cast143, %lor.lhs.false ], !dbg !2410
  %field_type.addr.0.lcssa17 = phi %union.tree_node* [ %field_type.addr.0, %lor.lhs.false ], !dbg !2400
  %cmp30 = icmp eq i64 %bf.cast143.lcssa, 18, !dbg !2416
  br i1 %cmp30, label %if.then37, label %lor.lhs.false31, !dbg !2418

lor.lhs.false31:                                  ; preds = %if.else
  %cmp36 = icmp eq i64 %bf.cast143.lcssa, 17, !dbg !2419
  br i1 %cmp36, label %if.then37, label %cleanup, !dbg !2420

if.then37:                                        ; preds = %lor.lhs.false31, %if.else
  br label %while.cond38, !dbg !2421

while.cond38:                                     ; preds = %while.body51, %if.then37
  %record_type.addr.1 = phi %union.tree_node* [ %.lcssa, %if.then37 ], [ %13, %while.body51 ], !dbg !2423
  call void @llvm.dbg.value(metadata %union.tree_node* %record_type.addr.1, metadata !2393, metadata !DIExpression()), !dbg !2400
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %record_type.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2424
  %bf.load40 = load i64, i64* %10, align 8, !dbg !2424
  %bf.cast427 = and i64 %bf.load40, 65535, !dbg !2424
  %cmp43 = icmp eq i64 %bf.cast427, 10, !dbg !2424
  %cmp49 = icmp eq i64 %bf.cast427, 12, !dbg !2424
  %or.cond = or i1 %cmp43, %cmp49, !dbg !2424
  br i1 %or.cond, label %while.body51, label %while.end58.loopexit, !dbg !2424

while.body51:                                     ; preds = %while.cond38
  %type53 = getelementptr inbounds %union.tree_node, %union.tree_node* %record_type.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2425
  %11 = bitcast %union.tree_node** %type53 to %struct.tree_type**, !dbg !2425
  %12 = load %struct.tree_type*, %struct.tree_type** %11, align 8, !dbg !2425
  %main_variant55 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %12, i64 0, i32 16, !dbg !2425
  %13 = load %union.tree_node*, %union.tree_node** %main_variant55, align 8, !dbg !2425
  call void @llvm.dbg.value(metadata %union.tree_node* %13, metadata !2393, metadata !DIExpression()), !dbg !2400
  br label %while.cond38, !dbg !2421, !llvm.loop !2426

while.end58.loopexit:                             ; preds = %while.cond38
  %record_type.addr.1.lcssa = phi %union.tree_node* [ %record_type.addr.1, %while.cond38 ], !dbg !2423
  call void @llvm.dbg.value(metadata %union.tree_node* %record_type.addr.1.lcssa, metadata !2393, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata %union.tree_node* %record_type.addr.1.lcssa, metadata !2393, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata %union.tree_node* %record_type.addr.1.lcssa, metadata !2393, metadata !DIExpression()), !dbg !2400
  br label %while.end58, !dbg !2427

while.end58.loopexit9:                            ; preds = %lor.rhs
  %record_type.addr.0.lcssa = phi %union.tree_node* [ %record_type.addr.0, %lor.rhs ], !dbg !2400
  %field_type.addr.0.lcssa = phi %union.tree_node* [ %field_type.addr.0, %lor.rhs ], !dbg !2400
  call void @llvm.dbg.value(metadata %union.tree_node* %record_type.addr.0.lcssa, metadata !2393, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata %union.tree_node* %record_type.addr.0.lcssa, metadata !2393, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata %union.tree_node* %record_type.addr.0.lcssa, metadata !2393, metadata !DIExpression()), !dbg !2400
  br label %while.end58, !dbg !2427

while.end58:                                      ; preds = %while.end58.loopexit9, %while.end58.loopexit
  %field_type.addr.018 = phi %union.tree_node* [ %field_type.addr.0.lcssa17, %while.end58.loopexit ], [ %field_type.addr.0.lcssa, %while.end58.loopexit9 ]
  %record_type.addr.2 = phi %union.tree_node* [ %record_type.addr.1.lcssa, %while.end58.loopexit ], [ %record_type.addr.0.lcssa, %while.end58.loopexit9 ], !dbg !2400
  call void @llvm.dbg.value(metadata %union.tree_node* %record_type.addr.2, metadata !2393, metadata !DIExpression()), !dbg !2400
  %call = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %record_type.addr.2, i8 zeroext 1, i8 zeroext 1) #7, !dbg !2427
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2393, metadata !DIExpression()), !dbg !2400
  %call59 = tail call zeroext i8 @ipa_type_escape_type_contained_p(%union.tree_node* %call) #7, !dbg !2428
  %tobool60 = icmp eq i8 %call59, 0, !dbg !2428
  br i1 %tobool60, label %cleanup, label %if.end62, !dbg !2430

if.end62:                                         ; preds = %while.end58
  %uid64 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2431
  %14 = bitcast i40* %uid64 to i32*, !dbg !2431
  %15 = load i32, i32* %14, align 8, !dbg !2431
  call void @llvm.dbg.value(metadata i32 %15, metadata !2396, metadata !DIExpression()), !dbg !2400
  %16 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_addressof_down_map, align 8, !dbg !2432
  %conv = sext i32 %15 to i64, !dbg !2433
  %call65 = tail call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %16, i64 %conv) #6, !dbg !2434
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call65, metadata !2395, metadata !DIExpression()), !dbg !2400
  %tobool66 = icmp eq %struct.splay_tree_node_s* %call65, null, !dbg !2435
  br i1 %tobool66, label %cleanup, label %if.then67, !dbg !2436

if.then67:                                        ; preds = %if.end62
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %call65, i64 0, i32 1, !dbg !2437
  %17 = bitcast i64* %value to %struct.bitmap_head_def**, !dbg !2437
  %18 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %17, align 8, !dbg !2437
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %18, metadata !2397, metadata !DIExpression()), !dbg !2438
  %call68 = tail call fastcc i32 @get_canon_type_uid(%union.tree_node* %field_type.addr.018, i8 zeroext 1, i8 zeroext 1) #7, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %call68, metadata !2396, metadata !DIExpression()), !dbg !2400
  %call69 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %18, i32 %call68) #6, !dbg !2440
  %tobool70 = icmp eq i32 %call69, 0, !dbg !2441
  %conv71 = zext i1 %tobool70 to i8, !dbg !2441
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end62, %while.end58, %lor.lhs.false31, %if.then67
  %retval.0 = phi i8 [ %conv71, %if.then67 ], [ 0, %entry ], [ 1, %lor.lhs.false31 ], [ 0, %while.end58 ], [ 1, %if.end62 ], !dbg !2400
  ret i8 %retval.0, !dbg !2442
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @get_canon_type(%union.tree_node* %type, i8 zeroext %see_thru_ptrs, i8 zeroext %see_thru_arrays) unnamed_addr #5 !dbg !2443 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2447, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8 %see_thru_ptrs, metadata !2448, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8 %see_thru_arrays, metadata !2449, metadata !DIExpression()), !dbg !2451
  %tobool = icmp eq %union.tree_node* %type, null, !dbg !2452
  br i1 %tobool, label %cleanup, label %lor.lhs.false, !dbg !2454

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc zeroext i8 @type_to_consider(%union.tree_node* nonnull %type) #7, !dbg !2455
  %tobool1 = icmp eq i8 %call, 0, !dbg !2455
  br i1 %tobool1, label %cleanup, label %if.end, !dbg !2456

if.end:                                           ; preds = %lor.lhs.false
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2457
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2457
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2447, metadata !DIExpression()), !dbg !2451
  %tobool3 = icmp eq i8 %see_thru_arrays, 0, !dbg !2458
  br i1 %tobool3, label %if.else, label %while.cond.preheader, !dbg !2460

while.cond.preheader:                             ; preds = %if.end
  br label %while.cond, !dbg !2461

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %type.addr.0 = phi %union.tree_node* [ %5, %while.body ], [ %1, %while.cond.preheader ], !dbg !2451
  call void @llvm.dbg.value(metadata %union.tree_node* %type.addr.0, metadata !2447, metadata !DIExpression()), !dbg !2451
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2462
  %bf.load = load i64, i64* %2, align 8, !dbg !2462
  %bf.cast4 = and i64 %bf.load, 65535, !dbg !2462
  %cmp = icmp eq i64 %bf.cast4, 10, !dbg !2462
  br i1 %cmp, label %while.body, label %lor.lhs.false5, !dbg !2462

lor.lhs.false5:                                   ; preds = %while.cond
  %cmp10 = icmp eq i64 %bf.cast4, 12, !dbg !2462
  %cmp15 = icmp eq i64 %bf.cast4, 15, !dbg !2463
  %or.cond8 = or i1 %cmp10, %cmp15, !dbg !2464
  br i1 %or.cond8, label %while.body, label %if.end41.loopexit7, !dbg !2464

while.body:                                       ; preds = %while.cond, %lor.lhs.false5
  %type16 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2465
  %3 = bitcast %union.tree_node** %type16 to %struct.tree_type**, !dbg !2465
  %4 = load %struct.tree_type*, %struct.tree_type** %3, align 8, !dbg !2465
  %main_variant18 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %4, i64 0, i32 16, !dbg !2465
  %5 = load %union.tree_node*, %union.tree_node** %main_variant18, align 8, !dbg !2465
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !2447, metadata !DIExpression()), !dbg !2451
  br label %while.cond, !dbg !2461, !llvm.loop !2466

if.else:                                          ; preds = %if.end
  %tobool19 = icmp eq i8 %see_thru_ptrs, 0, !dbg !2467
  br i1 %tobool19, label %if.end41, label %while.cond21.preheader, !dbg !2469

while.cond21.preheader:                           ; preds = %if.else
  br label %while.cond21, !dbg !2470

while.cond21:                                     ; preds = %while.cond21.preheader, %while.body34
  %type.addr.1 = phi %union.tree_node* [ %9, %while.body34 ], [ %1, %while.cond21.preheader ], !dbg !2451
  call void @llvm.dbg.value(metadata %union.tree_node* %type.addr.1, metadata !2447, metadata !DIExpression()), !dbg !2451
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2471
  %bf.load23 = load i64, i64* %6, align 8, !dbg !2471
  %bf.cast252 = and i64 %bf.load23, 65535, !dbg !2471
  %cmp26 = icmp eq i64 %bf.cast252, 10, !dbg !2471
  %cmp32 = icmp eq i64 %bf.cast252, 12, !dbg !2471
  %or.cond = or i1 %cmp26, %cmp32, !dbg !2471
  br i1 %or.cond, label %while.body34, label %if.end41.loopexit, !dbg !2471

while.body34:                                     ; preds = %while.cond21
  %type36 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2472
  %7 = bitcast %union.tree_node** %type36 to %struct.tree_type**, !dbg !2472
  %8 = load %struct.tree_type*, %struct.tree_type** %7, align 8, !dbg !2472
  %main_variant38 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %8, i64 0, i32 16, !dbg !2472
  %9 = load %union.tree_node*, %union.tree_node** %main_variant38, align 8, !dbg !2472
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !2447, metadata !DIExpression()), !dbg !2451
  br label %while.cond21, !dbg !2470, !llvm.loop !2473

if.end41.loopexit:                                ; preds = %while.cond21
  %type.addr.1.lcssa = phi %union.tree_node* [ %type.addr.1, %while.cond21 ], !dbg !2451
  call void @llvm.dbg.value(metadata %union.tree_node* %type.addr.1.lcssa, metadata !2447, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %union.tree_node* %type.addr.1.lcssa, metadata !2447, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %union.tree_node* %type.addr.1.lcssa, metadata !2447, metadata !DIExpression()), !dbg !2451
  br label %if.end41, !dbg !2474

if.end41.loopexit7:                               ; preds = %lor.lhs.false5
  %type.addr.0.lcssa = phi %union.tree_node* [ %type.addr.0, %lor.lhs.false5 ], !dbg !2451
  call void @llvm.dbg.value(metadata %union.tree_node* %type.addr.0.lcssa, metadata !2447, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %union.tree_node* %type.addr.0.lcssa, metadata !2447, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata %union.tree_node* %type.addr.0.lcssa, metadata !2447, metadata !DIExpression()), !dbg !2451
  br label %if.end41, !dbg !2474

if.end41:                                         ; preds = %if.end41.loopexit7, %if.end41.loopexit, %if.else
  %type.addr.3 = phi %union.tree_node* [ %1, %if.else ], [ %type.addr.1.lcssa, %if.end41.loopexit ], [ %type.addr.0.lcssa, %if.end41.loopexit7 ], !dbg !2475
  call void @llvm.dbg.value(metadata %union.tree_node* %type.addr.3, metadata !2447, metadata !DIExpression()), !dbg !2451
  %10 = load %struct.splay_tree_s*, %struct.splay_tree_s** @type_to_canon_type, align 8, !dbg !2474
  %11 = ptrtoint %union.tree_node* %type.addr.3 to i64, !dbg !2476
  %call42 = tail call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %10, i64 %11) #6, !dbg !2477
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call42, metadata !2450, metadata !DIExpression()), !dbg !2451
  %cmp43 = icmp eq %struct.splay_tree_node_s* %call42, null, !dbg !2478
  br i1 %cmp43, label %if.then44, label %if.else46, !dbg !2480

if.then44:                                        ; preds = %if.end41
  %call45 = tail call fastcc %union.tree_node* @discover_unique_type(%union.tree_node* %type.addr.3) #7, !dbg !2481
  br label %cleanup, !dbg !2482

if.else46:                                        ; preds = %if.end41
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %call42, i64 0, i32 1, !dbg !2483
  %12 = bitcast i64* %value to %union.tree_node**, !dbg !2483
  %13 = load %union.tree_node*, %union.tree_node** %12, align 8, !dbg !2483
  br label %cleanup, !dbg !2484

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.else46, %if.then44
  %retval.0 = phi %union.tree_node* [ %call45, %if.then44 ], [ %13, %if.else46 ], [ null, %lor.lhs.false ], [ null, %entry ], !dbg !2451
  ret %union.tree_node* %retval.0, !dbg !2485
}

declare dso_local %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @is_array_access_through_pointer_and_index(i32 %code, %union.tree_node* %op0, %union.tree_node* %op1, %union.tree_node** %base, %union.tree_node** %offset, %union.gimple_statement_d** %offset_cast_stmt) local_unnamed_addr #5 !dbg !2486 {
entry:
  %op0_cast = alloca %struct.cast, align 8
  %op1_cast = alloca %struct.cast, align 8
  call void @llvm.dbg.value(metadata i32 %code, metadata !2491, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata %union.tree_node* %op0, metadata !2492, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata %union.tree_node* %op1, metadata !2493, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata %union.tree_node** %base, metadata !2494, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata %union.tree_node** %offset, metadata !2495, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %offset_cast_stmt, metadata !2496, metadata !DIExpression()), !dbg !2512
  %0 = bitcast %struct.cast* %op0_cast to i8*, !dbg !2513
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2513
  %1 = bitcast %struct.cast* %op1_cast to i8*, !dbg !2513
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2513
  store %union.tree_node* null, %union.tree_node** %base, align 8, !dbg !2514
  store %union.tree_node* null, %union.tree_node** %offset, align 8, !dbg !2515
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %offset_cast_stmt, align 8, !dbg !2516
  %cmp = icmp eq i32 %code, 66, !dbg !2517
  br i1 %cmp, label %if.then, label %if.else31, !dbg !2518

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %op0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2519
  %2 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !2519
  %3 = load %struct.tree_type*, %struct.tree_type** %2, align 8, !dbg !2519
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 16, !dbg !2519
  %4 = load %union.tree_node*, %union.tree_node** %main_variant, align 8, !dbg !2519
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !2501, metadata !DIExpression()), !dbg !2520
  %type3 = getelementptr inbounds %union.tree_node, %union.tree_node* %op1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2521
  %5 = bitcast %union.tree_node** %type3 to %struct.tree_type**, !dbg !2521
  %6 = load %struct.tree_type*, %struct.tree_type** %5, align 8, !dbg !2521
  %main_variant5 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %6, i64 0, i32 16, !dbg !2521
  %7 = load %union.tree_node*, %union.tree_node** %main_variant5, align 8, !dbg !2521
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !2504, metadata !DIExpression()), !dbg !2520
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2522
  %bf.load = load i64, i64* %8, align 8, !dbg !2522
  %bf.cast4 = and i64 %bf.load, 65535, !dbg !2522
  %cmp7 = icmp eq i64 %bf.cast4, 10, !dbg !2522
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false, !dbg !2522

lor.lhs.false:                                    ; preds = %if.then
  %cmp12 = icmp eq i64 %bf.cast4, 12, !dbg !2522
  %tobool = icmp ne %union.tree_node* %7, null, !dbg !2524
  %or.cond = and i1 %cmp12, %tobool, !dbg !2525
  br i1 %or.cond, label %if.then13, label %if.else, !dbg !2525

land.lhs.true:                                    ; preds = %if.then
  %tobool.old = icmp eq %union.tree_node* %7, null, !dbg !2524
  br i1 %tobool.old, label %if.else, label %if.then13, !dbg !2526

if.then13:                                        ; preds = %land.lhs.true, %lor.lhs.false
  store %union.tree_node* %op0, %union.tree_node** %base, align 8, !dbg !2527
  store %union.tree_node* %op1, %union.tree_node** %offset, align 8, !dbg !2529
  br label %cleanup, !dbg !2530

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2531
  %bf.load15 = load i64, i64* %9, align 8, !dbg !2531
  %bf.cast176 = and i64 %bf.load15, 65535, !dbg !2531
  %cmp18 = icmp eq i64 %bf.cast176, 10, !dbg !2531
  br i1 %cmp18, label %land.lhs.true25, label %lor.lhs.false19, !dbg !2531

lor.lhs.false19:                                  ; preds = %if.else
  %cmp24 = icmp eq i64 %bf.cast176, 12, !dbg !2531
  %tobool26 = icmp ne %union.tree_node* %4, null, !dbg !2533
  %or.cond2 = and i1 %cmp24, %tobool26, !dbg !2534
  br i1 %or.cond2, label %if.then27, label %cleanup, !dbg !2534

land.lhs.true25:                                  ; preds = %if.else
  %tobool26.old = icmp eq %union.tree_node* %4, null, !dbg !2533
  br i1 %tobool26.old, label %cleanup, label %if.then27, !dbg !2535

if.then27:                                        ; preds = %land.lhs.true25, %lor.lhs.false19
  store %union.tree_node* %op1, %union.tree_node** %base, align 8, !dbg !2536
  store %union.tree_node* %op0, %union.tree_node** %offset, align 8, !dbg !2538
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true25, %if.then13, %if.then27, %lor.lhs.false19
  %cleanup.dest.slot.0 = phi i1 [ false, %land.lhs.true25 ], [ false, %lor.lhs.false19 ], [ true, %if.then27 ], [ true, %if.then13 ]
  br i1 %cleanup.dest.slot.0, label %cleanup.if.end54_crit_edge, label %cleanup125

cleanup.if.end54_crit_edge:                       ; preds = %cleanup
  %.pre = load %union.gimple_statement_d*, %union.gimple_statement_d** %offset_cast_stmt, align 8, !dbg !2539
  br label %if.end54

if.else31:                                        ; preds = %entry
  %type32 = getelementptr inbounds %struct.cast, %struct.cast* %op1_cast, i64 0, i32 0, !dbg !2541
  store i32 0, i32* %type32, align 8, !dbg !2543
  %type33 = getelementptr inbounds %struct.cast, %struct.cast* %op0_cast, i64 0, i32 0, !dbg !2544
  store i32 0, i32* %type33, align 8, !dbg !2545
  %stmt = getelementptr inbounds %struct.cast, %struct.cast* %op1_cast, i64 0, i32 1, !dbg !2546
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %stmt, align 8, !dbg !2547
  %stmt34 = getelementptr inbounds %struct.cast, %struct.cast* %op0_cast, i64 0, i32 1, !dbg !2548
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %stmt34, align 8, !dbg !2549
  %call = tail call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !2550
  store %struct.pointer_set_t* %call, %struct.pointer_set_t** @visited_stmts, align 8, !dbg !2551
  call void @walk_use_def_chains(%union.tree_node* %op0, i8 (%union.tree_node*, %union.gimple_statement_d*, i8*)* nonnull @is_cast_from_non_pointer, i8* nonnull %0, i8 zeroext 0) #6, !dbg !2552
  %10 = load %struct.pointer_set_t*, %struct.pointer_set_t** @visited_stmts, align 8, !dbg !2553
  call void @pointer_set_destroy(%struct.pointer_set_t* %10) #6, !dbg !2554
  %call35 = call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !2555
  store %struct.pointer_set_t* %call35, %struct.pointer_set_t** @visited_stmts, align 8, !dbg !2556
  call void @walk_use_def_chains(%union.tree_node* %op1, i8 (%union.tree_node*, %union.gimple_statement_d*, i8*)* nonnull @is_cast_from_non_pointer, i8* nonnull %1, i8 zeroext 0) #6, !dbg !2557
  %11 = load %struct.pointer_set_t*, %struct.pointer_set_t** @visited_stmts, align 8, !dbg !2558
  call void @pointer_set_destroy(%struct.pointer_set_t* %11) #6, !dbg !2559
  %12 = load i32, i32* %type33, align 8, !dbg !2560
  %cmp37 = icmp eq i32 %12, 1, !dbg !2562
  br i1 %cmp37, label %land.lhs.true38, label %if.else43, !dbg !2563

land.lhs.true38:                                  ; preds = %if.else31
  %13 = load i32, i32* %type32, align 8, !dbg !2564
  %cmp40 = icmp eq i32 %13, 0, !dbg !2565
  br i1 %cmp40, label %if.then41, label %if.else43, !dbg !2566

if.then41:                                        ; preds = %land.lhs.true38
  store %union.tree_node* %op1, %union.tree_node** %base, align 8, !dbg !2567
  store %union.tree_node* %op0, %union.tree_node** %offset, align 8, !dbg !2569
  %14 = bitcast %union.gimple_statement_d** %stmt34 to i64*, !dbg !2570
  %15 = load i64, i64* %14, align 8, !dbg !2570
  %16 = bitcast %union.gimple_statement_d** %offset_cast_stmt to i64*, !dbg !2571
  store i64 %15, i64* %16, align 8, !dbg !2571
  %17 = inttoptr i64 %15 to %union.gimple_statement_d*, !dbg !2572
  br label %if.end54, !dbg !2572

if.else43:                                        ; preds = %land.lhs.true38, %if.else31
  %cmp45 = icmp eq i32 %12, 0, !dbg !2573
  br i1 %cmp45, label %land.lhs.true46, label %cleanup125, !dbg !2575

land.lhs.true46:                                  ; preds = %if.else43
  %18 = load i32, i32* %type32, align 8, !dbg !2576
  %cmp48 = icmp eq i32 %18, 1, !dbg !2577
  br i1 %cmp48, label %if.then49, label %cleanup125, !dbg !2578

if.then49:                                        ; preds = %land.lhs.true46
  store %union.tree_node* %op0, %union.tree_node** %base, align 8, !dbg !2579
  store %union.tree_node* %op1, %union.tree_node** %offset, align 8, !dbg !2581
  %19 = bitcast %union.gimple_statement_d** %stmt to i64*, !dbg !2582
  %20 = load i64, i64* %19, align 8, !dbg !2582
  %21 = bitcast %union.gimple_statement_d** %offset_cast_stmt to i64*, !dbg !2583
  store i64 %20, i64* %21, align 8, !dbg !2583
  %22 = inttoptr i64 %20 to %union.gimple_statement_d*
  br label %if.end54

if.end54:                                         ; preds = %cleanup.if.end54_crit_edge, %if.then41, %if.then49
  %23 = phi %union.gimple_statement_d* [ %.pre, %cleanup.if.end54_crit_edge ], [ %17, %if.then41 ], [ %22, %if.then49 ]
  %24 = phi %union.gimple_statement_d* [ %.pre, %cleanup.if.end54_crit_edge ], [ %17, %if.then41 ], [ %22, %if.then49 ], !dbg !2539
  %tobool55 = icmp eq %union.gimple_statement_d* %24, null, !dbg !2539
  br i1 %tobool55, label %if.else71, label %if.then56, !dbg !2584

if.then56:                                        ; preds = %if.end54
  %call57 = call fastcc %union.tree_node* @single_ssa_tree_operand(%union.gimple_statement_d* %23, i32 1) #7, !dbg !2585
  call void @llvm.dbg.value(metadata %union.tree_node* %call57, metadata !2497, metadata !DIExpression()), !dbg !2512
  %tobool58 = icmp eq %union.tree_node* %call57, null, !dbg !2587
  br i1 %tobool58, label %cleanup125, label %if.end60, !dbg !2589

if.end60:                                         ; preds = %if.then56
  %25 = getelementptr inbounds %union.tree_node, %union.tree_node* %call57, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2590
  %bf.load62 = load i64, i64* %25, align 8, !dbg !2590
  %bf.cast643 = and i64 %bf.load62, 4294967296, !dbg !2590
  %tobool65 = icmp eq i64 %bf.cast643, 0, !dbg !2590
  br i1 %tobool65, label %if.end67, label %cleanup125, !dbg !2592

if.end67:                                         ; preds = %if.end60
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call57, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2593
  %26 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2593
  %27 = load %union.gimple_statement_d*, %union.gimple_statement_d** %26, align 8, !dbg !2593
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %27, metadata !2498, metadata !DIExpression()), !dbg !2512
  %tobool68 = icmp eq %union.gimple_statement_d* %27, null, !dbg !2594
  br i1 %tobool68, label %cleanup125, label %if.end74, !dbg !2596

if.else71:                                        ; preds = %if.end54
  %28 = bitcast %union.tree_node** %offset to %struct.tree_ssa_name**, !dbg !2597
  %29 = load %struct.tree_ssa_name*, %struct.tree_ssa_name** %28, align 8, !dbg !2597
  %def_stmt73 = getelementptr inbounds %struct.tree_ssa_name, %struct.tree_ssa_name* %29, i64 0, i32 2, !dbg !2597
  %30 = load %union.gimple_statement_d*, %union.gimple_statement_d** %def_stmt73, align 8, !dbg !2597
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %30, metadata !2498, metadata !DIExpression()), !dbg !2512
  br label %if.end74

if.end74:                                         ; preds = %if.end67, %if.else71
  %before_cast_def_stmt.0 = phi %union.gimple_statement_d* [ %30, %if.else71 ], [ %27, %if.end67 ], !dbg !2598
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %before_cast_def_stmt.0, metadata !2498, metadata !DIExpression()), !dbg !2512
  %call75 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %before_cast_def_stmt.0) #7, !dbg !2599
  %tobool76 = icmp eq i8 %call75, 0, !dbg !2599
  br i1 %tobool76, label %cleanup125, label %if.then77, !dbg !2600

if.then77:                                        ; preds = %if.end74
  %call78 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %before_cast_def_stmt.0) #7, !dbg !2601
  %call79 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call78) #6, !dbg !2603
  %tobool80 = icmp eq i8 %call79, 0, !dbg !2603
  br i1 %tobool80, label %cleanup125, label %if.end82, !dbg !2604

if.end82:                                         ; preds = %if.then77
  %call83 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %before_cast_def_stmt.0) #7, !dbg !2605
  %cmp84 = icmp eq i32 %call83, 65, !dbg !2606
  br i1 %cmp84, label %if.then85, label %cleanup125, !dbg !2607

if.then85:                                        ; preds = %if.end82
  %call86 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %before_cast_def_stmt.0) #7, !dbg !2608
  call void @llvm.dbg.value(metadata %union.tree_node* %call86, metadata !2505, metadata !DIExpression()), !dbg !2609
  %call87 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %before_cast_def_stmt.0) #7, !dbg !2610
  call void @llvm.dbg.value(metadata %union.tree_node* %call87, metadata !2510, metadata !DIExpression()), !dbg !2609
  %type89 = getelementptr inbounds %union.tree_node, %union.tree_node* %op0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2611
  %31 = bitcast %union.tree_node** %type89 to %struct.tree_type**, !dbg !2611
  %32 = load %struct.tree_type*, %struct.tree_type** %31, align 8, !dbg !2611
  %main_variant91 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %32, i64 0, i32 16, !dbg !2611
  %33 = bitcast %union.tree_node** %main_variant91 to %struct.tree_common**, !dbg !2611
  %34 = load %struct.tree_common*, %struct.tree_common** %33, align 8, !dbg !2611
  %type93 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %34, i64 0, i32 2, !dbg !2611
  %35 = bitcast %union.tree_node** %type93 to %struct.tree_type**, !dbg !2611
  %36 = load %struct.tree_type*, %struct.tree_type** %35, align 8, !dbg !2611
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %36, i64 0, i32 3, !dbg !2611
  %37 = load %union.tree_node*, %union.tree_node** %size_unit, align 8, !dbg !2611
  call void @llvm.dbg.value(metadata %union.tree_node* %37, metadata !2511, metadata !DIExpression()), !dbg !2609
  %38 = getelementptr inbounds %union.tree_node, %union.tree_node* %call86, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2612
  %bf.load96 = load i64, i64* %38, align 8, !dbg !2612
  %bf.cast98 = and i64 %bf.load96, 65535, !dbg !2612
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast98, !dbg !2612
  %39 = load i32, i32* %arrayidx, align 4, !dbg !2612
  %cmp99 = icmp eq i32 %39, 1, !dbg !2612
  br i1 %cmp99, label %land.lhs.true100, label %land.lhs.true103, !dbg !2614

land.lhs.true100:                                 ; preds = %if.then85
  %call101 = call i32 @simple_cst_equal(%union.tree_node* %call86, %union.tree_node* %37) #6, !dbg !2615
  %tobool102 = icmp eq i32 %call101, 0, !dbg !2615
  br i1 %tobool102, label %land.lhs.true103, label %if.end115, !dbg !2616

land.lhs.true103:                                 ; preds = %land.lhs.true100, %if.then85
  %40 = getelementptr inbounds %union.tree_node, %union.tree_node* %call87, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2617
  %bf.load105 = load i64, i64* %40, align 8, !dbg !2617
  %bf.cast107 = and i64 %bf.load105, 65535, !dbg !2617
  %arrayidx109 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast107, !dbg !2617
  %41 = load i32, i32* %arrayidx109, align 4, !dbg !2617
  %cmp110 = icmp eq i32 %41, 1, !dbg !2617
  br i1 %cmp110, label %land.lhs.true111, label %cleanup116, !dbg !2618

land.lhs.true111:                                 ; preds = %land.lhs.true103
  %call112 = call i32 @simple_cst_equal(%union.tree_node* %call87, %union.tree_node* %37) #6, !dbg !2619
  %tobool113 = icmp eq i32 %call112, 0, !dbg !2619
  br i1 %tobool113, label %cleanup116, label %if.end115, !dbg !2620

if.end115:                                        ; preds = %land.lhs.true100, %land.lhs.true111
  br label %cleanup116, !dbg !2621

cleanup116:                                       ; preds = %land.lhs.true111, %land.lhs.true103, %if.end115
  %cleanup.dest.slot.1 = phi i8 [ 1, %if.end115 ], [ 0, %land.lhs.true111 ], [ 0, %land.lhs.true103 ]
  br label %cleanup125

cleanup125:                                       ; preds = %if.end67, %if.end60, %if.then56, %if.then77, %if.end74, %cleanup116, %if.end82, %if.else43, %land.lhs.true46, %cleanup
  %retval.3 = phi i8 [ 0, %cleanup ], [ 0, %land.lhs.true46 ], [ 0, %if.else43 ], [ 0, %if.then56 ], [ 0, %if.end60 ], [ 0, %if.end67 ], [ 0, %if.then77 ], [ 0, %if.end82 ], [ 0, %if.end74 ], [ %cleanup.dest.slot.1, %cleanup116 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2622
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2622
  ret i8 %retval.3, !dbg !2622
}

declare dso_local %struct.pointer_set_t* @pointer_set_create() local_unnamed_addr #2

declare dso_local void @walk_use_def_chains(%union.tree_node*, i8 (%union.tree_node*, %union.gimple_statement_d*, i8*)*, i8*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @is_cast_from_non_pointer(%union.tree_node* %var, %union.gimple_statement_d* %def_stmt, i8* %data) #5 !dbg !2623 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2627, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %def_stmt, metadata !2628, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8* %data, metadata !2629, metadata !DIExpression()), !dbg !2647
  %tobool = icmp ne %union.gimple_statement_d* %def_stmt, null, !dbg !2648
  %tobool1 = icmp ne %union.tree_node* %var, null, !dbg !2650
  %or.cond = and i1 %tobool, %tobool1, !dbg !2651
  br i1 %or.cond, label %if.end, label %return, !dbg !2651

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %def_stmt) #7, !dbg !2652
  %cmp = icmp eq i32 %call, 16, !dbg !2654
  br i1 %cmp, label %return, label %if.end3, !dbg !2655

if.end3:                                          ; preds = %if.end
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2656
  %bf.load = load i64, i64* %0, align 8, !dbg !2656
  %bf.cast6 = and i64 %bf.load, 4294967296, !dbg !2656
  %tobool4 = icmp eq i64 %bf.cast6, 0, !dbg !2656
  br i1 %tobool4, label %if.end6, label %return, !dbg !2658

if.end6:                                          ; preds = %if.end3
  %call7 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* nonnull %def_stmt) #7, !dbg !2659
  %tobool8 = icmp eq i8 %call7, 0, !dbg !2659
  br i1 %tobool8, label %if.end57, label %if.then9, !dbg !2660

if.then9:                                         ; preds = %if.end6
  %1 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2661
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #8, !dbg !2661
  %call10 = tail call fastcc i32 @look_for_casts_stmt(%union.gimple_statement_d* nonnull %def_stmt) #7, !dbg !2662
  call void @llvm.dbg.value(metadata i32 %call10, metadata !2646, metadata !DIExpression()), !dbg !2663
  %2 = icmp eq i32 %call10, 32, !dbg !2664
  br i1 %2, label %if.then14, label %if.else, !dbg !2664

if.then14:                                        ; preds = %if.then9
  %stmt = getelementptr inbounds i8, i8* %data, i64 8, !dbg !2666
  %3 = bitcast i8* %stmt to %union.gimple_statement_d**, !dbg !2666
  store %union.gimple_statement_d* %def_stmt, %union.gimple_statement_d** %3, align 8, !dbg !2668
  %type = bitcast i8* %data to i32*, !dbg !2669
  %4 = load i32, i32* %type, align 8, !dbg !2670
  %inc = add nsw i32 %4, 1, !dbg !2670
  store i32 %inc, i32* %type, align 8, !dbg !2670
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2633, metadata !DIExpression(DW_OP_deref)), !dbg !2663
  %call15 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* nonnull %def_stmt, i32 5) #7, !dbg !2671
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call15, metadata !2630, metadata !DIExpression()), !dbg !2663
  br label %for.cond, !dbg !2671

for.cond:                                         ; preds = %for.inc, %if.then14
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call15, %if.then14 ], [ %call23, %for.inc ], !dbg !2673
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !2630, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2633, metadata !DIExpression(DW_OP_deref)), !dbg !2663
  %call16 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2674
  %tobool17 = icmp eq i8 %call16, 0, !dbg !2674
  br i1 %tobool17, label %for.body, label %if.end56.loopexit, !dbg !2671

for.body:                                         ; preds = %for.cond
  %call18 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0) #7, !dbg !2676
  call void @walk_use_def_chains(%union.tree_node* %call18, i8 (%union.tree_node*, %union.gimple_statement_d*, i8*)* nonnull @is_cast_from_non_pointer, i8* %data, i8 zeroext 0) #6, !dbg !2678
  %5 = load i32, i32* %type, align 8, !dbg !2679
  %cmp20 = icmp eq i32 %5, -1, !dbg !2681
  br i1 %cmp20, label %if.end56.loopexit, label %for.inc, !dbg !2682

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2633, metadata !DIExpression(DW_OP_deref)), !dbg !2663
  %call23 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2674
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call23, metadata !2630, metadata !DIExpression()), !dbg !2663
  br label %for.cond, !dbg !2674, !llvm.loop !2683

if.else:                                          ; preds = %if.then9
  %6 = and i32 %call10, 395, !dbg !2685
  %7 = icmp eq i32 %6, 0, !dbg !2685
  br i1 %7, label %if.else53, label %if.then38, !dbg !2685

if.then38:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2633, metadata !DIExpression(DW_OP_deref)), !dbg !2663
  %call39 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* nonnull %def_stmt, i32 5) #7, !dbg !2687
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call39, metadata !2630, metadata !DIExpression()), !dbg !2663
  %type46 = bitcast i8* %data to i32*, !dbg !2690
  br label %for.cond40, !dbg !2687

for.cond40:                                       ; preds = %for.inc50, %if.then38
  %use_p.1 = phi %struct.ssa_use_operand_d* [ %call39, %if.then38 ], [ %call51, %for.inc50 ], !dbg !2694
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.1, metadata !2630, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2633, metadata !DIExpression(DW_OP_deref)), !dbg !2663
  %call41 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2695
  %tobool42 = icmp eq i8 %call41, 0, !dbg !2695
  br i1 %tobool42, label %for.body44, label %if.end56.loopexit7, !dbg !2687

for.body44:                                       ; preds = %for.cond40
  %call45 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.1) #7, !dbg !2696
  call void @walk_use_def_chains(%union.tree_node* %call45, i8 (%union.tree_node*, %union.gimple_statement_d*, i8*)* nonnull @is_cast_from_non_pointer, i8* %data, i8 zeroext 0) #6, !dbg !2697
  %8 = load i32, i32* %type46, align 8, !dbg !2698
  %cmp47 = icmp eq i32 %8, -1, !dbg !2699
  br i1 %cmp47, label %if.end56.loopexit7, label %for.inc50, !dbg !2700

for.inc50:                                        ; preds = %for.body44
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2633, metadata !DIExpression(DW_OP_deref)), !dbg !2663
  %call51 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2695
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call51, metadata !2630, metadata !DIExpression()), !dbg !2663
  br label %for.cond40, !dbg !2695, !llvm.loop !2701

if.else53:                                        ; preds = %if.else
  %type54 = bitcast i8* %data to i32*, !dbg !2703
  store i32 -1, i32* %type54, align 8, !dbg !2704
  br label %if.end56

if.end56.loopexit:                                ; preds = %for.body, %for.cond
  br label %if.end56, !dbg !2705

if.end56.loopexit7:                               ; preds = %for.cond40, %for.body44
  br label %if.end56, !dbg !2705

if.end56:                                         ; preds = %if.end56.loopexit7, %if.end56.loopexit, %if.else53
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #8, !dbg !2705
  br label %if.end57, !dbg !2706

if.end57:                                         ; preds = %if.end6, %if.end56
  %type58 = bitcast i8* %data to i32*, !dbg !2707
  %9 = load i32, i32* %type58, align 8, !dbg !2707
  %cmp59 = icmp eq i32 %9, -1, !dbg !2709
  %. = zext i1 %cmp59 to i8, !dbg !2647
  br label %return, !dbg !2647

return:                                           ; preds = %if.end3, %if.end57, %if.end, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end3 ], [ %., %if.end57 ], !dbg !2647
  ret i8 %retval.0, !dbg !2710
}

declare dso_local void @pointer_set_destroy(%struct.pointer_set_t*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @single_ssa_tree_operand(%union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !2711 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2716, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i32 1, metadata !2717, metadata !DIExpression()), !dbg !2720
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2721
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2721
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2719, metadata !DIExpression(DW_OP_deref)), !dbg !2720
  %call = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 1) #7, !dbg !2722
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2718, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2719, metadata !DIExpression(DW_OP_deref)), !dbg !2720
  %call1 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2723
  %tobool = icmp eq i8 %call1, 0, !dbg !2723
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2725

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2719, metadata !DIExpression(DW_OP_deref)), !dbg !2720
  %call2 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2726
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2719, metadata !DIExpression(DW_OP_deref)), !dbg !2720
  %call3 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2727
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2727
  %call. = select i1 %tobool4, %union.tree_node* null, %union.tree_node* %call, !dbg !2720
  br label %cleanup, !dbg !2720

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ null, %entry ], [ %call., %if.end ], !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2729
  ret %union.tree_node* %retval.0, !dbg !2729
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2730 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2735, metadata !DIExpression()), !dbg !2736
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !2737
  %cmp = icmp eq i32 %call, 6, !dbg !2738
  %conv1 = zext i1 %cmp to i8, !dbg !2737
  ret i8 %conv1, !dbg !2739
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2740 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2744, metadata !DIExpression()), !dbg !2745
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !2746
  ret %union.tree_node* %call, !dbg !2747
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2748 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2752, metadata !DIExpression()), !dbg !2754
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !2755
  call void @llvm.dbg.value(metadata i32 %call, metadata !2753, metadata !DIExpression()), !dbg !2754
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !2756
  %cmp = icmp eq i32 %call1, 3, !dbg !2758
  br i1 %cmp, label %if.then, label %if.end, !dbg !2759

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !2760
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2760
  %bf.load = load i64, i64* %0, align 8, !dbg !2760
  %1 = trunc i64 %bf.load to i32, !dbg !2760
  %bf.cast = and i32 %1, 65535, !dbg !2760
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !2753, metadata !DIExpression()), !dbg !2754
  br label %if.end, !dbg !2761

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !2754
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !2753, metadata !DIExpression()), !dbg !2754
  ret i32 %code.0, !dbg !2762
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2763 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2765, metadata !DIExpression()), !dbg !2766
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !2767
  ret %union.tree_node* %call, !dbg !2768
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2769 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2771, metadata !DIExpression()), !dbg !2772
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !2773
  %cmp = icmp ugt i32 %call, 2, !dbg !2775
  br i1 %cmp, label %if.then, label %return, !dbg !2776

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 2) #7, !dbg !2777
  br label %return, !dbg !2778

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %call1, %if.then ], [ null, %entry ], !dbg !2779
  ret %union.tree_node* %retval.0, !dbg !2780
}

declare dso_local i32 @simple_cst_equal(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_type_escape_vars() #5 !dbg !2781 {
entry:
  %0 = load i32, i32* @flag_ipa_type_escape, align 4, !dbg !2782
  %tobool = icmp eq i32 %0, 0, !dbg !2782
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2783

land.rhs:                                         ; preds = %entry
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2784
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 4, !dbg !2784
  %2 = load i32, i32* %arrayidx, align 8, !dbg !2784
  %tobool1 = icmp eq i32 %2, 0, !dbg !2784
  br i1 %tobool1, label %lor.rhs, label %lor.end, !dbg !2785

lor.rhs:                                          ; preds = %land.rhs
  %arrayidx3 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 5, !dbg !2786
  %3 = load i32, i32* %arrayidx3, align 4, !dbg !2786
  %tobool4 = icmp eq i32 %3, 0, !dbg !2785
  %phitmp2 = zext i1 %tobool4 to i8, !dbg !2785
  br label %lor.end, !dbg !2785

lor.end:                                          ; preds = %land.rhs, %lor.rhs
  %4 = phi i8 [ 0, %land.rhs ], [ %phitmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %entry, %lor.end
  %5 = phi i8 [ 0, %entry ], [ %4, %lor.end ]
  ret i8 %5, !dbg !2787
}

; Function Attrs: nounwind uwtable
define internal i32 @type_escape_execute() #5 !dbg !2788 {
entry:
  %i = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  %0 = bitcast i32* %i to i8*, !dbg !3026
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3026
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3027
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3027
  tail call fastcc void @ipa_init() #7, !dbg !3028
  br label %for.cond, !dbg !3029

for.cond:                                         ; preds = %for.body, %entry
  %vnode.0.in = phi %struct.varpool_node** [ @varpool_nodes_queue, %entry ], [ %next_needed, %for.body ]
  %vnode.0 = load %struct.varpool_node*, %struct.varpool_node** %vnode.0.in, align 8, !dbg !3031
  call void @llvm.dbg.value(metadata %struct.varpool_node* %vnode.0, metadata !2995, metadata !DIExpression()), !dbg !3032
  %tobool = icmp eq %struct.varpool_node* %vnode.0, null, !dbg !3029
  br i1 %tobool, label %for.end, label %for.body, !dbg !3029

for.body:                                         ; preds = %for.cond
  tail call fastcc void @analyze_variable(%struct.varpool_node* nonnull %vnode.0) #7, !dbg !3033
  %next_needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.0, i64 0, i32 2, !dbg !3035
  br label %for.cond, !dbg !3035, !llvm.loop !3036

for.end:                                          ; preds = %for.cond
  br label %for.cond1, !dbg !3038

for.cond1:                                        ; preds = %for.inc6, %for.end
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %for.end ], [ %next, %for.inc6 ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3040
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !2790, metadata !DIExpression()), !dbg !3032
  %tobool2 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !3041
  br i1 %tobool2, label %for.end7, label %for.body3, !dbg !3041

for.body3:                                        ; preds = %for.cond1
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !3042
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !3042
  %bf.clear = and i16 %bf.load, 32, !dbg !3042
  %tobool4 = icmp eq i16 %bf.clear, 0, !dbg !3045
  br i1 %tobool4, label %for.inc6, label %land.lhs.true, !dbg !3046

land.lhs.true:                                    ; preds = %for.body3
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 12, !dbg !3047
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !3047
  %tobool5 = icmp eq %struct.cgraph_node* %2, null, !dbg !3048
  br i1 %tobool5, label %if.then, label %for.inc6, !dbg !3049

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @analyze_function(%struct.cgraph_node* nonnull %node.0) #7, !dbg !3050
  br label %for.inc6, !dbg !3050

for.inc6:                                         ; preds = %land.lhs.true, %for.body3, %if.then
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3051
  br label %for.cond1, !dbg !3052, !llvm.loop !3053

for.end7:                                         ; preds = %for.cond1
  %3 = load %struct.pointer_set_t*, %struct.pointer_set_t** @visited_nodes, align 8, !dbg !3055
  tail call void @pointer_set_destroy(%struct.pointer_set_t* %3) #6, !dbg !3056
  store %struct.pointer_set_t* null, %struct.pointer_set_t** @visited_nodes, align 8, !dbg !3057
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @ipa_obstack) #6, !dbg !3058
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** @been_there_done_that, align 8, !dbg !3059
  %call8 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @ipa_obstack) #6, !dbg !3060
  store %struct.bitmap_head_def* %call8, %struct.bitmap_head_def** @bitmap_tmp, align 8, !dbg !3061
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @global_types_seen, align 8, !dbg !3062
  tail call void @bitmap_copy(%struct.bitmap_head_def* %call8, %struct.bitmap_head_def* %4) #6, !dbg !3063
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @bitmap_tmp, align 8, !dbg !3064
  call void @llvm.dbg.value(metadata i32* %i, metadata !2996, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2997, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %5, i32 0, i32* nonnull %i) #7, !dbg !3064
  br label %for.cond9, !dbg !3064

for.cond9:                                        ; preds = %for.inc17, %for.end7
  call void @llvm.dbg.value(metadata i32* %i, metadata !2996, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2997, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  %call10 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3065
  %tobool11 = icmp eq i8 %call10, 0, !dbg !3064
  br i1 %tobool11, label %for.end18, label %for.body12, !dbg !3064

for.body12:                                       ; preds = %for.cond9
  %6 = load i32, i32* %i, align 4, !dbg !3066
  call void @llvm.dbg.value(metadata i32 %6, metadata !2996, metadata !DIExpression()), !dbg !3032
  %call13 = call fastcc %union.tree_node* @type_for_uid(i32 %6) #7, !dbg !3067
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !3006, metadata !DIExpression()), !dbg !3068
  %call14 = call i32 @ipa_type_escape_star_count_of_interesting_or_array_type(%union.tree_node* %call13) #7, !dbg !3069
  %cmp = icmp sgt i32 %call14, -1, !dbg !3071
  br i1 %cmp, label %if.then15, label %for.inc17, !dbg !3072

if.then15:                                        ; preds = %for.body12
  call fastcc void @close_type_seen(%union.tree_node* %call13) #7, !dbg !3073
  br label %for.inc17, !dbg !3073

for.inc17:                                        ; preds = %for.body12, %if.then15
  call void @llvm.dbg.value(metadata i32* %i, metadata !2996, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2997, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3065
  br label %for.cond9, !dbg !3065, !llvm.loop !3074

for.end18:                                        ; preds = %for.cond9
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @been_there_done_that, align 8, !dbg !3076
  call void @bitmap_clear(%struct.bitmap_head_def* %7) #6, !dbg !3077
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @bitmap_tmp, align 8, !dbg !3078
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @global_types_exposed_parameter, align 8, !dbg !3079
  call void @bitmap_copy(%struct.bitmap_head_def* %8, %struct.bitmap_head_def* %9) #6, !dbg !3080
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @bitmap_tmp, align 8, !dbg !3081
  call void @llvm.dbg.value(metadata i32* %i, metadata !2996, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2997, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %10, i32 0, i32* nonnull %i) #7, !dbg !3081
  br label %for.cond19, !dbg !3081

for.cond19:                                       ; preds = %for.body22, %for.end18
  call void @llvm.dbg.value(metadata i32* %i, metadata !2996, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2997, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  %call20 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3083
  %tobool21 = icmp eq i8 %call20, 0, !dbg !3081
  br i1 %tobool21, label %for.end25, label %for.body22, !dbg !3081

for.body22:                                       ; preds = %for.cond19
  %11 = load i32, i32* %i, align 4, !dbg !3085
  call void @llvm.dbg.value(metadata i32 %11, metadata !2996, metadata !DIExpression()), !dbg !3032
  %call23 = call fastcc %union.tree_node* @type_for_uid(i32 %11) #7, !dbg !3087
  call fastcc void @close_type_exposed_parameter(%union.tree_node* %call23) #7, !dbg !3088
  call void @llvm.dbg.value(metadata i32* %i, metadata !2996, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2997, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3083
  br label %for.cond19, !dbg !3083, !llvm.loop !3089

for.end25:                                        ; preds = %for.cond19
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @been_there_done_that, align 8, !dbg !3091
  call void @bitmap_clear(%struct.bitmap_head_def* %12) #6, !dbg !3092
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @bitmap_tmp, align 8, !dbg !3093
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @global_types_full_escape, align 8, !dbg !3094
  call void @bitmap_copy(%struct.bitmap_head_def* %13, %struct.bitmap_head_def* %14) #6, !dbg !3095
  %15 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @bitmap_tmp, align 8, !dbg !3096
  call void @llvm.dbg.value(metadata i32* %i, metadata !2996, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2997, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %15, i32 0, i32* nonnull %i) #7, !dbg !3096
  br label %for.cond26, !dbg !3096

for.cond26:                                       ; preds = %for.body29, %for.end25
  call void @llvm.dbg.value(metadata i32* %i, metadata !2996, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2997, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  %call27 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3098
  %tobool28 = icmp eq i8 %call27, 0, !dbg !3096
  br i1 %tobool28, label %for.end32, label %for.body29, !dbg !3096

for.body29:                                       ; preds = %for.cond26
  %16 = load i32, i32* %i, align 4, !dbg !3100
  call void @llvm.dbg.value(metadata i32 %16, metadata !2996, metadata !DIExpression()), !dbg !3032
  %call30 = call fastcc %union.tree_node* @type_for_uid(i32 %16) #7, !dbg !3102
  call fastcc void @close_type_full_escape(%union.tree_node* %call30) #7, !dbg !3103
  call void @llvm.dbg.value(metadata i32* %i, metadata !2996, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2997, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3098
  br label %for.cond26, !dbg !3098, !llvm.loop !3104

for.end32:                                        ; preds = %for.cond26
  %17 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @been_there_done_that, align 8, !dbg !3106
  call void @bitmap_clear(%struct.bitmap_head_def* %17) #6, !dbg !3107
  %18 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_addressof_down_map, align 8, !dbg !3108
  %call33 = call %struct.splay_tree_node_s* @splay_tree_min(%struct.splay_tree_s* %18) #6, !dbg !3109
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call33, metadata !3005, metadata !DIExpression()), !dbg !3032
  br label %while.cond, !dbg !3110

while.cond:                                       ; preds = %while.body, %for.end32
  %result.0 = phi %struct.splay_tree_node_s* [ %call33, %for.end32 ], [ %call37, %while.body ], !dbg !3032
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %result.0, metadata !3005, metadata !DIExpression()), !dbg !3032
  %tobool34 = icmp eq %struct.splay_tree_node_s* %result.0, null, !dbg !3110
  br i1 %tobool34, label %while.end, label %while.body, !dbg !3110

while.body:                                       ; preds = %while.cond
  %key = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %result.0, i64 0, i32 0, !dbg !3111
  %19 = load i64, i64* %key, align 8, !dbg !3111
  %conv = trunc i64 %19 to i32, !dbg !3112
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3010, metadata !DIExpression()), !dbg !3113
  %call35 = call fastcc %struct.bitmap_head_def* @close_addressof_down(i32 %conv) #7, !dbg !3114
  %20 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_addressof_down_map, align 8, !dbg !3115
  %sext5 = shl i64 %19, 32, !dbg !3116
  %conv36 = ashr exact i64 %sext5, 32, !dbg !3116
  %call37 = call %struct.splay_tree_node_s* @splay_tree_successor(%struct.splay_tree_s* %20, i64 %conv36) #6, !dbg !3117
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call37, metadata !3005, metadata !DIExpression()), !dbg !3032
  br label %while.cond, !dbg !3110, !llvm.loop !3118

while.end:                                        ; preds = %while.cond
  %21 = load %struct.splay_tree_s*, %struct.splay_tree_s** @all_canon_types, align 8, !dbg !3120
  %call38 = call %struct.splay_tree_node_s* @splay_tree_min(%struct.splay_tree_s* %21) #6, !dbg !3121
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call38, metadata !3005, metadata !DIExpression()), !dbg !3032
  br label %while.cond39, !dbg !3122

while.cond39:                                     ; preds = %if.end71, %while.end
  %result.1 = phi %struct.splay_tree_node_s* [ %call38, %while.end ], [ %call72, %if.end71 ], !dbg !3032
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %result.1, metadata !3005, metadata !DIExpression()), !dbg !3032
  %tobool40 = icmp eq %struct.splay_tree_node_s* %result.1, null, !dbg !3122
  br i1 %tobool40, label %while.end73, label %while.body41, !dbg !3122

while.body41:                                     ; preds = %while.cond39
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %result.1, i64 0, i32 1, !dbg !3123
  %22 = bitcast i64* %value to %union.tree_node**, !dbg !3123
  %23 = load %union.tree_node*, %union.tree_node** %22, align 8, !dbg !3123
  call void @llvm.dbg.value(metadata %union.tree_node* %23, metadata !3012, metadata !DIExpression()), !dbg !3124
  %key44 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %result.1, i64 0, i32 0, !dbg !3125
  %24 = load i64, i64* %key44, align 8, !dbg !3125
  %25 = getelementptr inbounds %union.tree_node, %union.tree_node* %23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3126
  %bf.load45 = load i64, i64* %25, align 8, !dbg !3126
  %bf.cast472 = and i64 %bf.load45, 65535, !dbg !3126
  %cmp48 = icmp eq i64 %bf.cast472, 10, !dbg !3126
  br i1 %cmp48, label %if.then63, label %lor.lhs.false, !dbg !3126

lor.lhs.false:                                    ; preds = %while.body41
  %cmp54 = icmp eq i64 %bf.cast472, 12, !dbg !3126
  br i1 %cmp54, label %if.then63, label %lor.lhs.false56, !dbg !3128

lor.lhs.false56:                                  ; preds = %lor.lhs.false
  %cmp61 = icmp eq i64 %bf.cast472, 15, !dbg !3129
  br i1 %cmp61, label %if.then63, label %if.end71, !dbg !3130

if.then63:                                        ; preds = %lor.lhs.false56, %lor.lhs.false, %while.body41
  %26 = load %struct.splay_tree_s*, %struct.splay_tree_s** @all_canon_types, align 8, !dbg !3131
  call void @splay_tree_remove(%struct.splay_tree_s* %26, i64 %24) #6, !dbg !3133
  %27 = load %struct.splay_tree_s*, %struct.splay_tree_s** @type_to_canon_type, align 8, !dbg !3134
  %28 = ptrtoint %union.tree_node* %23 to i64, !dbg !3135
  call void @splay_tree_remove(%struct.splay_tree_s* %27, i64 %28) #6, !dbg !3136
  %29 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_canon_type, align 8, !dbg !3137
  %uid66 = getelementptr inbounds %union.tree_node, %union.tree_node* %23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3138
  %30 = bitcast i40* %uid66 to i32*, !dbg !3138
  %31 = load i32, i32* %30, align 8, !dbg !3138
  %conv67 = zext i32 %31 to i64, !dbg !3139
  call void @splay_tree_remove(%struct.splay_tree_s* %29, i64 %conv67) #6, !dbg !3140
  %32 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @global_types_seen, align 8, !dbg !3141
  %33 = load i32, i32* %30, align 8, !dbg !3142
  %call70 = call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %32, i32 %33) #6, !dbg !3143
  br label %if.end71, !dbg !3144

if.end71:                                         ; preds = %if.then63, %lor.lhs.false56
  %34 = load %struct.splay_tree_s*, %struct.splay_tree_s** @all_canon_types, align 8, !dbg !3145
  %call72 = call %struct.splay_tree_node_s* @splay_tree_successor(%struct.splay_tree_s* %34, i64 %24) #6, !dbg !3146
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call72, metadata !3005, metadata !DIExpression()), !dbg !3032
  br label %while.cond39, !dbg !3122, !llvm.loop !3147

while.end73:                                      ; preds = %while.cond39
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3149
  %tobool74 = icmp eq %struct._IO_FILE* %35, null, !dbg !3149
  br i1 %tobool74, label %if.end91, label %if.then75, !dbg !3150

if.then75:                                        ; preds = %while.end73
  %36 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @global_types_seen, align 8, !dbg !3151
  call void @llvm.dbg.value(metadata i32* %i, metadata !2996, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2997, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %36, i32 0, i32* nonnull %i) #7, !dbg !3151
  br label %for.cond76, !dbg !3151

for.cond76:                                       ; preds = %for.inc89, %if.then75
  call void @llvm.dbg.value(metadata i32* %i, metadata !2996, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2997, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  %call77 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3152
  %tobool78 = icmp eq i8 %call77, 0, !dbg !3151
  br i1 %tobool78, label %if.end91.loopexit, label %for.body79, !dbg !3151

for.body79:                                       ; preds = %for.cond76
  %37 = load i32, i32* %i, align 4, !dbg !3153
  call void @llvm.dbg.value(metadata i32 %37, metadata !2996, metadata !DIExpression()), !dbg !3032
  %call81 = call fastcc %union.tree_node* @type_for_uid(i32 %37) #7, !dbg !3154
  call void @llvm.dbg.value(metadata %union.tree_node* %call81, metadata !3015, metadata !DIExpression()), !dbg !3155
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3156
  %39 = load i32, i32* %i, align 4, !dbg !3157
  call void @llvm.dbg.value(metadata i32 %39, metadata !2996, metadata !DIExpression()), !dbg !3032
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %39) #6, !dbg !3158
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3159
  call void @print_generic_expr(%struct._IO_FILE* %40, %union.tree_node* %call81, i32 0) #6, !dbg !3160
  %41 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @global_types_full_escape, align 8, !dbg !3161
  %42 = load i32, i32* %i, align 4, !dbg !3163
  call void @llvm.dbg.value(metadata i32 %42, metadata !2996, metadata !DIExpression()), !dbg !3032
  %call83 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %41, i32 %42) #6, !dbg !3164
  %tobool84 = icmp eq i32 %call83, 0, !dbg !3164
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3165
  br i1 %tobool84, label %if.else, label %if.then85, !dbg !3166

if.then85:                                        ; preds = %for.body79
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3167
  br label %for.inc89, !dbg !3167

if.else:                                          ; preds = %for.body79
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3168
  br label %for.inc89

for.inc89:                                        ; preds = %if.then85, %if.else
  call void @llvm.dbg.value(metadata i32* %i, metadata !2996, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2997, metadata !DIExpression(DW_OP_deref)), !dbg !3032
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3152
  br label %for.cond76, !dbg !3152, !llvm.loop !3169

if.end91.loopexit:                                ; preds = %for.cond76
  br label %if.end91, !dbg !3171

if.end91:                                         ; preds = %if.end91.loopexit, %while.end73
  %44 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_addressof_up_map, align 8, !dbg !3171
  %call92 = call %struct.splay_tree_node_s* @splay_tree_min(%struct.splay_tree_s* %44) #6, !dbg !3172
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call92, metadata !3005, metadata !DIExpression()), !dbg !3032
  br label %while.cond93, !dbg !3173

while.cond93:                                     ; preds = %while.body95, %if.end91
  %result.2 = phi %struct.splay_tree_node_s* [ %call92, %if.end91 ], [ %call102, %while.body95 ], !dbg !3032
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %result.2, metadata !3005, metadata !DIExpression()), !dbg !3032
  %tobool94 = icmp eq %struct.splay_tree_node_s* %result.2, null, !dbg !3173
  br i1 %tobool94, label %while.end103, label %while.body95, !dbg !3173

while.body95:                                     ; preds = %while.cond93
  %key97 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %result.2, i64 0, i32 0, !dbg !3174
  %45 = load i64, i64* %key97, align 8, !dbg !3174
  %value99 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %result.2, i64 0, i32 1, !dbg !3175
  %46 = bitcast i64* %value99 to %struct.bitmap_head_def**, !dbg !3175
  %47 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %46, align 8, !dbg !3175
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %47, metadata !3023, metadata !DIExpression()), !dbg !3176
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %47) #6, !dbg !3177
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3023, metadata !DIExpression()), !dbg !3176
  %48 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_addressof_up_map, align 8, !dbg !3178
  %sext = shl i64 %45, 32, !dbg !3179
  %conv100 = ashr exact i64 %sext, 32, !dbg !3179
  call void @splay_tree_remove(%struct.splay_tree_s* %48, i64 %conv100) #6, !dbg !3180
  %49 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_addressof_up_map, align 8, !dbg !3181
  %call102 = call %struct.splay_tree_node_s* @splay_tree_successor(%struct.splay_tree_s* %49, i64 %conv100) #6, !dbg !3182
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call102, metadata !3005, metadata !DIExpression()), !dbg !3032
  br label %while.cond93, !dbg !3173, !llvm.loop !3183

while.end103:                                     ; preds = %while.cond93
  %50 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_subtype_map, align 8, !dbg !3185
  %call104 = call %struct.splay_tree_node_s* @splay_tree_min(%struct.splay_tree_s* %50) #6, !dbg !3186
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call104, metadata !3005, metadata !DIExpression()), !dbg !3032
  br label %while.cond105, !dbg !3187

while.cond105:                                    ; preds = %while.body107, %while.end103
  %result.3 = phi %struct.splay_tree_node_s* [ %call104, %while.end103 ], [ %call110, %while.body107 ], !dbg !3032
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %result.3, metadata !3005, metadata !DIExpression()), !dbg !3032
  %tobool106 = icmp eq %struct.splay_tree_node_s* %result.3, null, !dbg !3187
  br i1 %tobool106, label %while.end111, label %while.body107, !dbg !3187

while.body107:                                    ; preds = %while.cond105
  %value108 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %result.3, i64 0, i32 1, !dbg !3188
  %51 = bitcast i64* %value108 to %struct.bitmap_head_def**, !dbg !3188
  %52 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %51, align 8, !dbg !3188
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %52, metadata !3024, metadata !DIExpression()), !dbg !3189
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %52) #6, !dbg !3190
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3024, metadata !DIExpression()), !dbg !3189
  %53 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_subtype_map, align 8, !dbg !3191
  %key109 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %result.3, i64 0, i32 0, !dbg !3192
  %54 = load i64, i64* %key109, align 8, !dbg !3192
  call void @splay_tree_remove(%struct.splay_tree_s* %53, i64 %54) #6, !dbg !3193
  %55 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_subtype_map, align 8, !dbg !3194
  %call110 = call %struct.splay_tree_node_s* @splay_tree_min(%struct.splay_tree_s* %55) #6, !dbg !3195
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call110, metadata !3005, metadata !DIExpression()), !dbg !3032
  br label %while.cond105, !dbg !3187, !llvm.loop !3196

while.end111:                                     ; preds = %while.cond105
  %56 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_subtype_map, align 8, !dbg !3198
  call void @splay_tree_delete(%struct.splay_tree_s* %56) #6, !dbg !3199
  store %struct.splay_tree_s* null, %struct.splay_tree_s** @uid_to_subtype_map, align 8, !dbg !3200
  %57 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @global_types_exposed_parameter, align 8, !dbg !3201
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %57) #6, !dbg !3201
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @global_types_exposed_parameter, align 8, !dbg !3201
  %58 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @been_there_done_that, align 8, !dbg !3202
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %58) #6, !dbg !3202
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @been_there_done_that, align 8, !dbg !3202
  %59 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @bitmap_tmp, align 8, !dbg !3203
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %59) #6, !dbg !3203
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @bitmap_tmp, align 8, !dbg !3203
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3204
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3204
  ret i32 0, !dbg !3205
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @type_to_consider(%union.tree_node* %type) unnamed_addr #5 !dbg !3206 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3208, metadata !DIExpression()), !dbg !3209
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3210
  br label %while.cond, !dbg !3211

while.cond:                                       ; preds = %while.body, %entry
  %type.addr.0.in = phi %union.tree_node** [ %0, %entry ], [ %main_variant14, %while.body ]
  %type.addr.0 = load %union.tree_node*, %union.tree_node** %type.addr.0.in, align 8, !dbg !3209
  call void @llvm.dbg.value(metadata %union.tree_node* %type.addr.0, metadata !3208, metadata !DIExpression()), !dbg !3209
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3212
  %bf.load = load i64, i64* %1, align 8, !dbg !3212
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !3212
  %cmp = icmp eq i64 %bf.cast2, 10, !dbg !3212
  br i1 %cmp, label %while.body, label %lor.lhs.false, !dbg !3212

lor.lhs.false:                                    ; preds = %while.cond
  %cmp6 = icmp eq i64 %bf.cast2, 12, !dbg !3212
  %cmp11 = icmp eq i64 %bf.cast2, 15, !dbg !3213
  %or.cond = or i1 %cmp6, %cmp11, !dbg !3214
  br i1 %or.cond, label %while.body, label %while.end, !dbg !3214

while.body:                                       ; preds = %while.cond, %lor.lhs.false
  %type12 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3215
  %2 = bitcast %union.tree_node** %type12 to %struct.tree_type**, !dbg !3215
  %3 = load %struct.tree_type*, %struct.tree_type** %2, align 8, !dbg !3215
  %main_variant14 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 16, !dbg !3215
  br label %while.cond, !dbg !3211, !llvm.loop !3216

while.end:                                        ; preds = %lor.lhs.false
  %bf.load.lcssa = phi i64 [ %bf.load, %lor.lhs.false ], !dbg !3212
  %4 = trunc i64 %bf.load.lcssa to i16, !dbg !3217
  switch i16 %4, label %sw.default [
    i16 7, label %return
    i16 13, label %return
    i16 6, label %return
    i16 8, label %return
    i16 18, label %return
    i16 9, label %return
    i16 11, label %return
    i16 16, label %return
    i16 17, label %return
    i16 14, label %return
    i16 19, label %return
  ], !dbg !3218

sw.default:                                       ; preds = %while.end
  br label %return, !dbg !3219

return:                                           ; preds = %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %while.end, %sw.default
  %retval.0 = phi i8 [ 0, %sw.default ], [ 1, %while.end ], [ 1, %while.end ], [ 1, %while.end ], [ 1, %while.end ], [ 1, %while.end ], [ 1, %while.end ], [ 1, %while.end ], [ 1, %while.end ], [ 1, %while.end ], [ 1, %while.end ], [ 1, %while.end ], !dbg !3221
  ret i8 %retval.0, !dbg !3222
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @discover_unique_type(%union.tree_node* %type) unnamed_addr #5 !dbg !3223 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3227, metadata !DIExpression()), !dbg !3235
  %call = tail call i8* @xmalloc(i64 16) #6, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %call, metadata !3228, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i32 0, metadata !3229, metadata !DIExpression()), !dbg !3235
  %call1 = tail call fastcc i8* @get_name_of_type(%union.tree_node* %type) #7, !dbg !3237
  %name = bitcast i8* %call to i8**, !dbg !3238
  store i8* %call1, i8** %name, align 8, !dbg !3239
  %seq = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3240
  %0 = bitcast i8* %seq to i32*, !dbg !3240
  %1 = ptrtoint i8* %call to i64, !dbg !3240
  %2 = ptrtoint %union.tree_node* %type to i64, !dbg !3241
  br label %while.cond, !dbg !3244

while.cond:                                       ; preds = %cleanup, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %cleanup ], !dbg !3235
  %retval.0 = phi %union.tree_node* [ undef, %entry ], [ %retval.1, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3229, metadata !DIExpression()), !dbg !3235
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3245
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3229, metadata !DIExpression()), !dbg !3235
  store i32 %i.0, i32* %0, align 8, !dbg !3246
  %3 = load %struct.splay_tree_s*, %struct.splay_tree_s** @all_canon_types, align 8, !dbg !3247
  %call2 = tail call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %3, i64 %1) #6, !dbg !3248
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call2, metadata !3230, metadata !DIExpression()), !dbg !3235
  %tobool = icmp eq %struct.splay_tree_node_s* %call2, null, !dbg !3249
  br i1 %tobool, label %if.else, label %if.then, !dbg !3250

if.then:                                          ; preds = %while.cond
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %call2, i64 0, i32 1, !dbg !3251
  %4 = bitcast i64* %value to %union.tree_node**, !dbg !3251
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8, !dbg !3251
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3231, metadata !DIExpression()), !dbg !3252
  %call3 = tail call zeroext i8 @types_compatible_p(%union.tree_node* %type, %union.tree_node* %5) #6, !dbg !3253
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3253
  br i1 %tobool4, label %cleanup, label %if.then5, !dbg !3254

if.then5:                                         ; preds = %if.then
  tail call void @free(i8* %call) #6, !dbg !3255
  %6 = load %struct.splay_tree_s*, %struct.splay_tree_s** @type_to_canon_type, align 8, !dbg !3256
  %7 = ptrtoint %union.tree_node* %5 to i64, !dbg !3257
  %call6 = tail call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %6, i64 %2, i64 %7) #6, !dbg !3258
  br label %cleanup, !dbg !3259

cleanup:                                          ; preds = %if.then, %if.then5
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then5 ], [ true, %if.then ]
  %retval.1 = phi %union.tree_node* [ %5, %if.then5 ], [ %retval.0, %if.then ]
  br i1 %cleanup.dest.slot.0, label %while.cond, label %cleanup17.loopexit, !llvm.loop !3260

if.else:                                          ; preds = %while.cond
  %inc.lcssa = phi i32 [ %inc, %while.cond ], !dbg !3245
  call void @llvm.dbg.value(metadata i32 %inc.lcssa, metadata !3229, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3235
  store i32 %inc.lcssa, i32* %0, align 8, !dbg !3262
  %8 = load %struct.splay_tree_s*, %struct.splay_tree_s** @all_canon_types, align 8, !dbg !3264
  %call9 = tail call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %8, i64 %1, i64 %2) #6, !dbg !3265
  %9 = load %struct.splay_tree_s*, %struct.splay_tree_s** @type_to_canon_type, align 8, !dbg !3266
  %call10 = tail call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %9, i64 %2, i64 %2) #6, !dbg !3267
  %10 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_canon_type, align 8, !dbg !3268
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3269
  %11 = bitcast i40* %uid to i32*, !dbg !3269
  %12 = load i32, i32* %11, align 8, !dbg !3269
  %conv = zext i32 %12 to i64, !dbg !3270
  %call12 = tail call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %10, i64 %conv, i64 %2) #6, !dbg !3271
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @global_types_seen, align 8, !dbg !3272
  %14 = load i32, i32* %11, align 8, !dbg !3273
  %call15 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %13, i32 %14) #6, !dbg !3274
  br label %cleanup17, !dbg !3275

cleanup17.loopexit:                               ; preds = %cleanup
  %retval.1.lcssa = phi %union.tree_node* [ %retval.1, %cleanup ]
  br label %cleanup17, !dbg !3276

cleanup17:                                        ; preds = %cleanup17.loopexit, %if.else
  %retval.2 = phi %union.tree_node* [ %type, %if.else ], [ %retval.1.lcssa, %cleanup17.loopexit ], !dbg !3277
  ret %union.tree_node* %retval.2, !dbg !3276
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i8* @get_name_of_type(%union.tree_node* %type) unnamed_addr #5 !dbg !3278 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3282, metadata !DIExpression()), !dbg !3284
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !3285
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3285
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3283, metadata !DIExpression()), !dbg !3284
  %tobool = icmp eq %union.tree_node* %1, null, !dbg !3286
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3288

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3289
  %bf.load = load i64, i64* %2, align 8, !dbg !3289
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3291
  %cmp = icmp eq i64 %bf.cast1, 35, !dbg !3291
  br i1 %cmp, label %if.then3, label %if.else9, !dbg !3292

if.then3:                                         ; preds = %if.end
  %name4 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3293
  %3 = load %union.tree_node*, %union.tree_node** %name4, align 8, !dbg !3293
  %tobool5 = icmp eq %union.tree_node* %3, null, !dbg !3293
  br i1 %tobool5, label %cleanup, label %if.then6, !dbg !3296

if.then6:                                         ; preds = %if.then3
  %str = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3297
  %4 = bitcast i32* %str to i8**, !dbg !3297
  %5 = load i8*, i8** %4, align 8, !dbg !3297
  br label %cleanup, !dbg !3298

if.else9:                                         ; preds = %if.end
  %cmp14 = icmp eq i64 %bf.cast1, 1, !dbg !3299
  br i1 %cmp14, label %if.then15, label %cleanup, !dbg !3301

if.then15:                                        ; preds = %if.else9
  %id17 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3302
  %str18 = bitcast i32* %id17 to i8**, !dbg !3302
  %6 = load i8*, i8** %str18, align 8, !dbg !3302
  br label %cleanup, !dbg !3303

cleanup:                                          ; preds = %if.then3, %entry, %if.else9, %if.then15, %if.then6
  %retval.0 = phi i8* [ %5, %if.then6 ], [ %6, %if.then15 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %entry ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %if.then3 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %if.else9 ], !dbg !3284
  ret i8* %retval.0, !dbg !3304
}

declare dso_local zeroext i8 @types_compatible_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s*, i64, i64) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3305 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3309, metadata !DIExpression()), !dbg !3310
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3311
  %bf.load = load i32, i32* %0, align 8, !dbg !3311
  %bf.clear = and i32 %bf.load, 255, !dbg !3311
  ret i32 %bf.clear, !dbg !3312
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @look_for_casts_stmt(%union.gimple_statement_d* %s) unnamed_addr #5 !dbg !3313 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3317, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i32 0, metadata !3318, metadata !DIExpression()), !dbg !3324
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %s) #7, !dbg !3325
  %tobool = icmp eq i8 %call, 0, !dbg !3325
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3325

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 771, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3325
  br label %cond.end, !dbg !3325

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call fastcc zeroext i8 @gimple_assign_cast_p(%union.gimple_statement_d* %s) #7, !dbg !3326
  %tobool2 = icmp eq i8 %call1, 0, !dbg !3326
  br i1 %tobool2, label %for.cond.preheader, label %if.then, !dbg !3327

for.cond.preheader:                               ; preds = %cond.end
  br label %for.cond, !dbg !3328

if.then:                                          ; preds = %cond.end
  %call3 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %s) #7, !dbg !3330
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3319, metadata !DIExpression()), !dbg !3331
  %call4 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %s) #7, !dbg !3332
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3332
  %0 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3332
  %call5 = tail call fastcc i32 @check_cast(%union.tree_node* %0, %union.tree_node* %call3) #7, !dbg !3333
  call void @llvm.dbg.value(metadata i32 %call5, metadata !3318, metadata !DIExpression()), !dbg !3324
  br label %if.end, !dbg !3334

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %cast.0 = phi i32 [ %or11, %for.body ], [ 0, %for.cond.preheader ], !dbg !3324
  %i.0 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ], !dbg !3335
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3322, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 %cast.0, metadata !3318, metadata !DIExpression()), !dbg !3324
  %call6 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %s) #7, !dbg !3337
  %conv = zext i32 %call6 to i64, !dbg !3337
  %cmp = icmp ult i64 %i.0, %conv, !dbg !3339
  br i1 %cmp, label %for.body, label %if.end.loopexit, !dbg !3328

for.body:                                         ; preds = %for.cond
  %conv8 = trunc i64 %i.0 to i32, !dbg !3340
  %call9 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %s, i32 %conv8) #7, !dbg !3341
  %call10 = tail call fastcc i32 @look_for_casts(%union.tree_node* %call9) #7, !dbg !3342
  %or11 = or i32 %cast.0, %call10, !dbg !3343
  call void @llvm.dbg.value(metadata i32 %or11, metadata !3318, metadata !DIExpression()), !dbg !3324
  %inc = add nuw nsw i64 %i.0, 1, !dbg !3344
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3322, metadata !DIExpression()), !dbg !3336
  br label %for.cond, !dbg !3345, !llvm.loop !3346

if.end.loopexit:                                  ; preds = %for.cond
  %cast.0.lcssa = phi i32 [ %cast.0, %for.cond ], !dbg !3324
  call void @llvm.dbg.value(metadata i32 %cast.0.lcssa, metadata !3318, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i32 %cast.0.lcssa, metadata !3318, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i32 %cast.0.lcssa, metadata !3318, metadata !DIExpression()), !dbg !3324
  br label %if.end, !dbg !3348

if.end:                                           ; preds = %if.end.loopexit, %if.then
  %cast.1 = phi i32 [ %call5, %if.then ], [ %cast.0.lcssa, %if.end.loopexit ], !dbg !3324
  call void @llvm.dbg.value(metadata i32 %cast.1, metadata !3318, metadata !DIExpression()), !dbg !3324
  %tobool12 = icmp eq i32 %cast.1, 0, !dbg !3348
  %spec.select = select i1 %tobool12, i32 256, i32 %cast.1, !dbg !3350
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3318, metadata !DIExpression()), !dbg !3324
  ret i32 %spec.select, !dbg !3351
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3352 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3357, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3358, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i32 5, metadata !3359, metadata !DIExpression()), !dbg !3360
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 5) #7, !dbg !3361
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3362
  store i32 2, i32* %iter_type, align 4, !dbg !3363
  %call = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !3364
  ret %struct.ssa_use_operand_d* %call, !dbg !3365
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3366 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3372, metadata !DIExpression()), !dbg !3373
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3374
  %0 = load i8, i8* %done, align 8, !dbg !3374
  ret i8 %0, !dbg !3375
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3376 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3380, metadata !DIExpression()), !dbg !3381
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3382
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3382
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3383
  ret %union.tree_node* %1, !dbg !3384
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3385 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3389, metadata !DIExpression()), !dbg !3391
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3392
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !3392
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !3394
  br i1 %tobool, label %if.end, label %if.then, !dbg !3395

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !3396
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !3390, metadata !DIExpression()), !dbg !3391
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !3398
  %2 = load i64, i64* %1, align 8, !dbg !3398
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3399
  store i64 %2, i64* %3, align 8, !dbg !3399
  br label %cleanup, !dbg !3400

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3401
  %4 = load i32, i32* %phi_i, align 8, !dbg !3401
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3403
  %5 = load i32, i32* %num_phi, align 4, !dbg !3403
  %cmp = icmp slt i32 %4, %5, !dbg !3404
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !3405

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3406
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3406
  %inc = add nsw i32 %4, 1, !dbg !3406
  store i32 %inc, i32* %phi_i, align 8, !dbg !3406
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #7, !dbg !3406
  br label %cleanup, !dbg !3408

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3409
  store i8 1, i8* %done, align 8, !dbg !3410
  br label %cleanup, !dbg !3411

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !3391
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3412
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3413 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3417, metadata !DIExpression()), !dbg !3421
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %s) #7, !dbg !3422
  %tobool = icmp eq i8 %call, 0, !dbg !3422
  br i1 %tobool, label %return, label %if.then, !dbg !3423

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %s) #7, !dbg !3424
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3418, metadata !DIExpression()), !dbg !3425
  switch i32 %call1, label %lor.rhs [
    i32 116, label %lor.end
    i32 113, label %lor.end
    i32 118, label %lor.end
    i32 77, label %lor.end
  ], !dbg !3426

lor.rhs:                                          ; preds = %if.then
  br label %lor.end, !dbg !3427

lor.end:                                          ; preds = %if.then, %if.then, %if.then, %if.then, %lor.rhs
  %0 = phi i8 [ 1, %if.then ], [ 0, %lor.rhs ], [ 1, %if.then ], [ 1, %if.then ], [ 1, %if.then ]
  br label %return

return:                                           ; preds = %entry, %lor.end
  %retval.0 = phi i8 [ %0, %lor.end ], [ 0, %entry ], !dbg !3421
  ret i8 %retval.0, !dbg !3428
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_cast(%union.tree_node* %to_type, %union.tree_node* %from) unnamed_addr #5 !dbg !3429 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %to_type, metadata !3433, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata %union.tree_node* %from, metadata !3434, metadata !DIExpression()), !dbg !3439
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %from, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3440
  %0 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3440
  %call = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %0, i8 zeroext 0, i8 zeroext 0) #7, !dbg !3441
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3435, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i32 256, metadata !3438, metadata !DIExpression()), !dbg !3439
  %call1 = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %to_type, i8 zeroext 0, i8 zeroext 0) #7, !dbg !3442
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3433, metadata !DIExpression()), !dbg !3439
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !3443
  %tobool2 = icmp eq %union.tree_node* %call1, null, !dbg !3445
  %or.cond.not = or i1 %tobool2, %tobool, !dbg !3446
  %cmp = icmp eq %union.tree_node* %call, %call1, !dbg !3447
  %or.cond1 = or i1 %or.cond.not, %cmp, !dbg !3446
  br i1 %or.cond1, label %cleanup, label %if.end, !dbg !3446

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @ipa_type_escape_star_count_of_interesting_type(%union.tree_node* %call1) #7, !dbg !3448
  %call7 = tail call i32 @ipa_type_escape_star_count_of_interesting_type(%union.tree_node* %call) #7, !dbg !3449
  %tobool11 = icmp sgt i32 %call4, -1, !dbg !3450
  %tobool13 = icmp sgt i32 %call7, -1, !dbg !3452
  br i1 %tobool11, label %if.then12, label %if.else59, !dbg !3453

if.then12:                                        ; preds = %if.end
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !3454

if.then14:                                        ; preds = %if.then12
  %call15 = tail call fastcc i32 @check_cast_type(%union.tree_node* %call1, %union.tree_node* %call) #7, !dbg !3455
  call void @llvm.dbg.value(metadata i32 %call15, metadata !3438, metadata !DIExpression()), !dbg !3439
  %cond = icmp eq i32 %call15, 4, !dbg !3458
  br i1 %cond, label %sw.bb16, label %cleanup, !dbg !3458

sw.bb16:                                          ; preds = %if.then14
  %call17 = tail call fastcc %union.tree_node* @mark_type(%union.tree_node* %call1, i32 1) #7, !dbg !3459
  %call18 = tail call fastcc %union.tree_node* @mark_type(%union.tree_node* %call, i32 1) #7, !dbg !3461
  br label %cleanup, !dbg !3462

if.else:                                          ; preds = %if.then12
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3463
  %bf.load = load i64, i64* %1, align 8, !dbg !3463
  %bf.cast3 = and i64 %bf.load, 65535, !dbg !3463
  %cmp19 = icmp eq i64 %bf.cast3, 10, !dbg !3463
  br i1 %cmp19, label %land.lhs.true, label %lor.lhs.false21, !dbg !3463

lor.lhs.false21:                                  ; preds = %if.else
  %cmp26 = icmp eq i64 %bf.cast3, 12, !dbg !3463
  br i1 %cmp26, label %land.lhs.true, label %if.else42, !dbg !3466

land.lhs.true:                                    ; preds = %lor.lhs.false21, %if.else
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3467
  %bf.load29 = load i64, i64* %2, align 8, !dbg !3467
  %bf.cast316 = and i64 %bf.load29, 65535, !dbg !3467
  %cmp32 = icmp eq i64 %bf.cast316, 10, !dbg !3467
  br i1 %cmp32, label %if.else42, label %lor.lhs.false34, !dbg !3467

lor.lhs.false34:                                  ; preds = %land.lhs.true
  %cmp39 = icmp eq i64 %bf.cast316, 12, !dbg !3467
  br i1 %cmp39, label %if.else42, label %cleanup, !dbg !3468

if.else42:                                        ; preds = %lor.lhs.false34, %land.lhs.true, %lor.lhs.false21
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %from, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3469
  %bf.load44 = load i64, i64* %3, align 8, !dbg !3469
  %bf.cast465 = and i64 %bf.load44, 65535, !dbg !3471
  %cmp47 = icmp eq i64 %bf.cast465, 141, !dbg !3471
  br i1 %cmp47, label %land.lhs.true49, label %if.else54, !dbg !3472

land.lhs.true49:                                  ; preds = %if.else42
  %call50 = tail call fastcc zeroext i8 @is_malloc_result(%union.tree_node* %from) #7, !dbg !3473
  %tobool52 = icmp eq i8 %call50, 0, !dbg !3473
  br i1 %tobool52, label %if.else54, label %cleanup, !dbg !3474

if.else54:                                        ; preds = %land.lhs.true49, %if.else42
  call void @llvm.dbg.value(metadata i32 16, metadata !3438, metadata !DIExpression()), !dbg !3439
  %call55 = tail call fastcc %union.tree_node* @mark_type(%union.tree_node* %call1, i32 1) #7, !dbg !3475
  br label %cleanup

if.else59:                                        ; preds = %if.end
  br i1 %tobool13, label %if.then61, label %cleanup, !dbg !3477

if.then61:                                        ; preds = %if.else59
  %call62 = tail call fastcc %union.tree_node* @mark_type(%union.tree_node* %call, i32 1) #7, !dbg !3478
  call void @llvm.dbg.value(metadata i32 64, metadata !3438, metadata !DIExpression()), !dbg !3439
  br label %cleanup, !dbg !3481

cleanup:                                          ; preds = %land.lhs.true49, %if.then14, %lor.lhs.false34, %if.else54, %sw.bb16, %if.then61, %if.else59, %entry
  %retval.0 = phi i32 [ 256, %entry ], [ %call15, %if.then14 ], [ 4, %sw.bb16 ], [ 32, %lor.lhs.false34 ], [ 16, %if.else54 ], [ 128, %land.lhs.true49 ], [ 64, %if.then61 ], [ 256, %if.else59 ], !dbg !3439
  ret i32 %retval.0, !dbg !3482
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3483 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3487, metadata !DIExpression()), !dbg !3488
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3489
  %0 = load i32, i32* %num_ops, align 4, !dbg !3489
  ret i32 %0, !dbg !3490
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @look_for_casts(%union.tree_node* %t) unnamed_addr #5 !dbg !3491 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3495, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 0, metadata !3496, metadata !DIExpression()), !dbg !3504
  %call = tail call zeroext i8 @is_gimple_cast(%union.tree_node* %t) #6, !dbg !3505
  %tobool = icmp eq i8 %call, 0, !dbg !3505
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3506

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3507
  %bf.load = load i64, i64* %0, align 8, !dbg !3507
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3508
  %cmp = icmp eq i64 %bf.cast1, 118, !dbg !3508
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !3509

while.cond.preheader:                             ; preds = %lor.lhs.false
  br label %while.cond, !dbg !3510

if.then:                                          ; preds = %entry, %lor.lhs.false
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3511
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3511
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3497, metadata !DIExpression()), !dbg !3512
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3513
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3513
  %call2 = tail call fastcc i32 @check_cast(%union.tree_node* %2, %union.tree_node* %1) #7, !dbg !3514
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3496, metadata !DIExpression()), !dbg !3504
  br label %if.end37, !dbg !3515

while.cond:                                       ; preds = %while.cond.preheader, %if.end36
  %cast.0 = phi i32 [ %cast.1, %if.end36 ], [ 0, %while.cond.preheader ], !dbg !3504
  %t.addr.0 = phi %union.tree_node* [ %3, %if.end36 ], [ %t, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0, metadata !3495, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 %cast.0, metadata !3496, metadata !DIExpression()), !dbg !3504
  %call3 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %t.addr.0) #7, !dbg !3516
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3510
  br i1 %tobool4, label %if.end37.loopexit, label %while.body, !dbg !3510

while.body:                                       ; preds = %while.cond
  %operands6 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3517
  %3 = load %union.tree_node*, %union.tree_node** %operands6, align 8, !dbg !3517
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3495, metadata !DIExpression()), !dbg !3504
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3518
  %bf.load9 = load i64, i64* %4, align 8, !dbg !3518
  %bf.cast112 = and i64 %bf.load9, 65535, !dbg !3519
  %cmp12 = icmp eq i64 %bf.cast112, 118, !dbg !3519
  br i1 %cmp12, label %if.then14, label %if.else22, !dbg !3520

if.then14:                                        ; preds = %while.body
  %operands16 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3521
  %5 = load %union.tree_node*, %union.tree_node** %operands16, align 8, !dbg !3521
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3500, metadata !DIExpression()), !dbg !3522
  %type19 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3523
  %6 = load %union.tree_node*, %union.tree_node** %type19, align 8, !dbg !3523
  %call20 = tail call fastcc i32 @check_cast(%union.tree_node* %6, %union.tree_node* %5) #7, !dbg !3524
  %or21 = or i32 %cast.0, %call20, !dbg !3525
  call void @llvm.dbg.value(metadata i32 %or21, metadata !3496, metadata !DIExpression()), !dbg !3504
  br label %if.end36, !dbg !3526

if.else22:                                        ; preds = %while.body
  %cmp27 = icmp eq i64 %bf.cast112, 41, !dbg !3527
  br i1 %cmp27, label %if.then29, label %if.end36, !dbg !3529

if.then29:                                        ; preds = %if.else22
  %operands31 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3530
  %arrayidx32 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands31, i64 1, !dbg !3530
  %7 = bitcast %union.tree_node** %arrayidx32 to %struct.tree_common**, !dbg !3530
  %8 = load %struct.tree_common*, %struct.tree_common** %7, align 8, !dbg !3530
  %type34 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %8, i64 0, i32 2, !dbg !3530
  %9 = load %union.tree_node*, %union.tree_node** %type34, align 8, !dbg !3530
  %call35 = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %9, i8 zeroext 0, i8 zeroext 0) #7, !dbg !3531
  br label %if.end36, !dbg !3531

if.end36:                                         ; preds = %if.else22, %if.then29, %if.then14
  %cast.1 = phi i32 [ %or21, %if.then14 ], [ %cast.0, %if.then29 ], [ %cast.0, %if.else22 ], !dbg !3504
  call void @llvm.dbg.value(metadata i32 %cast.1, metadata !3496, metadata !DIExpression()), !dbg !3504
  br label %while.cond, !dbg !3510, !llvm.loop !3532

if.end37.loopexit:                                ; preds = %while.cond
  %cast.0.lcssa = phi i32 [ %cast.0, %while.cond ], !dbg !3504
  call void @llvm.dbg.value(metadata i32 %cast.0.lcssa, metadata !3496, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 %cast.0.lcssa, metadata !3496, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 %cast.0.lcssa, metadata !3496, metadata !DIExpression()), !dbg !3504
  br label %if.end37, !dbg !3534

if.end37:                                         ; preds = %if.end37.loopexit, %if.then
  %cast.2 = phi i32 [ %call2, %if.then ], [ %cast.0.lcssa, %if.end37.loopexit ], !dbg !3504
  call void @llvm.dbg.value(metadata i32 %cast.2, metadata !3496, metadata !DIExpression()), !dbg !3504
  %tobool38 = icmp eq i32 %cast.2, 0, !dbg !3534
  %spec.select = select i1 %tobool38, i32 256, i32 %cast.2, !dbg !3536
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3496, metadata !DIExpression()), !dbg !3504
  ret i32 %spec.select, !dbg !3537
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3538 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3542, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 %i, metadata !3543, metadata !DIExpression()), !dbg !3544
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3545
  %tobool = icmp eq i8 %call, 0, !dbg !3545
  br i1 %tobool, label %return, label %if.then, !dbg !3547

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3548
  %idxprom = zext i32 %i to i64, !dbg !3548
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3548
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3548
  br label %return, !dbg !3550

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3551
  ret %union.tree_node* %retval.0, !dbg !3552
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_cast_type(%union.tree_node* %to_type, %union.tree_node* %from_type) unnamed_addr #5 !dbg !3553 {
entry:
  %to_type.addr = alloca %union.tree_node*, align 8
  %from_type.addr = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %to_type, metadata !3555, metadata !DIExpression()), !dbg !3559
  store %union.tree_node* %to_type, %union.tree_node** %to_type.addr, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %from_type, metadata !3556, metadata !DIExpression()), !dbg !3559
  store %union.tree_node* %from_type, %union.tree_node** %from_type.addr, align 8
  call void @llvm.dbg.value(metadata %union.tree_node** %to_type.addr, metadata !3555, metadata !DIExpression(DW_OP_deref)), !dbg !3559
  %call = call fastcc i32 @count_stars(%union.tree_node** nonnull %to_type.addr) #7, !dbg !3560
  call void @llvm.dbg.value(metadata i32 %call, metadata !3557, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata %union.tree_node** %from_type.addr, metadata !3556, metadata !DIExpression(DW_OP_deref)), !dbg !3559
  %call1 = call fastcc i32 @count_stars(%union.tree_node** nonnull %from_type.addr) #7, !dbg !3561
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3558, metadata !DIExpression()), !dbg !3559
  %cmp = icmp eq i32 %call, %call1, !dbg !3562
  br i1 %cmp, label %if.end, label %cleanup, !dbg !3564

if.end:                                           ; preds = %entry
  %0 = load %union.tree_node*, %union.tree_node** %to_type.addr, align 8, !dbg !3565
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3555, metadata !DIExpression()), !dbg !3559
  %1 = load %union.tree_node*, %union.tree_node** %from_type.addr, align 8, !dbg !3567
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3556, metadata !DIExpression()), !dbg !3559
  %cmp2 = icmp eq %union.tree_node* %0, %1, !dbg !3568
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !3569

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3555, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3556, metadata !DIExpression()), !dbg !3559
  %call5 = call fastcc zeroext i8 @parent_type_p(%union.tree_node* %0, %union.tree_node* %1) #7, !dbg !3570
  %tobool = icmp eq i8 %call5, 0, !dbg !3570
  br i1 %tobool, label %if.end7, label %cleanup, !dbg !3572

if.end7:                                          ; preds = %if.end4
  %2 = load %union.tree_node*, %union.tree_node** %from_type.addr, align 8, !dbg !3573
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3556, metadata !DIExpression()), !dbg !3559
  %3 = load %union.tree_node*, %union.tree_node** %to_type.addr, align 8, !dbg !3575
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3555, metadata !DIExpression()), !dbg !3559
  %call8 = call fastcc zeroext i8 @parent_type_p(%union.tree_node* %2, %union.tree_node* %3) #7, !dbg !3576
  %tobool9 = icmp eq i8 %call8, 0, !dbg !3576
  %. = select i1 %tobool9, i32 4, i32 2, !dbg !3559
  br label %cleanup, !dbg !3559

cleanup:                                          ; preds = %if.end4, %entry, %if.end7, %if.end
  %retval.0 = phi i32 [ 4, %entry ], [ 8, %if.end ], [ 1, %if.end4 ], [ %., %if.end7 ], !dbg !3559
  ret i32 %retval.0, !dbg !3577
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @mark_type(%union.tree_node* %type, i32 %escape_status) unnamed_addr #5 !dbg !3578 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3582, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 %escape_status, metadata !3583, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3584, metadata !DIExpression()), !dbg !3586
  %call = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %type, i8 zeroext 1, i8 zeroext 1) #7, !dbg !3587
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3582, metadata !DIExpression()), !dbg !3586
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !3588
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3590

if.end:                                           ; preds = %entry
  switch i32 %escape_status, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !3591

sw.bb:                                            ; preds = %if.end
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @global_types_exposed_parameter, align 8, !dbg !3592
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %0, metadata !3584, metadata !DIExpression()), !dbg !3586
  br label %sw.epilog, !dbg !3594

sw.bb1:                                           ; preds = %if.end
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @global_types_full_escape, align 8, !dbg !3595
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %1, metadata !3584, metadata !DIExpression()), !dbg !3586
  br label %sw.epilog, !dbg !3596

sw.epilog:                                        ; preds = %if.end, %sw.bb1, %sw.bb
  %map.0 = phi %struct.bitmap_head_def* [ null, %if.end ], [ %1, %sw.bb1 ], [ %0, %sw.bb ], !dbg !3586
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map.0, metadata !3584, metadata !DIExpression()), !dbg !3586
  %uid3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3597
  %2 = bitcast i40* %uid3 to i32*, !dbg !3597
  %3 = load i32, i32* %2, align 8, !dbg !3597
  call void @llvm.dbg.value(metadata i32 %3, metadata !3585, metadata !DIExpression()), !dbg !3586
  %call4 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %map.0, i32 %3) #6, !dbg !3598
  %tobool5 = icmp eq i32 %call4, 0, !dbg !3598
  br i1 %tobool5, label %if.else, label %cleanup, !dbg !3600

if.else:                                          ; preds = %sw.epilog
  %call7 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %map.0, i32 %3) #6, !dbg !3601
  %cmp = icmp eq i32 %escape_status, 1, !dbg !3603
  br i1 %cmp, label %if.then8, label %cleanup, !dbg !3605

if.then8:                                         ; preds = %if.else
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @global_types_exposed_parameter, align 8, !dbg !3606
  %call9 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %4, i32 %3) #6, !dbg !3608
  br label %cleanup, !dbg !3609

cleanup:                                          ; preds = %sw.epilog, %entry, %if.then8, %if.else
  %retval.0 = phi %union.tree_node* [ null, %entry ], [ %call, %sw.epilog ], [ %call, %if.else ], [ %call, %if.then8 ], !dbg !3586
  ret %union.tree_node* %retval.0, !dbg !3610
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @is_malloc_result(%union.tree_node* %var) unnamed_addr #5 !dbg !3611 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3613, metadata !DIExpression()), !dbg !3615
  %tobool = icmp eq %union.tree_node* %var, null, !dbg !3616
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3618

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3619
  %bf.load = load i64, i64* %0, align 8, !dbg !3619
  %bf.cast1 = and i64 %bf.load, 4294967296, !dbg !3619
  %tobool1 = icmp eq i64 %bf.cast1, 0, !dbg !3619
  br i1 %tobool1, label %if.end3, label %cleanup, !dbg !3621

if.end3:                                          ; preds = %if.end
  %def_stmt4 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3622
  %1 = bitcast %union.tree_node** %def_stmt4 to %union.gimple_statement_d**, !dbg !3622
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %1, align 8, !dbg !3622
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %2, metadata !3614, metadata !DIExpression()), !dbg !3615
  %call = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %2) #7, !dbg !3623
  %tobool5 = icmp eq i8 %call, 0, !dbg !3623
  br i1 %tobool5, label %cleanup, label %if.end7, !dbg !3625

if.end7:                                          ; preds = %if.end3
  %call8 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %2) #7, !dbg !3626
  %cmp = icmp eq %union.tree_node* %call8, %var, !dbg !3628
  br i1 %cmp, label %if.end10, label %cleanup, !dbg !3629

if.end10:                                         ; preds = %if.end7
  %call11 = tail call i32 @gimple_call_flags(%union.gimple_statement_d* %2) #6, !dbg !3630
  %and = lshr i32 %call11, 4, !dbg !3631
  %3 = trunc i32 %and to i8, !dbg !3631
  %4 = and i8 %3, 1, !dbg !3631
  br label %cleanup, !dbg !3632

cleanup:                                          ; preds = %if.end7, %if.end3, %if.end, %entry, %if.end10
  %retval.0 = phi i8 [ %4, %if.end10 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end3 ], [ 0, %if.end7 ], !dbg !3615
  ret i8 %retval.0, !dbg !3633
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @count_stars(%union.tree_node** %type_ptr) unnamed_addr #5 !dbg !3634 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %type_ptr, metadata !3638, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 0, metadata !3640, metadata !DIExpression()), !dbg !3641
  br label %while.cond, !dbg !3642

while.cond:                                       ; preds = %while.body, %entry
  %.pn.in.in = phi %union.tree_node** [ %type_ptr, %entry ], [ %type7, %while.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ], !dbg !3641
  %.pn.in = bitcast %union.tree_node** %.pn.in.in to %struct.tree_type**, !dbg !3641
  %.pn = load %struct.tree_type*, %struct.tree_type** %.pn.in, align 8, !dbg !3641
  %type.0.in = getelementptr inbounds %struct.tree_type, %struct.tree_type* %.pn, i64 0, i32 16, !dbg !3641
  %type.0 = load %union.tree_node*, %union.tree_node** %type.0.in, align 8, !dbg !3641
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3640, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata %union.tree_node* %type.0, metadata !3639, metadata !DIExpression()), !dbg !3641
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3643
  %bf.load = load i64, i64* %0, align 8, !dbg !3643
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3643
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !3643
  %cmp6 = icmp eq i64 %bf.cast1, 12, !dbg !3643
  %or.cond = or i1 %cmp, %cmp6, !dbg !3643
  br i1 %or.cond, label %while.body, label %while.end, !dbg !3643

while.body:                                       ; preds = %while.cond
  %type7 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3644
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3646
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3640, metadata !DIExpression()), !dbg !3641
  br label %while.cond, !dbg !3642, !llvm.loop !3647

while.end:                                        ; preds = %while.cond
  %i.0.lcssa = phi i32 [ %i.0, %while.cond ], !dbg !3641
  %type.0.lcssa = phi %union.tree_node* [ %type.0, %while.cond ], !dbg !3641
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !3640, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !3640, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !3640, metadata !DIExpression()), !dbg !3641
  store %union.tree_node* %type.0.lcssa, %union.tree_node** %type_ptr, align 8, !dbg !3649
  ret i32 %i.0.lcssa, !dbg !3650
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @parent_type_p(%union.tree_node* %parent, %union.tree_node* %child) unnamed_addr #5 !dbg !3651 {
entry:
  %base_binfo = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %parent, metadata !3653, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata %union.tree_node* %child, metadata !3654, metadata !DIExpression()), !dbg !3681
  %0 = bitcast %union.tree_node** %base_binfo to i8*, !dbg !3682
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3682
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %parent, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3683
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !3683
  %tobool = icmp eq %union.tree_node* %2, null, !dbg !3683
  br i1 %tobool, label %if.end15, label %if.then, !dbg !3684

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3656, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 0, metadata !3655, metadata !DIExpression()), !dbg !3681
  %base_binfos7 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, !dbg !3685
  %base = bitcast %union.tree_node** %base_binfos7 to %struct.VEC_tree_base*, !dbg !3685
  %3 = bitcast %union.tree_node** %base_binfo to %struct.tree_common**, !dbg !3686
  br label %for.cond, !dbg !3687

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ], !dbg !3688
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3655, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata %union.tree_node** %base_binfo, metadata !3657, metadata !DIExpression(DW_OP_deref)), !dbg !3681
  %call = call fastcc i32 @VEC_tree_base_iterate(%struct.VEC_tree_base* nonnull %base, i32 %i.0, %union.tree_node** nonnull %base_binfo) #7, !dbg !3689
  %tobool8 = icmp eq i32 %call, 0, !dbg !3690
  br i1 %tobool8, label %if.end15.loopexit, label %for.body, !dbg !3690

for.body:                                         ; preds = %for.cond
  %4 = load %struct.tree_common*, %struct.tree_common** %3, align 8, !dbg !3691
  %type9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %4, i64 0, i32 2, !dbg !3691
  %5 = load %union.tree_node*, %union.tree_node** %type9, align 8, !dbg !3691
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3658, metadata !DIExpression()), !dbg !3686
  %cmp = icmp eq %union.tree_node* %5, %child, !dbg !3692
  br i1 %cmp, label %cleanup, label %if.else, !dbg !3694

if.else:                                          ; preds = %for.body
  %call11 = call fastcc zeroext i8 @parent_type_p(%union.tree_node* %5, %union.tree_node* %child) #7, !dbg !3695
  %tobool12 = icmp ne i8 %call11, 0, !dbg !3695
  %spec.select = zext i1 %tobool12 to i32, !dbg !3697
  br label %cleanup, !dbg !3697

cleanup:                                          ; preds = %if.else, %for.body
  %cleanup.dest.slot.0 = phi i32 [ 1, %for.body ], [ %spec.select, %if.else ]
  %cond3 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond3, label %for.inc, label %cleanup154.loopexit

for.inc:                                          ; preds = %cleanup
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3698
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3655, metadata !DIExpression()), !dbg !3681
  br label %for.cond, !dbg !3699, !llvm.loop !3700

if.end15.loopexit:                                ; preds = %for.cond
  br label %if.end15, !dbg !3702

if.end15:                                         ; preds = %if.end15.loopexit, %entry
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %parent, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3702
  %bf.load = load i64, i64* %6, align 8, !dbg !3702
  %bf.cast6 = and i64 %bf.load, 65535, !dbg !3703
  %cmp17 = icmp eq i64 %bf.cast6, 17, !dbg !3703
  br i1 %cmp17, label %if.then23, label %lor.lhs.false, !dbg !3704

lor.lhs.false:                                    ; preds = %if.end15
  %cmp22 = icmp eq i64 %bf.cast6, 18, !dbg !3705
  br i1 %cmp22, label %if.then23, label %if.end94, !dbg !3706

if.then23:                                        ; preds = %lor.lhs.false, %if.end15
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %parent, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3707
  %7 = bitcast i32* %values to %union.tree_node**, !dbg !3707
  br label %for.cond25, !dbg !3708

for.cond25:                                       ; preds = %for.inc43, %if.then23
  %field.0.in = phi %union.tree_node** [ %7, %if.then23 ], [ %chain, %for.inc43 ]
  %field.0 = load %union.tree_node*, %union.tree_node** %field.0.in, align 8, !dbg !3709
  call void @llvm.dbg.value(metadata %union.tree_node* %field.0, metadata !3663, metadata !DIExpression()), !dbg !3710
  %tobool26 = icmp eq %union.tree_node* %field.0, null, !dbg !3711
  br i1 %tobool26, label %for.end45, label %for.body27, !dbg !3711

for.body27:                                       ; preds = %for.cond25
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3712
  %bf.load29 = load i64, i64* %8, align 8, !dbg !3712
  %bf.cast3117 = and i64 %bf.load29, 65535, !dbg !3714
  %cmp32 = icmp eq i64 %bf.cast3117, 31, !dbg !3714
  br i1 %cmp32, label %if.end34, label %cleanup40, !dbg !3715

if.end34:                                         ; preds = %for.body27
  %type36 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3716
  %9 = load %union.tree_node*, %union.tree_node** %type36, align 8, !dbg !3716
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !3666, metadata !DIExpression()), !dbg !3717
  %cmp37 = icmp eq %union.tree_node* %9, %child, !dbg !3718
  %. = zext i1 %cmp37 to i32, !dbg !3720
  br label %cleanup40, !dbg !3720

cleanup40:                                        ; preds = %for.body27, %if.end34
  %cleanup.dest.slot.1 = phi i32 [ 7, %for.body27 ], [ %., %if.end34 ]
  switch i32 %cleanup.dest.slot.1, label %cleanup91.loopexit18 [
    i32 0, label %for.inc43
    i32 7, label %for.inc43
  ]

for.inc43:                                        ; preds = %cleanup40, %cleanup40
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3721
  br label %for.cond25, !dbg !3722, !llvm.loop !3723

for.end45:                                        ; preds = %for.cond25
  br label %for.cond48, !dbg !3725

for.cond48:                                       ; preds = %for.inc87, %for.end45
  %field.1.in = phi %union.tree_node** [ %7, %for.end45 ], [ %chain89, %for.inc87 ]
  %field.1 = load %union.tree_node*, %union.tree_node** %field.1.in, align 8, !dbg !3726
  call void @llvm.dbg.value(metadata %union.tree_node* %field.1, metadata !3663, metadata !DIExpression()), !dbg !3710
  %tobool49 = icmp eq %union.tree_node* %field.1, null, !dbg !3727
  br i1 %tobool49, label %cleanup91.loopexit, label %for.body50, !dbg !3727

for.body50:                                       ; preds = %for.cond48
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3728
  %bf.load53 = load i64, i64* %10, align 8, !dbg !3728
  %bf.cast5513 = and i64 %bf.load53, 65535, !dbg !3730
  %cmp56 = icmp eq i64 %bf.cast5513, 31, !dbg !3730
  br i1 %cmp56, label %if.end58, label %cleanup84, !dbg !3731

if.end58:                                         ; preds = %for.body50
  %type60 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3732
  %11 = load %union.tree_node*, %union.tree_node** %type60, align 8, !dbg !3732
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !3670, metadata !DIExpression()), !dbg !3733
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3734
  %bf.load62 = load i64, i64* %12, align 8, !dbg !3734
  %bf.cast6414 = and i64 %bf.load62, 65535, !dbg !3736
  %cmp65 = icmp eq i64 %bf.cast6414, 16, !dbg !3736
  br i1 %cmp65, label %if.then78, label %lor.lhs.false66, !dbg !3737

lor.lhs.false66:                                  ; preds = %if.end58
  %cmp71 = icmp eq i64 %bf.cast6414, 18, !dbg !3738
  br i1 %cmp71, label %if.then78, label %lor.lhs.false72, !dbg !3739

lor.lhs.false72:                                  ; preds = %lor.lhs.false66
  %cmp77 = icmp eq i64 %bf.cast6414, 17, !dbg !3740
  br i1 %cmp77, label %if.then78, label %if.end83, !dbg !3741

if.then78:                                        ; preds = %lor.lhs.false72, %lor.lhs.false66, %if.end58
  %call79 = call fastcc zeroext i8 @parent_type_p(%union.tree_node* %11, %union.tree_node* %child) #7, !dbg !3742
  %tobool80 = icmp eq i8 %call79, 0, !dbg !3742
  br i1 %tobool80, label %if.end83, label %cleanup84, !dbg !3744

if.end83:                                         ; preds = %if.then78, %lor.lhs.false72
  br label %cleanup84, !dbg !3745

cleanup84:                                        ; preds = %if.then78, %for.body50, %if.end83
  %cleanup.dest.slot.2 = phi i32 [ 0, %if.end83 ], [ 10, %for.body50 ], [ 1, %if.then78 ]
  switch i32 %cleanup.dest.slot.2, label %cleanup91.loopexit [
    i32 0, label %for.inc87
    i32 10, label %for.inc87
  ]

for.inc87:                                        ; preds = %cleanup84, %cleanup84
  %chain89 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3746
  br label %for.cond48, !dbg !3747, !llvm.loop !3748

cleanup91.loopexit:                               ; preds = %cleanup84, %for.cond48
  %cleanup.dest.slot.3.ph = phi i32 [ 0, %for.cond48 ], [ %cleanup.dest.slot.2, %cleanup84 ]
  br label %cleanup91

cleanup91.loopexit18:                             ; preds = %cleanup40
  %cleanup.dest.slot.1.lcssa = phi i32 [ %cleanup.dest.slot.1, %cleanup40 ]
  br label %cleanup91

cleanup91:                                        ; preds = %cleanup91.loopexit18, %cleanup91.loopexit
  %cleanup.dest.slot.3 = phi i32 [ %cleanup.dest.slot.3.ph, %cleanup91.loopexit ], [ %cleanup.dest.slot.1.lcssa, %cleanup91.loopexit18 ]
  %cond2 = icmp eq i32 %cleanup.dest.slot.3, 0
  br i1 %cond2, label %cleanup91.if.end94_crit_edge, label %cleanup154

cleanup91.if.end94_crit_edge:                     ; preds = %cleanup91
  %bf.load96.pre = load i64, i64* %6, align 8, !dbg !3750
  br label %if.end94

if.end94:                                         ; preds = %cleanup91.if.end94_crit_edge, %lor.lhs.false
  %bf.load96 = phi i64 [ %bf.load96.pre, %cleanup91.if.end94_crit_edge ], [ %bf.load, %lor.lhs.false ], !dbg !3750
  %bf.cast988 = and i64 %bf.load96, 65535, !dbg !3751
  %cmp99 = icmp eq i64 %bf.cast988, 16, !dbg !3751
  br i1 %cmp99, label %if.then100, label %if.end153, !dbg !3752

if.then100:                                       ; preds = %if.end94
  %values103 = getelementptr inbounds %union.tree_node, %union.tree_node* %parent, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3753
  %13 = bitcast i32* %values103 to %union.tree_node**, !dbg !3753
  br label %for.cond104, !dbg !3754

for.cond104:                                      ; preds = %for.inc146, %if.then100
  %field101.0.in = phi %union.tree_node** [ %13, %if.then100 ], [ %chain148, %for.inc146 ]
  %field101.0 = load %union.tree_node*, %union.tree_node** %field101.0.in, align 8, !dbg !3755
  call void @llvm.dbg.value(metadata %union.tree_node* %field101.0, metadata !3674, metadata !DIExpression()), !dbg !3756
  %tobool105 = icmp eq %union.tree_node* %field101.0, null, !dbg !3757
  br i1 %tobool105, label %for.end149, label %for.body106, !dbg !3757

for.body106:                                      ; preds = %for.cond104
  %14 = getelementptr inbounds %union.tree_node, %union.tree_node* %field101.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3758
  %bf.load109 = load i64, i64* %14, align 8, !dbg !3758
  %bf.cast1119 = and i64 %bf.load109, 65535, !dbg !3760
  %cmp112 = icmp eq i64 %bf.cast1119, 31, !dbg !3760
  br i1 %cmp112, label %if.end114, label %cleanup143, !dbg !3761

if.end114:                                        ; preds = %for.body106
  %type116 = getelementptr inbounds %union.tree_node, %union.tree_node* %field101.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3762
  %15 = load %union.tree_node*, %union.tree_node** %type116, align 8, !dbg !3762
  call void @llvm.dbg.value(metadata %union.tree_node* %15, metadata !3677, metadata !DIExpression()), !dbg !3763
  %cmp117 = icmp eq %union.tree_node* %15, %child, !dbg !3764
  br i1 %cmp117, label %cleanup143, label %if.end119, !dbg !3766

if.end119:                                        ; preds = %if.end114
  %16 = getelementptr inbounds %union.tree_node, %union.tree_node* %15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3767
  %bf.load121 = load i64, i64* %16, align 8, !dbg !3767
  %bf.cast12310 = and i64 %bf.load121, 65535, !dbg !3769
  %cmp124 = icmp eq i64 %bf.cast12310, 16, !dbg !3769
  br i1 %cmp124, label %if.then137, label %lor.lhs.false125, !dbg !3770

lor.lhs.false125:                                 ; preds = %if.end119
  %cmp130 = icmp eq i64 %bf.cast12310, 18, !dbg !3771
  br i1 %cmp130, label %if.then137, label %lor.lhs.false131, !dbg !3772

lor.lhs.false131:                                 ; preds = %lor.lhs.false125
  %cmp136 = icmp eq i64 %bf.cast12310, 17, !dbg !3773
  br i1 %cmp136, label %if.then137, label %cleanup143, !dbg !3774

if.then137:                                       ; preds = %lor.lhs.false131, %lor.lhs.false125, %if.end119
  %call138 = call fastcc zeroext i8 @parent_type_p(%union.tree_node* %15, %union.tree_node* %child) #7, !dbg !3775
  %tobool139 = icmp eq i8 %call138, 0, !dbg !3775
  %.4 = select i1 %tobool139, i32 11, i32 1, !dbg !3778
  br label %cleanup143, !dbg !3778

cleanup143:                                       ; preds = %for.body106, %lor.lhs.false131, %if.then137, %if.end114
  %cleanup.dest.slot.4 = phi i32 [ 13, %for.body106 ], [ 1, %if.end114 ], [ %.4, %if.then137 ], [ 0, %lor.lhs.false131 ]
  switch i32 %cleanup.dest.slot.4, label %cleanup150.loopexit [
    i32 0, label %for.inc146
    i32 13, label %for.inc146
    i32 11, label %for.end149
  ]

for.inc146:                                       ; preds = %cleanup143, %cleanup143
  %chain148 = getelementptr inbounds %union.tree_node, %union.tree_node* %field101.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3779
  br label %for.cond104, !dbg !3780, !llvm.loop !3781

for.end149:                                       ; preds = %for.cond104, %cleanup143
  br label %cleanup150, !dbg !3783

cleanup150.loopexit:                              ; preds = %cleanup143
  %cleanup.dest.slot.4.lcssa = phi i32 [ %cleanup.dest.slot.4, %cleanup143 ]
  br label %cleanup150

cleanup150:                                       ; preds = %cleanup150.loopexit, %for.end149
  %cleanup.dest.slot.5 = phi i32 [ 0, %for.end149 ], [ %cleanup.dest.slot.4.lcssa, %cleanup150.loopexit ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.5, 0
  br i1 %cond1, label %if.end153, label %cleanup154

if.end153:                                        ; preds = %cleanup150, %if.end94
  br label %cleanup154, !dbg !3784

cleanup154.loopexit:                              ; preds = %cleanup
  br label %cleanup154, !dbg !3785

cleanup154:                                       ; preds = %cleanup154.loopexit, %cleanup91, %cleanup150, %if.end153
  %retval.13 = phi i8 [ 1, %cleanup91 ], [ 1, %cleanup150 ], [ 0, %if.end153 ], [ 1, %cleanup154.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3785
  ret i8 %retval.13, !dbg !3785
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_iterate(%struct.VEC_tree_base* %vec_, i32 %ix_, %union.tree_node** %ptr) unnamed_addr #0 !dbg !3786 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3792, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3793, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata %union.tree_node** %ptr, metadata !3794, metadata !DIExpression()), !dbg !3795
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3796
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3796

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3796
  %0 = load i32, i32* %num, align 8, !dbg !3796
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3796
  br i1 %cmp, label %if.then, label %if.else, !dbg !3798

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3799
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3799
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3799
  br label %return, !dbg !3799

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3801

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %union.tree_node* [ null, %if.else ], [ %1, %if.then ], !dbg !3803
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3803
  store %union.tree_node* %storemerge, %union.tree_node** %ptr, align 8, !dbg !3803
  ret i32 %retval.0, !dbg !3798
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3804 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3806, metadata !DIExpression()), !dbg !3807
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3808
  %cmp = icmp eq i32 %call, 8, !dbg !3809
  %conv1 = zext i1 %cmp to i8, !dbg !3808
  ret i8 %conv1, !dbg !3810
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3811 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3813, metadata !DIExpression()), !dbg !3814
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3815
  ret %union.tree_node* %call, !dbg !3816
}

declare dso_local i32 @gimple_call_flags(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local zeroext i8 @is_gimple_cast(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @handled_component_p(%union.tree_node* %t) unnamed_addr #0 !dbg !3817 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3824, metadata !DIExpression()), !dbg !3825
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3826
  %bf.load = load i64, i64* %0, align 8, !dbg !3826
  %1 = trunc i64 %bf.load to i16, !dbg !3826
  switch i16 %1, label %sw.default [
    i16 42, label %return
    i16 41, label %return
    i16 45, label %return
    i16 46, label %return
    i16 118, label %return
    i16 43, label %return
    i16 44, label %return
  ], !dbg !3827

sw.default:                                       ; preds = %entry
  br label %return, !dbg !3828

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i8 [ 0, %sw.default ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], !dbg !3830
  ret i8 %retval.0, !dbg !3831
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3832 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3834, metadata !DIExpression()), !dbg !3835
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3836
  %cmp = icmp eq i32 %call, 0, !dbg !3837
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3838

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3839
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3840
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3841
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3842 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3846, metadata !DIExpression()), !dbg !3848
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3849
  %idxprom = zext i32 %call to i64, !dbg !3850
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3850
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3850
  call void @llvm.dbg.value(metadata i64 %0, metadata !3847, metadata !DIExpression()), !dbg !3848
  %cmp = icmp eq i64 %0, 0, !dbg !3851
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3851

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3851
  br label %cond.end, !dbg !3851

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3852
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3853
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3854
  ret %union.tree_node** %2, !dbg !3855
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3856 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3860, metadata !DIExpression()), !dbg !3861
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3862
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3863
  ret i32 %call1, !dbg !3864
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3865 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3869, metadata !DIExpression()), !dbg !3870
  %idxprom = zext i32 %code to i64, !dbg !3871
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3871
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3871
  ret i32 %0, !dbg !3872
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3873 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3877, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3878, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3879, metadata !DIExpression()), !dbg !3880
  %0 = and i32 %flags, 10, !dbg !3881
  %1 = icmp eq i32 %0, 8, !dbg !3881
  br i1 %1, label %cond.true, label %land.lhs.true, !dbg !3881

land.lhs.true:                                    ; preds = %entry
  %2 = and i32 %flags, 5, !dbg !3881
  %3 = icmp eq i32 %2, 4, !dbg !3881
  br i1 %3, label %cond.true, label %cond.end, !dbg !3881

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3881
  br label %cond.end, !dbg !3881

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %tobool9 = icmp eq i32 %0, 0, !dbg !3882
  br i1 %tobool9, label %cond.end12, label %cond.true10, !dbg !3883

cond.true10:                                      ; preds = %cond.end
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3884
  br label %cond.end12, !dbg !3883

cond.end12:                                       ; preds = %cond.end, %cond.true10
  %4 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ null, %cond.end ], !dbg !3883
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3885
  store %struct.def_optype_d* %4, %struct.def_optype_d** %defs, align 8, !dbg !3886
  %and14 = and i32 %flags, 8, !dbg !3887
  %tobool15 = icmp eq i32 %and14, 0, !dbg !3887
  br i1 %tobool15, label %land.lhs.true16, label %if.end, !dbg !3889

land.lhs.true16:                                  ; preds = %cond.end12
  %tobool18 = icmp eq %struct.def_optype_d* %4, null, !dbg !3890
  br i1 %tobool18, label %if.end, label %land.lhs.true19, !dbg !3891

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !3892
  %cmp = icmp eq %union.tree_node* %call20, null, !dbg !3893
  br i1 %cmp, label %if.end, label %if.then, !dbg !3894

if.then:                                          ; preds = %land.lhs.true19
  %5 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !3895
  %6 = load i64*, i64** %5, align 8, !dbg !3895
  %7 = load i64, i64* %6, align 8, !dbg !3896
  %8 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !3897
  store i64 %7, i64* %8, align 8, !dbg !3897
  br label %if.end, !dbg !3898

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true16, %cond.end12, %if.then
  %and23 = and i32 %flags, 5, !dbg !3899
  %tobool24 = icmp eq i32 %and23, 0, !dbg !3899
  br i1 %tobool24, label %cond.end28, label %cond.true25, !dbg !3900

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3901
  br label %cond.end28, !dbg !3900

cond.end28:                                       ; preds = %if.end, %cond.true25
  %9 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ null, %if.end ], !dbg !3900
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3902
  store %struct.use_optype_d* %9, %struct.use_optype_d** %uses, align 8, !dbg !3903
  %and30 = and i32 %flags, 4, !dbg !3904
  %tobool31 = icmp eq i32 %and30, 0, !dbg !3904
  br i1 %tobool31, label %land.lhs.true32, label %if.end42, !dbg !3906

land.lhs.true32:                                  ; preds = %cond.end28
  %tobool34 = icmp eq %struct.use_optype_d* %9, null, !dbg !3907
  br i1 %tobool34, label %if.end42, label %land.lhs.true35, !dbg !3908

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %call36 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !3909
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !3910
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !3911

if.then38:                                        ; preds = %land.lhs.true35
  %10 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !3912
  %11 = load i64*, i64** %10, align 8, !dbg !3912
  %12 = load i64, i64* %11, align 8, !dbg !3913
  %13 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3914
  store i64 %12, i64* %13, align 8, !dbg !3914
  br label %if.end42, !dbg !3915

if.end42:                                         ; preds = %land.lhs.true35, %land.lhs.true32, %cond.end28, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3916
  store i8 0, i8* %done, align 8, !dbg !3917
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3918
  store i32 0, i32* %phi_i, align 8, !dbg !3919
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3920
  store i32 0, i32* %num_phi, align 4, !dbg !3921
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3922
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3923
  ret void, !dbg !3924
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3925 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3929, metadata !DIExpression()), !dbg !3930
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !3931
  %tobool = icmp eq i8 %call, 0, !dbg !3931
  br i1 %tobool, label %return, label %if.end, !dbg !3933

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !3934
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !3934
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !3934
  br label %return, !dbg !3935

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3930
  ret %struct.def_optype_d* %retval.0, !dbg !3936
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3937 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3939, metadata !DIExpression()), !dbg !3940
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !3941
  %tobool = icmp eq i8 %call, 0, !dbg !3941
  br i1 %tobool, label %return, label %if.end, !dbg !3943

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !3944
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !3944
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3944
  br label %return, !dbg !3945

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3940
  ret %union.tree_node* %retval.0, !dbg !3946
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3947 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3951, metadata !DIExpression()), !dbg !3952
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !3953
  %tobool = icmp eq i8 %call, 0, !dbg !3953
  br i1 %tobool, label %return, label %if.end, !dbg !3955

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !3956
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !3956
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !3956
  br label %return, !dbg !3957

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3952
  ret %struct.use_optype_d* %retval.0, !dbg !3958
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3959 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3961, metadata !DIExpression()), !dbg !3962
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !3963
  %tobool = icmp eq i8 %call, 0, !dbg !3963
  br i1 %tobool, label %return, label %if.end, !dbg !3965

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !3966
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !3966
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3966
  br label %return, !dbg !3967

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3962
  ret %union.tree_node* %retval.0, !dbg !3968
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3969 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3971, metadata !DIExpression()), !dbg !3972
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3973
  %cmp = icmp ugt i32 %call, 5, !dbg !3974
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3975

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3976
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3977
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3978
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3979 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3983, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i32 %i, metadata !3984, metadata !DIExpression()), !dbg !3985
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !3986
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3987
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3988
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3989 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3994, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata i32 %index, metadata !3995, metadata !DIExpression()), !dbg !3996
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3997
  %0 = load i32, i32* %capacity, align 8, !dbg !3997
  %cmp = icmp ult i32 %0, %index, !dbg !3997
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3997

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3997
  br label %cond.end, !dbg !3997

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3998
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3998
  ret %struct.phi_arg_d* %arrayidx, !dbg !3999
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4000 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4004, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4005, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i32 1, metadata !4006, metadata !DIExpression()), !dbg !4007
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 1) #7, !dbg !4008
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4009
  store i32 1, i32* %iter_type, align 4, !dbg !4010
  %call = tail call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !4011
  ret %union.tree_node* %call, !dbg !4012
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4013 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4017, metadata !DIExpression()), !dbg !4019
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4020
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !4020
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !4022
  br i1 %tobool, label %if.end, label %if.then, !dbg !4023

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !4024
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %use_ptr) #7, !dbg !4024
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4018, metadata !DIExpression()), !dbg !4019
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !4026
  %2 = load i64*, i64** %1, align 8, !dbg !4026
  %3 = load i64, i64* %2, align 8, !dbg !4027
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !4028
  store i64 %3, i64* %4, align 8, !dbg !4028
  br label %cleanup, !dbg !4029

if.end:                                           ; preds = %entry
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4030
  %5 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !4030
  %tobool4 = icmp eq %struct.def_optype_d* %5, null, !dbg !4032
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !4033

if.then5:                                         ; preds = %if.end
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %5, i64 0, i32 1, !dbg !4034
  %6 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !4034
  %call7 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %6) #7, !dbg !4034
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !4018, metadata !DIExpression()), !dbg !4019
  %7 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !4036
  %8 = load i64*, i64** %7, align 8, !dbg !4036
  %9 = load i64, i64* %8, align 8, !dbg !4037
  %10 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !4038
  store i64 %9, i64* %10, align 8, !dbg !4038
  br label %cleanup, !dbg !4039

if.end11:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4040
  store i8 1, i8* %done, align 8, !dbg !4041
  br label %cleanup, !dbg !4042

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call7, %if.then5 ], [ null, %if.end11 ], !dbg !4019
  ret %union.tree_node* %retval.0, !dbg !4043
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !4044 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !4049, metadata !DIExpression()), !dbg !4050
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !4051
  ret %union.tree_node* %0, !dbg !4052
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4053 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4055, metadata !DIExpression()), !dbg !4057
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !4058
  call void @llvm.dbg.value(metadata i32 %call, metadata !4056, metadata !DIExpression()), !dbg !4057
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !4059

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4061
  %bf.load = load i32, i32* %0, align 8, !dbg !4061
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4061
  br label %cleanup, !dbg !4062

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4063
  br label %cleanup, !dbg !4065

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !4057
  ret i32 %retval.0, !dbg !4066
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !4067 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4071, metadata !DIExpression()), !dbg !4072
  %idxprom = sext i32 %code to i64, !dbg !4073
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !4073
  %0 = load i8, i8* %arrayidx, align 1, !dbg !4073
  %conv = zext i8 %0 to i32, !dbg !4074
  ret i32 %conv, !dbg !4075
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipa_init() unnamed_addr #5 !dbg !4076 {
entry:
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* nonnull @ipa_obstack) #6, !dbg !4077
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @ipa_obstack) #6, !dbg !4078
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** @global_types_exposed_parameter, align 8, !dbg !4079
  %call1 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @ipa_obstack) #6, !dbg !4080
  store %struct.bitmap_head_def* %call1, %struct.bitmap_head_def** @global_types_full_escape, align 8, !dbg !4081
  %call2 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @ipa_obstack) #6, !dbg !4082
  store %struct.bitmap_head_def* %call2, %struct.bitmap_head_def** @global_types_seen, align 8, !dbg !4083
  %call3 = tail call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* nonnull @splay_tree_compare_ints, void (i64)* null, void (i64)* null) #6, !dbg !4084
  store %struct.splay_tree_s* %call3, %struct.splay_tree_s** @uid_to_canon_type, align 8, !dbg !4085
  %call4 = tail call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* nonnull @compare_type_brand, void (i64)* null, void (i64)* null) #6, !dbg !4086
  store %struct.splay_tree_s* %call4, %struct.splay_tree_s** @all_canon_types, align 8, !dbg !4087
  %call5 = tail call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* nonnull @splay_tree_compare_pointers, void (i64)* null, void (i64)* null) #6, !dbg !4088
  store %struct.splay_tree_s* %call5, %struct.splay_tree_s** @type_to_canon_type, align 8, !dbg !4089
  %call6 = tail call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* nonnull @splay_tree_compare_ints, void (i64)* null, void (i64)* null) #6, !dbg !4090
  store %struct.splay_tree_s* %call6, %struct.splay_tree_s** @uid_to_subtype_map, align 8, !dbg !4091
  %call7 = tail call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* nonnull @splay_tree_compare_ints, void (i64)* null, void (i64)* null) #6, !dbg !4092
  store %struct.splay_tree_s* %call7, %struct.splay_tree_s** @uid_to_addressof_down_map, align 8, !dbg !4093
  %call8 = tail call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* nonnull @splay_tree_compare_ints, void (i64)* null, void (i64)* null) #6, !dbg !4094
  store %struct.splay_tree_s* %call8, %struct.splay_tree_s** @uid_to_addressof_up_map, align 8, !dbg !4095
  %call9 = tail call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !4096
  store %struct.pointer_set_t* %call9, %struct.pointer_set_t** @visited_nodes, align 8, !dbg !4097
  store i1 true, i1* @initialized, align 1, !dbg !4098
  ret void, !dbg !4099
}

; Function Attrs: nounwind uwtable
define internal fastcc void @analyze_variable(%struct.varpool_node* %vnode) unnamed_addr #5 !dbg !4100 {
entry:
  call void @llvm.dbg.value(metadata %struct.varpool_node* %vnode, metadata !4102, metadata !DIExpression()), !dbg !4105
  %decl = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode, i64 0, i32 0, !dbg !4106
  %0 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4106
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4103, metadata !DIExpression()), !dbg !4105
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4107
  %1 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !4107
  %call = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %1, i8 zeroext 0, i8 zeroext 0) #7, !dbg !4108
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4104, metadata !DIExpression()), !dbg !4105
  %externally_visible = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode, i64 0, i32 5, !dbg !4109
  %bf.load = load i8, i8* %externally_visible, align 4, !dbg !4109
  %bf.clear = and i8 %bf.load, 32, !dbg !4109
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !4111
  br i1 %tobool, label %if.end, label %if.then, !dbg !4112

if.then:                                          ; preds = %entry
  tail call fastcc void @mark_interesting_type(%union.tree_node* %call, i32 1) #7, !dbg !4113
  br label %if.end, !dbg !4113

if.end:                                           ; preds = %entry, %if.then
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4114
  %bf.load2 = load i64, i64* %2, align 8, !dbg !4114
  %bf.cast41 = and i64 %bf.load2, 65535, !dbg !4114
  %cmp = icmp eq i64 %bf.cast41, 32, !dbg !4114
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4114

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 1645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4114
  br label %cond.end, !dbg !4114

cond.end:                                         ; preds = %if.end, %cond.true
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !4115
  %3 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !4115
  %tobool5 = icmp eq %union.tree_node* %3, null, !dbg !4115
  br i1 %tobool5, label %if.end9, label %if.then6, !dbg !4117

if.then6:                                         ; preds = %cond.end
  tail call fastcc void @check_tree(%union.tree_node* nonnull %3) #7, !dbg !4118
  br label %if.end9, !dbg !4118

if.end9:                                          ; preds = %cond.end, %if.then6
  ret void, !dbg !4119
}

; Function Attrs: nounwind uwtable
define internal fastcc void @analyze_function(%struct.cgraph_node* %fn) unnamed_addr #5 !dbg !4120 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %fn, metadata !4122, metadata !DIExpression()), !dbg !4144
  %decl1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %fn, i64 0, i32 0, !dbg !4145
  %0 = load %union.tree_node*, %union.tree_node** %decl1, align 8, !dbg !4145
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4123, metadata !DIExpression()), !dbg !4144
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %fn, i64 0, i32 18, i32 2, !dbg !4146
  %bf.load = load i8, i8* %externally_visible, align 8, !dbg !4146
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !4146
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4146
  tail call fastcc void @check_function_parameter_and_return_types(%union.tree_node* %0, i8 zeroext %bf.clear) #7, !dbg !4147
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4148
  %tobool = icmp eq %struct._IO_FILE* %1, null, !dbg !4148
  br i1 %tobool, label %if.end, label %if.then, !dbg !4150

if.then:                                          ; preds = %entry
  %call = tail call i8* @cgraph_node_name(%struct.cgraph_node* %fn) #6, !dbg !4151
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %call) #6, !dbg !4152
  br label %if.end, !dbg !4152

if.end:                                           ; preds = %entry, %if.then
  %f = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 1, !dbg !4153
  %2 = load %struct.function*, %struct.function** %f, align 8, !dbg !4153
  call void @llvm.dbg.value(metadata %struct.function* %2, metadata !4124, metadata !DIExpression()), !dbg !4154
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !4155
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4155
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !4155
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4155
  %5 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4156
  %6 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4157
  br label %for.cond, !dbg !4155

for.cond:                                         ; preds = %for.end, %if.end
  %7 = phi %struct.control_flow_graph* [ %3, %if.end ], [ %.pre, %for.end ], !dbg !4159
  %.pn = phi %struct.basic_block_def* [ %4, %if.end ], [ %this_block.0, %for.end ]
  %this_block.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !4160
  %this_block.0 = load %struct.basic_block_def*, %struct.basic_block_def** %this_block.0.in, align 8, !dbg !4160
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %this_block.0, metadata !4126, metadata !DIExpression()), !dbg !4154
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 1, !dbg !4159
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4159
  %cmp = icmp eq %struct.basic_block_def* %this_block.0, %8, !dbg !4159
  br i1 %cmp, label %for.end12, label %for.body, !dbg !4155

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8, !dbg !4161
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !4162
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %this_block.0) #7, !dbg !4162
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !4162
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !4162
  br label %for.cond5, !dbg !4163

for.cond5:                                        ; preds = %for.body8, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4127, metadata !DIExpression(DW_OP_deref)), !dbg !4156
  %call6 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4164
  %tobool7 = icmp eq i8 %call6, 0, !dbg !4166
  br i1 %tobool7, label %for.body8, label %for.end, !dbg !4167

for.body8:                                        ; preds = %for.cond5
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4127, metadata !DIExpression(DW_OP_deref)), !dbg !4156
  %call9 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4168
  call fastcc void @scan_for_refs(%union.gimple_statement_d* %call9) #7, !dbg !4169
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4127, metadata !DIExpression(DW_OP_deref)), !dbg !4156
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4170
  br label %for.cond5, !dbg !4171, !llvm.loop !4172

for.end:                                          ; preds = %for.cond5
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8, !dbg !4174
  %.pre = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4159
  br label %for.cond, !dbg !4159, !llvm.loop !4175

for.end12:                                        ; preds = %for.cond
  %9 = load %struct.function*, %struct.function** %f, align 8, !dbg !4177
  %tobool15 = icmp eq %struct.function* %9, null, !dbg !4177
  br i1 %tobool15, label %if.end43, label %if.then16, !dbg !4178

if.then16:                                        ; preds = %for.end12
  %local_decls = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 9, !dbg !4179
  br label %for.cond19, !dbg !4180

for.cond19:                                       ; preds = %if.end38, %if.then16
  %step.0.in = phi %union.tree_node** [ %local_decls, %if.then16 ], [ %chain, %if.end38 ]
  %step.0 = load %union.tree_node*, %union.tree_node** %step.0.in, align 8, !dbg !4181
  call void @llvm.dbg.value(metadata %union.tree_node* %step.0, metadata !4137, metadata !DIExpression()), !dbg !4182
  %tobool20 = icmp eq %union.tree_node* %step.0, null, !dbg !4183
  br i1 %tobool20, label %if.end43.loopexit, label %for.body21, !dbg !4183

for.body21:                                       ; preds = %for.cond19
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %step.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4184
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8, !dbg !4184
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !4140, metadata !DIExpression()), !dbg !4185
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4186
  %bf.load22 = load i64, i64* %12, align 8, !dbg !4186
  %bf.cast241 = and i64 %bf.load22, 65535, !dbg !4188
  %cmp25 = icmp eq i64 %bf.cast241, 32, !dbg !4188
  br i1 %cmp25, label %land.lhs.true, label %if.end38, !dbg !4189

land.lhs.true:                                    ; preds = %for.body21
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !4190
  %13 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !4190
  %tobool27 = icmp eq %union.tree_node* %13, null, !dbg !4190
  br i1 %tobool27, label %if.end38, label %land.lhs.true28, !dbg !4191

land.lhs.true28:                                  ; preds = %land.lhs.true
  %bf.cast332 = and i64 %bf.load22, 67108864, !dbg !4192
  %tobool34 = icmp eq i64 %bf.cast332, 0, !dbg !4192
  br i1 %tobool34, label %if.then35, label %if.end38, !dbg !4193

if.then35:                                        ; preds = %land.lhs.true28
  call fastcc void @check_tree(%union.tree_node* nonnull %13) #7, !dbg !4194
  br label %if.end38, !dbg !4194

if.end38:                                         ; preds = %land.lhs.true28, %land.lhs.true, %if.then35, %for.body21
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4195
  %14 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !4195
  %call39 = call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %14, i8 zeroext 0, i8 zeroext 0) #7, !dbg !4196
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %step.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4197
  br label %for.cond19, !dbg !4198, !llvm.loop !4199

if.end43.loopexit:                                ; preds = %for.cond19
  br label %if.end43, !dbg !4201

if.end43:                                         ; preds = %if.end43.loopexit, %for.end12
  ret void, !dbg !4201
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !4202 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4211, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !4212, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i32 0, metadata !4213, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4214, metadata !DIExpression()), !dbg !4215
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !4216
  %1 = load i64, i64* %0, align 8, !dbg !4216
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4217
  store i64 %1, i64* %2, align 8, !dbg !4217
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !4218
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !4219
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4220
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !4223
  br label %while.body, !dbg !4223

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !4224
  br i1 %tobool, label %if.then, label %if.end, !dbg !4225

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !4226
  br label %while.end, !dbg !4228

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !4229

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !4223, !llvm.loop !4230

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !4232

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !4232
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !4234
  %7 = load i32, i32* %indx9, align 8, !dbg !4234
  %cmp11 = icmp eq i32 %7, 0, !dbg !4235
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !4236

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !4237
  %8 = load i32, i32* %indx14, align 8, !dbg !4237
  %mul = shl i32 %8, 7, !dbg !4238
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4213, metadata !DIExpression()), !dbg !4215
  br label %if.end15, !dbg !4239

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !4213, metadata !DIExpression()), !dbg !4215
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4240
  store i32 0, i32* %word_no, align 8, !dbg !4241
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !4242
  %9 = load i64, i64* %arrayidx, align 8, !dbg !4242
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4243
  store i64 %9, i64* %bits21, align 8, !dbg !4244
  %tobool23 = icmp eq i64 %9, 0, !dbg !4245
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !4245
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !4246
  call void @llvm.dbg.value(metadata i32 %add, metadata !4213, metadata !DIExpression()), !dbg !4215
  store i32 %add, i32* %bit_no, align 4, !dbg !4247
  ret void, !dbg !4248
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4249 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4253, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4254, metadata !DIExpression()), !dbg !4258
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4259
  %0 = load i64, i64* %bits, align 8, !dbg !4259
  %tobool = icmp eq i64 %0, 0, !dbg !4260
  br i1 %tobool, label %if.end, label %next_bit, !dbg !4261

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !4262
  br label %next_bit, !dbg !4265

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !4255), !dbg !4266
  br label %while.cond, !dbg !4265

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !4267
  %and = and i64 %2, 1, !dbg !4268
  %tobool2 = icmp eq i64 %and, 0, !dbg !4269
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !4265

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !4270
  store i64 %shr, i64* %bits, align 8, !dbg !4270
  %3 = load i32, i32* %bit_no, align 4, !dbg !4272
  %add = add i32 %3, 1, !dbg !4272
  store i32 %add, i32* %bit_no, align 4, !dbg !4272
  %.pre = load i64, i64* %bits, align 8, !dbg !4267
  br label %while.cond, !dbg !4265, !llvm.loop !4273

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !4275
  %sub = add i32 %4, 63, !dbg !4276
  %div = and i32 %sub, -64, !dbg !4277
  store i32 %div, i32* %bit_no, align 4, !dbg !4278
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4279
  %5 = load i32, i32* %word_no, align 8, !dbg !4280
  %inc = add i32 %5, 1, !dbg !4280
  store i32 %inc, i32* %word_no, align 8, !dbg !4280
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4281
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4281
  br label %while.body6, !dbg !4282

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !4283

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !4284
  %cmp = icmp eq i32 %8, 2, !dbg !4285
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !4281
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !4283

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !4262
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !4262
  %10 = load i64, i64* %arrayidx, align 8, !dbg !4262
  store i64 %10, i64* %bits, align 8, !dbg !4286
  %tobool14 = icmp eq i64 %10, 0, !dbg !4287
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !4289

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !4290
  %add17 = add i32 %11, 64, !dbg !4290
  store i32 %add17, i32* %bit_no, align 4, !dbg !4290
  %12 = load i32, i32* %word_no, align 8, !dbg !4291
  %inc19 = add i32 %12, 1, !dbg !4291
  store i32 %inc19, i32* %word_no, align 8, !dbg !4291
  br label %while.cond7, !dbg !4283, !llvm.loop !4292

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !4281
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !4294
  %14 = load i64, i64* %13, align 8, !dbg !4294
  store i64 %14, i64* %6, align 8, !dbg !4295
  %tobool24 = icmp eq i64 %14, 0, !dbg !4296
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !4298

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !4298
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !4299
  %16 = load i32, i32* %indx, align 8, !dbg !4299
  %mul28 = shl i32 %16, 7, !dbg !4300
  store i32 %mul28, i32* %bit_no, align 4, !dbg !4301
  store i32 0, i32* %word_no, align 8, !dbg !4302
  br label %while.body6, !dbg !4282, !llvm.loop !4303

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !4305

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !4305

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !4258
  ret i8 %retval.0, !dbg !4305
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @type_for_uid(i32 %uid) unnamed_addr #5 !dbg !4306 {
entry:
  call void @llvm.dbg.value(metadata i32 %uid, metadata !4310, metadata !DIExpression()), !dbg !4312
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_canon_type, align 8, !dbg !4313
  %conv = sext i32 %uid to i64, !dbg !4314
  %call = tail call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %0, i64 %conv) #6, !dbg !4315
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call, metadata !4311, metadata !DIExpression()), !dbg !4312
  %tobool = icmp eq %struct.splay_tree_node_s* %call, null, !dbg !4316
  br i1 %tobool, label %cleanup, label %if.then, !dbg !4318

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %call, i64 0, i32 1, !dbg !4319
  %1 = bitcast i64* %value to %union.tree_node**, !dbg !4319
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !4319
  br label %cleanup, !dbg !4320

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %2, %if.then ], [ null, %entry ], !dbg !4321
  ret %union.tree_node* %retval.0, !dbg !4322
}

; Function Attrs: nounwind uwtable
define internal fastcc void @close_type_seen(%union.tree_node* %type) unnamed_addr #5 !dbg !4323 {
entry:
  %base_binfo = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !4327, metadata !DIExpression()), !dbg !4343
  %0 = bitcast %union.tree_node** %base_binfo to i8*, !dbg !4344
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4344
  %call = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %type, i8 zeroext 1, i8 zeroext 1) #7, !dbg !4345
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4327, metadata !DIExpression()), !dbg !4343
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !4346
  br i1 %tobool, label %cleanup45, label %if.end, !dbg !4348

if.end:                                           ; preds = %entry
  %uid2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4349
  %1 = bitcast i40* %uid2 to i32*, !dbg !4349
  %2 = load i32, i32* %1, align 8, !dbg !4349
  call void @llvm.dbg.value(metadata i32 %2, metadata !4330, metadata !DIExpression()), !dbg !4343
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @been_there_done_that, align 8, !dbg !4350
  %call3 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %3, i32 %2) #6, !dbg !4352
  %tobool4 = icmp eq i32 %call3, 0, !dbg !4352
  br i1 %tobool4, label %if.end6, label %cleanup45, !dbg !4353

if.end6:                                          ; preds = %if.end
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @been_there_done_that, align 8, !dbg !4354
  %call7 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %4, i32 %2) #6, !dbg !4355
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !4356
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8, !dbg !4356
  %tobool10 = icmp eq %union.tree_node* %6, null, !dbg !4356
  br i1 %tobool10, label %if.end27, label %if.then11, !dbg !4357

if.then11:                                        ; preds = %if.end6
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !4331, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i32 0, metadata !4329, metadata !DIExpression()), !dbg !4343
  %base_binfos17 = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, !dbg !4358
  %base = bitcast %union.tree_node** %base_binfos17 to %struct.VEC_tree_base*, !dbg !4358
  %7 = bitcast %union.tree_node** %base_binfo to %struct.tree_common**, !dbg !4359
  br label %for.cond, !dbg !4360

for.cond:                                         ; preds = %for.body, %if.then11
  %i.0 = phi i32 [ 0, %if.then11 ], [ %inc, %for.body ], !dbg !4361
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4329, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata %union.tree_node** %base_binfo, metadata !4332, metadata !DIExpression(DW_OP_deref)), !dbg !4343
  %call18 = call fastcc i32 @VEC_tree_base_iterate(%struct.VEC_tree_base* nonnull %base, i32 %i.0, %union.tree_node** nonnull %base_binfo) #7, !dbg !4362
  %tobool19 = icmp eq i32 %call18, 0, !dbg !4363
  br i1 %tobool19, label %if.end27.loopexit, label %for.body, !dbg !4363

for.body:                                         ; preds = %for.cond
  %8 = load %struct.tree_common*, %struct.tree_common** %7, align 8, !dbg !4364
  %type20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %8, i64 0, i32 2, !dbg !4364
  %9 = load %union.tree_node*, %union.tree_node** %type20, align 8, !dbg !4364
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !4333, metadata !DIExpression()), !dbg !4359
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %9, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !4365
  %11 = bitcast %union.tree_node** %10 to %struct.tree_type**, !dbg !4365
  %12 = load %struct.tree_type*, %struct.tree_type** %11, align 8, !dbg !4365
  %uid23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %12, i64 0, i32 5, !dbg !4365
  %13 = load i32, i32* %uid23, align 8, !dbg !4365
  %call24 = call fastcc %struct.bitmap_head_def* @subtype_map_for_uid(i32 %13, i8 zeroext 1) #7, !dbg !4366
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call24, metadata !4338, metadata !DIExpression()), !dbg !4359
  %call25 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call24, i32 %2) #6, !dbg !4367
  %call26 = call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %9, i8 zeroext 1, i8 zeroext 1) #7, !dbg !4368
  call fastcc void @close_type_seen(%union.tree_node* %call26) #7, !dbg !4369
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4370
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4329, metadata !DIExpression()), !dbg !4343
  br label %for.cond, !dbg !4371, !llvm.loop !4372

if.end27.loopexit:                                ; preds = %for.cond
  br label %if.end27, !dbg !4374

if.end27:                                         ; preds = %if.end27.loopexit, %if.end6
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4374
  %14 = bitcast i32* %values to %union.tree_node**, !dbg !4374
  br label %for.cond29, !dbg !4375

for.cond29:                                       ; preds = %cleanup, %if.end27
  %field.0.in = phi %union.tree_node** [ %14, %if.end27 ], [ %chain, %cleanup ]
  %field.0 = load %union.tree_node*, %union.tree_node** %field.0.in, align 8, !dbg !4376
  call void @llvm.dbg.value(metadata %union.tree_node* %field.0, metadata !4328, metadata !DIExpression()), !dbg !4343
  %tobool30 = icmp eq %union.tree_node* %field.0, null, !dbg !4377
  br i1 %tobool30, label %cleanup45.loopexit, label %for.body31, !dbg !4377

for.body31:                                       ; preds = %for.cond29
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4378
  %bf.load = load i64, i64* %15, align 8, !dbg !4378
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4380
  %cmp = icmp eq i64 %bf.cast1, 31, !dbg !4380
  br i1 %cmp, label %if.end34, label %cleanup, !dbg !4381

if.end34:                                         ; preds = %for.body31
  %type36 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4382
  %16 = load %union.tree_node*, %union.tree_node** %type36, align 8, !dbg !4382
  call void @llvm.dbg.value(metadata %union.tree_node* %16, metadata !4339, metadata !DIExpression()), !dbg !4383
  %call37 = call i32 @ipa_type_escape_star_count_of_interesting_or_array_type(%union.tree_node* %16) #7, !dbg !4384
  %cmp38 = icmp sgt i32 %call37, -1, !dbg !4386
  br i1 %cmp38, label %if.then39, label %cleanup, !dbg !4387

if.then39:                                        ; preds = %if.end34
  %call40 = call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %16, i8 zeroext 1, i8 zeroext 1) #7, !dbg !4388
  call fastcc void @close_type_seen(%union.tree_node* %call40) #7, !dbg !4389
  br label %cleanup, !dbg !4389

cleanup:                                          ; preds = %for.body31, %if.end34, %if.then39
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4390
  br label %for.cond29, !dbg !4391, !llvm.loop !4392

cleanup45.loopexit:                               ; preds = %for.cond29
  br label %cleanup45, !dbg !4394

cleanup45:                                        ; preds = %cleanup45.loopexit, %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4394
  ret void, !dbg !4394
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4395 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4399, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4400, metadata !DIExpression()), !dbg !4401
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4402
  %0 = load i64, i64* %bits, align 8, !dbg !4403
  %shr = lshr i64 %0, 1, !dbg !4403
  store i64 %shr, i64* %bits, align 8, !dbg !4403
  %1 = load i32, i32* %bit_no, align 4, !dbg !4404
  %add = add i32 %1, 1, !dbg !4404
  store i32 %add, i32* %bit_no, align 4, !dbg !4404
  ret void, !dbg !4405
}

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @close_type_exposed_parameter(%union.tree_node* %type) unnamed_addr #5 !dbg !4406 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !4408, metadata !DIExpression()), !dbg !4415
  %call = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %type, i8 zeroext 0, i8 zeroext 0) #7, !dbg !4416
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4408, metadata !DIExpression()), !dbg !4415
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !4417
  br i1 %tobool, label %cleanup.cont32, label %if.end, !dbg !4419

if.end:                                           ; preds = %entry
  %uid2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4420
  %0 = bitcast i40* %uid2 to i32*, !dbg !4420
  %1 = load i32, i32* %0, align 8, !dbg !4420
  call void @llvm.dbg.value(metadata i32 %1, metadata !4410, metadata !DIExpression()), !dbg !4415
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4421
  %bf.load = load i64, i64* %2, align 8, !dbg !4421
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4421
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !4421
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4421

lor.lhs.false:                                    ; preds = %if.end
  %cmp7 = icmp eq i64 %bf.cast1, 12, !dbg !4421
  br i1 %cmp7, label %cond.true, label %cond.end, !dbg !4421

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 1797, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4421
  br label %cond.end, !dbg !4421

cond.end:                                         ; preds = %lor.lhs.false, %cond.true
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @been_there_done_that, align 8, !dbg !4422
  %call8 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %3, i32 %1) #6, !dbg !4424
  %tobool9 = icmp eq i32 %call8, 0, !dbg !4424
  br i1 %tobool9, label %if.end11, label %cleanup.cont32, !dbg !4425

if.end11:                                         ; preds = %cond.end
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @been_there_done_that, align 8, !dbg !4426
  %call12 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %4, i32 %1) #6, !dbg !4427
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4428
  %5 = bitcast i32* %values to %union.tree_node**, !dbg !4428
  br label %for.cond, !dbg !4429

for.cond:                                         ; preds = %cleanup, %if.end11
  %field.0.in = phi %union.tree_node** [ %5, %if.end11 ], [ %chain, %cleanup ]
  %field.0 = load %union.tree_node*, %union.tree_node** %field.0.in, align 8, !dbg !4430
  call void @llvm.dbg.value(metadata %union.tree_node* %field.0, metadata !4409, metadata !DIExpression()), !dbg !4415
  %tobool14 = icmp eq %union.tree_node* %field.0, null, !dbg !4431
  br i1 %tobool14, label %cleanup.cont32.loopexit, label %for.body, !dbg !4431

for.body:                                         ; preds = %for.cond
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4432
  %bf.load16 = load i64, i64* %6, align 8, !dbg !4432
  %bf.cast183 = and i64 %bf.load16, 65535, !dbg !4434
  %cmp19 = icmp eq i64 %bf.cast183, 31, !dbg !4434
  br i1 %cmp19, label %if.end21, label %cleanup, !dbg !4435

if.end21:                                         ; preds = %for.body
  %type22 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4436
  %7 = load %union.tree_node*, %union.tree_node** %type22, align 8, !dbg !4436
  %call23 = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %7, i8 zeroext 0, i8 zeroext 0) #7, !dbg !4437
  call void @llvm.dbg.value(metadata %union.tree_node* %call23, metadata !4411, metadata !DIExpression()), !dbg !4438
  tail call fastcc void @mark_interesting_type(%union.tree_node* %call23, i32 0) #7, !dbg !4439
  %call24 = tail call i32 @ipa_type_escape_star_count_of_interesting_type(%union.tree_node* %call23) #7, !dbg !4440
  %cmp25 = icmp eq i32 %call24, 0, !dbg !4442
  br i1 %cmp25, label %if.then26, label %cleanup, !dbg !4443

if.then26:                                        ; preds = %if.end21
  tail call fastcc void @close_type_exposed_parameter(%union.tree_node* %call23) #7, !dbg !4444
  br label %cleanup, !dbg !4444

cleanup:                                          ; preds = %for.body, %if.end21, %if.then26
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4445
  br label %for.cond, !dbg !4446, !llvm.loop !4447

cleanup.cont32.loopexit:                          ; preds = %for.cond
  br label %cleanup.cont32, !dbg !4449

cleanup.cont32:                                   ; preds = %cleanup.cont32.loopexit, %cond.end, %entry
  ret void, !dbg !4449
}

; Function Attrs: nounwind uwtable
define internal fastcc void @close_type_full_escape(%union.tree_node* %type) unnamed_addr #5 !dbg !4450 {
entry:
  %i = alloca i32, align 4
  %base_binfo = alloca %union.tree_node*, align 8
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !4452, metadata !DIExpression()), !dbg !4478
  %0 = bitcast i32* %i to i8*, !dbg !4479
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4479
  %1 = bitcast %union.tree_node** %base_binfo to i8*, !dbg !4480
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4480
  %2 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !4481
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #8, !dbg !4481
  %call = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %type, i8 zeroext 1, i8 zeroext 1) #7, !dbg !4482
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4452, metadata !DIExpression()), !dbg !4478
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !4483
  br i1 %tobool, label %cleanup63, label %if.end, !dbg !4485

if.end:                                           ; preds = %entry
  %uid2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4486
  %3 = bitcast i40* %uid2 to i32*, !dbg !4486
  %4 = load i32, i32* %3, align 8, !dbg !4486
  call void @llvm.dbg.value(metadata i32 %4, metadata !4455, metadata !DIExpression()), !dbg !4478
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @been_there_done_that, align 8, !dbg !4487
  %call3 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %5, i32 %4) #6, !dbg !4489
  %tobool4 = icmp eq i32 %call3, 0, !dbg !4489
  br i1 %tobool4, label %if.end6, label %cleanup63, !dbg !4490

if.end6:                                          ; preds = %if.end
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @been_there_done_that, align 8, !dbg !4491
  %call7 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %6, i32 %4) #6, !dbg !4492
  %call8 = tail call fastcc %struct.bitmap_head_def* @subtype_map_for_uid(i32 %4, i8 zeroext 0) #7, !dbg !4493
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call8, metadata !4459, metadata !DIExpression()), !dbg !4478
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !4494
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8, !dbg !4494
  %tobool11 = icmp eq %union.tree_node* %8, null, !dbg !4494
  br i1 %tobool11, label %if.end23, label %if.then12, !dbg !4495

if.then12:                                        ; preds = %if.end6
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !4456, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata i32 0, metadata !4454, metadata !DIExpression()), !dbg !4478
  %base_binfos18 = getelementptr inbounds %union.tree_node, %union.tree_node* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, !dbg !4496
  %base = bitcast %union.tree_node** %base_binfos18 to %struct.VEC_tree_base*, !dbg !4496
  %9 = bitcast %union.tree_node** %base_binfo to %struct.tree_common**, !dbg !4497
  br label %for.cond, !dbg !4498

for.cond:                                         ; preds = %for.body, %if.then12
  %storemerge = phi i32 [ 0, %if.then12 ], [ %inc, %for.body ], !dbg !4499
  store i32 %storemerge, i32* %i, align 4, !dbg !4499
  call void @llvm.dbg.value(metadata i32 %storemerge, metadata !4454, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata %union.tree_node** %base_binfo, metadata !4457, metadata !DIExpression(DW_OP_deref)), !dbg !4478
  %call19 = call fastcc i32 @VEC_tree_base_iterate(%struct.VEC_tree_base* nonnull %base, i32 %storemerge, %union.tree_node** nonnull %base_binfo) #7, !dbg !4500
  %tobool20 = icmp eq i32 %call19, 0, !dbg !4501
  br i1 %tobool20, label %if.end23.loopexit, label %for.body, !dbg !4501

for.body:                                         ; preds = %for.cond
  %10 = load %struct.tree_common*, %struct.tree_common** %9, align 8, !dbg !4502
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %10, i64 0, i32 2, !dbg !4502
  %11 = load %union.tree_node*, %union.tree_node** %type21, align 8, !dbg !4502
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !4461, metadata !DIExpression()), !dbg !4497
  %call22 = call fastcc %union.tree_node* @mark_type(%union.tree_node* %11, i32 1) #7, !dbg !4503
  call void @llvm.dbg.value(metadata %union.tree_node* %call22, metadata !4461, metadata !DIExpression()), !dbg !4497
  call fastcc void @close_type_full_escape(%union.tree_node* %call22) #7, !dbg !4504
  %12 = load i32, i32* %i, align 4, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %12, metadata !4454, metadata !DIExpression()), !dbg !4478
  %inc = add i32 %12, 1, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4454, metadata !DIExpression()), !dbg !4478
  br label %for.cond, !dbg !4506, !llvm.loop !4507

if.end23.loopexit:                                ; preds = %for.cond
  br label %if.end23, !dbg !4509

if.end23:                                         ; preds = %if.end23.loopexit, %if.end6
  %tobool24 = icmp eq %struct.bitmap_head_def* %call8, null, !dbg !4509
  br i1 %tobool24, label %if.end34, label %if.then25, !dbg !4510

if.then25:                                        ; preds = %if.end23
  call void @llvm.dbg.value(metadata i32* %i, metadata !4454, metadata !DIExpression(DW_OP_deref)), !dbg !4478
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4458, metadata !DIExpression(DW_OP_deref)), !dbg !4478
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %call8, i32 0, i32* nonnull %i) #7, !dbg !4511
  br label %for.cond26, !dbg !4511

for.cond26:                                       ; preds = %for.body29, %if.then25
  call void @llvm.dbg.value(metadata i32* %i, metadata !4454, metadata !DIExpression(DW_OP_deref)), !dbg !4478
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4458, metadata !DIExpression(DW_OP_deref)), !dbg !4478
  %call27 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !4512
  %tobool28 = icmp eq i8 %call27, 0, !dbg !4511
  br i1 %tobool28, label %if.end34.loopexit, label %for.body29, !dbg !4511

for.body29:                                       ; preds = %for.cond26
  %13 = load i32, i32* %i, align 4, !dbg !4513
  call void @llvm.dbg.value(metadata i32 %13, metadata !4454, metadata !DIExpression()), !dbg !4478
  %call30 = call fastcc %union.tree_node* @type_for_uid(i32 %13) #7, !dbg !4514
  call void @llvm.dbg.value(metadata %union.tree_node* %call30, metadata !4466, metadata !DIExpression()), !dbg !4515
  %call31 = call fastcc %union.tree_node* @mark_type(%union.tree_node* %call30, i32 1) #7, !dbg !4516
  call void @llvm.dbg.value(metadata %union.tree_node* %call31, metadata !4466, metadata !DIExpression()), !dbg !4515
  call fastcc void @close_type_full_escape(%union.tree_node* %call31) #7, !dbg !4517
  call void @llvm.dbg.value(metadata i32* %i, metadata !4454, metadata !DIExpression(DW_OP_deref)), !dbg !4478
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4458, metadata !DIExpression(DW_OP_deref)), !dbg !4478
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !4512
  br label %for.cond26, !dbg !4512, !llvm.loop !4518

if.end34.loopexit:                                ; preds = %for.cond26
  br label %if.end34, !dbg !4520

if.end34:                                         ; preds = %if.end34.loopexit, %if.end23
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4520
  %14 = bitcast i32* %values to %union.tree_node**, !dbg !4520
  br label %for.cond36, !dbg !4521

for.cond36:                                       ; preds = %cleanup, %if.end34
  %field.0.in = phi %union.tree_node** [ %14, %if.end34 ], [ %chain, %cleanup ]
  %field.0 = load %union.tree_node*, %union.tree_node** %field.0.in, align 8, !dbg !4522
  call void @llvm.dbg.value(metadata %union.tree_node* %field.0, metadata !4453, metadata !DIExpression()), !dbg !4478
  %tobool37 = icmp eq %union.tree_node* %field.0, null, !dbg !4523
  br i1 %tobool37, label %for.end51, label %for.body38, !dbg !4523

for.body38:                                       ; preds = %for.cond36
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4524
  %bf.load = load i64, i64* %15, align 8, !dbg !4524
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4526
  %cmp = icmp eq i64 %bf.cast1, 31, !dbg !4526
  br i1 %cmp, label %if.end41, label %cleanup, !dbg !4527

if.end41:                                         ; preds = %for.body38
  %type43 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4528
  %16 = load %union.tree_node*, %union.tree_node** %type43, align 8, !dbg !4528
  call void @llvm.dbg.value(metadata %union.tree_node* %16, metadata !4471, metadata !DIExpression()), !dbg !4529
  %call44 = call i32 @ipa_type_escape_star_count_of_interesting_or_array_type(%union.tree_node* %16) #7, !dbg !4530
  %cmp45 = icmp sgt i32 %call44, -1, !dbg !4532
  br i1 %cmp45, label %if.then46, label %cleanup, !dbg !4533

if.then46:                                        ; preds = %if.end41
  %call47 = call fastcc %union.tree_node* @mark_type(%union.tree_node* %16, i32 1) #7, !dbg !4534
  call void @llvm.dbg.value(metadata %union.tree_node* %call47, metadata !4471, metadata !DIExpression()), !dbg !4529
  call fastcc void @close_type_full_escape(%union.tree_node* %call47) #7, !dbg !4536
  br label %cleanup, !dbg !4537

cleanup:                                          ; preds = %for.body38, %if.end41, %if.then46
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4538
  br label %for.cond36, !dbg !4539, !llvm.loop !4540

for.end51:                                        ; preds = %for.cond36
  %17 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_addressof_up_map, align 8, !dbg !4542
  %conv = sext i32 %4 to i64, !dbg !4543
  %call52 = call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %17, i64 %conv) #6, !dbg !4544
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call52, metadata !4460, metadata !DIExpression()), !dbg !4478
  %tobool53 = icmp eq %struct.splay_tree_node_s* %call52, null, !dbg !4545
  br i1 %tobool53, label %cleanup63, label %if.then54, !dbg !4546

if.then54:                                        ; preds = %for.end51
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %call52, i64 0, i32 1, !dbg !4547
  %18 = bitcast i64* %value to %struct.bitmap_head_def**, !dbg !4547
  %19 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %18, align 8, !dbg !4547
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %19, metadata !4475, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32* %i, metadata !4454, metadata !DIExpression(DW_OP_deref)), !dbg !4478
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4458, metadata !DIExpression(DW_OP_deref)), !dbg !4478
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %19, i32 0, i32* nonnull %i) #7, !dbg !4549
  br label %for.cond55, !dbg !4549

for.cond55:                                       ; preds = %for.body58, %if.then54
  call void @llvm.dbg.value(metadata i32* %i, metadata !4454, metadata !DIExpression(DW_OP_deref)), !dbg !4478
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4458, metadata !DIExpression(DW_OP_deref)), !dbg !4478
  %call56 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !4551
  %tobool57 = icmp eq i8 %call56, 0, !dbg !4549
  br i1 %tobool57, label %cleanup63.loopexit, label %for.body58, !dbg !4549

for.body58:                                       ; preds = %for.cond55
  %20 = load i32, i32* %i, align 4, !dbg !4553
  call void @llvm.dbg.value(metadata i32 %20, metadata !4454, metadata !DIExpression()), !dbg !4478
  %call59 = call fastcc %union.tree_node* @type_for_uid(i32 %20) #7, !dbg !4555
  call fastcc void @close_type_full_escape(%union.tree_node* %call59) #7, !dbg !4556
  call void @llvm.dbg.value(metadata i32* %i, metadata !4454, metadata !DIExpression(DW_OP_deref)), !dbg !4478
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4458, metadata !DIExpression(DW_OP_deref)), !dbg !4478
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !4551
  br label %for.cond55, !dbg !4551, !llvm.loop !4557

cleanup63.loopexit:                               ; preds = %for.cond55
  br label %cleanup63, !dbg !4559

cleanup63:                                        ; preds = %cleanup63.loopexit, %for.end51, %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #8, !dbg !4559
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4559
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4559
  ret void, !dbg !4559
}

declare dso_local %struct.splay_tree_node_s* @splay_tree_min(%struct.splay_tree_s*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.bitmap_head_def* @close_addressof_down(i32 %uid) unnamed_addr #5 !dbg !4560 {
entry:
  %bi = alloca %struct.bitmap_iterator, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %uid, metadata !4564, metadata !DIExpression()), !dbg !4574
  %0 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !4575
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !4575
  %1 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_addressof_down_map, align 8, !dbg !4576
  %conv = sext i32 %uid to i64, !dbg !4577
  %call = tail call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %1, i64 %conv) #6, !dbg !4578
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call, metadata !4566, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !4567, metadata !DIExpression()), !dbg !4574
  %2 = bitcast i32* %i to i8*, !dbg !4579
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8, !dbg !4579
  %tobool = icmp eq %struct.splay_tree_node_s* %call, null, !dbg !4580
  br i1 %tobool, label %cleanup, label %if.then, !dbg !4582

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %call, i64 0, i32 1, !dbg !4583
  %3 = bitcast i64* %value to %struct.bitmap_head_def**, !dbg !4583
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %3, align 8, !dbg !4583
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %4, metadata !4567, metadata !DIExpression()), !dbg !4574
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @been_there_done_that, align 8, !dbg !4584
  %call1 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %5, i32 %uid) #6, !dbg !4586
  %tobool2 = icmp eq i32 %call1, 0, !dbg !4586
  br i1 %tobool2, label %if.end4, label %cleanup, !dbg !4587

if.end4:                                          ; preds = %if.then
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @been_there_done_that, align 8, !dbg !4588
  %call5 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %6, i32 %uid) #6, !dbg !4589
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @global_types_full_escape, align 8, !dbg !4590
  %call6 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %7, i32 %uid) #6, !dbg !4592
  %tobool7 = icmp eq i32 %call6, 0, !dbg !4592
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !4593

if.then8:                                         ; preds = %if.end4
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %4) #6, !dbg !4594
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !4567, metadata !DIExpression()), !dbg !4574
  %8 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_addressof_down_map, align 8, !dbg !4596
  tail call void @splay_tree_remove(%struct.splay_tree_s* %8, i64 %conv) #6, !dbg !4597
  br label %cleanup, !dbg !4598

if.end10:                                         ; preds = %if.end4
  %call11 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @ipa_obstack) #6, !dbg !4599
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call11, metadata !4568, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4565, metadata !DIExpression(DW_OP_deref)), !dbg !4574
  call void @llvm.dbg.value(metadata i32* %i, metadata !4569, metadata !DIExpression(DW_OP_deref)), !dbg !4574
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %4, i32 0, i32* nonnull %i) #7, !dbg !4600
  br label %for.cond, !dbg !4600

for.cond:                                         ; preds = %for.inc, %if.end10
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4565, metadata !DIExpression(DW_OP_deref)), !dbg !4574
  call void @llvm.dbg.value(metadata i32* %i, metadata !4569, metadata !DIExpression(DW_OP_deref)), !dbg !4574
  %call12 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !4601
  %tobool13 = icmp eq i8 %call12, 0, !dbg !4600
  br i1 %tobool13, label %for.end, label %for.body, !dbg !4600

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !4602
  call void @llvm.dbg.value(metadata i32 %9, metadata !4569, metadata !DIExpression()), !dbg !4574
  %call14 = call fastcc %struct.bitmap_head_def* @close_addressof_down(i32 %9) #7, !dbg !4603
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call14, metadata !4570, metadata !DIExpression()), !dbg !4604
  %10 = load i32, i32* %i, align 4, !dbg !4605
  call void @llvm.dbg.value(metadata i32 %10, metadata !4569, metadata !DIExpression()), !dbg !4574
  %call15 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call11, i32 %10) #6, !dbg !4606
  %tobool16 = icmp eq %struct.bitmap_head_def* %call14, null, !dbg !4607
  br i1 %tobool16, label %for.inc, label %if.then17, !dbg !4609

if.then17:                                        ; preds = %for.body
  %call18 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %call11, %struct.bitmap_head_def* nonnull %call14) #6, !dbg !4610
  br label %for.inc, !dbg !4610

for.inc:                                          ; preds = %for.body, %if.then17
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4565, metadata !DIExpression(DW_OP_deref)), !dbg !4574
  call void @llvm.dbg.value(metadata i32* %i, metadata !4569, metadata !DIExpression(DW_OP_deref)), !dbg !4574
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !4601
  br label %for.cond, !dbg !4601, !llvm.loop !4611

for.end:                                          ; preds = %for.cond
  %11 = ptrtoint %struct.bitmap_head_def* %call11 to i64, !dbg !4613
  store i64 %11, i64* %value, align 8, !dbg !4614
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %4) #6, !dbg !4615
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !4567, metadata !DIExpression()), !dbg !4574
  br label %cleanup, !dbg !4616

cleanup:                                          ; preds = %if.then, %entry, %for.end, %if.then8
  %retval.0 = phi %struct.bitmap_head_def* [ null, %if.then8 ], [ %call11, %for.end ], [ null, %entry ], [ %4, %if.then ], !dbg !4574
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8, !dbg !4617
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !4617
  ret %struct.bitmap_head_def* %retval.0, !dbg !4617
}

declare dso_local %struct.splay_tree_node_s* @splay_tree_successor(%struct.splay_tree_s*, i64) local_unnamed_addr #2

declare dso_local void @splay_tree_remove(%struct.splay_tree_s*, i64) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @splay_tree_delete(%struct.splay_tree_s*) local_unnamed_addr #2

declare dso_local void @bitmap_obstack_initialize(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)*, void (i64)*, void (i64)*) local_unnamed_addr #2

declare dso_local i32 @splay_tree_compare_ints(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @compare_type_brand(i64 %sk1, i64 %sk2) #5 !dbg !4618 {
entry:
  call void @llvm.dbg.value(metadata i64 %sk1, metadata !4620, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i64 %sk2, metadata !4621, metadata !DIExpression()), !dbg !4625
  %0 = inttoptr i64 %sk1 to %struct.type_brand_s*, !dbg !4626
  call void @llvm.dbg.value(metadata %struct.type_brand_s* %0, metadata !4622, metadata !DIExpression()), !dbg !4625
  %1 = inttoptr i64 %sk2 to %struct.type_brand_s*, !dbg !4627
  call void @llvm.dbg.value(metadata %struct.type_brand_s* %1, metadata !4623, metadata !DIExpression()), !dbg !4625
  %name = getelementptr inbounds %struct.type_brand_s, %struct.type_brand_s* %0, i64 0, i32 0, !dbg !4628
  %2 = load i8*, i8** %name, align 8, !dbg !4628
  %name1 = getelementptr inbounds %struct.type_brand_s, %struct.type_brand_s* %1, i64 0, i32 0, !dbg !4629
  %3 = load i8*, i8** %name1, align 8, !dbg !4629
  %call = tail call i32 @strcmp(i8* %2, i8* %3) #6, !dbg !4630
  call void @llvm.dbg.value(metadata i32 %call, metadata !4624, metadata !DIExpression()), !dbg !4625
  %cmp = icmp eq i32 %call, 0, !dbg !4631
  br i1 %cmp, label %if.then, label %cleanup, !dbg !4633

if.then:                                          ; preds = %entry
  %seq = getelementptr inbounds %struct.type_brand_s, %struct.type_brand_s* %1, i64 0, i32 1, !dbg !4634
  %4 = load i32, i32* %seq, align 8, !dbg !4634
  %seq2 = getelementptr inbounds %struct.type_brand_s, %struct.type_brand_s* %0, i64 0, i32 1, !dbg !4635
  %5 = load i32, i32* %seq2, align 8, !dbg !4635
  %sub = sub nsw i32 %4, %5, !dbg !4636
  br label %cleanup, !dbg !4637

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %call, %entry ], !dbg !4638
  ret i32 %retval.0, !dbg !4639
}

declare dso_local i32 @splay_tree_compare_pointers(i64, i64) #2

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_interesting_type(%union.tree_node* %type, i32 %escape_status) unnamed_addr #5 !dbg !4640 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !4644, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i32 %escape_status, metadata !4645, metadata !DIExpression()), !dbg !4646
  %tobool = icmp eq %union.tree_node* %type, null, !dbg !4647
  br i1 %tobool, label %if.end13, label %if.end, !dbg !4649

if.end:                                           ; preds = %entry
  %call = tail call i32 @ipa_type_escape_star_count_of_interesting_type(%union.tree_node* nonnull %type) #7, !dbg !4650
  %cmp = icmp sgt i32 %call, -1, !dbg !4652
  br i1 %cmp, label %if.then1, label %if.end13, !dbg !4653

if.then1:                                         ; preds = %if.end
  %cmp2 = icmp eq i32 %escape_status, 0, !dbg !4654
  br i1 %cmp2, label %land.lhs.true, label %if.else, !dbg !4657

land.lhs.true:                                    ; preds = %if.then1
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4658
  %bf.load = load i64, i64* %0, align 8, !dbg !4658
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4658
  %cmp3 = icmp eq i64 %bf.cast1, 10, !dbg !4658
  br i1 %cmp3, label %if.then9, label %lor.lhs.false, !dbg !4658

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp8 = icmp eq i64 %bf.cast1, 12, !dbg !4658
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !4659

if.then9:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %call10 = tail call fastcc %union.tree_node* @mark_type(%union.tree_node* nonnull %type, i32 1) #7, !dbg !4660
  br label %if.end13, !dbg !4660

if.else:                                          ; preds = %lor.lhs.false, %if.then1
  %call11 = tail call fastcc %union.tree_node* @mark_type(%union.tree_node* nonnull %type, i32 %escape_status) #7, !dbg !4661
  br label %if.end13

if.end13:                                         ; preds = %entry, %if.then9, %if.else, %if.end
  ret void, !dbg !4662
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_tree(%union.tree_node* %t) unnamed_addr #5 !dbg !4663 {
entry:
  br label %tailrecurse, !dbg !4666

tailrecurse:                                      ; preds = %if.then84, %entry
  %t.tr = phi %union.tree_node* [ %t, %entry ], [ %8, %if.then84 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr, metadata !4665, metadata !DIExpression()), !dbg !4670
  br label %while.cond, !dbg !4671

while.cond:                                       ; preds = %if.end, %tailrecurse
  %t.addr.0 = phi %union.tree_node* [ %t.tr, %tailrecurse ], [ %3, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0, metadata !4665, metadata !DIExpression()), !dbg !4670
  %call = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %t.addr.0) #7, !dbg !4672
  %tobool = icmp eq i8 %call, 0, !dbg !4671
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4670
  %bf.load = load i64, i64* %0, align 8, !dbg !4670
  %1 = trunc i64 %bf.load to i32, !dbg !4670
  %bf.cast = and i32 %1, 65535, !dbg !4670
  br i1 %tobool, label %while.end, label %while.body, !dbg !4671

while.body:                                       ; preds = %while.cond
  %cmp = icmp eq i32 %bf.cast, 45, !dbg !4673
  br i1 %cmp, label %if.then, label %if.end, !dbg !4676

if.then:                                          ; preds = %while.body
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4677
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !4677
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4677
  tail call fastcc void @check_operand(%union.tree_node* %2) #7, !dbg !4678
  br label %if.end, !dbg !4678

if.end:                                           ; preds = %if.then, %while.body
  %operands2 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4679
  %3 = load %union.tree_node*, %union.tree_node** %operands2, align 8, !dbg !4679
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !4665, metadata !DIExpression()), !dbg !4670
  br label %while.cond, !dbg !4671, !llvm.loop !4680

while.end:                                        ; preds = %while.cond
  %t.addr.0.lcssa = phi %union.tree_node* [ %t.addr.0, %while.cond ]
  %.lcssa = phi i64* [ %0, %while.cond ], !dbg !4670
  %bf.load.lcssa = phi i64 [ %bf.load, %while.cond ], !dbg !4670
  %bf.cast.lcssa = phi i32 [ %bf.cast, %while.cond ], !dbg !4670
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !4665, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !4665, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !4665, metadata !DIExpression()), !dbg !4670
  %cmp8 = icmp eq i32 %bf.cast.lcssa, 47, !dbg !4682
  br i1 %cmp8, label %if.then20, label %lor.lhs.false, !dbg !4682

lor.lhs.false:                                    ; preds = %while.end
  %bf.cast121 = and i64 %bf.load.lcssa, 65535, !dbg !4682
  %cmp13 = icmp eq i64 %bf.cast121, 48, !dbg !4682
  br i1 %cmp13, label %if.then20, label %lor.lhs.false14, !dbg !4682

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %cmp19 = icmp eq i64 %bf.cast121, 49, !dbg !4682
  br i1 %cmp19, label %if.then20, label %if.end24, !dbg !4684

if.then20:                                        ; preds = %lor.lhs.false14, %lor.lhs.false, %while.end
  %operands22 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4685
  %4 = load %union.tree_node*, %union.tree_node** %operands22, align 8, !dbg !4685
  tail call fastcc void @check_tree(%union.tree_node* %4) #7, !dbg !4686
  %bf.load26.pre = load i64, i64* %.lcssa, align 8, !dbg !4687
  br label %if.end24, !dbg !4686

if.end24:                                         ; preds = %if.then20, %lor.lhs.false14
  %bf.load71 = phi i64 [ %bf.load26.pre, %if.then20 ], [ %bf.load.lcssa, %lor.lhs.false14 ], !dbg !4687
  %bf.cast283 = and i64 %bf.load71, 65535, !dbg !4687
  %cmp29 = icmp eq i64 %bf.cast283, 32, !dbg !4687
  br i1 %cmp29, label %if.then75, label %lor.lhs.false30, !dbg !4687

lor.lhs.false30:                                  ; preds = %if.end24
  %cmp35 = icmp eq i64 %bf.cast283, 34, !dbg !4687
  br i1 %cmp35, label %if.then75, label %lor.lhs.false36, !dbg !4687

lor.lhs.false36:                                  ; preds = %lor.lhs.false30
  %cmp41 = icmp eq i64 %bf.cast283, 36, !dbg !4687
  br i1 %cmp41, label %if.then75, label %lor.lhs.false42, !dbg !4687

lor.lhs.false42:                                  ; preds = %lor.lhs.false36
  %cmp47 = icmp eq i64 %bf.cast283, 141, !dbg !4687
  br i1 %cmp47, label %land.lhs.true, label %lor.lhs.false69, !dbg !4687

land.lhs.true:                                    ; preds = %lor.lhs.false42
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4687
  %5 = bitcast i32* %var to i64**, !dbg !4687
  %6 = load i64*, i64** %5, align 8, !dbg !4687
  %bf.load49 = load i64, i64* %6, align 8, !dbg !4687
  %bf.cast518 = and i64 %bf.load49, 65535, !dbg !4687
  %cmp52 = icmp eq i64 %bf.cast518, 32, !dbg !4687
  br i1 %cmp52, label %if.then75, label %lor.lhs.false53, !dbg !4687

lor.lhs.false53:                                  ; preds = %land.lhs.true
  %cmp60 = icmp eq i64 %bf.cast518, 34, !dbg !4687
  br i1 %cmp60, label %if.then75, label %lor.lhs.false61, !dbg !4687

lor.lhs.false61:                                  ; preds = %lor.lhs.false53
  %cmp68 = icmp eq i64 %bf.cast518, 36, !dbg !4687
  br i1 %cmp68, label %if.then75, label %lor.lhs.false69, !dbg !4688

lor.lhs.false69:                                  ; preds = %lor.lhs.false61, %lor.lhs.false42
  %cmp74 = icmp eq i64 %bf.cast283, 29, !dbg !4689
  br i1 %cmp74, label %if.then75, label %if.end88, !dbg !4690

if.then75:                                        ; preds = %lor.lhs.false69, %lor.lhs.false61, %lor.lhs.false53, %land.lhs.true, %lor.lhs.false36, %lor.lhs.false30, %if.end24
  tail call fastcc void @check_operand(%union.tree_node* %t.addr.0.lcssa) #7, !dbg !4691
  %bf.load77 = load i64, i64* %.lcssa, align 8, !dbg !4692
  %bf.cast79 = and i64 %bf.load77, 65535, !dbg !4692
  %arrayidx80 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast79, !dbg !4692
  %7 = load i32, i32* %arrayidx80, align 4, !dbg !4692
  %cmp81 = icmp eq i32 %7, 3, !dbg !4692
  br i1 %cmp81, label %land.lhs.true82, label %if.end88, !dbg !4693

land.lhs.true82:                                  ; preds = %if.then75
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !4694
  %8 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !4694
  %tobool83 = icmp eq %union.tree_node* %8, null, !dbg !4694
  br i1 %tobool83, label %if.end88, label %if.then84, !dbg !4695

if.then84:                                        ; preds = %land.lhs.true82
  br label %tailrecurse, !dbg !4666

if.end88:                                         ; preds = %land.lhs.true82, %if.then75, %lor.lhs.false69
  ret void, !dbg !4696
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_operand(%union.tree_node* %t) unnamed_addr #5 !dbg !4697 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4699, metadata !DIExpression()), !dbg !4700
  %tobool = icmp eq %union.tree_node* %t, null, !dbg !4701
  br i1 %tobool, label %if.end9, label %if.end, !dbg !4703

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4704
  %bf.load = load i64, i64* %0, align 8, !dbg !4704
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4706
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !4706
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4707

if.then1:                                         ; preds = %if.end
  tail call fastcc void @check_function_parameter_and_return_types(%union.tree_node* nonnull %t, i8 zeroext 1) #7, !dbg !4708
  br label %if.end9, !dbg !4708

if.else:                                          ; preds = %if.end
  %cmp6 = icmp eq i64 %bf.cast1, 32, !dbg !4709
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !4711

if.then7:                                         ; preds = %if.else
  tail call fastcc void @has_proper_scope_for_analysis(%union.tree_node* nonnull %t) #7, !dbg !4712
  br label %if.end9, !dbg !4712

if.end9:                                          ; preds = %entry, %if.else, %if.then7, %if.then1
  ret void, !dbg !4713
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_function_parameter_and_return_types(%union.tree_node* %fn, i8 zeroext %escapes) unnamed_addr #5 !dbg !4714 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %fn, metadata !4718, metadata !DIExpression()), !dbg !4735
  call void @llvm.dbg.value(metadata i8 %escapes, metadata !4719, metadata !DIExpression()), !dbg !4735
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %fn, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4736
  %0 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !4736
  %1 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !4736
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1, i64 0, i32 1, !dbg !4736
  %2 = load %union.tree_node*, %union.tree_node** %values, align 8, !dbg !4736
  %tobool = icmp eq %union.tree_node* %2, null, !dbg !4736
  br i1 %tobool, label %if.else, label %if.then, !dbg !4737

if.then:                                          ; preds = %entry
  %tobool10 = icmp eq i8 %escapes, 0, !dbg !4738
  br i1 %tobool10, label %if.then.split.us, label %if.then.if.then.split_crit_edge, !dbg !4740

if.then.if.then.split_crit_edge:                  ; preds = %if.then
  br label %for.cond, !dbg !4740

if.then.split.us:                                 ; preds = %if.then
  br label %for.cond.us, !dbg !4740

for.cond.us:                                      ; preds = %for.body.us, %if.then.split.us
  %arg.0.us = phi %union.tree_node* [ %2, %if.then.split.us ], [ %arg.0.us.pre, %for.body.us ], !dbg !4741
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0.us, metadata !4720, metadata !DIExpression()), !dbg !4735
  %tobool6.us = icmp eq %union.tree_node* %arg.0.us, null, !dbg !4742
  br i1 %tobool6.us, label %if.end27.loopexit1.us-lcssa.us, label %land.rhs.us, !dbg !4743

land.rhs.us:                                      ; preds = %for.cond.us
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4744
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !4744
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !4745
  %cmp.us = icmp eq %union.tree_node* %4, %5, !dbg !4746
  br i1 %cmp.us, label %if.end27.loopexit1.us-lcssa.us, label %for.body.us, !dbg !4747

for.body.us:                                      ; preds = %land.rhs.us
  %call.us = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %4, i8 zeroext 0, i8 zeroext 0) #7, !dbg !4748
  call void @llvm.dbg.value(metadata %union.tree_node* %call.us, metadata !4721, metadata !DIExpression()), !dbg !4749
  %chain.us = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4750
  %arg.0.us.pre = load %union.tree_node*, %union.tree_node** %chain.us, align 8, !dbg !4741
  br label %for.cond.us, !dbg !4751, !llvm.loop !4752

if.end27.loopexit1.us-lcssa.us:                   ; preds = %land.rhs.us, %for.cond.us
  br label %if.end27.loopexit1, !dbg !4754

for.cond:                                         ; preds = %for.body, %if.then.if.then.split_crit_edge
  %arg.0 = phi %union.tree_node* [ %2, %if.then.if.then.split_crit_edge ], [ %arg.0.pre, %for.body ], !dbg !4741
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0, metadata !4720, metadata !DIExpression()), !dbg !4735
  %tobool6 = icmp eq %union.tree_node* %arg.0, null, !dbg !4742
  br i1 %tobool6, label %if.end27.loopexit1.us-lcssa, label %land.rhs, !dbg !4743

land.rhs:                                         ; preds = %for.cond
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4744
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8, !dbg !4744
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !4745
  %cmp = icmp eq %union.tree_node* %7, %8, !dbg !4746
  br i1 %cmp, label %if.end27.loopexit1.us-lcssa, label %for.body, !dbg !4747

for.body:                                         ; preds = %land.rhs
  %call = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %7, i8 zeroext 0, i8 zeroext 0) #7, !dbg !4748
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4721, metadata !DIExpression()), !dbg !4749
  tail call fastcc void @mark_interesting_type(%union.tree_node* %call, i32 0) #7, !dbg !4755
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4750
  %arg.0.pre = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !4741
  br label %for.cond, !dbg !4751, !llvm.loop !4752

if.else:                                          ; preds = %entry
  %arguments = getelementptr inbounds %union.tree_node, %union.tree_node* %fn, i64 0, i32 0, i32 0, i32 2, !dbg !4756
  %tobool20 = icmp eq i8 %escapes, 0, !dbg !4757
  br i1 %tobool20, label %if.else.split.us, label %if.else.if.else.split_crit_edge, !dbg !4759

if.else.if.else.split_crit_edge:                  ; preds = %if.else
  br label %for.cond13, !dbg !4759

if.else.split.us:                                 ; preds = %if.else
  br label %for.cond13.us, !dbg !4759

for.cond13.us:                                    ; preds = %for.body15.us, %if.else.split.us
  %arg.1.in.us = phi %union.tree_node** [ %arguments, %if.else.split.us ], [ %chain25.us, %for.body15.us ]
  %arg.1.us = load %union.tree_node*, %union.tree_node** %arg.1.in.us, align 8, !dbg !4760
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.1.us, metadata !4720, metadata !DIExpression()), !dbg !4735
  %tobool14.us = icmp eq %union.tree_node* %arg.1.us, null, !dbg !4761
  br i1 %tobool14.us, label %if.end27.loopexit.us-lcssa.us, label %for.body15.us, !dbg !4761

for.body15.us:                                    ; preds = %for.cond13.us
  %type18.us = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.1.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4762
  %9 = load %union.tree_node*, %union.tree_node** %type18.us, align 8, !dbg !4762
  %call19.us = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %9, i8 zeroext 0, i8 zeroext 0) #7, !dbg !4763
  call void @llvm.dbg.value(metadata %union.tree_node* %call19.us, metadata !4727, metadata !DIExpression()), !dbg !4764
  %chain25.us = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.1.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4765
  br label %for.cond13.us, !dbg !4766, !llvm.loop !4767

if.end27.loopexit.us-lcssa.us:                    ; preds = %for.cond13.us
  br label %if.end27.loopexit, !dbg !4754

for.cond13:                                       ; preds = %for.body15, %if.else.if.else.split_crit_edge
  %arg.1.in = phi %union.tree_node** [ %arguments, %if.else.if.else.split_crit_edge ], [ %chain25, %for.body15 ]
  %arg.1 = load %union.tree_node*, %union.tree_node** %arg.1.in, align 8, !dbg !4760
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.1, metadata !4720, metadata !DIExpression()), !dbg !4735
  %tobool14 = icmp eq %union.tree_node* %arg.1, null, !dbg !4761
  br i1 %tobool14, label %if.end27.loopexit.us-lcssa, label %for.body15, !dbg !4761

for.body15:                                       ; preds = %for.cond13
  %type18 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4762
  %10 = load %union.tree_node*, %union.tree_node** %type18, align 8, !dbg !4762
  %call19 = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %10, i8 zeroext 0, i8 zeroext 0) #7, !dbg !4763
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !4727, metadata !DIExpression()), !dbg !4764
  tail call fastcc void @mark_interesting_type(%union.tree_node* %call19, i32 0) #7, !dbg !4769
  %chain25 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4765
  br label %for.cond13, !dbg !4766, !llvm.loop !4767

if.end27.loopexit.us-lcssa:                       ; preds = %for.cond13
  br label %if.end27.loopexit, !dbg !4754

if.end27.loopexit:                                ; preds = %if.end27.loopexit.us-lcssa.us, %if.end27.loopexit.us-lcssa
  br label %if.end27, !dbg !4754

if.end27.loopexit1.us-lcssa:                      ; preds = %land.rhs, %for.cond
  br label %if.end27.loopexit1, !dbg !4754

if.end27.loopexit1:                               ; preds = %if.end27.loopexit1.us-lcssa.us, %if.end27.loopexit1.us-lcssa
  br label %if.end27, !dbg !4754

if.end27:                                         ; preds = %if.end27.loopexit1, %if.end27.loopexit
  %tobool28 = icmp eq i8 %escapes, 0, !dbg !4754
  br i1 %tobool28, label %if.end36, label %if.then29, !dbg !4770

if.then29:                                        ; preds = %if.end27
  %11 = bitcast %union.tree_node** %type to %struct.tree_common**, !dbg !4771
  %12 = load %struct.tree_common*, %struct.tree_common** %11, align 8, !dbg !4771
  %type34 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %12, i64 0, i32 2, !dbg !4771
  %13 = load %union.tree_node*, %union.tree_node** %type34, align 8, !dbg !4771
  %call35 = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %13, i8 zeroext 0, i8 zeroext 0) #7, !dbg !4772
  call void @llvm.dbg.value(metadata %union.tree_node* %call35, metadata !4732, metadata !DIExpression()), !dbg !4773
  tail call fastcc void @mark_interesting_type(%union.tree_node* %call35, i32 0) #7, !dbg !4774
  br label %if.end36, !dbg !4775

if.end36:                                         ; preds = %if.end27, %if.then29
  ret void, !dbg !4776
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @has_proper_scope_for_analysis(%union.tree_node* %t) unnamed_addr #0 !dbg !4777 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4779, metadata !DIExpression()), !dbg !4781
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4782
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !4782
  %call = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %0, i8 zeroext 0, i8 zeroext 0) #7, !dbg !4783
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4780, metadata !DIExpression()), !dbg !4781
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !4784
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !4786

if.end:                                           ; preds = %entry
  %preserve_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4787
  %1 = bitcast i40* %preserve_flag to i64*, !dbg !4787
  %bf.load = load i64, i64* %1, align 8, !dbg !4787
  %bf.cast1 = and i64 %bf.load, 8192, !dbg !4787
  %tobool2 = icmp eq i64 %bf.cast1, 0, !dbg !4787
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4789

if.then3:                                         ; preds = %if.end
  tail call fastcc void @mark_interesting_type(%union.tree_node* nonnull %call, i32 1) #7, !dbg !4790
  br label %cleanup.cont, !dbg !4792

if.end4:                                          ; preds = %if.end
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4793
  %bf.load5 = load i64, i64* %2, align 8, !dbg !4793
  %bf.cast82 = and i64 %bf.load5, 524288, !dbg !4793
  %tobool9 = icmp eq i64 %bf.cast82, 0, !dbg !4793
  br i1 %tobool9, label %if.end11, label %cleanup.cont, !dbg !4795

if.end11:                                         ; preds = %if.end4
  %bf.cast163 = and i64 %bf.load5, 67108864, !dbg !4796
  %tobool17 = icmp eq i64 %bf.cast163, 0, !dbg !4796
  br i1 %tobool17, label %land.lhs.true, label %if.end11.if.end25_crit_edge, !dbg !4798

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  %.pre = and i64 %bf.load, 33554432, !dbg !4799
  br label %if.end25, !dbg !4798

land.lhs.true:                                    ; preds = %if.end11
  %bf.cast224 = and i64 %bf.load, 33554432, !dbg !4801
  %tobool23 = icmp eq i64 %bf.cast224, 0, !dbg !4801
  br i1 %tobool23, label %cleanup.cont, label %if.end25, !dbg !4802

if.end25:                                         ; preds = %if.end11.if.end25_crit_edge, %land.lhs.true
  %bf.cast315.pre-phi = phi i64 [ %.pre, %if.end11.if.end25_crit_edge ], [ %bf.cast224, %land.lhs.true ], !dbg !4799
  %tobool32 = icmp eq i64 %bf.cast315.pre-phi, 0, !dbg !4799
  br i1 %tobool32, label %lor.lhs.false, label %if.then39, !dbg !4803

lor.lhs.false:                                    ; preds = %if.end25
  %bf.cast376 = and i64 %bf.load5, 134217728, !dbg !4804
  %tobool38 = icmp eq i64 %bf.cast376, 0, !dbg !4804
  br i1 %tobool38, label %cleanup.cont, label %if.then39, !dbg !4805

if.then39:                                        ; preds = %lor.lhs.false, %if.end25
  %bf.cast447 = and i64 %bf.load5, 1048576, !dbg !4806
  %tobool45 = icmp eq i64 %bf.cast447, 0, !dbg !4806
  br i1 %tobool45, label %if.else, label %land.lhs.true46, !dbg !4809

land.lhs.true46:                                  ; preds = %if.then39
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !4810
  %3 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !4810
  %tobool48 = icmp eq %union.tree_node* %3, null, !dbg !4810
  br i1 %tobool48, label %if.else, label %land.lhs.true49, !dbg !4811

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %call52 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* nonnull %3) #6, !dbg !4812
  %tobool53 = icmp eq i8 %call52, 0, !dbg !4812
  br i1 %tobool53, label %if.else, label %cleanup.cont, !dbg !4813

if.else:                                          ; preds = %land.lhs.true49, %land.lhs.true46, %if.then39
  tail call fastcc void @mark_interesting_type(%union.tree_node* nonnull %call, i32 1) #7, !dbg !4814
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %land.lhs.true49, %lor.lhs.false, %land.lhs.true, %if.end4, %entry, %if.then3, %if.else
  ret void, !dbg !4816
}

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #2

declare dso_local i8* @cgraph_node_name(%struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4817 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4821, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4822, metadata !DIExpression()), !dbg !4825
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !4826
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !4823, metadata !DIExpression()), !dbg !4824
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !4827
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !4828
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4829
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !4830
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !4831
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !4832
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !4833
  ret void, !dbg !4834
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !4835 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !4839, metadata !DIExpression()), !dbg !4840
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4841
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4841
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !4842
  %conv1 = zext i1 %cmp to i8, !dbg !4843
  ret i8 %conv1, !dbg !4844
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scan_for_refs(%union.gimple_statement_d* %t) unnamed_addr #5 !dbg !4845 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %t, metadata !4849, metadata !DIExpression()), !dbg !4850
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %t) #7, !dbg !4851
  switch i32 %call, label %sw.epilog [
    i32 6, label %sw.bb
    i32 8, label %sw.bb1
    i32 7, label %sw.bb2
  ], !dbg !4852

sw.bb:                                            ; preds = %entry
  tail call fastcc void @check_assign(%union.gimple_statement_d* %t) #7, !dbg !4853
  br label %sw.epilog, !dbg !4855

sw.bb1:                                           ; preds = %entry
  tail call fastcc void @check_call(%union.gimple_statement_d* %t) #7, !dbg !4856
  br label %sw.epilog, !dbg !4857

sw.bb2:                                           ; preds = %entry
  tail call fastcc void @check_asm(%union.gimple_statement_d* %t) #7, !dbg !4858
  br label %sw.epilog, !dbg !4859

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !4860
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !4861 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !4865, metadata !DIExpression()), !dbg !4866
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4867
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4867
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !4868
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4868
  ret %union.gimple_statement_d* %1, !dbg !4869
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !4870 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !4875, metadata !DIExpression()), !dbg !4876
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4877
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4877
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !4878
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !4878
  %2 = load i64, i64* %1, align 8, !dbg !4878
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !4879
  store i64 %2, i64* %3, align 8, !dbg !4879
  ret void, !dbg !4880
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4881 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4888, metadata !DIExpression()), !dbg !4889
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4890
  %0 = load i32, i32* %flags, align 8, !dbg !4890
  %and = and i32 %0, 512, !dbg !4891
  %tobool = icmp eq i32 %and, 0, !dbg !4891
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !4892

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4893
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4893
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !4894
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4895

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4896
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4896
  br label %cond.end, !dbg !4895

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !4895
  ret %struct.gimple_seq_d* %cond, !dbg !4897
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4898 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4905, metadata !DIExpression()), !dbg !4906
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4907
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4907

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4908
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4908
  br label %cond.end, !dbg !4907

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4907
  ret %struct.gimple_seq_node_d* %cond, !dbg !4909
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_assign(%union.gimple_statement_d* %t) unnamed_addr #5 !dbg !4910 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %t, metadata !4912, metadata !DIExpression()), !dbg !4925
  %call = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %t) #7, !dbg !4926
  tail call fastcc void @check_lhs_var(%union.tree_node* %call) #7, !dbg !4927
  %call1 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %t) #7, !dbg !4928
  %idxprom = sext i32 %call1 to i64, !dbg !4928
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom, !dbg !4928
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4928
  switch i32 %0, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb38
    i32 4, label %sw.bb73
    i32 3, label %sw.bb77
    i32 10, label %sw.bb79
  ], !dbg !4929

sw.bb:                                            ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %t) #7, !dbg !4930
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !4913, metadata !DIExpression()), !dbg !4931
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4932
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !4932
  %call3 = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %1, i8 zeroext 0, i8 zeroext 0) #7, !dbg !4933
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !4916, metadata !DIExpression()), !dbg !4931
  %call4 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %t) #7, !dbg !4934
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !4917, metadata !DIExpression()), !dbg !4931
  %type6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4935
  %2 = load %union.tree_node*, %union.tree_node** %type6, align 8, !dbg !4935
  %call7 = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %2, i8 zeroext 0, i8 zeroext 0) #7, !dbg !4936
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !4918, metadata !DIExpression()), !dbg !4931
  %tobool = icmp eq %union.tree_node* %call3, null, !dbg !4937
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4939

land.lhs.true:                                    ; preds = %sw.bb
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4940
  %bf.load = load i64, i64* %3, align 8, !dbg !4940
  %bf.cast7 = and i64 %bf.load, 65535, !dbg !4940
  %cmp = icmp eq i64 %bf.cast7, 10, !dbg !4940
  br i1 %cmp, label %land.lhs.true13, label %lor.lhs.false, !dbg !4940

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp12 = icmp eq i64 %bf.cast7, 12, !dbg !4940
  br i1 %cmp12, label %land.lhs.true13, label %if.end, !dbg !4941

land.lhs.true13:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %call14 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %t) #7, !dbg !4942
  %call15 = tail call fastcc zeroext i8 @okay_pointer_operation(i32 %call14, %union.tree_node* %call2, %union.tree_node* %call4) #7, !dbg !4943
  %tobool16 = icmp eq i8 %call15, 0, !dbg !4943
  br i1 %tobool16, label %if.then, label %if.end, !dbg !4944

if.then:                                          ; preds = %land.lhs.true13
  tail call fastcc void @mark_interesting_type(%union.tree_node* nonnull %call3, i32 1) #7, !dbg !4945
  br label %if.end, !dbg !4945

if.end:                                           ; preds = %land.lhs.true13, %sw.bb, %if.then, %lor.lhs.false
  %tobool17 = icmp eq %union.tree_node* %call7, null, !dbg !4946
  br i1 %tobool17, label %if.end35, label %land.lhs.true18, !dbg !4948

land.lhs.true18:                                  ; preds = %if.end
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4949
  %bf.load20 = load i64, i64* %4, align 8, !dbg !4949
  %bf.cast225 = and i64 %bf.load20, 65535, !dbg !4949
  %cmp23 = icmp eq i64 %bf.cast225, 10, !dbg !4949
  br i1 %cmp23, label %land.lhs.true30, label %lor.lhs.false24, !dbg !4949

lor.lhs.false24:                                  ; preds = %land.lhs.true18
  %cmp29 = icmp eq i64 %bf.cast225, 12, !dbg !4949
  br i1 %cmp29, label %land.lhs.true30, label %if.end35, !dbg !4950

land.lhs.true30:                                  ; preds = %lor.lhs.false24, %land.lhs.true18
  %call31 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %t) #7, !dbg !4951
  %call32 = tail call fastcc zeroext i8 @okay_pointer_operation(i32 %call31, %union.tree_node* %call4, %union.tree_node* %call2) #7, !dbg !4952
  %tobool33 = icmp eq i8 %call32, 0, !dbg !4952
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !4953

if.then34:                                        ; preds = %land.lhs.true30
  tail call fastcc void @mark_interesting_type(%union.tree_node* nonnull %call7, i32 1) #7, !dbg !4954
  br label %if.end35, !dbg !4954

if.end35:                                         ; preds = %land.lhs.true30, %if.end, %if.then34, %lor.lhs.false24
  %call36 = tail call fastcc i32 @look_for_casts(%union.tree_node* %call2) #7, !dbg !4955
  %call37 = tail call fastcc i32 @look_for_casts(%union.tree_node* %call4) #7, !dbg !4956
  tail call fastcc void @check_rhs_var(%union.tree_node* %call2) #7, !dbg !4957
  tail call fastcc void @check_rhs_var(%union.tree_node* %call4) #7, !dbg !4958
  br label %sw.epilog, !dbg !4959

sw.bb38:                                          ; preds = %entry
  %call40 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %t) #7, !dbg !4960
  call void @llvm.dbg.value(metadata %union.tree_node* %call40, metadata !4919, metadata !DIExpression()), !dbg !4961
  %type43 = getelementptr inbounds %union.tree_node, %union.tree_node* %call40, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4962
  %5 = load %union.tree_node*, %union.tree_node** %type43, align 8, !dbg !4962
  %call44 = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %5, i8 zeroext 0, i8 zeroext 0) #7, !dbg !4963
  call void @llvm.dbg.value(metadata %union.tree_node* %call44, metadata !4921, metadata !DIExpression()), !dbg !4961
  %tobool45 = icmp eq %union.tree_node* %call44, null, !dbg !4964
  br i1 %tobool45, label %if.end71, label %land.lhs.true46, !dbg !4966

land.lhs.true46:                                  ; preds = %sw.bb38
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call44, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4967
  %bf.load48 = load i64, i64* %6, align 8, !dbg !4967
  %bf.cast501 = and i64 %bf.load48, 65535, !dbg !4967
  %cmp51 = icmp eq i64 %bf.cast501, 10, !dbg !4967
  br i1 %cmp51, label %land.lhs.true58, label %lor.lhs.false52, !dbg !4967

lor.lhs.false52:                                  ; preds = %land.lhs.true46
  %cmp57 = icmp eq i64 %bf.cast501, 12, !dbg !4967
  br i1 %cmp57, label %land.lhs.true58, label %if.end71, !dbg !4968

land.lhs.true58:                                  ; preds = %lor.lhs.false52, %land.lhs.true46
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call40, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4969
  %bf.load60 = load i64, i64* %7, align 8, !dbg !4969
  %bf.cast623 = and i64 %bf.load60, 65535, !dbg !4970
  %cmp63 = icmp eq i64 %bf.cast623, 79, !dbg !4970
  br i1 %cmp63, label %if.then70, label %lor.lhs.false64, !dbg !4971

lor.lhs.false64:                                  ; preds = %land.lhs.true58
  %cmp69 = icmp eq i64 %bf.cast623, 82, !dbg !4972
  br i1 %cmp69, label %if.then70, label %if.end71, !dbg !4973

if.then70:                                        ; preds = %lor.lhs.false64, %land.lhs.true58
  tail call fastcc void @mark_interesting_type(%union.tree_node* nonnull %call44, i32 1) #7, !dbg !4974
  br label %if.end71, !dbg !4974

if.end71:                                         ; preds = %sw.bb38, %if.then70, %lor.lhs.false64, %lor.lhs.false52
  tail call fastcc void @check_rhs_var(%union.tree_node* %call40) #7, !dbg !4975
  %call72 = tail call fastcc i32 @look_for_casts(%union.tree_node* %call40) #7, !dbg !4976
  br label %sw.epilog, !dbg !4977

sw.bb73:                                          ; preds = %entry
  %call74 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %t) #7, !dbg !4978
  %call75 = tail call fastcc i32 @look_for_casts(%union.tree_node* %call74) #7, !dbg !4979
  %call76 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %t) #7, !dbg !4980
  tail call fastcc void @check_rhs_var(%union.tree_node* %call76) #7, !dbg !4981
  br label %sw.epilog, !dbg !4982

sw.bb77:                                          ; preds = %entry
  %call78 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %t) #7, !dbg !4983
  tail call fastcc void @check_rhs_var(%union.tree_node* %call78) #7, !dbg !4984
  br label %sw.epilog, !dbg !4985

sw.bb79:                                          ; preds = %entry
  %call80 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %t) #7, !dbg !4986
  %cmp81 = icmp eq i32 %call80, 121, !dbg !4987
  br i1 %cmp81, label %if.then82, label %sw.epilog, !dbg !4988

if.then82:                                        ; preds = %sw.bb79
  %call83 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %t) #7, !dbg !4989
  call void @llvm.dbg.value(metadata %union.tree_node* %call83, metadata !4922, metadata !DIExpression()), !dbg !4990
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call83, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4991
  %8 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !4991
  %call85 = tail call fastcc i32 @look_for_casts(%union.tree_node* %8) #7, !dbg !4992
  tail call fastcc void @check_rhs_var(%union.tree_node* %call83) #7, !dbg !4993
  br label %sw.epilog, !dbg !4994

sw.epilog:                                        ; preds = %entry, %sw.bb79, %if.then82, %sw.bb77, %sw.bb73, %if.end71, %if.end35
  ret void, !dbg !4995
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_call(%union.gimple_statement_d* %call) unnamed_addr #5 !dbg !4996 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !4998, metadata !DIExpression()), !dbg !5035
  %call1 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call) #7, !dbg !5036
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !4999, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i32 1, metadata !5001, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 0, metadata !5002, metadata !DIExpression()), !dbg !5035
  br label %for.cond, !dbg !5037

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.body ], !dbg !5039
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !5002, metadata !DIExpression()), !dbg !5035
  %call2 = tail call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call) #7, !dbg !5040
  %conv = zext i32 %call2 to i64, !dbg !5040
  %cmp = icmp ult i64 %i.0, %conv, !dbg !5042
  br i1 %cmp, label %for.body, label %for.end, !dbg !5043

for.body:                                         ; preds = %for.cond
  %conv4 = trunc i64 %i.0 to i32, !dbg !5044
  %call5 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 %conv4) #7, !dbg !5045
  tail call fastcc void @check_rhs_var(%union.tree_node* %call5) #7, !dbg !5046
  %inc = add nuw nsw i64 %i.0, 1, !dbg !5047
  call void @llvm.dbg.value(metadata i64 %inc, metadata !5002, metadata !DIExpression()), !dbg !5035
  br label %for.cond, !dbg !5048, !llvm.loop !5049

for.end:                                          ; preds = %for.cond
  %tobool = icmp eq %union.tree_node* %call1, null, !dbg !5051
  br i1 %tobool, label %if.end85, label %if.then, !dbg !5052

if.then:                                          ; preds = %for.end
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5006, metadata !DIExpression()), !dbg !5053
  %call6 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* nonnull %call1) #6, !dbg !5054
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call6, metadata !5000, metadata !DIExpression()), !dbg !5035
  %call7 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* %call6) #6, !dbg !5055
  call void @llvm.dbg.value(metadata i32 %call7, metadata !5001, metadata !DIExpression()), !dbg !5035
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5056
  %0 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !5056
  %1 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !5056
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1, i64 0, i32 1, !dbg !5056
  %2 = load %union.tree_node*, %union.tree_node** %values, align 8, !dbg !5056
  %tobool9 = icmp eq %union.tree_node* %2, null, !dbg !5056
  br i1 %tobool9, label %if.else35, label %if.then10, !dbg !5057

if.then10:                                        ; preds = %if.then
  call void @llvm.dbg.value(metadata i64 0, metadata !5002, metadata !DIExpression()), !dbg !5035
  br label %for.cond15, !dbg !5058

for.cond15:                                       ; preds = %for.inc31, %if.then10
  %arg_type.0 = phi %union.tree_node* [ %2, %if.then10 ], [ %arg_type.0.pre, %for.inc31 ], !dbg !5059
  %i.1 = phi i64 [ 0, %if.then10 ], [ %inc33, %for.inc31 ], !dbg !5059
  %last_arg_type.0 = phi %union.tree_node* [ null, %if.then10 ], [ %last_arg_type.1, %for.inc31 ], !dbg !5053
  call void @llvm.dbg.value(metadata %union.tree_node* %last_arg_type.0, metadata !5006, metadata !DIExpression()), !dbg !5053
  call void @llvm.dbg.value(metadata %union.tree_node* %arg_type.0, metadata !5003, metadata !DIExpression()), !dbg !5053
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !5002, metadata !DIExpression()), !dbg !5035
  %tobool16 = icmp eq %union.tree_node* %arg_type.0, null, !dbg !5060
  br i1 %tobool16, label %if.end63.loopexit4, label %land.lhs.true, !dbg !5061

land.lhs.true:                                    ; preds = %for.cond15
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg_type.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5062
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !5062
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !5063
  %cmp17 = icmp eq %union.tree_node* %4, %5, !dbg !5064
  br i1 %cmp17, label %if.end63.loopexit4, label %land.rhs, !dbg !5065

land.rhs:                                         ; preds = %land.lhs.true
  %call19 = tail call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call) #7, !dbg !5066
  %conv20 = zext i32 %call19 to i64, !dbg !5066
  %cmp21 = icmp ult i64 %i.1, %conv20, !dbg !5067
  br i1 %cmp21, label %for.body23, label %if.end63.loopexit4, !dbg !5068

for.body23:                                       ; preds = %land.rhs
  %conv24 = trunc i64 %i.1 to i32, !dbg !5069
  %call25 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 %conv24) #7, !dbg !5070
  call void @llvm.dbg.value(metadata %union.tree_node* %call25, metadata !5007, metadata !DIExpression()), !dbg !5071
  %tobool26 = icmp eq %union.tree_node* %call25, null, !dbg !5072
  br i1 %tobool26, label %cleanup, label %if.then27, !dbg !5074

if.then27:                                        ; preds = %for.body23
  %6 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !5075
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !5006, metadata !DIExpression()), !dbg !5053
  %call30 = tail call fastcc i32 @check_cast(%union.tree_node* %6, %union.tree_node* nonnull %call25) #7, !dbg !5077
  br label %cleanup, !dbg !5078

cleanup:                                          ; preds = %for.body23, %if.then27
  %last_arg_type.1 = phi %union.tree_node* [ %6, %if.then27 ], [ %last_arg_type.0, %for.body23 ], !dbg !5053
  %cleanup.dest.slot.0 = phi i1 [ true, %if.then27 ], [ false, %for.body23 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %last_arg_type.1, metadata !5006, metadata !DIExpression()), !dbg !5053
  br i1 %cleanup.dest.slot.0, label %for.inc31, label %if.end63.loopexit4

for.inc31:                                        ; preds = %cleanup
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %arg_type.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5079
  %inc33 = add nuw nsw i64 %i.1, 1, !dbg !5080
  call void @llvm.dbg.value(metadata i64 %inc33, metadata !5002, metadata !DIExpression()), !dbg !5035
  %arg_type.0.pre = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !5059
  br label %for.cond15, !dbg !5081, !llvm.loop !5082

if.else35:                                        ; preds = %if.then
  %arguments = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 2, !dbg !5084
  call void @llvm.dbg.value(metadata i64 0, metadata !5002, metadata !DIExpression()), !dbg !5035
  br label %for.cond36, !dbg !5085

for.cond36:                                       ; preds = %for.inc58, %if.else35
  %i.2 = phi i64 [ 0, %if.else35 ], [ %inc61, %for.inc58 ], !dbg !5086
  %arg_type.1.in = phi %union.tree_node** [ %arguments, %if.else35 ], [ %chain60, %for.inc58 ]
  %last_arg_type.3 = phi %union.tree_node* [ null, %if.else35 ], [ %last_arg_type.4, %for.inc58 ], !dbg !5053
  %arg_type.1 = load %union.tree_node*, %union.tree_node** %arg_type.1.in, align 8, !dbg !5086
  call void @llvm.dbg.value(metadata %union.tree_node* %last_arg_type.3, metadata !5006, metadata !DIExpression()), !dbg !5053
  call void @llvm.dbg.value(metadata %union.tree_node* %arg_type.1, metadata !5003, metadata !DIExpression()), !dbg !5053
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !5002, metadata !DIExpression()), !dbg !5035
  %tobool37 = icmp eq %union.tree_node* %arg_type.1, null, !dbg !5087
  br i1 %tobool37, label %if.end63.loopexit, label %land.rhs38, !dbg !5088

land.rhs38:                                       ; preds = %for.cond36
  %call39 = tail call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call) #7, !dbg !5089
  %conv40 = zext i32 %call39 to i64, !dbg !5089
  %cmp41 = icmp ult i64 %i.2, %conv40, !dbg !5090
  br i1 %cmp41, label %for.body44, label %if.end63.loopexit, !dbg !5091

for.body44:                                       ; preds = %land.rhs38
  %conv46 = trunc i64 %i.2 to i32, !dbg !5092
  %call47 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 %conv46) #7, !dbg !5093
  call void @llvm.dbg.value(metadata %union.tree_node* %call47, metadata !5013, metadata !DIExpression()), !dbg !5094
  %tobool48 = icmp eq %union.tree_node* %call47, null, !dbg !5095
  br i1 %tobool48, label %cleanup55, label %if.then49, !dbg !5097

if.then49:                                        ; preds = %for.body44
  %type51 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg_type.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5098
  %7 = load %union.tree_node*, %union.tree_node** %type51, align 8, !dbg !5098
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !5006, metadata !DIExpression()), !dbg !5053
  %call52 = tail call fastcc i32 @check_cast(%union.tree_node* %7, %union.tree_node* nonnull %call47) #7, !dbg !5100
  br label %cleanup55, !dbg !5101

cleanup55:                                        ; preds = %for.body44, %if.then49
  %last_arg_type.4 = phi %union.tree_node* [ %7, %if.then49 ], [ %last_arg_type.3, %for.body44 ], !dbg !5053
  %cleanup.dest.slot.1 = phi i1 [ true, %if.then49 ], [ false, %for.body44 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %last_arg_type.4, metadata !5006, metadata !DIExpression()), !dbg !5053
  br i1 %cleanup.dest.slot.1, label %for.inc58, label %if.end63.loopexit

for.inc58:                                        ; preds = %cleanup55
  %chain60 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg_type.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5102
  %inc61 = add nuw nsw i64 %i.2, 1, !dbg !5103
  call void @llvm.dbg.value(metadata i64 %inc61, metadata !5002, metadata !DIExpression()), !dbg !5035
  br label %for.cond36, !dbg !5104, !llvm.loop !5105

if.end63.loopexit:                                ; preds = %cleanup55, %land.rhs38, %for.cond36
  %i.2.lcssa = phi i64 [ %i.2, %cleanup55 ], [ %i.2, %land.rhs38 ], [ %i.2, %for.cond36 ], !dbg !5086
  %last_arg_type.6.ph = phi %union.tree_node* [ %last_arg_type.3, %land.rhs38 ], [ %last_arg_type.4, %cleanup55 ], [ %last_arg_type.3, %for.cond36 ]
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  br label %if.end63, !dbg !5107

if.end63.loopexit4:                               ; preds = %cleanup, %land.rhs, %for.cond15, %land.lhs.true
  %i.1.lcssa = phi i64 [ %i.1, %cleanup ], [ %i.1, %land.rhs ], [ %i.1, %for.cond15 ], [ %i.1, %land.lhs.true ], !dbg !5059
  %last_arg_type.6.ph5 = phi %union.tree_node* [ %last_arg_type.0, %land.rhs ], [ %last_arg_type.1, %cleanup ], [ %last_arg_type.0, %land.lhs.true ], [ %last_arg_type.0, %for.cond15 ]
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata i64 %i.1.lcssa, metadata !5002, metadata !DIExpression()), !dbg !5035
  br label %if.end63, !dbg !5107

if.end63:                                         ; preds = %if.end63.loopexit4, %if.end63.loopexit
  %i.3 = phi i64 [ %i.2.lcssa, %if.end63.loopexit ], [ %i.1.lcssa, %if.end63.loopexit4 ], !dbg !5108
  %last_arg_type.6 = phi %union.tree_node* [ %last_arg_type.6.ph, %if.end63.loopexit ], [ %last_arg_type.6.ph5, %if.end63.loopexit4 ], !dbg !5108
  call void @llvm.dbg.value(metadata %union.tree_node* %last_arg_type.6, metadata !5006, metadata !DIExpression()), !dbg !5053
  call void @llvm.dbg.value(metadata i64 %i.3, metadata !5002, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.value(metadata %union.tree_node* %last_arg_type.6, metadata !5003, metadata !DIExpression()), !dbg !5053
  %tobool73 = icmp eq %union.tree_node* %last_arg_type.6, null, !dbg !5109
  br i1 %tobool73, label %if.end63.split.us, label %if.end63.if.end63.split_crit_edge, !dbg !5107

if.end63.if.end63.split_crit_edge:                ; preds = %if.end63
  br label %for.cond64, !dbg !5107

if.end63.split.us:                                ; preds = %if.end63
  br label %for.cond64.us, !dbg !5107

for.cond64.us:                                    ; preds = %for.body69.us, %if.end63.split.us
  %i.4.us = phi i64 [ %i.3, %if.end63.split.us ], [ %inc83.us, %for.body69.us ], !dbg !5053
  call void @llvm.dbg.value(metadata i64 %i.4.us, metadata !5002, metadata !DIExpression()), !dbg !5035
  %call65.us = tail call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call) #7, !dbg !5110
  %conv66.us = zext i32 %call65.us to i64, !dbg !5110
  %cmp67.us = icmp ult i64 %i.4.us, %conv66.us, !dbg !5111
  br i1 %cmp67.us, label %for.body69.us, label %if.end85.loopexit.us-lcssa.us, !dbg !5112

for.body69.us:                                    ; preds = %for.cond64.us
  %conv71.us = trunc i64 %i.4.us to i32, !dbg !5113
  %call72.us = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 %conv71.us) #7, !dbg !5114
  call void @llvm.dbg.value(metadata %union.tree_node* %call72.us, metadata !5018, metadata !DIExpression()), !dbg !5115
  %type79.us = getelementptr inbounds %union.tree_node, %union.tree_node* %call72.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5116
  %8 = load %union.tree_node*, %union.tree_node** %type79.us, align 8, !dbg !5116
  %call80.us = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %8, i8 zeroext 0, i8 zeroext 0) #7, !dbg !5117
  call void @llvm.dbg.value(metadata %union.tree_node* %call80.us, metadata !5022, metadata !DIExpression()), !dbg !5118
  tail call fastcc void @mark_interesting_type(%union.tree_node* %call80.us, i32 1) #7, !dbg !5119
  %inc83.us = add nuw nsw i64 %i.4.us, 1, !dbg !5120
  call void @llvm.dbg.value(metadata i64 %inc83.us, metadata !5002, metadata !DIExpression()), !dbg !5035
  br label %for.cond64.us, !dbg !5121, !llvm.loop !5122

if.end85.loopexit.us-lcssa.us:                    ; preds = %for.cond64.us
  br label %if.end85.loopexit, !dbg !5124

for.cond64:                                       ; preds = %for.body69, %if.end63.if.end63.split_crit_edge
  %i.4 = phi i64 [ %i.3, %if.end63.if.end63.split_crit_edge ], [ %inc83, %for.body69 ], !dbg !5053
  call void @llvm.dbg.value(metadata i64 %i.4, metadata !5002, metadata !DIExpression()), !dbg !5035
  %call65 = tail call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call) #7, !dbg !5110
  %conv66 = zext i32 %call65 to i64, !dbg !5110
  %cmp67 = icmp ult i64 %i.4, %conv66, !dbg !5111
  br i1 %cmp67, label %for.body69, label %if.end85.loopexit.us-lcssa, !dbg !5112

for.body69:                                       ; preds = %for.cond64
  %conv71 = trunc i64 %i.4 to i32, !dbg !5113
  %call72 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 %conv71) #7, !dbg !5114
  call void @llvm.dbg.value(metadata %union.tree_node* %call72, metadata !5018, metadata !DIExpression()), !dbg !5115
  %call75 = tail call fastcc i32 @check_cast(%union.tree_node* nonnull %last_arg_type.6, %union.tree_node* %call72) #7, !dbg !5125
  %inc83 = add nuw nsw i64 %i.4, 1, !dbg !5120
  call void @llvm.dbg.value(metadata i64 %inc83, metadata !5002, metadata !DIExpression()), !dbg !5035
  br label %for.cond64, !dbg !5121, !llvm.loop !5122

if.end85.loopexit.us-lcssa:                       ; preds = %for.cond64
  br label %if.end85.loopexit, !dbg !5124

if.end85.loopexit:                                ; preds = %if.end85.loopexit.us-lcssa.us, %if.end85.loopexit.us-lcssa
  %phitmp = add i32 %call7, -1, !dbg !5124
  %phitmp6 = icmp ult i32 %phitmp, 2, !dbg !5124
  br label %if.end85, !dbg !5124

if.end85:                                         ; preds = %if.end85.loopexit, %for.end
  %avail.0 = phi i1 [ true, %for.end ], [ %phitmp6, %if.end85.loopexit ]
  br i1 %avail.0, label %for.cond91.preheader, label %if.end116, !dbg !5124

for.cond91.preheader:                             ; preds = %if.end85
  br label %for.cond91, !dbg !5126

for.cond91:                                       ; preds = %for.cond91.preheader, %for.body96
  %i.5 = phi i64 [ %inc105, %for.body96 ], [ 0, %for.cond91.preheader ], !dbg !5127
  call void @llvm.dbg.value(metadata i64 %i.5, metadata !5002, metadata !DIExpression()), !dbg !5035
  %call92 = tail call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call) #7, !dbg !5128
  %conv93 = zext i32 %call92 to i64, !dbg !5128
  %cmp94 = icmp ult i64 %i.5, %conv93, !dbg !5129
  br i1 %cmp94, label %for.body96, label %for.end106, !dbg !5126

for.body96:                                       ; preds = %for.cond91
  %conv98 = trunc i64 %i.5 to i32, !dbg !5130
  %call99 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 %conv98) #7, !dbg !5131
  call void @llvm.dbg.value(metadata %union.tree_node* %call99, metadata !5025, metadata !DIExpression()), !dbg !5132
  %type102 = getelementptr inbounds %union.tree_node, %union.tree_node* %call99, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5133
  %9 = load %union.tree_node*, %union.tree_node** %type102, align 8, !dbg !5133
  %call103 = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %9, i8 zeroext 0, i8 zeroext 0) #7, !dbg !5134
  call void @llvm.dbg.value(metadata %union.tree_node* %call103, metadata !5031, metadata !DIExpression()), !dbg !5132
  tail call fastcc void @mark_interesting_type(%union.tree_node* %call103, i32 0) #7, !dbg !5135
  %inc105 = add nuw nsw i64 %i.5, 1, !dbg !5136
  call void @llvm.dbg.value(metadata i64 %inc105, metadata !5002, metadata !DIExpression()), !dbg !5035
  br label %for.cond91, !dbg !5137, !llvm.loop !5138

for.end106:                                       ; preds = %for.cond91
  br i1 %tobool, label %if.end116, label %if.then108, !dbg !5140

if.then108:                                       ; preds = %for.end106
  %type111 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5141
  %10 = bitcast %union.tree_node** %type111 to %struct.tree_common**, !dbg !5141
  %11 = load %struct.tree_common*, %struct.tree_common** %10, align 8, !dbg !5141
  %type113 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %11, i64 0, i32 2, !dbg !5141
  %12 = load %union.tree_node*, %union.tree_node** %type113, align 8, !dbg !5141
  %call114 = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %12, i8 zeroext 0, i8 zeroext 0) #7, !dbg !5142
  call void @llvm.dbg.value(metadata %union.tree_node* %call114, metadata !5032, metadata !DIExpression()), !dbg !5143
  tail call fastcc void @mark_interesting_type(%union.tree_node* %call114, i32 0) #7, !dbg !5144
  br label %if.end116, !dbg !5145

if.end116:                                        ; preds = %for.end106, %if.end85, %if.then108
  ret void, !dbg !5146
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_asm(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !5147 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5149, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.value(metadata i64 0, metadata !5150, metadata !DIExpression()), !dbg !5151
  br label %for.cond, !dbg !5152

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.body ], !dbg !5154
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !5150, metadata !DIExpression()), !dbg !5151
  %call = tail call fastcc i32 @gimple_asm_noutputs(%union.gimple_statement_d* %stmt) #7, !dbg !5155
  %conv = zext i32 %call to i64, !dbg !5155
  %cmp = icmp ult i64 %i.0, %conv, !dbg !5157
  br i1 %cmp, label %for.body, label %for.cond4.preheader, !dbg !5158

for.cond4.preheader:                              ; preds = %for.cond
  br label %for.cond4, !dbg !5159

for.body:                                         ; preds = %for.cond
  %conv2 = trunc i64 %i.0 to i32, !dbg !5161
  %call3 = tail call fastcc %union.tree_node* @gimple_asm_output_op(%union.gimple_statement_d* %stmt, i32 %conv2) #7, !dbg !5162
  tail call fastcc void @check_lhs_var(%union.tree_node* %call3) #7, !dbg !5163
  %inc = add nuw nsw i64 %i.0, 1, !dbg !5164
  call void @llvm.dbg.value(metadata i64 %inc, metadata !5150, metadata !DIExpression()), !dbg !5151
  br label %for.cond, !dbg !5165, !llvm.loop !5166

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body9
  %i.1 = phi i64 [ %inc13, %for.body9 ], [ 0, %for.cond4.preheader ], !dbg !5168
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !5150, metadata !DIExpression()), !dbg !5151
  %call5 = tail call fastcc i32 @gimple_asm_ninputs(%union.gimple_statement_d* %stmt) #7, !dbg !5169
  %conv6 = zext i32 %call5 to i64, !dbg !5169
  %cmp7 = icmp ult i64 %i.1, %conv6, !dbg !5171
  br i1 %cmp7, label %for.body9, label %for.end14, !dbg !5159

for.body9:                                        ; preds = %for.cond4
  %conv10 = trunc i64 %i.1 to i32, !dbg !5172
  %call11 = tail call fastcc %union.tree_node* @gimple_asm_input_op(%union.gimple_statement_d* %stmt, i32 %conv10) #7, !dbg !5173
  tail call fastcc void @check_rhs_var(%union.tree_node* %call11) #7, !dbg !5174
  %inc13 = add nuw nsw i64 %i.1, 1, !dbg !5175
  call void @llvm.dbg.value(metadata i64 %inc13, metadata !5150, metadata !DIExpression()), !dbg !5151
  br label %for.cond4, !dbg !5176, !llvm.loop !5177

for.end14:                                        ; preds = %for.cond4
  ret void, !dbg !5179
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_lhs_var(%union.tree_node* %t) unnamed_addr #5 !dbg !5180 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !5182, metadata !DIExpression()), !dbg !5183
  tail call fastcc void @check_tree(%union.tree_node* %t) #7, !dbg !5184
  ret void, !dbg !5185
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @okay_pointer_operation(i32 %code, %union.tree_node* %op0, %union.tree_node* %op1) unnamed_addr #5 !dbg !5186 {
entry:
  %base = alloca %union.tree_node*, align 8
  %offset = alloca %union.tree_node*, align 8
  %offset_cast_stmt = alloca %union.gimple_statement_d*, align 8
  call void @llvm.dbg.value(metadata i32 %code, metadata !5190, metadata !DIExpression()), !dbg !5202
  call void @llvm.dbg.value(metadata %union.tree_node* %op0, metadata !5191, metadata !DIExpression()), !dbg !5202
  call void @llvm.dbg.value(metadata %union.tree_node* %op1, metadata !5192, metadata !DIExpression()), !dbg !5202
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %op0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5203
  %0 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !5203
  %1 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !5203
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1, i64 0, i32 16, !dbg !5203
  %2 = load %union.tree_node*, %union.tree_node** %main_variant, align 8, !dbg !5203
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !5193, metadata !DIExpression()), !dbg !5202
  switch i32 %code, label %sw.default [
    i32 65, label %cleanup61
    i32 64, label %sw.bb2
    i32 63, label %sw.bb2
    i32 66, label %sw.bb2
  ], !dbg !5204

sw.bb2:                                           ; preds = %entry, %entry, %entry
  %3 = bitcast %union.tree_node** %base to i8*, !dbg !5205
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !5205
  %4 = bitcast %union.tree_node** %offset to i8*, !dbg !5205
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !5205
  %5 = bitcast %union.gimple_statement_d** %offset_cast_stmt to i8*, !dbg !5206
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !5206
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5207
  %bf.load = load i64, i64* %6, align 8, !dbg !5207
  %bf.cast4 = and i64 %bf.load, 65535, !dbg !5207
  %cmp = icmp eq i64 %bf.cast4, 10, !dbg !5207
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !5207

lor.lhs.false:                                    ; preds = %sw.bb2
  %cmp8 = icmp eq i64 %bf.cast4, 12, !dbg !5207
  br i1 %cmp8, label %land.lhs.true, label %if.else, !dbg !5208

land.lhs.true:                                    ; preds = %lor.lhs.false, %sw.bb2
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %op0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5209
  %bf.load10 = load i64, i64* %7, align 8, !dbg !5209
  %bf.cast126 = and i64 %bf.load10, 65535, !dbg !5210
  %cmp13 = icmp eq i64 %bf.cast126, 141, !dbg !5210
  br i1 %cmp13, label %land.lhs.true14, label %if.else, !dbg !5211

land.lhs.true14:                                  ; preds = %land.lhs.true
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %op1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5212
  %bf.load16 = load i64, i64* %8, align 8, !dbg !5212
  %bf.cast187 = and i64 %bf.load16, 65535, !dbg !5213
  %cmp19 = icmp eq i64 %bf.cast187, 141, !dbg !5213
  br i1 %cmp19, label %land.lhs.true20, label %if.else, !dbg !5214

land.lhs.true20:                                  ; preds = %land.lhs.true14
  call void @llvm.dbg.value(metadata %union.tree_node** %base, metadata !5194, metadata !DIExpression(DW_OP_deref)), !dbg !5215
  call void @llvm.dbg.value(metadata %union.tree_node** %offset, metadata !5197, metadata !DIExpression(DW_OP_deref)), !dbg !5215
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %offset_cast_stmt, metadata !5198, metadata !DIExpression(DW_OP_deref)), !dbg !5215
  %call = call zeroext i8 @is_array_access_through_pointer_and_index(i32 %code, %union.tree_node* %op0, %union.tree_node* %op1, %union.tree_node** nonnull %base, %union.tree_node** nonnull %offset, %union.gimple_statement_d** nonnull %offset_cast_stmt) #7, !dbg !5216
  %tobool = icmp eq i8 %call, 0, !dbg !5216
  br i1 %tobool, label %if.else, label %cleanup56, !dbg !5217

if.else:                                          ; preds = %land.lhs.true20, %land.lhs.true14, %land.lhs.true, %lor.lhs.false
  %type22 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5218
  %9 = bitcast %union.tree_node** %type22 to %struct.tree_type**, !dbg !5218
  %10 = load %struct.tree_type*, %struct.tree_type** %9, align 8, !dbg !5218
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %10, i64 0, i32 3, !dbg !5218
  %11 = load %union.tree_node*, %union.tree_node** %size_unit, align 8, !dbg !5218
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !5199, metadata !DIExpression()), !dbg !5219
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %op1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5220
  %bf.load25 = load i64, i64* %12, align 8, !dbg !5220
  %bf.cast27 = and i64 %bf.load25, 65535, !dbg !5220
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast27, !dbg !5220
  %13 = load i32, i32* %arrayidx, align 4, !dbg !5220
  %cmp28 = icmp eq i32 %13, 1, !dbg !5220
  %tobool31 = icmp ne %union.tree_node* %11, null, !dbg !5222
  %or.cond = and i1 %cmp28, %tobool31, !dbg !5223
  br i1 %or.cond, label %land.lhs.true32, label %if.end, !dbg !5223

land.lhs.true32:                                  ; preds = %if.else
  %type34 = getelementptr inbounds %union.tree_node, %union.tree_node* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5224
  %14 = load %union.tree_node*, %union.tree_node** %type34, align 8, !dbg !5224
  %call35 = call i32 @multiple_of_p(%union.tree_node* %14, %union.tree_node* %op1, %union.tree_node* nonnull %11) #6, !dbg !5225
  %tobool36 = icmp eq i32 %call35, 0, !dbg !5225
  br i1 %tobool36, label %if.end, label %cleanup, !dbg !5226

if.end:                                           ; preds = %land.lhs.true32, %if.else
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %op0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5227
  %bf.load39 = load i64, i64* %15, align 8, !dbg !5227
  %bf.cast41 = and i64 %bf.load39, 65535, !dbg !5227
  %arrayidx43 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast41, !dbg !5227
  %16 = load i32, i32* %arrayidx43, align 4, !dbg !5227
  %cmp44 = icmp eq i32 %16, 1, !dbg !5227
  %or.cond2 = and i1 %cmp44, %tobool31, !dbg !5229
  br i1 %or.cond2, label %land.lhs.true48, label %if.end54, !dbg !5229

land.lhs.true48:                                  ; preds = %if.end
  %type50 = getelementptr inbounds %union.tree_node, %union.tree_node* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5230
  %17 = load %union.tree_node*, %union.tree_node** %type50, align 8, !dbg !5230
  %call51 = call i32 @multiple_of_p(%union.tree_node* %17, %union.tree_node* %op0, %union.tree_node* nonnull %11) #6, !dbg !5231
  %tobool52 = icmp eq i32 %call51, 0, !dbg !5231
  br i1 %tobool52, label %if.end54, label %cleanup, !dbg !5232

if.end54:                                         ; preds = %land.lhs.true48, %if.end
  br label %cleanup, !dbg !5233

cleanup:                                          ; preds = %land.lhs.true32, %land.lhs.true48, %if.end54
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end54 ], [ 1, %land.lhs.true32 ], [ 1, %land.lhs.true48 ]
  br label %cleanup56

cleanup56:                                        ; preds = %land.lhs.true20, %cleanup
  %cleanup.dest.slot.1 = phi i32 [ 1, %land.lhs.true20 ], [ %cleanup.dest.slot.0, %cleanup ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !5234
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !5234
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !5234
  %cond1 = icmp ne i32 %cleanup.dest.slot.1, 0
  %spec.select3 = zext i1 %cond1 to i8
  ret i8 %spec.select3

sw.default:                                       ; preds = %entry
  br label %cleanup61, !dbg !5235

cleanup61:                                        ; preds = %entry, %sw.default
  %retval.2 = phi i8 [ 0, %sw.default ], [ 1, %entry ], !dbg !5202
  ret i8 %retval.2, !dbg !5236
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_rhs_var(%union.tree_node* %t) unnamed_addr #5 !dbg !5237 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !5239, metadata !DIExpression()), !dbg !5240
  tail call fastcc void @look_for_address_of(%union.tree_node* %t) #7, !dbg !5241
  tail call fastcc void @check_tree(%union.tree_node* %t) #7, !dbg !5242
  ret void, !dbg !5243
}

declare dso_local i32 @multiple_of_p(%union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @look_for_address_of(%union.tree_node* %t) unnamed_addr #5 !dbg !5244 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !5246, metadata !DIExpression()), !dbg !5252
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5253
  %bf.load = load i64, i64* %0, align 8, !dbg !5253
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5254
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !5254
  br i1 %cmp, label %if.then, label %if.end31, !dbg !5255

if.then:                                          ; preds = %entry
  %call = tail call %union.tree_node* @get_base_var(%union.tree_node* %t) #6, !dbg !5256
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5247, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5251, metadata !DIExpression()), !dbg !5257
  br label %while.cond, !dbg !5258

while.cond:                                       ; preds = %if.end20, %if.then
  %t.pn = phi %union.tree_node* [ %t, %if.then ], [ %cref.0, %if.end20 ]
  %cref.0.in = getelementptr inbounds %union.tree_node, %union.tree_node* %t.pn, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !5257
  %cref.0 = load %union.tree_node*, %union.tree_node** %cref.0.in, align 8, !dbg !5257
  call void @llvm.dbg.value(metadata %union.tree_node* %cref.0, metadata !5250, metadata !DIExpression()), !dbg !5257
  %cmp1 = icmp eq %union.tree_node* %cref.0, %call, !dbg !5259
  br i1 %cmp1, label %while.end, label %while.body, !dbg !5258

while.body:                                       ; preds = %while.cond
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %cref.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5260
  %bf.load3 = load i64, i64* %1, align 8, !dbg !5260
  %bf.cast53 = and i64 %bf.load3, 65535, !dbg !5263
  %cmp6 = icmp eq i64 %bf.cast53, 41, !dbg !5263
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !5264

if.then7:                                         ; preds = %while.body
  %operands9 = getelementptr inbounds %union.tree_node, %union.tree_node* %cref.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !5265
  %arrayidx10 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands9, i64 1, !dbg !5265
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx10, align 8, !dbg !5265
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !5251, metadata !DIExpression()), !dbg !5257
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5267
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !5267
  %context = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !5268
  %4 = load %union.tree_node*, %union.tree_node** %context, align 8, !dbg !5268
  tail call fastcc void @mark_interesting_addressof(%union.tree_node* %3, %union.tree_node* %4) #7, !dbg !5269
  br label %if.end20, !dbg !5270

if.else:                                          ; preds = %while.body
  %cmp15 = icmp eq i64 %bf.cast53, 45, !dbg !5271
  br i1 %cmp15, label %if.then16, label %if.end20, !dbg !5273

if.then16:                                        ; preds = %if.else
  %type18 = getelementptr inbounds %union.tree_node, %union.tree_node* %cref.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5274
  %5 = load %union.tree_node*, %union.tree_node** %type18, align 8, !dbg !5274
  %call19 = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %5, i8 zeroext 0, i8 zeroext 0) #7, !dbg !5275
  br label %if.end20, !dbg !5275

if.end20:                                         ; preds = %if.else, %if.then16, %if.then7
  br label %while.cond, !dbg !5258, !llvm.loop !5276

while.end:                                        ; preds = %while.cond
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5278
  %bf.load25 = load i64, i64* %6, align 8, !dbg !5278
  %bf.cast272 = and i64 %bf.load25, 65535, !dbg !5280
  %cmp28 = icmp eq i64 %bf.cast272, 32, !dbg !5280
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !5281

if.then29:                                        ; preds = %while.end
  tail call fastcc void @has_proper_scope_for_analysis(%union.tree_node* %call) #7, !dbg !5282
  br label %if.end31, !dbg !5282

if.end31:                                         ; preds = %while.end, %if.then29, %entry
  ret void, !dbg !5283
}

declare dso_local %union.tree_node* @get_base_var(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_interesting_addressof(%union.tree_node* %to_type, %union.tree_node* %from_type) unnamed_addr #5 !dbg !5284 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %to_type, metadata !5288, metadata !DIExpression()), !dbg !5294
  call void @llvm.dbg.value(metadata %union.tree_node* %from_type, metadata !5289, metadata !DIExpression()), !dbg !5294
  %call = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %from_type, i8 zeroext 0, i8 zeroext 0) #7, !dbg !5295
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5289, metadata !DIExpression()), !dbg !5294
  %call1 = tail call fastcc %union.tree_node* @get_canon_type(%union.tree_node* %to_type, i8 zeroext 0, i8 zeroext 0) #7, !dbg !5296
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !5288, metadata !DIExpression()), !dbg !5294
  %tobool = icmp ne %union.tree_node* %call, null, !dbg !5297
  %tobool2 = icmp ne %union.tree_node* %call1, null, !dbg !5299
  %or.cond = and i1 %tobool, %tobool2, !dbg !5300
  br i1 %or.cond, label %if.end, label %cleanup.cont, !dbg !5300

if.end:                                           ; preds = %entry
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5301
  %0 = bitcast i40* %uid to i32*, !dbg !5301
  %1 = load i32, i32* %0, align 8, !dbg !5301
  call void @llvm.dbg.value(metadata i32 %1, metadata !5290, metadata !DIExpression()), !dbg !5294
  %uid4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5302
  %2 = bitcast i40* %uid4 to i32*, !dbg !5302
  %3 = load i32, i32* %2, align 8, !dbg !5302
  call void @llvm.dbg.value(metadata i32 %3, metadata !5291, metadata !DIExpression()), !dbg !5294
  %call5 = tail call i32 @ipa_type_escape_star_count_of_interesting_type(%union.tree_node* nonnull %call) #7, !dbg !5303
  %cmp = icmp eq i32 %call5, 0, !dbg !5303
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !5303

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 1170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5303
  br label %cond.end, !dbg !5303

cond.end:                                         ; preds = %if.end, %cond.true
  %4 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_addressof_down_map, align 8, !dbg !5304
  %conv = sext i32 %1 to i64, !dbg !5305
  %call6 = tail call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %4, i64 %conv) #6, !dbg !5306
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call6, metadata !5293, metadata !DIExpression()), !dbg !5294
  %tobool7 = icmp eq %struct.splay_tree_node_s* %call6, null, !dbg !5307
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !5309

if.then8:                                         ; preds = %cond.end
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %call6, i64 0, i32 1, !dbg !5310
  %5 = bitcast i64* %value to %struct.bitmap_head_def**, !dbg !5310
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %5, align 8, !dbg !5310
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %6, metadata !5292, metadata !DIExpression()), !dbg !5294
  br label %if.end12, !dbg !5311

if.else:                                          ; preds = %cond.end
  %call9 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @ipa_obstack) #6, !dbg !5312
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call9, metadata !5292, metadata !DIExpression()), !dbg !5294
  %7 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_addressof_down_map, align 8, !dbg !5314
  %8 = ptrtoint %struct.bitmap_head_def* %call9 to i64, !dbg !5315
  %call11 = tail call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %7, i64 %conv, i64 %8) #6, !dbg !5316
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %type_map.0 = phi %struct.bitmap_head_def* [ %6, %if.then8 ], [ %call9, %if.else ], !dbg !5317
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %type_map.0, metadata !5292, metadata !DIExpression()), !dbg !5294
  %9 = load i32, i32* %2, align 8, !dbg !5318
  %call15 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %type_map.0, i32 %9) #6, !dbg !5319
  %10 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_addressof_up_map, align 8, !dbg !5320
  %conv16 = sext i32 %3 to i64, !dbg !5321
  %call17 = tail call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %10, i64 %conv16) #6, !dbg !5322
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call17, metadata !5293, metadata !DIExpression()), !dbg !5294
  %tobool18 = icmp eq %struct.splay_tree_node_s* %call17, null, !dbg !5323
  br i1 %tobool18, label %if.else21, label %if.then19, !dbg !5325

if.then19:                                        ; preds = %if.end12
  %value20 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %call17, i64 0, i32 1, !dbg !5326
  %11 = bitcast i64* %value20 to %struct.bitmap_head_def**, !dbg !5326
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %11, align 8, !dbg !5326
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %12, metadata !5292, metadata !DIExpression()), !dbg !5294
  br label %if.end25, !dbg !5327

if.else21:                                        ; preds = %if.end12
  %call22 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @ipa_obstack) #6, !dbg !5328
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call22, metadata !5292, metadata !DIExpression()), !dbg !5294
  %13 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_addressof_up_map, align 8, !dbg !5330
  %14 = ptrtoint %struct.bitmap_head_def* %call22 to i64, !dbg !5331
  %call24 = tail call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %13, i64 %conv16, i64 %14) #6, !dbg !5332
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then19
  %type_map.1 = phi %struct.bitmap_head_def* [ %12, %if.then19 ], [ %call22, %if.else21 ], !dbg !5333
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %type_map.1, metadata !5292, metadata !DIExpression()), !dbg !5294
  %15 = load i32, i32* %0, align 8, !dbg !5334
  %call28 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %type_map.1, i32 %15) #6, !dbg !5335
  br label %cleanup.cont, !dbg !5336

cleanup.cont:                                     ; preds = %if.end25, %entry
  ret void, !dbg !5336
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5337 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5339, metadata !DIExpression()), !dbg !5341
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #7, !dbg !5342
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5340, metadata !DIExpression()), !dbg !5341
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5343
  %bf.load = load i64, i64* %0, align 8, !dbg !5343
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5345
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !5345
  br i1 %cmp, label %if.then, label %cleanup, !dbg !5346

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !5347
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !5347
  br label %cleanup, !dbg !5348

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !5341
  ret %union.tree_node* %retval.0, !dbg !5349
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5350 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5352, metadata !DIExpression()), !dbg !5354
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !5355
  call void @llvm.dbg.value(metadata i32 %call, metadata !5353, metadata !DIExpression()), !dbg !5354
  %sub = add i32 %call, -3, !dbg !5356
  ret i32 %sub, !dbg !5357
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !5358 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5360, metadata !DIExpression()), !dbg !5362
  call void @llvm.dbg.value(metadata i32 %index, metadata !5361, metadata !DIExpression()), !dbg !5362
  %add = add i32 %index, 3, !dbg !5363
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add) #7, !dbg !5364
  ret %union.tree_node* %call, !dbg !5365
}

declare dso_local %struct.cgraph_node* @cgraph_node(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @cgraph_function_body_availability(%struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5366 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5368, metadata !DIExpression()), !dbg !5369
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !5370
  ret %union.tree_node* %call, !dbg !5371
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_asm_noutputs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5372 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5374, metadata !DIExpression()), !dbg !5375
  %gimple_asm = bitcast %union.gimple_statement_d* %gs to %struct.gimple_statement_asm*, !dbg !5376
  %no = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 3, !dbg !5377
  %0 = load i8, i8* %no, align 1, !dbg !5377
  %conv = zext i8 %0 to i32, !dbg !5378
  ret i32 %conv, !dbg !5379
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_asm_output_op(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !5380 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5382, metadata !DIExpression()), !dbg !5384
  call void @llvm.dbg.value(metadata i32 %index, metadata !5383, metadata !DIExpression()), !dbg !5384
  %gimple_asm = bitcast %union.gimple_statement_d* %gs to %struct.gimple_statement_asm*, !dbg !5385
  %no = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 3, !dbg !5385
  %0 = load i8, i8* %no, align 1, !dbg !5385
  %conv = zext i8 %0 to i32, !dbg !5385
  %cmp = icmp ult i32 %conv, %index, !dbg !5385
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !5385

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 2655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5385
  br label %cond.end, !dbg !5385

cond.end:                                         ; preds = %entry, %cond.true
  %ni = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 3, !dbg !5386
  %1 = bitcast %union.tree_node*** %ni to i8*, !dbg !5386
  %2 = load i8, i8* %1, align 8, !dbg !5386
  %conv3 = zext i8 %2 to i32, !dbg !5387
  %add = add i32 %conv3, %index, !dbg !5388
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add) #7, !dbg !5389
  ret %union.tree_node* %call, !dbg !5390
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_asm_ninputs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5391 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5393, metadata !DIExpression()), !dbg !5394
  %ni = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 3, !dbg !5395
  %0 = bitcast %union.tree_node*** %ni to i8*, !dbg !5395
  %1 = load i8, i8* %0, align 8, !dbg !5395
  %conv = zext i8 %1 to i32, !dbg !5396
  ret i32 %conv, !dbg !5397
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_asm_input_op(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !5398 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5400, metadata !DIExpression()), !dbg !5402
  call void @llvm.dbg.value(metadata i32 %index, metadata !5401, metadata !DIExpression()), !dbg !5402
  %ni = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 3, !dbg !5403
  %0 = bitcast %union.tree_node*** %ni to i8*, !dbg !5403
  %1 = load i8, i8* %0, align 8, !dbg !5403
  %conv = zext i8 %1 to i32, !dbg !5403
  %cmp = icmp ult i32 %conv, %index, !dbg !5403
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !5403

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 2622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5403
  br label %cond.end, !dbg !5403

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %index) #7, !dbg !5404
  ret %union.tree_node* %call, !dbg !5405
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.bitmap_head_def* @subtype_map_for_uid(i32 %uid, i8 zeroext %create) unnamed_addr #5 !dbg !5406 {
entry:
  call void @llvm.dbg.value(metadata i32 %uid, metadata !5410, metadata !DIExpression()), !dbg !5417
  call void @llvm.dbg.value(metadata i8 %create, metadata !5411, metadata !DIExpression()), !dbg !5417
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_subtype_map, align 8, !dbg !5418
  %conv = sext i32 %uid to i64, !dbg !5419
  %call = tail call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %0, i64 %conv) #6, !dbg !5420
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call, metadata !5412, metadata !DIExpression()), !dbg !5417
  %tobool = icmp eq %struct.splay_tree_node_s* %call, null, !dbg !5421
  br i1 %tobool, label %if.else, label %if.then, !dbg !5422

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %call, i64 0, i32 1, !dbg !5423
  %1 = bitcast i64* %value to %struct.bitmap_head_def**, !dbg !5423
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %1, align 8, !dbg !5423
  br label %cleanup, !dbg !5424

if.else:                                          ; preds = %entry
  %tobool1 = icmp eq i8 %create, 0, !dbg !5425
  br i1 %tobool1, label %cleanup, label %if.then2, !dbg !5426

if.then2:                                         ; preds = %if.else
  %call3 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @ipa_obstack) #6, !dbg !5427
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call3, metadata !5413, metadata !DIExpression()), !dbg !5428
  %3 = load %struct.splay_tree_s*, %struct.splay_tree_s** @uid_to_subtype_map, align 8, !dbg !5429
  %4 = ptrtoint %struct.bitmap_head_def* %call3 to i64, !dbg !5430
  %call5 = tail call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %3, i64 %conv, i64 %4) #6, !dbg !5431
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %if.then
  %retval.0 = phi %struct.bitmap_head_def* [ %2, %if.then ], [ %call3, %if.then2 ], [ null, %if.else ], !dbg !5432
  ret %struct.bitmap_head_def* %retval.0, !dbg !5433
}

declare dso_local zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

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
!llvm.module.flags = !{!1854, !1855, !1856}
!llvm.ident = !{!1857}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "initialized", scope: !2, file: !3, line: 61, type: !557, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !555, globals: !1758, nameTableKind: None)
!3 = !DIFile(filename: "ipa-type-escape.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !201, !207, !212, !217, !235, !242, !249, !256, !432, !439, !478, !489, !493, !519, !525, !548}
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
!432 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !433, line: 119, baseType: !7, size: 32, elements: !434)
!433 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!434 = !{!435, !436, !437, !438}
!435 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!436 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!437 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!438 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!439 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !440, line: 51, baseType: !7, size: 32, elements: !441)
!440 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477}
!442 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!443 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!444 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!445 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!446 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!447 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!448 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!449 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!450 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!451 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!452 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!453 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!454 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!455 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!456 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!457 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!458 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!459 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!460 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!461 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!462 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!463 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!464 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!465 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!466 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!467 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!468 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!469 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!470 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!471 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!472 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!473 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!474 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!475 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!476 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!477 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!478 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cast_type", file: !3, line: 628, baseType: !7, size: 32, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488}
!480 = !DIEnumerator(name: "CT_UP", value: 1, isUnsigned: true)
!481 = !DIEnumerator(name: "CT_DOWN", value: 2, isUnsigned: true)
!482 = !DIEnumerator(name: "CT_SIDEWAYS", value: 4, isUnsigned: true)
!483 = !DIEnumerator(name: "CT_USELESS", value: 8, isUnsigned: true)
!484 = !DIEnumerator(name: "CT_FROM_P_BAD", value: 16, isUnsigned: true)
!485 = !DIEnumerator(name: "CT_FROM_NON_P", value: 32, isUnsigned: true)
!486 = !DIEnumerator(name: "CT_TO_NON_INTER", value: 64, isUnsigned: true)
!487 = !DIEnumerator(name: "CT_FROM_MALLOC", value: 128, isUnsigned: true)
!488 = !DIEnumerator(name: "CT_NO_CAST", value: 256, isUnsigned: true)
!489 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "escape_t", file: !3, line: 83, baseType: !7, size: 32, elements: !490)
!490 = !{!491, !492}
!491 = !DIEnumerator(name: "EXPOSED_PARAMETER", value: 0, isUnsigned: true)
!492 = !DIEnumerator(name: "FULL_ESCAPE", value: 1, isUnsigned: true)
!493 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !440, line: 727, baseType: !7, size: 32, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518}
!495 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!496 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!497 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!498 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!499 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!500 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!501 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!502 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!503 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!504 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!505 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!506 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!507 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!508 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!509 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!510 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!511 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!512 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!513 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!514 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!515 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!516 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!517 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!518 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!519 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !440, line: 80, baseType: !7, size: 32, elements: !520)
!520 = !{!521, !522, !523, !524}
!521 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!522 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!523 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!524 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!525 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !526, line: 309, baseType: !7, size: 32, elements: !527)
!526 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!527 = !{!528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547}
!528 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!529 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!530 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!531 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!532 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!533 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!534 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!535 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!536 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!537 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!538 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!539 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!540 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!541 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!542 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!543 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!544 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!545 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!546 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!547 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!548 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "availability", file: !526, line: 27, baseType: !7, size: 32, elements: !549)
!549 = !{!550, !551, !552, !553, !554}
!550 = !DIEnumerator(name: "AVAIL_UNSET", value: 0, isUnsigned: true)
!551 = !DIEnumerator(name: "AVAIL_NOT_AVAILABLE", value: 1, isUnsigned: true)
!552 = !DIEnumerator(name: "AVAIL_OVERWRITABLE", value: 2, isUnsigned: true)
!553 = !DIEnumerator(name: "AVAIL_AVAILABLE", value: 3, isUnsigned: true)
!554 = !DIEnumerator(name: "AVAIL_LOCAL", value: 4, isUnsigned: true)
!555 = !{!556, !557, !558, !559, !562, !563, !5, !565, !569, !631, !1741, !1746, !1747, !924, !1753, !957, !560, !1755, !519}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!558 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_key", file: !566, line: 62, baseType: !567)
!566 = !DIFile(filename: "./include/splay-tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "libi_uhostptr_t", file: !566, line: 41, baseType: !568)
!568 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !570, line: 47, baseType: !571)
!570 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !573, line: 75, size: 256, elements: !574)
!573 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!574 = !{!575, !589, !590, !591}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !572, file: !573, line: 76, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !573, line: 68, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !573, line: 63, size: 320, elements: !579)
!579 = !{!580, !582, !583, !584}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !578, file: !573, line: 64, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !578, file: !573, line: 65, baseType: !581, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !578, file: !573, line: 66, baseType: !7, size: 32, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !578, file: !573, line: 67, baseType: !585, size: 128, offset: 192)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 128, elements: !587)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !573, line: 29, baseType: !568)
!587 = !{!588}
!588 = !DISubrange(count: 2)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !572, file: !573, line: 77, baseType: !576, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !572, file: !573, line: 78, baseType: !7, size: 32, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !572, file: !573, line: 79, baseType: !592, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !573, line: 49, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !573, line: 45, size: 832, elements: !595)
!595 = !{!596, !597, !598}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !594, file: !573, line: 46, baseType: !581, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !594, file: !573, line: 47, baseType: !571, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !594, file: !573, line: 48, baseType: !599, size: 704, offset: 128)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !600, line: 164, size: 704, elements: !601)
!600 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!601 = !{!602, !604, !614, !615, !616, !617, !618, !619, !623, !627, !628, !629, !630}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !599, file: !600, line: 166, baseType: !603, size: 64)
!603 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !599, file: !600, line: 167, baseType: !605, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !600, line: 157, size: 192, elements: !607)
!607 = !{!608, !609, !610}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !606, file: !600, line: 159, baseType: !560, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !606, file: !600, line: 160, baseType: !605, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !606, file: !600, line: 161, baseType: !611, size: 32, offset: 128)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 32, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 4)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !599, file: !600, line: 168, baseType: !560, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !599, file: !600, line: 169, baseType: !560, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !599, file: !600, line: 170, baseType: !560, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !599, file: !600, line: 171, baseType: !603, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !599, file: !600, line: 172, baseType: !558, size: 32, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !599, file: !600, line: 176, baseType: !620, size: 64, offset: 448)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!605, !562, !603}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !599, file: !600, line: 177, baseType: !624, size: 64, offset: 512)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !562, !605}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !599, file: !600, line: 178, baseType: !562, size: 64, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !599, file: !600, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !599, file: !600, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !599, file: !600, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !570, line: 56, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !6, line: 3371, size: 1792, elements: !634)
!634 = !{!635, !668, !674, !685, !692, !699, !704, !713, !719, !732, !744, !782, !790, !818, !835, !836, !841, !850, !856, !861, !865, !869, !1390, !1439, !1445, !1451, !1458, !1471, !1485, !1502, !1514, !1536, !1551, !1723}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !633, file: !6, line: 3372, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !6, line: 360, size: 64, elements: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !636, file: !6, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !636, file: !6, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !636, file: !6, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !636, file: !6, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !636, file: !6, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !636, file: !6, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !636, file: !6, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !636, file: !6, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !636, file: !6, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !636, file: !6, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !636, file: !6, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !636, file: !6, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !636, file: !6, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !636, file: !6, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !636, file: !6, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !636, file: !6, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !636, file: !6, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !636, file: !6, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !636, file: !6, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !636, file: !6, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !636, file: !6, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !636, file: !6, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !636, file: !6, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !636, file: !6, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !636, file: !6, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !636, file: !6, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !636, file: !6, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !636, file: !6, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !636, file: !6, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !636, file: !6, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !633, file: !6, line: 3373, baseType: !669, size: 192)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !6, line: 402, size: 192, elements: !670)
!670 = !{!671, !672, !673}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !669, file: !6, line: 403, baseType: !636, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !669, file: !6, line: 404, baseType: !631, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !669, file: !6, line: 405, baseType: !631, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !633, file: !6, line: 3374, baseType: !675, size: 320)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !6, line: 1384, size: 320, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !675, file: !6, line: 1385, baseType: !669, size: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !675, file: !6, line: 1386, baseType: !679, size: 128, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !680, line: 58, baseType: !681)
!680 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !680, line: 54, size: 128, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !681, file: !680, line: 56, baseType: !568, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !681, file: !680, line: 57, baseType: !603, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !633, file: !6, line: 3375, baseType: !686, size: 256)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !6, line: 1397, size: 256, elements: !687)
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !686, file: !6, line: 1398, baseType: !669, size: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !686, file: !6, line: 1399, baseType: !690, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !6, line: 1392, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !633, file: !6, line: 3376, baseType: !693, size: 256)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !6, line: 1408, size: 256, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !693, file: !6, line: 1409, baseType: !669, size: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !693, file: !6, line: 1410, baseType: !697, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !6, line: 1403, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !633, file: !6, line: 3377, baseType: !700, size: 256)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !6, line: 1437, size: 256, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !700, file: !6, line: 1438, baseType: !669, size: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !700, file: !6, line: 1439, baseType: !631, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !633, file: !6, line: 3378, baseType: !705, size: 256)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !6, line: 1418, size: 256, elements: !706)
!706 = !{!707, !708, !709}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !705, file: !6, line: 1419, baseType: !669, size: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !705, file: !6, line: 1420, baseType: !558, size: 32, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !705, file: !6, line: 1421, baseType: !710, size: 8, offset: 224)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 8, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 1)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !633, file: !6, line: 3379, baseType: !714, size: 320)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !6, line: 1428, size: 320, elements: !715)
!715 = !{!716, !717, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !714, file: !6, line: 1429, baseType: !669, size: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !714, file: !6, line: 1430, baseType: !631, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !714, file: !6, line: 1431, baseType: !631, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !633, file: !6, line: 3380, baseType: !720, size: 320)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !6, line: 1460, size: 320, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !720, file: !6, line: 1461, baseType: !669, size: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !720, file: !6, line: 1462, baseType: !724, size: 128, offset: 192)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !725, line: 31, size: 128, elements: !726)
!725 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!726 = !{!727, !730, !731}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !724, file: !725, line: 32, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !724, file: !725, line: 33, baseType: !7, size: 32, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !724, file: !725, line: 34, baseType: !7, size: 32, offset: 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !633, file: !6, line: 3381, baseType: !733, size: 384)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !6, line: 2507, size: 384, elements: !734)
!734 = !{!735, !736, !741, !742, !743}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !733, file: !6, line: 2508, baseType: !669, size: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !733, file: !6, line: 2509, baseType: !737, size: 32, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !738, line: 58, baseType: !739)
!738 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !740, line: 44, baseType: !7)
!740 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!741 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !733, file: !6, line: 2510, baseType: !7, size: 32, offset: 224)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !733, file: !6, line: 2511, baseType: !631, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !733, file: !6, line: 2512, baseType: !631, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !633, file: !6, line: 3382, baseType: !745, size: 896)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !6, line: 2652, size: 896, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !745, file: !6, line: 2653, baseType: !733, size: 384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !745, file: !6, line: 2654, baseType: !631, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !745, file: !6, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !745, file: !6, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !745, file: !6, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !745, file: !6, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !745, file: !6, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !745, file: !6, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !745, file: !6, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !745, file: !6, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !745, file: !6, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !745, file: !6, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !745, file: !6, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !745, file: !6, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !745, file: !6, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !745, file: !6, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !745, file: !6, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !745, file: !6, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !745, file: !6, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !745, file: !6, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !745, file: !6, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !745, file: !6, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !745, file: !6, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !745, file: !6, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !745, file: !6, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !745, file: !6, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !745, file: !6, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !745, file: !6, line: 2703, baseType: !7, size: 32, offset: 512)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !745, file: !6, line: 2705, baseType: !631, size: 64, offset: 576)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !745, file: !6, line: 2706, baseType: !631, size: 64, offset: 640)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !745, file: !6, line: 2707, baseType: !631, size: 64, offset: 704)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !745, file: !6, line: 2708, baseType: !631, size: 64, offset: 768)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !745, file: !6, line: 2711, baseType: !780, size: 64, offset: 832)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !6, line: 2711, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !633, file: !6, line: 3383, baseType: !783, size: 960)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !6, line: 2756, size: 960, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !783, file: !6, line: 2757, baseType: !745, size: 896)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !783, file: !6, line: 2758, baseType: !787, size: 64, offset: 896)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !570, line: 50, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !570, line: 49, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !633, file: !6, line: 3384, baseType: !791, size: 1472)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !6, line: 3114, size: 1472, elements: !792)
!792 = !{!793, !814, !815, !816, !817}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !791, file: !6, line: 3115, baseType: !794, size: 1216)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !6, line: 2984, size: 1216, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !794, file: !6, line: 2985, baseType: !783, size: 960)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !794, file: !6, line: 2986, baseType: !631, size: 64, offset: 960)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !794, file: !6, line: 2987, baseType: !631, size: 64, offset: 1024)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !794, file: !6, line: 2988, baseType: !631, size: 64, offset: 1088)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !794, file: !6, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !794, file: !6, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !794, file: !6, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !794, file: !6, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !794, file: !6, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !794, file: !6, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !794, file: !6, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !794, file: !6, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !794, file: !6, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !794, file: !6, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !794, file: !6, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !794, file: !6, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !794, file: !6, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !794, file: !6, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !791, file: !6, line: 3117, baseType: !631, size: 64, offset: 1216)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !791, file: !6, line: 3119, baseType: !631, size: 64, offset: 1280)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !791, file: !6, line: 3121, baseType: !631, size: 64, offset: 1344)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !791, file: !6, line: 3123, baseType: !631, size: 64, offset: 1408)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !633, file: !6, line: 3385, baseType: !819, size: 1088)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !6, line: 2874, size: 1088, elements: !820)
!820 = !{!821, !822, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !819, file: !6, line: 2875, baseType: !783, size: 960)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !819, file: !6, line: 2876, baseType: !787, size: 64, offset: 960)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !819, file: !6, line: 2877, baseType: !824, size: 64, offset: 1024)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !826, line: 172, size: 128, elements: !827)
!826 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!827 = !{!828, !829, !830, !831, !832, !833, !834}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !825, file: !826, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !825, file: !826, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !825, file: !826, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !825, file: !826, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !825, file: !826, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !825, file: !826, line: 195, baseType: !7, size: 32, offset: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !825, file: !826, line: 199, baseType: !631, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !633, file: !6, line: 3386, baseType: !794, size: 1216)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !633, file: !6, line: 3387, baseType: !837, size: 1280)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !6, line: 3093, size: 1280, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !837, file: !6, line: 3094, baseType: !794, size: 1216)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !837, file: !6, line: 3095, baseType: !824, size: 64, offset: 1216)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !633, file: !6, line: 3388, baseType: !842, size: 1216)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !6, line: 2824, size: 1216, elements: !843)
!843 = !{!844, !845, !846, !847, !848, !849}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !842, file: !6, line: 2825, baseType: !745, size: 896)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !842, file: !6, line: 2827, baseType: !631, size: 64, offset: 896)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !842, file: !6, line: 2828, baseType: !631, size: 64, offset: 960)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !842, file: !6, line: 2829, baseType: !631, size: 64, offset: 1024)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !842, file: !6, line: 2830, baseType: !631, size: 64, offset: 1088)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !842, file: !6, line: 2831, baseType: !631, size: 64, offset: 1152)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !633, file: !6, line: 3389, baseType: !851, size: 1024)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !6, line: 2850, size: 1024, elements: !852)
!852 = !{!853, !854, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !851, file: !6, line: 2851, baseType: !783, size: 960)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !851, file: !6, line: 2852, baseType: !558, size: 32, offset: 960)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !851, file: !6, line: 2853, baseType: !558, size: 32, offset: 992)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !633, file: !6, line: 3390, baseType: !857, size: 1024)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !6, line: 2857, size: 1024, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !857, file: !6, line: 2858, baseType: !783, size: 960)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !857, file: !6, line: 2859, baseType: !824, size: 64, offset: 960)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !633, file: !6, line: 3391, baseType: !862, size: 960)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !6, line: 2862, size: 960, elements: !863)
!863 = !{!864}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !862, file: !6, line: 2863, baseType: !783, size: 960)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !633, file: !6, line: 3392, baseType: !866, size: 1472)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !6, line: 3304, size: 1472, elements: !867)
!867 = !{!868}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !866, file: !6, line: 3305, baseType: !791, size: 1472)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !633, file: !6, line: 3393, baseType: !870, size: 1792)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !6, line: 3248, size: 1792, elements: !871)
!871 = !{!872, !873, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !870, file: !6, line: 3249, baseType: !791, size: 1472)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !870, file: !6, line: 3251, baseType: !874, size: 64, offset: 1472)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !876, line: 463, size: 1152, elements: !877)
!876 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!877 = !{!878, !881, !1195, !1196, !1310, !1313, !1314, !1315, !1316, !1317, !1318, !1342, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !875, file: !876, line: 464, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !876, line: 464, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !875, file: !876, line: 467, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !202, line: 374, size: 640, elements: !884)
!884 = !{!885, !1170, !1171, !1184, !1185, !1186, !1187, !1188, !1189, !1191, !1193, !1194}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !883, file: !202, line: 377, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !570, line: 111, baseType: !887)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !202, line: 217, size: 832, elements: !889)
!889 = !{!890, !1135, !1136, !1137, !1140, !1144, !1145, !1146, !1164, !1165, !1166, !1167, !1168, !1169}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !888, file: !202, line: 219, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !202, line: 151, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !202, line: 151, size: 128, elements: !894)
!894 = !{!895}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !893, file: !202, line: 151, baseType: !896, size: 128)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !202, line: 150, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !202, line: 150, size: 128, elements: !898)
!898 = !{!899, !900, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !897, file: !202, line: 150, baseType: !7, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !897, file: !202, line: 150, baseType: !7, size: 32, offset: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !897, file: !202, line: 150, baseType: !902, size: 64, offset: 64)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !903, size: 64, elements: !711)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !570, line: 108, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !202, line: 122, size: 512, elements: !906)
!906 = !{!907, !908, !909, !1127, !1128, !1129, !1130, !1131, !1132, !1133}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !905, file: !202, line: 124, baseType: !887, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !905, file: !202, line: 125, baseType: !887, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !905, file: !202, line: 131, baseType: !910, size: 64, offset: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !202, line: 128, size: 64, elements: !911)
!911 = !{!912, !1126}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !910, file: !202, line: 129, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !570, line: 66, baseType: !914)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !440, line: 143, size: 192, elements: !916)
!916 = !{!917, !1124, !1125}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !915, file: !440, line: 145, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !570, line: 69, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !440, line: 136, size: 192, elements: !921)
!921 = !{!922, !1122, !1123}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !920, file: !440, line: 137, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !570, line: 58, baseType: !924)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !440, line: 737, size: 768, elements: !926)
!926 = !{!927, !944, !977, !983, !988, !993, !1000, !1006, !1012, !1017, !1031, !1036, !1042, !1047, !1057, !1062, !1080, !1087, !1094, !1100, !1105, !1111, !1117}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !925, file: !440, line: 738, baseType: !928, size: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !440, line: 271, size: 256, elements: !929)
!929 = !{!930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !928, file: !440, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !928, file: !440, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !928, file: !440, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !928, file: !440, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !928, file: !440, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !928, file: !440, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !928, file: !440, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !928, file: !440, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !928, file: !440, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !928, file: !440, line: 312, baseType: !7, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !928, file: !440, line: 316, baseType: !737, size: 32, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !928, file: !440, line: 319, baseType: !7, size: 32, offset: 96)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !928, file: !440, line: 323, baseType: !887, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !928, file: !440, line: 327, baseType: !631, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !925, file: !440, line: 739, baseType: !945, size: 448)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !440, line: 350, size: 448, elements: !946)
!946 = !{!947, !975}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !945, file: !440, line: 353, baseType: !948, size: 384)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !440, line: 333, size: 384, elements: !949)
!949 = !{!950, !951, !958}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !948, file: !440, line: 336, baseType: !928, size: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !948, file: !440, line: 343, baseType: !952, size: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !433, line: 37, size: 128, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !953, file: !433, line: 39, baseType: !952, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !953, file: !433, line: 40, baseType: !957, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !948, file: !440, line: 344, baseType: !959, size: 64, offset: 320)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !433, line: 45, size: 320, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !960, file: !433, line: 47, baseType: !959, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !960, file: !433, line: 48, baseType: !964, size: 256, offset: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !6, line: 1883, size: 256, elements: !965)
!965 = !{!966, !968, !969, !974}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !964, file: !6, line: 1884, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !964, file: !6, line: 1885, baseType: !967, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !964, file: !6, line: 1891, baseType: !970, size: 64, offset: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !964, file: !6, line: 1891, size: 64, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !970, file: !6, line: 1891, baseType: !923, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !970, file: !6, line: 1891, baseType: !631, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !964, file: !6, line: 1892, baseType: !957, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !945, file: !440, line: 359, baseType: !976, size: 64, offset: 384)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 64, elements: !711)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !925, file: !440, line: 740, baseType: !978, size: 512)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !440, line: 365, size: 512, elements: !979)
!979 = !{!980, !981, !982}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !978, file: !440, line: 368, baseType: !948, size: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !978, file: !440, line: 373, baseType: !631, size: 64, offset: 384)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !978, file: !440, line: 374, baseType: !631, size: 64, offset: 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !925, file: !440, line: 741, baseType: !984, size: 576)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !440, line: 380, size: 576, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !984, file: !440, line: 383, baseType: !978, size: 512)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !984, file: !440, line: 389, baseType: !976, size: 64, offset: 512)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !925, file: !440, line: 742, baseType: !989, size: 320)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !440, line: 395, size: 320, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !989, file: !440, line: 397, baseType: !928, size: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !989, file: !440, line: 400, baseType: !913, size: 64, offset: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !925, file: !440, line: 743, baseType: !994, size: 448)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !440, line: 406, size: 448, elements: !995)
!995 = !{!996, !997, !998, !999}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !994, file: !440, line: 408, baseType: !928, size: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !994, file: !440, line: 412, baseType: !631, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !994, file: !440, line: 420, baseType: !631, size: 64, offset: 320)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !994, file: !440, line: 423, baseType: !913, size: 64, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !925, file: !440, line: 744, baseType: !1001, size: 384)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !440, line: 429, size: 384, elements: !1002)
!1002 = !{!1003, !1004, !1005}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1001, file: !440, line: 431, baseType: !928, size: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1001, file: !440, line: 434, baseType: !631, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1001, file: !440, line: 437, baseType: !913, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !925, file: !440, line: 745, baseType: !1007, size: 384)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !440, line: 443, size: 384, elements: !1008)
!1008 = !{!1009, !1010, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1007, file: !440, line: 445, baseType: !928, size: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1007, file: !440, line: 449, baseType: !631, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1007, file: !440, line: 453, baseType: !913, size: 64, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !925, file: !440, line: 746, baseType: !1013, size: 320)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !440, line: 459, size: 320, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1013, file: !440, line: 461, baseType: !928, size: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1013, file: !440, line: 464, baseType: !631, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !925, file: !440, line: 747, baseType: !1018, size: 768)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !440, line: 469, size: 768, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1023, !1024}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1018, file: !440, line: 471, baseType: !928, size: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1018, file: !440, line: 474, baseType: !7, size: 32, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1018, file: !440, line: 475, baseType: !7, size: 32, offset: 288)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1018, file: !440, line: 478, baseType: !631, size: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1018, file: !440, line: 481, baseType: !1025, size: 384, offset: 384)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1026, size: 384, elements: !711)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !6, line: 1917, size: 384, elements: !1027)
!1027 = !{!1028, !1029, !1030}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1026, file: !6, line: 1920, baseType: !964, size: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1026, file: !6, line: 1921, baseType: !631, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1026, file: !6, line: 1922, baseType: !737, size: 32, offset: 320)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !925, file: !440, line: 748, baseType: !1032, size: 320)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !440, line: 487, size: 320, elements: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1032, file: !440, line: 490, baseType: !928, size: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1032, file: !440, line: 494, baseType: !558, size: 32, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !925, file: !440, line: 749, baseType: !1037, size: 384)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !440, line: 500, size: 384, elements: !1038)
!1038 = !{!1039, !1040, !1041}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1037, file: !440, line: 502, baseType: !928, size: 256)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1037, file: !440, line: 506, baseType: !913, size: 64, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1037, file: !440, line: 510, baseType: !913, size: 64, offset: 320)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !925, file: !440, line: 750, baseType: !1043, size: 320)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !440, line: 529, size: 320, elements: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1043, file: !440, line: 531, baseType: !928, size: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1043, file: !440, line: 540, baseType: !913, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !925, file: !440, line: 751, baseType: !1048, size: 704)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !440, line: 546, size: 704, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1048, file: !440, line: 549, baseType: !978, size: 512)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1048, file: !440, line: 553, baseType: !563, size: 64, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1048, file: !440, line: 557, baseType: !557, size: 8, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1048, file: !440, line: 558, baseType: !557, size: 8, offset: 584)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1048, file: !440, line: 559, baseType: !557, size: 8, offset: 592)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1048, file: !440, line: 560, baseType: !557, size: 8, offset: 600)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1048, file: !440, line: 566, baseType: !976, size: 64, offset: 640)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !925, file: !440, line: 752, baseType: !1058, size: 384)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !440, line: 571, size: 384, elements: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1058, file: !440, line: 573, baseType: !989, size: 320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1058, file: !440, line: 577, baseType: !631, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !925, file: !440, line: 753, baseType: !1063, size: 576)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !440, line: 600, size: 576, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1070, !1079}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1063, file: !440, line: 602, baseType: !989, size: 320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1063, file: !440, line: 605, baseType: !631, size: 64, offset: 320)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1063, file: !440, line: 609, baseType: !1068, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1069, line: 46, baseType: !568)
!1069 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1063, file: !440, line: 612, baseType: !1071, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !440, line: 581, size: 320, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1072, file: !440, line: 583, baseType: !5, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1072, file: !440, line: 586, baseType: !631, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1072, file: !440, line: 589, baseType: !631, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1072, file: !440, line: 592, baseType: !631, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1072, file: !440, line: 595, baseType: !631, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1063, file: !440, line: 616, baseType: !913, size: 64, offset: 512)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !925, file: !440, line: 754, baseType: !1081, size: 512)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !440, line: 622, size: 512, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1081, file: !440, line: 624, baseType: !989, size: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1081, file: !440, line: 628, baseType: !631, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1081, file: !440, line: 632, baseType: !631, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1081, file: !440, line: 636, baseType: !631, size: 64, offset: 448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !925, file: !440, line: 755, baseType: !1088, size: 704)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !440, line: 642, size: 704, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1088, file: !440, line: 644, baseType: !1081, size: 512)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1088, file: !440, line: 648, baseType: !631, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1088, file: !440, line: 652, baseType: !631, size: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1088, file: !440, line: 653, baseType: !631, size: 64, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !925, file: !440, line: 756, baseType: !1095, size: 448)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !440, line: 663, size: 448, elements: !1096)
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1095, file: !440, line: 665, baseType: !989, size: 320)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1095, file: !440, line: 668, baseType: !631, size: 64, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1095, file: !440, line: 673, baseType: !631, size: 64, offset: 384)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !925, file: !440, line: 757, baseType: !1101, size: 384)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !440, line: 694, size: 384, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1101, file: !440, line: 696, baseType: !989, size: 320)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1101, file: !440, line: 699, baseType: !631, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !925, file: !440, line: 758, baseType: !1106, size: 384)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !440, line: 681, size: 384, elements: !1107)
!1107 = !{!1108, !1109, !1110}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1106, file: !440, line: 683, baseType: !928, size: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1106, file: !440, line: 686, baseType: !631, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1106, file: !440, line: 689, baseType: !631, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !925, file: !440, line: 759, baseType: !1112, size: 384)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !440, line: 707, size: 384, elements: !1113)
!1113 = !{!1114, !1115, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1112, file: !440, line: 709, baseType: !928, size: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1112, file: !440, line: 712, baseType: !631, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1112, file: !440, line: 712, baseType: !631, size: 64, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !925, file: !440, line: 760, baseType: !1118, size: 320)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !440, line: 718, size: 320, elements: !1119)
!1119 = !{!1120, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1118, file: !440, line: 720, baseType: !928, size: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1118, file: !440, line: 723, baseType: !631, size: 64, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !920, file: !440, line: 138, baseType: !919, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !920, file: !440, line: 139, baseType: !919, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !915, file: !440, line: 146, baseType: !918, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !915, file: !440, line: 152, baseType: !913, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !910, file: !202, line: 130, baseType: !787, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !905, file: !202, line: 134, baseType: !562, size: 64, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !905, file: !202, line: 137, baseType: !631, size: 64, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !905, file: !202, line: 138, baseType: !737, size: 32, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !905, file: !202, line: 142, baseType: !7, size: 32, offset: 352)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !905, file: !202, line: 144, baseType: !558, size: 32, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !905, file: !202, line: 145, baseType: !558, size: 32, offset: 416)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !905, file: !202, line: 146, baseType: !1134, size: 64, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !202, line: 119, baseType: !603)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !888, file: !202, line: 220, baseType: !891, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !888, file: !202, line: 223, baseType: !562, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !888, file: !202, line: 226, baseType: !1138, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !202, line: 185, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !888, file: !202, line: 229, baseType: !1141, size: 128, offset: 256)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1142, size: 128, elements: !587)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !202, line: 229, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !888, file: !202, line: 232, baseType: !887, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !888, file: !202, line: 233, baseType: !887, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !888, file: !202, line: 238, baseType: !1147, size: 64, offset: 512)
!1147 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !202, line: 235, size: 64, elements: !1148)
!1148 = !{!1149, !1155}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1147, file: !202, line: 236, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !202, line: 273, size: 128, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1151, file: !202, line: 275, baseType: !913, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1151, file: !202, line: 278, baseType: !913, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1147, file: !202, line: 237, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !202, line: 259, size: 320, elements: !1158)
!1158 = !{!1159, !1160, !1161, !1162, !1163}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1157, file: !202, line: 261, baseType: !787, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1157, file: !202, line: 262, baseType: !787, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1157, file: !202, line: 266, baseType: !787, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1157, file: !202, line: 267, baseType: !787, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1157, file: !202, line: 270, baseType: !558, size: 32, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !888, file: !202, line: 241, baseType: !1134, size: 64, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !888, file: !202, line: 244, baseType: !558, size: 32, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !888, file: !202, line: 247, baseType: !558, size: 32, offset: 672)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !888, file: !202, line: 250, baseType: !558, size: 32, offset: 704)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !888, file: !202, line: 253, baseType: !558, size: 32, offset: 736)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !888, file: !202, line: 256, baseType: !558, size: 32, offset: 768)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !883, file: !202, line: 378, baseType: !886, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !883, file: !202, line: 381, baseType: !1172, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !202, line: 282, baseType: !1174)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !202, line: 282, size: 128, elements: !1175)
!1175 = !{!1176}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1174, file: !202, line: 282, baseType: !1177, size: 128)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !202, line: 281, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !202, line: 281, size: 128, elements: !1179)
!1179 = !{!1180, !1181, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1178, file: !202, line: 281, baseType: !7, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1178, file: !202, line: 281, baseType: !7, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1178, file: !202, line: 281, baseType: !1183, size: 64, offset: 64)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, size: 64, elements: !711)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !883, file: !202, line: 384, baseType: !558, size: 32, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !883, file: !202, line: 387, baseType: !558, size: 32, offset: 224)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !883, file: !202, line: 390, baseType: !558, size: 32, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !883, file: !202, line: 394, baseType: !1172, size: 64, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !883, file: !202, line: 396, baseType: !201, size: 32, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !883, file: !202, line: 399, baseType: !1190, size: 64, offset: 416)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !587)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !883, file: !202, line: 402, baseType: !1192, size: 64, offset: 480)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !587)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !883, file: !202, line: 406, baseType: !558, size: 32, offset: 544)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !883, file: !202, line: 409, baseType: !558, size: 32, offset: 576)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !875, file: !876, line: 470, baseType: !914, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !875, file: !876, line: 473, baseType: !1197, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !826, line: 39, size: 1152, elements: !1199)
!1199 = !{!1200, !1250, !1263, !1275, !1276, !1287, !1288, !1292, !1293, !1294, !1295, !1296}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1198, file: !826, line: 41, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1202, line: 144, baseType: !1203)
!1202 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1202, line: 100, size: 896, elements: !1205)
!1205 = !{!1206, !1214, !1219, !1224, !1226, !1227, !1228, !1229, !1230, !1231, !1236, !1238, !1239, !1244, !1249}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1204, file: !1202, line: 102, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1202, line: 52, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1202, line: 47, baseType: !7)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1204, file: !1202, line: 105, baseType: !1215, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1202, line: 59, baseType: !1216)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!558, !1212, !1212}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1204, file: !1202, line: 108, baseType: !1220, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1202, line: 63, baseType: !1221)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !562}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1204, file: !1202, line: 111, baseType: !1225, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1204, file: !1202, line: 114, baseType: !1068, size: 64, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1204, file: !1202, line: 117, baseType: !1068, size: 64, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1204, file: !1202, line: 120, baseType: !1068, size: 64, offset: 384)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1204, file: !1202, line: 124, baseType: !7, size: 32, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1204, file: !1202, line: 128, baseType: !7, size: 32, offset: 480)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1204, file: !1202, line: 131, baseType: !1232, size: 64, offset: 512)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1202, line: 75, baseType: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!562, !1068, !1068}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1204, file: !1202, line: 132, baseType: !1237, size: 64, offset: 576)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1202, line: 78, baseType: !1221)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1204, file: !1202, line: 135, baseType: !562, size: 64, offset: 640)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1204, file: !1202, line: 136, baseType: !1240, size: 64, offset: 704)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1202, line: 82, baseType: !1241)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!562, !562, !1068, !1068}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1204, file: !1202, line: 137, baseType: !1245, size: 64, offset: 768)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1202, line: 83, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !562, !562}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1204, file: !1202, line: 141, baseType: !7, size: 32, offset: 832)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1198, file: !826, line: 48, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !440, line: 35, baseType: !1253)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !440, line: 35, size: 128, elements: !1254)
!1254 = !{!1255}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1253, file: !440, line: 35, baseType: !1256, size: 128)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !440, line: 33, baseType: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !440, line: 33, size: 128, elements: !1258)
!1258 = !{!1259, !1260, !1261}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1257, file: !440, line: 33, baseType: !7, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1257, file: !440, line: 33, baseType: !7, size: 32, offset: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1257, file: !440, line: 33, baseType: !1262, size: 64, offset: 64)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 64, elements: !711)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1198, file: !826, line: 51, baseType: !1264, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !6, line: 183, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !6, line: 183, size: 128, elements: !1267)
!1267 = !{!1268}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1266, file: !6, line: 183, baseType: !1269, size: 128)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !6, line: 182, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !6, line: 182, size: 128, elements: !1271)
!1271 = !{!1272, !1273, !1274}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1270, file: !6, line: 182, baseType: !7, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1270, file: !6, line: 182, baseType: !7, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1270, file: !6, line: 182, baseType: !976, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1198, file: !826, line: 54, baseType: !631, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1198, file: !826, line: 57, baseType: !1277, size: 128, offset: 256)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1278, line: 31, size: 128, elements: !1279)
!1278 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1277, file: !1278, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1277, file: !1278, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1277, file: !1278, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1277, file: !1278, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1277, file: !1278, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1277, file: !1278, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1277, file: !1278, line: 56, baseType: !569, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1198, file: !826, line: 60, baseType: !1277, size: 128, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1198, file: !826, line: 64, baseType: !1289, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1291, line: 33, flags: DIFlagFwdDecl)
!1291 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1198, file: !826, line: 67, baseType: !631, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1198, file: !826, line: 73, baseType: !1201, size: 64, offset: 640)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1198, file: !826, line: 77, baseType: !569, size: 64, offset: 704)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1198, file: !826, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1198, file: !826, line: 82, baseType: !1297, size: 320, offset: 832)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !433, line: 62, size: 320, elements: !1298)
!1298 = !{!1299, !1305, !1306, !1307, !1308, !1309}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1297, file: !433, line: 63, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !433, line: 56, size: 128, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1301, file: !433, line: 57, baseType: !1300, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1301, file: !433, line: 58, baseType: !710, size: 8, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1297, file: !433, line: 64, baseType: !7, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1297, file: !433, line: 66, baseType: !7, size: 32, offset: 96)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1297, file: !433, line: 68, baseType: !557, size: 8, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1297, file: !433, line: 70, baseType: !952, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1297, file: !433, line: 71, baseType: !959, size: 64, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !875, file: !876, line: 476, baseType: !1311, size: 64, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !876, line: 476, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !875, file: !876, line: 479, baseType: !1201, size: 64, offset: 320)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !875, file: !876, line: 484, baseType: !631, size: 64, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !875, file: !876, line: 488, baseType: !631, size: 64, offset: 448)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !875, file: !876, line: 493, baseType: !631, size: 64, offset: 512)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !875, file: !876, line: 496, baseType: !631, size: 64, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !875, file: !876, line: 501, baseType: !1319, size: 64, offset: 640)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !213, line: 2355, size: 576, elements: !1321)
!1321 = !{!1322, !1325, !1326, !1327, !1328, !1330, !1331, !1336, !1337, !1338, !1339, !1340, !1341}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1320, file: !213, line: 2356, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !213, line: 2356, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1320, file: !213, line: 2357, baseType: !563, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1320, file: !213, line: 2358, baseType: !558, size: 32, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1320, file: !213, line: 2359, baseType: !558, size: 32, offset: 160)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1320, file: !213, line: 2360, baseType: !1329, size: 128, offset: 192)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 128, elements: !612)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1320, file: !213, line: 2364, baseType: !558, size: 32, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1320, file: !213, line: 2367, baseType: !1332, size: 128, offset: 384)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !213, line: 2349, size: 128, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1332, file: !213, line: 2351, baseType: !787, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1332, file: !213, line: 2352, baseType: !603, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1320, file: !213, line: 2371, baseType: !212, size: 32, offset: 512)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1320, file: !213, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1320, file: !213, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1320, file: !213, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1320, file: !213, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1320, file: !213, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !875, file: !876, line: 504, baseType: !1343, size: 64, offset: 704)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !876, line: 504, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !875, file: !876, line: 507, baseType: !1201, size: 64, offset: 768)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !875, file: !876, line: 510, baseType: !558, size: 32, offset: 832)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !875, file: !876, line: 513, baseType: !558, size: 32, offset: 864)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !875, file: !876, line: 516, baseType: !737, size: 32, offset: 896)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !875, file: !876, line: 519, baseType: !737, size: 32, offset: 928)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !875, file: !876, line: 522, baseType: !7, size: 32, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !875, file: !876, line: 523, baseType: !7, size: 32, offset: 992)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !875, file: !876, line: 528, baseType: !563, size: 64, offset: 1024)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !875, file: !876, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !875, file: !876, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !875, file: !876, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !875, file: !876, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !875, file: !876, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !875, file: !876, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !875, file: !876, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !875, file: !876, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !875, file: !876, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !875, file: !876, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !875, file: !876, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !875, file: !876, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !875, file: !876, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !875, file: !876, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !875, file: !876, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !875, file: !876, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !870, file: !6, line: 3254, baseType: !631, size: 64, offset: 1536)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !870, file: !6, line: 3257, baseType: !631, size: 64, offset: 1600)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !870, file: !6, line: 3258, baseType: !631, size: 64, offset: 1664)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !870, file: !6, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !870, file: !6, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !870, file: !6, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !870, file: !6, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !870, file: !6, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !870, file: !6, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !870, file: !6, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !870, file: !6, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !870, file: !6, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !870, file: !6, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !870, file: !6, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !870, file: !6, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !870, file: !6, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !870, file: !6, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !870, file: !6, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !870, file: !6, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !870, file: !6, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !870, file: !6, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !6, line: 3394, baseType: !1391, size: 1344)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !6, line: 2279, size: 1344, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1418, !1419, !1420, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1391, file: !6, line: 2280, baseType: !669, size: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1391, file: !6, line: 2281, baseType: !631, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1391, file: !6, line: 2282, baseType: !631, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1391, file: !6, line: 2283, baseType: !631, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1391, file: !6, line: 2284, baseType: !631, size: 64, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1391, file: !6, line: 2285, baseType: !7, size: 32, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1391, file: !6, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1391, file: !6, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1391, file: !6, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1391, file: !6, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1391, file: !6, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1391, file: !6, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1391, file: !6, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1391, file: !6, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1391, file: !6, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1391, file: !6, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1391, file: !6, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1391, file: !6, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1391, file: !6, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1391, file: !6, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1391, file: !6, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1391, file: !6, line: 2305, baseType: !7, size: 32, offset: 512)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1391, file: !6, line: 2306, baseType: !1416, size: 32, offset: 544)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1417, line: 31, baseType: !558)
!1417 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1391, file: !6, line: 2307, baseType: !631, size: 64, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1391, file: !6, line: 2308, baseType: !631, size: 64, offset: 640)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1391, file: !6, line: 2314, baseType: !1421, size: 64, offset: 704)
!1421 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !6, line: 2309, size: 64, elements: !1422)
!1422 = !{!1423, !1424, !1425}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1421, file: !6, line: 2310, baseType: !558, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1421, file: !6, line: 2311, baseType: !563, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1421, file: !6, line: 2312, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !6, line: 2277, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1391, file: !6, line: 2315, baseType: !631, size: 64, offset: 768)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1391, file: !6, line: 2316, baseType: !631, size: 64, offset: 832)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1391, file: !6, line: 2317, baseType: !631, size: 64, offset: 896)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1391, file: !6, line: 2318, baseType: !631, size: 64, offset: 960)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1391, file: !6, line: 2319, baseType: !631, size: 64, offset: 1024)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1391, file: !6, line: 2320, baseType: !631, size: 64, offset: 1088)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1391, file: !6, line: 2321, baseType: !631, size: 64, offset: 1152)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1391, file: !6, line: 2322, baseType: !631, size: 64, offset: 1216)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1391, file: !6, line: 2324, baseType: !1437, size: 64, offset: 1280)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !6, line: 2324, flags: DIFlagFwdDecl)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !633, file: !6, line: 3395, baseType: !1440, size: 320)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !6, line: 1469, size: 320, elements: !1441)
!1441 = !{!1442, !1443, !1444}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1440, file: !6, line: 1470, baseType: !669, size: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1440, file: !6, line: 1471, baseType: !631, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1440, file: !6, line: 1472, baseType: !631, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !633, file: !6, line: 3396, baseType: !1446, size: 320)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !6, line: 1482, size: 320, elements: !1447)
!1447 = !{!1448, !1449, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1446, file: !6, line: 1483, baseType: !669, size: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1446, file: !6, line: 1484, baseType: !558, size: 32, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1446, file: !6, line: 1485, baseType: !976, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !633, file: !6, line: 3397, baseType: !1452, size: 384)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !6, line: 1829, size: 384, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1457}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1452, file: !6, line: 1830, baseType: !669, size: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1452, file: !6, line: 1831, baseType: !737, size: 32, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1452, file: !6, line: 1832, baseType: !631, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1452, file: !6, line: 1835, baseType: !976, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !633, file: !6, line: 3398, baseType: !1459, size: 704)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !6, line: 1898, size: 704, elements: !1460)
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1470}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1459, file: !6, line: 1899, baseType: !669, size: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1459, file: !6, line: 1902, baseType: !631, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1459, file: !6, line: 1905, baseType: !923, size: 64, offset: 256)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1459, file: !6, line: 1908, baseType: !7, size: 32, offset: 320)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1459, file: !6, line: 1911, baseType: !1466, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !826, line: 117, size: 128, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1467, file: !826, line: 120, baseType: !1277, size: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1459, file: !6, line: 1914, baseType: !964, size: 256, offset: 448)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !633, file: !6, line: 3399, baseType: !1472, size: 704)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !6, line: 2008, size: 704, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1472, file: !6, line: 2009, baseType: !669, size: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1472, file: !6, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1472, file: !6, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1472, file: !6, line: 2014, baseType: !737, size: 32, offset: 224)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1472, file: !6, line: 2016, baseType: !631, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1472, file: !6, line: 2017, baseType: !1264, size: 64, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1472, file: !6, line: 2019, baseType: !631, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1472, file: !6, line: 2020, baseType: !631, size: 64, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1472, file: !6, line: 2021, baseType: !631, size: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1472, file: !6, line: 2022, baseType: !631, size: 64, offset: 576)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1472, file: !6, line: 2023, baseType: !631, size: 64, offset: 640)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !633, file: !6, line: 3400, baseType: !1486, size: 832)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !6, line: 2430, size: 832, elements: !1487)
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1486, file: !6, line: 2431, baseType: !669, size: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1486, file: !6, line: 2433, baseType: !631, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1486, file: !6, line: 2434, baseType: !631, size: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1486, file: !6, line: 2435, baseType: !631, size: 64, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1486, file: !6, line: 2436, baseType: !631, size: 64, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1486, file: !6, line: 2437, baseType: !1264, size: 64, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1486, file: !6, line: 2438, baseType: !631, size: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1486, file: !6, line: 2440, baseType: !631, size: 64, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1486, file: !6, line: 2441, baseType: !631, size: 64, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1486, file: !6, line: 2443, baseType: !1498, size: 128, offset: 704)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !6, line: 182, baseType: !1499)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !6, line: 182, size: 128, elements: !1500)
!1500 = !{!1501}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1499, file: !6, line: 182, baseType: !1269, size: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !633, file: !6, line: 3401, baseType: !1503, size: 320)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !6, line: 3327, size: 320, elements: !1504)
!1504 = !{!1505, !1506, !1513}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1503, file: !6, line: 3329, baseType: !669, size: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1503, file: !6, line: 3330, baseType: !1507, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !6, line: 3320, size: 192, elements: !1509)
!1509 = !{!1510, !1511, !1512}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1508, file: !6, line: 3322, baseType: !1507, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1508, file: !6, line: 3323, baseType: !1507, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1508, file: !6, line: 3324, baseType: !631, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1503, file: !6, line: 3331, baseType: !1507, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !633, file: !6, line: 3402, baseType: !1515, size: 256)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !6, line: 1540, size: 256, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1515, file: !6, line: 1541, baseType: !669, size: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1515, file: !6, line: 1542, baseType: !1519, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !6, line: 1538, baseType: !1521)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !6, line: 1538, size: 192, elements: !1522)
!1522 = !{!1523}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1521, file: !6, line: 1538, baseType: !1524, size: 192)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !6, line: 1537, baseType: !1525)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !6, line: 1537, size: 192, elements: !1526)
!1526 = !{!1527, !1528, !1529}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1525, file: !6, line: 1537, baseType: !7, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1525, file: !6, line: 1537, baseType: !7, size: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1525, file: !6, line: 1537, baseType: !1530, size: 128, offset: 64)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1531, size: 128, elements: !711)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !6, line: 1535, baseType: !1532)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !6, line: 1532, size: 128, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1532, file: !6, line: 1533, baseType: !631, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1532, file: !6, line: 1534, baseType: !631, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !633, file: !6, line: 3403, baseType: !1537, size: 512)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !6, line: 1938, size: 512, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1548, !1549, !1550}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1537, file: !6, line: 1939, baseType: !669, size: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1537, file: !6, line: 1940, baseType: !737, size: 32, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1537, file: !6, line: 1941, baseType: !217, size: 32, offset: 224)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1537, file: !6, line: 1946, baseType: !1543, size: 32, offset: 256)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !6, line: 1942, size: 32, elements: !1544)
!1544 = !{!1545, !1546, !1547}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1543, file: !6, line: 1943, baseType: !235, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1543, file: !6, line: 1944, baseType: !242, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1543, file: !6, line: 1945, baseType: !5, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1537, file: !6, line: 1950, baseType: !913, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1537, file: !6, line: 1951, baseType: !913, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1537, file: !6, line: 1953, baseType: !976, size: 64, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !633, file: !6, line: 3404, baseType: !1552, size: 1664)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !6, line: 3337, size: 1664, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1552, file: !6, line: 3338, baseType: !669, size: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1552, file: !6, line: 3341, baseType: !1556, size: 1472, offset: 192)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1557, line: 410, size: 1472, elements: !1558)
!1557 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1556, file: !1557, line: 412, baseType: !558, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1556, file: !1557, line: 413, baseType: !558, size: 32, offset: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1556, file: !1557, line: 414, baseType: !558, size: 32, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1556, file: !1557, line: 415, baseType: !558, size: 32, offset: 96)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1556, file: !1557, line: 416, baseType: !558, size: 32, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1556, file: !1557, line: 417, baseType: !558, size: 32, offset: 160)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1556, file: !1557, line: 418, baseType: !557, size: 8, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1556, file: !1557, line: 419, baseType: !557, size: 8, offset: 200)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1556, file: !1557, line: 420, baseType: !1568, size: 8, offset: 208)
!1568 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1556, file: !1557, line: 421, baseType: !1568, size: 8, offset: 216)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1556, file: !1557, line: 422, baseType: !1568, size: 8, offset: 224)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1556, file: !1557, line: 423, baseType: !1568, size: 8, offset: 232)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1556, file: !1557, line: 424, baseType: !1568, size: 8, offset: 240)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1556, file: !1557, line: 425, baseType: !1568, size: 8, offset: 248)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1556, file: !1557, line: 426, baseType: !1568, size: 8, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1556, file: !1557, line: 427, baseType: !1568, size: 8, offset: 264)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1556, file: !1557, line: 428, baseType: !1568, size: 8, offset: 272)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1556, file: !1557, line: 429, baseType: !1568, size: 8, offset: 280)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1556, file: !1557, line: 430, baseType: !1568, size: 8, offset: 288)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1556, file: !1557, line: 431, baseType: !1568, size: 8, offset: 296)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1556, file: !1557, line: 432, baseType: !1568, size: 8, offset: 304)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1556, file: !1557, line: 433, baseType: !1568, size: 8, offset: 312)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1556, file: !1557, line: 434, baseType: !1568, size: 8, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1556, file: !1557, line: 435, baseType: !1568, size: 8, offset: 328)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1556, file: !1557, line: 436, baseType: !1568, size: 8, offset: 336)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1556, file: !1557, line: 437, baseType: !1568, size: 8, offset: 344)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1556, file: !1557, line: 438, baseType: !1568, size: 8, offset: 352)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1556, file: !1557, line: 439, baseType: !1568, size: 8, offset: 360)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1556, file: !1557, line: 440, baseType: !1568, size: 8, offset: 368)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1556, file: !1557, line: 441, baseType: !1568, size: 8, offset: 376)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1556, file: !1557, line: 442, baseType: !1568, size: 8, offset: 384)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1556, file: !1557, line: 443, baseType: !1568, size: 8, offset: 392)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1556, file: !1557, line: 444, baseType: !1568, size: 8, offset: 400)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1556, file: !1557, line: 445, baseType: !1568, size: 8, offset: 408)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1556, file: !1557, line: 446, baseType: !1568, size: 8, offset: 416)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1556, file: !1557, line: 447, baseType: !1568, size: 8, offset: 424)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1556, file: !1557, line: 448, baseType: !1568, size: 8, offset: 432)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1556, file: !1557, line: 449, baseType: !1568, size: 8, offset: 440)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1556, file: !1557, line: 450, baseType: !1568, size: 8, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1556, file: !1557, line: 451, baseType: !1568, size: 8, offset: 456)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1556, file: !1557, line: 452, baseType: !1568, size: 8, offset: 464)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1556, file: !1557, line: 453, baseType: !1568, size: 8, offset: 472)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1556, file: !1557, line: 454, baseType: !1568, size: 8, offset: 480)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1556, file: !1557, line: 455, baseType: !1568, size: 8, offset: 488)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1556, file: !1557, line: 456, baseType: !1568, size: 8, offset: 496)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1556, file: !1557, line: 457, baseType: !1568, size: 8, offset: 504)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1556, file: !1557, line: 458, baseType: !1568, size: 8, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1556, file: !1557, line: 459, baseType: !1568, size: 8, offset: 520)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1556, file: !1557, line: 460, baseType: !1568, size: 8, offset: 528)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1556, file: !1557, line: 461, baseType: !1568, size: 8, offset: 536)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1556, file: !1557, line: 462, baseType: !1568, size: 8, offset: 544)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1556, file: !1557, line: 463, baseType: !1568, size: 8, offset: 552)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1556, file: !1557, line: 464, baseType: !1568, size: 8, offset: 560)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1556, file: !1557, line: 465, baseType: !1568, size: 8, offset: 568)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1556, file: !1557, line: 466, baseType: !1568, size: 8, offset: 576)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1556, file: !1557, line: 467, baseType: !1568, size: 8, offset: 584)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1556, file: !1557, line: 468, baseType: !1568, size: 8, offset: 592)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1556, file: !1557, line: 469, baseType: !1568, size: 8, offset: 600)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1556, file: !1557, line: 470, baseType: !1568, size: 8, offset: 608)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1556, file: !1557, line: 471, baseType: !1568, size: 8, offset: 616)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1556, file: !1557, line: 472, baseType: !1568, size: 8, offset: 624)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1556, file: !1557, line: 473, baseType: !1568, size: 8, offset: 632)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1556, file: !1557, line: 474, baseType: !1568, size: 8, offset: 640)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1556, file: !1557, line: 475, baseType: !1568, size: 8, offset: 648)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1556, file: !1557, line: 476, baseType: !1568, size: 8, offset: 656)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1556, file: !1557, line: 477, baseType: !1568, size: 8, offset: 664)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1556, file: !1557, line: 478, baseType: !1568, size: 8, offset: 672)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1556, file: !1557, line: 479, baseType: !1568, size: 8, offset: 680)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1556, file: !1557, line: 480, baseType: !1568, size: 8, offset: 688)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1556, file: !1557, line: 481, baseType: !1568, size: 8, offset: 696)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1556, file: !1557, line: 482, baseType: !1568, size: 8, offset: 704)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1556, file: !1557, line: 483, baseType: !1568, size: 8, offset: 712)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1556, file: !1557, line: 484, baseType: !1568, size: 8, offset: 720)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1556, file: !1557, line: 485, baseType: !1568, size: 8, offset: 728)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1556, file: !1557, line: 486, baseType: !1568, size: 8, offset: 736)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1556, file: !1557, line: 487, baseType: !1568, size: 8, offset: 744)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1556, file: !1557, line: 488, baseType: !1568, size: 8, offset: 752)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1556, file: !1557, line: 489, baseType: !1568, size: 8, offset: 760)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1556, file: !1557, line: 490, baseType: !1568, size: 8, offset: 768)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1556, file: !1557, line: 491, baseType: !1568, size: 8, offset: 776)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1556, file: !1557, line: 492, baseType: !1568, size: 8, offset: 784)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1556, file: !1557, line: 493, baseType: !1568, size: 8, offset: 792)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1556, file: !1557, line: 494, baseType: !1568, size: 8, offset: 800)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1556, file: !1557, line: 495, baseType: !1568, size: 8, offset: 808)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1556, file: !1557, line: 496, baseType: !1568, size: 8, offset: 816)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1556, file: !1557, line: 497, baseType: !1568, size: 8, offset: 824)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1556, file: !1557, line: 498, baseType: !1568, size: 8, offset: 832)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1556, file: !1557, line: 499, baseType: !1568, size: 8, offset: 840)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1556, file: !1557, line: 500, baseType: !1568, size: 8, offset: 848)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1556, file: !1557, line: 501, baseType: !1568, size: 8, offset: 856)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1556, file: !1557, line: 502, baseType: !1568, size: 8, offset: 864)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1556, file: !1557, line: 503, baseType: !1568, size: 8, offset: 872)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1556, file: !1557, line: 504, baseType: !1568, size: 8, offset: 880)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1556, file: !1557, line: 505, baseType: !1568, size: 8, offset: 888)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1556, file: !1557, line: 506, baseType: !1568, size: 8, offset: 896)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1556, file: !1557, line: 507, baseType: !1568, size: 8, offset: 904)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1556, file: !1557, line: 508, baseType: !1568, size: 8, offset: 912)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1556, file: !1557, line: 509, baseType: !1568, size: 8, offset: 920)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1556, file: !1557, line: 510, baseType: !1568, size: 8, offset: 928)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1556, file: !1557, line: 511, baseType: !1568, size: 8, offset: 936)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1556, file: !1557, line: 512, baseType: !1568, size: 8, offset: 944)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1556, file: !1557, line: 513, baseType: !1568, size: 8, offset: 952)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1556, file: !1557, line: 514, baseType: !1568, size: 8, offset: 960)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1556, file: !1557, line: 515, baseType: !1568, size: 8, offset: 968)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1556, file: !1557, line: 516, baseType: !1568, size: 8, offset: 976)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1556, file: !1557, line: 517, baseType: !1568, size: 8, offset: 984)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1556, file: !1557, line: 518, baseType: !1568, size: 8, offset: 992)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1556, file: !1557, line: 519, baseType: !1568, size: 8, offset: 1000)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1556, file: !1557, line: 520, baseType: !1568, size: 8, offset: 1008)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1556, file: !1557, line: 521, baseType: !1568, size: 8, offset: 1016)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1556, file: !1557, line: 522, baseType: !1568, size: 8, offset: 1024)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1556, file: !1557, line: 523, baseType: !1568, size: 8, offset: 1032)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1556, file: !1557, line: 524, baseType: !1568, size: 8, offset: 1040)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1556, file: !1557, line: 525, baseType: !1568, size: 8, offset: 1048)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1556, file: !1557, line: 526, baseType: !1568, size: 8, offset: 1056)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1556, file: !1557, line: 527, baseType: !1568, size: 8, offset: 1064)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1556, file: !1557, line: 528, baseType: !1568, size: 8, offset: 1072)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1556, file: !1557, line: 529, baseType: !1568, size: 8, offset: 1080)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1556, file: !1557, line: 530, baseType: !1568, size: 8, offset: 1088)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1556, file: !1557, line: 531, baseType: !1568, size: 8, offset: 1096)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1556, file: !1557, line: 532, baseType: !1568, size: 8, offset: 1104)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1556, file: !1557, line: 533, baseType: !1568, size: 8, offset: 1112)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1556, file: !1557, line: 534, baseType: !1568, size: 8, offset: 1120)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1556, file: !1557, line: 535, baseType: !1568, size: 8, offset: 1128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1556, file: !1557, line: 536, baseType: !1568, size: 8, offset: 1136)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1556, file: !1557, line: 537, baseType: !1568, size: 8, offset: 1144)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1556, file: !1557, line: 538, baseType: !1568, size: 8, offset: 1152)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1556, file: !1557, line: 539, baseType: !1568, size: 8, offset: 1160)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1556, file: !1557, line: 540, baseType: !1568, size: 8, offset: 1168)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1556, file: !1557, line: 541, baseType: !1568, size: 8, offset: 1176)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1556, file: !1557, line: 542, baseType: !1568, size: 8, offset: 1184)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1556, file: !1557, line: 543, baseType: !1568, size: 8, offset: 1192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1556, file: !1557, line: 544, baseType: !1568, size: 8, offset: 1200)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1556, file: !1557, line: 545, baseType: !1568, size: 8, offset: 1208)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1556, file: !1557, line: 546, baseType: !1568, size: 8, offset: 1216)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1556, file: !1557, line: 547, baseType: !1568, size: 8, offset: 1224)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1556, file: !1557, line: 548, baseType: !1568, size: 8, offset: 1232)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1556, file: !1557, line: 549, baseType: !1568, size: 8, offset: 1240)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1556, file: !1557, line: 550, baseType: !1568, size: 8, offset: 1248)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1556, file: !1557, line: 551, baseType: !1568, size: 8, offset: 1256)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1556, file: !1557, line: 552, baseType: !1568, size: 8, offset: 1264)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1556, file: !1557, line: 553, baseType: !1568, size: 8, offset: 1272)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1556, file: !1557, line: 554, baseType: !1568, size: 8, offset: 1280)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1556, file: !1557, line: 555, baseType: !1568, size: 8, offset: 1288)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1556, file: !1557, line: 556, baseType: !1568, size: 8, offset: 1296)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1556, file: !1557, line: 557, baseType: !1568, size: 8, offset: 1304)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1556, file: !1557, line: 558, baseType: !1568, size: 8, offset: 1312)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1556, file: !1557, line: 559, baseType: !1568, size: 8, offset: 1320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1556, file: !1557, line: 560, baseType: !1568, size: 8, offset: 1328)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1556, file: !1557, line: 561, baseType: !1568, size: 8, offset: 1336)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1556, file: !1557, line: 562, baseType: !1568, size: 8, offset: 1344)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1556, file: !1557, line: 563, baseType: !1568, size: 8, offset: 1352)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1556, file: !1557, line: 564, baseType: !1568, size: 8, offset: 1360)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1556, file: !1557, line: 565, baseType: !1568, size: 8, offset: 1368)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1556, file: !1557, line: 566, baseType: !1568, size: 8, offset: 1376)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1556, file: !1557, line: 567, baseType: !1568, size: 8, offset: 1384)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1556, file: !1557, line: 568, baseType: !1568, size: 8, offset: 1392)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1556, file: !1557, line: 569, baseType: !1568, size: 8, offset: 1400)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1556, file: !1557, line: 570, baseType: !1568, size: 8, offset: 1408)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1556, file: !1557, line: 571, baseType: !1568, size: 8, offset: 1416)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1556, file: !1557, line: 572, baseType: !1568, size: 8, offset: 1424)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1556, file: !1557, line: 573, baseType: !1568, size: 8, offset: 1432)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1556, file: !1557, line: 574, baseType: !1568, size: 8, offset: 1440)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !633, file: !6, line: 3405, baseType: !1724, size: 384)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !6, line: 3352, size: 384, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1724, file: !6, line: 3353, baseType: !669, size: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1724, file: !6, line: 3356, baseType: !1728, size: 192, offset: 192)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1557, line: 578, size: 192, elements: !1729)
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1728, file: !1557, line: 580, baseType: !558, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1728, file: !1557, line: 581, baseType: !558, size: 32, offset: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1728, file: !1557, line: 582, baseType: !558, size: 32, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1728, file: !1557, line: 583, baseType: !558, size: 32, offset: 96)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1728, file: !1557, line: 584, baseType: !557, size: 8, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1728, file: !1557, line: 585, baseType: !557, size: 8, offset: 136)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1728, file: !1557, line: 586, baseType: !557, size: 8, offset: 144)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1728, file: !1557, line: 587, baseType: !557, size: 8, offset: 152)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1728, file: !1557, line: 588, baseType: !557, size: 8, offset: 160)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1728, file: !1557, line: 589, baseType: !557, size: 8, offset: 168)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1728, file: !1557, line: 590, baseType: !557, size: 8, offset: 176)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type_brand_s", file: !3, line: 171, size: 128, elements: !1743)
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1742, file: !3, line: 173, baseType: !563, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1742, file: !3, line: 174, baseType: !558, size: 32, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_value", file: !566, line: 63, baseType: !567)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "cast_t", file: !3, line: 796, baseType: !1749)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cast", file: !3, line: 792, size: 128, elements: !1750)
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1749, file: !3, line: 794, baseType: !558, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1749, file: !3, line: 795, baseType: !923, size: 64, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !433, line: 30, baseType: !1756)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !6, line: 1893, baseType: !964)
!1758 = !{!1759, !1787, !1789, !1827, !1831, !1832, !1834, !1836, !1838, !1840, !1842, !1844, !1846, !1848, !1850, !1852}
!1759 = !DIGlobalVariableExpression(var: !1760, expr: !DIExpression())
!1760 = distinct !DIGlobalVariable(name: "pass_ipa_type_escape", scope: !2, file: !3, line: 2120, type: !1761, isLocal: false, isDefinition: true)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_ipa_opt_pass", file: !250, line: 202, size: 640, elements: !1762)
!1762 = !{!1763}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1761, file: !250, line: 204, baseType: !1764, size: 640)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !250, line: 114, size: 640, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1772, !1776, !1778, !1779, !1780, !1782, !1783, !1784, !1785, !1786}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1764, file: !250, line: 117, baseType: !249, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1764, file: !250, line: 121, baseType: !563, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1764, file: !250, line: 125, baseType: !1769, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!557}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1764, file: !250, line: 130, baseType: !1773, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!7}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1764, file: !250, line: 133, baseType: !1777, size: 64, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1764, file: !250, line: 136, baseType: !1777, size: 64, offset: 320)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1764, file: !250, line: 139, baseType: !558, size: 32, offset: 384)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1764, file: !250, line: 143, baseType: !1781, size: 32, offset: 416)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !257, line: 80, baseType: !256)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1764, file: !250, line: 146, baseType: !7, size: 32, offset: 448)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1764, file: !250, line: 147, baseType: !7, size: 32, offset: 480)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1764, file: !250, line: 148, baseType: !7, size: 32, offset: 512)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1764, file: !250, line: 151, baseType: !7, size: 32, offset: 544)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1764, file: !250, line: 152, baseType: !7, size: 32, offset: 576)
!1787 = !DIGlobalVariableExpression(var: !1788, expr: !DIExpression())
!1788 = distinct !DIGlobalVariable(name: "global_types_full_escape", scope: !2, file: !3, line: 95, type: !569, isLocal: true, isDefinition: true)
!1789 = !DIGlobalVariableExpression(var: !1790, expr: !DIExpression())
!1790 = distinct !DIGlobalVariable(name: "uid_to_addressof_down_map", scope: !2, file: !3, line: 114, type: !1791, isLocal: true, isDefinition: true)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree", file: !566, line: 128, baseType: !1792)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splay_tree_s", file: !566, line: 109, size: 448, elements: !1794)
!1794 = !{!1795, !1804, !1809, !1814, !1819, !1824, !1826}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1793, file: !566, line: 111, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_node", file: !566, line: 66, baseType: !1797)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splay_tree_node_s", file: !566, line: 96, size: 256, elements: !1799)
!1799 = !{!1800, !1801, !1802, !1803}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1798, file: !566, line: 98, baseType: !565, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1798, file: !566, line: 101, baseType: !1746, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1798, file: !566, line: 104, baseType: !1796, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !1798, file: !566, line: 105, baseType: !1796, size: 64, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !1793, file: !566, line: 114, baseType: !1805, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_compare_fn", file: !566, line: 70, baseType: !1806)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!558, !565, !565}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "delete_key", scope: !1793, file: !566, line: 117, baseType: !1810, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_delete_key_fn", file: !566, line: 74, baseType: !1811)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !565}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "delete_value", scope: !1793, file: !566, line: 120, baseType: !1815, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_delete_value_fn", file: !566, line: 78, baseType: !1816)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{null, !1746}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !1793, file: !566, line: 123, baseType: !1820, size: 64, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_allocate_fn", file: !566, line: 87, baseType: !1821)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!562, !558, !562}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "deallocate", scope: !1793, file: !566, line: 124, baseType: !1825, size: 64, offset: 320)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_deallocate_fn", file: !566, line: 93, baseType: !1246)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_data", scope: !1793, file: !566, line: 125, baseType: !562, size: 64, offset: 384)
!1827 = !DIGlobalVariableExpression(var: !1828, expr: !DIExpression())
!1828 = distinct !DIGlobalVariable(name: "visited_stmts", scope: !2, file: !3, line: 133, type: !1829, isLocal: true, isDefinition: true)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_set_t", file: !6, line: 5199, flags: DIFlagFwdDecl)
!1831 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1832 = !DIGlobalVariableExpression(var: !1833, expr: !DIExpression())
!1833 = distinct !DIGlobalVariable(name: "type_to_canon_type", scope: !2, file: !3, line: 109, type: !1791, isLocal: true, isDefinition: true)
!1834 = !DIGlobalVariableExpression(var: !1835, expr: !DIExpression())
!1835 = distinct !DIGlobalVariable(name: "all_canon_types", scope: !2, file: !3, line: 106, type: !1791, isLocal: true, isDefinition: true)
!1836 = !DIGlobalVariableExpression(var: !1837, expr: !DIExpression())
!1837 = distinct !DIGlobalVariable(name: "uid_to_canon_type", scope: !2, file: !3, line: 102, type: !1791, isLocal: true, isDefinition: true)
!1838 = !DIGlobalVariableExpression(var: !1839, expr: !DIExpression())
!1839 = distinct !DIGlobalVariable(name: "global_types_seen", scope: !2, file: !3, line: 98, type: !569, isLocal: true, isDefinition: true)
!1840 = !DIGlobalVariableExpression(var: !1841, expr: !DIExpression())
!1841 = distinct !DIGlobalVariable(name: "global_types_exposed_parameter", scope: !2, file: !3, line: 94, type: !569, isLocal: true, isDefinition: true)
!1842 = !DIGlobalVariableExpression(var: !1843, expr: !DIExpression())
!1843 = distinct !DIGlobalVariable(name: "visited_nodes", scope: !2, file: !3, line: 129, type: !1829, isLocal: true, isDefinition: true)
!1844 = !DIGlobalVariableExpression(var: !1845, expr: !DIExpression())
!1845 = distinct !DIGlobalVariable(name: "ipa_obstack", scope: !2, file: !3, line: 135, type: !593, isLocal: true, isDefinition: true)
!1846 = !DIGlobalVariableExpression(var: !1847, expr: !DIExpression())
!1847 = distinct !DIGlobalVariable(name: "been_there_done_that", scope: !2, file: !3, line: 64, type: !569, isLocal: true, isDefinition: true)
!1848 = !DIGlobalVariableExpression(var: !1849, expr: !DIExpression())
!1849 = distinct !DIGlobalVariable(name: "bitmap_tmp", scope: !2, file: !3, line: 65, type: !569, isLocal: true, isDefinition: true)
!1850 = !DIGlobalVariableExpression(var: !1851, expr: !DIExpression())
!1851 = distinct !DIGlobalVariable(name: "uid_to_addressof_up_map", scope: !2, file: !3, line: 119, type: !1791, isLocal: true, isDefinition: true)
!1852 = !DIGlobalVariableExpression(var: !1853, expr: !DIExpression())
!1853 = distinct !DIGlobalVariable(name: "uid_to_subtype_map", scope: !2, file: !3, line: 123, type: !1791, isLocal: true, isDefinition: true)
!1854 = !{i32 2, !"Dwarf Version", i32 4}
!1855 = !{i32 2, !"Debug Info Version", i32 3}
!1856 = !{i32 1, !"wchar_size", i32 4}
!1857 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1858 = distinct !DISubprogram(name: "vprintf", scope: !1859, file: !1859, line: 39, type: !1860, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1870)
!1859 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!558, !1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !563)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1865)
!1865 = !{!1866, !1867, !1868, !1869}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1864, file: !3, baseType: !7, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1864, file: !3, baseType: !7, size: 32, offset: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1864, file: !3, baseType: !562, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1864, file: !3, baseType: !562, size: 64, offset: 128)
!1870 = !{!1871, !1872}
!1871 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1858, file: !1859, line: 39, type: !1862)
!1872 = !DILocalVariable(name: "__arg", arg: 2, scope: !1858, file: !1859, line: 39, type: !1863)
!1873 = !DILocation(line: 0, scope: !1858)
!1874 = !DILocation(line: 41, column: 20, scope: !1858)
!1875 = !DILocation(line: 41, column: 10, scope: !1858)
!1876 = !DILocation(line: 41, column: 3, scope: !1858)
!1877 = distinct !DISubprogram(name: "getchar", scope: !1859, file: !1859, line: 47, type: !1878, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1880)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!558}
!1880 = !{}
!1881 = !DILocation(line: 49, column: 16, scope: !1877)
!1882 = !DILocation(line: 49, column: 10, scope: !1877)
!1883 = !DILocation(line: 49, column: 3, scope: !1877)
!1884 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1859, file: !1859, line: 56, type: !1885, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1938)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!558, !1887}
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1889, line: 7, baseType: !1890)
!1889 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1891, line: 49, size: 1728, elements: !1892)
!1891 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1908, !1910, !1911, !1912, !1915, !1917, !1918, !1919, !1922, !1924, !1927, !1930, !1931, !1932, !1933, !1934}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1890, file: !1891, line: 51, baseType: !558, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1890, file: !1891, line: 54, baseType: !560, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1890, file: !1891, line: 55, baseType: !560, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1890, file: !1891, line: 56, baseType: !560, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1890, file: !1891, line: 57, baseType: !560, size: 64, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1890, file: !1891, line: 58, baseType: !560, size: 64, offset: 320)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1890, file: !1891, line: 59, baseType: !560, size: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1890, file: !1891, line: 60, baseType: !560, size: 64, offset: 448)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1890, file: !1891, line: 61, baseType: !560, size: 64, offset: 512)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1890, file: !1891, line: 64, baseType: !560, size: 64, offset: 576)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1890, file: !1891, line: 65, baseType: !560, size: 64, offset: 640)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1890, file: !1891, line: 66, baseType: !560, size: 64, offset: 704)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1890, file: !1891, line: 68, baseType: !1906, size: 64, offset: 768)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1891, line: 36, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1890, file: !1891, line: 70, baseType: !1909, size: 64, offset: 832)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1890, file: !1891, line: 72, baseType: !558, size: 32, offset: 896)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1890, file: !1891, line: 73, baseType: !558, size: 32, offset: 928)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1890, file: !1891, line: 74, baseType: !1913, size: 64, offset: 960)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1914, line: 152, baseType: !603)
!1914 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1890, file: !1891, line: 77, baseType: !1916, size: 16, offset: 1024)
!1916 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1890, file: !1891, line: 78, baseType: !1568, size: 8, offset: 1040)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1890, file: !1891, line: 79, baseType: !710, size: 8, offset: 1048)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1890, file: !1891, line: 81, baseType: !1920, size: 64, offset: 1088)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1891, line: 43, baseType: null)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1890, file: !1891, line: 89, baseType: !1923, size: 64, offset: 1152)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1914, line: 153, baseType: !603)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1890, file: !1891, line: 91, baseType: !1925, size: 64, offset: 1216)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1891, line: 37, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1890, file: !1891, line: 92, baseType: !1928, size: 64, offset: 1280)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1891, line: 38, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1890, file: !1891, line: 93, baseType: !1909, size: 64, offset: 1344)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1890, file: !1891, line: 94, baseType: !562, size: 64, offset: 1408)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1890, file: !1891, line: 95, baseType: !1068, size: 64, offset: 1472)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1890, file: !1891, line: 96, baseType: !558, size: 32, offset: 1536)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1890, file: !1891, line: 98, baseType: !1935, size: 160, offset: 1568)
!1935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 160, elements: !1936)
!1936 = !{!1937}
!1937 = !DISubrange(count: 20)
!1938 = !{!1939}
!1939 = !DILocalVariable(name: "__fp", arg: 1, scope: !1884, file: !1859, line: 56, type: !1887)
!1940 = !DILocation(line: 0, scope: !1884)
!1941 = !DILocation(line: 58, column: 10, scope: !1884)
!1942 = !DILocation(line: 58, column: 3, scope: !1884)
!1943 = distinct !DISubprogram(name: "getc_unlocked", scope: !1859, file: !1859, line: 66, type: !1885, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1944)
!1944 = !{!1945}
!1945 = !DILocalVariable(name: "__fp", arg: 1, scope: !1943, file: !1859, line: 66, type: !1887)
!1946 = !DILocation(line: 0, scope: !1943)
!1947 = !DILocation(line: 68, column: 10, scope: !1943)
!1948 = !DILocation(line: 68, column: 3, scope: !1943)
!1949 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1859, file: !1859, line: 73, type: !1878, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1880)
!1950 = !DILocation(line: 75, column: 10, scope: !1949)
!1951 = !DILocation(line: 75, column: 3, scope: !1949)
!1952 = distinct !DISubprogram(name: "putchar", scope: !1859, file: !1859, line: 82, type: !1953, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!558, !558}
!1955 = !{!1956}
!1956 = !DILocalVariable(name: "__c", arg: 1, scope: !1952, file: !1859, line: 82, type: !558)
!1957 = !DILocation(line: 0, scope: !1952)
!1958 = !DILocation(line: 84, column: 21, scope: !1952)
!1959 = !DILocation(line: 84, column: 10, scope: !1952)
!1960 = !DILocation(line: 84, column: 3, scope: !1952)
!1961 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1859, file: !1859, line: 91, type: !1962, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1964)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!558, !558, !1887}
!1964 = !{!1965, !1966}
!1965 = !DILocalVariable(name: "__c", arg: 1, scope: !1961, file: !1859, line: 91, type: !558)
!1966 = !DILocalVariable(name: "__stream", arg: 2, scope: !1961, file: !1859, line: 91, type: !1887)
!1967 = !DILocation(line: 0, scope: !1961)
!1968 = !DILocation(line: 93, column: 10, scope: !1961)
!1969 = !DILocation(line: 93, column: 3, scope: !1961)
!1970 = distinct !DISubprogram(name: "putc_unlocked", scope: !1859, file: !1859, line: 101, type: !1962, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1971)
!1971 = !{!1972, !1973}
!1972 = !DILocalVariable(name: "__c", arg: 1, scope: !1970, file: !1859, line: 101, type: !558)
!1973 = !DILocalVariable(name: "__stream", arg: 2, scope: !1970, file: !1859, line: 101, type: !1887)
!1974 = !DILocation(line: 0, scope: !1970)
!1975 = !DILocation(line: 103, column: 10, scope: !1970)
!1976 = !DILocation(line: 103, column: 3, scope: !1970)
!1977 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1859, file: !1859, line: 108, type: !1953, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!1978 = !{!1979}
!1979 = !DILocalVariable(name: "__c", arg: 1, scope: !1977, file: !1859, line: 108, type: !558)
!1980 = !DILocation(line: 0, scope: !1977)
!1981 = !DILocation(line: 110, column: 10, scope: !1977)
!1982 = !DILocation(line: 110, column: 3, scope: !1977)
!1983 = distinct !DISubprogram(name: "getline", scope: !1859, file: !1859, line: 118, type: !1984, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1988)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!1986, !559, !1987, !1887}
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1914, line: 193, baseType: !603)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1988 = !{!1989, !1990, !1991}
!1989 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1983, file: !1859, line: 118, type: !559)
!1990 = !DILocalVariable(name: "__n", arg: 2, scope: !1983, file: !1859, line: 118, type: !1987)
!1991 = !DILocalVariable(name: "__stream", arg: 3, scope: !1983, file: !1859, line: 118, type: !1887)
!1992 = !DILocation(line: 0, scope: !1983)
!1993 = !DILocation(line: 120, column: 10, scope: !1983)
!1994 = !DILocation(line: 120, column: 3, scope: !1983)
!1995 = distinct !DISubprogram(name: "feof_unlocked", scope: !1859, file: !1859, line: 128, type: !1885, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1996)
!1996 = !{!1997}
!1997 = !DILocalVariable(name: "__stream", arg: 1, scope: !1995, file: !1859, line: 128, type: !1887)
!1998 = !DILocation(line: 0, scope: !1995)
!1999 = !DILocation(line: 130, column: 10, scope: !1995)
!2000 = !DILocation(line: 130, column: 3, scope: !1995)
!2001 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1859, file: !1859, line: 135, type: !1885, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2002)
!2002 = !{!2003}
!2003 = !DILocalVariable(name: "__stream", arg: 1, scope: !2001, file: !1859, line: 135, type: !1887)
!2004 = !DILocation(line: 0, scope: !2001)
!2005 = !DILocation(line: 137, column: 10, scope: !2001)
!2006 = !DILocation(line: 137, column: 3, scope: !2001)
!2007 = distinct !DISubprogram(name: "tolower", scope: !2008, file: !2008, line: 207, type: !1953, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2009)
!2008 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2009 = !{!2010}
!2010 = !DILocalVariable(name: "__c", arg: 1, scope: !2007, file: !2008, line: 207, type: !558)
!2011 = !DILocation(line: 0, scope: !2007)
!2012 = !DILocation(line: 209, column: 22, scope: !2007)
!2013 = !DILocation(line: 209, column: 39, scope: !2007)
!2014 = !DILocation(line: 209, column: 38, scope: !2007)
!2015 = !DILocation(line: 209, column: 37, scope: !2007)
!2016 = !DILocation(line: 209, column: 10, scope: !2007)
!2017 = !DILocation(line: 209, column: 3, scope: !2007)
!2018 = distinct !DISubprogram(name: "toupper", scope: !2008, file: !2008, line: 213, type: !1953, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2019)
!2019 = !{!2020}
!2020 = !DILocalVariable(name: "__c", arg: 1, scope: !2018, file: !2008, line: 213, type: !558)
!2021 = !DILocation(line: 0, scope: !2018)
!2022 = !DILocation(line: 215, column: 22, scope: !2018)
!2023 = !DILocation(line: 215, column: 39, scope: !2018)
!2024 = !DILocation(line: 215, column: 38, scope: !2018)
!2025 = !DILocation(line: 215, column: 37, scope: !2018)
!2026 = !DILocation(line: 215, column: 10, scope: !2018)
!2027 = !DILocation(line: 215, column: 3, scope: !2018)
!2028 = distinct !DISubprogram(name: "atoi", scope: !2029, file: !2029, line: 361, type: !2030, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!2029 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!558, !563}
!2032 = !{!2033}
!2033 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2028, file: !2029, line: 361, type: !563)
!2034 = !DILocation(line: 0, scope: !2028)
!2035 = !DILocation(line: 363, column: 16, scope: !2028)
!2036 = !DILocation(line: 363, column: 10, scope: !2028)
!2037 = !DILocation(line: 363, column: 3, scope: !2028)
!2038 = distinct !DISubprogram(name: "atol", scope: !2029, file: !2029, line: 366, type: !2039, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2041)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!603, !563}
!2041 = !{!2042}
!2042 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2038, file: !2029, line: 366, type: !563)
!2043 = !DILocation(line: 0, scope: !2038)
!2044 = !DILocation(line: 368, column: 10, scope: !2038)
!2045 = !DILocation(line: 368, column: 3, scope: !2038)
!2046 = distinct !DISubprogram(name: "atoll", scope: !2029, file: !2029, line: 373, type: !2047, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!2049, !563}
!2049 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2050 = !{!2051}
!2051 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2046, file: !2029, line: 373, type: !563)
!2052 = !DILocation(line: 0, scope: !2046)
!2053 = !DILocation(line: 375, column: 10, scope: !2046)
!2054 = !DILocation(line: 375, column: 3, scope: !2046)
!2055 = distinct !DISubprogram(name: "bsearch", scope: !2056, file: !2056, line: 20, type: !2057, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2060)
!2056 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!562, !1212, !1212, !1068, !1068, !2059}
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2029, line: 808, baseType: !1216)
!2060 = !{!2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070}
!2061 = !DILocalVariable(name: "__key", arg: 1, scope: !2055, file: !2056, line: 20, type: !1212)
!2062 = !DILocalVariable(name: "__base", arg: 2, scope: !2055, file: !2056, line: 20, type: !1212)
!2063 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2055, file: !2056, line: 20, type: !1068)
!2064 = !DILocalVariable(name: "__size", arg: 4, scope: !2055, file: !2056, line: 20, type: !1068)
!2065 = !DILocalVariable(name: "__compar", arg: 5, scope: !2055, file: !2056, line: 21, type: !2059)
!2066 = !DILocalVariable(name: "__l", scope: !2055, file: !2056, line: 23, type: !1068)
!2067 = !DILocalVariable(name: "__u", scope: !2055, file: !2056, line: 23, type: !1068)
!2068 = !DILocalVariable(name: "__idx", scope: !2055, file: !2056, line: 23, type: !1068)
!2069 = !DILocalVariable(name: "__p", scope: !2055, file: !2056, line: 24, type: !1212)
!2070 = !DILocalVariable(name: "__comparison", scope: !2055, file: !2056, line: 25, type: !558)
!2071 = !DILocation(line: 0, scope: !2055)
!2072 = !DILocation(line: 29, column: 3, scope: !2055)
!2073 = !DILocation(line: 27, column: 7, scope: !2055)
!2074 = !DILocation(line: 29, column: 14, scope: !2055)
!2075 = !DILocation(line: 31, column: 20, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2055, file: !2056, line: 30, column: 5)
!2077 = !DILocation(line: 31, column: 27, scope: !2076)
!2078 = !DILocation(line: 32, column: 56, scope: !2076)
!2079 = !DILocation(line: 32, column: 47, scope: !2076)
!2080 = !DILocation(line: 33, column: 22, scope: !2076)
!2081 = !DILocation(line: 34, column: 24, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2076, file: !2056, line: 34, column: 11)
!2083 = !DILocation(line: 34, column: 11, scope: !2076)
!2084 = !DILocation(line: 36, column: 29, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2082, file: !2056, line: 36, column: 16)
!2086 = !DILocation(line: 36, column: 16, scope: !2082)
!2087 = !DILocation(line: 37, column: 14, scope: !2085)
!2088 = distinct !{!2088, !2072, !2089}
!2089 = !DILocation(line: 40, column: 5, scope: !2055)
!2090 = !DILocation(line: 43, column: 1, scope: !2055)
!2091 = distinct !DISubprogram(name: "atof", scope: !2092, file: !2092, line: 25, type: !2093, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2096)
!2092 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!2095, !563}
!2095 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2096 = !{!2097}
!2097 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2091, file: !2092, line: 25, type: !563)
!2098 = !DILocation(line: 0, scope: !2091)
!2099 = !DILocation(line: 27, column: 10, scope: !2091)
!2100 = !DILocation(line: 27, column: 3, scope: !2091)
!2101 = distinct !DISubprogram(name: "strtoimax", scope: !2102, file: !2102, line: 324, type: !2103, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2102 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!2105, !1862, !2108, !558}
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2106, line: 101, baseType: !2107)
!2106 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1914, line: 72, baseType: !603)
!2108 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !559)
!2109 = !{!2110, !2111, !2112}
!2110 = !DILocalVariable(name: "nptr", arg: 1, scope: !2101, file: !2102, line: 324, type: !1862)
!2111 = !DILocalVariable(name: "endptr", arg: 2, scope: !2101, file: !2102, line: 324, type: !2108)
!2112 = !DILocalVariable(name: "base", arg: 3, scope: !2101, file: !2102, line: 324, type: !558)
!2113 = !DILocation(line: 0, scope: !2101)
!2114 = !DILocation(line: 327, column: 10, scope: !2101)
!2115 = !DILocation(line: 327, column: 3, scope: !2101)
!2116 = distinct !DISubprogram(name: "strtoumax", scope: !2102, file: !2102, line: 336, type: !2117, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2121)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!2119, !1862, !2108, !558}
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2106, line: 102, baseType: !2120)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1914, line: 73, baseType: !568)
!2121 = !{!2122, !2123, !2124}
!2122 = !DILocalVariable(name: "nptr", arg: 1, scope: !2116, file: !2102, line: 336, type: !1862)
!2123 = !DILocalVariable(name: "endptr", arg: 2, scope: !2116, file: !2102, line: 336, type: !2108)
!2124 = !DILocalVariable(name: "base", arg: 3, scope: !2116, file: !2102, line: 336, type: !558)
!2125 = !DILocation(line: 0, scope: !2116)
!2126 = !DILocation(line: 339, column: 10, scope: !2116)
!2127 = !DILocation(line: 339, column: 3, scope: !2116)
!2128 = distinct !DISubprogram(name: "wcstoimax", scope: !2102, file: !2102, line: 348, type: !2129, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!2105, !2131, !2135, !558}
!2131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2132)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2134)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2102, line: 34, baseType: !558)
!2135 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2136)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2138 = !{!2139, !2140, !2141}
!2139 = !DILocalVariable(name: "nptr", arg: 1, scope: !2128, file: !2102, line: 348, type: !2131)
!2140 = !DILocalVariable(name: "endptr", arg: 2, scope: !2128, file: !2102, line: 348, type: !2135)
!2141 = !DILocalVariable(name: "base", arg: 3, scope: !2128, file: !2102, line: 348, type: !558)
!2142 = !DILocation(line: 0, scope: !2128)
!2143 = !DILocation(line: 351, column: 10, scope: !2128)
!2144 = !DILocation(line: 351, column: 3, scope: !2128)
!2145 = distinct !DISubprogram(name: "wcstoumax", scope: !2102, file: !2102, line: 362, type: !2146, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2148)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!2119, !2131, !2135, !558}
!2148 = !{!2149, !2150, !2151}
!2149 = !DILocalVariable(name: "nptr", arg: 1, scope: !2145, file: !2102, line: 362, type: !2131)
!2150 = !DILocalVariable(name: "endptr", arg: 2, scope: !2145, file: !2102, line: 362, type: !2135)
!2151 = !DILocalVariable(name: "base", arg: 3, scope: !2145, file: !2102, line: 362, type: !558)
!2152 = !DILocation(line: 0, scope: !2145)
!2153 = !DILocation(line: 365, column: 10, scope: !2145)
!2154 = !DILocation(line: 365, column: 3, scope: !2145)
!2155 = distinct !DISubprogram(name: "stat", scope: !2156, file: !2156, line: 453, type: !2157, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2196)
!2156 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!558, !563, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2161, line: 46, size: 1152, elements: !2162)
!2161 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2162 = !{!2163, !2165, !2167, !2169, !2171, !2173, !2175, !2176, !2177, !2178, !2180, !2182, !2190, !2191, !2192}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2160, file: !2161, line: 48, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1914, line: 145, baseType: !568)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2160, file: !2161, line: 53, baseType: !2166, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1914, line: 148, baseType: !568)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2160, file: !2161, line: 61, baseType: !2168, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1914, line: 151, baseType: !568)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2160, file: !2161, line: 62, baseType: !2170, size: 32, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1914, line: 150, baseType: !7)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2160, file: !2161, line: 64, baseType: !2172, size: 32, offset: 224)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1914, line: 146, baseType: !7)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2160, file: !2161, line: 65, baseType: !2174, size: 32, offset: 256)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1914, line: 147, baseType: !7)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2160, file: !2161, line: 67, baseType: !558, size: 32, offset: 288)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2160, file: !2161, line: 69, baseType: !2164, size: 64, offset: 320)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2160, file: !2161, line: 74, baseType: !1913, size: 64, offset: 384)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2160, file: !2161, line: 78, baseType: !2179, size: 64, offset: 448)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1914, line: 174, baseType: !603)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2160, file: !2161, line: 80, baseType: !2181, size: 64, offset: 512)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1914, line: 179, baseType: !603)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2160, file: !2161, line: 91, baseType: !2183, size: 128, offset: 576)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2184, line: 10, size: 128, elements: !2185)
!2184 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2185 = !{!2186, !2188}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2183, file: !2184, line: 12, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1914, line: 160, baseType: !603)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2183, file: !2184, line: 16, baseType: !2189, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1914, line: 196, baseType: !603)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2160, file: !2161, line: 92, baseType: !2183, size: 128, offset: 704)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2160, file: !2161, line: 93, baseType: !2183, size: 128, offset: 832)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2160, file: !2161, line: 106, baseType: !2193, size: 192, offset: 960)
!2193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2189, size: 192, elements: !2194)
!2194 = !{!2195}
!2195 = !DISubrange(count: 3)
!2196 = !{!2197, !2198}
!2197 = !DILocalVariable(name: "__path", arg: 1, scope: !2155, file: !2156, line: 453, type: !563)
!2198 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2155, file: !2156, line: 453, type: !2159)
!2199 = !DILocation(line: 0, scope: !2155)
!2200 = !DILocation(line: 455, column: 10, scope: !2155)
!2201 = !DILocation(line: 455, column: 3, scope: !2155)
!2202 = distinct !DISubprogram(name: "lstat", scope: !2156, file: !2156, line: 460, type: !2157, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2203)
!2203 = !{!2204, !2205}
!2204 = !DILocalVariable(name: "__path", arg: 1, scope: !2202, file: !2156, line: 460, type: !563)
!2205 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2202, file: !2156, line: 460, type: !2159)
!2206 = !DILocation(line: 0, scope: !2202)
!2207 = !DILocation(line: 462, column: 10, scope: !2202)
!2208 = !DILocation(line: 462, column: 3, scope: !2202)
!2209 = distinct !DISubprogram(name: "fstat", scope: !2156, file: !2156, line: 467, type: !2210, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2212)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!558, !558, !2159}
!2212 = !{!2213, !2214}
!2213 = !DILocalVariable(name: "__fd", arg: 1, scope: !2209, file: !2156, line: 467, type: !558)
!2214 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2209, file: !2156, line: 467, type: !2159)
!2215 = !DILocation(line: 0, scope: !2209)
!2216 = !DILocation(line: 469, column: 10, scope: !2209)
!2217 = !DILocation(line: 469, column: 3, scope: !2209)
!2218 = distinct !DISubprogram(name: "fstatat", scope: !2156, file: !2156, line: 474, type: !2219, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!558, !558, !563, !2159, !558}
!2221 = !{!2222, !2223, !2224, !2225}
!2222 = !DILocalVariable(name: "__fd", arg: 1, scope: !2218, file: !2156, line: 474, type: !558)
!2223 = !DILocalVariable(name: "__filename", arg: 2, scope: !2218, file: !2156, line: 474, type: !563)
!2224 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2218, file: !2156, line: 474, type: !2159)
!2225 = !DILocalVariable(name: "__flag", arg: 4, scope: !2218, file: !2156, line: 474, type: !558)
!2226 = !DILocation(line: 0, scope: !2218)
!2227 = !DILocation(line: 477, column: 10, scope: !2218)
!2228 = !DILocation(line: 477, column: 3, scope: !2218)
!2229 = distinct !DISubprogram(name: "mknod", scope: !2156, file: !2156, line: 483, type: !2230, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!558, !563, !2170, !2164}
!2232 = !{!2233, !2234, !2235}
!2233 = !DILocalVariable(name: "__path", arg: 1, scope: !2229, file: !2156, line: 483, type: !563)
!2234 = !DILocalVariable(name: "__mode", arg: 2, scope: !2229, file: !2156, line: 483, type: !2170)
!2235 = !DILocalVariable(name: "__dev", arg: 3, scope: !2229, file: !2156, line: 483, type: !2164)
!2236 = !DILocation(line: 0, scope: !2229)
!2237 = !DILocation(line: 485, column: 10, scope: !2229)
!2238 = !DILocation(line: 485, column: 3, scope: !2229)
!2239 = distinct !DISubprogram(name: "mknodat", scope: !2156, file: !2156, line: 491, type: !2240, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!558, !558, !563, !2170, !2164}
!2242 = !{!2243, !2244, !2245, !2246}
!2243 = !DILocalVariable(name: "__fd", arg: 1, scope: !2239, file: !2156, line: 491, type: !558)
!2244 = !DILocalVariable(name: "__path", arg: 2, scope: !2239, file: !2156, line: 491, type: !563)
!2245 = !DILocalVariable(name: "__mode", arg: 3, scope: !2239, file: !2156, line: 491, type: !2170)
!2246 = !DILocalVariable(name: "__dev", arg: 4, scope: !2239, file: !2156, line: 491, type: !2164)
!2247 = !DILocation(line: 0, scope: !2239)
!2248 = !DILocation(line: 494, column: 10, scope: !2239)
!2249 = !DILocation(line: 494, column: 3, scope: !2239)
!2250 = distinct !DISubprogram(name: "stat64", scope: !2156, file: !2156, line: 502, type: !2251, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2273)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!558, !563, !2253}
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2161, line: 119, size: 1152, elements: !2255)
!2255 = !{!2256, !2257, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2269, !2270, !2271, !2272}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2254, file: !2161, line: 121, baseType: !2164, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2254, file: !2161, line: 123, baseType: !2258, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1914, line: 149, baseType: !568)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2254, file: !2161, line: 124, baseType: !2168, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2254, file: !2161, line: 125, baseType: !2170, size: 32, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2254, file: !2161, line: 132, baseType: !2172, size: 32, offset: 224)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2254, file: !2161, line: 133, baseType: !2174, size: 32, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2254, file: !2161, line: 135, baseType: !558, size: 32, offset: 288)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2254, file: !2161, line: 136, baseType: !2164, size: 64, offset: 320)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2254, file: !2161, line: 137, baseType: !1913, size: 64, offset: 384)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2254, file: !2161, line: 143, baseType: !2179, size: 64, offset: 448)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2254, file: !2161, line: 144, baseType: !2268, size: 64, offset: 512)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1914, line: 180, baseType: !603)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2254, file: !2161, line: 152, baseType: !2183, size: 128, offset: 576)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2254, file: !2161, line: 153, baseType: !2183, size: 128, offset: 704)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2254, file: !2161, line: 154, baseType: !2183, size: 128, offset: 832)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2254, file: !2161, line: 164, baseType: !2193, size: 192, offset: 960)
!2273 = !{!2274, !2275}
!2274 = !DILocalVariable(name: "__path", arg: 1, scope: !2250, file: !2156, line: 502, type: !563)
!2275 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2250, file: !2156, line: 502, type: !2253)
!2276 = !DILocation(line: 0, scope: !2250)
!2277 = !DILocation(line: 504, column: 10, scope: !2250)
!2278 = !DILocation(line: 504, column: 3, scope: !2250)
!2279 = distinct !DISubprogram(name: "lstat64", scope: !2156, file: !2156, line: 509, type: !2251, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2280)
!2280 = !{!2281, !2282}
!2281 = !DILocalVariable(name: "__path", arg: 1, scope: !2279, file: !2156, line: 509, type: !563)
!2282 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2279, file: !2156, line: 509, type: !2253)
!2283 = !DILocation(line: 0, scope: !2279)
!2284 = !DILocation(line: 511, column: 10, scope: !2279)
!2285 = !DILocation(line: 511, column: 3, scope: !2279)
!2286 = distinct !DISubprogram(name: "fstat64", scope: !2156, file: !2156, line: 516, type: !2287, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2289)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!558, !558, !2253}
!2289 = !{!2290, !2291}
!2290 = !DILocalVariable(name: "__fd", arg: 1, scope: !2286, file: !2156, line: 516, type: !558)
!2291 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2286, file: !2156, line: 516, type: !2253)
!2292 = !DILocation(line: 0, scope: !2286)
!2293 = !DILocation(line: 518, column: 10, scope: !2286)
!2294 = !DILocation(line: 518, column: 3, scope: !2286)
!2295 = distinct !DISubprogram(name: "fstatat64", scope: !2156, file: !2156, line: 523, type: !2296, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!558, !558, !563, !2253, !558}
!2298 = !{!2299, !2300, !2301, !2302}
!2299 = !DILocalVariable(name: "__fd", arg: 1, scope: !2295, file: !2156, line: 523, type: !558)
!2300 = !DILocalVariable(name: "__filename", arg: 2, scope: !2295, file: !2156, line: 523, type: !563)
!2301 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2295, file: !2156, line: 523, type: !2253)
!2302 = !DILocalVariable(name: "__flag", arg: 4, scope: !2295, file: !2156, line: 523, type: !558)
!2303 = !DILocation(line: 0, scope: !2295)
!2304 = !DILocation(line: 526, column: 10, scope: !2295)
!2305 = !DILocation(line: 526, column: 3, scope: !2295)
!2306 = distinct !DISubprogram(name: "ipa_type_escape_star_count_of_interesting_type", scope: !3, file: !3, line: 336, type: !2307, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2309)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!558, !631}
!2309 = !{!2310, !2311}
!2310 = !DILocalVariable(name: "type", arg: 1, scope: !2306, file: !3, line: 336, type: !631)
!2311 = !DILocalVariable(name: "count", scope: !2306, file: !3, line: 338, type: !558)
!2312 = !DILocation(line: 0, scope: !2306)
!2313 = !DILocation(line: 340, column: 8, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 340, column: 7)
!2315 = !DILocation(line: 340, column: 7, scope: !2306)
!2316 = !DILocation(line: 342, column: 10, scope: !2306)
!2317 = !DILocation(line: 343, column: 3, scope: !2306)
!2318 = !DILocation(line: 343, column: 10, scope: !2306)
!2319 = !DILocation(line: 345, column: 14, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 344, column: 5)
!2321 = !DILocation(line: 346, column: 12, scope: !2320)
!2322 = distinct !{!2322, !2317, !2323}
!2323 = !DILocation(line: 347, column: 5, scope: !2306)
!2324 = !DILocation(line: 350, column: 24, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 350, column: 7)
!2326 = !DILocation(line: 351, column: 7, scope: !2325)
!2327 = !DILocation(line: 351, column: 27, scope: !2325)
!2328 = !DILocation(line: 352, column: 7, scope: !2325)
!2329 = !DILocation(line: 352, column: 27, scope: !2325)
!2330 = !DILocation(line: 350, column: 7, scope: !2306)
!2331 = !DILocation(line: 356, column: 1, scope: !2306)
!2332 = distinct !DISubprogram(name: "ipa_type_escape_star_count_of_interesting_or_array_type", scope: !3, file: !3, line: 365, type: !2307, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2333)
!2333 = !{!2334, !2335}
!2334 = !DILocalVariable(name: "type", arg: 1, scope: !2332, file: !3, line: 365, type: !631)
!2335 = !DILocalVariable(name: "count", scope: !2332, file: !3, line: 367, type: !558)
!2336 = !DILocation(line: 0, scope: !2332)
!2337 = !DILocation(line: 369, column: 8, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 369, column: 7)
!2339 = !DILocation(line: 369, column: 7, scope: !2332)
!2340 = !DILocation(line: 371, column: 10, scope: !2332)
!2341 = !DILocation(line: 372, column: 3, scope: !2332)
!2342 = !DILocation(line: 372, column: 10, scope: !2332)
!2343 = !DILocation(line: 372, column: 52, scope: !2332)
!2344 = !DILocation(line: 372, column: 32, scope: !2332)
!2345 = !DILocation(line: 374, column: 14, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 373, column: 5)
!2347 = !DILocation(line: 375, column: 12, scope: !2346)
!2348 = distinct !{!2348, !2341, !2349}
!2349 = !DILocation(line: 376, column: 5, scope: !2332)
!2350 = !DILocation(line: 379, column: 24, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 379, column: 7)
!2352 = !DILocation(line: 380, column: 7, scope: !2351)
!2353 = !DILocation(line: 380, column: 27, scope: !2351)
!2354 = !DILocation(line: 381, column: 7, scope: !2351)
!2355 = !DILocation(line: 381, column: 27, scope: !2351)
!2356 = !DILocation(line: 379, column: 7, scope: !2332)
!2357 = !DILocation(line: 385, column: 1, scope: !2332)
!2358 = distinct !DISubprogram(name: "ipa_type_escape_type_contained_p", scope: !3, file: !3, line: 393, type: !2359, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!557, !631}
!2361 = !{!2362}
!2362 = !DILocalVariable(name: "type", arg: 1, scope: !2358, file: !3, line: 393, type: !631)
!2363 = !DILocation(line: 0, scope: !2358)
!2364 = !DILocation(line: 395, column: 8, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 395, column: 7)
!2366 = !DILocation(line: 395, column: 7, scope: !2358)
!2367 = !DILocation(line: 397, column: 25, scope: !2358)
!2368 = !DILocation(line: 398, column: 4, scope: !2358)
!2369 = !DILocation(line: 397, column: 11, scope: !2358)
!2370 = !DILocation(line: 397, column: 10, scope: !2358)
!2371 = !DILocation(line: 397, column: 3, scope: !2358)
!2372 = !DILocation(line: 399, column: 1, scope: !2358)
!2373 = distinct !DISubprogram(name: "get_canon_type_uid", scope: !3, file: !3, line: 322, type: !2374, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!558, !631, !557, !557}
!2376 = !{!2377, !2378, !2379}
!2377 = !DILocalVariable(name: "type", arg: 1, scope: !2373, file: !3, line: 322, type: !631)
!2378 = !DILocalVariable(name: "see_thru_ptrs", arg: 2, scope: !2373, file: !3, line: 322, type: !557)
!2379 = !DILocalVariable(name: "see_thru_arrays", arg: 3, scope: !2373, file: !3, line: 322, type: !557)
!2380 = !DILocation(line: 0, scope: !2373)
!2381 = !DILocation(line: 324, column: 10, scope: !2373)
!2382 = !DILocation(line: 325, column: 7, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 325, column: 7)
!2384 = !DILocation(line: 325, column: 7, scope: !2373)
!2385 = !DILocation(line: 326, column: 12, scope: !2383)
!2386 = !DILocation(line: 326, column: 5, scope: !2383)
!2387 = !DILocation(line: 0, scope: !2383)
!2388 = !DILocation(line: 328, column: 1, scope: !2373)
!2389 = distinct !DISubprogram(name: "ipa_type_escape_field_does_not_clobber_p", scope: !3, file: !3, line: 405, type: !2390, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!557, !631, !631}
!2392 = !{!2393, !2394, !2395, !2396, !2397}
!2393 = !DILocalVariable(name: "record_type", arg: 1, scope: !2389, file: !3, line: 405, type: !631)
!2394 = !DILocalVariable(name: "field_type", arg: 2, scope: !2389, file: !3, line: 405, type: !631)
!2395 = !DILocalVariable(name: "result", scope: !2389, file: !3, line: 407, type: !1796)
!2396 = !DILocalVariable(name: "uid", scope: !2389, file: !3, line: 408, type: !558)
!2397 = !DILocalVariable(name: "field_type_map", scope: !2398, file: !3, line: 451, type: !569)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 450, column: 5)
!2399 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 449, column: 7)
!2400 = !DILocation(line: 0, scope: !2389)
!2401 = !DILocation(line: 410, column: 8, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 410, column: 7)
!2403 = !DILocation(line: 410, column: 7, scope: !2389)
!2404 = !DILocation(line: 416, column: 17, scope: !2389)
!2405 = !DILocation(line: 417, column: 16, scope: !2389)
!2406 = !DILocation(line: 418, column: 3, scope: !2389)
!2407 = !DILocation(line: 418, column: 10, scope: !2389)
!2408 = !DILocation(line: 420, column: 21, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 419, column: 5)
!2410 = !DILocation(line: 421, column: 11, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 421, column: 11)
!2412 = !DILocation(line: 421, column: 11, scope: !2409)
!2413 = !DILocation(line: 422, column: 15, scope: !2411)
!2414 = distinct !{!2414, !2406, !2415}
!2415 = !DILocation(line: 438, column: 5, scope: !2389)
!2416 = !DILocation(line: 429, column: 29, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 429, column: 6)
!2418 = !DILocation(line: 430, column: 6, scope: !2417)
!2419 = !DILocation(line: 430, column: 32, scope: !2417)
!2420 = !DILocation(line: 429, column: 6, scope: !2411)
!2421 = !DILocation(line: 432, column: 6, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 431, column: 4)
!2423 = !DILocation(line: 0, scope: !2409)
!2424 = !DILocation(line: 432, column: 13, scope: !2422)
!2425 = !DILocation(line: 433, column: 22, scope: !2422)
!2426 = distinct !{!2426, !2421, !2425}
!2427 = !DILocation(line: 440, column: 17, scope: !2389)
!2428 = !DILocation(line: 443, column: 8, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 443, column: 7)
!2430 = !DILocation(line: 443, column: 7, scope: !2389)
!2431 = !DILocation(line: 446, column: 9, scope: !2389)
!2432 = !DILocation(line: 447, column: 31, scope: !2389)
!2433 = !DILocation(line: 447, column: 58, scope: !2389)
!2434 = !DILocation(line: 447, column: 12, scope: !2389)
!2435 = !DILocation(line: 449, column: 7, scope: !2399)
!2436 = !DILocation(line: 449, column: 7, scope: !2389)
!2437 = !DILocation(line: 451, column: 48, scope: !2398)
!2438 = !DILocation(line: 0, scope: !2398)
!2439 = !DILocation(line: 452, column: 13, scope: !2398)
!2440 = !DILocation(line: 455, column: 15, scope: !2398)
!2441 = !DILocation(line: 455, column: 14, scope: !2398)
!2442 = !DILocation(line: 460, column: 1, scope: !2389)
!2443 = distinct !DISubprogram(name: "get_canon_type", scope: !3, file: !3, line: 295, type: !2444, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!631, !631, !557, !557}
!2446 = !{!2447, !2448, !2449, !2450}
!2447 = !DILocalVariable(name: "type", arg: 1, scope: !2443, file: !3, line: 295, type: !631)
!2448 = !DILocalVariable(name: "see_thru_ptrs", arg: 2, scope: !2443, file: !3, line: 295, type: !557)
!2449 = !DILocalVariable(name: "see_thru_arrays", arg: 3, scope: !2443, file: !3, line: 295, type: !557)
!2450 = !DILocalVariable(name: "result", scope: !2443, file: !3, line: 297, type: !1796)
!2451 = !DILocation(line: 0, scope: !2443)
!2452 = !DILocation(line: 299, column: 8, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 299, column: 7)
!2454 = !DILocation(line: 299, column: 13, scope: !2453)
!2455 = !DILocation(line: 299, column: 17, scope: !2453)
!2456 = !DILocation(line: 299, column: 7, scope: !2443)
!2457 = !DILocation(line: 302, column: 10, scope: !2443)
!2458 = !DILocation(line: 303, column: 7, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 303, column: 7)
!2460 = !DILocation(line: 303, column: 7, scope: !2443)
!2461 = !DILocation(line: 304, column: 5, scope: !2459)
!2462 = !DILocation(line: 304, column: 12, scope: !2459)
!2463 = !DILocation(line: 304, column: 54, scope: !2459)
!2464 = !DILocation(line: 304, column: 34, scope: !2459)
!2465 = !DILocation(line: 305, column: 14, scope: !2459)
!2466 = distinct !{!2466, !2461, !2465}
!2467 = !DILocation(line: 307, column: 12, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 307, column: 12)
!2469 = !DILocation(line: 307, column: 12, scope: !2459)
!2470 = !DILocation(line: 308, column: 5, scope: !2468)
!2471 = !DILocation(line: 308, column: 12, scope: !2468)
!2472 = !DILocation(line: 309, column: 9, scope: !2468)
!2473 = distinct !{!2473, !2470, !2472}
!2474 = !DILocation(line: 311, column: 31, scope: !2443)
!2475 = !DILocation(line: 302, column: 8, scope: !2443)
!2476 = !DILocation(line: 311, column: 51, scope: !2443)
!2477 = !DILocation(line: 311, column: 12, scope: !2443)
!2478 = !DILocation(line: 313, column: 14, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 313, column: 7)
!2480 = !DILocation(line: 313, column: 7, scope: !2443)
!2481 = !DILocation(line: 314, column: 12, scope: !2479)
!2482 = !DILocation(line: 314, column: 5, scope: !2479)
!2483 = !DILocation(line: 315, column: 30, scope: !2479)
!2484 = !DILocation(line: 315, column: 8, scope: !2479)
!2485 = !DILocation(line: 316, column: 1, scope: !2443)
!2486 = distinct !DISubprogram(name: "is_array_access_through_pointer_and_index", scope: !3, file: !3, line: 905, type: !2487, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2490)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!557, !5, !631, !631, !957, !957, !2489}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!2490 = !{!2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2504, !2505, !2510, !2511}
!2491 = !DILocalVariable(name: "code", arg: 1, scope: !2486, file: !3, line: 905, type: !5)
!2492 = !DILocalVariable(name: "op0", arg: 2, scope: !2486, file: !3, line: 905, type: !631)
!2493 = !DILocalVariable(name: "op1", arg: 3, scope: !2486, file: !3, line: 906, type: !631)
!2494 = !DILocalVariable(name: "base", arg: 4, scope: !2486, file: !3, line: 906, type: !957)
!2495 = !DILocalVariable(name: "offset", arg: 5, scope: !2486, file: !3, line: 906, type: !957)
!2496 = !DILocalVariable(name: "offset_cast_stmt", arg: 6, scope: !2486, file: !3, line: 907, type: !2489)
!2497 = !DILocalVariable(name: "before_cast", scope: !2486, file: !3, line: 909, type: !631)
!2498 = !DILocalVariable(name: "before_cast_def_stmt", scope: !2486, file: !3, line: 910, type: !923)
!2499 = !DILocalVariable(name: "op0_cast", scope: !2486, file: !3, line: 911, type: !1748)
!2500 = !DILocalVariable(name: "op1_cast", scope: !2486, file: !3, line: 911, type: !1748)
!2501 = !DILocalVariable(name: "op0type", scope: !2502, file: !3, line: 920, type: !631)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 919, column: 5)
!2503 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 918, column: 7)
!2504 = !DILocalVariable(name: "op1type", scope: !2502, file: !3, line: 921, type: !631)
!2505 = !DILocalVariable(name: "arg0", scope: !2506, file: !3, line: 1000, type: !631)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 999, column: 2)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 998, column: 11)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 993, column: 5)
!2509 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 992, column: 7)
!2510 = !DILocalVariable(name: "arg1", scope: !2506, file: !3, line: 1001, type: !631)
!2511 = !DILocalVariable(name: "unit_size", scope: !2506, file: !3, line: 1002, type: !631)
!2512 = !DILocation(line: 0, scope: !2486)
!2513 = !DILocation(line: 911, column: 3, scope: !2486)
!2514 = !DILocation(line: 913, column: 9, scope: !2486)
!2515 = !DILocation(line: 914, column: 11, scope: !2486)
!2516 = !DILocation(line: 915, column: 21, scope: !2486)
!2517 = !DILocation(line: 918, column: 12, scope: !2503)
!2518 = !DILocation(line: 918, column: 7, scope: !2486)
!2519 = !DILocation(line: 920, column: 22, scope: !2502)
!2520 = !DILocation(line: 0, scope: !2502)
!2521 = !DILocation(line: 921, column: 22, scope: !2502)
!2522 = !DILocation(line: 924, column: 11, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 924, column: 11)
!2524 = !DILocation(line: 924, column: 39, scope: !2523)
!2525 = !DILocation(line: 924, column: 36, scope: !2523)
!2526 = !DILocation(line: 924, column: 11, scope: !2502)
!2527 = !DILocation(line: 926, column: 10, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 925, column: 2)
!2529 = !DILocation(line: 927, column: 12, scope: !2528)
!2530 = !DILocation(line: 928, column: 2, scope: !2528)
!2531 = !DILocation(line: 929, column: 16, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 929, column: 16)
!2533 = !DILocation(line: 929, column: 44, scope: !2532)
!2534 = !DILocation(line: 929, column: 41, scope: !2532)
!2535 = !DILocation(line: 929, column: 16, scope: !2523)
!2536 = !DILocation(line: 931, column: 10, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 930, column: 2)
!2538 = !DILocation(line: 932, column: 12, scope: !2537)
!2539 = !DILocation(line: 973, column: 7, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 973, column: 7)
!2541 = !DILocation(line: 940, column: 32, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 938, column: 5)
!2543 = !DILocation(line: 940, column: 37, scope: !2542)
!2544 = !DILocation(line: 940, column: 16, scope: !2542)
!2545 = !DILocation(line: 940, column: 21, scope: !2542)
!2546 = !DILocation(line: 941, column: 32, scope: !2542)
!2547 = !DILocation(line: 941, column: 37, scope: !2542)
!2548 = !DILocation(line: 941, column: 16, scope: !2542)
!2549 = !DILocation(line: 941, column: 21, scope: !2542)
!2550 = !DILocation(line: 943, column: 23, scope: !2542)
!2551 = !DILocation(line: 943, column: 21, scope: !2542)
!2552 = !DILocation(line: 944, column: 7, scope: !2542)
!2553 = !DILocation(line: 946, column: 28, scope: !2542)
!2554 = !DILocation(line: 946, column: 7, scope: !2542)
!2555 = !DILocation(line: 948, column: 23, scope: !2542)
!2556 = !DILocation(line: 948, column: 21, scope: !2542)
!2557 = !DILocation(line: 949, column: 7, scope: !2542)
!2558 = !DILocation(line: 951, column: 28, scope: !2542)
!2559 = !DILocation(line: 951, column: 7, scope: !2542)
!2560 = !DILocation(line: 953, column: 20, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 953, column: 11)
!2562 = !DILocation(line: 953, column: 25, scope: !2561)
!2563 = !DILocation(line: 953, column: 30, scope: !2561)
!2564 = !DILocation(line: 953, column: 42, scope: !2561)
!2565 = !DILocation(line: 953, column: 47, scope: !2561)
!2566 = !DILocation(line: 953, column: 11, scope: !2542)
!2567 = !DILocation(line: 955, column: 10, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 954, column: 2)
!2569 = !DILocation(line: 956, column: 12, scope: !2568)
!2570 = !DILocation(line: 957, column: 33, scope: !2568)
!2571 = !DILocation(line: 957, column: 22, scope: !2568)
!2572 = !DILocation(line: 958, column: 2, scope: !2568)
!2573 = !DILocation(line: 959, column: 30, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 959, column: 16)
!2575 = !DILocation(line: 959, column: 35, scope: !2574)
!2576 = !DILocation(line: 959, column: 47, scope: !2574)
!2577 = !DILocation(line: 959, column: 52, scope: !2574)
!2578 = !DILocation(line: 959, column: 16, scope: !2561)
!2579 = !DILocation(line: 961, column: 10, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 960, column: 2)
!2581 = !DILocation(line: 962, column: 12, scope: !2580)
!2582 = !DILocation(line: 963, column: 33, scope: !2580)
!2583 = !DILocation(line: 963, column: 22, scope: !2580)
!2584 = !DILocation(line: 973, column: 7, scope: !2486)
!2585 = !DILocation(line: 975, column: 21, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 974, column: 5)
!2587 = !DILocation(line: 976, column: 12, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 976, column: 11)
!2589 = !DILocation(line: 976, column: 11, scope: !2586)
!2590 = !DILocation(line: 979, column: 11, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 979, column: 11)
!2592 = !DILocation(line: 979, column: 11, scope: !2586)
!2593 = !DILocation(line: 982, column: 30, scope: !2586)
!2594 = !DILocation(line: 983, column: 12, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 983, column: 11)
!2596 = !DILocation(line: 983, column: 11, scope: !2586)
!2597 = !DILocation(line: 987, column: 28, scope: !2540)
!2598 = !DILocation(line: 0, scope: !2540)
!2599 = !DILocation(line: 992, column: 7, scope: !2509)
!2600 = !DILocation(line: 992, column: 7, scope: !2486)
!2601 = !DILocation(line: 995, column: 27, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 995, column: 11)
!2603 = !DILocation(line: 995, column: 12, scope: !2602)
!2604 = !DILocation(line: 995, column: 11, scope: !2508)
!2605 = !DILocation(line: 998, column: 11, scope: !2507)
!2606 = !DILocation(line: 998, column: 57, scope: !2507)
!2607 = !DILocation(line: 998, column: 11, scope: !2508)
!2608 = !DILocation(line: 1000, column: 16, scope: !2506)
!2609 = !DILocation(line: 0, scope: !2506)
!2610 = !DILocation(line: 1001, column: 16, scope: !2506)
!2611 = !DILocation(line: 1003, column: 6, scope: !2506)
!2612 = !DILocation(line: 1005, column: 10, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 1005, column: 8)
!2614 = !DILocation(line: 1006, column: 8, scope: !2613)
!2615 = !DILocation(line: 1006, column: 11, scope: !2613)
!2616 = !DILocation(line: 1007, column: 8, scope: !2613)
!2617 = !DILocation(line: 1007, column: 13, scope: !2613)
!2618 = !DILocation(line: 1008, column: 8, scope: !2613)
!2619 = !DILocation(line: 1008, column: 11, scope: !2613)
!2620 = !DILocation(line: 1005, column: 8, scope: !2506)
!2621 = !DILocation(line: 1010, column: 2, scope: !2507)
!2622 = !DILocation(line: 1022, column: 1, scope: !2486)
!2623 = distinct !DISubprogram(name: "is_cast_from_non_pointer", scope: !3, file: !3, line: 802, type: !2624, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!557, !631, !923, !562}
!2626 = !{!2627, !2628, !2629, !2630, !2633, !2646}
!2627 = !DILocalVariable(name: "var", arg: 1, scope: !2623, file: !3, line: 802, type: !631)
!2628 = !DILocalVariable(name: "def_stmt", arg: 2, scope: !2623, file: !3, line: 802, type: !923)
!2629 = !DILocalVariable(name: "data", arg: 3, scope: !2623, file: !3, line: 802, type: !562)
!2630 = !DILocalVariable(name: "use_p", scope: !2631, file: !3, line: 815, type: !1755)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 814, column: 5)
!2632 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 813, column: 7)
!2633 = !DILocalVariable(name: "iter", scope: !2631, file: !3, line: 816, type: !2634)
!2634 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !433, line: 140, baseType: !2635)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !433, line: 131, size: 320, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2641, !2643, !2644, !2645}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2635, file: !433, line: 133, baseType: !557, size: 8)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2635, file: !433, line: 134, baseType: !432, size: 32, offset: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2635, file: !433, line: 135, baseType: !2640, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !433, line: 42, baseType: !952)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2635, file: !433, line: 136, baseType: !2642, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !433, line: 50, baseType: !959)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !2635, file: !433, line: 137, baseType: !558, size: 32, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !2635, file: !433, line: 138, baseType: !558, size: 32, offset: 224)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !2635, file: !433, line: 139, baseType: !923, size: 64, offset: 256)
!2646 = !DILocalVariable(name: "cast", scope: !2631, file: !3, line: 817, type: !7)
!2647 = !DILocation(line: 0, scope: !2623)
!2648 = !DILocation(line: 804, column: 8, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 804, column: 7)
!2650 = !DILocation(line: 804, column: 21, scope: !2649)
!2651 = !DILocation(line: 804, column: 17, scope: !2649)
!2652 = !DILocation(line: 807, column: 7, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 807, column: 7)
!2654 = !DILocation(line: 807, column: 30, scope: !2653)
!2655 = !DILocation(line: 807, column: 7, scope: !2623)
!2656 = !DILocation(line: 810, column: 7, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 810, column: 7)
!2658 = !DILocation(line: 810, column: 7, scope: !2623)
!2659 = !DILocation(line: 813, column: 7, scope: !2632)
!2660 = !DILocation(line: 813, column: 7, scope: !2623)
!2661 = !DILocation(line: 816, column: 7, scope: !2631)
!2662 = !DILocation(line: 817, column: 27, scope: !2631)
!2663 = !DILocation(line: 0, scope: !2631)
!2664 = !DILocation(line: 822, column: 4, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 821, column: 11)
!2666 = !DILocation(line: 824, column: 22, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 823, column: 2)
!2668 = !DILocation(line: 824, column: 27, scope: !2667)
!2669 = !DILocation(line: 825, column: 22, scope: !2667)
!2670 = !DILocation(line: 825, column: 26, scope: !2667)
!2671 = !DILocation(line: 827, column: 4, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 827, column: 4)
!2673 = !DILocation(line: 0, scope: !2672)
!2674 = !DILocation(line: 827, column: 4, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 827, column: 4)
!2676 = !DILocation(line: 829, column: 29, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 828, column: 6)
!2678 = !DILocation(line: 829, column: 8, scope: !2677)
!2679 = !DILocation(line: 831, column: 29, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 831, column: 12)
!2681 = !DILocation(line: 831, column: 34, scope: !2680)
!2682 = !DILocation(line: 831, column: 12, scope: !2677)
!2683 = distinct !{!2683, !2671, !2684}
!2684 = !DILocation(line: 833, column: 6, scope: !2672)
!2685 = !DILocation(line: 837, column: 4, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 836, column: 16)
!2687 = !DILocation(line: 842, column: 4, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 842, column: 4)
!2689 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 841, column: 2)
!2690 = !DILocation(line: 0, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 846, column: 12)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 843, column: 6)
!2693 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 842, column: 4)
!2694 = !DILocation(line: 0, scope: !2688)
!2695 = !DILocation(line: 842, column: 4, scope: !2693)
!2696 = !DILocation(line: 844, column: 29, scope: !2692)
!2697 = !DILocation(line: 844, column: 8, scope: !2692)
!2698 = !DILocation(line: 846, column: 29, scope: !2691)
!2699 = !DILocation(line: 846, column: 34, scope: !2691)
!2700 = !DILocation(line: 846, column: 12, scope: !2692)
!2701 = distinct !{!2701, !2687, !2702}
!2702 = !DILocation(line: 848, column: 6, scope: !2688)
!2703 = !DILocation(line: 852, column: 22, scope: !2686)
!2704 = !DILocation(line: 852, column: 27, scope: !2686)
!2705 = !DILocation(line: 853, column: 5, scope: !2632)
!2706 = !DILocation(line: 853, column: 5, scope: !2631)
!2707 = !DILocation(line: 855, column: 24, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 855, column: 7)
!2709 = !DILocation(line: 855, column: 29, scope: !2708)
!2710 = !DILocation(line: 859, column: 1, scope: !2623)
!2711 = distinct !DISubprogram(name: "single_ssa_tree_operand", scope: !2712, file: !2712, line: 803, type: !2713, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2715)
!2712 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!631, !923, !558}
!2715 = !{!2716, !2717, !2718, !2719}
!2716 = !DILocalVariable(name: "stmt", arg: 1, scope: !2711, file: !2712, line: 803, type: !923)
!2717 = !DILocalVariable(name: "flags", arg: 2, scope: !2711, file: !2712, line: 803, type: !558)
!2718 = !DILocalVariable(name: "var", scope: !2711, file: !2712, line: 805, type: !631)
!2719 = !DILocalVariable(name: "iter", scope: !2711, file: !2712, line: 806, type: !2634)
!2720 = !DILocation(line: 0, scope: !2711)
!2721 = !DILocation(line: 806, column: 3, scope: !2711)
!2722 = !DILocation(line: 808, column: 9, scope: !2711)
!2723 = !DILocation(line: 809, column: 7, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2711, file: !2712, line: 809, column: 7)
!2725 = !DILocation(line: 809, column: 7, scope: !2711)
!2726 = !DILocation(line: 811, column: 3, scope: !2711)
!2727 = !DILocation(line: 812, column: 7, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2711, file: !2712, line: 812, column: 7)
!2729 = !DILocation(line: 815, column: 1, scope: !2711)
!2730 = distinct !DISubprogram(name: "is_gimple_assign", scope: !440, file: !440, line: 1677, type: !2731, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2734)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!557, !2733}
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !570, line: 60, baseType: !1753)
!2734 = !{!2735}
!2735 = !DILocalVariable(name: "gs", arg: 1, scope: !2730, file: !440, line: 1677, type: !2733)
!2736 = !DILocation(line: 0, scope: !2730)
!2737 = !DILocation(line: 1679, column: 10, scope: !2730)
!2738 = !DILocation(line: 1679, column: 27, scope: !2730)
!2739 = !DILocation(line: 1679, column: 3, scope: !2730)
!2740 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !440, file: !440, line: 1694, type: !2741, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!631, !2733}
!2743 = !{!2744}
!2744 = !DILocalVariable(name: "gs", arg: 1, scope: !2740, file: !440, line: 1694, type: !2733)
!2745 = !DILocation(line: 0, scope: !2740)
!2746 = !DILocation(line: 1697, column: 10, scope: !2740)
!2747 = !DILocation(line: 1697, column: 3, scope: !2740)
!2748 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !440, file: !440, line: 1815, type: !2749, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!5, !2733}
!2751 = !{!2752, !2753}
!2752 = !DILocalVariable(name: "gs", arg: 1, scope: !2748, file: !440, line: 1815, type: !2733)
!2753 = !DILocalVariable(name: "code", scope: !2748, file: !440, line: 1817, type: !5)
!2754 = !DILocation(line: 0, scope: !2748)
!2755 = !DILocation(line: 1820, column: 10, scope: !2748)
!2756 = !DILocation(line: 1821, column: 7, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2748, file: !440, line: 1821, column: 7)
!2758 = !DILocation(line: 1821, column: 35, scope: !2757)
!2759 = !DILocation(line: 1821, column: 7, scope: !2748)
!2760 = !DILocation(line: 1822, column: 12, scope: !2757)
!2761 = !DILocation(line: 1822, column: 5, scope: !2757)
!2762 = !DILocation(line: 1824, column: 3, scope: !2748)
!2763 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !440, file: !440, line: 1727, type: !2741, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2764)
!2764 = !{!2765}
!2765 = !DILocalVariable(name: "gs", arg: 1, scope: !2763, file: !440, line: 1727, type: !2733)
!2766 = !DILocation(line: 0, scope: !2763)
!2767 = !DILocation(line: 1730, column: 10, scope: !2763)
!2768 = !DILocation(line: 1730, column: 3, scope: !2763)
!2769 = distinct !DISubprogram(name: "gimple_assign_rhs2", scope: !440, file: !440, line: 1759, type: !2741, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2770)
!2770 = !{!2771}
!2771 = !DILocalVariable(name: "gs", arg: 1, scope: !2769, file: !440, line: 1759, type: !2733)
!2772 = !DILocation(line: 0, scope: !2769)
!2773 = !DILocation(line: 1763, column: 7, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2769, file: !440, line: 1763, column: 7)
!2775 = !DILocation(line: 1763, column: 27, scope: !2774)
!2776 = !DILocation(line: 1763, column: 7, scope: !2769)
!2777 = !DILocation(line: 1764, column: 12, scope: !2774)
!2778 = !DILocation(line: 1764, column: 5, scope: !2774)
!2779 = !DILocation(line: 0, scope: !2774)
!2780 = !DILocation(line: 1767, column: 1, scope: !2769)
!2781 = distinct !DISubprogram(name: "gate_type_escape_vars", scope: !3, file: !3, line: 2113, type: !1770, scopeLine: 2114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1880)
!2782 = !DILocation(line: 2115, column: 11, scope: !2781)
!2783 = !DILocation(line: 2117, column: 4, scope: !2781)
!2784 = !DILocation(line: 2117, column: 9, scope: !2781)
!2785 = !DILocation(line: 2117, column: 20, scope: !2781)
!2786 = !DILocation(line: 2117, column: 23, scope: !2781)
!2787 = !DILocation(line: 2115, column: 3, scope: !2781)
!2788 = distinct !DISubprogram(name: "type_escape_execute", scope: !3, file: !3, line: 1966, type: !1774, scopeLine: 1967, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2789)
!2789 = !{!2790, !2995, !2996, !2997, !3005, !3006, !3010, !3012, !3014, !3015, !3021, !3023, !3024}
!2790 = !DILocalVariable(name: "node", scope: !2788, file: !3, line: 1968, type: !2791)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !526, line: 181, size: 2496, elements: !2793)
!2793 = !{!2794, !2795, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2910, !2932, !2942, !2946, !2972, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2792, file: !526, line: 182, baseType: !631, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !2792, file: !526, line: 183, baseType: !2796, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !526, line: 314, size: 768, elements: !2798)
!2798 = !{!2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2810, !2811, !2812, !2813, !2814, !2815, !2816}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2797, file: !526, line: 316, baseType: !1134, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2797, file: !526, line: 317, baseType: !2791, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !2797, file: !526, line: 318, baseType: !2791, size: 64, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !2797, file: !526, line: 319, baseType: !2796, size: 64, offset: 192)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !2797, file: !526, line: 320, baseType: !2796, size: 64, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !2797, file: !526, line: 321, baseType: !2796, size: 64, offset: 320)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !2797, file: !526, line: 322, baseType: !2796, size: 64, offset: 384)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !2797, file: !526, line: 323, baseType: !923, size: 64, offset: 448)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2797, file: !526, line: 324, baseType: !562, size: 64, offset: 512)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !2797, file: !526, line: 327, baseType: !2809, size: 32, offset: 576)
!2809 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !526, line: 312, baseType: !525)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !2797, file: !526, line: 330, baseType: !7, size: 32, offset: 608)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2797, file: !526, line: 334, baseType: !558, size: 32, offset: 640)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2797, file: !526, line: 336, baseType: !558, size: 32, offset: 672)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !2797, file: !526, line: 338, baseType: !1916, size: 16, offset: 704)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !2797, file: !526, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !2797, file: !526, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !2797, file: !526, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !2792, file: !526, line: 184, baseType: !2796, size: 64, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2792, file: !526, line: 185, baseType: !2791, size: 64, offset: 192)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !2792, file: !526, line: 186, baseType: !2791, size: 64, offset: 256)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2792, file: !526, line: 188, baseType: !2791, size: 64, offset: 320)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2792, file: !526, line: 190, baseType: !2791, size: 64, offset: 384)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !2792, file: !526, line: 192, baseType: !2791, size: 64, offset: 448)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2792, file: !526, line: 194, baseType: !2791, size: 64, offset: 512)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !2792, file: !526, line: 196, baseType: !2791, size: 64, offset: 576)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !2792, file: !526, line: 197, baseType: !2791, size: 64, offset: 640)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !2792, file: !526, line: 198, baseType: !2791, size: 64, offset: 704)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !2792, file: !526, line: 199, baseType: !2791, size: 64, offset: 768)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !2792, file: !526, line: 202, baseType: !2791, size: 64, offset: 832)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !2792, file: !526, line: 204, baseType: !2791, size: 64, offset: 896)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !2792, file: !526, line: 207, baseType: !1201, size: 64, offset: 960)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2792, file: !526, line: 209, baseType: !562, size: 64, offset: 1024)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !2792, file: !526, line: 214, baseType: !2833, size: 64, offset: 1088)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !876, line: 177, baseType: !2835)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !876, line: 177, size: 128, elements: !2836)
!2836 = !{!2837}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2835, file: !876, line: 177, baseType: !2838, size: 128)
!2838 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !876, line: 176, baseType: !2839)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !876, line: 176, size: 128, elements: !2840)
!2840 = !{!2841, !2842, !2843}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2839, file: !876, line: 176, baseType: !7, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2839, file: !876, line: 176, baseType: !7, size: 32, offset: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2839, file: !876, line: 176, baseType: !2844, size: 64, offset: 64)
!2844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2845, size: 64, elements: !711)
!2845 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !876, line: 174, baseType: !2846)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !250, line: 173, size: 1152, elements: !2848)
!2848 = !{!2849, !2850, !2854, !2877, !2878, !2882, !2886, !2887, !2891}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2847, file: !250, line: 175, baseType: !1764, size: 640)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !2847, file: !250, line: 179, baseType: !2851, size: 64, offset: 640)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{null}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !2847, file: !250, line: 182, baseType: !2855, size: 64, offset: 704)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{null, !2858}
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !526, line: 276, size: 192, elements: !2860)
!2860 = !{!2861, !2862, !2876}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !2859, file: !526, line: 278, baseType: !1201, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2859, file: !526, line: 279, baseType: !2863, size: 64, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !526, line: 272, baseType: !2865)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !526, line: 272, size: 128, elements: !2866)
!2866 = !{!2867}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2865, file: !526, line: 272, baseType: !2868, size: 128)
!2868 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !526, line: 270, baseType: !2869)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !526, line: 270, size: 128, elements: !2870)
!2870 = !{!2871, !2872, !2873}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2869, file: !526, line: 270, baseType: !7, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2869, file: !526, line: 270, baseType: !7, size: 32, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2869, file: !526, line: 270, baseType: !2874, size: 64, offset: 64)
!2874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2875, size: 64, elements: !711)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !526, line: 268, baseType: !2791)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2859, file: !526, line: 280, baseType: !562, size: 64, offset: 128)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !2847, file: !250, line: 187, baseType: !2851, size: 64, offset: 768)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !2847, file: !250, line: 188, baseType: !2879, size: 64, offset: 832)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{null, !2791}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !2847, file: !250, line: 191, baseType: !2883, size: 64, offset: 896)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{null, !2791, !2489}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !2847, file: !250, line: 195, baseType: !7, size: 32, offset: 960)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !2847, file: !250, line: 196, baseType: !2888, size: 64, offset: 1024)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!7, !2791}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !2847, file: !250, line: 197, baseType: !2892, size: 64, offset: 1088)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{null, !2895}
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !526, line: 358, size: 320, elements: !2897)
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2896, file: !526, line: 359, baseType: !631, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2896, file: !526, line: 361, baseType: !2895, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2896, file: !526, line: 363, baseType: !2895, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !2896, file: !526, line: 366, baseType: !2895, size: 64, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2896, file: !526, line: 368, baseType: !558, size: 32, offset: 256)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2896, file: !526, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !2896, file: !526, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2896, file: !526, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2896, file: !526, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !2896, file: !526, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2896, file: !526, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2896, file: !526, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2792, file: !526, line: 216, baseType: !2911, size: 320, offset: 1152)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !526, line: 88, size: 320, elements: !2912)
!2912 = !{!2913, !2916, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !2911, file: !526, line: 90, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !526, line: 51, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !2911, file: !526, line: 92, baseType: !2917, size: 192, offset: 64)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !526, line: 57, size: 192, elements: !2918)
!2918 = !{!2919, !2920, !2921, !2922, !2923}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !2917, file: !526, line: 60, baseType: !603, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !2917, file: !526, line: 63, baseType: !558, size: 32, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !2917, file: !526, line: 65, baseType: !558, size: 32, offset: 96)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !2917, file: !526, line: 67, baseType: !558, size: 32, offset: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !2917, file: !526, line: 69, baseType: !558, size: 32, offset: 160)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2911, file: !526, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2911, file: !526, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2911, file: !526, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !2911, file: !526, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2911, file: !526, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !2911, file: !526, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !2911, file: !526, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !2911, file: !526, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !2792, file: !526, line: 217, baseType: !2933, size: 320, offset: 1472)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !526, line: 126, size: 320, elements: !2934)
!2934 = !{!2935, !2936, !2937, !2938, !2939, !2940, !2941}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !2933, file: !526, line: 128, baseType: !603, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !2933, file: !526, line: 130, baseType: !603, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !2933, file: !526, line: 134, baseType: !2791, size: 64, offset: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2933, file: !526, line: 137, baseType: !558, size: 32, offset: 192)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2933, file: !526, line: 138, baseType: !558, size: 32, offset: 224)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !2933, file: !526, line: 141, baseType: !558, size: 32, offset: 256)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !2933, file: !526, line: 144, baseType: !557, size: 8, offset: 288)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2792, file: !526, line: 218, baseType: !2943, size: 32, offset: 1792)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !526, line: 150, size: 32, elements: !2944)
!2944 = !{!2945}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2943, file: !526, line: 151, baseType: !7, size: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !2792, file: !526, line: 219, baseType: !2947, size: 192, offset: 1856)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !526, line: 171, size: 192, elements: !2948)
!2948 = !{!2949, !2970, !2971}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2947, file: !526, line: 173, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !526, line: 169, baseType: !2952)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !526, line: 169, size: 128, elements: !2953)
!2953 = !{!2954}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2952, file: !526, line: 169, baseType: !2955, size: 128)
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !526, line: 168, baseType: !2956)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !526, line: 168, size: 128, elements: !2957)
!2957 = !{!2958, !2959, !2960}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2956, file: !526, line: 168, baseType: !7, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2956, file: !526, line: 168, baseType: !7, size: 32, offset: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2956, file: !526, line: 168, baseType: !2961, size: 64, offset: 64)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2962, size: 64, elements: !711)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !526, line: 167, baseType: !2963)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !526, line: 156, size: 192, elements: !2965)
!2965 = !{!2966, !2967, !2968, !2969}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2964, file: !526, line: 159, baseType: !631, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2964, file: !526, line: 161, baseType: !631, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2964, file: !526, line: 163, baseType: !557, size: 8, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2964, file: !526, line: 165, baseType: !557, size: 8, offset: 136)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2947, file: !526, line: 174, baseType: !569, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2947, file: !526, line: 175, baseType: !569, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !2792, file: !526, line: 220, baseType: !2973, size: 256, offset: 2048)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !526, line: 74, size: 256, elements: !2974)
!2974 = !{!2975, !2976, !2977, !2978, !2979, !2980}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2973, file: !526, line: 76, baseType: !603, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2973, file: !526, line: 77, baseType: !603, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2973, file: !526, line: 78, baseType: !631, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2973, file: !526, line: 79, baseType: !557, size: 8, offset: 192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2973, file: !526, line: 80, baseType: !557, size: 8, offset: 200)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2973, file: !526, line: 82, baseType: !557, size: 8, offset: 208)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2792, file: !526, line: 223, baseType: !1134, size: 64, offset: 2304)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2792, file: !526, line: 225, baseType: !558, size: 32, offset: 2368)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2792, file: !526, line: 227, baseType: !558, size: 32, offset: 2400)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2792, file: !526, line: 231, baseType: !558, size: 32, offset: 2432)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2792, file: !526, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !2792, file: !526, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !2792, file: !526, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !2792, file: !526, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !2792, file: !526, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2792, file: !526, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !2792, file: !526, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2792, file: !526, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !2792, file: !526, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !2792, file: !526, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2995 = !DILocalVariable(name: "vnode", scope: !2788, file: !3, line: 1969, type: !2895)
!2996 = !DILocalVariable(name: "i", scope: !2788, file: !3, line: 1970, type: !7)
!2997 = !DILocalVariable(name: "bi", scope: !2788, file: !3, line: 1971, type: !2998)
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !573, line: 218, baseType: !2999)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 203, size: 256, elements: !3000)
!3000 = !{!3001, !3002, !3003, !3004}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2999, file: !573, line: 206, baseType: !576, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2999, file: !573, line: 209, baseType: !576, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2999, file: !573, line: 212, baseType: !7, size: 32, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2999, file: !573, line: 217, baseType: !586, size: 64, offset: 192)
!3005 = !DILocalVariable(name: "result", scope: !2788, file: !3, line: 1972, type: !1796)
!3006 = !DILocalVariable(name: "type", scope: !3007, file: !3, line: 2007, type: !631)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 2006, column: 5)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 2005, column: 3)
!3009 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 2005, column: 3)
!3010 = !DILocalVariable(name: "uid", scope: !3011, file: !3, line: 2040, type: !558)
!3011 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 2039, column: 5)
!3012 = !DILocalVariable(name: "type", scope: !3013, file: !3, line: 2052, type: !631)
!3013 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 2051, column: 5)
!3014 = !DILocalVariable(name: "key", scope: !3013, file: !3, line: 2053, type: !631)
!3015 = !DILocalVariable(name: "type", scope: !3016, file: !3, line: 2072, type: !631)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 2068, column: 2)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 2067, column: 7)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 2067, column: 7)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 2066, column: 5)
!3020 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 2065, column: 7)
!3021 = !DILocalVariable(name: "uid", scope: !3022, file: !3, line: 2086, type: !558)
!3022 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 2085, column: 5)
!3023 = !DILocalVariable(name: "bm", scope: !3022, file: !3, line: 2087, type: !569)
!3024 = !DILocalVariable(name: "b", scope: !3025, file: !3, line: 2098, type: !569)
!3025 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 2097, column: 5)
!3026 = !DILocation(line: 1970, column: 3, scope: !2788)
!3027 = !DILocation(line: 1971, column: 3, scope: !2788)
!3028 = !DILocation(line: 1974, column: 3, scope: !2788)
!3029 = !DILocation(line: 1977, column: 3, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 1977, column: 3)
!3031 = !DILocation(line: 0, scope: !3030)
!3032 = !DILocation(line: 0, scope: !2788)
!3033 = !DILocation(line: 1978, column: 5, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3030, file: !3, line: 1977, column: 3)
!3035 = !DILocation(line: 1977, column: 3, scope: !3034)
!3036 = distinct !{!3036, !3029, !3037}
!3037 = !DILocation(line: 1978, column: 28, scope: !3030)
!3038 = !DILocation(line: 1987, column: 8, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 1987, column: 3)
!3040 = !DILocation(line: 0, scope: !3039)
!3041 = !DILocation(line: 1987, column: 3, scope: !3039)
!3042 = !DILocation(line: 1988, column: 15, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 1988, column: 9)
!3044 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 1987, column: 3)
!3045 = !DILocation(line: 1988, column: 9, scope: !3043)
!3046 = !DILocation(line: 1988, column: 24, scope: !3043)
!3047 = !DILocation(line: 1988, column: 34, scope: !3043)
!3048 = !DILocation(line: 1988, column: 28, scope: !3043)
!3049 = !DILocation(line: 1988, column: 9, scope: !3044)
!3050 = !DILocation(line: 1989, column: 7, scope: !3043)
!3051 = !DILocation(line: 1987, column: 48, scope: !3044)
!3052 = !DILocation(line: 1987, column: 3, scope: !3044)
!3053 = distinct !{!3053, !3041, !3054}
!3054 = !DILocation(line: 1989, column: 29, scope: !3039)
!3055 = !DILocation(line: 1992, column: 24, scope: !2788)
!3056 = !DILocation(line: 1992, column: 3, scope: !2788)
!3057 = !DILocation(line: 1993, column: 17, scope: !2788)
!3058 = !DILocation(line: 1998, column: 26, scope: !2788)
!3059 = !DILocation(line: 1998, column: 24, scope: !2788)
!3060 = !DILocation(line: 1999, column: 16, scope: !2788)
!3061 = !DILocation(line: 1999, column: 14, scope: !2788)
!3062 = !DILocation(line: 2004, column: 28, scope: !2788)
!3063 = !DILocation(line: 2004, column: 3, scope: !2788)
!3064 = !DILocation(line: 2005, column: 3, scope: !3009)
!3065 = !DILocation(line: 2005, column: 3, scope: !3008)
!3066 = !DILocation(line: 2007, column: 33, scope: !3007)
!3067 = !DILocation(line: 2007, column: 19, scope: !3007)
!3068 = !DILocation(line: 0, scope: !3007)
!3069 = !DILocation(line: 2009, column: 11, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 2009, column: 11)
!3071 = !DILocation(line: 2009, column: 74, scope: !3070)
!3072 = !DILocation(line: 2009, column: 11, scope: !3007)
!3073 = !DILocation(line: 2010, column: 2, scope: !3070)
!3074 = distinct !{!3074, !3064, !3075}
!3075 = !DILocation(line: 2011, column: 5, scope: !3009)
!3076 = !DILocation(line: 2012, column: 17, scope: !2788)
!3077 = !DILocation(line: 2012, column: 3, scope: !2788)
!3078 = !DILocation(line: 2016, column: 16, scope: !2788)
!3079 = !DILocation(line: 2016, column: 28, scope: !2788)
!3080 = !DILocation(line: 2016, column: 3, scope: !2788)
!3081 = !DILocation(line: 2017, column: 3, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 2017, column: 3)
!3083 = !DILocation(line: 2017, column: 3, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 2017, column: 3)
!3085 = !DILocation(line: 2019, column: 51, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 2018, column: 5)
!3087 = !DILocation(line: 2019, column: 37, scope: !3086)
!3088 = !DILocation(line: 2019, column: 7, scope: !3086)
!3089 = distinct !{!3089, !3081, !3090}
!3090 = !DILocation(line: 2020, column: 5, scope: !3082)
!3091 = !DILocation(line: 2021, column: 17, scope: !2788)
!3092 = !DILocation(line: 2021, column: 3, scope: !2788)
!3093 = !DILocation(line: 2025, column: 16, scope: !2788)
!3094 = !DILocation(line: 2025, column: 28, scope: !2788)
!3095 = !DILocation(line: 2025, column: 3, scope: !2788)
!3096 = !DILocation(line: 2026, column: 3, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 2026, column: 3)
!3098 = !DILocation(line: 2026, column: 3, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 2026, column: 3)
!3100 = !DILocation(line: 2028, column: 45, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 2027, column: 5)
!3102 = !DILocation(line: 2028, column: 31, scope: !3101)
!3103 = !DILocation(line: 2028, column: 7, scope: !3101)
!3104 = distinct !{!3104, !3096, !3105}
!3105 = !DILocation(line: 2029, column: 5, scope: !3097)
!3106 = !DILocation(line: 2030, column: 17, scope: !2788)
!3107 = !DILocation(line: 2030, column: 3, scope: !2788)
!3108 = !DILocation(line: 2037, column: 28, scope: !2788)
!3109 = !DILocation(line: 2037, column: 12, scope: !2788)
!3110 = !DILocation(line: 2038, column: 3, scope: !2788)
!3111 = !DILocation(line: 2040, column: 25, scope: !3011)
!3112 = !DILocation(line: 2040, column: 17, scope: !3011)
!3113 = !DILocation(line: 0, scope: !3011)
!3114 = !DILocation(line: 2043, column: 7, scope: !3011)
!3115 = !DILocation(line: 2044, column: 38, scope: !3011)
!3116 = !DILocation(line: 2044, column: 65, scope: !3011)
!3117 = !DILocation(line: 2044, column: 16, scope: !3011)
!3118 = distinct !{!3118, !3110, !3119}
!3119 = !DILocation(line: 2045, column: 5, scope: !2788)
!3120 = !DILocation(line: 2049, column: 28, scope: !2788)
!3121 = !DILocation(line: 2049, column: 12, scope: !2788)
!3122 = !DILocation(line: 2050, column: 3, scope: !2788)
!3123 = !DILocation(line: 2052, column: 34, scope: !3013)
!3124 = !DILocation(line: 0, scope: !3013)
!3125 = !DILocation(line: 2053, column: 33, scope: !3013)
!3126 = !DILocation(line: 2054, column: 11, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 2054, column: 11)
!3128 = !DILocation(line: 2055, column: 4, scope: !3127)
!3129 = !DILocation(line: 2055, column: 24, scope: !3127)
!3130 = !DILocation(line: 2054, column: 11, scope: !3013)
!3131 = !DILocation(line: 2057, column: 23, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 2056, column: 2)
!3133 = !DILocation(line: 2057, column: 4, scope: !3132)
!3134 = !DILocation(line: 2058, column: 23, scope: !3132)
!3135 = !DILocation(line: 2058, column: 43, scope: !3132)
!3136 = !DILocation(line: 2058, column: 4, scope: !3132)
!3137 = !DILocation(line: 2059, column: 23, scope: !3132)
!3138 = !DILocation(line: 2059, column: 59, scope: !3132)
!3139 = !DILocation(line: 2059, column: 42, scope: !3132)
!3140 = !DILocation(line: 2059, column: 4, scope: !3132)
!3141 = !DILocation(line: 2060, column: 22, scope: !3132)
!3142 = !DILocation(line: 2060, column: 41, scope: !3132)
!3143 = !DILocation(line: 2060, column: 4, scope: !3132)
!3144 = !DILocation(line: 2061, column: 2, scope: !3132)
!3145 = !DILocation(line: 2062, column: 38, scope: !3013)
!3146 = !DILocation(line: 2062, column: 16, scope: !3013)
!3147 = distinct !{!3147, !3122, !3148}
!3148 = !DILocation(line: 2063, column: 5, scope: !2788)
!3149 = !DILocation(line: 2065, column: 7, scope: !3020)
!3150 = !DILocation(line: 2065, column: 7, scope: !2788)
!3151 = !DILocation(line: 2067, column: 7, scope: !3018)
!3152 = !DILocation(line: 2067, column: 7, scope: !3017)
!3153 = !DILocation(line: 2072, column: 30, scope: !3016)
!3154 = !DILocation(line: 2072, column: 16, scope: !3016)
!3155 = !DILocation(line: 0, scope: !3016)
!3156 = !DILocation(line: 2073, column: 12, scope: !3016)
!3157 = !DILocation(line: 2073, column: 35, scope: !3016)
!3158 = !DILocation(line: 2073, column: 4, scope: !3016)
!3159 = !DILocation(line: 2074, column: 24, scope: !3016)
!3160 = !DILocation(line: 2074, column: 4, scope: !3016)
!3161 = !DILocation(line: 2075, column: 22, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 2075, column: 8)
!3163 = !DILocation(line: 2075, column: 48, scope: !3162)
!3164 = !DILocation(line: 2075, column: 8, scope: !3162)
!3165 = !DILocation(line: 0, scope: !3162)
!3166 = !DILocation(line: 2075, column: 8, scope: !3016)
!3167 = !DILocation(line: 2076, column: 6, scope: !3162)
!3168 = !DILocation(line: 2078, column: 6, scope: !3162)
!3169 = distinct !{!3169, !3151, !3170}
!3170 = !DILocation(line: 2079, column: 2, scope: !3018)
!3171 = !DILocation(line: 2083, column: 28, scope: !2788)
!3172 = !DILocation(line: 2083, column: 12, scope: !2788)
!3173 = !DILocation(line: 2084, column: 3, scope: !2788)
!3174 = !DILocation(line: 2086, column: 30, scope: !3022)
!3175 = !DILocation(line: 2087, column: 35, scope: !3022)
!3176 = !DILocation(line: 0, scope: !3022)
!3177 = !DILocation(line: 2089, column: 7, scope: !3022)
!3178 = !DILocation(line: 2090, column: 26, scope: !3022)
!3179 = !DILocation(line: 2090, column: 51, scope: !3022)
!3180 = !DILocation(line: 2090, column: 7, scope: !3022)
!3181 = !DILocation(line: 2091, column: 38, scope: !3022)
!3182 = !DILocation(line: 2091, column: 16, scope: !3022)
!3183 = distinct !{!3183, !3173, !3184}
!3184 = !DILocation(line: 2092, column: 5, scope: !2788)
!3185 = !DILocation(line: 2095, column: 28, scope: !2788)
!3186 = !DILocation(line: 2095, column: 12, scope: !2788)
!3187 = !DILocation(line: 2096, column: 3, scope: !2788)
!3188 = !DILocation(line: 2098, column: 34, scope: !3025)
!3189 = !DILocation(line: 0, scope: !3025)
!3190 = !DILocation(line: 2099, column: 7, scope: !3025)
!3191 = !DILocation(line: 2100, column: 26, scope: !3025)
!3192 = !DILocation(line: 2100, column: 54, scope: !3025)
!3193 = !DILocation(line: 2100, column: 7, scope: !3025)
!3194 = !DILocation(line: 2101, column: 32, scope: !3025)
!3195 = !DILocation(line: 2101, column: 16, scope: !3025)
!3196 = distinct !{!3196, !3187, !3197}
!3197 = !DILocation(line: 2102, column: 5, scope: !2788)
!3198 = !DILocation(line: 2103, column: 22, scope: !2788)
!3199 = !DILocation(line: 2103, column: 3, scope: !2788)
!3200 = !DILocation(line: 2104, column: 22, scope: !2788)
!3201 = !DILocation(line: 2106, column: 3, scope: !2788)
!3202 = !DILocation(line: 2107, column: 3, scope: !2788)
!3203 = !DILocation(line: 2108, column: 3, scope: !2788)
!3204 = !DILocation(line: 2110, column: 1, scope: !2788)
!3205 = !DILocation(line: 2109, column: 3, scope: !2788)
!3206 = distinct !DISubprogram(name: "type_to_consider", scope: !3, file: !3, line: 263, type: !2359, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3207)
!3207 = !{!3208}
!3208 = !DILocalVariable(name: "type", arg: 1, scope: !3206, file: !3, line: 263, type: !631)
!3209 = !DILocation(line: 0, scope: !3206)
!3210 = !DILocation(line: 266, column: 10, scope: !3206)
!3211 = !DILocation(line: 267, column: 3, scope: !3206)
!3212 = !DILocation(line: 267, column: 10, scope: !3206)
!3213 = !DILocation(line: 267, column: 52, scope: !3206)
!3214 = !DILocation(line: 267, column: 32, scope: !3206)
!3215 = !DILocation(line: 268, column: 12, scope: !3206)
!3216 = distinct !{!3216, !3211, !3215}
!3217 = !DILocation(line: 270, column: 11, scope: !3206)
!3218 = !DILocation(line: 270, column: 3, scope: !3206)
!3219 = !DILocation(line: 286, column: 7, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 271, column: 5)
!3221 = !DILocation(line: 0, scope: !3220)
!3222 = !DILocation(line: 288, column: 1, scope: !3206)
!3223 = distinct !DISubprogram(name: "discover_unique_type", scope: !3, file: !3, line: 204, type: !3224, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3226)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!631, !631}
!3226 = !{!3227, !3228, !3229, !3230, !3231}
!3227 = !DILocalVariable(name: "type", arg: 1, scope: !3223, file: !3, line: 204, type: !631)
!3228 = !DILocalVariable(name: "brand", scope: !3223, file: !3, line: 206, type: !1741)
!3229 = !DILocalVariable(name: "i", scope: !3223, file: !3, line: 207, type: !558)
!3230 = !DILocalVariable(name: "result", scope: !3223, file: !3, line: 208, type: !1796)
!3231 = !DILocalVariable(name: "other_type", scope: !3232, file: !3, line: 221, type: !631)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 218, column: 2)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 217, column: 11)
!3234 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 213, column: 5)
!3235 = !DILocation(line: 0, scope: !3223)
!3236 = !DILocation(line: 206, column: 33, scope: !3223)
!3237 = !DILocation(line: 210, column: 17, scope: !3223)
!3238 = !DILocation(line: 210, column: 10, scope: !3223)
!3239 = !DILocation(line: 210, column: 15, scope: !3223)
!3240 = !DILocation(line: 0, scope: !3234)
!3241 = !DILocation(line: 0, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !3, line: 223, column: 6)
!3243 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 222, column: 8)
!3244 = !DILocation(line: 212, column: 3, scope: !3223)
!3245 = !DILocation(line: 214, column: 21, scope: !3234)
!3246 = !DILocation(line: 214, column: 18, scope: !3234)
!3247 = !DILocation(line: 215, column: 35, scope: !3234)
!3248 = !DILocation(line: 215, column: 16, scope: !3234)
!3249 = !DILocation(line: 217, column: 11, scope: !3233)
!3250 = !DILocation(line: 217, column: 11, scope: !3234)
!3251 = !DILocation(line: 221, column: 37, scope: !3232)
!3252 = !DILocation(line: 0, scope: !3232)
!3253 = !DILocation(line: 222, column: 8, scope: !3243)
!3254 = !DILocation(line: 222, column: 8, scope: !3232)
!3255 = !DILocation(line: 224, column: 8, scope: !3242)
!3256 = !DILocation(line: 226, column: 27, scope: !3242)
!3257 = !DILocation(line: 228, column: 6, scope: !3242)
!3258 = !DILocation(line: 226, column: 8, scope: !3242)
!3259 = !DILocation(line: 229, column: 8, scope: !3242)
!3260 = distinct !{!3260, !3244, !3261}
!3261 = !DILocation(line: 256, column: 5, scope: !3223)
!3262 = !DILocation(line: 237, column: 15, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 234, column: 2)
!3264 = !DILocation(line: 239, column: 23, scope: !3263)
!3265 = !DILocation(line: 239, column: 4, scope: !3263)
!3266 = !DILocation(line: 244, column: 23, scope: !3263)
!3267 = !DILocation(line: 244, column: 4, scope: !3263)
!3268 = !DILocation(line: 249, column: 23, scope: !3263)
!3269 = !DILocation(line: 250, column: 26, scope: !3263)
!3270 = !DILocation(line: 250, column: 9, scope: !3263)
!3271 = !DILocation(line: 249, column: 4, scope: !3263)
!3272 = !DILocation(line: 253, column: 20, scope: !3263)
!3273 = !DILocation(line: 253, column: 39, scope: !3263)
!3274 = !DILocation(line: 253, column: 4, scope: !3263)
!3275 = !DILocation(line: 254, column: 4, scope: !3263)
!3276 = !DILocation(line: 257, column: 1, scope: !3223)
!3277 = !DILocation(line: 0, scope: !3233)
!3278 = distinct !DISubprogram(name: "get_name_of_type", scope: !3, file: !3, line: 144, type: !3279, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!563, !631}
!3281 = !{!3282, !3283}
!3282 = !DILocalVariable(name: "type", arg: 1, scope: !3278, file: !3, line: 144, type: !631)
!3283 = !DILocalVariable(name: "name", scope: !3278, file: !3, line: 146, type: !631)
!3284 = !DILocation(line: 0, scope: !3278)
!3285 = !DILocation(line: 146, column: 15, scope: !3278)
!3286 = !DILocation(line: 148, column: 8, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 148, column: 7)
!3288 = !DILocation(line: 148, column: 7, scope: !3278)
!3289 = !DILocation(line: 154, column: 7, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 154, column: 7)
!3291 = !DILocation(line: 154, column: 24, scope: !3290)
!3292 = !DILocation(line: 154, column: 7, scope: !3278)
!3293 = !DILocation(line: 159, column: 11, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 159, column: 11)
!3295 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 155, column: 5)
!3296 = !DILocation(line: 159, column: 11, scope: !3295)
!3297 = !DILocation(line: 160, column: 9, scope: !3294)
!3298 = !DILocation(line: 160, column: 2, scope: !3294)
!3299 = !DILocation(line: 165, column: 29, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 165, column: 12)
!3301 = !DILocation(line: 165, column: 12, scope: !3290)
!3302 = !DILocation(line: 166, column: 12, scope: !3300)
!3303 = !DILocation(line: 166, column: 5, scope: !3300)
!3304 = !DILocation(line: 169, column: 1, scope: !3278)
!3305 = distinct !DISubprogram(name: "gimple_code", scope: !440, file: !440, line: 1052, type: !3306, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!439, !2733}
!3308 = !{!3309}
!3309 = !DILocalVariable(name: "g", arg: 1, scope: !3305, file: !440, line: 1052, type: !2733)
!3310 = !DILocation(line: 0, scope: !3305)
!3311 = !DILocation(line: 1054, column: 20, scope: !3305)
!3312 = !DILocation(line: 1054, column: 3, scope: !3305)
!3313 = distinct !DISubprogram(name: "look_for_casts_stmt", scope: !3, file: !3, line: 767, type: !3314, scopeLine: 768, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!7, !923}
!3316 = !{!3317, !3318, !3319, !3322}
!3317 = !DILocalVariable(name: "s", arg: 1, scope: !3313, file: !3, line: 767, type: !923)
!3318 = !DILocalVariable(name: "cast", scope: !3313, file: !3, line: 769, type: !7)
!3319 = !DILocalVariable(name: "castfromvar", scope: !3320, file: !3, line: 775, type: !631)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 774, column: 5)
!3321 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 773, column: 7)
!3322 = !DILocalVariable(name: "i", scope: !3323, file: !3, line: 780, type: !1068)
!3323 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 779, column: 5)
!3324 = !DILocation(line: 0, scope: !3313)
!3325 = !DILocation(line: 771, column: 3, scope: !3313)
!3326 = !DILocation(line: 773, column: 7, scope: !3321)
!3327 = !DILocation(line: 773, column: 7, scope: !3313)
!3328 = !DILocation(line: 781, column: 7, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 781, column: 7)
!3330 = !DILocation(line: 775, column: 26, scope: !3320)
!3331 = !DILocation(line: 0, scope: !3320)
!3332 = !DILocation(line: 776, column: 27, scope: !3320)
!3333 = !DILocation(line: 776, column: 15, scope: !3320)
!3334 = !DILocation(line: 777, column: 5, scope: !3320)
!3335 = !DILocation(line: 0, scope: !3329)
!3336 = !DILocation(line: 0, scope: !3323)
!3337 = !DILocation(line: 781, column: 23, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 781, column: 7)
!3339 = !DILocation(line: 781, column: 21, scope: !3338)
!3340 = !DILocation(line: 782, column: 40, scope: !3338)
!3341 = !DILocation(line: 782, column: 26, scope: !3338)
!3342 = !DILocation(line: 782, column: 10, scope: !3338)
!3343 = !DILocation(line: 782, column: 7, scope: !3338)
!3344 = !DILocation(line: 781, column: 44, scope: !3338)
!3345 = !DILocation(line: 781, column: 7, scope: !3338)
!3346 = distinct !{!3346, !3328, !3347}
!3347 = !DILocation(line: 782, column: 42, scope: !3329)
!3348 = !DILocation(line: 785, column: 8, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 785, column: 7)
!3350 = !DILocation(line: 785, column: 7, scope: !3313)
!3351 = !DILocation(line: 788, column: 3, scope: !3313)
!3352 = distinct !DISubprogram(name: "op_iter_init_use", scope: !2712, file: !2712, line: 768, type: !3353, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3356)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!1755, !3355, !923, !558}
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!3356 = !{!3357, !3358, !3359}
!3357 = !DILocalVariable(name: "ptr", arg: 1, scope: !3352, file: !2712, line: 768, type: !3355)
!3358 = !DILocalVariable(name: "stmt", arg: 2, scope: !3352, file: !2712, line: 768, type: !923)
!3359 = !DILocalVariable(name: "flags", arg: 3, scope: !3352, file: !2712, line: 768, type: !558)
!3360 = !DILocation(line: 0, scope: !3352)
!3361 = !DILocation(line: 772, column: 3, scope: !3352)
!3362 = !DILocation(line: 773, column: 8, scope: !3352)
!3363 = !DILocation(line: 773, column: 18, scope: !3352)
!3364 = !DILocation(line: 774, column: 10, scope: !3352)
!3365 = !DILocation(line: 774, column: 3, scope: !3352)
!3366 = distinct !DISubprogram(name: "op_iter_done", scope: !2712, file: !2712, line: 652, type: !3367, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3371)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!557, !3369}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2634)
!3371 = !{!3372}
!3372 = !DILocalVariable(name: "ptr", arg: 1, scope: !3366, file: !2712, line: 652, type: !3369)
!3373 = !DILocation(line: 0, scope: !3366)
!3374 = !DILocation(line: 654, column: 15, scope: !3366)
!3375 = !DILocation(line: 654, column: 3, scope: !3366)
!3376 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2712, file: !2712, line: 427, type: !3377, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!631, !1755}
!3379 = !{!3380}
!3380 = !DILocalVariable(name: "use", arg: 1, scope: !3376, file: !2712, line: 427, type: !1755)
!3381 = !DILocation(line: 0, scope: !3376)
!3382 = !DILocation(line: 429, column: 17, scope: !3376)
!3383 = !DILocation(line: 429, column: 10, scope: !3376)
!3384 = !DILocation(line: 429, column: 3, scope: !3376)
!3385 = distinct !DISubprogram(name: "op_iter_next_use", scope: !2712, file: !2712, line: 659, type: !3386, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!1755, !3355}
!3388 = !{!3389, !3390}
!3389 = !DILocalVariable(name: "ptr", arg: 1, scope: !3385, file: !2712, line: 659, type: !3355)
!3390 = !DILocalVariable(name: "use_p", scope: !3385, file: !2712, line: 661, type: !1755)
!3391 = !DILocation(line: 0, scope: !3385)
!3392 = !DILocation(line: 665, column: 12, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3385, file: !2712, line: 665, column: 7)
!3394 = !DILocation(line: 665, column: 7, scope: !3393)
!3395 = !DILocation(line: 665, column: 7, scope: !3385)
!3396 = !DILocation(line: 667, column: 15, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3393, file: !2712, line: 666, column: 5)
!3398 = !DILocation(line: 668, column: 30, scope: !3397)
!3399 = !DILocation(line: 668, column: 17, scope: !3397)
!3400 = !DILocation(line: 669, column: 7, scope: !3397)
!3401 = !DILocation(line: 671, column: 12, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3385, file: !2712, line: 671, column: 7)
!3403 = !DILocation(line: 671, column: 25, scope: !3402)
!3404 = !DILocation(line: 671, column: 18, scope: !3402)
!3405 = !DILocation(line: 671, column: 7, scope: !3385)
!3406 = !DILocation(line: 673, column: 14, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3402, file: !2712, line: 672, column: 5)
!3408 = !DILocation(line: 673, column: 7, scope: !3407)
!3409 = !DILocation(line: 675, column: 8, scope: !3385)
!3410 = !DILocation(line: 675, column: 13, scope: !3385)
!3411 = !DILocation(line: 676, column: 3, scope: !3385)
!3412 = !DILocation(line: 677, column: 1, scope: !3385)
!3413 = distinct !DISubprogram(name: "gimple_assign_cast_p", scope: !440, file: !440, line: 1853, type: !3414, scopeLine: 1854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3416)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!557, !923}
!3416 = !{!3417, !3418}
!3417 = !DILocalVariable(name: "s", arg: 1, scope: !3413, file: !440, line: 1853, type: !923)
!3418 = !DILocalVariable(name: "sc", scope: !3419, file: !440, line: 1857, type: !5)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !440, line: 1856, column: 5)
!3420 = distinct !DILexicalBlock(scope: !3413, file: !440, line: 1855, column: 7)
!3421 = !DILocation(line: 0, scope: !3413)
!3422 = !DILocation(line: 1855, column: 7, scope: !3420)
!3423 = !DILocation(line: 1855, column: 7, scope: !3413)
!3424 = !DILocation(line: 1857, column: 27, scope: !3419)
!3425 = !DILocation(line: 0, scope: !3419)
!3426 = !DILocation(line: 1858, column: 14, scope: !3419)
!3427 = !DILocation(line: 1860, column: 7, scope: !3419)
!3428 = !DILocation(line: 1864, column: 1, scope: !3413)
!3429 = distinct !DISubprogram(name: "check_cast", scope: !3, file: !3, line: 690, type: !3430, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!478, !631, !631}
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438}
!3433 = !DILocalVariable(name: "to_type", arg: 1, scope: !3429, file: !3, line: 690, type: !631)
!3434 = !DILocalVariable(name: "from", arg: 2, scope: !3429, file: !3, line: 690, type: !631)
!3435 = !DILocalVariable(name: "from_type", scope: !3429, file: !3, line: 692, type: !631)
!3436 = !DILocalVariable(name: "to_interesting_type", scope: !3429, file: !3, line: 693, type: !557)
!3437 = !DILocalVariable(name: "from_interesting_type", scope: !3429, file: !3, line: 693, type: !557)
!3438 = !DILocalVariable(name: "cast", scope: !3429, file: !3, line: 694, type: !478)
!3439 = !DILocation(line: 0, scope: !3429)
!3440 = !DILocation(line: 692, column: 36, scope: !3429)
!3441 = !DILocation(line: 692, column: 20, scope: !3429)
!3442 = !DILocation(line: 696, column: 13, scope: !3429)
!3443 = !DILocation(line: 697, column: 8, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 697, column: 7)
!3445 = !DILocation(line: 697, column: 22, scope: !3444)
!3446 = !DILocation(line: 697, column: 18, scope: !3444)
!3447 = !DILocation(line: 697, column: 43, scope: !3444)
!3448 = !DILocation(line: 701, column: 5, scope: !3429)
!3449 = !DILocation(line: 703, column: 5, scope: !3429)
!3450 = !DILocation(line: 705, column: 7, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 705, column: 7)
!3452 = !DILocation(line: 0, scope: !3451)
!3453 = !DILocation(line: 705, column: 7, scope: !3429)
!3454 = !DILocation(line: 706, column: 9, scope: !3451)
!3455 = !DILocation(line: 714, column: 9, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 707, column: 7)
!3457 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 706, column: 9)
!3458 = !DILocation(line: 715, column: 2, scope: !3456)
!3459 = !DILocation(line: 723, column: 6, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3456, file: !3, line: 716, column: 4)
!3461 = !DILocation(line: 724, column: 6, scope: !3460)
!3462 = !DILocation(line: 725, column: 6, scope: !3460)
!3463 = !DILocation(line: 743, column: 6, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 743, column: 6)
!3465 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 732, column: 7)
!3466 = !DILocation(line: 743, column: 31, scope: !3464)
!3467 = !DILocation(line: 743, column: 35, scope: !3464)
!3468 = !DILocation(line: 743, column: 6, scope: !3465)
!3469 = !DILocation(line: 745, column: 11, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 745, column: 11)
!3471 = !DILocation(line: 745, column: 28, scope: !3470)
!3472 = !DILocation(line: 746, column: 4, scope: !3470)
!3473 = !DILocation(line: 746, column: 7, scope: !3470)
!3474 = !DILocation(line: 745, column: 11, scope: !3464)
!3475 = !DILocation(line: 751, column: 6, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 749, column: 4)
!3477 = !DILocation(line: 754, column: 12, scope: !3451)
!3478 = !DILocation(line: 756, column: 7, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !3, line: 755, column: 5)
!3480 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 754, column: 12)
!3481 = !DILocation(line: 758, column: 5, scope: !3479)
!3482 = !DILocation(line: 761, column: 1, scope: !3429)
!3483 = distinct !DISubprogram(name: "gimple_num_ops", scope: !440, file: !440, line: 1596, type: !3484, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!7, !2733}
!3486 = !{!3487}
!3487 = !DILocalVariable(name: "gs", arg: 1, scope: !3483, file: !440, line: 1596, type: !2733)
!3488 = !DILocation(line: 0, scope: !3483)
!3489 = !DILocation(line: 1598, column: 21, scope: !3483)
!3490 = !DILocation(line: 1598, column: 3, scope: !3483)
!3491 = distinct !DISubprogram(name: "look_for_casts", scope: !3, file: !3, line: 1239, type: !3492, scopeLine: 1240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3494)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!7, !631}
!3494 = !{!3495, !3496, !3497, !3500}
!3495 = !DILocalVariable(name: "t", arg: 1, scope: !3491, file: !3, line: 1239, type: !631)
!3496 = !DILocalVariable(name: "cast", scope: !3491, file: !3, line: 1241, type: !7)
!3497 = !DILocalVariable(name: "castfromvar", scope: !3498, file: !3, line: 1245, type: !631)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 1244, column: 5)
!3499 = distinct !DILexicalBlock(scope: !3491, file: !3, line: 1243, column: 7)
!3500 = !DILocalVariable(name: "castfromref", scope: !3501, file: !3, line: 1257, type: !631)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !3, line: 1253, column: 4)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !3, line: 1252, column: 6)
!3503 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 1250, column: 7)
!3504 = !DILocation(line: 0, scope: !3491)
!3505 = !DILocation(line: 1243, column: 7, scope: !3499)
!3506 = !DILocation(line: 1243, column: 26, scope: !3499)
!3507 = !DILocation(line: 1243, column: 29, scope: !3499)
!3508 = !DILocation(line: 1243, column: 43, scope: !3499)
!3509 = !DILocation(line: 1243, column: 7, scope: !3491)
!3510 = !DILocation(line: 1249, column: 5, scope: !3499)
!3511 = !DILocation(line: 1245, column: 26, scope: !3498)
!3512 = !DILocation(line: 0, scope: !3498)
!3513 = !DILocation(line: 1246, column: 33, scope: !3498)
!3514 = !DILocation(line: 1246, column: 21, scope: !3498)
!3515 = !DILocation(line: 1247, column: 5, scope: !3498)
!3516 = !DILocation(line: 1249, column: 12, scope: !3499)
!3517 = !DILocation(line: 1251, column: 6, scope: !3503)
!3518 = !DILocation(line: 1252, column: 6, scope: !3502)
!3519 = !DILocation(line: 1252, column: 20, scope: !3502)
!3520 = !DILocation(line: 1252, column: 6, scope: !3503)
!3521 = !DILocation(line: 1257, column: 25, scope: !3501)
!3522 = !DILocation(line: 0, scope: !3501)
!3523 = !DILocation(line: 1258, column: 32, scope: !3501)
!3524 = !DILocation(line: 1258, column: 20, scope: !3501)
!3525 = !DILocation(line: 1258, column: 18, scope: !3501)
!3526 = !DILocation(line: 1259, column: 4, scope: !3501)
!3527 = !DILocation(line: 1260, column: 25, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3502, file: !3, line: 1260, column: 11)
!3529 = !DILocation(line: 1260, column: 11, scope: !3502)
!3530 = !DILocation(line: 1261, column: 20, scope: !3528)
!3531 = !DILocation(line: 1261, column: 4, scope: !3528)
!3532 = distinct !{!3532, !3510, !3533}
!3533 = !DILocation(line: 1262, column: 7, scope: !3499)
!3534 = !DILocation(line: 1264, column: 8, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3491, file: !3, line: 1264, column: 7)
!3536 = !DILocation(line: 1264, column: 7, scope: !3491)
!3537 = !DILocation(line: 1266, column: 3, scope: !3491)
!3538 = distinct !DISubprogram(name: "gimple_op", scope: !440, file: !440, line: 1631, type: !3539, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!631, !2733, !7}
!3541 = !{!3542, !3543}
!3542 = !DILocalVariable(name: "gs", arg: 1, scope: !3538, file: !440, line: 1631, type: !2733)
!3543 = !DILocalVariable(name: "i", arg: 2, scope: !3538, file: !440, line: 1631, type: !7)
!3544 = !DILocation(line: 0, scope: !3538)
!3545 = !DILocation(line: 1633, column: 7, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3538, file: !440, line: 1633, column: 7)
!3547 = !DILocation(line: 1633, column: 7, scope: !3538)
!3548 = !DILocation(line: 1638, column: 14, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3546, file: !440, line: 1634, column: 5)
!3550 = !DILocation(line: 1638, column: 7, scope: !3549)
!3551 = !DILocation(line: 0, scope: !3546)
!3552 = !DILocation(line: 1642, column: 1, scope: !3538)
!3553 = distinct !DISubprogram(name: "check_cast_type", scope: !3, file: !3, line: 645, type: !3430, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3554)
!3554 = !{!3555, !3556, !3557, !3558}
!3555 = !DILocalVariable(name: "to_type", arg: 1, scope: !3553, file: !3, line: 645, type: !631)
!3556 = !DILocalVariable(name: "from_type", arg: 2, scope: !3553, file: !3, line: 645, type: !631)
!3557 = !DILocalVariable(name: "to_stars", scope: !3553, file: !3, line: 647, type: !558)
!3558 = !DILocalVariable(name: "from_stars", scope: !3553, file: !3, line: 648, type: !558)
!3559 = !DILocation(line: 0, scope: !3553)
!3560 = !DILocation(line: 647, column: 18, scope: !3553)
!3561 = !DILocation(line: 648, column: 20, scope: !3553)
!3562 = !DILocation(line: 649, column: 16, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 649, column: 7)
!3564 = !DILocation(line: 649, column: 7, scope: !3553)
!3565 = !DILocation(line: 652, column: 7, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 652, column: 7)
!3567 = !DILocation(line: 652, column: 18, scope: !3566)
!3568 = !DILocation(line: 652, column: 15, scope: !3566)
!3569 = !DILocation(line: 652, column: 7, scope: !3553)
!3570 = !DILocation(line: 655, column: 7, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 655, column: 7)
!3572 = !DILocation(line: 655, column: 7, scope: !3553)
!3573 = !DILocation(line: 656, column: 22, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 656, column: 7)
!3575 = !DILocation(line: 656, column: 33, scope: !3574)
!3576 = !DILocation(line: 656, column: 7, scope: !3574)
!3577 = !DILocation(line: 658, column: 1, scope: !3553)
!3578 = distinct !DISubprogram(name: "mark_type", scope: !3, file: !3, line: 467, type: !3579, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3581)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!631, !631, !489}
!3581 = !{!3582, !3583, !3584, !3585}
!3582 = !DILocalVariable(name: "type", arg: 1, scope: !3578, file: !3, line: 467, type: !631)
!3583 = !DILocalVariable(name: "escape_status", arg: 2, scope: !3578, file: !3, line: 467, type: !489)
!3584 = !DILocalVariable(name: "map", scope: !3578, file: !3, line: 469, type: !569)
!3585 = !DILocalVariable(name: "uid", scope: !3578, file: !3, line: 470, type: !558)
!3586 = !DILocation(line: 0, scope: !3578)
!3587 = !DILocation(line: 472, column: 10, scope: !3578)
!3588 = !DILocation(line: 473, column: 8, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 473, column: 7)
!3590 = !DILocation(line: 473, column: 7, scope: !3578)
!3591 = !DILocation(line: 476, column: 3, scope: !3578)
!3592 = !DILocation(line: 479, column: 13, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 477, column: 5)
!3594 = !DILocation(line: 480, column: 7, scope: !3593)
!3595 = !DILocation(line: 482, column: 13, scope: !3593)
!3596 = !DILocation(line: 483, column: 7, scope: !3593)
!3597 = !DILocation(line: 486, column: 9, scope: !3578)
!3598 = !DILocation(line: 487, column: 7, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 487, column: 7)
!3600 = !DILocation(line: 487, column: 7, scope: !3578)
!3601 = !DILocation(line: 491, column: 7, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 490, column: 5)
!3603 = !DILocation(line: 492, column: 25, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 492, column: 11)
!3605 = !DILocation(line: 492, column: 11, scope: !3602)
!3606 = !DILocation(line: 496, column: 20, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 493, column: 2)
!3608 = !DILocation(line: 496, column: 4, scope: !3607)
!3609 = !DILocation(line: 497, column: 2, scope: !3607)
!3610 = !DILocation(line: 500, column: 1, scope: !3578)
!3611 = distinct !DISubprogram(name: "is_malloc_result", scope: !3, file: !3, line: 664, type: !2359, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3612)
!3612 = !{!3613, !3614}
!3613 = !DILocalVariable(name: "var", arg: 1, scope: !3611, file: !3, line: 664, type: !631)
!3614 = !DILocalVariable(name: "def_stmt", scope: !3611, file: !3, line: 666, type: !923)
!3615 = !DILocation(line: 0, scope: !3611)
!3616 = !DILocation(line: 668, column: 8, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 668, column: 7)
!3618 = !DILocation(line: 668, column: 7, scope: !3611)
!3619 = !DILocation(line: 671, column: 7, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 671, column: 7)
!3621 = !DILocation(line: 671, column: 7, scope: !3611)
!3622 = !DILocation(line: 674, column: 14, scope: !3611)
!3623 = !DILocation(line: 676, column: 8, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 676, column: 7)
!3625 = !DILocation(line: 676, column: 7, scope: !3611)
!3626 = !DILocation(line: 679, column: 14, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 679, column: 7)
!3628 = !DILocation(line: 679, column: 11, scope: !3627)
!3629 = !DILocation(line: 679, column: 7, scope: !3611)
!3630 = !DILocation(line: 682, column: 12, scope: !3611)
!3631 = !DILocation(line: 682, column: 10, scope: !3611)
!3632 = !DILocation(line: 682, column: 3, scope: !3611)
!3633 = !DILocation(line: 684, column: 1, scope: !3611)
!3634 = distinct !DISubprogram(name: "count_stars", scope: !3, file: !3, line: 613, type: !3635, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3637)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!558, !957}
!3637 = !{!3638, !3639, !3640}
!3638 = !DILocalVariable(name: "type_ptr", arg: 1, scope: !3634, file: !3, line: 613, type: !957)
!3639 = !DILocalVariable(name: "type", scope: !3634, file: !3, line: 615, type: !631)
!3640 = !DILocalVariable(name: "i", scope: !3634, file: !3, line: 616, type: !558)
!3641 = !DILocation(line: 0, scope: !3634)
!3642 = !DILocation(line: 618, column: 3, scope: !3634)
!3643 = !DILocation(line: 618, column: 10, scope: !3634)
!3644 = !DILocation(line: 620, column: 14, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 619, column: 5)
!3646 = !DILocation(line: 621, column: 8, scope: !3645)
!3647 = distinct !{!3647, !3642, !3648}
!3648 = !DILocation(line: 622, column: 5, scope: !3634)
!3649 = !DILocation(line: 624, column: 13, scope: !3634)
!3650 = !DILocation(line: 625, column: 3, scope: !3634)
!3651 = distinct !DISubprogram(name: "parent_type_p", scope: !3, file: !3, line: 527, type: !2390, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3652)
!3652 = !{!3653, !3654, !3655, !3656, !3657, !3658, !3663, !3666, !3670, !3674, !3677}
!3653 = !DILocalVariable(name: "parent", arg: 1, scope: !3651, file: !3, line: 527, type: !631)
!3654 = !DILocalVariable(name: "child", arg: 2, scope: !3651, file: !3, line: 527, type: !631)
!3655 = !DILocalVariable(name: "i", scope: !3651, file: !3, line: 529, type: !558)
!3656 = !DILocalVariable(name: "binfo", scope: !3651, file: !3, line: 530, type: !631)
!3657 = !DILocalVariable(name: "base_binfo", scope: !3651, file: !3, line: 530, type: !631)
!3658 = !DILocalVariable(name: "binfotype", scope: !3659, file: !3, line: 535, type: !631)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 534, column: 7)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 532, column: 5)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !3, line: 532, column: 5)
!3662 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 531, column: 7)
!3663 = !DILocalVariable(name: "field", scope: !3664, file: !3, line: 544, type: !631)
!3664 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 543, column: 5)
!3665 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 541, column: 7)
!3666 = !DILocalVariable(name: "field_type", scope: !3667, file: !3, line: 551, type: !631)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 550, column: 2)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 547, column: 7)
!3669 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 547, column: 7)
!3670 = !DILocalVariable(name: "field_type", scope: !3671, file: !3, line: 566, type: !631)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 565, column: 2)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !3, line: 562, column: 7)
!3673 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 562, column: 7)
!3674 = !DILocalVariable(name: "field", scope: !3675, file: !3, line: 581, type: !631)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 580, column: 5)
!3676 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 579, column: 7)
!3677 = !DILocalVariable(name: "field_type", scope: !3678, file: !3, line: 586, type: !631)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 585, column: 2)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 582, column: 7)
!3680 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 582, column: 7)
!3681 = !DILocation(line: 0, scope: !3651)
!3682 = !DILocation(line: 530, column: 3, scope: !3651)
!3683 = !DILocation(line: 531, column: 7, scope: !3662)
!3684 = !DILocation(line: 531, column: 7, scope: !3651)
!3685 = !DILocation(line: 0, scope: !3660)
!3686 = !DILocation(line: 0, scope: !3659)
!3687 = !DILocation(line: 532, column: 10, scope: !3661)
!3688 = !DILocation(line: 0, scope: !3661)
!3689 = !DILocation(line: 533, column: 3, scope: !3660)
!3690 = !DILocation(line: 532, column: 5, scope: !3661)
!3691 = !DILocation(line: 535, column: 19, scope: !3659)
!3692 = !DILocation(line: 536, column: 16, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 536, column: 6)
!3694 = !DILocation(line: 536, column: 6, scope: !3659)
!3695 = !DILocation(line: 538, column: 11, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3693, file: !3, line: 538, column: 11)
!3697 = !DILocation(line: 538, column: 11, scope: !3693)
!3698 = !DILocation(line: 533, column: 47, scope: !3660)
!3699 = !DILocation(line: 532, column: 5, scope: !3660)
!3700 = distinct !{!3700, !3690, !3701}
!3701 = !DILocation(line: 540, column: 7, scope: !3661)
!3702 = !DILocation(line: 541, column: 7, scope: !3665)
!3703 = !DILocation(line: 541, column: 26, scope: !3665)
!3704 = !DILocation(line: 542, column: 7, scope: !3665)
!3705 = !DILocation(line: 542, column: 29, scope: !3665)
!3706 = !DILocation(line: 541, column: 7, scope: !3651)
!3707 = !DILocation(line: 547, column: 20, scope: !3669)
!3708 = !DILocation(line: 547, column: 12, scope: !3669)
!3709 = !DILocation(line: 0, scope: !3669)
!3710 = !DILocation(line: 0, scope: !3664)
!3711 = !DILocation(line: 547, column: 7, scope: !3669)
!3712 = !DILocation(line: 552, column: 8, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 552, column: 8)
!3714 = !DILocation(line: 552, column: 26, scope: !3713)
!3715 = !DILocation(line: 552, column: 8, scope: !3667)
!3716 = !DILocation(line: 555, column: 17, scope: !3667)
!3717 = !DILocation(line: 0, scope: !3667)
!3718 = !DILocation(line: 556, column: 19, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 556, column: 8)
!3720 = !DILocation(line: 0, scope: !3668)
!3721 = !DILocation(line: 549, column: 13, scope: !3668)
!3722 = !DILocation(line: 547, column: 7, scope: !3668)
!3723 = distinct !{!3723, !3711, !3724}
!3724 = !DILocation(line: 558, column: 2, scope: !3669)
!3725 = !DILocation(line: 562, column: 12, scope: !3673)
!3726 = !DILocation(line: 0, scope: !3673)
!3727 = !DILocation(line: 562, column: 7, scope: !3673)
!3728 = !DILocation(line: 567, column: 8, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 567, column: 8)
!3730 = !DILocation(line: 567, column: 26, scope: !3729)
!3731 = !DILocation(line: 567, column: 8, scope: !3671)
!3732 = !DILocation(line: 570, column: 17, scope: !3671)
!3733 = !DILocation(line: 0, scope: !3671)
!3734 = !DILocation(line: 571, column: 8, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 571, column: 8)
!3736 = !DILocation(line: 571, column: 31, scope: !3735)
!3737 = !DILocation(line: 572, column: 8, scope: !3735)
!3738 = !DILocation(line: 572, column: 34, scope: !3735)
!3739 = !DILocation(line: 573, column: 8, scope: !3735)
!3740 = !DILocation(line: 573, column: 34, scope: !3735)
!3741 = !DILocation(line: 571, column: 8, scope: !3671)
!3742 = !DILocation(line: 574, column: 10, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 574, column: 10)
!3744 = !DILocation(line: 574, column: 10, scope: !3735)
!3745 = !DILocation(line: 576, column: 2, scope: !3672)
!3746 = !DILocation(line: 564, column: 13, scope: !3672)
!3747 = !DILocation(line: 562, column: 7, scope: !3672)
!3748 = distinct !{!3748, !3727, !3749}
!3749 = !DILocation(line: 576, column: 2, scope: !3673)
!3750 = !DILocation(line: 579, column: 7, scope: !3676)
!3751 = !DILocation(line: 579, column: 26, scope: !3676)
!3752 = !DILocation(line: 579, column: 7, scope: !3651)
!3753 = !DILocation(line: 582, column: 20, scope: !3680)
!3754 = !DILocation(line: 582, column: 12, scope: !3680)
!3755 = !DILocation(line: 0, scope: !3680)
!3756 = !DILocation(line: 0, scope: !3675)
!3757 = !DILocation(line: 582, column: 7, scope: !3680)
!3758 = !DILocation(line: 587, column: 8, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 587, column: 8)
!3760 = !DILocation(line: 587, column: 26, scope: !3759)
!3761 = !DILocation(line: 587, column: 8, scope: !3678)
!3762 = !DILocation(line: 590, column: 17, scope: !3678)
!3763 = !DILocation(line: 0, scope: !3678)
!3764 = !DILocation(line: 591, column: 19, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 591, column: 8)
!3766 = !DILocation(line: 591, column: 8, scope: !3678)
!3767 = !DILocation(line: 595, column: 8, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 595, column: 8)
!3769 = !DILocation(line: 595, column: 31, scope: !3768)
!3770 = !DILocation(line: 596, column: 8, scope: !3768)
!3771 = !DILocation(line: 596, column: 34, scope: !3768)
!3772 = !DILocation(line: 597, column: 8, scope: !3768)
!3773 = !DILocation(line: 597, column: 34, scope: !3768)
!3774 = !DILocation(line: 595, column: 8, scope: !3678)
!3775 = !DILocation(line: 599, column: 12, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3777, file: !3, line: 599, column: 12)
!3777 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 598, column: 6)
!3778 = !DILocation(line: 0, scope: !3776)
!3779 = !DILocation(line: 584, column: 13, scope: !3679)
!3780 = !DILocation(line: 582, column: 7, scope: !3679)
!3781 = distinct !{!3781, !3757, !3782}
!3782 = !DILocation(line: 604, column: 2, scope: !3680)
!3783 = !DILocation(line: 605, column: 5, scope: !3676)
!3784 = !DILocation(line: 606, column: 3, scope: !3651)
!3785 = !DILocation(line: 607, column: 1, scope: !3651)
!3786 = distinct !DISubprogram(name: "VEC_tree_base_iterate", scope: !6, file: !6, line: 182, type: !3787, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3791)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!558, !3789, !7, !957}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1269)
!3791 = !{!3792, !3793, !3794}
!3792 = !DILocalVariable(name: "vec_", arg: 1, scope: !3786, file: !6, line: 182, type: !3789)
!3793 = !DILocalVariable(name: "ix_", arg: 2, scope: !3786, file: !6, line: 182, type: !7)
!3794 = !DILocalVariable(name: "ptr", arg: 3, scope: !3786, file: !6, line: 182, type: !957)
!3795 = !DILocation(line: 0, scope: !3786)
!3796 = !DILocation(line: 182, column: 1, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3786, file: !6, line: 182, column: 1)
!3798 = !DILocation(line: 182, column: 1, scope: !3786)
!3799 = !DILocation(line: 182, column: 1, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3797, file: !6, line: 182, column: 1)
!3801 = !DILocation(line: 182, column: 1, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3797, file: !6, line: 182, column: 1)
!3803 = !DILocation(line: 0, scope: !3797)
!3804 = distinct !DISubprogram(name: "is_gimple_call", scope: !440, file: !440, line: 1870, type: !2731, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3805)
!3805 = !{!3806}
!3806 = !DILocalVariable(name: "gs", arg: 1, scope: !3804, file: !440, line: 1870, type: !2733)
!3807 = !DILocation(line: 0, scope: !3804)
!3808 = !DILocation(line: 1872, column: 10, scope: !3804)
!3809 = !DILocation(line: 1872, column: 27, scope: !3804)
!3810 = !DILocation(line: 1872, column: 3, scope: !3804)
!3811 = distinct !DISubprogram(name: "gimple_call_lhs", scope: !440, file: !440, line: 1878, type: !2741, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3812)
!3812 = !{!3813}
!3813 = !DILocalVariable(name: "gs", arg: 1, scope: !3811, file: !440, line: 1878, type: !2733)
!3814 = !DILocation(line: 0, scope: !3811)
!3815 = !DILocation(line: 1881, column: 10, scope: !3811)
!3816 = !DILocation(line: 1881, column: 3, scope: !3811)
!3817 = distinct !DISubprogram(name: "handled_component_p", scope: !6, file: !6, line: 4551, type: !3818, scopeLine: 4552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3823)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!557, !3820}
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !570, line: 59, baseType: !3821)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!3823 = !{!3824}
!3824 = !DILocalVariable(name: "t", arg: 1, scope: !3817, file: !6, line: 4551, type: !3820)
!3825 = !DILocation(line: 0, scope: !3817)
!3826 = !DILocation(line: 4553, column: 11, scope: !3817)
!3827 = !DILocation(line: 4553, column: 3, scope: !3817)
!3828 = !DILocation(line: 4565, column: 7, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3817, file: !6, line: 4554, column: 5)
!3830 = !DILocation(line: 0, scope: !3829)
!3831 = !DILocation(line: 4567, column: 1, scope: !3817)
!3832 = distinct !DISubprogram(name: "gimple_has_ops", scope: !440, file: !440, line: 1274, type: !2731, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3833)
!3833 = !{!3834}
!3834 = !DILocalVariable(name: "g", arg: 1, scope: !3832, file: !440, line: 1274, type: !2733)
!3835 = !DILocation(line: 0, scope: !3832)
!3836 = !DILocation(line: 1276, column: 10, scope: !3832)
!3837 = !DILocation(line: 1276, column: 26, scope: !3832)
!3838 = !DILocation(line: 1276, column: 41, scope: !3832)
!3839 = !DILocation(line: 1276, column: 44, scope: !3832)
!3840 = !DILocation(line: 1276, column: 60, scope: !3832)
!3841 = !DILocation(line: 1276, column: 3, scope: !3832)
!3842 = distinct !DISubprogram(name: "gimple_ops", scope: !440, file: !440, line: 1614, type: !3843, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3845)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!957, !923}
!3845 = !{!3846, !3847}
!3846 = !DILocalVariable(name: "gs", arg: 1, scope: !3842, file: !440, line: 1614, type: !923)
!3847 = !DILocalVariable(name: "off", scope: !3842, file: !440, line: 1616, type: !1068)
!3848 = !DILocation(line: 0, scope: !3842)
!3849 = !DILocation(line: 1621, column: 28, scope: !3842)
!3850 = !DILocation(line: 1621, column: 9, scope: !3842)
!3851 = !DILocation(line: 1622, column: 3, scope: !3842)
!3852 = !DILocation(line: 1624, column: 20, scope: !3842)
!3853 = !DILocation(line: 1624, column: 32, scope: !3842)
!3854 = !DILocation(line: 1624, column: 10, scope: !3842)
!3855 = !DILocation(line: 1624, column: 3, scope: !3842)
!3856 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !440, file: !440, line: 1073, type: !3857, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3859)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!493, !923}
!3859 = !{!3860}
!3860 = !DILocalVariable(name: "gs", arg: 1, scope: !3856, file: !440, line: 1073, type: !923)
!3861 = !DILocation(line: 0, scope: !3856)
!3862 = !DILocation(line: 1075, column: 24, scope: !3856)
!3863 = !DILocation(line: 1075, column: 10, scope: !3856)
!3864 = !DILocation(line: 1075, column: 3, scope: !3856)
!3865 = distinct !DISubprogram(name: "gss_for_code", scope: !440, file: !440, line: 1061, type: !3866, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!493, !439}
!3868 = !{!3869}
!3869 = !DILocalVariable(name: "code", arg: 1, scope: !3865, file: !440, line: 1061, type: !439)
!3870 = !DILocation(line: 0, scope: !3865)
!3871 = !DILocation(line: 1066, column: 10, scope: !3865)
!3872 = !DILocation(line: 1066, column: 3, scope: !3865)
!3873 = distinct !DISubprogram(name: "op_iter_init", scope: !2712, file: !2712, line: 742, type: !3874, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !3355, !923, !558}
!3876 = !{!3877, !3878, !3879}
!3877 = !DILocalVariable(name: "ptr", arg: 1, scope: !3873, file: !2712, line: 742, type: !3355)
!3878 = !DILocalVariable(name: "stmt", arg: 2, scope: !3873, file: !2712, line: 742, type: !923)
!3879 = !DILocalVariable(name: "flags", arg: 3, scope: !3873, file: !2712, line: 742, type: !558)
!3880 = !DILocation(line: 0, scope: !3873)
!3881 = !DILocation(line: 746, column: 3, scope: !3873)
!3882 = !DILocation(line: 748, column: 22, scope: !3873)
!3883 = !DILocation(line: 748, column: 15, scope: !3873)
!3884 = !DILocation(line: 748, column: 52, scope: !3873)
!3885 = !DILocation(line: 748, column: 8, scope: !3873)
!3886 = !DILocation(line: 748, column: 13, scope: !3873)
!3887 = !DILocation(line: 749, column: 15, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3873, file: !2712, line: 749, column: 7)
!3889 = !DILocation(line: 750, column: 7, scope: !3888)
!3890 = !DILocation(line: 750, column: 10, scope: !3888)
!3891 = !DILocation(line: 751, column: 7, scope: !3888)
!3892 = !DILocation(line: 751, column: 10, scope: !3888)
!3893 = !DILocation(line: 751, column: 29, scope: !3888)
!3894 = !DILocation(line: 749, column: 7, scope: !3873)
!3895 = !DILocation(line: 752, column: 22, scope: !3888)
!3896 = !DILocation(line: 752, column: 28, scope: !3888)
!3897 = !DILocation(line: 752, column: 15, scope: !3888)
!3898 = !DILocation(line: 752, column: 5, scope: !3888)
!3899 = !DILocation(line: 753, column: 22, scope: !3873)
!3900 = !DILocation(line: 753, column: 15, scope: !3873)
!3901 = !DILocation(line: 753, column: 52, scope: !3873)
!3902 = !DILocation(line: 753, column: 8, scope: !3873)
!3903 = !DILocation(line: 753, column: 13, scope: !3873)
!3904 = !DILocation(line: 754, column: 15, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3873, file: !2712, line: 754, column: 7)
!3906 = !DILocation(line: 755, column: 7, scope: !3905)
!3907 = !DILocation(line: 755, column: 10, scope: !3905)
!3908 = !DILocation(line: 756, column: 7, scope: !3905)
!3909 = !DILocation(line: 756, column: 10, scope: !3905)
!3910 = !DILocation(line: 756, column: 29, scope: !3905)
!3911 = !DILocation(line: 754, column: 7, scope: !3873)
!3912 = !DILocation(line: 757, column: 22, scope: !3905)
!3913 = !DILocation(line: 757, column: 28, scope: !3905)
!3914 = !DILocation(line: 757, column: 15, scope: !3905)
!3915 = !DILocation(line: 757, column: 5, scope: !3905)
!3916 = !DILocation(line: 758, column: 8, scope: !3873)
!3917 = !DILocation(line: 758, column: 13, scope: !3873)
!3918 = !DILocation(line: 760, column: 8, scope: !3873)
!3919 = !DILocation(line: 760, column: 14, scope: !3873)
!3920 = !DILocation(line: 761, column: 8, scope: !3873)
!3921 = !DILocation(line: 761, column: 16, scope: !3873)
!3922 = !DILocation(line: 762, column: 8, scope: !3873)
!3923 = !DILocation(line: 762, column: 17, scope: !3873)
!3924 = !DILocation(line: 763, column: 1, scope: !3873)
!3925 = distinct !DISubprogram(name: "gimple_def_ops", scope: !440, file: !440, line: 1292, type: !3926, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3928)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!952, !2733}
!3928 = !{!3929}
!3929 = !DILocalVariable(name: "g", arg: 1, scope: !3925, file: !440, line: 1292, type: !2733)
!3930 = !DILocation(line: 0, scope: !3925)
!3931 = !DILocation(line: 1294, column: 8, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3925, file: !440, line: 1294, column: 7)
!3933 = !DILocation(line: 1294, column: 7, scope: !3925)
!3934 = !DILocation(line: 1296, column: 26, scope: !3925)
!3935 = !DILocation(line: 1296, column: 3, scope: !3925)
!3936 = !DILocation(line: 1297, column: 1, scope: !3925)
!3937 = distinct !DISubprogram(name: "gimple_vdef", scope: !440, file: !440, line: 1375, type: !2741, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3938)
!3938 = !{!3939}
!3939 = !DILocalVariable(name: "g", arg: 1, scope: !3937, file: !440, line: 1375, type: !2733)
!3940 = !DILocation(line: 0, scope: !3937)
!3941 = !DILocation(line: 1377, column: 8, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3937, file: !440, line: 1377, column: 7)
!3943 = !DILocation(line: 1377, column: 7, scope: !3937)
!3944 = !DILocation(line: 1379, column: 23, scope: !3937)
!3945 = !DILocation(line: 1379, column: 3, scope: !3937)
!3946 = !DILocation(line: 1380, column: 1, scope: !3937)
!3947 = distinct !DISubprogram(name: "gimple_use_ops", scope: !440, file: !440, line: 1313, type: !3948, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3950)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!959, !2733}
!3950 = !{!3951}
!3951 = !DILocalVariable(name: "g", arg: 1, scope: !3947, file: !440, line: 1313, type: !2733)
!3952 = !DILocation(line: 0, scope: !3947)
!3953 = !DILocation(line: 1315, column: 8, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3947, file: !440, line: 1315, column: 7)
!3955 = !DILocation(line: 1315, column: 7, scope: !3947)
!3956 = !DILocation(line: 1317, column: 26, scope: !3947)
!3957 = !DILocation(line: 1317, column: 3, scope: !3947)
!3958 = !DILocation(line: 1318, column: 1, scope: !3947)
!3959 = distinct !DISubprogram(name: "gimple_vuse", scope: !440, file: !440, line: 1365, type: !2741, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3960)
!3960 = !{!3961}
!3961 = !DILocalVariable(name: "g", arg: 1, scope: !3959, file: !440, line: 1365, type: !2733)
!3962 = !DILocation(line: 0, scope: !3959)
!3963 = !DILocation(line: 1367, column: 8, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3959, file: !440, line: 1367, column: 7)
!3965 = !DILocation(line: 1367, column: 7, scope: !3959)
!3966 = !DILocation(line: 1369, column: 23, scope: !3959)
!3967 = !DILocation(line: 1369, column: 3, scope: !3959)
!3968 = !DILocation(line: 1370, column: 1, scope: !3959)
!3969 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !440, file: !440, line: 1283, type: !2731, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3970)
!3970 = !{!3971}
!3971 = !DILocalVariable(name: "g", arg: 1, scope: !3969, file: !440, line: 1283, type: !2733)
!3972 = !DILocation(line: 0, scope: !3969)
!3973 = !DILocation(line: 1285, column: 10, scope: !3969)
!3974 = !DILocation(line: 1285, column: 26, scope: !3969)
!3975 = !DILocation(line: 1285, column: 43, scope: !3969)
!3976 = !DILocation(line: 1285, column: 46, scope: !3969)
!3977 = !DILocation(line: 1285, column: 62, scope: !3969)
!3978 = !DILocation(line: 1285, column: 3, scope: !3969)
!3979 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2712, file: !2712, line: 442, type: !3980, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3982)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!1755, !923, !558}
!3982 = !{!3983, !3984}
!3983 = !DILocalVariable(name: "gs", arg: 1, scope: !3979, file: !2712, line: 442, type: !923)
!3984 = !DILocalVariable(name: "i", arg: 2, scope: !3979, file: !2712, line: 442, type: !558)
!3985 = !DILocation(line: 0, scope: !3979)
!3986 = !DILocation(line: 444, column: 11, scope: !3979)
!3987 = !DILocation(line: 444, column: 35, scope: !3979)
!3988 = !DILocation(line: 444, column: 3, scope: !3979)
!3989 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !440, file: !440, line: 3100, type: !3990, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3993)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!3992, !923, !7}
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!3993 = !{!3994, !3995}
!3994 = !DILocalVariable(name: "gs", arg: 1, scope: !3989, file: !440, line: 3100, type: !923)
!3995 = !DILocalVariable(name: "index", arg: 2, scope: !3989, file: !440, line: 3100, type: !7)
!3996 = !DILocation(line: 0, scope: !3989)
!3997 = !DILocation(line: 3103, column: 3, scope: !3989)
!3998 = !DILocation(line: 3104, column: 12, scope: !3989)
!3999 = !DILocation(line: 3104, column: 3, scope: !3989)
!4000 = distinct !DISubprogram(name: "op_iter_init_tree", scope: !2712, file: !2712, line: 792, type: !4001, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4003)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!631, !3355, !923, !558}
!4003 = !{!4004, !4005, !4006}
!4004 = !DILocalVariable(name: "ptr", arg: 1, scope: !4000, file: !2712, line: 792, type: !3355)
!4005 = !DILocalVariable(name: "stmt", arg: 2, scope: !4000, file: !2712, line: 792, type: !923)
!4006 = !DILocalVariable(name: "flags", arg: 3, scope: !4000, file: !2712, line: 792, type: !558)
!4007 = !DILocation(line: 0, scope: !4000)
!4008 = !DILocation(line: 794, column: 3, scope: !4000)
!4009 = !DILocation(line: 795, column: 8, scope: !4000)
!4010 = !DILocation(line: 795, column: 18, scope: !4000)
!4011 = !DILocation(line: 796, column: 10, scope: !4000)
!4012 = !DILocation(line: 796, column: 3, scope: !4000)
!4013 = distinct !DISubprogram(name: "op_iter_next_tree", scope: !2712, file: !2712, line: 699, type: !4014, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!631, !3355}
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "ptr", arg: 1, scope: !4013, file: !2712, line: 699, type: !3355)
!4018 = !DILocalVariable(name: "val", scope: !4013, file: !2712, line: 701, type: !631)
!4019 = !DILocation(line: 0, scope: !4013)
!4020 = !DILocation(line: 705, column: 12, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4013, file: !2712, line: 705, column: 7)
!4022 = !DILocation(line: 705, column: 7, scope: !4021)
!4023 = !DILocation(line: 705, column: 7, scope: !4013)
!4024 = !DILocation(line: 707, column: 13, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4021, file: !2712, line: 706, column: 5)
!4026 = !DILocation(line: 708, column: 24, scope: !4025)
!4027 = !DILocation(line: 708, column: 30, scope: !4025)
!4028 = !DILocation(line: 708, column: 17, scope: !4025)
!4029 = !DILocation(line: 709, column: 7, scope: !4025)
!4030 = !DILocation(line: 711, column: 12, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4013, file: !2712, line: 711, column: 7)
!4032 = !DILocation(line: 711, column: 7, scope: !4031)
!4033 = !DILocation(line: 711, column: 7, scope: !4013)
!4034 = !DILocation(line: 713, column: 13, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4031, file: !2712, line: 712, column: 5)
!4036 = !DILocation(line: 714, column: 24, scope: !4035)
!4037 = !DILocation(line: 714, column: 30, scope: !4035)
!4038 = !DILocation(line: 714, column: 17, scope: !4035)
!4039 = !DILocation(line: 715, column: 7, scope: !4035)
!4040 = !DILocation(line: 718, column: 8, scope: !4013)
!4041 = !DILocation(line: 718, column: 13, scope: !4013)
!4042 = !DILocation(line: 719, column: 3, scope: !4013)
!4043 = !DILocation(line: 721, column: 1, scope: !4013)
!4044 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2712, file: !2712, line: 434, type: !4045, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4048)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!631, !4047}
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !433, line: 27, baseType: !957)
!4048 = !{!4049}
!4049 = !DILocalVariable(name: "def", arg: 1, scope: !4044, file: !2712, line: 434, type: !4047)
!4050 = !DILocation(line: 0, scope: !4044)
!4051 = !DILocation(line: 436, column: 10, scope: !4044)
!4052 = !DILocation(line: 436, column: 3, scope: !4044)
!4053 = distinct !DISubprogram(name: "gimple_expr_code", scope: !440, file: !440, line: 1438, type: !2749, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4054)
!4054 = !{!4055, !4056}
!4055 = !DILocalVariable(name: "stmt", arg: 1, scope: !4053, file: !440, line: 1438, type: !2733)
!4056 = !DILocalVariable(name: "code", scope: !4053, file: !440, line: 1440, type: !439)
!4057 = !DILocation(line: 0, scope: !4053)
!4058 = !DILocation(line: 1440, column: 27, scope: !4053)
!4059 = !DILocation(line: 1441, column: 29, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4053, file: !440, line: 1441, column: 7)
!4061 = !DILocation(line: 1442, column: 42, scope: !4060)
!4062 = !DILocation(line: 1442, column: 5, scope: !4060)
!4063 = !DILocation(line: 1446, column: 5, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4060, file: !440, line: 1443, column: 12)
!4065 = !DILocation(line: 1448, column: 5, scope: !4053)
!4066 = !DILocation(line: 1450, column: 1, scope: !4053)
!4067 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !440, file: !440, line: 1686, type: !4068, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4070)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!519, !5}
!4070 = !{!4071}
!4071 = !DILocalVariable(name: "code", arg: 1, scope: !4067, file: !440, line: 1686, type: !5)
!4072 = !DILocation(line: 0, scope: !4067)
!4073 = !DILocation(line: 1688, column: 34, scope: !4067)
!4074 = !DILocation(line: 1688, column: 10, scope: !4067)
!4075 = !DILocation(line: 1688, column: 3, scope: !4067)
!4076 = distinct !DISubprogram(name: "ipa_init", scope: !3, file: !3, line: 1605, type: !2852, scopeLine: 1606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1880)
!4077 = !DILocation(line: 1607, column: 3, scope: !4076)
!4078 = !DILocation(line: 1608, column: 36, scope: !4076)
!4079 = !DILocation(line: 1608, column: 34, scope: !4076)
!4080 = !DILocation(line: 1609, column: 30, scope: !4076)
!4081 = !DILocation(line: 1609, column: 28, scope: !4076)
!4082 = !DILocation(line: 1610, column: 23, scope: !4076)
!4083 = !DILocation(line: 1610, column: 21, scope: !4076)
!4084 = !DILocation(line: 1612, column: 23, scope: !4076)
!4085 = !DILocation(line: 1612, column: 21, scope: !4076)
!4086 = !DILocation(line: 1613, column: 21, scope: !4076)
!4087 = !DILocation(line: 1613, column: 19, scope: !4076)
!4088 = !DILocation(line: 1614, column: 24, scope: !4076)
!4089 = !DILocation(line: 1614, column: 22, scope: !4076)
!4090 = !DILocation(line: 1615, column: 24, scope: !4076)
!4091 = !DILocation(line: 1615, column: 22, scope: !4076)
!4092 = !DILocation(line: 1616, column: 31, scope: !4076)
!4093 = !DILocation(line: 1616, column: 29, scope: !4076)
!4094 = !DILocation(line: 1617, column: 29, scope: !4076)
!4095 = !DILocation(line: 1617, column: 27, scope: !4076)
!4096 = !DILocation(line: 1623, column: 19, scope: !4076)
!4097 = !DILocation(line: 1623, column: 17, scope: !4076)
!4098 = !DILocation(line: 1624, column: 15, scope: !4076)
!4099 = !DILocation(line: 1625, column: 1, scope: !4076)
!4100 = distinct !DISubprogram(name: "analyze_variable", scope: !3, file: !3, line: 1634, type: !2893, scopeLine: 1635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4101)
!4101 = !{!4102, !4103, !4104}
!4102 = !DILocalVariable(name: "vnode", arg: 1, scope: !4100, file: !3, line: 1634, type: !2895)
!4103 = !DILocalVariable(name: "global", scope: !4100, file: !3, line: 1636, type: !631)
!4104 = !DILocalVariable(name: "type", scope: !4100, file: !3, line: 1637, type: !631)
!4105 = !DILocation(line: 0, scope: !4100)
!4106 = !DILocation(line: 1636, column: 24, scope: !4100)
!4107 = !DILocation(line: 1637, column: 31, scope: !4100)
!4108 = !DILocation(line: 1637, column: 15, scope: !4100)
!4109 = !DILocation(line: 1642, column: 14, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 1642, column: 7)
!4111 = !DILocation(line: 1642, column: 7, scope: !4110)
!4112 = !DILocation(line: 1642, column: 7, scope: !4100)
!4113 = !DILocation(line: 1643, column: 5, scope: !4110)
!4114 = !DILocation(line: 1645, column: 3, scope: !4100)
!4115 = !DILocation(line: 1647, column: 7, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 1647, column: 7)
!4117 = !DILocation(line: 1647, column: 7, scope: !4100)
!4118 = !DILocation(line: 1648, column: 5, scope: !4116)
!4119 = !DILocation(line: 1649, column: 1, scope: !4100)
!4120 = distinct !DISubprogram(name: "analyze_function", scope: !3, file: !3, line: 1655, type: !2880, scopeLine: 1656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4121)
!4121 = !{!4122, !4123, !4124, !4126, !4127, !4137, !4140}
!4122 = !DILocalVariable(name: "fn", arg: 1, scope: !4120, file: !3, line: 1655, type: !2791)
!4123 = !DILocalVariable(name: "decl", scope: !4120, file: !3, line: 1657, type: !631)
!4124 = !DILocalVariable(name: "this_cfun", scope: !4125, file: !3, line: 1664, type: !874)
!4125 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1663, column: 3)
!4126 = !DILocalVariable(name: "this_block", scope: !4125, file: !3, line: 1665, type: !886)
!4127 = !DILocalVariable(name: "gsi", scope: !4128, file: !3, line: 1669, type: !4131)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 1668, column: 7)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 1667, column: 5)
!4130 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 1667, column: 5)
!4131 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !440, line: 265, baseType: !4132)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 254, size: 192, elements: !4133)
!4133 = !{!4134, !4135, !4136}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4132, file: !440, line: 257, baseType: !918, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4132, file: !440, line: 263, baseType: !913, size: 64, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !4132, file: !440, line: 264, baseType: !886, size: 64, offset: 128)
!4137 = !DILocalVariable(name: "step", scope: !4138, file: !3, line: 1678, type: !631)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 1677, column: 5)
!4139 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1676, column: 7)
!4140 = !DILocalVariable(name: "var", scope: !4141, file: !3, line: 1683, type: !631)
!4141 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 1682, column: 2)
!4142 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 1679, column: 7)
!4143 = distinct !DILexicalBlock(scope: !4138, file: !3, line: 1679, column: 7)
!4144 = !DILocation(line: 0, scope: !4120)
!4145 = !DILocation(line: 1657, column: 19, scope: !4120)
!4146 = !DILocation(line: 1659, column: 21, scope: !4120)
!4147 = !DILocation(line: 1658, column: 3, scope: !4120)
!4148 = !DILocation(line: 1660, column: 7, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1660, column: 7)
!4150 = !DILocation(line: 1660, column: 7, scope: !4120)
!4151 = !DILocation(line: 1661, column: 52, scope: !4149)
!4152 = !DILocation(line: 1661, column: 5, scope: !4149)
!4153 = !DILocation(line: 1664, column: 34, scope: !4125)
!4154 = !DILocation(line: 0, scope: !4125)
!4155 = !DILocation(line: 1667, column: 5, scope: !4130)
!4156 = !DILocation(line: 0, scope: !4128)
!4157 = !DILocation(line: 0, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 1670, column: 2)
!4159 = !DILocation(line: 1667, column: 5, scope: !4129)
!4160 = !DILocation(line: 0, scope: !4130)
!4161 = !DILocation(line: 1669, column: 2, scope: !4128)
!4162 = !DILocation(line: 1670, column: 13, scope: !4158)
!4163 = !DILocation(line: 1670, column: 7, scope: !4158)
!4164 = !DILocation(line: 1670, column: 41, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 1670, column: 2)
!4166 = !DILocation(line: 1670, column: 40, scope: !4165)
!4167 = !DILocation(line: 1670, column: 2, scope: !4158)
!4168 = !DILocation(line: 1671, column: 19, scope: !4165)
!4169 = !DILocation(line: 1671, column: 4, scope: !4165)
!4170 = !DILocation(line: 1670, column: 58, scope: !4165)
!4171 = !DILocation(line: 1670, column: 2, scope: !4165)
!4172 = distinct !{!4172, !4167, !4173}
!4173 = !DILocation(line: 1671, column: 33, scope: !4158)
!4174 = !DILocation(line: 1672, column: 7, scope: !4129)
!4175 = distinct !{!4175, !4155, !4176}
!4176 = !DILocation(line: 1672, column: 7, scope: !4130)
!4177 = !DILocation(line: 1676, column: 7, scope: !4139)
!4178 = !DILocation(line: 1676, column: 7, scope: !4120)
!4179 = !DILocation(line: 1679, column: 48, scope: !4143)
!4180 = !DILocation(line: 1679, column: 12, scope: !4143)
!4181 = !DILocation(line: 0, scope: !4143)
!4182 = !DILocation(line: 0, scope: !4138)
!4183 = !DILocation(line: 1679, column: 7, scope: !4143)
!4184 = !DILocation(line: 1683, column: 15, scope: !4141)
!4185 = !DILocation(line: 0, scope: !4141)
!4186 = !DILocation(line: 1684, column: 8, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 1684, column: 8)
!4188 = !DILocation(line: 1684, column: 24, scope: !4187)
!4189 = !DILocation(line: 1685, column: 8, scope: !4187)
!4190 = !DILocation(line: 1685, column: 11, scope: !4187)
!4191 = !DILocation(line: 1686, column: 8, scope: !4187)
!4192 = !DILocation(line: 1686, column: 12, scope: !4187)
!4193 = !DILocation(line: 1684, column: 8, scope: !4141)
!4194 = !DILocation(line: 1687, column: 6, scope: !4187)
!4195 = !DILocation(line: 1688, column: 20, scope: !4141)
!4196 = !DILocation(line: 1688, column: 4, scope: !4141)
!4197 = !DILocation(line: 1681, column: 12, scope: !4142)
!4198 = !DILocation(line: 1679, column: 7, scope: !4142)
!4199 = distinct !{!4199, !4183, !4200}
!4200 = !DILocation(line: 1689, column: 2, scope: !4143)
!4201 = !DILocation(line: 1691, column: 1, scope: !4120)
!4202 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !573, file: !573, line: 224, type: !4203, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4210)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{null, !4205, !4206, !7, !4209}
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !570, line: 48, baseType: !4207)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4210 = !{!4211, !4212, !4213, !4214}
!4211 = !DILocalVariable(name: "bi", arg: 1, scope: !4202, file: !573, line: 224, type: !4205)
!4212 = !DILocalVariable(name: "map", arg: 2, scope: !4202, file: !573, line: 224, type: !4206)
!4213 = !DILocalVariable(name: "start_bit", arg: 3, scope: !4202, file: !573, line: 225, type: !7)
!4214 = !DILocalVariable(name: "bit_no", arg: 4, scope: !4202, file: !573, line: 225, type: !4209)
!4215 = !DILocation(line: 0, scope: !4202)
!4216 = !DILocation(line: 227, column: 19, scope: !4202)
!4217 = !DILocation(line: 227, column: 12, scope: !4202)
!4218 = !DILocation(line: 228, column: 7, scope: !4202)
!4219 = !DILocation(line: 228, column: 12, scope: !4202)
!4220 = !DILocation(line: 0, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !573, line: 233, column: 11)
!4222 = distinct !DILexicalBlock(scope: !4202, file: !573, line: 232, column: 5)
!4223 = !DILocation(line: 231, column: 3, scope: !4202)
!4224 = !DILocation(line: 233, column: 12, scope: !4221)
!4225 = !DILocation(line: 233, column: 11, scope: !4222)
!4226 = !DILocation(line: 235, column: 13, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4221, file: !573, line: 234, column: 2)
!4228 = !DILocation(line: 236, column: 4, scope: !4227)
!4229 = !DILocation(line: 239, column: 11, scope: !4222)
!4230 = distinct !{!4230, !4223, !4231}
!4231 = !DILocation(line: 242, column: 5, scope: !4202)
!4232 = !DILocation(line: 245, column: 11, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4202, file: !573, line: 245, column: 7)
!4234 = !DILocation(line: 245, column: 17, scope: !4233)
!4235 = !DILocation(line: 245, column: 22, scope: !4233)
!4236 = !DILocation(line: 245, column: 7, scope: !4202)
!4237 = !DILocation(line: 246, column: 27, scope: !4233)
!4238 = !DILocation(line: 246, column: 32, scope: !4233)
!4239 = !DILocation(line: 246, column: 5, scope: !4233)
!4240 = !DILocation(line: 249, column: 7, scope: !4202)
!4241 = !DILocation(line: 249, column: 15, scope: !4202)
!4242 = !DILocation(line: 250, column: 14, scope: !4202)
!4243 = !DILocation(line: 251, column: 7, scope: !4202)
!4244 = !DILocation(line: 251, column: 12, scope: !4202)
!4245 = !DILocation(line: 257, column: 16, scope: !4202)
!4246 = !DILocation(line: 257, column: 13, scope: !4202)
!4247 = !DILocation(line: 259, column: 11, scope: !4202)
!4248 = !DILocation(line: 260, column: 1, scope: !4202)
!4249 = distinct !DISubprogram(name: "bmp_iter_set", scope: !573, file: !573, line: 393, type: !4250, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4252)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!557, !4205, !4209}
!4252 = !{!4253, !4254, !4255}
!4253 = !DILocalVariable(name: "bi", arg: 1, scope: !4249, file: !573, line: 393, type: !4205)
!4254 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4249, file: !573, line: 393, type: !4209)
!4255 = !DILabel(scope: !4256, name: "next_bit", file: !573, line: 398)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !573, line: 397, column: 5)
!4257 = distinct !DILexicalBlock(scope: !4249, file: !573, line: 396, column: 7)
!4258 = !DILocation(line: 0, scope: !4249)
!4259 = !DILocation(line: 396, column: 11, scope: !4257)
!4260 = !DILocation(line: 396, column: 7, scope: !4257)
!4261 = !DILocation(line: 396, column: 7, scope: !4249)
!4262 = !DILocation(line: 419, column: 15, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !573, line: 418, column: 2)
!4264 = distinct !DILexicalBlock(scope: !4249, file: !573, line: 415, column: 5)
!4265 = !DILocation(line: 399, column: 7, scope: !4256)
!4266 = !DILocation(line: 398, column: 5, scope: !4256)
!4267 = !DILocation(line: 399, column: 20, scope: !4256)
!4268 = !DILocation(line: 399, column: 25, scope: !4256)
!4269 = !DILocation(line: 399, column: 14, scope: !4256)
!4270 = !DILocation(line: 401, column: 13, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4256, file: !573, line: 400, column: 2)
!4272 = !DILocation(line: 402, column: 12, scope: !4271)
!4273 = distinct !{!4273, !4265, !4274}
!4274 = !DILocation(line: 403, column: 2, scope: !4256)
!4275 = !DILocation(line: 410, column: 15, scope: !4249)
!4276 = !DILocation(line: 410, column: 42, scope: !4249)
!4277 = !DILocation(line: 411, column: 26, scope: !4249)
!4278 = !DILocation(line: 410, column: 11, scope: !4249)
!4279 = !DILocation(line: 412, column: 7, scope: !4249)
!4280 = !DILocation(line: 412, column: 14, scope: !4249)
!4281 = !DILocation(line: 0, scope: !4264)
!4282 = !DILocation(line: 414, column: 3, scope: !4249)
!4283 = !DILocation(line: 417, column: 7, scope: !4264)
!4284 = !DILocation(line: 417, column: 18, scope: !4264)
!4285 = !DILocation(line: 417, column: 26, scope: !4264)
!4286 = !DILocation(line: 419, column: 13, scope: !4263)
!4287 = !DILocation(line: 420, column: 8, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4263, file: !573, line: 420, column: 8)
!4289 = !DILocation(line: 420, column: 8, scope: !4263)
!4290 = !DILocation(line: 422, column: 12, scope: !4263)
!4291 = !DILocation(line: 423, column: 15, scope: !4263)
!4292 = distinct !{!4292, !4283, !4293}
!4293 = !DILocation(line: 424, column: 2, scope: !4264)
!4294 = !DILocation(line: 427, column: 28, scope: !4264)
!4295 = !DILocation(line: 427, column: 16, scope: !4264)
!4296 = !DILocation(line: 428, column: 12, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4264, file: !573, line: 428, column: 11)
!4298 = !DILocation(line: 428, column: 11, scope: !4264)
!4299 = !DILocation(line: 430, column: 27, scope: !4264)
!4300 = !DILocation(line: 430, column: 32, scope: !4264)
!4301 = !DILocation(line: 430, column: 15, scope: !4264)
!4302 = !DILocation(line: 431, column: 19, scope: !4264)
!4303 = distinct !{!4303, !4282, !4304}
!4304 = !DILocation(line: 432, column: 5, scope: !4249)
!4305 = !DILocation(line: 433, column: 1, scope: !4249)
!4306 = distinct !DISubprogram(name: "type_for_uid", scope: !3, file: !3, line: 1697, type: !4307, scopeLine: 1698, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4309)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!631, !558}
!4309 = !{!4310, !4311}
!4310 = !DILocalVariable(name: "uid", arg: 1, scope: !4306, file: !3, line: 1697, type: !558)
!4311 = !DILocalVariable(name: "result", scope: !4306, file: !3, line: 1699, type: !1796)
!4312 = !DILocation(line: 0, scope: !4306)
!4313 = !DILocation(line: 1700, column: 24, scope: !4306)
!4314 = !DILocation(line: 1700, column: 43, scope: !4306)
!4315 = !DILocation(line: 1700, column: 5, scope: !4306)
!4316 = !DILocation(line: 1702, column: 7, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 1702, column: 7)
!4318 = !DILocation(line: 1702, column: 7, scope: !4306)
!4319 = !DILocation(line: 1703, column: 27, scope: !4317)
!4320 = !DILocation(line: 1703, column: 5, scope: !4317)
!4321 = !DILocation(line: 0, scope: !4317)
!4322 = !DILocation(line: 1705, column: 1, scope: !4306)
!4323 = distinct !DISubprogram(name: "close_type_seen", scope: !3, file: !3, line: 1736, type: !4324, scopeLine: 1737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4326)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{null, !631}
!4326 = !{!4327, !4328, !4329, !4330, !4331, !4332, !4333, !4338, !4339}
!4327 = !DILocalVariable(name: "type", arg: 1, scope: !4323, file: !3, line: 1736, type: !631)
!4328 = !DILocalVariable(name: "field", scope: !4323, file: !3, line: 1738, type: !631)
!4329 = !DILocalVariable(name: "i", scope: !4323, file: !3, line: 1739, type: !558)
!4330 = !DILocalVariable(name: "uid", scope: !4323, file: !3, line: 1739, type: !558)
!4331 = !DILocalVariable(name: "binfo", scope: !4323, file: !3, line: 1740, type: !631)
!4332 = !DILocalVariable(name: "base_binfo", scope: !4323, file: !3, line: 1740, type: !631)
!4333 = !DILocalVariable(name: "binfo_type", scope: !4334, file: !3, line: 1759, type: !631)
!4334 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 1758, column: 7)
!4335 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 1756, column: 5)
!4336 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 1756, column: 5)
!4337 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 1755, column: 7)
!4338 = !DILocalVariable(name: "subtype_map", scope: !4334, file: !3, line: 1760, type: !569)
!4339 = !DILocalVariable(name: "field_type", scope: !4340, file: !3, line: 1772, type: !631)
!4340 = distinct !DILexicalBlock(scope: !4341, file: !3, line: 1771, column: 5)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 1768, column: 3)
!4342 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 1768, column: 3)
!4343 = !DILocation(line: 0, scope: !4323)
!4344 = !DILocation(line: 1740, column: 3, scope: !4323)
!4345 = !DILocation(line: 1743, column: 10, scope: !4323)
!4346 = !DILocation(line: 1744, column: 8, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 1744, column: 7)
!4348 = !DILocation(line: 1744, column: 7, scope: !4323)
!4349 = !DILocation(line: 1747, column: 9, scope: !4323)
!4350 = !DILocation(line: 1749, column: 21, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 1749, column: 7)
!4352 = !DILocation(line: 1749, column: 7, scope: !4351)
!4353 = !DILocation(line: 1749, column: 7, scope: !4323)
!4354 = !DILocation(line: 1751, column: 19, scope: !4323)
!4355 = !DILocation(line: 1751, column: 3, scope: !4323)
!4356 = !DILocation(line: 1755, column: 7, scope: !4337)
!4357 = !DILocation(line: 1755, column: 7, scope: !4323)
!4358 = !DILocation(line: 0, scope: !4335)
!4359 = !DILocation(line: 0, scope: !4334)
!4360 = !DILocation(line: 1756, column: 10, scope: !4336)
!4361 = !DILocation(line: 0, scope: !4336)
!4362 = !DILocation(line: 1757, column: 3, scope: !4335)
!4363 = !DILocation(line: 1756, column: 5, scope: !4336)
!4364 = !DILocation(line: 1759, column: 20, scope: !4334)
!4365 = !DILocation(line: 1761, column: 5, scope: !4334)
!4366 = !DILocation(line: 1760, column: 23, scope: !4334)
!4367 = !DILocation(line: 1762, column: 2, scope: !4334)
!4368 = !DILocation(line: 1763, column: 19, scope: !4334)
!4369 = !DILocation(line: 1763, column: 2, scope: !4334)
!4370 = !DILocation(line: 1757, column: 47, scope: !4335)
!4371 = !DILocation(line: 1756, column: 5, scope: !4335)
!4372 = distinct !{!4372, !4363, !4373}
!4373 = !DILocation(line: 1764, column: 7, scope: !4336)
!4374 = !DILocation(line: 1768, column: 16, scope: !4342)
!4375 = !DILocation(line: 1768, column: 8, scope: !4342)
!4376 = !DILocation(line: 0, scope: !4342)
!4377 = !DILocation(line: 1768, column: 3, scope: !4342)
!4378 = !DILocation(line: 1773, column: 11, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 1773, column: 11)
!4380 = !DILocation(line: 1773, column: 29, scope: !4379)
!4381 = !DILocation(line: 1773, column: 11, scope: !4340)
!4382 = !DILocation(line: 1776, column: 20, scope: !4340)
!4383 = !DILocation(line: 0, scope: !4340)
!4384 = !DILocation(line: 1777, column: 11, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 1777, column: 11)
!4386 = !DILocation(line: 1777, column: 80, scope: !4385)
!4387 = !DILocation(line: 1777, column: 11, scope: !4340)
!4388 = !DILocation(line: 1778, column: 19, scope: !4385)
!4389 = !DILocation(line: 1778, column: 2, scope: !4385)
!4390 = !DILocation(line: 1770, column: 16, scope: !4341)
!4391 = !DILocation(line: 1768, column: 3, scope: !4341)
!4392 = distinct !{!4392, !4377, !4393}
!4393 = !DILocation(line: 1779, column: 5, scope: !4342)
!4394 = !DILocation(line: 1780, column: 1, scope: !4323)
!4395 = distinct !DISubprogram(name: "bmp_iter_next", scope: !573, file: !573, line: 382, type: !4396, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4398)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !4205, !4209}
!4398 = !{!4399, !4400}
!4399 = !DILocalVariable(name: "bi", arg: 1, scope: !4395, file: !573, line: 382, type: !4205)
!4400 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4395, file: !573, line: 382, type: !4209)
!4401 = !DILocation(line: 0, scope: !4395)
!4402 = !DILocation(line: 384, column: 7, scope: !4395)
!4403 = !DILocation(line: 384, column: 12, scope: !4395)
!4404 = !DILocation(line: 385, column: 11, scope: !4395)
!4405 = !DILocation(line: 386, column: 1, scope: !4395)
!4406 = distinct !DISubprogram(name: "close_type_exposed_parameter", scope: !3, file: !3, line: 1788, type: !4324, scopeLine: 1789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4407)
!4407 = !{!4408, !4409, !4410, !4411}
!4408 = !DILocalVariable(name: "type", arg: 1, scope: !4406, file: !3, line: 1788, type: !631)
!4409 = !DILocalVariable(name: "field", scope: !4406, file: !3, line: 1790, type: !631)
!4410 = !DILocalVariable(name: "uid", scope: !4406, file: !3, line: 1791, type: !558)
!4411 = !DILocalVariable(name: "field_type", scope: !4412, file: !3, line: 1809, type: !631)
!4412 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 1808, column: 5)
!4413 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 1805, column: 3)
!4414 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 1805, column: 3)
!4415 = !DILocation(line: 0, scope: !4406)
!4416 = !DILocation(line: 1793, column: 10, scope: !4406)
!4417 = !DILocation(line: 1794, column: 8, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 1794, column: 7)
!4419 = !DILocation(line: 1794, column: 7, scope: !4406)
!4420 = !DILocation(line: 1796, column: 9, scope: !4406)
!4421 = !DILocation(line: 1797, column: 3, scope: !4406)
!4422 = !DILocation(line: 1799, column: 21, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 1799, column: 7)
!4424 = !DILocation(line: 1799, column: 7, scope: !4423)
!4425 = !DILocation(line: 1799, column: 7, scope: !4406)
!4426 = !DILocation(line: 1801, column: 19, scope: !4406)
!4427 = !DILocation(line: 1801, column: 3, scope: !4406)
!4428 = !DILocation(line: 1805, column: 16, scope: !4414)
!4429 = !DILocation(line: 1805, column: 8, scope: !4414)
!4430 = !DILocation(line: 0, scope: !4414)
!4431 = !DILocation(line: 1805, column: 3, scope: !4414)
!4432 = !DILocation(line: 1811, column: 11, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 1811, column: 11)
!4434 = !DILocation(line: 1811, column: 29, scope: !4433)
!4435 = !DILocation(line: 1811, column: 11, scope: !4412)
!4436 = !DILocation(line: 1814, column: 36, scope: !4412)
!4437 = !DILocation(line: 1814, column: 20, scope: !4412)
!4438 = !DILocation(line: 0, scope: !4412)
!4439 = !DILocation(line: 1815, column: 7, scope: !4412)
!4440 = !DILocation(line: 1818, column: 11, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 1818, column: 11)
!4442 = !DILocation(line: 1818, column: 71, scope: !4441)
!4443 = !DILocation(line: 1818, column: 11, scope: !4412)
!4444 = !DILocation(line: 1819, column: 2, scope: !4441)
!4445 = !DILocation(line: 1807, column: 16, scope: !4413)
!4446 = !DILocation(line: 1805, column: 3, scope: !4413)
!4447 = distinct !{!4447, !4431, !4448}
!4448 = !DILocation(line: 1820, column: 5, scope: !4414)
!4449 = !DILocation(line: 1821, column: 1, scope: !4406)
!4450 = distinct !DISubprogram(name: "close_type_full_escape", scope: !3, file: !3, line: 1838, type: !4324, scopeLine: 1839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4451)
!4451 = !{!4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4466, !4471, !4475}
!4452 = !DILocalVariable(name: "type", arg: 1, scope: !4450, file: !3, line: 1838, type: !631)
!4453 = !DILocalVariable(name: "field", scope: !4450, file: !3, line: 1840, type: !631)
!4454 = !DILocalVariable(name: "i", scope: !4450, file: !3, line: 1841, type: !7)
!4455 = !DILocalVariable(name: "uid", scope: !4450, file: !3, line: 1842, type: !558)
!4456 = !DILocalVariable(name: "binfo", scope: !4450, file: !3, line: 1843, type: !631)
!4457 = !DILocalVariable(name: "base_binfo", scope: !4450, file: !3, line: 1843, type: !631)
!4458 = !DILocalVariable(name: "bi", scope: !4450, file: !3, line: 1844, type: !2998)
!4459 = !DILocalVariable(name: "subtype_map", scope: !4450, file: !3, line: 1845, type: !569)
!4460 = !DILocalVariable(name: "address_result", scope: !4450, file: !3, line: 1846, type: !1796)
!4461 = !DILocalVariable(name: "binfotype", scope: !4462, file: !3, line: 1866, type: !631)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 1865, column: 7)
!4463 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 1863, column: 5)
!4464 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 1863, column: 5)
!4465 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 1862, column: 7)
!4466 = !DILocalVariable(name: "subtype", scope: !4467, file: !3, line: 1876, type: !631)
!4467 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 1875, column: 7)
!4468 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 1874, column: 5)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 1874, column: 5)
!4470 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 1873, column: 7)
!4471 = !DILocalVariable(name: "field_type", scope: !4472, file: !3, line: 1887, type: !631)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 1886, column: 5)
!4473 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 1883, column: 3)
!4474 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 1883, column: 3)
!4475 = !DILocalVariable(name: "containing_classes", scope: !4476, file: !3, line: 1905, type: !569)
!4476 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 1904, column: 5)
!4477 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 1903, column: 7)
!4478 = !DILocation(line: 0, scope: !4450)
!4479 = !DILocation(line: 1841, column: 3, scope: !4450)
!4480 = !DILocation(line: 1843, column: 3, scope: !4450)
!4481 = !DILocation(line: 1844, column: 3, scope: !4450)
!4482 = !DILocation(line: 1849, column: 10, scope: !4450)
!4483 = !DILocation(line: 1850, column: 8, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 1850, column: 7)
!4485 = !DILocation(line: 1850, column: 7, scope: !4450)
!4486 = !DILocation(line: 1852, column: 9, scope: !4450)
!4487 = !DILocation(line: 1854, column: 21, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 1854, column: 7)
!4489 = !DILocation(line: 1854, column: 7, scope: !4488)
!4490 = !DILocation(line: 1854, column: 7, scope: !4450)
!4491 = !DILocation(line: 1856, column: 19, scope: !4450)
!4492 = !DILocation(line: 1856, column: 3, scope: !4450)
!4493 = !DILocation(line: 1858, column: 17, scope: !4450)
!4494 = !DILocation(line: 1862, column: 7, scope: !4465)
!4495 = !DILocation(line: 1862, column: 7, scope: !4450)
!4496 = !DILocation(line: 0, scope: !4463)
!4497 = !DILocation(line: 0, scope: !4462)
!4498 = !DILocation(line: 1863, column: 10, scope: !4464)
!4499 = !DILocation(line: 0, scope: !4464)
!4500 = !DILocation(line: 1864, column: 3, scope: !4463)
!4501 = !DILocation(line: 1863, column: 5, scope: !4464)
!4502 = !DILocation(line: 1866, column: 19, scope: !4462)
!4503 = !DILocation(line: 1867, column: 14, scope: !4462)
!4504 = !DILocation(line: 1868, column: 2, scope: !4462)
!4505 = !DILocation(line: 1864, column: 47, scope: !4463)
!4506 = !DILocation(line: 1863, column: 5, scope: !4463)
!4507 = distinct !{!4507, !4501, !4508}
!4508 = !DILocation(line: 1869, column: 7, scope: !4464)
!4509 = !DILocation(line: 1873, column: 7, scope: !4470)
!4510 = !DILocation(line: 1873, column: 7, scope: !4450)
!4511 = !DILocation(line: 1874, column: 5, scope: !4469)
!4512 = !DILocation(line: 1874, column: 5, scope: !4468)
!4513 = !DILocation(line: 1876, column: 31, scope: !4467)
!4514 = !DILocation(line: 1876, column: 17, scope: !4467)
!4515 = !DILocation(line: 0, scope: !4467)
!4516 = !DILocation(line: 1877, column: 12, scope: !4467)
!4517 = !DILocation(line: 1878, column: 2, scope: !4467)
!4518 = distinct !{!4518, !4511, !4519}
!4519 = !DILocation(line: 1879, column: 7, scope: !4469)
!4520 = !DILocation(line: 1883, column: 16, scope: !4474)
!4521 = !DILocation(line: 1883, column: 8, scope: !4474)
!4522 = !DILocation(line: 0, scope: !4474)
!4523 = !DILocation(line: 1883, column: 3, scope: !4474)
!4524 = !DILocation(line: 1888, column: 11, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 1888, column: 11)
!4526 = !DILocation(line: 1888, column: 29, scope: !4525)
!4527 = !DILocation(line: 1888, column: 11, scope: !4472)
!4528 = !DILocation(line: 1891, column: 20, scope: !4472)
!4529 = !DILocation(line: 0, scope: !4472)
!4530 = !DILocation(line: 1892, column: 11, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 1892, column: 11)
!4532 = !DILocation(line: 1892, column: 80, scope: !4531)
!4533 = !DILocation(line: 1892, column: 11, scope: !4472)
!4534 = !DILocation(line: 1894, column: 17, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 1893, column: 2)
!4536 = !DILocation(line: 1895, column: 4, scope: !4535)
!4537 = !DILocation(line: 1896, column: 2, scope: !4535)
!4538 = !DILocation(line: 1885, column: 16, scope: !4473)
!4539 = !DILocation(line: 1883, column: 3, scope: !4473)
!4540 = distinct !{!4540, !4523, !4541}
!4541 = !DILocation(line: 1897, column: 5, scope: !4474)
!4542 = !DILocation(line: 1901, column: 39, scope: !4450)
!4543 = !DILocation(line: 1902, column: 11, scope: !4450)
!4544 = !DILocation(line: 1901, column: 20, scope: !4450)
!4545 = !DILocation(line: 1903, column: 7, scope: !4477)
!4546 = !DILocation(line: 1903, column: 7, scope: !4450)
!4547 = !DILocation(line: 1905, column: 60, scope: !4476)
!4548 = !DILocation(line: 0, scope: !4476)
!4549 = !DILocation(line: 1906, column: 7, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 1906, column: 7)
!4551 = !DILocation(line: 1906, column: 7, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 1906, column: 7)
!4553 = !DILocation(line: 1908, column: 42, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 1907, column: 2)
!4555 = !DILocation(line: 1908, column: 28, scope: !4554)
!4556 = !DILocation(line: 1908, column: 4, scope: !4554)
!4557 = distinct !{!4557, !4549, !4558}
!4558 = !DILocation(line: 1909, column: 2, scope: !4550)
!4559 = !DILocation(line: 1911, column: 1, scope: !4450)
!4560 = distinct !DISubprogram(name: "close_addressof_down", scope: !3, file: !3, line: 1918, type: !4561, scopeLine: 1919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4563)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!569, !558}
!4563 = !{!4564, !4565, !4566, !4567, !4568, !4569, !4570}
!4564 = !DILocalVariable(name: "uid", arg: 1, scope: !4560, file: !3, line: 1918, type: !558)
!4565 = !DILocalVariable(name: "bi", scope: !4560, file: !3, line: 1920, type: !2998)
!4566 = !DILocalVariable(name: "result", scope: !4560, file: !3, line: 1921, type: !1796)
!4567 = !DILocalVariable(name: "map", scope: !4560, file: !3, line: 1923, type: !569)
!4568 = !DILocalVariable(name: "new_map", scope: !4560, file: !3, line: 1924, type: !569)
!4569 = !DILocalVariable(name: "i", scope: !4560, file: !3, line: 1925, type: !7)
!4570 = !DILocalVariable(name: "submap", scope: !4571, file: !3, line: 1951, type: !569)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 1950, column: 5)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 1949, column: 3)
!4573 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 1949, column: 3)
!4574 = !DILocation(line: 0, scope: !4560)
!4575 = !DILocation(line: 1920, column: 3, scope: !4560)
!4576 = !DILocation(line: 1922, column: 24, scope: !4560)
!4577 = !DILocation(line: 1922, column: 51, scope: !4560)
!4578 = !DILocation(line: 1922, column: 5, scope: !4560)
!4579 = !DILocation(line: 1925, column: 3, scope: !4560)
!4580 = !DILocation(line: 1927, column: 7, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 1927, column: 7)
!4582 = !DILocation(line: 1927, column: 7, scope: !4560)
!4583 = !DILocation(line: 1928, column: 28, scope: !4581)
!4584 = !DILocation(line: 1932, column: 21, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 1932, column: 7)
!4586 = !DILocation(line: 1932, column: 7, scope: !4585)
!4587 = !DILocation(line: 1932, column: 7, scope: !4560)
!4588 = !DILocation(line: 1934, column: 19, scope: !4560)
!4589 = !DILocation(line: 1934, column: 3, scope: !4560)
!4590 = !DILocation(line: 1938, column: 21, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 1938, column: 7)
!4592 = !DILocation(line: 1938, column: 7, scope: !4591)
!4593 = !DILocation(line: 1938, column: 7, scope: !4560)
!4594 = !DILocation(line: 1940, column: 7, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 1939, column: 5)
!4596 = !DILocation(line: 1941, column: 26, scope: !4595)
!4597 = !DILocation(line: 1941, column: 7, scope: !4595)
!4598 = !DILocation(line: 1942, column: 7, scope: !4595)
!4599 = !DILocation(line: 1947, column: 13, scope: !4560)
!4600 = !DILocation(line: 1949, column: 3, scope: !4573)
!4601 = !DILocation(line: 1949, column: 3, scope: !4572)
!4602 = !DILocation(line: 1951, column: 45, scope: !4571)
!4603 = !DILocation(line: 1951, column: 23, scope: !4571)
!4604 = !DILocation(line: 0, scope: !4571)
!4605 = !DILocation(line: 1952, column: 32, scope: !4571)
!4606 = !DILocation(line: 1952, column: 7, scope: !4571)
!4607 = !DILocation(line: 1953, column: 11, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 1953, column: 11)
!4609 = !DILocation(line: 1953, column: 11, scope: !4571)
!4610 = !DILocation(line: 1954, column: 2, scope: !4608)
!4611 = distinct !{!4611, !4600, !4612}
!4612 = !DILocation(line: 1955, column: 5, scope: !4573)
!4613 = !DILocation(line: 1956, column: 19, scope: !4560)
!4614 = !DILocation(line: 1956, column: 17, scope: !4560)
!4615 = !DILocation(line: 1958, column: 3, scope: !4560)
!4616 = !DILocation(line: 1959, column: 3, scope: !4560)
!4617 = !DILocation(line: 1960, column: 1, scope: !4560)
!4618 = distinct !DISubprogram(name: "compare_type_brand", scope: !3, file: !3, line: 180, type: !1807, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4619)
!4619 = !{!4620, !4621, !4622, !4623, !4624}
!4620 = !DILocalVariable(name: "sk1", arg: 1, scope: !4618, file: !3, line: 180, type: !565)
!4621 = !DILocalVariable(name: "sk2", arg: 2, scope: !4618, file: !3, line: 180, type: !565)
!4622 = !DILocalVariable(name: "k1", scope: !4618, file: !3, line: 182, type: !1741)
!4623 = !DILocalVariable(name: "k2", scope: !4618, file: !3, line: 183, type: !1741)
!4624 = !DILocalVariable(name: "value", scope: !4618, file: !3, line: 185, type: !558)
!4625 = !DILocation(line: 0, scope: !4618)
!4626 = !DILocation(line: 182, column: 30, scope: !4618)
!4627 = !DILocation(line: 183, column: 30, scope: !4618)
!4628 = !DILocation(line: 185, column: 26, scope: !4618)
!4629 = !DILocation(line: 185, column: 36, scope: !4618)
!4630 = !DILocation(line: 185, column: 15, scope: !4618)
!4631 = !DILocation(line: 186, column: 13, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 186, column: 7)
!4633 = !DILocation(line: 186, column: 7, scope: !4618)
!4634 = !DILocation(line: 187, column: 16, scope: !4632)
!4635 = !DILocation(line: 187, column: 26, scope: !4632)
!4636 = !DILocation(line: 187, column: 20, scope: !4632)
!4637 = !DILocation(line: 187, column: 5, scope: !4632)
!4638 = !DILocation(line: 0, scope: !4632)
!4639 = !DILocation(line: 190, column: 1, scope: !4618)
!4640 = distinct !DISubprogram(name: "mark_interesting_type", scope: !3, file: !3, line: 507, type: !4641, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4643)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{null, !631, !489}
!4643 = !{!4644, !4645}
!4644 = !DILocalVariable(name: "type", arg: 1, scope: !4640, file: !3, line: 507, type: !631)
!4645 = !DILocalVariable(name: "escape_status", arg: 2, scope: !4640, file: !3, line: 507, type: !489)
!4646 = !DILocation(line: 0, scope: !4640)
!4647 = !DILocation(line: 509, column: 8, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 509, column: 7)
!4649 = !DILocation(line: 509, column: 7, scope: !4640)
!4650 = !DILocation(line: 510, column: 7, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 510, column: 7)
!4652 = !DILocation(line: 510, column: 61, scope: !4651)
!4653 = !DILocation(line: 510, column: 7, scope: !4640)
!4654 = !DILocation(line: 512, column: 26, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 512, column: 11)
!4656 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 511, column: 5)
!4657 = !DILocation(line: 513, column: 4, scope: !4655)
!4658 = !DILocation(line: 513, column: 7, scope: !4655)
!4659 = !DILocation(line: 512, column: 11, scope: !4656)
!4660 = !DILocation(line: 517, column: 2, scope: !4655)
!4661 = !DILocation(line: 519, column: 2, scope: !4655)
!4662 = !DILocation(line: 521, column: 1, scope: !4640)
!4663 = distinct !DISubprogram(name: "check_tree", scope: !3, file: !3, line: 1129, type: !4324, scopeLine: 1130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4664)
!4664 = !{!4665}
!4665 = !DILocalVariable(name: "t", arg: 1, scope: !4663, file: !3, line: 1129, type: !631)
!4666 = !DILocation(line: 1148, column: 2, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4668, file: !3, line: 1147, column: 11)
!4668 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 1145, column: 5)
!4669 = distinct !DILexicalBlock(scope: !4663, file: !3, line: 1144, column: 7)
!4670 = !DILocation(line: 0, scope: !4663)
!4671 = !DILocation(line: 1133, column: 3, scope: !4663)
!4672 = !DILocation(line: 1133, column: 10, scope: !4663)
!4673 = !DILocation(line: 1135, column: 25, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 1135, column: 11)
!4675 = distinct !DILexicalBlock(scope: !4663, file: !3, line: 1134, column: 5)
!4676 = !DILocation(line: 1135, column: 11, scope: !4675)
!4677 = !DILocation(line: 1136, column: 17, scope: !4674)
!4678 = !DILocation(line: 1136, column: 2, scope: !4674)
!4679 = !DILocation(line: 1137, column: 11, scope: !4675)
!4680 = distinct !{!4680, !4671, !4681}
!4681 = !DILocation(line: 1138, column: 5, scope: !4663)
!4682 = !DILocation(line: 1140, column: 7, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4663, file: !3, line: 1140, column: 7)
!4684 = !DILocation(line: 1140, column: 7, scope: !4663)
!4685 = !DILocation(line: 1142, column: 17, scope: !4683)
!4686 = !DILocation(line: 1142, column: 5, scope: !4683)
!4687 = !DILocation(line: 1144, column: 7, scope: !4669)
!4688 = !DILocation(line: 1144, column: 21, scope: !4669)
!4689 = !DILocation(line: 1144, column: 39, scope: !4669)
!4690 = !DILocation(line: 1144, column: 7, scope: !4663)
!4691 = !DILocation(line: 1146, column: 7, scope: !4668)
!4692 = !DILocation(line: 1147, column: 11, scope: !4667)
!4693 = !DILocation(line: 1147, column: 22, scope: !4667)
!4694 = !DILocation(line: 1147, column: 25, scope: !4667)
!4695 = !DILocation(line: 1147, column: 11, scope: !4668)
!4696 = !DILocation(line: 1150, column: 1, scope: !4663)
!4697 = distinct !DISubprogram(name: "check_operand", scope: !3, file: !3, line: 1113, type: !4324, scopeLine: 1114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4698)
!4698 = !{!4699}
!4699 = !DILocalVariable(name: "t", arg: 1, scope: !4697, file: !3, line: 1113, type: !631)
!4700 = !DILocation(line: 0, scope: !4697)
!4701 = !DILocation(line: 1115, column: 8, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 1115, column: 7)
!4703 = !DILocation(line: 1115, column: 7, scope: !4697)
!4704 = !DILocation(line: 1119, column: 7, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 1119, column: 7)
!4706 = !DILocation(line: 1119, column: 21, scope: !4705)
!4707 = !DILocation(line: 1119, column: 7, scope: !4697)
!4708 = !DILocation(line: 1120, column: 5, scope: !4705)
!4709 = !DILocation(line: 1122, column: 26, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 1122, column: 12)
!4711 = !DILocation(line: 1122, column: 12, scope: !4705)
!4712 = !DILocation(line: 1123, column: 5, scope: !4710)
!4713 = !DILocation(line: 1124, column: 1, scope: !4697)
!4714 = distinct !DISubprogram(name: "check_function_parameter_and_return_types", scope: !3, file: !3, line: 1028, type: !4715, scopeLine: 1029, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4717)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{null, !631, !557}
!4717 = !{!4718, !4719, !4720, !4721, !4727, !4732}
!4718 = !DILocalVariable(name: "fn", arg: 1, scope: !4714, file: !3, line: 1028, type: !631)
!4719 = !DILocalVariable(name: "escapes", arg: 2, scope: !4714, file: !3, line: 1028, type: !557)
!4720 = !DILocalVariable(name: "arg", scope: !4714, file: !3, line: 1030, type: !631)
!4721 = !DILocalVariable(name: "type", scope: !4722, file: !3, line: 1038, type: !631)
!4722 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 1037, column: 2)
!4723 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 1034, column: 7)
!4724 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 1034, column: 7)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 1033, column: 5)
!4726 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 1032, column: 7)
!4727 = !DILocalVariable(name: "type", scope: !4728, file: !3, line: 1052, type: !631)
!4728 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 1051, column: 2)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 1050, column: 7)
!4730 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 1050, column: 7)
!4731 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 1044, column: 5)
!4732 = !DILocalVariable(name: "type", scope: !4733, file: !3, line: 1059, type: !631)
!4733 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 1058, column: 5)
!4734 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 1057, column: 7)
!4735 = !DILocation(line: 0, scope: !4714)
!4736 = !DILocation(line: 1032, column: 7, scope: !4726)
!4737 = !DILocation(line: 1032, column: 7, scope: !4714)
!4738 = !DILocation(line: 0, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4722, file: !3, line: 1039, column: 8)
!4740 = !DILocation(line: 1034, column: 12, scope: !4724)
!4741 = !DILocation(line: 0, scope: !4724)
!4742 = !DILocation(line: 1035, column: 5, scope: !4723)
!4743 = !DILocation(line: 1035, column: 9, scope: !4723)
!4744 = !DILocation(line: 1035, column: 12, scope: !4723)
!4745 = !DILocation(line: 1035, column: 32, scope: !4723)
!4746 = !DILocation(line: 1035, column: 29, scope: !4723)
!4747 = !DILocation(line: 1034, column: 7, scope: !4724)
!4748 = !DILocation(line: 1038, column: 16, scope: !4722)
!4749 = !DILocation(line: 0, scope: !4722)
!4750 = !DILocation(line: 1036, column: 11, scope: !4723)
!4751 = !DILocation(line: 1034, column: 7, scope: !4723)
!4752 = distinct !{!4752, !4747, !4753}
!4753 = !DILocation(line: 1041, column: 2, scope: !4724)
!4754 = !DILocation(line: 1057, column: 7, scope: !4734)
!4755 = !DILocation(line: 1040, column: 6, scope: !4739)
!4756 = !DILocation(line: 1050, column: 18, scope: !4730)
!4757 = !DILocation(line: 0, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 1053, column: 8)
!4759 = !DILocation(line: 1050, column: 12, scope: !4730)
!4760 = !DILocation(line: 0, scope: !4730)
!4761 = !DILocation(line: 1050, column: 7, scope: !4730)
!4762 = !DILocation(line: 1052, column: 32, scope: !4728)
!4763 = !DILocation(line: 1052, column: 16, scope: !4728)
!4764 = !DILocation(line: 0, scope: !4728)
!4765 = !DILocation(line: 1050, column: 50, scope: !4729)
!4766 = !DILocation(line: 1050, column: 7, scope: !4729)
!4767 = distinct !{!4767, !4761, !4768}
!4768 = !DILocation(line: 1055, column: 2, scope: !4730)
!4769 = !DILocation(line: 1054, column: 6, scope: !4758)
!4770 = !DILocation(line: 1057, column: 7, scope: !4714)
!4771 = !DILocation(line: 1059, column: 35, scope: !4733)
!4772 = !DILocation(line: 1059, column: 19, scope: !4733)
!4773 = !DILocation(line: 0, scope: !4733)
!4774 = !DILocation(line: 1060, column: 7, scope: !4733)
!4775 = !DILocation(line: 1061, column: 5, scope: !4733)
!4776 = !DILocation(line: 1062, column: 1, scope: !4714)
!4777 = distinct !DISubprogram(name: "has_proper_scope_for_analysis", scope: !3, file: !3, line: 1068, type: !4324, scopeLine: 1069, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4778)
!4778 = !{!4779, !4780}
!4779 = !DILocalVariable(name: "t", arg: 1, scope: !4777, file: !3, line: 1068, type: !631)
!4780 = !DILocalVariable(name: "type", scope: !4777, file: !3, line: 1072, type: !631)
!4781 = !DILocation(line: 0, scope: !4777)
!4782 = !DILocation(line: 1072, column: 31, scope: !4777)
!4783 = !DILocation(line: 1072, column: 15, scope: !4777)
!4784 = !DILocation(line: 1073, column: 8, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 1073, column: 7)
!4786 = !DILocation(line: 1073, column: 7, scope: !4777)
!4787 = !DILocation(line: 1075, column: 7, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 1075, column: 7)
!4789 = !DILocation(line: 1075, column: 7, scope: !4777)
!4790 = !DILocation(line: 1077, column: 7, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4788, file: !3, line: 1076, column: 5)
!4792 = !DILocation(line: 1078, column: 7, scope: !4791)
!4793 = !DILocation(line: 1083, column: 7, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 1083, column: 7)
!4795 = !DILocation(line: 1083, column: 7, scope: !4777)
!4796 = !DILocation(line: 1087, column: 8, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 1087, column: 7)
!4798 = !DILocation(line: 1087, column: 24, scope: !4797)
!4799 = !DILocation(line: 1090, column: 7, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 1090, column: 7)
!4801 = !DILocation(line: 1087, column: 28, scope: !4797)
!4802 = !DILocation(line: 1087, column: 7, scope: !4777)
!4803 = !DILocation(line: 1090, column: 25, scope: !4800)
!4804 = !DILocation(line: 1090, column: 28, scope: !4800)
!4805 = !DILocation(line: 1090, column: 7, scope: !4777)
!4806 = !DILocation(line: 1097, column: 11, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 1097, column: 11)
!4808 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 1091, column: 5)
!4809 = !DILocation(line: 1098, column: 4, scope: !4807)
!4810 = !DILocation(line: 1098, column: 7, scope: !4807)
!4811 = !DILocation(line: 1099, column: 4, scope: !4807)
!4812 = !DILocation(line: 1099, column: 7, scope: !4807)
!4813 = !DILocation(line: 1097, column: 11, scope: !4808)
!4814 = !DILocation(line: 1104, column: 4, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4807, file: !3, line: 1102, column: 2)
!4816 = !DILocation(line: 1107, column: 1, scope: !4777)
!4817 = distinct !DISubprogram(name: "gsi_start_bb", scope: !440, file: !440, line: 4418, type: !4818, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4820)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!4131, !886}
!4820 = !{!4821, !4822, !4823}
!4821 = !DILocalVariable(name: "bb", arg: 1, scope: !4817, file: !440, line: 4418, type: !886)
!4822 = !DILocalVariable(name: "i", scope: !4817, file: !440, line: 4420, type: !4131)
!4823 = !DILocalVariable(name: "seq", scope: !4817, file: !440, line: 4421, type: !913)
!4824 = !DILocation(line: 0, scope: !4817)
!4825 = !DILocation(line: 4420, column: 24, scope: !4817)
!4826 = !DILocation(line: 4423, column: 9, scope: !4817)
!4827 = !DILocation(line: 4424, column: 11, scope: !4817)
!4828 = !DILocation(line: 4424, column: 5, scope: !4817)
!4829 = !DILocation(line: 4424, column: 9, scope: !4817)
!4830 = !DILocation(line: 4425, column: 5, scope: !4817)
!4831 = !DILocation(line: 4425, column: 9, scope: !4817)
!4832 = !DILocation(line: 4426, column: 5, scope: !4817)
!4833 = !DILocation(line: 4426, column: 8, scope: !4817)
!4834 = !DILocation(line: 4429, column: 1, scope: !4817)
!4835 = distinct !DISubprogram(name: "gsi_end_p", scope: !440, file: !440, line: 4467, type: !4836, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4838)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!557, !4131}
!4838 = !{!4839}
!4839 = !DILocalVariable(name: "i", arg: 1, scope: !4835, file: !440, line: 4467, type: !4131)
!4840 = !DILocation(line: 4467, column: 33, scope: !4835)
!4841 = !DILocation(line: 4469, column: 12, scope: !4835)
!4842 = !DILocation(line: 4469, column: 16, scope: !4835)
!4843 = !DILocation(line: 4469, column: 10, scope: !4835)
!4844 = !DILocation(line: 4469, column: 3, scope: !4835)
!4845 = distinct !DISubprogram(name: "scan_for_refs", scope: !3, file: !3, line: 1576, type: !4846, scopeLine: 1577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4848)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{null, !923}
!4848 = !{!4849}
!4849 = !DILocalVariable(name: "t", arg: 1, scope: !4845, file: !3, line: 1576, type: !923)
!4850 = !DILocation(line: 0, scope: !4845)
!4851 = !DILocation(line: 1578, column: 11, scope: !4845)
!4852 = !DILocation(line: 1578, column: 3, scope: !4845)
!4853 = !DILocation(line: 1581, column: 7, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 1579, column: 5)
!4855 = !DILocation(line: 1582, column: 7, scope: !4854)
!4856 = !DILocation(line: 1587, column: 7, scope: !4854)
!4857 = !DILocation(line: 1588, column: 7, scope: !4854)
!4858 = !DILocation(line: 1591, column: 7, scope: !4854)
!4859 = !DILocation(line: 1592, column: 7, scope: !4854)
!4860 = !DILocation(line: 1598, column: 3, scope: !4845)
!4861 = distinct !DISubprogram(name: "gsi_stmt", scope: !440, file: !440, line: 4501, type: !4862, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4864)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!923, !4131}
!4864 = !{!4865}
!4865 = !DILocalVariable(name: "i", arg: 1, scope: !4861, file: !440, line: 4501, type: !4131)
!4866 = !DILocation(line: 4501, column: 32, scope: !4861)
!4867 = !DILocation(line: 4503, column: 12, scope: !4861)
!4868 = !DILocation(line: 4503, column: 17, scope: !4861)
!4869 = !DILocation(line: 4503, column: 3, scope: !4861)
!4870 = distinct !DISubprogram(name: "gsi_next", scope: !440, file: !440, line: 4485, type: !4871, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4874)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{null, !4873}
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4874 = !{!4875}
!4875 = !DILocalVariable(name: "i", arg: 1, scope: !4870, file: !440, line: 4485, type: !4873)
!4876 = !DILocation(line: 0, scope: !4870)
!4877 = !DILocation(line: 4487, column: 15, scope: !4870)
!4878 = !DILocation(line: 4487, column: 20, scope: !4870)
!4879 = !DILocation(line: 4487, column: 10, scope: !4870)
!4880 = !DILocation(line: 4488, column: 1, scope: !4870)
!4881 = distinct !DISubprogram(name: "bb_seq", scope: !440, file: !440, line: 237, type: !4882, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4887)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!913, !4884}
!4884 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !570, line: 112, baseType: !4885)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!4887 = !{!4888}
!4888 = !DILocalVariable(name: "bb", arg: 1, scope: !4881, file: !440, line: 237, type: !4884)
!4889 = !DILocation(line: 0, scope: !4881)
!4890 = !DILocation(line: 239, column: 17, scope: !4881)
!4891 = !DILocation(line: 239, column: 23, scope: !4881)
!4892 = !DILocation(line: 239, column: 33, scope: !4881)
!4893 = !DILocation(line: 239, column: 43, scope: !4881)
!4894 = !DILocation(line: 239, column: 36, scope: !4881)
!4895 = !DILocation(line: 239, column: 10, scope: !4881)
!4896 = !DILocation(line: 239, column: 68, scope: !4881)
!4897 = !DILocation(line: 239, column: 3, scope: !4881)
!4898 = distinct !DISubprogram(name: "gimple_seq_first", scope: !440, file: !440, line: 159, type: !4899, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4904)
!4899 = !DISubroutineType(types: !4900)
!4900 = !{!918, !4901}
!4901 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !570, line: 67, baseType: !4902)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!4904 = !{!4905}
!4905 = !DILocalVariable(name: "s", arg: 1, scope: !4898, file: !440, line: 159, type: !4901)
!4906 = !DILocation(line: 0, scope: !4898)
!4907 = !DILocation(line: 161, column: 10, scope: !4898)
!4908 = !DILocation(line: 161, column: 17, scope: !4898)
!4909 = !DILocation(line: 161, column: 3, scope: !4898)
!4910 = distinct !DISubprogram(name: "check_assign", scope: !3, file: !3, line: 1487, type: !4846, scopeLine: 1488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4911)
!4911 = !{!4912, !4913, !4916, !4917, !4918, !4919, !4921, !4922}
!4912 = !DILocalVariable(name: "t", arg: 1, scope: !4910, file: !3, line: 1487, type: !923)
!4913 = !DILocalVariable(name: "op0", scope: !4914, file: !3, line: 1499, type: !631)
!4914 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 1498, column: 7)
!4915 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 1496, column: 5)
!4916 = !DILocalVariable(name: "type0", scope: !4914, file: !3, line: 1500, type: !631)
!4917 = !DILocalVariable(name: "op1", scope: !4914, file: !3, line: 1501, type: !631)
!4918 = !DILocalVariable(name: "type1", scope: !4914, file: !3, line: 1502, type: !631)
!4919 = !DILocalVariable(name: "op0", scope: !4920, file: !3, line: 1531, type: !631)
!4920 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 1530, column: 7)
!4921 = !DILocalVariable(name: "type0", scope: !4920, file: !3, line: 1532, type: !631)
!4922 = !DILocalVariable(name: "rhs", scope: !4923, file: !3, line: 1560, type: !631)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 1559, column: 2)
!4924 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 1558, column: 11)
!4925 = !DILocation(line: 0, scope: !4910)
!4926 = !DILocation(line: 1490, column: 18, scope: !4910)
!4927 = !DILocation(line: 1490, column: 3, scope: !4910)
!4928 = !DILocation(line: 1495, column: 11, scope: !4910)
!4929 = !DILocation(line: 1495, column: 3, scope: !4910)
!4930 = !DILocation(line: 1499, column: 13, scope: !4914)
!4931 = !DILocation(line: 0, scope: !4914)
!4932 = !DILocation(line: 1500, column: 31, scope: !4914)
!4933 = !DILocation(line: 1500, column: 15, scope: !4914)
!4934 = !DILocation(line: 1501, column: 13, scope: !4914)
!4935 = !DILocation(line: 1502, column: 31, scope: !4914)
!4936 = !DILocation(line: 1502, column: 15, scope: !4914)
!4937 = !DILocation(line: 1514, column: 6, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 1514, column: 6)
!4939 = !DILocation(line: 1514, column: 12, scope: !4938)
!4940 = !DILocation(line: 1514, column: 15, scope: !4938)
!4941 = !DILocation(line: 1515, column: 6, scope: !4938)
!4942 = !DILocation(line: 1515, column: 34, scope: !4938)
!4943 = !DILocation(line: 1515, column: 10, scope: !4938)
!4944 = !DILocation(line: 1514, column: 6, scope: !4914)
!4945 = !DILocation(line: 1516, column: 4, scope: !4938)
!4946 = !DILocation(line: 1518, column: 6, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 1518, column: 6)
!4948 = !DILocation(line: 1518, column: 12, scope: !4947)
!4949 = !DILocation(line: 1518, column: 15, scope: !4947)
!4950 = !DILocation(line: 1519, column: 6, scope: !4947)
!4951 = !DILocation(line: 1519, column: 34, scope: !4947)
!4952 = !DILocation(line: 1519, column: 10, scope: !4947)
!4953 = !DILocation(line: 1518, column: 6, scope: !4914)
!4954 = !DILocation(line: 1520, column: 4, scope: !4947)
!4955 = !DILocation(line: 1522, column: 2, scope: !4914)
!4956 = !DILocation(line: 1523, column: 2, scope: !4914)
!4957 = !DILocation(line: 1524, column: 2, scope: !4914)
!4958 = !DILocation(line: 1525, column: 2, scope: !4914)
!4959 = !DILocation(line: 1527, column: 7, scope: !4915)
!4960 = !DILocation(line: 1531, column: 13, scope: !4920)
!4961 = !DILocation(line: 0, scope: !4920)
!4962 = !DILocation(line: 1532, column: 31, scope: !4920)
!4963 = !DILocation(line: 1532, column: 15, scope: !4920)
!4964 = !DILocation(line: 1537, column: 6, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 1537, column: 6)
!4966 = !DILocation(line: 1538, column: 6, scope: !4965)
!4967 = !DILocation(line: 1538, column: 9, scope: !4965)
!4968 = !DILocation(line: 1539, column: 6, scope: !4965)
!4969 = !DILocation(line: 1539, column: 10, scope: !4965)
!4970 = !DILocation(line: 1539, column: 26, scope: !4965)
!4971 = !DILocation(line: 1540, column: 8, scope: !4965)
!4972 = !DILocation(line: 1540, column: 27, scope: !4965)
!4973 = !DILocation(line: 1537, column: 6, scope: !4920)
!4974 = !DILocation(line: 1541, column: 4, scope: !4965)
!4975 = !DILocation(line: 1543, column: 2, scope: !4920)
!4976 = !DILocation(line: 1544, column: 2, scope: !4920)
!4977 = !DILocation(line: 1546, column: 7, scope: !4915)
!4978 = !DILocation(line: 1549, column: 23, scope: !4915)
!4979 = !DILocation(line: 1549, column: 7, scope: !4915)
!4980 = !DILocation(line: 1550, column: 22, scope: !4915)
!4981 = !DILocation(line: 1550, column: 7, scope: !4915)
!4982 = !DILocation(line: 1551, column: 7, scope: !4915)
!4983 = !DILocation(line: 1554, column: 22, scope: !4915)
!4984 = !DILocation(line: 1554, column: 7, scope: !4915)
!4985 = !DILocation(line: 1555, column: 7, scope: !4915)
!4986 = !DILocation(line: 1558, column: 11, scope: !4924)
!4987 = !DILocation(line: 1558, column: 38, scope: !4924)
!4988 = !DILocation(line: 1558, column: 11, scope: !4915)
!4989 = !DILocation(line: 1560, column: 15, scope: !4923)
!4990 = !DILocation(line: 0, scope: !4923)
!4991 = !DILocation(line: 1561, column: 20, scope: !4923)
!4992 = !DILocation(line: 1561, column: 4, scope: !4923)
!4993 = !DILocation(line: 1562, column: 4, scope: !4923)
!4994 = !DILocation(line: 1563, column: 2, scope: !4923)
!4995 = !DILocation(line: 1569, column: 1, scope: !4910)
!4996 = distinct !DISubprogram(name: "check_call", scope: !3, file: !3, line: 1321, type: !4846, scopeLine: 1322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4997)
!4997 = !{!4998, !4999, !5000, !5001, !5002, !5003, !5006, !5007, !5013, !5018, !5022, !5025, !5031, !5032}
!4998 = !DILocalVariable(name: "call", arg: 1, scope: !4996, file: !3, line: 1321, type: !923)
!4999 = !DILocalVariable(name: "callee_t", scope: !4996, file: !3, line: 1323, type: !631)
!5000 = !DILocalVariable(name: "callee", scope: !4996, file: !3, line: 1324, type: !2791)
!5001 = !DILocalVariable(name: "avail", scope: !4996, file: !3, line: 1325, type: !548)
!5002 = !DILocalVariable(name: "i", scope: !4996, file: !3, line: 1326, type: !1068)
!5003 = !DILocalVariable(name: "arg_type", scope: !5004, file: !3, line: 1333, type: !631)
!5004 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 1332, column: 5)
!5005 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 1331, column: 7)
!5006 = !DILocalVariable(name: "last_arg_type", scope: !5004, file: !3, line: 1334, type: !631)
!5007 = !DILocalVariable(name: "operand", scope: !5008, file: !3, line: 1347, type: !631)
!5008 = distinct !DILexicalBlock(scope: !5009, file: !3, line: 1346, column: 6)
!5009 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 1342, column: 4)
!5010 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 1342, column: 4)
!5011 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 1341, column: 2)
!5012 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 1340, column: 11)
!5013 = !DILocalVariable(name: "operand", scope: !5014, file: !3, line: 1369, type: !631)
!5014 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 1368, column: 6)
!5015 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 1365, column: 4)
!5016 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 1365, column: 4)
!5017 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 1361, column: 2)
!5018 = !DILocalVariable(name: "operand", scope: !5019, file: !3, line: 1388, type: !631)
!5019 = distinct !DILexicalBlock(scope: !5020, file: !3, line: 1387, column: 2)
!5020 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 1386, column: 7)
!5021 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 1386, column: 7)
!5022 = !DILocalVariable(name: "type", scope: !5023, file: !3, line: 1398, type: !631)
!5023 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 1392, column: 6)
!5024 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 1389, column: 8)
!5025 = !DILocalVariable(name: "operand", scope: !5026, file: !3, line: 1415, type: !631)
!5026 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 1414, column: 2)
!5027 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 1413, column: 7)
!5028 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 1413, column: 7)
!5029 = distinct !DILexicalBlock(scope: !5030, file: !3, line: 1410, column: 5)
!5030 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 1409, column: 7)
!5031 = !DILocalVariable(name: "type", scope: !5026, file: !3, line: 1416, type: !631)
!5032 = !DILocalVariable(name: "type", scope: !5033, file: !3, line: 1422, type: !631)
!5033 = distinct !DILexicalBlock(scope: !5034, file: !3, line: 1421, column: 2)
!5034 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 1420, column: 11)
!5035 = !DILocation(line: 0, scope: !4996)
!5036 = !DILocation(line: 1323, column: 19, scope: !4996)
!5037 = !DILocation(line: 1328, column: 8, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 1328, column: 3)
!5039 = !DILocation(line: 0, scope: !5038)
!5040 = !DILocation(line: 1328, column: 19, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 1328, column: 3)
!5042 = !DILocation(line: 1328, column: 17, scope: !5041)
!5043 = !DILocation(line: 1328, column: 3, scope: !5038)
!5044 = !DILocation(line: 1329, column: 43, scope: !5041)
!5045 = !DILocation(line: 1329, column: 20, scope: !5041)
!5046 = !DILocation(line: 1329, column: 5, scope: !5041)
!5047 = !DILocation(line: 1328, column: 49, scope: !5041)
!5048 = !DILocation(line: 1328, column: 3, scope: !5041)
!5049 = distinct !{!5049, !5043, !5050}
!5050 = !DILocation(line: 1329, column: 45, scope: !5038)
!5051 = !DILocation(line: 1331, column: 7, scope: !5005)
!5052 = !DILocation(line: 1331, column: 7, scope: !4996)
!5053 = !DILocation(line: 0, scope: !5004)
!5054 = !DILocation(line: 1335, column: 16, scope: !5004)
!5055 = !DILocation(line: 1336, column: 15, scope: !5004)
!5056 = !DILocation(line: 1340, column: 11, scope: !5012)
!5057 = !DILocation(line: 1340, column: 11, scope: !5004)
!5058 = !DILocation(line: 1342, column: 9, scope: !5010)
!5059 = !DILocation(line: 0, scope: !5010)
!5060 = !DILocation(line: 1343, column: 9, scope: !5009)
!5061 = !DILocation(line: 1343, column: 18, scope: !5009)
!5062 = !DILocation(line: 1343, column: 21, scope: !5009)
!5063 = !DILocation(line: 1343, column: 46, scope: !5009)
!5064 = !DILocation(line: 1343, column: 43, scope: !5009)
!5065 = !DILocation(line: 1344, column: 9, scope: !5009)
!5066 = !DILocation(line: 1344, column: 16, scope: !5009)
!5067 = !DILocation(line: 1344, column: 14, scope: !5009)
!5068 = !DILocation(line: 1342, column: 4, scope: !5010)
!5069 = !DILocation(line: 1347, column: 46, scope: !5008)
!5070 = !DILocation(line: 1347, column: 23, scope: !5008)
!5071 = !DILocation(line: 0, scope: !5008)
!5072 = !DILocation(line: 1348, column: 12, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 1348, column: 12)
!5074 = !DILocation(line: 1348, column: 12, scope: !5008)
!5075 = !DILocation(line: 1350, column: 21, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5073, file: !3, line: 1349, column: 3)
!5077 = !DILocation(line: 1351, column: 5, scope: !5076)
!5078 = !DILocation(line: 1358, column: 6, scope: !5009)
!5079 = !DILocation(line: 1345, column: 20, scope: !5009)
!5080 = !DILocation(line: 1345, column: 44, scope: !5009)
!5081 = !DILocation(line: 1342, column: 4, scope: !5009)
!5082 = distinct !{!5082, !5068, !5083}
!5083 = !DILocation(line: 1358, column: 6, scope: !5010)
!5084 = !DILocation(line: 1365, column: 20, scope: !5016)
!5085 = !DILocation(line: 1365, column: 9, scope: !5016)
!5086 = !DILocation(line: 0, scope: !5016)
!5087 = !DILocation(line: 1366, column: 9, scope: !5015)
!5088 = !DILocation(line: 1366, column: 18, scope: !5015)
!5089 = !DILocation(line: 1366, column: 25, scope: !5015)
!5090 = !DILocation(line: 1366, column: 23, scope: !5015)
!5091 = !DILocation(line: 1365, column: 4, scope: !5016)
!5092 = !DILocation(line: 1369, column: 46, scope: !5014)
!5093 = !DILocation(line: 1369, column: 23, scope: !5014)
!5094 = !DILocation(line: 0, scope: !5014)
!5095 = !DILocation(line: 1370, column: 12, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 1370, column: 12)
!5097 = !DILocation(line: 1370, column: 12, scope: !5014)
!5098 = !DILocation(line: 1372, column: 21, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 1371, column: 3)
!5100 = !DILocation(line: 1373, column: 5, scope: !5099)
!5101 = !DILocation(line: 1380, column: 6, scope: !5015)
!5102 = !DILocation(line: 1367, column: 20, scope: !5015)
!5103 = !DILocation(line: 1367, column: 44, scope: !5015)
!5104 = !DILocation(line: 1365, column: 4, scope: !5015)
!5105 = distinct !{!5105, !5091, !5106}
!5106 = !DILocation(line: 1380, column: 6, scope: !5016)
!5107 = !DILocation(line: 1386, column: 7, scope: !5004)
!5108 = !DILocation(line: 0, scope: !5012)
!5109 = !DILocation(line: 0, scope: !5024)
!5110 = !DILocation(line: 1386, column: 19, scope: !5020)
!5111 = !DILocation(line: 1386, column: 17, scope: !5020)
!5112 = !DILocation(line: 1386, column: 7, scope: !5021)
!5113 = !DILocation(line: 1388, column: 42, scope: !5019)
!5114 = !DILocation(line: 1388, column: 19, scope: !5019)
!5115 = !DILocation(line: 0, scope: !5019)
!5116 = !DILocation(line: 1398, column: 36, scope: !5023)
!5117 = !DILocation(line: 1398, column: 20, scope: !5023)
!5118 = !DILocation(line: 0, scope: !5023)
!5119 = !DILocation(line: 1399, column: 8, scope: !5023)
!5120 = !DILocation(line: 1386, column: 49, scope: !5020)
!5121 = !DILocation(line: 1386, column: 7, scope: !5020)
!5122 = distinct !{!5122, !5112, !5123}
!5123 = !DILocation(line: 1401, column: 2, scope: !5021)
!5124 = !DILocation(line: 1409, column: 36, scope: !5030)
!5125 = !DILocation(line: 1390, column: 6, scope: !5024)
!5126 = !DILocation(line: 1413, column: 7, scope: !5028)
!5127 = !DILocation(line: 0, scope: !5028)
!5128 = !DILocation(line: 1413, column: 23, scope: !5027)
!5129 = !DILocation(line: 1413, column: 21, scope: !5027)
!5130 = !DILocation(line: 1415, column: 42, scope: !5026)
!5131 = !DILocation(line: 1415, column: 19, scope: !5026)
!5132 = !DILocation(line: 0, scope: !5026)
!5133 = !DILocation(line: 1416, column: 32, scope: !5026)
!5134 = !DILocation(line: 1416, column: 16, scope: !5026)
!5135 = !DILocation(line: 1417, column: 4, scope: !5026)
!5136 = !DILocation(line: 1413, column: 53, scope: !5027)
!5137 = !DILocation(line: 1413, column: 7, scope: !5027)
!5138 = distinct !{!5138, !5126, !5139}
!5139 = !DILocation(line: 1418, column: 2, scope: !5028)
!5140 = !DILocation(line: 1420, column: 11, scope: !5029)
!5141 = !DILocation(line: 1423, column: 22, scope: !5033)
!5142 = !DILocation(line: 1423, column: 6, scope: !5033)
!5143 = !DILocation(line: 0, scope: !5033)
!5144 = !DILocation(line: 1424, column: 4, scope: !5033)
!5145 = !DILocation(line: 1425, column: 2, scope: !5033)
!5146 = !DILocation(line: 1427, column: 1, scope: !4996)
!5147 = distinct !DISubprogram(name: "check_asm", scope: !3, file: !3, line: 1296, type: !4846, scopeLine: 1297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5148)
!5148 = !{!5149, !5150}
!5149 = !DILocalVariable(name: "stmt", arg: 1, scope: !5147, file: !3, line: 1296, type: !923)
!5150 = !DILocalVariable(name: "i", scope: !5147, file: !3, line: 1298, type: !1068)
!5151 = !DILocation(line: 0, scope: !5147)
!5152 = !DILocation(line: 1300, column: 8, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 1300, column: 3)
!5154 = !DILocation(line: 0, scope: !5153)
!5155 = !DILocation(line: 1300, column: 19, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 1300, column: 3)
!5157 = !DILocation(line: 1300, column: 17, scope: !5156)
!5158 = !DILocation(line: 1300, column: 3, scope: !5153)
!5159 = !DILocation(line: 1303, column: 3, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 1303, column: 3)
!5161 = !DILocation(line: 1301, column: 48, scope: !5156)
!5162 = !DILocation(line: 1301, column: 20, scope: !5156)
!5163 = !DILocation(line: 1301, column: 5, scope: !5156)
!5164 = !DILocation(line: 1300, column: 48, scope: !5156)
!5165 = !DILocation(line: 1300, column: 3, scope: !5156)
!5166 = distinct !{!5166, !5158, !5167}
!5167 = !DILocation(line: 1301, column: 50, scope: !5153)
!5168 = !DILocation(line: 0, scope: !5160)
!5169 = !DILocation(line: 1303, column: 19, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5160, file: !3, line: 1303, column: 3)
!5171 = !DILocation(line: 1303, column: 17, scope: !5170)
!5172 = !DILocation(line: 1304, column: 47, scope: !5170)
!5173 = !DILocation(line: 1304, column: 20, scope: !5170)
!5174 = !DILocation(line: 1304, column: 5, scope: !5170)
!5175 = !DILocation(line: 1303, column: 47, scope: !5170)
!5176 = !DILocation(line: 1303, column: 3, scope: !5170)
!5177 = distinct !{!5177, !5159, !5178}
!5178 = !DILocation(line: 1304, column: 49, scope: !5160)
!5179 = !DILocation(line: 1312, column: 1, scope: !5147)
!5180 = distinct !DISubprogram(name: "check_lhs_var", scope: !3, file: !3, line: 1283, type: !4324, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5181)
!5181 = !{!5182}
!5182 = !DILocalVariable(name: "t", arg: 1, scope: !5180, file: !3, line: 1283, type: !631)
!5183 = !DILocation(line: 0, scope: !5180)
!5184 = !DILocation(line: 1285, column: 3, scope: !5180)
!5185 = !DILocation(line: 1286, column: 1, scope: !5180)
!5186 = distinct !DISubprogram(name: "okay_pointer_operation", scope: !3, file: !3, line: 1432, type: !5187, scopeLine: 1433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5189)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!557, !5, !631, !631}
!5189 = !{!5190, !5191, !5192, !5193, !5194, !5197, !5198, !5199}
!5190 = !DILocalVariable(name: "code", arg: 1, scope: !5186, file: !3, line: 1432, type: !5)
!5191 = !DILocalVariable(name: "op0", arg: 2, scope: !5186, file: !3, line: 1432, type: !631)
!5192 = !DILocalVariable(name: "op1", arg: 3, scope: !5186, file: !3, line: 1432, type: !631)
!5193 = !DILocalVariable(name: "op0type", scope: !5186, file: !3, line: 1434, type: !631)
!5194 = !DILocalVariable(name: "base", scope: !5195, file: !3, line: 1446, type: !631)
!5195 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 1445, column: 7)
!5196 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 1437, column: 5)
!5197 = !DILocalVariable(name: "offset", scope: !5195, file: !3, line: 1446, type: !631)
!5198 = !DILocalVariable(name: "offset_cast_stmt", scope: !5195, file: !3, line: 1447, type: !923)
!5199 = !DILocalVariable(name: "size_of_op0_points_to", scope: !5200, file: !3, line: 1459, type: !631)
!5200 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 1458, column: 4)
!5201 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 1449, column: 6)
!5202 = !DILocation(line: 0, scope: !5186)
!5203 = !DILocation(line: 1434, column: 18, scope: !5186)
!5204 = !DILocation(line: 1436, column: 3, scope: !5186)
!5205 = !DILocation(line: 1446, column: 2, scope: !5195)
!5206 = !DILocation(line: 1447, column: 2, scope: !5195)
!5207 = !DILocation(line: 1449, column: 6, scope: !5201)
!5208 = !DILocation(line: 1450, column: 6, scope: !5201)
!5209 = !DILocation(line: 1450, column: 9, scope: !5201)
!5210 = !DILocation(line: 1450, column: 25, scope: !5201)
!5211 = !DILocation(line: 1451, column: 6, scope: !5201)
!5212 = !DILocation(line: 1451, column: 9, scope: !5201)
!5213 = !DILocation(line: 1451, column: 25, scope: !5201)
!5214 = !DILocation(line: 1452, column: 6, scope: !5201)
!5215 = !DILocation(line: 0, scope: !5195)
!5216 = !DILocation(line: 1452, column: 9, scope: !5201)
!5217 = !DILocation(line: 1449, column: 6, scope: !5195)
!5218 = !DILocation(line: 1459, column: 35, scope: !5200)
!5219 = !DILocation(line: 0, scope: !5200)
!5220 = !DILocation(line: 1461, column: 10, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 1461, column: 10)
!5222 = !DILocation(line: 1462, column: 6, scope: !5221)
!5223 = !DILocation(line: 1462, column: 3, scope: !5221)
!5224 = !DILocation(line: 1463, column: 21, scope: !5221)
!5225 = !DILocation(line: 1463, column: 6, scope: !5221)
!5226 = !DILocation(line: 1461, column: 10, scope: !5200)
!5227 = !DILocation(line: 1467, column: 10, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 1467, column: 10)
!5229 = !DILocation(line: 1468, column: 3, scope: !5228)
!5230 = !DILocation(line: 1469, column: 21, scope: !5228)
!5231 = !DILocation(line: 1469, column: 6, scope: !5228)
!5232 = !DILocation(line: 1467, column: 10, scope: !5200)
!5233 = !DILocation(line: 1472, column: 4, scope: !5201)
!5234 = !DILocation(line: 1473, column: 7, scope: !5196)
!5235 = !DILocation(line: 1476, column: 7, scope: !5196)
!5236 = !DILocation(line: 1479, column: 1, scope: !5186)
!5237 = distinct !DISubprogram(name: "check_rhs_var", scope: !3, file: !3, line: 1273, type: !4324, scopeLine: 1274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5238)
!5238 = !{!5239}
!5239 = !DILocalVariable(name: "t", arg: 1, scope: !5237, file: !3, line: 1273, type: !631)
!5240 = !DILocation(line: 0, scope: !5237)
!5241 = !DILocation(line: 1275, column: 3, scope: !5237)
!5242 = !DILocation(line: 1276, column: 3, scope: !5237)
!5243 = !DILocation(line: 1277, column: 1, scope: !5237)
!5244 = distinct !DISubprogram(name: "look_for_address_of", scope: !3, file: !3, line: 1206, type: !4324, scopeLine: 1207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5245)
!5245 = !{!5246, !5247, !5250, !5251}
!5246 = !DILocalVariable(name: "t", arg: 1, scope: !5244, file: !3, line: 1206, type: !631)
!5247 = !DILocalVariable(name: "x", scope: !5248, file: !3, line: 1210, type: !631)
!5248 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 1209, column: 5)
!5249 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 1208, column: 7)
!5250 = !DILocalVariable(name: "cref", scope: !5248, file: !3, line: 1211, type: !631)
!5251 = !DILocalVariable(name: "fielddecl", scope: !5248, file: !3, line: 1215, type: !631)
!5252 = !DILocation(line: 0, scope: !5244)
!5253 = !DILocation(line: 1208, column: 7, scope: !5249)
!5254 = !DILocation(line: 1208, column: 21, scope: !5249)
!5255 = !DILocation(line: 1208, column: 7, scope: !5244)
!5256 = !DILocation(line: 1210, column: 16, scope: !5248)
!5257 = !DILocation(line: 0, scope: !5248)
!5258 = !DILocation(line: 1216, column: 7, scope: !5248)
!5259 = !DILocation(line: 1216, column: 18, scope: !5248)
!5260 = !DILocation(line: 1218, column: 8, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 1218, column: 8)
!5262 = distinct !DILexicalBlock(scope: !5248, file: !3, line: 1217, column: 2)
!5263 = !DILocation(line: 1218, column: 25, scope: !5261)
!5264 = !DILocation(line: 1218, column: 8, scope: !5262)
!5265 = !DILocation(line: 1220, column: 21, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 1219, column: 6)
!5267 = !DILocation(line: 1221, column: 36, scope: !5266)
!5268 = !DILocation(line: 1222, column: 8, scope: !5266)
!5269 = !DILocation(line: 1221, column: 8, scope: !5266)
!5270 = !DILocation(line: 1223, column: 6, scope: !5266)
!5271 = !DILocation(line: 1224, column: 30, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 1224, column: 13)
!5273 = !DILocation(line: 1224, column: 13, scope: !5261)
!5274 = !DILocation(line: 1225, column: 22, scope: !5272)
!5275 = !DILocation(line: 1225, column: 6, scope: !5272)
!5276 = distinct !{!5276, !5258, !5277}
!5277 = !DILocation(line: 1228, column: 2, scope: !5248)
!5278 = !DILocation(line: 1230, column: 11, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5248, file: !3, line: 1230, column: 11)
!5280 = !DILocation(line: 1230, column: 25, scope: !5279)
!5281 = !DILocation(line: 1230, column: 11, scope: !5248)
!5282 = !DILocation(line: 1231, column: 2, scope: !5279)
!5283 = !DILocation(line: 1233, column: 1, scope: !5244)
!5284 = distinct !DISubprogram(name: "mark_interesting_addressof", scope: !3, file: !3, line: 1154, type: !5285, scopeLine: 1155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5287)
!5285 = !DISubroutineType(types: !5286)
!5286 = !{null, !631, !631}
!5287 = !{!5288, !5289, !5290, !5291, !5292, !5293}
!5288 = !DILocalVariable(name: "to_type", arg: 1, scope: !5284, file: !3, line: 1154, type: !631)
!5289 = !DILocalVariable(name: "from_type", arg: 2, scope: !5284, file: !3, line: 1154, type: !631)
!5290 = !DILocalVariable(name: "from_uid", scope: !5284, file: !3, line: 1156, type: !558)
!5291 = !DILocalVariable(name: "to_uid", scope: !5284, file: !3, line: 1157, type: !558)
!5292 = !DILocalVariable(name: "type_map", scope: !5284, file: !3, line: 1158, type: !569)
!5293 = !DILocalVariable(name: "result", scope: !5284, file: !3, line: 1159, type: !1796)
!5294 = !DILocation(line: 0, scope: !5284)
!5295 = !DILocation(line: 1161, column: 15, scope: !5284)
!5296 = !DILocation(line: 1162, column: 13, scope: !5284)
!5297 = !DILocation(line: 1164, column: 8, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 1164, column: 7)
!5299 = !DILocation(line: 1164, column: 22, scope: !5298)
!5300 = !DILocation(line: 1164, column: 18, scope: !5298)
!5301 = !DILocation(line: 1167, column: 14, scope: !5284)
!5302 = !DILocation(line: 1168, column: 12, scope: !5284)
!5303 = !DILocation(line: 1170, column: 3, scope: !5284)
!5304 = !DILocation(line: 1173, column: 31, scope: !5284)
!5305 = !DILocation(line: 1174, column: 10, scope: !5284)
!5306 = !DILocation(line: 1173, column: 12, scope: !5284)
!5307 = !DILocation(line: 1176, column: 7, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 1176, column: 7)
!5309 = !DILocation(line: 1176, column: 7, scope: !5284)
!5310 = !DILocation(line: 1177, column: 33, scope: !5308)
!5311 = !DILocation(line: 1177, column: 5, scope: !5308)
!5312 = !DILocation(line: 1180, column: 18, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 1179, column: 5)
!5314 = !DILocation(line: 1181, column: 26, scope: !5313)
!5315 = !DILocation(line: 1183, column: 5, scope: !5313)
!5316 = !DILocation(line: 1181, column: 7, scope: !5313)
!5317 = !DILocation(line: 0, scope: !5308)
!5318 = !DILocation(line: 1185, column: 29, scope: !5284)
!5319 = !DILocation(line: 1185, column: 3, scope: !5284)
!5320 = !DILocation(line: 1189, column: 24, scope: !5284)
!5321 = !DILocation(line: 1189, column: 49, scope: !5284)
!5322 = !DILocation(line: 1189, column: 5, scope: !5284)
!5323 = !DILocation(line: 1191, column: 7, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 1191, column: 7)
!5325 = !DILocation(line: 1191, column: 7, scope: !5284)
!5326 = !DILocation(line: 1192, column: 33, scope: !5324)
!5327 = !DILocation(line: 1192, column: 5, scope: !5324)
!5328 = !DILocation(line: 1195, column: 18, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 1194, column: 5)
!5330 = !DILocation(line: 1196, column: 26, scope: !5329)
!5331 = !DILocation(line: 1198, column: 5, scope: !5329)
!5332 = !DILocation(line: 1196, column: 7, scope: !5329)
!5333 = !DILocation(line: 0, scope: !5324)
!5334 = !DILocation(line: 1200, column: 29, scope: !5284)
!5335 = !DILocation(line: 1200, column: 3, scope: !5284)
!5336 = !DILocation(line: 1201, column: 1, scope: !5284)
!5337 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !440, file: !440, line: 1954, type: !2741, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5338)
!5338 = !{!5339, !5340}
!5339 = !DILocalVariable(name: "gs", arg: 1, scope: !5337, file: !440, line: 1954, type: !2733)
!5340 = !DILocalVariable(name: "addr", scope: !5337, file: !440, line: 1956, type: !631)
!5341 = !DILocation(line: 0, scope: !5337)
!5342 = !DILocation(line: 1956, column: 15, scope: !5337)
!5343 = !DILocation(line: 1957, column: 7, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5337, file: !440, line: 1957, column: 7)
!5345 = !DILocation(line: 1957, column: 24, scope: !5344)
!5346 = !DILocation(line: 1957, column: 7, scope: !5337)
!5347 = !DILocation(line: 1958, column: 12, scope: !5344)
!5348 = !DILocation(line: 1958, column: 5, scope: !5344)
!5349 = !DILocation(line: 1960, column: 1, scope: !5337)
!5350 = distinct !DISubprogram(name: "gimple_call_num_args", scope: !440, file: !440, line: 2013, type: !3484, scopeLine: 2014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5351)
!5351 = !{!5352, !5353}
!5352 = !DILocalVariable(name: "gs", arg: 1, scope: !5350, file: !440, line: 2013, type: !2733)
!5353 = !DILocalVariable(name: "num_ops", scope: !5350, file: !440, line: 2015, type: !7)
!5354 = !DILocation(line: 0, scope: !5350)
!5355 = !DILocation(line: 2017, column: 13, scope: !5350)
!5356 = !DILocation(line: 2018, column: 18, scope: !5350)
!5357 = !DILocation(line: 2018, column: 3, scope: !5350)
!5358 = distinct !DISubprogram(name: "gimple_call_arg", scope: !440, file: !440, line: 2025, type: !3539, scopeLine: 2026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5359)
!5359 = !{!5360, !5361}
!5360 = !DILocalVariable(name: "gs", arg: 1, scope: !5358, file: !440, line: 2025, type: !2733)
!5361 = !DILocalVariable(name: "index", arg: 2, scope: !5358, file: !440, line: 2025, type: !7)
!5362 = !DILocation(line: 0, scope: !5358)
!5363 = !DILocation(line: 2028, column: 31, scope: !5358)
!5364 = !DILocation(line: 2028, column: 10, scope: !5358)
!5365 = !DILocation(line: 2028, column: 3, scope: !5358)
!5366 = distinct !DISubprogram(name: "gimple_call_fn", scope: !440, file: !440, line: 1911, type: !2741, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5367)
!5367 = !{!5368}
!5368 = !DILocalVariable(name: "gs", arg: 1, scope: !5366, file: !440, line: 1911, type: !2733)
!5369 = !DILocation(line: 0, scope: !5366)
!5370 = !DILocation(line: 1914, column: 10, scope: !5366)
!5371 = !DILocation(line: 1914, column: 3, scope: !5366)
!5372 = distinct !DISubprogram(name: "gimple_asm_noutputs", scope: !440, file: !440, line: 2591, type: !3484, scopeLine: 2592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5373)
!5373 = !{!5374}
!5374 = !DILocalVariable(name: "gs", arg: 1, scope: !5372, file: !440, line: 2591, type: !2733)
!5375 = !DILocation(line: 0, scope: !5372)
!5376 = !DILocation(line: 2594, column: 14, scope: !5372)
!5377 = !DILocation(line: 2594, column: 25, scope: !5372)
!5378 = !DILocation(line: 2594, column: 10, scope: !5372)
!5379 = !DILocation(line: 2594, column: 3, scope: !5372)
!5380 = distinct !DISubprogram(name: "gimple_asm_output_op", scope: !440, file: !440, line: 2652, type: !3539, scopeLine: 2653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5381)
!5381 = !{!5382, !5383}
!5382 = !DILocalVariable(name: "gs", arg: 1, scope: !5380, file: !440, line: 2652, type: !2733)
!5383 = !DILocalVariable(name: "index", arg: 2, scope: !5380, file: !440, line: 2652, type: !7)
!5384 = !DILocation(line: 0, scope: !5380)
!5385 = !DILocation(line: 2655, column: 3, scope: !5380)
!5386 = !DILocation(line: 2656, column: 48, scope: !5380)
!5387 = !DILocation(line: 2656, column: 33, scope: !5380)
!5388 = !DILocation(line: 2656, column: 31, scope: !5380)
!5389 = !DILocation(line: 2656, column: 10, scope: !5380)
!5390 = !DILocation(line: 2656, column: 3, scope: !5380)
!5391 = distinct !DISubprogram(name: "gimple_asm_ninputs", scope: !440, file: !440, line: 2581, type: !3484, scopeLine: 2582, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5392)
!5392 = !{!5393}
!5393 = !DILocalVariable(name: "gs", arg: 1, scope: !5391, file: !440, line: 2581, type: !2733)
!5394 = !DILocation(line: 0, scope: !5391)
!5395 = !DILocation(line: 2584, column: 25, scope: !5391)
!5396 = !DILocation(line: 2584, column: 10, scope: !5391)
!5397 = !DILocation(line: 2584, column: 3, scope: !5391)
!5398 = distinct !DISubprogram(name: "gimple_asm_input_op", scope: !440, file: !440, line: 2619, type: !3539, scopeLine: 2620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5399)
!5399 = !{!5400, !5401}
!5400 = !DILocalVariable(name: "gs", arg: 1, scope: !5398, file: !440, line: 2619, type: !2733)
!5401 = !DILocalVariable(name: "index", arg: 2, scope: !5398, file: !440, line: 2619, type: !7)
!5402 = !DILocation(line: 0, scope: !5398)
!5403 = !DILocation(line: 2622, column: 3, scope: !5398)
!5404 = !DILocation(line: 2623, column: 10, scope: !5398)
!5405 = !DILocation(line: 2623, column: 3, scope: !5398)
!5406 = distinct !DISubprogram(name: "subtype_map_for_uid", scope: !3, file: !3, line: 1712, type: !5407, scopeLine: 1713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5409)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!569, !558, !557}
!5409 = !{!5410, !5411, !5412, !5413}
!5410 = !DILocalVariable(name: "uid", arg: 1, scope: !5406, file: !3, line: 1712, type: !558)
!5411 = !DILocalVariable(name: "create", arg: 2, scope: !5406, file: !3, line: 1712, type: !557)
!5412 = !DILocalVariable(name: "result", scope: !5406, file: !3, line: 1714, type: !1796)
!5413 = !DILocalVariable(name: "subtype_map", scope: !5414, file: !3, line: 1721, type: !569)
!5414 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 1720, column: 5)
!5415 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 1719, column: 12)
!5416 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 1717, column: 7)
!5417 = !DILocation(line: 0, scope: !5406)
!5418 = !DILocation(line: 1714, column: 47, scope: !5406)
!5419 = !DILocation(line: 1715, column: 10, scope: !5406)
!5420 = !DILocation(line: 1714, column: 28, scope: !5406)
!5421 = !DILocation(line: 1717, column: 7, scope: !5416)
!5422 = !DILocation(line: 1717, column: 7, scope: !5406)
!5423 = !DILocation(line: 1718, column: 29, scope: !5416)
!5424 = !DILocation(line: 1718, column: 5, scope: !5416)
!5425 = !DILocation(line: 1719, column: 12, scope: !5415)
!5426 = !DILocation(line: 1719, column: 12, scope: !5416)
!5427 = !DILocation(line: 1721, column: 28, scope: !5414)
!5428 = !DILocation(line: 0, scope: !5414)
!5429 = !DILocation(line: 1722, column: 26, scope: !5414)
!5430 = !DILocation(line: 1724, column: 5, scope: !5414)
!5431 = !DILocation(line: 1722, column: 7, scope: !5414)
!5432 = !DILocation(line: 0, scope: !5416)
!5433 = !DILocation(line: 1728, column: 1, scope: !5406)
