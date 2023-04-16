; ModuleID = 'tree-loop-distribution.bc'
source_filename = "tree-loop-distribution.c"
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.VEC_bitmap_heap = type { %struct.VEC_bitmap_base }
%struct.VEC_bitmap_base = type { i32, i32, [1 x %struct.bitmap_head_def*] }
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_gimple_heap = type { %struct.VEC_gimple_base }
%struct.graph = type { i32, %struct.vertex*, %struct.htab* }
%struct.vertex = type { %struct.graph_edge*, %struct.graph_edge*, i32, i32, i8* }
%struct.graph_edge = type { i32, i32, %struct.graph_edge*, %struct.graph_edge*, i8* }
%struct.VEC_rdgc_heap = type { %struct.VEC_rdgc_base }
%struct.VEC_rdgc_base = type { i32, i32, [1 x %struct.rdg_component*] }
%struct.rdg_component = type { i32, %struct.VEC_int_heap* }
%struct.rdg_vertex = type { %union.gimple_statement_d*, i8, i8 }
%struct.rdg_edge = type { i32, i32, %struct.data_dependence_relation* }
%struct.data_dependence_relation = type { %struct.data_reference*, %struct.data_reference*, %union.tree_node*, %struct.VEC_subscript_p_heap*, %struct.VEC_loop_p_heap*, %struct.VEC_lambda_vector_heap*, %struct.VEC_lambda_vector_heap*, i32, i8, i8, i8 }
%struct.data_reference = type { %union.gimple_statement_d*, %union.tree_node*, i8*, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, %struct.access_matrix* }
%struct.innermost_loop_behavior = type { %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.indices = type { %union.tree_node*, %struct.VEC_tree_heap* }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.dr_alias = type { %struct.ptr_info_def*, %struct.bitmap_head_def* }
%struct.ptr_info_def = type { %struct.pt_solution }
%struct.access_matrix = type { %struct.VEC_loop_p_heap*, i32, %struct.VEC_tree_heap*, %struct.VEC_lambda_vector_gc* }
%struct.VEC_lambda_vector_gc = type { %struct.VEC_lambda_vector_base }
%struct.VEC_lambda_vector_base = type { i32, i32, [1 x i32*] }
%struct.VEC_subscript_p_heap = type { %struct.VEC_subscript_p_base }
%struct.VEC_subscript_p_base = type { i32, i32, [1 x %struct.subscript*] }
%struct.subscript = type { %struct.conflict_function*, %struct.conflict_function*, %union.tree_node*, %union.tree_node* }
%struct.conflict_function = type { i32, [2 x %struct.VEC_tree_heap*] }
%struct.VEC_loop_p_heap = type { %struct.VEC_loop_p_base }
%struct.VEC_lambda_vector_heap = type { %struct.VEC_lambda_vector_base }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.immediate_use_iterator_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* }
%struct.VEC_edge_heap = type { %struct.VEC_edge_base }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"ldist\00", align 1
@pass_loop_distribution = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_tree_loop_distribution, i32 ()* @tree_loop_distribution, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 95, i32 40, i32 0, i32 0, i32 0, i32 65 } }, align 8, !dbg !0
@flag_tree_loop_distribution = external dso_local local_unnamed_addr global i32, align 4
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Loop %d distributed: split to %d loops.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Loop %d is the same.\0A\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"FIXME: Loop %d not distributed: it has more than two basic blocks.\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"FIXME: Loop %d not distributed: failed to build the RDG.\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"ldist asked to generate code for vertex %d\0A\00", align 1
@remaining_stmts = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !2193
@upstream_mem_writes = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !2195
@.str.6 = private unnamed_addr constant [25 x i8] c"ldist useful partition:\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@chrec_dont_know = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@sizetype_tab = external dso_local local_unnamed_addr global [4 x %union.tree_node*], align 16
@implicit_built_in_decls = external dso_local local_unnamed_addr global [721 x %union.tree_node*], align 16
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.11 = private unnamed_addr constant [23 x i8] c"generated memset zero\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"tree-loop-distribution.c\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2227 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2240, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2241, metadata !DIExpression()), !dbg !2242
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2243
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2244
  ret i32 %call, !dbg !2245
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2246 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2250
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2251
  ret i32 %call, !dbg !2252
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2253 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2308, metadata !DIExpression()), !dbg !2309
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2310
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2310
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2310
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2310
  %cmp = icmp uge i8* %0, %1, !dbg !2310
  %conv1 = zext i1 %cmp to i64, !dbg !2310
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2310
  %tobool = icmp eq i64 %expval, 0, !dbg !2310
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2310

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2310
  br label %cond.end, !dbg !2310

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2310
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2310
  %2 = load i8, i8* %0, align 1, !dbg !2310
  %conv3 = zext i8 %2 to i32, !dbg !2310
  br label %cond.end, !dbg !2310

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2310
  ret i32 %cond, !dbg !2311
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2312 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2314, metadata !DIExpression()), !dbg !2315
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2316
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2316
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2316
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2316
  %cmp = icmp uge i8* %0, %1, !dbg !2316
  %conv1 = zext i1 %cmp to i64, !dbg !2316
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2316
  %tobool = icmp eq i64 %expval, 0, !dbg !2316
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2316

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2316
  br label %cond.end, !dbg !2316

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2316
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2316
  %2 = load i8, i8* %0, align 1, !dbg !2316
  %conv3 = zext i8 %2 to i32, !dbg !2316
  br label %cond.end, !dbg !2316

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2316
  ret i32 %cond, !dbg !2317
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2318 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2319
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2319
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2319
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2319
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2319
  %cmp = icmp uge i8* %1, %2, !dbg !2319
  %conv1 = zext i1 %cmp to i64, !dbg !2319
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2319
  %tobool = icmp eq i64 %expval, 0, !dbg !2319
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2319

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2319
  br label %cond.end, !dbg !2319

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2319
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2319
  %3 = load i8, i8* %1, align 1, !dbg !2319
  %conv3 = zext i8 %3 to i32, !dbg !2319
  br label %cond.end, !dbg !2319

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2319
  ret i32 %cond, !dbg !2320
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2321 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2325, metadata !DIExpression()), !dbg !2326
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2327
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2328
  ret i32 %call, !dbg !2329
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2330 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2335, metadata !DIExpression()), !dbg !2336
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2337
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2337
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2337
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2337
  %cmp = icmp uge i8* %0, %1, !dbg !2337
  %conv1 = zext i1 %cmp to i64, !dbg !2337
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2337
  %tobool = icmp eq i64 %expval, 0, !dbg !2337
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2337

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2337
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2337
  br label %cond.end, !dbg !2337

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2337
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2337
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2337
  store i8 %conv2, i8* %0, align 1, !dbg !2337
  %conv6 = and i32 %__c, 255, !dbg !2337
  br label %cond.end, !dbg !2337

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2337
  ret i32 %cond, !dbg !2338
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2339 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2341, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2342, metadata !DIExpression()), !dbg !2343
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2344
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2344
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2344
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2344
  %cmp = icmp uge i8* %0, %1, !dbg !2344
  %conv1 = zext i1 %cmp to i64, !dbg !2344
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2344
  %tobool = icmp eq i64 %expval, 0, !dbg !2344
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2344

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2344
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2344
  br label %cond.end, !dbg !2344

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2344
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2344
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2344
  store i8 %conv2, i8* %0, align 1, !dbg !2344
  %conv6 = and i32 %__c, 255, !dbg !2344
  br label %cond.end, !dbg !2344

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2344
  ret i32 %cond, !dbg !2345
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2346 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2348, metadata !DIExpression()), !dbg !2349
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2350
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2350
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2350
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2350
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2350
  %cmp = icmp uge i8* %1, %2, !dbg !2350
  %conv1 = zext i1 %cmp to i64, !dbg !2350
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2350
  %tobool = icmp eq i64 %expval, 0, !dbg !2350
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2350

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2350
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2350
  br label %cond.end, !dbg !2350

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2350
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2350
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2350
  store i8 %conv4, i8* %1, align 1, !dbg !2350
  %conv6 = and i32 %__c, 255, !dbg !2350
  br label %cond.end, !dbg !2350

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2350
  ret i32 %cond, !dbg !2351
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2352 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2358, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2359, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2360, metadata !DIExpression()), !dbg !2361
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2362
  ret i64 %call, !dbg !2363
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2364 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2366, metadata !DIExpression()), !dbg !2367
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2368
  %0 = load i32, i32* %_flags, align 8, !dbg !2368
  %and = lshr i32 %0, 4, !dbg !2368
  %and.lobit = and i32 %and, 1, !dbg !2368
  ret i32 %and.lobit, !dbg !2369
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2370 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2372, metadata !DIExpression()), !dbg !2373
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2374
  %0 = load i32, i32* %_flags, align 8, !dbg !2374
  %and = lshr i32 %0, 5, !dbg !2374
  %and.lobit = and i32 %and, 1, !dbg !2374
  ret i32 %and.lobit, !dbg !2375
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2376 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2379, metadata !DIExpression()), !dbg !2380
  %__c.off = add i32 %__c, 128, !dbg !2381
  %0 = icmp ult i32 %__c.off, 384, !dbg !2381
  br i1 %0, label %cond.true, label %cond.end, !dbg !2381

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2382
  %1 = load i32*, i32** %call, align 8, !dbg !2383
  %idxprom = sext i32 %__c to i64, !dbg !2384
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2384
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2384
  br label %cond.end, !dbg !2385

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2385
  ret i32 %cond, !dbg !2386
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2387 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2389, metadata !DIExpression()), !dbg !2390
  %__c.off = add i32 %__c, 128, !dbg !2391
  %0 = icmp ult i32 %__c.off, 384, !dbg !2391
  br i1 %0, label %cond.true, label %cond.end, !dbg !2391

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2392
  %1 = load i32*, i32** %call, align 8, !dbg !2393
  %idxprom = sext i32 %__c to i64, !dbg !2394
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2394
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2394
  br label %cond.end, !dbg !2395

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2395
  ret i32 %cond, !dbg !2396
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2397 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2402, metadata !DIExpression()), !dbg !2403
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2404
  %conv = trunc i64 %call to i32, !dbg !2405
  ret i32 %conv, !dbg !2406
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2407 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2411, metadata !DIExpression()), !dbg !2412
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2413
  ret i64 %call, !dbg !2414
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2415 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2420, metadata !DIExpression()), !dbg !2421
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2422
  ret i64 %call, !dbg !2423
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2424 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2430, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2431, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2432, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2433, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2434, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i64 0, metadata !2435, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2436, metadata !DIExpression()), !dbg !2440
  br label %while.cond, !dbg !2441

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2442
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2440
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2436, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2435, metadata !DIExpression()), !dbg !2440
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2443
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2441

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2444
  %div = lshr i64 %add, 1, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %div, metadata !2437, metadata !DIExpression()), !dbg !2440
  %mul = mul i64 %div, %__size, !dbg !2447
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2448
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2438, metadata !DIExpression()), !dbg !2440
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2449
  call void @llvm.dbg.value(metadata i32 %call, metadata !2439, metadata !DIExpression()), !dbg !2440
  %cmp1 = icmp slt i32 %call, 0, !dbg !2450
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2452

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2453
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2455

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2435, metadata !DIExpression()), !dbg !2440
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2440
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2440
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2436, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2435, metadata !DIExpression()), !dbg !2440
  br label %while.cond, !dbg !2441, !llvm.loop !2457

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2440
  ret i8* %retval.0, !dbg !2459
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2460 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2466, metadata !DIExpression()), !dbg !2467
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2468
  ret double %call, !dbg !2469
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2470 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2479, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 %base, metadata !2481, metadata !DIExpression()), !dbg !2482
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2483
  ret i64 %call, !dbg !2484
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2485 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2491, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2492, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 %base, metadata !2493, metadata !DIExpression()), !dbg !2494
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2495
  ret i64 %call, !dbg !2496
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2497 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2508, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2509, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 %base, metadata !2510, metadata !DIExpression()), !dbg !2511
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2512
  ret i64 %call, !dbg !2513
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2514 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2518, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2519, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i32 %base, metadata !2520, metadata !DIExpression()), !dbg !2521
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2522
  ret i64 %call, !dbg !2523
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2524 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2564, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2565, metadata !DIExpression()), !dbg !2566
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2567
  ret i32 %call, !dbg !2568
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2569 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2571, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2572, metadata !DIExpression()), !dbg !2573
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2574
  ret i32 %call, !dbg !2575
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2576 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2580, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2581, metadata !DIExpression()), !dbg !2582
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2583
  ret i32 %call, !dbg !2584
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2585 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2589, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2590, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2591, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2592, metadata !DIExpression()), !dbg !2593
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2594
  ret i32 %call, !dbg !2595
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2596 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2600, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2601, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2602, metadata !DIExpression()), !dbg !2603
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2602, metadata !DIExpression(DW_OP_deref)), !dbg !2603
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2604
  ret i32 %call, !dbg !2605
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2606 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2610, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2611, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2612, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2613, metadata !DIExpression()), !dbg !2614
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2613, metadata !DIExpression(DW_OP_deref)), !dbg !2614
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2615
  ret i32 %call, !dbg !2616
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2617 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2641, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2642, metadata !DIExpression()), !dbg !2643
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2644
  ret i32 %call, !dbg !2645
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2646 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2648, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2649, metadata !DIExpression()), !dbg !2650
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2651
  ret i32 %call, !dbg !2652
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2653 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2657, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2658, metadata !DIExpression()), !dbg !2659
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2660
  ret i32 %call, !dbg !2661
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2662 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2666, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2667, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2668, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2669, metadata !DIExpression()), !dbg !2670
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2671
  ret i32 %call, !dbg !2672
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @debug_rdg_partitions(%struct.VEC_bitmap_heap* %partitions) local_unnamed_addr #5 !dbg !2673 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap* %partitions, metadata !2677, metadata !DIExpression()), !dbg !2678
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2679
  tail call fastcc void @dump_rdg_partitions(%struct._IO_FILE* %0, %struct.VEC_bitmap_heap* %partitions) #7, !dbg !2680
  ret void, !dbg !2681
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_rdg_partitions(%struct._IO_FILE* %file, %struct.VEC_bitmap_heap* %partitions) unnamed_addr #5 !dbg !2682 {
entry:
  %partition = alloca %struct.bitmap_head_def*, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2686, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap* %partitions, metadata !2687, metadata !DIExpression()), !dbg !2690
  %0 = bitcast %struct.bitmap_head_def** %partition to i8*, !dbg !2691
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2691
  call void @llvm.dbg.value(metadata i32 0, metadata !2688, metadata !DIExpression()), !dbg !2690
  %base = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %partitions, i64 0, i32 0, !dbg !2692
  br label %for.cond, !dbg !2695

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2696
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2688, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %partition, metadata !2689, metadata !DIExpression(DW_OP_deref)), !dbg !2690
  %call = call fastcc i32 @VEC_bitmap_base_iterate(%struct.VEC_bitmap_base* %base, i32 %i.0, %struct.bitmap_head_def** nonnull %partition) #7, !dbg !2697
  %tobool1 = icmp eq i32 %call, 0, !dbg !2698
  br i1 %tobool1, label %for.end, label %for.body, !dbg !2698

for.body:                                         ; preds = %for.cond
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %partition, align 8, !dbg !2699
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %1, metadata !2689, metadata !DIExpression()), !dbg !2690
  call void @debug_bitmap_file(%struct._IO_FILE* %file, %struct.bitmap_head_def* %1) #6, !dbg !2700
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2701
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2688, metadata !DIExpression()), !dbg !2690
  br label %for.cond, !dbg !2702, !llvm.loop !2703

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2705
  ret void, !dbg !2705
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tree_loop_distribution() #5 !dbg !2706 {
entry:
  %0 = load i32, i32* @flag_tree_loop_distribution, align 4, !dbg !2707
  %cmp = icmp ne i32 %0, 0, !dbg !2708
  %conv1 = zext i1 %cmp to i8, !dbg !2707
  ret i8 %conv1, !dbg !2709
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_loop_distribution() #5 !dbg !2710 {
entry:
  %loop = alloca %struct.loop*, align 8
  %li = alloca %struct.loop_iterator, align 8
  %work_list = alloca %struct.VEC_gimple_heap*, align 8
  %0 = bitcast %struct.loop** %loop to i8*, !dbg !2724
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2724
  %1 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2725
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2725
  call void @llvm.dbg.value(metadata i32 0, metadata !2719, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2712, metadata !DIExpression(DW_OP_deref)), !dbg !2726
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2713, metadata !DIExpression(DW_OP_deref)), !dbg !2726
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #7, !dbg !2727
  %2 = bitcast %struct.VEC_gimple_heap** %work_list to i8*, !dbg !2728
  br label %for.cond, !dbg !2727

for.cond:                                         ; preds = %if.end8, %entry
  %3 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2729
  call void @llvm.dbg.value(metadata %struct.loop* %3, metadata !2712, metadata !DIExpression()), !dbg !2726
  %tobool = icmp eq %struct.loop* %3, null, !dbg !2727
  br i1 %tobool, label %for.end, label %for.body, !dbg !2727

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2730
  %call = call fastcc %struct.VEC_gimple_heap* @VEC_gimple_heap_alloc(i32 3) #7, !dbg !2731
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %call, metadata !2720, metadata !DIExpression()), !dbg !2728
  store %struct.VEC_gimple_heap* %call, %struct.VEC_gimple_heap** %work_list, align 8, !dbg !2732
  %4 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2733
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !2712, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %work_list, metadata !2720, metadata !DIExpression(DW_OP_deref)), !dbg !2728
  call void @stores_from_loop(%struct.loop* %4, %struct.VEC_gimple_heap** nonnull %work_list) #6, !dbg !2734
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %work_list, metadata !2720, metadata !DIExpression(DW_OP_deref)), !dbg !2728
  call void @remove_similar_memory_refs(%struct.VEC_gimple_heap** nonnull %work_list) #6, !dbg !2735
  %5 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2736
  call void @llvm.dbg.value(metadata %struct.loop* %5, metadata !2712, metadata !DIExpression()), !dbg !2726
  %6 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %work_list, align 8, !dbg !2737
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %6, metadata !2720, metadata !DIExpression()), !dbg !2728
  %call1 = call fastcc i32 @distribute_loop(%struct.loop* %5, %struct.VEC_gimple_heap* %6) #7, !dbg !2738
  call void @llvm.dbg.value(metadata i32 %call1, metadata !2719, metadata !DIExpression()), !dbg !2726
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2739
  %tobool2 = icmp eq %struct._IO_FILE* %7, null, !dbg !2739
  br i1 %tobool2, label %if.end8, label %land.lhs.true, !dbg !2741

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* @dump_flags, align 4, !dbg !2742
  %and = and i32 %8, 8, !dbg !2743
  %tobool3 = icmp eq i32 %and, 0, !dbg !2743
  br i1 %tobool3, label %if.end8, label %if.then, !dbg !2744

if.then:                                          ; preds = %land.lhs.true
  %cmp = icmp sgt i32 %call1, 1, !dbg !2745
  %9 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2748
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !2712, metadata !DIExpression()), !dbg !2726
  %num = getelementptr inbounds %struct.loop, %struct.loop* %9, i64 0, i32 0, !dbg !2748
  %10 = load i32, i32* %num, align 8, !dbg !2748
  br i1 %cmp, label %if.then4, label %if.else, !dbg !2749

if.then4:                                         ; preds = %if.then
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %call1) #6, !dbg !2750
  br label %if.end8, !dbg !2750

if.else:                                          ; preds = %if.then
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %10) #6, !dbg !2751
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %for.body, %if.then4, %if.else
  call void @verify_loop_structure() #6, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %work_list, metadata !2720, metadata !DIExpression(DW_OP_deref)), !dbg !2728
  call fastcc void @VEC_gimple_heap_free(%struct.VEC_gimple_heap** nonnull %work_list) #7, !dbg !2753
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2754
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2712, metadata !DIExpression(DW_OP_deref)), !dbg !2726
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2713, metadata !DIExpression(DW_OP_deref)), !dbg !2726
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #7, !dbg !2729
  br label %for.cond, !dbg !2729, !llvm.loop !2755

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2757
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2757
  ret i32 0, !dbg !2758
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_bitmap_base_iterate(%struct.VEC_bitmap_base* %vec_, i32 %ix_, %struct.bitmap_head_def** %ptr) unnamed_addr #0 !dbg !2759 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_base* %vec_, metadata !2766, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2767, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %ptr, metadata !2768, metadata !DIExpression()), !dbg !2769
  %tobool = icmp eq %struct.VEC_bitmap_base* %vec_, null, !dbg !2770
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2770

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 0, !dbg !2770
  %0 = load i32, i32* %num, align 8, !dbg !2770
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2770
  br i1 %cmp, label %if.then, label %if.else, !dbg !2772

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2773
  %arrayidx = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2773
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !2773
  br label %return, !dbg !2773

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2775

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.bitmap_head_def* [ null, %if.else ], [ %1, %if.then ], !dbg !2777
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2777
  store %struct.bitmap_head_def* %storemerge, %struct.bitmap_head_def** %ptr, align 8, !dbg !2777
  ret i32 %retval.0, !dbg !2772
}

declare dso_local void @debug_bitmap_file(%struct._IO_FILE*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !2778 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2784, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2785, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i32 0, metadata !2786, metadata !DIExpression()), !dbg !2790
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2791
  store i32 0, i32* %idx, align 8, !dbg !2792
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2793
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2793
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2793
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2793
  br i1 %tobool, label %if.then, label %if.end, !dbg !2795

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2796
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2798
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2799
  br label %cleanup, !dbg !2800

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #7, !dbg !2801
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #7, !dbg !2801
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2802
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2803
  call void @llvm.dbg.value(metadata i32 1, metadata !2789, metadata !DIExpression()), !dbg !2790
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2804
  %x_current_loops35 = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !2804
  %3 = load %struct.loops*, %struct.loops** %x_current_loops35, align 8, !dbg !2804
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %3, i64 0, i32 3, !dbg !2804
  %4 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !2804
  br label %while.cond79, !dbg !2807

while.cond79:                                     ; preds = %if.end, %if.end111
  %5 = phi %struct.loop* [ %4, %if.end ], [ %25, %if.end111 ]
  %6 = phi %struct.loop* [ %4, %if.end ], [ %26, %if.end111 ]
  %7 = phi %struct.loop* [ %4, %if.end ], [ %27, %if.end111 ]
  %8 = phi %struct.loop* [ %4, %if.end ], [ %28, %if.end111 ]
  %9 = phi %struct.loop* [ %4, %if.end ], [ %29, %if.end111 ]
  %10 = phi %struct.loop* [ %4, %if.end ], [ %30, %if.end111 ]
  %11 = phi %struct.loop* [ %4, %if.end ], [ %31, %if.end111 ]
  %12 = phi %struct.loop* [ %4, %if.end ], [ %32, %if.end111 ], !dbg !2809
  call void @llvm.dbg.value(metadata %struct.loop* %12, metadata !2787, metadata !DIExpression()), !dbg !2790
  %num81 = getelementptr inbounds %struct.loop, %struct.loop* %12, i64 0, i32 0, !dbg !2812
  %13 = load i32, i32* %num81, align 8, !dbg !2812
  %cmp82 = icmp slt i32 %13, 1, !dbg !2813
  br i1 %cmp82, label %if.end94, label %if.then83, !dbg !2814

if.then83:                                        ; preds = %while.cond79
  %14 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2815
  %tobool85 = icmp eq %struct.VEC_int_heap* %14, null, !dbg !2815
  br i1 %tobool85, label %cond.end90, label %cond.true86, !dbg !2815

cond.true86:                                      ; preds = %if.then83
  %base88 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %14, i64 0, i32 0, !dbg !2815
  br label %cond.end90, !dbg !2815

cond.end90:                                       ; preds = %if.then83, %cond.true86
  %cond91 = phi %struct.VEC_int_base* [ %base88, %cond.true86 ], [ null, %if.then83 ], !dbg !2815
  call void @llvm.dbg.value(metadata %struct.loop* %11, metadata !2787, metadata !DIExpression()), !dbg !2790
  %num92 = getelementptr inbounds %struct.loop, %struct.loop* %11, i64 0, i32 0, !dbg !2815
  %15 = load i32, i32* %num92, align 8, !dbg !2815
  %call93 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond91, i32 %15) #7, !dbg !2815
  br label %if.end94, !dbg !2815

if.end94:                                         ; preds = %while.cond79, %cond.end90
  call void @llvm.dbg.value(metadata %struct.loop* %10, metadata !2787, metadata !DIExpression()), !dbg !2790
  %inner95 = getelementptr inbounds %struct.loop, %struct.loop* %10, i64 0, i32 8, !dbg !2816
  %16 = load %struct.loop*, %struct.loop** %inner95, align 8, !dbg !2816
  %cmp96 = icmp eq %struct.loop* %16, null, !dbg !2818
  br i1 %cmp96, label %while.cond100.preheader, label %if.then97, !dbg !2819

while.cond100.preheader:                          ; preds = %if.end94
  br label %while.cond100, !dbg !2820

if.then97:                                        ; preds = %if.end94
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !2787, metadata !DIExpression()), !dbg !2790
  %inner98 = getelementptr inbounds %struct.loop, %struct.loop* %9, i64 0, i32 8, !dbg !2822
  %17 = load %struct.loop*, %struct.loop** %inner98, align 8, !dbg !2822
  br label %if.end111, !dbg !2823

while.cond100:                                    ; preds = %while.cond100.preheader, %while.body104
  %18 = phi %struct.loop* [ %5, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %19 = phi %struct.loop* [ %6, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %20 = phi %struct.loop* [ %7, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %21 = phi %struct.loop* [ %8, %while.cond100.preheader ], [ %call105, %while.body104 ], !dbg !2824
  call void @llvm.dbg.value(metadata %struct.loop* %21, metadata !2787, metadata !DIExpression()), !dbg !2790
  %cmp101 = icmp eq %struct.loop* %21, null, !dbg !2825
  br i1 %cmp101, label %land.end, label %land.rhs, !dbg !2826

land.rhs:                                         ; preds = %while.cond100
  call void @llvm.dbg.value(metadata %struct.loop* %20, metadata !2787, metadata !DIExpression()), !dbg !2790
  %next102 = getelementptr inbounds %struct.loop, %struct.loop* %20, i64 0, i32 9, !dbg !2827
  %22 = load %struct.loop*, %struct.loop** %next102, align 8, !dbg !2827
  %cmp103 = icmp eq %struct.loop* %22, null, !dbg !2828
  br label %land.end

land.end:                                         ; preds = %while.cond100, %land.rhs
  %23 = phi i1 [ false, %while.cond100 ], [ %cmp103, %land.rhs ], !dbg !2829
  call void @llvm.dbg.value(metadata %struct.loop* %19, metadata !2787, metadata !DIExpression()), !dbg !2790
  br i1 %23, label %while.body104, label %while.end106, !dbg !2820

while.body104:                                    ; preds = %land.end
  %call105 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %19) #7, !dbg !2830
  call void @llvm.dbg.value(metadata %struct.loop* %call105, metadata !2787, metadata !DIExpression()), !dbg !2790
  br label %while.cond100, !dbg !2820, !llvm.loop !2831

while.end106:                                     ; preds = %land.end
  %.lcssa4 = phi %struct.loop* [ %18, %land.end ]
  %.lcssa = phi %struct.loop* [ %19, %land.end ]
  %cmp107 = icmp eq %struct.loop* %.lcssa, null, !dbg !2833
  br i1 %cmp107, label %if.end114.loopexit, label %if.end109, !dbg !2835

if.end109:                                        ; preds = %while.end106
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa4, metadata !2787, metadata !DIExpression()), !dbg !2790
  %next110 = getelementptr inbounds %struct.loop, %struct.loop* %.lcssa4, i64 0, i32 9, !dbg !2836
  %24 = load %struct.loop*, %struct.loop** %next110, align 8, !dbg !2836
  br label %if.end111

if.end111:                                        ; preds = %if.end109, %if.then97
  %25 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  %26 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  %27 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  %28 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  %29 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  %30 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  %31 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  %32 = phi %struct.loop* [ %24, %if.end109 ], [ %17, %if.then97 ]
  br label %while.cond79, !dbg !2807, !llvm.loop !2837

if.end114.loopexit:                               ; preds = %while.end106
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #7, !dbg !2839
  br label %cleanup, !dbg !2840

cleanup:                                          ; preds = %if.end114.loopexit, %if.then
  ret void, !dbg !2840
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_gimple_heap* @VEC_gimple_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2841 {
entry:
  call void @llvm.dbg.value(metadata i32 3, metadata !2845, metadata !DIExpression()), !dbg !2846
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 3) #6, !dbg !2847
  %0 = bitcast i8* %call to %struct.VEC_gimple_heap*, !dbg !2847
  ret %struct.VEC_gimple_heap* %0, !dbg !2847
}

declare dso_local void @stores_from_loop(%struct.loop*, %struct.VEC_gimple_heap**) local_unnamed_addr #2

declare dso_local void @remove_similar_memory_refs(%struct.VEC_gimple_heap**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @distribute_loop(%struct.loop* %loop, %struct.VEC_gimple_heap* %stmts) unnamed_addr #5 !dbg !2848 {
entry:
  %s = alloca %union.gimple_statement_d*, align 8
  %vertices = alloca %struct.VEC_int_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2852, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %stmts, metadata !2853, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i32 0, metadata !2854, metadata !DIExpression()), !dbg !2886
  %0 = bitcast %union.gimple_statement_d** %s to i8*, !dbg !2887
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2887
  %1 = bitcast %struct.VEC_int_heap** %vertices to i8*, !dbg !2888
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2888
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !2889
  %2 = load i32, i32* %num_nodes, align 4, !dbg !2889
  %cmp = icmp ugt i32 %2, 2, !dbg !2891
  br i1 %cmp, label %if.then, label %if.end3, !dbg !2892

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2893
  %tobool = icmp eq %struct._IO_FILE* %3, null, !dbg !2893
  br i1 %tobool, label %cleanup, label %land.lhs.true, !dbg !2896

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32, i32* @dump_flags, align 4, !dbg !2897
  %and = and i32 %4, 8, !dbg !2898
  %tobool1 = icmp eq i32 %and, 0, !dbg !2898
  br i1 %tobool1, label %cleanup, label %if.then2, !dbg !2899

if.then2:                                         ; preds = %land.lhs.true
  %num = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !2900
  %5 = load i32, i32* %num, align 8, !dbg !2900
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %5) #6, !dbg !2901
  br label %cleanup, !dbg !2901

if.end3:                                          ; preds = %entry
  %call4 = tail call %struct.graph* @build_rdg(%struct.loop* %loop) #6, !dbg !2902
  call void @llvm.dbg.value(metadata %struct.graph* %call4, metadata !2855, metadata !DIExpression()), !dbg !2886
  %tobool5 = icmp eq %struct.graph* %call4, null, !dbg !2903
  br i1 %tobool5, label %if.then6, label %if.end15, !dbg !2905

if.then6:                                         ; preds = %if.end3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2906
  %tobool7 = icmp eq %struct._IO_FILE* %6, null, !dbg !2906
  br i1 %tobool7, label %cleanup, label %land.lhs.true8, !dbg !2909

land.lhs.true8:                                   ; preds = %if.then6
  %7 = load i32, i32* @dump_flags, align 4, !dbg !2910
  %and9 = and i32 %7, 8, !dbg !2911
  %tobool10 = icmp eq i32 %and9, 0, !dbg !2911
  br i1 %tobool10, label %cleanup, label %if.then11, !dbg !2912

if.then11:                                        ; preds = %land.lhs.true8
  %num12 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !2913
  %8 = load i32, i32* %num12, align 8, !dbg !2913
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %8) #6, !dbg !2914
  br label %cleanup, !dbg !2914

if.end15:                                         ; preds = %if.end3
  %call16 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 3) #7, !dbg !2915
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %call16, metadata !2881, metadata !DIExpression()), !dbg !2886
  store %struct.VEC_int_heap* %call16, %struct.VEC_int_heap** %vertices, align 8, !dbg !2916
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2917
  %tobool17 = icmp eq %struct._IO_FILE* %9, null, !dbg !2917
  br i1 %tobool17, label %if.end22, label %land.lhs.true18, !dbg !2919

land.lhs.true18:                                  ; preds = %if.end15
  %10 = load i32, i32* @dump_flags, align 4, !dbg !2920
  %and19 = and i32 %10, 8, !dbg !2921
  %tobool20 = icmp eq i32 %and19, 0, !dbg !2921
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !2922

if.then21:                                        ; preds = %land.lhs.true18
  tail call void @dump_rdg(%struct._IO_FILE* nonnull %9, %struct.graph* nonnull %call4) #6, !dbg !2923
  br label %if.end22, !dbg !2923

if.end22:                                         ; preds = %land.lhs.true18, %if.end15, %if.then21
  call void @llvm.dbg.value(metadata i32 0, metadata !2880, metadata !DIExpression()), !dbg !2886
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %stmts, i64 0, i32 0, !dbg !2924
  br label %for.cond, !dbg !2925

for.cond:                                         ; preds = %for.inc, %if.end22
  %i.0 = phi i32 [ 0, %if.end22 ], [ %inc, %for.inc ], !dbg !2926
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2880, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %s, metadata !2879, metadata !DIExpression(DW_OP_deref)), !dbg !2886
  %call24 = call fastcc i32 @VEC_gimple_base_iterate(%struct.VEC_gimple_base* %base, i32 %i.0, %union.gimple_statement_d** nonnull %s) #7, !dbg !2927
  %tobool25 = icmp eq i32 %call24, 0, !dbg !2928
  br i1 %tobool25, label %for.end, label %for.body, !dbg !2928

for.body:                                         ; preds = %for.cond
  %11 = load %union.gimple_statement_d*, %union.gimple_statement_d** %s, align 8, !dbg !2929
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %11, metadata !2879, metadata !DIExpression()), !dbg !2886
  %call26 = call i32 @rdg_vertex_for_stmt(%struct.graph* nonnull %call4, %union.gimple_statement_d* %11) #6, !dbg !2930
  call void @llvm.dbg.value(metadata i32 %call26, metadata !2882, metadata !DIExpression()), !dbg !2931
  %cmp27 = icmp sgt i32 %call26, -1, !dbg !2932
  br i1 %cmp27, label %if.then28, label %for.inc, !dbg !2934

if.then28:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vertices, metadata !2881, metadata !DIExpression(DW_OP_deref)), !dbg !2886
  %call29 = call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** nonnull %vertices, i32 %call26) #7, !dbg !2935
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2937
  %tobool30 = icmp eq %struct._IO_FILE* %12, null, !dbg !2937
  br i1 %tobool30, label %for.inc, label %land.lhs.true31, !dbg !2939

land.lhs.true31:                                  ; preds = %if.then28
  %13 = load i32, i32* @dump_flags, align 4, !dbg !2940
  %and32 = and i32 %13, 8, !dbg !2941
  %tobool33 = icmp eq i32 %and32, 0, !dbg !2941
  br i1 %tobool33, label %for.inc, label %if.then34, !dbg !2942

if.then34:                                        ; preds = %land.lhs.true31
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %call26) #6, !dbg !2943
  br label %for.inc, !dbg !2943

for.inc:                                          ; preds = %land.lhs.true31, %if.then28, %for.body, %if.then34
  %inc = add i32 %i.0, 1, !dbg !2944
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2880, metadata !DIExpression()), !dbg !2886
  br label %for.cond, !dbg !2945, !llvm.loop !2946

for.end:                                          ; preds = %for.cond
  %14 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vertices, align 8, !dbg !2948
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %14, metadata !2881, metadata !DIExpression()), !dbg !2886
  %call38 = call fastcc i32 @ldist_gen(%struct.loop* %loop, %struct.graph* nonnull %call4, %struct.VEC_int_heap* %14) #7, !dbg !2949
  call void @llvm.dbg.value(metadata i32 %call38, metadata !2854, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vertices, metadata !2881, metadata !DIExpression(DW_OP_deref)), !dbg !2886
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull %vertices) #7, !dbg !2950
  call void @free_rdg(%struct.graph* nonnull %call4) #6, !dbg !2951
  br label %cleanup, !dbg !2952

cleanup:                                          ; preds = %land.lhs.true, %if.then, %land.lhs.true8, %if.then6, %if.then11, %if.then2, %for.end
  %retval.0 = phi i32 [ %call38, %for.end ], [ 0, %if.then2 ], [ 0, %land.lhs.true ], [ 0, %if.then ], [ 0, %if.then11 ], [ 0, %land.lhs.true8 ], [ 0, %if.then6 ], !dbg !2886
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2953
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2953
  ret i32 %retval.0, !dbg !2953
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @verify_loop_structure() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_gimple_heap_free(%struct.VEC_gimple_heap** %vec_) unnamed_addr #0 !dbg !2954 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %vec_, metadata !2959, metadata !DIExpression()), !dbg !2960
  %0 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %vec_, align 8, !dbg !2961
  %tobool = icmp eq %struct.VEC_gimple_heap* %0, null, !dbg !2961
  br i1 %tobool, label %if.end, label %if.then, !dbg !2963

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_gimple_heap* %0 to i8*, !dbg !2963
  tail call void @free(i8* nonnull %1) #6, !dbg !2961
  br label %if.end, !dbg !2961

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_gimple_heap* null, %struct.VEC_gimple_heap** %vec_, align 8, !dbg !2963
  ret void, !dbg !2963
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !2964 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2968, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2969, metadata !DIExpression()), !dbg !2971
  %0 = bitcast i32* %anum to i8*, !dbg !2972
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2972
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2971
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2971
  br label %while.cond, !dbg !2973

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2974
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !2974
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2974

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !2974
  br label %cond.end, !dbg !2974

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !2974
  %2 = load i32, i32* %idx, align 8, !dbg !2974
  call void @llvm.dbg.value(metadata i32* %anum, metadata !2970, metadata !DIExpression(DW_OP_deref)), !dbg !2971
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #7, !dbg !2974
  %tobool2 = icmp eq i32 %call, 0, !dbg !2973
  br i1 %tobool2, label %while.end, label %while.body, !dbg !2973

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !2975
  %inc = add i32 %3, 1, !dbg !2975
  store i32 %inc, i32* %idx, align 8, !dbg !2975
  %4 = load i32, i32* %anum, align 4, !dbg !2977
  call void @llvm.dbg.value(metadata i32 %4, metadata !2970, metadata !DIExpression()), !dbg !2971
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #7, !dbg !2978
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !2979
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !2980
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !2982, !llvm.loop !2983

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #7, !dbg !2985
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2986
  br label %cleanup, !dbg !2987

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !2987

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2987
  ret void, !dbg !2987
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2988 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2992, metadata !DIExpression()), !dbg !2993
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !2994
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !2994
  ret %struct.VEC_int_heap* %0, !dbg !2994
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !2995 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2996
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2996
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2996
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2996
  br i1 %tobool, label %return, label %if.end, !dbg !2998

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2999
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2999
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2999
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2999

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2999
  br label %cond.end, !dbg !2999

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2999
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #7, !dbg !2999
  br label %return, !dbg !3000

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !3001
  ret i32 %retval.0, !dbg !3002
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !3003 {
entry:
  unreachable, !dbg !3012
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !3013 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3018, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !3019, metadata !DIExpression()), !dbg !3021
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3022
  %0 = load i32, i32* %num1, align 4, !dbg !3022
  %inc = add i32 %0, 1, !dbg !3022
  store i32 %inc, i32* %num1, align 4, !dbg !3022
  %idxprom = zext i32 %0 to i64, !dbg !3022
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3022
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !3020, metadata !DIExpression()), !dbg !3021
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !3022
  ret i32* %arrayidx, !dbg !3022
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !3023 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3029, metadata !DIExpression()), !dbg !3031
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !3032
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3032
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !3032
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3032

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !3032
  br label %cond.end, !dbg !3032

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3032
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #7, !dbg !3032
  call void @llvm.dbg.value(metadata i32 %call, metadata !3030, metadata !DIExpression()), !dbg !3031
  %cmp = icmp eq i32 %call, 0, !dbg !3033
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3035

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3036
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !3036
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !3036

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !3036
  br label %cond.end8, !dbg !3036

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !3036
  %sub = add i32 %call, -1, !dbg !3036
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #7, !dbg !3036
  br label %cleanup, !dbg !3037

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !3031
  ret %struct.loop* %retval.0, !dbg !3038
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !3039 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3043, metadata !DIExpression()), !dbg !3044
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !3045
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3045

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !3045
  %0 = load i32, i32* %num, align 8, !dbg !3045
  br label %cond.end, !dbg !3045

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3045
  ret i32 %cond, !dbg !3045
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3046 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3050, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3051, metadata !DIExpression()), !dbg !3052
  br label %land.end, !dbg !3053

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3053
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3053
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !3053
  ret %struct.loop* %0, !dbg !3053
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

declare dso_local %struct.graph* @build_rdg(%struct.loop*) local_unnamed_addr #2

declare dso_local void @dump_rdg(%struct._IO_FILE*, %struct.graph*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_iterate(%struct.VEC_gimple_base* %vec_, i32 %ix_, %union.gimple_statement_d** %ptr) unnamed_addr #0 !dbg !3054 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !3061, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3062, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %ptr, metadata !3063, metadata !DIExpression()), !dbg !3064
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !3065
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3065

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !3065
  %0 = load i32, i32* %num, align 8, !dbg !3065
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3065
  br i1 %cmp, label %if.then, label %if.else, !dbg !3067

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3068
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3068
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %arrayidx, align 8, !dbg !3068
  br label %return, !dbg !3068

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3070

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %union.gimple_statement_d* [ null, %if.else ], [ %1, %if.then ], !dbg !3072
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3072
  store %union.gimple_statement_d* %storemerge, %union.gimple_statement_d** %ptr, align 8, !dbg !3072
  ret i32 %retval.0, !dbg !3067
}

declare dso_local i32 @rdg_vertex_for_stmt(%struct.graph*, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** %vec_, i32 %obj_) unnamed_addr #0 !dbg !3073 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !3078, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !3079, metadata !DIExpression()), !dbg !3080
  %call = tail call fastcc i32 @VEC_int_heap_reserve(%struct.VEC_int_heap** %vec_, i32 1) #7, !dbg !3081
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !3081
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3081
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3081

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !3081
  br label %cond.end, !dbg !3081

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3081
  %call1 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond, i32 %obj_) #7, !dbg !3081
  ret i32* %call1, !dbg !3081
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ldist_gen(%struct.loop* %loop, %struct.graph* %rdg, %struct.VEC_int_heap* %starting_vertices) unnamed_addr #5 !dbg !3082 {
entry:
  %components = alloca %struct.VEC_rdgc_heap*, align 8
  %partitions = alloca %struct.VEC_bitmap_heap*, align 8
  %other_stores = alloca %struct.VEC_int_heap*, align 8
  %partition = alloca %struct.bitmap_head_def*, align 8
  %v = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3086, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !3087, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %starting_vertices, metadata !3088, metadata !DIExpression()), !dbg !3105
  %0 = bitcast %struct.VEC_rdgc_heap** %components to i8*, !dbg !3106
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3106
  %call = tail call fastcc %struct.VEC_rdgc_heap* @VEC_rdgc_heap_alloc(i32 3) #7, !dbg !3107
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_heap* %call, metadata !3091, metadata !DIExpression()), !dbg !3105
  store %struct.VEC_rdgc_heap* %call, %struct.VEC_rdgc_heap** %components, align 8, !dbg !3108
  %1 = bitcast %struct.VEC_bitmap_heap** %partitions to i8*, !dbg !3109
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3109
  %call1 = tail call fastcc %struct.VEC_bitmap_heap* @VEC_bitmap_heap_alloc(i32 3) #7, !dbg !3110
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap* %call1, metadata !3092, metadata !DIExpression()), !dbg !3105
  store %struct.VEC_bitmap_heap* %call1, %struct.VEC_bitmap_heap** %partitions, align 8, !dbg !3111
  %2 = bitcast %struct.VEC_int_heap** %other_stores to i8*, !dbg !3112
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3112
  %call2 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 3) #7, !dbg !3113
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %call2, metadata !3093, metadata !DIExpression()), !dbg !3105
  store %struct.VEC_int_heap* %call2, %struct.VEC_int_heap** %other_stores, align 8, !dbg !3114
  %3 = bitcast %struct.bitmap_head_def** %partition to i8*, !dbg !3115
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !3115
  %call3 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3116
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call3, metadata !3095, metadata !DIExpression()), !dbg !3105
  %call4 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3117
  store %struct.bitmap_head_def* %call4, %struct.bitmap_head_def** @remaining_stmts, align 8, !dbg !3118
  %call5 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3119
  store %struct.bitmap_head_def* %call5, %struct.bitmap_head_def** @upstream_mem_writes, align 8, !dbg !3120
  call void @llvm.dbg.value(metadata i32 0, metadata !3089, metadata !DIExpression()), !dbg !3105
  %n_vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 0, !dbg !3121
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 1, !dbg !3122
  %4 = bitcast i32* %v to i8*, !dbg !3123
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %starting_vertices, i64 0, i32 0, !dbg !3124
  br label %for.cond, !dbg !3127

for.cond:                                         ; preds = %for.inc19, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc19 ], [ 0, %entry ], !dbg !3128
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3089, metadata !DIExpression()), !dbg !3105
  %5 = load i32, i32* %n_vertices, align 8, !dbg !3129
  %6 = sext i32 %5 to i64, !dbg !3130
  %cmp = icmp slt i64 %indvars.iv, %6, !dbg !3130
  br i1 %cmp, label %for.body, label %for.end21, !dbg !3131

for.body:                                         ; preds = %for.cond
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @remaining_stmts, align 8, !dbg !3132
  %8 = trunc i64 %indvars.iv to i32, !dbg !3133
  %call6 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %7, i32 %8) #6, !dbg !3133
  %9 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3134
  %data = getelementptr inbounds %struct.vertex, %struct.vertex* %9, i64 %indvars.iv, i32 4, !dbg !3134
  %10 = bitcast i8** %data to %struct.rdg_vertex**, !dbg !3134
  %11 = load %struct.rdg_vertex*, %struct.rdg_vertex** %10, align 8, !dbg !3134
  %has_mem_write = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %11, i64 0, i32 1, !dbg !3134
  %12 = load i8, i8* %has_mem_write, align 8, !dbg !3134
  %tobool = icmp eq i8 %12, 0, !dbg !3134
  br i1 %tobool, label %for.inc19, label %if.then, !dbg !3135

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8, !dbg !3136
  call void @llvm.dbg.value(metadata i8 0, metadata !3103, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i32 0, metadata !3102, metadata !DIExpression()), !dbg !3123
  br label %for.cond7, !dbg !3137

for.cond7:                                        ; preds = %for.inc, %if.then
  %j.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ], !dbg !3138
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !3102, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i32* %v, metadata !3096, metadata !DIExpression(DW_OP_deref)), !dbg !3123
  %call9 = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %base, i32 %j.0, i32* nonnull %v) #7, !dbg !3139
  %tobool10 = icmp eq i32 %call9, 0, !dbg !3140
  br i1 %tobool10, label %for.end, label %for.body11, !dbg !3140

for.body11:                                       ; preds = %for.cond7
  %13 = load i32, i32* %v, align 4, !dbg !3141
  call void @llvm.dbg.value(metadata i32 %13, metadata !3096, metadata !DIExpression()), !dbg !3123
  %14 = zext i32 %13 to i64, !dbg !3143
  %cmp12 = icmp eq i64 %indvars.iv, %14, !dbg !3143
  br i1 %cmp12, label %for.end, label %for.inc, !dbg !3144

for.inc:                                          ; preds = %for.body11
  %inc = add i32 %j.0, 1, !dbg !3145
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3102, metadata !DIExpression()), !dbg !3123
  br label %for.cond7, !dbg !3146, !llvm.loop !3147

for.end:                                          ; preds = %for.cond7, %for.body11
  %found.0 = phi i1 [ false, %for.cond7 ], [ true, %for.body11 ]
  br i1 %found.0, label %if.end17, label %if.then15, !dbg !3149

if.then15:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %other_stores, metadata !3093, metadata !DIExpression(DW_OP_deref)), !dbg !3105
  %15 = trunc i64 %indvars.iv to i32, !dbg !3150
  %call16 = call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** nonnull %other_stores, i32 %15) #7, !dbg !3150
  br label %if.end17, !dbg !3150

if.end17:                                         ; preds = %if.then15, %for.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8, !dbg !3152
  br label %for.inc19, !dbg !3153

for.inc19:                                        ; preds = %for.body, %if.end17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3154
  call void @llvm.dbg.value(metadata i32 undef, metadata !3089, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3105
  br label %for.cond, !dbg !3155, !llvm.loop !3156

for.end21:                                        ; preds = %for.cond
  call fastcc void @mark_nodes_having_upstream_mem_writes(%struct.graph* %rdg) #7, !dbg !3158
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_heap** %components, metadata !3091, metadata !DIExpression(DW_OP_deref)), !dbg !3105
  call fastcc void @rdg_build_components(%struct.graph* %rdg, %struct.VEC_int_heap* %starting_vertices, %struct.VEC_rdgc_heap** nonnull %components) #7, !dbg !3159
  %16 = load %struct.VEC_rdgc_heap*, %struct.VEC_rdgc_heap** %components, align 8, !dbg !3160
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_heap* %16, metadata !3091, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap** %partitions, metadata !3092, metadata !DIExpression(DW_OP_deref)), !dbg !3105
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %other_stores, metadata !3093, metadata !DIExpression(DW_OP_deref)), !dbg !3105
  call fastcc void @rdg_build_partitions(%struct.graph* %rdg, %struct.VEC_rdgc_heap* %16, %struct.VEC_int_heap** nonnull %other_stores, %struct.VEC_bitmap_heap** nonnull %partitions, %struct.bitmap_head_def* %call3) #7, !dbg !3161
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call3) #6, !dbg !3162
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3095, metadata !DIExpression()), !dbg !3105
  %17 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** %partitions, align 8, !dbg !3163
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap* %17, metadata !3092, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap* %17, metadata !3092, metadata !DIExpression()), !dbg !3105
  %base24 = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %17, i64 0, i32 0, !dbg !3163
  %call28 = call fastcc i32 @VEC_bitmap_base_length(%struct.VEC_bitmap_base* %base24) #7, !dbg !3163
  call void @llvm.dbg.value(metadata i32 %call28, metadata !3090, metadata !DIExpression()), !dbg !3105
  %cmp29 = icmp slt i32 %call28, 2, !dbg !3164
  br i1 %cmp29, label %ldist_done, label %lor.lhs.false, !dbg !3166

lor.lhs.false:                                    ; preds = %for.end21
  %18 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** %partitions, align 8, !dbg !3167
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap* %18, metadata !3092, metadata !DIExpression()), !dbg !3105
  %call30 = call fastcc zeroext i8 @partition_contains_all_rw(%struct.graph* %rdg, %struct.VEC_bitmap_heap* %18) #7, !dbg !3168
  %tobool31 = icmp eq i8 %call30, 0, !dbg !3168
  br i1 %tobool31, label %if.end33, label %ldist_done, !dbg !3169

if.end33:                                         ; preds = %lor.lhs.false
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3170
  %tobool34 = icmp eq %struct._IO_FILE* %19, null, !dbg !3170
  br i1 %tobool34, label %if.end37, label %land.lhs.true, !dbg !3172

land.lhs.true:                                    ; preds = %if.end33
  %20 = load i32, i32* @dump_flags, align 4, !dbg !3173
  %and = and i32 %20, 8, !dbg !3174
  %tobool35 = icmp eq i32 %and, 0, !dbg !3174
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !3175

if.then36:                                        ; preds = %land.lhs.true
  %21 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** %partitions, align 8, !dbg !3176
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap* %21, metadata !3092, metadata !DIExpression()), !dbg !3105
  call fastcc void @dump_rdg_partitions(%struct._IO_FILE* nonnull %19, %struct.VEC_bitmap_heap* %21) #7, !dbg !3177
  br label %if.end37, !dbg !3177

if.end37:                                         ; preds = %land.lhs.true, %if.end33, %if.then36
  call void @llvm.dbg.value(metadata i32 0, metadata !3089, metadata !DIExpression()), !dbg !3105
  %sub = add nsw i32 %call28, -1, !dbg !3178
  br label %for.cond38, !dbg !3182

for.cond38:                                       ; preds = %for.inc55, %if.end37
  %i.1 = phi i32 [ 0, %if.end37 ], [ %inc56, %for.inc55 ], !dbg !3183
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3089, metadata !DIExpression()), !dbg !3105
  %22 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** %partitions, align 8, !dbg !3184
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap* %22, metadata !3092, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap* %22, metadata !3092, metadata !DIExpression()), !dbg !3105
  %base41 = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %22, i64 0, i32 0, !dbg !3184
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %partition, metadata !3094, metadata !DIExpression(DW_OP_deref)), !dbg !3105
  %call45 = call fastcc i32 @VEC_bitmap_base_iterate(%struct.VEC_bitmap_base* %base41, i32 %i.1, %struct.bitmap_head_def** nonnull %partition) #7, !dbg !3184
  %tobool46 = icmp eq i32 %call45, 0, !dbg !3185
  br i1 %tobool46, label %for.end57, label %for.body47, !dbg !3185

for.body47:                                       ; preds = %for.cond38
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %partition, align 8, !dbg !3186
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %23, metadata !3094, metadata !DIExpression()), !dbg !3105
  %cmp48 = icmp slt i32 %i.1, %sub, !dbg !3187
  %conv50 = zext i1 %cmp48 to i8, !dbg !3188
  %call51 = call fastcc zeroext i8 @generate_code_for_partition(%struct.loop* %loop, %struct.bitmap_head_def* %23, i8 zeroext %conv50) #7, !dbg !3189
  %tobool52 = icmp eq i8 %call51, 0, !dbg !3189
  br i1 %tobool52, label %ldist_done.loopexit, label %for.inc55, !dbg !3190

for.inc55:                                        ; preds = %for.body47
  %inc56 = add nuw nsw i32 %i.1, 1, !dbg !3191
  call void @llvm.dbg.value(metadata i32 %inc56, metadata !3089, metadata !DIExpression()), !dbg !3105
  br label %for.cond38, !dbg !3192, !llvm.loop !3193

for.end57:                                        ; preds = %for.cond38
  call void @rewrite_into_loop_closed_ssa(%struct.bitmap_head_def* null, i32 2048) #6, !dbg !3195
  call void @update_ssa(i32 18432) #6, !dbg !3196
  br label %ldist_done, !dbg !3196

ldist_done.loopexit:                              ; preds = %for.body47
  br label %ldist_done, !dbg !3197

ldist_done:                                       ; preds = %ldist_done.loopexit, %lor.lhs.false, %for.end21, %for.end57
  call void @llvm.dbg.label(metadata !3104), !dbg !3198
  %24 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @remaining_stmts, align 8, !dbg !3197
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %24) #6, !dbg !3197
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @remaining_stmts, align 8, !dbg !3197
  %25 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @upstream_mem_writes, align 8, !dbg !3199
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %25) #6, !dbg !3199
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @upstream_mem_writes, align 8, !dbg !3199
  call void @llvm.dbg.value(metadata i32 0, metadata !3089, metadata !DIExpression()), !dbg !3105
  br label %for.cond58, !dbg !3200

for.cond58:                                       ; preds = %for.body67, %ldist_done
  %i.2 = phi i32 [ 0, %ldist_done ], [ %inc69, %for.body67 ], !dbg !3202
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !3089, metadata !DIExpression()), !dbg !3105
  %26 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** %partitions, align 8, !dbg !3203
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap* %26, metadata !3092, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap* %26, metadata !3092, metadata !DIExpression()), !dbg !3105
  %base61 = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %26, i64 0, i32 0, !dbg !3203
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %partition, metadata !3094, metadata !DIExpression(DW_OP_deref)), !dbg !3105
  %call65 = call fastcc i32 @VEC_bitmap_base_iterate(%struct.VEC_bitmap_base* %base61, i32 %i.2, %struct.bitmap_head_def** nonnull %partition) #7, !dbg !3203
  %tobool66 = icmp eq i32 %call65, 0, !dbg !3205
  br i1 %tobool66, label %for.end70, label %for.body67, !dbg !3205

for.body67:                                       ; preds = %for.cond58
  %27 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %partition, align 8, !dbg !3206
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %27, metadata !3094, metadata !DIExpression()), !dbg !3105
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %27) #6, !dbg !3206
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3094, metadata !DIExpression()), !dbg !3105
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %partition, align 8, !dbg !3206
  %inc69 = add nuw nsw i32 %i.2, 1, !dbg !3207
  call void @llvm.dbg.value(metadata i32 %inc69, metadata !3089, metadata !DIExpression()), !dbg !3105
  br label %for.cond58, !dbg !3208, !llvm.loop !3209

for.end70:                                        ; preds = %for.cond58
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %other_stores, metadata !3093, metadata !DIExpression(DW_OP_deref)), !dbg !3105
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull %other_stores) #7, !dbg !3211
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap** %partitions, metadata !3092, metadata !DIExpression(DW_OP_deref)), !dbg !3105
  call fastcc void @VEC_bitmap_heap_free(%struct.VEC_bitmap_heap** nonnull %partitions) #7, !dbg !3212
  %28 = load %struct.VEC_rdgc_heap*, %struct.VEC_rdgc_heap** %components, align 8, !dbg !3213
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_heap* %28, metadata !3091, metadata !DIExpression()), !dbg !3105
  call fastcc void @free_rdg_components(%struct.VEC_rdgc_heap* %28) #7, !dbg !3214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !3215
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3215
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3215
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3215
  ret i32 %call28, !dbg !3216
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !3217 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !3221, metadata !DIExpression()), !dbg !3222
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !3223
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3223
  br i1 %tobool, label %if.end, label %if.then, !dbg !3225

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !3225
  tail call void @free(i8* nonnull %1) #6, !dbg !3223
  br label %if.end, !dbg !3223

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !3225
  ret void, !dbg !3225
}

declare dso_local void @free_rdg(%struct.graph*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_heap_reserve(%struct.VEC_int_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3226 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !3230, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32 1, metadata !3231, metadata !DIExpression()), !dbg !3233
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !3234
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3234
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3234

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !3234
  br label %cond.end, !dbg !3234

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3234
  %call = tail call fastcc i32 @VEC_int_base_space(%struct.VEC_int_base* %cond, i32 1) #7, !dbg !3234
  %tobool1 = icmp eq i32 %call, 0, !dbg !3234
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3234
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3232, metadata !DIExpression()), !dbg !3233
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3234

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_int_heap** %vec_ to i8**, !dbg !3235
  %2 = load i8*, i8** %1, align 8, !dbg !3235
  %call3 = tail call i8* @vec_heap_o_reserve(i8* %2, i32 1, i64 8, i64 4) #6, !dbg !3235
  store i8* %call3, i8** %1, align 8, !dbg !3235
  br label %if.end, !dbg !3235

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3234
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_space(%struct.VEC_int_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3237 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3241, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i32 1, metadata !3242, metadata !DIExpression()), !dbg !3243
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !3244
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3244

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 1, !dbg !3244
  %0 = load i32, i32* %alloc, align 4, !dbg !3244
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3244
  %1 = load i32, i32* %num, align 4, !dbg !3244
  %cmp1 = icmp ne i32 %0, %1, !dbg !3244
  %phitmp = zext i1 %cmp1 to i32, !dbg !3244
  br label %cond.end, !dbg !3244

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3244

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3244
}

declare dso_local i8* @vec_heap_o_reserve(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_rdgc_heap* @VEC_rdgc_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3245 {
entry:
  call void @llvm.dbg.value(metadata i32 3, metadata !3249, metadata !DIExpression()), !dbg !3250
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 3) #6, !dbg !3251
  %0 = bitcast i8* %call to %struct.VEC_rdgc_heap*, !dbg !3251
  ret %struct.VEC_rdgc_heap* %0, !dbg !3251
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_bitmap_heap* @VEC_bitmap_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3252 {
entry:
  call void @llvm.dbg.value(metadata i32 3, metadata !3256, metadata !DIExpression()), !dbg !3257
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 3) #6, !dbg !3258
  %0 = bitcast i8* %call to %struct.VEC_bitmap_heap*, !dbg !3258
  ret %struct.VEC_bitmap_heap* %0, !dbg !3258
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !3259 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3265, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3266, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !3267, metadata !DIExpression()), !dbg !3268
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !3269
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3269

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3269
  %0 = load i32, i32* %num, align 4, !dbg !3269
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3269
  br i1 %cmp, label %if.then, label %if.else, !dbg !3271

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3272
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3272
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3272
  br label %return, !dbg !3272

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3274

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !3276
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3276
  store i32 %storemerge, i32* %ptr, align 4, !dbg !3276
  ret i32 %retval.0, !dbg !3271
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_nodes_having_upstream_mem_writes(%struct.graph* %rdg) unnamed_addr #5 !dbg !3277 {
entry:
  %v = alloca i32, align 4
  %x = alloca i32, align 4
  %nodes = alloca %struct.VEC_int_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !3281, metadata !DIExpression()), !dbg !3291
  %0 = bitcast i32* %v to i8*, !dbg !3292
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3292
  %1 = bitcast i32* %x to i8*, !dbg !3292
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3292
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3293
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3284, metadata !DIExpression()), !dbg !3291
  %n_vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 0, !dbg !3294
  %2 = bitcast %struct.VEC_int_heap** %nodes to i8*, !dbg !3295
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 1, !dbg !3296
  br label %for.cond, !dbg !3301

for.cond:                                         ; preds = %for.inc30, %entry
  %storemerge.in.in = phi i32* [ %n_vertices, %entry ], [ %v, %for.inc30 ]
  %storemerge.in = load i32, i32* %storemerge.in.in, align 4, !dbg !3302
  %storemerge = add nsw i32 %storemerge.in, -1, !dbg !3302
  store i32 %storemerge, i32* %v, align 4, !dbg !3302
  call void @llvm.dbg.value(metadata i32 %storemerge, metadata !3282, metadata !DIExpression()), !dbg !3291
  %cmp = icmp sgt i32 %storemerge.in, 0, !dbg !3303
  br i1 %cmp, label %for.body, label %for.end31, !dbg !3304

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 %storemerge, metadata !3282, metadata !DIExpression()), !dbg !3291
  %call1 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call, i32 %storemerge) #6, !dbg !3305
  %tobool = icmp eq i32 %call1, 0, !dbg !3305
  br i1 %tobool, label %if.then, label %for.inc30, !dbg !3306

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3307
  %call2 = call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 3) #7, !dbg !3308
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %call2, metadata !3290, metadata !DIExpression()), !dbg !3295
  store %struct.VEC_int_heap* %call2, %struct.VEC_int_heap** %nodes, align 8, !dbg !3309
  call void @llvm.dbg.value(metadata i32* %v, metadata !3282, metadata !DIExpression(DW_OP_deref)), !dbg !3291
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %nodes, metadata !3290, metadata !DIExpression(DW_OP_deref)), !dbg !3295
  %call3 = call i32 @graphds_dfs(%struct.graph* %rdg, i32* nonnull %v, i32 1, %struct.VEC_int_heap** nonnull %nodes, i8 zeroext 0, %struct.bitmap_head_def* null) #6, !dbg !3310
  call void @llvm.dbg.value(metadata i32 0, metadata !3285, metadata !DIExpression()), !dbg !3295
  br label %for.cond4, !dbg !3311

for.cond4:                                        ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ], !dbg !3312
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3285, metadata !DIExpression()), !dbg !3295
  %3 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %nodes, align 8, !dbg !3313
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %3, metadata !3290, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %3, metadata !3290, metadata !DIExpression()), !dbg !3295
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %3, i64 0, i32 0, !dbg !3313
  call void @llvm.dbg.value(metadata i32* %x, metadata !3283, metadata !DIExpression(DW_OP_deref)), !dbg !3291
  %call6 = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %base, i32 %i.0, i32* nonnull %x) #7, !dbg !3313
  %tobool7 = icmp eq i32 %call6, 0, !dbg !3314
  br i1 %tobool7, label %for.end, label %for.body8, !dbg !3314

for.body8:                                        ; preds = %for.cond4
  %4 = load i32, i32* %x, align 4, !dbg !3315
  call void @llvm.dbg.value(metadata i32 %4, metadata !3283, metadata !DIExpression()), !dbg !3291
  %call9 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call, i32 %4) #6, !dbg !3317
  %tobool10 = icmp eq i32 %call9, 0, !dbg !3317
  br i1 %tobool10, label %if.end, label %for.inc, !dbg !3318

if.end:                                           ; preds = %for.body8
  %5 = load i32, i32* %x, align 4, !dbg !3319
  call void @llvm.dbg.value(metadata i32 %5, metadata !3283, metadata !DIExpression()), !dbg !3291
  %call12 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call, i32 %5) #6, !dbg !3320
  %6 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3321
  %7 = load i32, i32* %x, align 4, !dbg !3321
  call void @llvm.dbg.value(metadata i32 %7, metadata !3283, metadata !DIExpression()), !dbg !3291
  %idxprom = sext i32 %7 to i64, !dbg !3321
  %data = getelementptr inbounds %struct.vertex, %struct.vertex* %6, i64 %idxprom, i32 4, !dbg !3321
  %8 = bitcast i8** %data to %struct.rdg_vertex**, !dbg !3321
  %9 = load %struct.rdg_vertex*, %struct.rdg_vertex** %8, align 8, !dbg !3321
  %has_mem_write = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %9, i64 0, i32 1, !dbg !3321
  %10 = load i8, i8* %has_mem_write, align 8, !dbg !3321
  %tobool13 = icmp eq i8 %10, 0, !dbg !3321
  br i1 %tobool13, label %lor.lhs.false, label %if.then26, !dbg !3322

lor.lhs.false:                                    ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 %7, metadata !3283, metadata !DIExpression()), !dbg !3291
  %arrayidx16 = getelementptr inbounds %struct.vertex, %struct.vertex* %6, i64 %idxprom, !dbg !3323
  %call17 = call fastcc zeroext i8 @predecessor_has_mem_write(%struct.graph* %rdg, %struct.vertex* %arrayidx16) #7, !dbg !3324
  %tobool19 = icmp eq i8 %call17, 0, !dbg !3324
  br i1 %tobool19, label %lor.lhs.false20, label %if.then26, !dbg !3325

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %11 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3326
  %12 = load i32, i32* %x, align 4, !dbg !3327
  call void @llvm.dbg.value(metadata i32 %12, metadata !3283, metadata !DIExpression()), !dbg !3291
  %idxprom22 = sext i32 %12 to i64, !dbg !3328
  %arrayidx23 = getelementptr inbounds %struct.vertex, %struct.vertex* %11, i64 %idxprom22, !dbg !3328
  %call24 = call fastcc %struct.graph_edge* @has_anti_dependence(%struct.vertex* %arrayidx23) #7, !dbg !3329
  %tobool25 = icmp eq %struct.graph_edge* %call24, null, !dbg !3329
  br i1 %tobool25, label %for.inc, label %if.then26, !dbg !3330

if.then26:                                        ; preds = %lor.lhs.false20, %lor.lhs.false, %if.end
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @upstream_mem_writes, align 8, !dbg !3331
  %14 = load i32, i32* %x, align 4, !dbg !3333
  call void @llvm.dbg.value(metadata i32 %14, metadata !3283, metadata !DIExpression()), !dbg !3291
  %call27 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %13, i32 %14) #6, !dbg !3334
  br label %for.inc, !dbg !3335

for.inc:                                          ; preds = %lor.lhs.false20, %for.body8, %if.then26
  %inc = add i32 %i.0, 1, !dbg !3336
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3285, metadata !DIExpression()), !dbg !3295
  br label %for.cond4, !dbg !3337, !llvm.loop !3338

for.end:                                          ; preds = %for.cond4
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %nodes, metadata !3290, metadata !DIExpression(DW_OP_deref)), !dbg !3295
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull %nodes) #7, !dbg !3340
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3341
  br label %for.inc30, !dbg !3342

for.inc30:                                        ; preds = %for.body, %for.end
  br label %for.cond, !dbg !3343, !llvm.loop !3344

for.end31:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3346
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3346
  ret void, !dbg !3346
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rdg_build_components(%struct.graph* %rdg, %struct.VEC_int_heap* %starting_vertices, %struct.VEC_rdgc_heap** %components) unnamed_addr #5 !dbg !3347 {
entry:
  %v = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !3352, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %starting_vertices, metadata !3353, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_heap** %components, metadata !3354, metadata !DIExpression()), !dbg !3367
  %0 = bitcast i32* %v to i8*, !dbg !3368
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3368
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3369
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3357, metadata !DIExpression()), !dbg !3367
  %call1 = tail call i32 @graphds_scc(%struct.graph* %rdg, %struct.bitmap_head_def* null) #6, !dbg !3370
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3358, metadata !DIExpression()), !dbg !3367
  %conv = sext i32 %call1 to i64, !dbg !3371
  %mul = shl nsw i64 %conv, 3, !dbg !3371
  %call2 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3371
  %1 = bitcast i8* %call2 to %struct.VEC_int_heap**, !dbg !3371
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %1, metadata !3359, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i32 0, metadata !3355, metadata !DIExpression()), !dbg !3367
  %2 = sext i32 %call1 to i64, !dbg !3372
  br label %for.cond, !dbg !3372

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.body ], [ 0, %entry ], !dbg !3374
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !3355, metadata !DIExpression()), !dbg !3367
  %cmp = icmp slt i64 %indvars.iv3, %2, !dbg !3375
  br i1 %cmp, label %for.body, label %for.cond5.preheader, !dbg !3377

for.cond5.preheader:                              ; preds = %for.cond
  %n_vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 0, !dbg !3378
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 1, !dbg !3378
  br label %for.cond5, !dbg !3381

for.body:                                         ; preds = %for.cond
  %call4 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 3) #7, !dbg !3382
  %arrayidx = getelementptr inbounds %struct.VEC_int_heap*, %struct.VEC_int_heap** %1, i64 %indvars.iv3, !dbg !3383
  store %struct.VEC_int_heap* %call4, %struct.VEC_int_heap** %arrayidx, align 8, !dbg !3384
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !3385
  call void @llvm.dbg.value(metadata i32 undef, metadata !3355, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3367
  br label %for.cond, !dbg !3386, !llvm.loop !3387

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body8
  %indvars.iv1 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next2, %for.body8 ], !dbg !3389
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3355, metadata !DIExpression()), !dbg !3367
  %3 = load i32, i32* %n_vertices, align 8, !dbg !3390
  %4 = sext i32 %3 to i64, !dbg !3391
  %cmp6 = icmp slt i64 %indvars.iv1, %4, !dbg !3391
  br i1 %cmp6, label %for.body8, label %for.cond17.preheader, !dbg !3381

for.cond17.preheader:                             ; preds = %for.cond5
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %starting_vertices, i64 0, i32 0, !dbg !3392
  br label %for.cond17, !dbg !3393

for.body8:                                        ; preds = %for.cond5
  %5 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3394
  %component = getelementptr inbounds %struct.vertex, %struct.vertex* %5, i64 %indvars.iv1, i32 2, !dbg !3394
  %6 = load i32, i32* %component, align 8, !dbg !3394
  %idxprom11 = sext i32 %6 to i64, !dbg !3394
  %arrayidx12 = getelementptr inbounds %struct.VEC_int_heap*, %struct.VEC_int_heap** %1, i64 %idxprom11, !dbg !3394
  %7 = trunc i64 %indvars.iv1 to i32, !dbg !3394
  %call13 = tail call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** %arrayidx12, i32 %7) #7, !dbg !3394
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3395
  call void @llvm.dbg.value(metadata i32 undef, metadata !3355, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3367
  br label %for.cond5, !dbg !3396, !llvm.loop !3397

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc33
  %i.2 = phi i32 [ %inc34, %for.inc33 ], [ 0, %for.cond17.preheader ], !dbg !3399
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !3355, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i32* %v, metadata !3356, metadata !DIExpression(DW_OP_deref)), !dbg !3367
  %call18 = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %base, i32 %i.2, i32* nonnull %v) #7, !dbg !3400
  %tobool19 = icmp eq i32 %call18, 0, !dbg !3393
  br i1 %tobool19, label %for.cond36.preheader, label %for.body20, !dbg !3393

for.cond36.preheader:                             ; preds = %for.cond17
  %8 = sext i32 %call1 to i64, !dbg !3401
  br label %for.cond36, !dbg !3401

for.body20:                                       ; preds = %for.cond17
  %9 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3403
  %10 = load i32, i32* %v, align 4, !dbg !3404
  call void @llvm.dbg.value(metadata i32 %10, metadata !3356, metadata !DIExpression()), !dbg !3367
  %idxprom22 = sext i32 %10 to i64, !dbg !3405
  %component24 = getelementptr inbounds %struct.vertex, %struct.vertex* %9, i64 %idxprom22, i32 2, !dbg !3406
  %11 = load i32, i32* %component24, align 8, !dbg !3406
  call void @llvm.dbg.value(metadata i32 %11, metadata !3360, metadata !DIExpression()), !dbg !3407
  %call25 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call, i32 %11) #6, !dbg !3408
  %tobool26 = icmp eq i32 %call25, 0, !dbg !3408
  br i1 %tobool26, label %if.then, label %for.inc33, !dbg !3409

if.then:                                          ; preds = %for.body20
  %call27 = call i8* @xcalloc(i64 1, i64 16) #6, !dbg !3410
  %12 = bitcast i8* %call27 to %struct.rdg_component*, !dbg !3410
  call void @llvm.dbg.value(metadata %struct.rdg_component* %12, metadata !3364, metadata !DIExpression()), !dbg !3411
  %num = bitcast i8* %call27 to i32*, !dbg !3412
  store i32 %11, i32* %num, align 8, !dbg !3413
  %idxprom28 = sext i32 %11 to i64, !dbg !3414
  %arrayidx29 = getelementptr inbounds %struct.VEC_int_heap*, %struct.VEC_int_heap** %1, i64 %idxprom28, !dbg !3414
  %13 = bitcast %struct.VEC_int_heap** %arrayidx29 to i64*, !dbg !3414
  %14 = load i64, i64* %13, align 8, !dbg !3414
  %vertices30 = getelementptr inbounds i8, i8* %call27, i64 8, !dbg !3415
  %15 = bitcast i8* %vertices30 to i64*, !dbg !3416
  store i64 %14, i64* %15, align 8, !dbg !3416
  %call31 = call fastcc %struct.rdg_component** @VEC_rdgc_heap_safe_push(%struct.VEC_rdgc_heap** %components, %struct.rdg_component* %12) #7, !dbg !3417
  %call32 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call, i32 %11) #6, !dbg !3418
  br label %for.inc33, !dbg !3419

for.inc33:                                        ; preds = %for.body20, %if.then
  %inc34 = add nuw nsw i32 %i.2, 1, !dbg !3420
  call void @llvm.dbg.value(metadata i32 %inc34, metadata !3355, metadata !DIExpression()), !dbg !3367
  br label %for.cond17, !dbg !3421, !llvm.loop !3422

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc46
  %indvars.iv = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next, %for.inc46 ], !dbg !3424
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3355, metadata !DIExpression()), !dbg !3367
  %cmp37 = icmp slt i64 %indvars.iv, %8, !dbg !3425
  br i1 %cmp37, label %for.body39, label %for.end48, !dbg !3401

for.body39:                                       ; preds = %for.cond36
  %16 = trunc i64 %indvars.iv to i32, !dbg !3427
  %call40 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call, i32 %16) #6, !dbg !3427
  %tobool41 = icmp eq i32 %call40, 0, !dbg !3427
  br i1 %tobool41, label %if.then42, label %for.inc46, !dbg !3429

if.then42:                                        ; preds = %for.body39
  %arrayidx44 = getelementptr inbounds %struct.VEC_int_heap*, %struct.VEC_int_heap** %1, i64 %indvars.iv, !dbg !3430
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %arrayidx44) #7, !dbg !3430
  br label %for.inc46, !dbg !3430

for.inc46:                                        ; preds = %for.body39, %if.then42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3431
  call void @llvm.dbg.value(metadata i32 undef, metadata !3355, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3367
  br label %for.cond36, !dbg !3432, !llvm.loop !3433

for.end48:                                        ; preds = %for.cond36
  call void @free(i8* %call2) #6, !dbg !3435
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !3436
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3357, metadata !DIExpression()), !dbg !3367
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3437
  ret void, !dbg !3437
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rdg_build_partitions(%struct.graph* %rdg, %struct.VEC_rdgc_heap* %components, %struct.VEC_int_heap** %other_stores, %struct.VEC_bitmap_heap** %partitions, %struct.bitmap_head_def* %processed) unnamed_addr #5 !dbg !3438 {
entry:
  %x = alloca %struct.rdg_component*, align 8
  %part_has_writes = alloca i8, align 1
  %comps = alloca %struct.VEC_rdgc_heap*, align 8
  %foo = alloca %struct.VEC_int_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !3443, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_heap* %components, metadata !3444, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %other_stores, metadata !3445, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap** %partitions, metadata !3446, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %processed, metadata !3447, metadata !DIExpression()), !dbg !3461
  %0 = bitcast %struct.rdg_component** %x to i8*, !dbg !3462
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3462
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3463
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3450, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 0, metadata !3448, metadata !DIExpression()), !dbg !3461
  %base = getelementptr inbounds %struct.VEC_rdgc_heap, %struct.VEC_rdgc_heap* %components, i64 0, i32 0, !dbg !3464
  br label %for.cond, !dbg !3465

for.cond:                                         ; preds = %cleanup, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %cleanup ], !dbg !3466
  %partition.0 = phi %struct.bitmap_head_def* [ %call, %entry ], [ %partition.2, %cleanup ], !dbg !3467
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition.0, metadata !3450, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3448, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata %struct.rdg_component** %x, metadata !3449, metadata !DIExpression(DW_OP_deref)), !dbg !3461
  %call1 = call fastcc i32 @VEC_rdgc_base_iterate(%struct.VEC_rdgc_base* %base, i32 %i.0, %struct.rdg_component** nonnull %x) #7, !dbg !3468
  %tobool2 = icmp eq i32 %call1, 0, !dbg !3469
  br i1 %tobool2, label %for.cond28.preheader, label %for.body, !dbg !3469

for.cond28.preheader:                             ; preds = %for.cond
  %partition.0.lcssa = phi %struct.bitmap_head_def* [ %partition.0, %for.cond ], !dbg !3467
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition.0.lcssa, metadata !3450, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition.0.lcssa, metadata !3450, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition.0.lcssa, metadata !3450, metadata !DIExpression()), !dbg !3461
  %n_vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 0, !dbg !3470
  br label %for.cond28, !dbg !3473

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i8* %part_has_writes, metadata !3455, metadata !DIExpression(DW_OP_deref)), !dbg !3474
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %part_has_writes) #8, !dbg !3475
  call void @llvm.dbg.value(metadata i8 0, metadata !3455, metadata !DIExpression()), !dbg !3474
  store i8 0, i8* %part_has_writes, align 1, !dbg !3476
  %1 = load %struct.rdg_component*, %struct.rdg_component** %x, align 8, !dbg !3477
  call void @llvm.dbg.value(metadata %struct.rdg_component* %1, metadata !3449, metadata !DIExpression()), !dbg !3461
  %vertices = getelementptr inbounds %struct.rdg_component, %struct.rdg_component* %1, i64 0, i32 1, !dbg !3477
  %2 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vertices, align 8, !dbg !3477
  %tobool3 = icmp eq %struct.VEC_int_heap* %2, null, !dbg !3477
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !3477

cond.true4:                                       ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.rdg_component* %1, metadata !3449, metadata !DIExpression()), !dbg !3461
  %base6 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %2, i64 0, i32 0, !dbg !3477
  br label %cond.end8, !dbg !3477

cond.end8:                                        ; preds = %for.body, %cond.true4
  %cond9 = phi %struct.VEC_int_base* [ %base6, %cond.true4 ], [ null, %for.body ], !dbg !3477
  %call10 = call fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %cond9, i32 0) #7, !dbg !3477
  call void @llvm.dbg.value(metadata i32 %call10, metadata !3456, metadata !DIExpression()), !dbg !3474
  %call11 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %processed, i32 %call10) #6, !dbg !3478
  %tobool12 = icmp eq i32 %call11, 0, !dbg !3478
  br i1 %tobool12, label %if.end, label %cleanup, !dbg !3480

if.end:                                           ; preds = %cond.end8
  %3 = load %struct.rdg_component*, %struct.rdg_component** %x, align 8, !dbg !3481
  call void @llvm.dbg.value(metadata %struct.rdg_component* %3, metadata !3449, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8* %part_has_writes, metadata !3455, metadata !DIExpression(DW_OP_deref)), !dbg !3474
  %call13 = call fastcc %struct.bitmap_head_def* @build_rdg_partition_for_component(%struct.graph* %rdg, %struct.rdg_component* %3, i8* nonnull %part_has_writes, %struct.VEC_int_heap** %other_stores) #7, !dbg !3482
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call13, metadata !3451, metadata !DIExpression()), !dbg !3474
  %call14 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %partition.0, %struct.bitmap_head_def* %call13) #6, !dbg !3483
  %call15 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %processed, %struct.bitmap_head_def* %call13) #6, !dbg !3484
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call13) #6, !dbg !3485
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3451, metadata !DIExpression()), !dbg !3474
  %4 = load i8, i8* %part_has_writes, align 1, !dbg !3486
  call void @llvm.dbg.value(metadata i8 %4, metadata !3455, metadata !DIExpression()), !dbg !3474
  %tobool16 = icmp eq i8 %4, 0, !dbg !3486
  br i1 %tobool16, label %cleanup, label %if.then17, !dbg !3488

if.then17:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3489
  %tobool18 = icmp eq %struct._IO_FILE* %5, null, !dbg !3489
  br i1 %tobool18, label %if.end22, label %land.lhs.true, !dbg !3492

land.lhs.true:                                    ; preds = %if.then17
  %6 = load i32, i32* @dump_flags, align 4, !dbg !3493
  %and = and i32 %6, 8, !dbg !3494
  %tobool19 = icmp eq i32 %and, 0, !dbg !3494
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !3495

if.then20:                                        ; preds = %land.lhs.true
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3496
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3498
  call void @bitmap_print(%struct._IO_FILE* %7, %struct.bitmap_head_def* %partition.0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3498
  br label %if.end22, !dbg !3499

if.end22:                                         ; preds = %land.lhs.true, %if.then17, %if.then20
  %call23 = call fastcc %struct.bitmap_head_def** @VEC_bitmap_heap_safe_push(%struct.VEC_bitmap_heap** %partitions, %struct.bitmap_head_def* %partition.0) #7, !dbg !3500
  %call24 = call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3501
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call24, metadata !3450, metadata !DIExpression()), !dbg !3461
  br label %cleanup, !dbg !3502

cleanup:                                          ; preds = %if.end, %cond.end8, %if.end22
  %partition.2 = phi %struct.bitmap_head_def* [ %partition.0, %cond.end8 ], [ %call24, %if.end22 ], [ %partition.0, %if.end ], !dbg !3461
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition.2, metadata !3450, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8* %part_has_writes, metadata !3455, metadata !DIExpression(DW_OP_deref)), !dbg !3474
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %part_has_writes) #8, !dbg !3503
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3504
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3448, metadata !DIExpression()), !dbg !3461
  br label %for.cond, !dbg !3505, !llvm.loop !3506

for.cond28:                                       ; preds = %for.cond28.preheader, %for.inc38
  %i.1 = phi i32 [ %inc39, %for.inc38 ], [ 0, %for.cond28.preheader ], !dbg !3508
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3448, metadata !DIExpression()), !dbg !3461
  %8 = load i32, i32* %n_vertices, align 8, !dbg !3509
  %cmp = icmp slt i32 %i.1, %8, !dbg !3510
  br i1 %cmp, label %for.body29, label %for.end40, !dbg !3473

for.body29:                                       ; preds = %for.cond28
  %call30 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %processed, i32 %i.1) #6, !dbg !3511
  %tobool31 = icmp eq i32 %call30, 0, !dbg !3511
  br i1 %tobool31, label %land.lhs.true32, label %for.inc38, !dbg !3513

land.lhs.true32:                                  ; preds = %for.body29
  %call33 = call zeroext i8 @rdg_defs_used_in_other_loops_p(%struct.graph* %rdg, i32 %i.1) #6, !dbg !3514
  %tobool34 = icmp eq i8 %call33, 0, !dbg !3514
  br i1 %tobool34, label %for.inc38, label %if.then35, !dbg !3515

if.then35:                                        ; preds = %land.lhs.true32
  %call36 = call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** %other_stores, i32 %i.1) #7, !dbg !3516
  br label %for.inc38, !dbg !3516

for.inc38:                                        ; preds = %land.lhs.true32, %for.body29, %if.then35
  %inc39 = add nuw nsw i32 %i.1, 1, !dbg !3517
  call void @llvm.dbg.value(metadata i32 %inc39, metadata !3448, metadata !DIExpression()), !dbg !3461
  br label %for.cond28, !dbg !3518, !llvm.loop !3519

for.end40:                                        ; preds = %for.cond28
  %9 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %other_stores, align 8, !dbg !3521
  %tobool41 = icmp eq %struct.VEC_int_heap* %9, null, !dbg !3521
  br i1 %tobool41, label %cond.end45, label %cond.true42, !dbg !3521

cond.true42:                                      ; preds = %for.end40
  %base43 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %9, i64 0, i32 0, !dbg !3521
  br label %cond.end45, !dbg !3521

cond.end45:                                       ; preds = %for.end40, %cond.true42
  %cond46 = phi %struct.VEC_int_base* [ %base43, %cond.true42 ], [ null, %for.end40 ], !dbg !3521
  %call47 = call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %cond46) #7, !dbg !3521
  %cmp48 = icmp eq i32 %call47, 0, !dbg !3522
  br i1 %cmp48, label %if.end53, label %if.then50, !dbg !3523

if.then50:                                        ; preds = %cond.end45
  %10 = bitcast %struct.VEC_rdgc_heap** %comps to i8*, !dbg !3524
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8, !dbg !3524
  %call51 = call fastcc %struct.VEC_rdgc_heap* @VEC_rdgc_heap_alloc(i32 3) #7, !dbg !3525
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_heap* %call51, metadata !3457, metadata !DIExpression()), !dbg !3526
  store %struct.VEC_rdgc_heap* %call51, %struct.VEC_rdgc_heap** %comps, align 8, !dbg !3527
  %11 = bitcast %struct.VEC_int_heap** %foo to i8*, !dbg !3528
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #8, !dbg !3528
  %call52 = call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 3) #7, !dbg !3529
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %call52, metadata !3460, metadata !DIExpression()), !dbg !3526
  store %struct.VEC_int_heap* %call52, %struct.VEC_int_heap** %foo, align 8, !dbg !3530
  %12 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %other_stores, align 8, !dbg !3531
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_heap** %comps, metadata !3457, metadata !DIExpression(DW_OP_deref)), !dbg !3526
  call fastcc void @rdg_build_components(%struct.graph* %rdg, %struct.VEC_int_heap* %12, %struct.VEC_rdgc_heap** nonnull %comps) #7, !dbg !3532
  %13 = load %struct.VEC_rdgc_heap*, %struct.VEC_rdgc_heap** %comps, align 8, !dbg !3533
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_heap* %13, metadata !3457, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %foo, metadata !3460, metadata !DIExpression(DW_OP_deref)), !dbg !3526
  call fastcc void @rdg_build_partitions(%struct.graph* %rdg, %struct.VEC_rdgc_heap* %13, %struct.VEC_int_heap** nonnull %foo, %struct.VEC_bitmap_heap** %partitions, %struct.bitmap_head_def* %processed) #7, !dbg !3534
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %foo, metadata !3460, metadata !DIExpression(DW_OP_deref)), !dbg !3526
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull %foo) #7, !dbg !3535
  %14 = load %struct.VEC_rdgc_heap*, %struct.VEC_rdgc_heap** %comps, align 8, !dbg !3536
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_heap* %14, metadata !3457, metadata !DIExpression()), !dbg !3526
  call fastcc void @free_rdg_components(%struct.VEC_rdgc_heap* %14) #7, !dbg !3537
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #8, !dbg !3538
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #8, !dbg !3538
  br label %if.end53, !dbg !3539

if.end53:                                         ; preds = %cond.end45, %if.then50
  %call54 = call i64 @bitmap_count_bits(%struct.bitmap_head_def* %partition.0.lcssa) #6, !dbg !3540
  %cmp55 = icmp eq i64 %call54, 0, !dbg !3542
  br i1 %cmp55, label %if.else, label %if.then57, !dbg !3543

if.then57:                                        ; preds = %if.end53
  %call58 = call fastcc %struct.bitmap_head_def** @VEC_bitmap_heap_safe_push(%struct.VEC_bitmap_heap** %partitions, %struct.bitmap_head_def* %partition.0.lcssa) #7, !dbg !3544
  br label %if.end59, !dbg !3544

if.else:                                          ; preds = %if.end53
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %partition.0.lcssa) #6, !dbg !3545
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3450, metadata !DIExpression()), !dbg !3461
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then57
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3546
  ret void, !dbg !3546
}

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_bitmap_base_length(%struct.VEC_bitmap_base* %vec_) unnamed_addr #0 !dbg !3547 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_base* %vec_, metadata !3551, metadata !DIExpression()), !dbg !3552
  %tobool = icmp eq %struct.VEC_bitmap_base* %vec_, null, !dbg !3553
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3553

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 0, !dbg !3553
  %0 = load i32, i32* %num, align 8, !dbg !3553
  br label %cond.end, !dbg !3553

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3553
  ret i32 %cond, !dbg !3553
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @partition_contains_all_rw(%struct.graph* %rdg, %struct.VEC_bitmap_heap* %partitions) unnamed_addr #5 !dbg !3554 {
entry:
  %partition = alloca %struct.bitmap_head_def*, align 8
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !3558, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap* %partitions, metadata !3559, metadata !DIExpression()), !dbg !3563
  %0 = bitcast %struct.bitmap_head_def** %partition to i8*, !dbg !3564
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3564
  %call = tail call fastcc i32 @number_of_rw_in_rdg(%struct.graph* %rdg) #7, !dbg !3565
  call void @llvm.dbg.value(metadata i32 %call, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 0, metadata !3560, metadata !DIExpression()), !dbg !3563
  %base = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %partitions, i64 0, i32 0, !dbg !3566
  br label %for.cond, !dbg !3569

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !3570
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3560, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %partition, metadata !3561, metadata !DIExpression(DW_OP_deref)), !dbg !3563
  %call1 = call fastcc i32 @VEC_bitmap_base_iterate(%struct.VEC_bitmap_base* %base, i32 %i.0, %struct.bitmap_head_def** nonnull %partition) #7, !dbg !3571
  %tobool2 = icmp eq i32 %call1, 0, !dbg !3572
  br i1 %tobool2, label %cleanup, label %for.body, !dbg !3572

for.body:                                         ; preds = %for.cond
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %partition, align 8, !dbg !3573
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %1, metadata !3561, metadata !DIExpression()), !dbg !3563
  %call3 = call fastcc i32 @number_of_rw_in_partition(%struct.graph* %rdg, %struct.bitmap_head_def* %1) #7, !dbg !3575
  %cmp = icmp eq i32 %call, %call3, !dbg !3576
  br i1 %cmp, label %cleanup, label %for.inc, !dbg !3577

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3578
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3560, metadata !DIExpression()), !dbg !3563
  br label %for.cond, !dbg !3579, !llvm.loop !3580

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi i8 [ 1, %for.body ], [ 0, %for.cond ], !dbg !3563
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3582
  ret i8 %retval.0, !dbg !3582
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @generate_code_for_partition(%struct.loop* %loop, %struct.bitmap_head_def* %partition, i8 zeroext %copy_p) unnamed_addr #5 !dbg !3583 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3587, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition, metadata !3588, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i8 %copy_p, metadata !3589, metadata !DIExpression()), !dbg !3590
  %call = tail call fastcc zeroext i8 @generate_builtin(%struct.loop* %loop, %struct.bitmap_head_def* %partition, i8 zeroext %copy_p) #7, !dbg !3591
  %tobool = icmp eq i8 %call, 0, !dbg !3591
  br i1 %tobool, label %if.end, label %return, !dbg !3593

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @generate_loops_for_partition(%struct.loop* %loop, %struct.bitmap_head_def* %partition, i8 zeroext %copy_p) #7, !dbg !3594
  br label %return, !dbg !3595

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %call1, %if.end ], [ 1, %entry ], !dbg !3590
  ret i8 %retval.0, !dbg !3596
}

declare dso_local void @rewrite_into_loop_closed_ssa(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local void @update_ssa(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_bitmap_heap_free(%struct.VEC_bitmap_heap** %vec_) unnamed_addr #0 !dbg !3597 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap** %vec_, metadata !3601, metadata !DIExpression()), !dbg !3602
  %0 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** %vec_, align 8, !dbg !3603
  %tobool = icmp eq %struct.VEC_bitmap_heap* %0, null, !dbg !3603
  br i1 %tobool, label %if.end, label %if.then, !dbg !3605

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_bitmap_heap* %0 to i8*, !dbg !3605
  tail call void @free(i8* nonnull %1) #6, !dbg !3603
  br label %if.end, !dbg !3603

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_bitmap_heap* null, %struct.VEC_bitmap_heap** %vec_, align 8, !dbg !3605
  ret void, !dbg !3605
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_rdg_components(%struct.VEC_rdgc_heap* %components) unnamed_addr #5 !dbg !3606 {
entry:
  %x = alloca %struct.rdg_component*, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_heap* %components, metadata !3610, metadata !DIExpression()), !dbg !3613
  %0 = bitcast %struct.rdg_component** %x to i8*, !dbg !3614
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3614
  call void @llvm.dbg.value(metadata i32 0, metadata !3611, metadata !DIExpression()), !dbg !3613
  %base = getelementptr inbounds %struct.VEC_rdgc_heap, %struct.VEC_rdgc_heap* %components, i64 0, i32 0, !dbg !3615
  %1 = bitcast %struct.rdg_component** %x to i8**, !dbg !3618
  br label %for.cond, !dbg !3620

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3621
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3611, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata %struct.rdg_component** %x, metadata !3612, metadata !DIExpression(DW_OP_deref)), !dbg !3613
  %call = call fastcc i32 @VEC_rdgc_base_iterate(%struct.VEC_rdgc_base* %base, i32 %i.0, %struct.rdg_component** nonnull %x) #7, !dbg !3622
  %tobool1 = icmp eq i32 %call, 0, !dbg !3623
  br i1 %tobool1, label %for.end, label %for.body, !dbg !3623

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rdg_component*, %struct.rdg_component** %x, align 8, !dbg !3624
  call void @llvm.dbg.value(metadata %struct.rdg_component* %2, metadata !3612, metadata !DIExpression()), !dbg !3613
  %vertices = getelementptr inbounds %struct.rdg_component, %struct.rdg_component* %2, i64 0, i32 1, !dbg !3624
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull %vertices) #7, !dbg !3624
  %3 = load i8*, i8** %1, align 8, !dbg !3625
  call void @free(i8* %3) #6, !dbg !3626
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3627
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3611, metadata !DIExpression()), !dbg !3613
  br label %for.cond, !dbg !3628, !llvm.loop !3629

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3631
  ret void, !dbg !3631
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local i32 @graphds_dfs(%struct.graph*, i32*, i32, %struct.VEC_int_heap**, i8 zeroext, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @predecessor_has_mem_write(%struct.graph* %rdg, %struct.vertex* %v) unnamed_addr #5 !dbg !3632 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !3636, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata %struct.vertex* %v, metadata !3637, metadata !DIExpression()), !dbg !3639
  %pred = getelementptr inbounds %struct.vertex, %struct.vertex* %v, i64 0, i32 0, !dbg !3640
  %0 = load %struct.graph_edge*, %struct.graph_edge** %pred, align 8, !dbg !3640
  %tobool = icmp eq %struct.graph_edge* %0, null, !dbg !3642
  br i1 %tobool, label %cleanup, label %if.then, !dbg !3643

if.then:                                          ; preds = %entry
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 1, !dbg !3644
  br label %for.cond, !dbg !3648

for.cond:                                         ; preds = %for.inc, %if.then
  %e.0 = phi %struct.graph_edge* [ %0, %if.then ], [ %e.0.pre, %for.inc ], !dbg !3649
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.0, metadata !3638, metadata !DIExpression()), !dbg !3639
  %tobool2 = icmp eq %struct.graph_edge* %e.0, null, !dbg !3650
  br i1 %tobool2, label %cleanup.loopexit, label %for.body, !dbg !3650

for.body:                                         ; preds = %for.cond
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @upstream_mem_writes, align 8, !dbg !3651
  %src = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 0, !dbg !3652
  %2 = load i32, i32* %src, align 8, !dbg !3652
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %1, i32 %2) #6, !dbg !3653
  %tobool3 = icmp eq i32 %call, 0, !dbg !3653
  br i1 %tobool3, label %for.inc, label %land.lhs.true, !dbg !3654

land.lhs.true:                                    ; preds = %for.body
  %3 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3644
  %4 = load i32, i32* %src, align 8, !dbg !3644
  %idxprom = sext i32 %4 to i64, !dbg !3644
  %data = getelementptr inbounds %struct.vertex, %struct.vertex* %3, i64 %idxprom, i32 4, !dbg !3644
  %5 = bitcast i8** %data to %struct.rdg_vertex**, !dbg !3644
  %6 = load %struct.rdg_vertex*, %struct.rdg_vertex** %5, align 8, !dbg !3644
  %has_mem_write = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %6, i64 0, i32 1, !dbg !3644
  %7 = load i8, i8* %has_mem_write, align 8, !dbg !3644
  %tobool5 = icmp eq i8 %7, 0, !dbg !3644
  br i1 %tobool5, label %cleanup.loopexit, label %for.inc, !dbg !3655

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %pred_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 2, !dbg !3656
  %e.0.pre = load %struct.graph_edge*, %struct.graph_edge** %pred_next, align 8, !dbg !3649
  br label %for.cond, !dbg !3657, !llvm.loop !3658

cleanup.loopexit:                                 ; preds = %for.cond, %land.lhs.true
  %retval.0.ph = phi i8 [ 0, %for.cond ], [ 1, %land.lhs.true ]
  br label %cleanup, !dbg !3660

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !3639
  ret i8 %retval.0, !dbg !3660
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.graph_edge* @has_anti_dependence(%struct.vertex* %v) unnamed_addr #5 !dbg !3661 {
entry:
  call void @llvm.dbg.value(metadata %struct.vertex* %v, metadata !3665, metadata !DIExpression()), !dbg !3667
  %succ = getelementptr inbounds %struct.vertex, %struct.vertex* %v, i64 0, i32 1, !dbg !3668
  %0 = load %struct.graph_edge*, %struct.graph_edge** %succ, align 8, !dbg !3668
  %tobool = icmp eq %struct.graph_edge* %0, null, !dbg !3670
  br i1 %tobool, label %cleanup, label %if.then, !dbg !3671

if.then:                                          ; preds = %entry
  br label %for.cond, !dbg !3672

for.cond:                                         ; preds = %for.inc, %if.then
  %e.0 = phi %struct.graph_edge* [ %0, %if.then ], [ %e.0.pre, %for.inc ], !dbg !3674
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.0, metadata !3666, metadata !DIExpression()), !dbg !3667
  %tobool2 = icmp eq %struct.graph_edge* %e.0, null, !dbg !3675
  br i1 %tobool2, label %cleanup.loopexit, label %for.body, !dbg !3675

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 4, !dbg !3676
  %1 = bitcast i8** %data to %struct.rdg_edge**, !dbg !3676
  %2 = load %struct.rdg_edge*, %struct.rdg_edge** %1, align 8, !dbg !3676
  %type = getelementptr inbounds %struct.rdg_edge, %struct.rdg_edge* %2, i64 0, i32 0, !dbg !3676
  %3 = load i32, i32* %type, align 8, !dbg !3676
  %cmp = icmp eq i32 %3, 97, !dbg !3679
  br i1 %cmp, label %cleanup.loopexit, label %for.inc, !dbg !3680

for.inc:                                          ; preds = %for.body
  %succ_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 3, !dbg !3681
  %e.0.pre = load %struct.graph_edge*, %struct.graph_edge** %succ_next, align 8, !dbg !3674
  br label %for.cond, !dbg !3682, !llvm.loop !3683

cleanup.loopexit:                                 ; preds = %for.body, %for.cond
  %retval.0.ph = phi %struct.graph_edge* [ null, %for.cond ], [ %e.0, %for.body ]
  br label %cleanup, !dbg !3685

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi %struct.graph_edge* [ null, %entry ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !3667
  ret %struct.graph_edge* %retval.0, !dbg !3685
}

declare dso_local i32 @graphds_scc(%struct.graph*, %struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.rdg_component** @VEC_rdgc_heap_safe_push(%struct.VEC_rdgc_heap** %vec_, %struct.rdg_component* %obj_) unnamed_addr #0 !dbg !3686 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_heap** %vec_, metadata !3691, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata %struct.rdg_component* %obj_, metadata !3692, metadata !DIExpression()), !dbg !3693
  %call = tail call fastcc i32 @VEC_rdgc_heap_reserve(%struct.VEC_rdgc_heap** %vec_, i32 1) #7, !dbg !3694
  %0 = load %struct.VEC_rdgc_heap*, %struct.VEC_rdgc_heap** %vec_, align 8, !dbg !3694
  %tobool = icmp eq %struct.VEC_rdgc_heap* %0, null, !dbg !3694
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3694

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_rdgc_heap, %struct.VEC_rdgc_heap* %0, i64 0, i32 0, !dbg !3694
  br label %cond.end, !dbg !3694

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_rdgc_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3694
  %call1 = tail call fastcc %struct.rdg_component** @VEC_rdgc_base_quick_push(%struct.VEC_rdgc_base* %cond, %struct.rdg_component* %obj_) #7, !dbg !3694
  ret %struct.rdg_component** %call1, !dbg !3694
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_rdgc_heap_reserve(%struct.VEC_rdgc_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3695 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_heap** %vec_, metadata !3699, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i32 1, metadata !3700, metadata !DIExpression()), !dbg !3702
  %0 = load %struct.VEC_rdgc_heap*, %struct.VEC_rdgc_heap** %vec_, align 8, !dbg !3703
  %tobool = icmp eq %struct.VEC_rdgc_heap* %0, null, !dbg !3703
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3703

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_rdgc_heap, %struct.VEC_rdgc_heap* %0, i64 0, i32 0, !dbg !3703
  br label %cond.end, !dbg !3703

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_rdgc_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3703
  %call = tail call fastcc i32 @VEC_rdgc_base_space(%struct.VEC_rdgc_base* %cond, i32 1) #7, !dbg !3703
  %tobool1 = icmp eq i32 %call, 0, !dbg !3703
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3703
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3701, metadata !DIExpression()), !dbg !3702
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3703

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_rdgc_heap** %vec_ to i8**, !dbg !3704
  %2 = load i8*, i8** %1, align 8, !dbg !3704
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !3704
  store i8* %call3, i8** %1, align 8, !dbg !3704
  br label %if.end, !dbg !3704

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3703
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.rdg_component** @VEC_rdgc_base_quick_push(%struct.VEC_rdgc_base* %vec_, %struct.rdg_component* %obj_) unnamed_addr #0 !dbg !3706 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_base* %vec_, metadata !3711, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata %struct.rdg_component* %obj_, metadata !3712, metadata !DIExpression()), !dbg !3714
  %num1 = getelementptr inbounds %struct.VEC_rdgc_base, %struct.VEC_rdgc_base* %vec_, i64 0, i32 0, !dbg !3715
  %0 = load i32, i32* %num1, align 8, !dbg !3715
  %inc = add i32 %0, 1, !dbg !3715
  store i32 %inc, i32* %num1, align 8, !dbg !3715
  %idxprom = zext i32 %0 to i64, !dbg !3715
  %arrayidx = getelementptr inbounds %struct.VEC_rdgc_base, %struct.VEC_rdgc_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3715
  call void @llvm.dbg.value(metadata %struct.rdg_component** %arrayidx, metadata !3713, metadata !DIExpression()), !dbg !3714
  store %struct.rdg_component* %obj_, %struct.rdg_component** %arrayidx, align 8, !dbg !3715
  ret %struct.rdg_component** %arrayidx, !dbg !3715
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_rdgc_base_space(%struct.VEC_rdgc_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3716 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_base* %vec_, metadata !3720, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i32 1, metadata !3721, metadata !DIExpression()), !dbg !3722
  %tobool = icmp eq %struct.VEC_rdgc_base* %vec_, null, !dbg !3723
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3723

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_rdgc_base, %struct.VEC_rdgc_base* %vec_, i64 0, i32 1, !dbg !3723
  %0 = load i32, i32* %alloc, align 4, !dbg !3723
  %num = getelementptr inbounds %struct.VEC_rdgc_base, %struct.VEC_rdgc_base* %vec_, i64 0, i32 0, !dbg !3723
  %1 = load i32, i32* %num, align 8, !dbg !3723
  %cmp1 = icmp ne i32 %0, %1, !dbg !3723
  %phitmp = zext i1 %cmp1 to i32, !dbg !3723
  br label %cond.end, !dbg !3723

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3723

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3723
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_rdgc_base_iterate(%struct.VEC_rdgc_base* %vec_, i32 %ix_, %struct.rdg_component** %ptr) unnamed_addr #0 !dbg !3724 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rdgc_base* %vec_, metadata !3730, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3731, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata %struct.rdg_component** %ptr, metadata !3732, metadata !DIExpression()), !dbg !3733
  %tobool = icmp eq %struct.VEC_rdgc_base* %vec_, null, !dbg !3734
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3734

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_rdgc_base, %struct.VEC_rdgc_base* %vec_, i64 0, i32 0, !dbg !3734
  %0 = load i32, i32* %num, align 8, !dbg !3734
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3734
  br i1 %cmp, label %if.then, label %if.else, !dbg !3736

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3737
  %arrayidx = getelementptr inbounds %struct.VEC_rdgc_base, %struct.VEC_rdgc_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3737
  %1 = load %struct.rdg_component*, %struct.rdg_component** %arrayidx, align 8, !dbg !3737
  br label %return, !dbg !3737

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3739

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.rdg_component* [ null, %if.else ], [ %1, %if.then ], !dbg !3741
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3741
  store %struct.rdg_component* %storemerge, %struct.rdg_component** %ptr, align 8, !dbg !3741
  ret i32 %retval.0, !dbg !3736
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_index(%struct.VEC_int_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3742 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3746, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i32 0, metadata !3747, metadata !DIExpression()), !dbg !3748
  br label %land.end, !dbg !3749

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 0, !dbg !3749
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3749
  ret i32 %0, !dbg !3749
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.bitmap_head_def* @build_rdg_partition_for_component(%struct.graph* %rdg, %struct.rdg_component* %c, i8* %part_has_writes, %struct.VEC_int_heap** %other_stores) unnamed_addr #5 !dbg !3750 {
entry:
  %v = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !3754, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata %struct.rdg_component* %c, metadata !3755, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i8* %part_has_writes, metadata !3756, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %other_stores, metadata !3757, metadata !DIExpression()), !dbg !3763
  %0 = bitcast i32* %v to i8*, !dbg !3764
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3764
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3765
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3760, metadata !DIExpression()), !dbg !3763
  %call1 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3766
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call1, metadata !3761, metadata !DIExpression()), !dbg !3763
  %call2 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3767
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call2, metadata !3762, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i32 0, metadata !3758, metadata !DIExpression()), !dbg !3763
  %vertices = getelementptr inbounds %struct.rdg_component, %struct.rdg_component* %c, i64 0, i32 1, !dbg !3768
  br label %for.cond, !dbg !3771

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !3772
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3758, metadata !DIExpression()), !dbg !3763
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vertices, align 8, !dbg !3773
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !3773
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3773

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !3773
  br label %cond.end, !dbg !3773

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !3773
  call void @llvm.dbg.value(metadata i32* %v, metadata !3759, metadata !DIExpression(DW_OP_deref)), !dbg !3763
  %call4 = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %i.0, i32* nonnull %v) #7, !dbg !3773
  %tobool5 = icmp eq i32 %call4, 0, !dbg !3774
  br i1 %tobool5, label %for.end, label %for.body, !dbg !3774

for.body:                                         ; preds = %cond.end
  %2 = load i32, i32* %v, align 4, !dbg !3775
  call void @llvm.dbg.value(metadata i32 %2, metadata !3759, metadata !DIExpression()), !dbg !3763
  %call6 = call fastcc zeroext i8 @already_processed_vertex_p(%struct.bitmap_head_def* %call2, i32 %2) #7, !dbg !3777
  %tobool7 = icmp eq i8 %call6, 0, !dbg !3777
  br i1 %tobool7, label %if.then, label %for.inc, !dbg !3778

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %v, align 4, !dbg !3779
  call void @llvm.dbg.value(metadata i32 %3, metadata !3759, metadata !DIExpression()), !dbg !3763
  call fastcc void @rdg_flag_vertex_and_dependent(%struct.graph* %rdg, i32 %3, %struct.bitmap_head_def* %call, %struct.bitmap_head_def* %call1, %struct.bitmap_head_def* %call2, i8* %part_has_writes) #7, !dbg !3780
  br label %for.inc, !dbg !3780

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3781
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3758, metadata !DIExpression()), !dbg !3763
  br label %for.cond, !dbg !3782, !llvm.loop !3783

for.end:                                          ; preds = %cond.end
  call fastcc void @rdg_flag_similar_memory_accesses(%struct.graph* %rdg, %struct.bitmap_head_def* %call, %struct.bitmap_head_def* %call1, %struct.bitmap_head_def* %call2, %struct.VEC_int_heap** %other_stores) #7, !dbg !3785
  call fastcc void @rdg_flag_loop_exits(%struct.graph* %rdg, %struct.bitmap_head_def* %call1, %struct.bitmap_head_def* %call, %struct.bitmap_head_def* %call2, i8* %part_has_writes) #7, !dbg !3786
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call2) #6, !dbg !3787
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3762, metadata !DIExpression()), !dbg !3763
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call1) #6, !dbg !3788
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3761, metadata !DIExpression()), !dbg !3763
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3789
  ret %struct.bitmap_head_def* %call, !dbg !3790
}

declare dso_local zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @bitmap_print(%struct._IO_FILE*, %struct.bitmap_head_def*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.bitmap_head_def** @VEC_bitmap_heap_safe_push(%struct.VEC_bitmap_heap** %vec_, %struct.bitmap_head_def* %obj_) unnamed_addr #0 !dbg !3791 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap** %vec_, metadata !3795, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %obj_, metadata !3796, metadata !DIExpression()), !dbg !3797
  %call = tail call fastcc i32 @VEC_bitmap_heap_reserve(%struct.VEC_bitmap_heap** %vec_, i32 1) #7, !dbg !3798
  %0 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** %vec_, align 8, !dbg !3798
  %tobool = icmp eq %struct.VEC_bitmap_heap* %0, null, !dbg !3798
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3798

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %0, i64 0, i32 0, !dbg !3798
  br label %cond.end, !dbg !3798

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_bitmap_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3798
  %call1 = tail call fastcc %struct.bitmap_head_def** @VEC_bitmap_base_quick_push(%struct.VEC_bitmap_base* %cond, %struct.bitmap_head_def* %obj_) #7, !dbg !3798
  ret %struct.bitmap_head_def** %call1, !dbg !3798
}

declare dso_local zeroext i8 @rdg_defs_used_in_other_loops_p(%struct.graph*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %vec_) unnamed_addr #0 !dbg !3799 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3803, metadata !DIExpression()), !dbg !3804
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !3805
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3805

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3805
  %0 = load i32, i32* %num, align 4, !dbg !3805
  br label %cond.end, !dbg !3805

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3805
  ret i32 %cond, !dbg !3805
}

declare dso_local i64 @bitmap_count_bits(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @already_processed_vertex_p(%struct.bitmap_head_def* %processed, i32 %v) unnamed_addr #0 !dbg !3806 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %processed, metadata !3810, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i32 %v, metadata !3811, metadata !DIExpression()), !dbg !3812
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %processed, i32 %v) #6, !dbg !3813
  %tobool = icmp eq i32 %call, 0, !dbg !3813
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3814

lor.rhs:                                          ; preds = %entry
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @remaining_stmts, align 8, !dbg !3815
  %call1 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %0, i32 %v) #6, !dbg !3816
  %tobool2 = icmp eq i32 %call1, 0, !dbg !3817
  %phitmp = zext i1 %tobool2 to i8, !dbg !3814
  br label %lor.end, !dbg !3814

lor.end:                                          ; preds = %entry, %lor.rhs
  %1 = phi i8 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i8 %1, !dbg !3818
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rdg_flag_vertex_and_dependent(%struct.graph* %rdg, i32 %v, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %processed, i8* %part_has_writes) unnamed_addr #5 !dbg !3819 {
entry:
  %v.addr = alloca i32, align 4
  %nodes = alloca %struct.VEC_int_heap*, align 8
  %x = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !3823, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i32 %v, metadata !3824, metadata !DIExpression()), !dbg !3832
  store i32 %v, i32* %v.addr, align 4
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition, metadata !3825, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %loops, metadata !3826, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %processed, metadata !3827, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i8* %part_has_writes, metadata !3828, metadata !DIExpression()), !dbg !3832
  %0 = bitcast %struct.VEC_int_heap** %nodes to i8*, !dbg !3833
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3833
  %call = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 3) #7, !dbg !3834
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %call, metadata !3830, metadata !DIExpression()), !dbg !3832
  store %struct.VEC_int_heap* %call, %struct.VEC_int_heap** %nodes, align 8, !dbg !3835
  %1 = bitcast i32* %x to i8*, !dbg !3836
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3836
  call void @llvm.dbg.value(metadata i32 %v, metadata !3824, metadata !DIExpression()), !dbg !3832
  %call1 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %processed, i32 %v) #6, !dbg !3837
  call void @llvm.dbg.value(metadata i32 %v, metadata !3824, metadata !DIExpression()), !dbg !3832
  tail call fastcc void @rdg_flag_uses(%struct.graph* %rdg, i32 %v, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %processed, i8* %part_has_writes) #7, !dbg !3838
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @remaining_stmts, align 8, !dbg !3839
  call void @llvm.dbg.value(metadata i32* %v.addr, metadata !3824, metadata !DIExpression(DW_OP_deref)), !dbg !3832
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %nodes, metadata !3830, metadata !DIExpression(DW_OP_deref)), !dbg !3832
  %call2 = call i32 @graphds_dfs(%struct.graph* %rdg, i32* nonnull %v.addr, i32 1, %struct.VEC_int_heap** nonnull %nodes, i8 zeroext 0, %struct.bitmap_head_def* %2) #6, !dbg !3840
  %3 = load i32, i32* %v.addr, align 4, !dbg !3841
  call void @llvm.dbg.value(metadata i32 %3, metadata !3824, metadata !DIExpression()), !dbg !3832
  call fastcc void @rdg_flag_vertex(%struct.graph* %rdg, i32 %3, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, i8* %part_has_writes) #7, !dbg !3842
  call void @llvm.dbg.value(metadata i32 0, metadata !3829, metadata !DIExpression()), !dbg !3832
  br label %for.cond, !dbg !3843

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !3845
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3829, metadata !DIExpression()), !dbg !3832
  %4 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %nodes, align 8, !dbg !3846
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %4, metadata !3830, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap* %4, metadata !3830, metadata !DIExpression()), !dbg !3832
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %4, i64 0, i32 0, !dbg !3846
  call void @llvm.dbg.value(metadata i32* %x, metadata !3831, metadata !DIExpression(DW_OP_deref)), !dbg !3832
  %call3 = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %base, i32 %i.0, i32* nonnull %x) #7, !dbg !3846
  %tobool4 = icmp eq i32 %call3, 0, !dbg !3848
  br i1 %tobool4, label %for.end, label %for.body, !dbg !3848

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %x, align 4, !dbg !3849
  call void @llvm.dbg.value(metadata i32 %5, metadata !3831, metadata !DIExpression()), !dbg !3832
  %call5 = call fastcc zeroext i8 @already_processed_vertex_p(%struct.bitmap_head_def* %processed, i32 %5) #7, !dbg !3851
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3851
  br i1 %tobool6, label %if.then, label %for.inc, !dbg !3852

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %x, align 4, !dbg !3853
  call void @llvm.dbg.value(metadata i32 %6, metadata !3831, metadata !DIExpression()), !dbg !3832
  call fastcc void @rdg_flag_vertex_and_dependent(%struct.graph* %rdg, i32 %6, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %processed, i8* %part_has_writes) #7, !dbg !3854
  br label %for.inc, !dbg !3854

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add i32 %i.0, 1, !dbg !3855
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3829, metadata !DIExpression()), !dbg !3832
  br label %for.cond, !dbg !3856, !llvm.loop !3857

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %nodes, metadata !3830, metadata !DIExpression(DW_OP_deref)), !dbg !3832
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** nonnull %nodes) #7, !dbg !3859
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3860
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3860
  ret void, !dbg !3860
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rdg_flag_similar_memory_accesses(%struct.graph* %rdg, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %processed, %struct.VEC_int_heap** %other_stores) unnamed_addr #5 !dbg !3861 {
entry:
  %foo = alloca i8, align 1
  %i = alloca i32, align 4
  %kk = alloca i32, align 4
  %ii = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !3865, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition, metadata !3866, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %loops, metadata !3867, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %processed, metadata !3868, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %other_stores, metadata !3869, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i8* %foo, metadata !3870, metadata !DIExpression(DW_OP_deref)), !dbg !3885
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %foo) #8, !dbg !3886
  %0 = bitcast i32* %i to i8*, !dbg !3887
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3887
  %1 = bitcast i32* %kk to i8*, !dbg !3888
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3888
  %2 = bitcast %struct.bitmap_iterator* %ii to i8*, !dbg !3889
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #8, !dbg !3889
  call void @llvm.dbg.value(metadata i32* %i, metadata !3871, metadata !DIExpression(DW_OP_deref)), !dbg !3885
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %ii, metadata !3876, metadata !DIExpression(DW_OP_deref)), !dbg !3885
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %ii, %struct.bitmap_head_def* %partition, i32 0, i32* nonnull %i) #7, !dbg !3890
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 1, !dbg !3892
  %n_vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 0, !dbg !3895
  br label %for.cond, !dbg !3890

for.cond:                                         ; preds = %for.inc74, %entry
  call void @llvm.dbg.value(metadata i32* %i, metadata !3871, metadata !DIExpression(DW_OP_deref)), !dbg !3885
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %ii, metadata !3876, metadata !DIExpression(DW_OP_deref)), !dbg !3885
  %call = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %ii, i32* nonnull %i) #7, !dbg !3899
  %tobool = icmp eq i8 %call, 0, !dbg !3890
  br i1 %tobool, label %for.end75, label %for.body, !dbg !3890

for.body:                                         ; preds = %for.cond
  %3 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3900
  %4 = load i32, i32* %i, align 4, !dbg !3900
  call void @llvm.dbg.value(metadata i32 %4, metadata !3871, metadata !DIExpression()), !dbg !3885
  %idxprom = zext i32 %4 to i64, !dbg !3900
  %data = getelementptr inbounds %struct.vertex, %struct.vertex* %3, i64 %idxprom, i32 4, !dbg !3900
  %5 = bitcast i8** %data to %struct.rdg_vertex**, !dbg !3900
  %6 = load %struct.rdg_vertex*, %struct.rdg_vertex** %5, align 8, !dbg !3900
  %has_mem_write = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %6, i64 0, i32 1, !dbg !3900
  %7 = load i8, i8* %has_mem_write, align 8, !dbg !3900
  %tobool1 = icmp eq i8 %7, 0, !dbg !3900
  br i1 %tobool1, label %lor.lhs.false, label %if.then, !dbg !3901

lor.lhs.false:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %4, metadata !3871, metadata !DIExpression()), !dbg !3885
  %has_mem_reads = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %6, i64 0, i32 2, !dbg !3902
  %8 = load i8, i8* %has_mem_reads, align 1, !dbg !3902
  %tobool7 = icmp eq i8 %8, 0, !dbg !3902
  br i1 %tobool7, label %for.inc74, label %if.then, !dbg !3903

if.then:                                          ; preds = %lor.lhs.false, %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !3873, metadata !DIExpression()), !dbg !3885
  br label %for.cond8, !dbg !3904

for.cond8:                                        ; preds = %for.inc57, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc57 ], [ 0, %if.then ], !dbg !3905
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3873, metadata !DIExpression()), !dbg !3885
  %9 = load i32, i32* %n_vertices, align 8, !dbg !3906
  %10 = sext i32 %9 to i64, !dbg !3907
  %cmp = icmp slt i64 %indvars.iv, %10, !dbg !3907
  br i1 %cmp, label %for.body10, label %for.end59, !dbg !3908

for.body10:                                       ; preds = %for.cond8
  %11 = trunc i64 %indvars.iv to i32, !dbg !3909
  %call11 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %processed, i32 %11) #6, !dbg !3909
  %tobool12 = icmp eq i32 %call11, 0, !dbg !3909
  br i1 %tobool12, label %land.lhs.true, label %for.inc57, !dbg !3911

land.lhs.true:                                    ; preds = %for.body10
  %12 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3912
  %data16 = getelementptr inbounds %struct.vertex, %struct.vertex* %12, i64 %indvars.iv, i32 4, !dbg !3912
  %13 = bitcast i8** %data16 to %struct.rdg_vertex**, !dbg !3912
  %14 = load %struct.rdg_vertex*, %struct.rdg_vertex** %13, align 8, !dbg !3912
  %has_mem_write17 = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %14, i64 0, i32 1, !dbg !3912
  %15 = load i8, i8* %has_mem_write17, align 8, !dbg !3912
  %tobool19 = icmp eq i8 %15, 0, !dbg !3912
  br i1 %tobool19, label %lor.lhs.false20, label %land.lhs.true28, !dbg !3913

lor.lhs.false20:                                  ; preds = %land.lhs.true
  %has_mem_reads25 = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %14, i64 0, i32 2, !dbg !3914
  %16 = load i8, i8* %has_mem_reads25, align 1, !dbg !3914
  %tobool27 = icmp eq i8 %16, 0, !dbg !3914
  br i1 %tobool27, label %for.inc57, label %land.lhs.true28, !dbg !3915

land.lhs.true28:                                  ; preds = %lor.lhs.false20, %land.lhs.true
  %17 = load i32, i32* %i, align 4, !dbg !3916
  call void @llvm.dbg.value(metadata i32 %17, metadata !3871, metadata !DIExpression()), !dbg !3885
  %18 = trunc i64 %indvars.iv to i32, !dbg !3917
  %call29 = call fastcc zeroext i8 @rdg_has_similar_memory_accesses(%struct.graph* %rdg, i32 %17, i32 %18) #7, !dbg !3917
  %tobool31 = icmp eq i8 %call29, 0, !dbg !3917
  br i1 %tobool31, label %for.inc57, label %if.then32, !dbg !3918

if.then32:                                        ; preds = %land.lhs.true28
  call void @llvm.dbg.value(metadata i8* %foo, metadata !3870, metadata !DIExpression(DW_OP_deref)), !dbg !3885
  %19 = trunc i64 %indvars.iv to i32, !dbg !3919
  call fastcc void @rdg_flag_vertex_and_dependent(%struct.graph* %rdg, i32 %19, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %processed, i8* nonnull %foo) #7, !dbg !3919
  call void @llvm.dbg.value(metadata i8* %foo, metadata !3870, metadata !DIExpression(DW_OP_deref)), !dbg !3885
  %20 = trunc i64 %indvars.iv to i32, !dbg !3921
  call fastcc void @rdg_flag_all_uses(%struct.graph* %rdg, i32 %20, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %processed, i8* nonnull %foo) #7, !dbg !3921
  %21 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3922
  %data36 = getelementptr inbounds %struct.vertex, %struct.vertex* %21, i64 %indvars.iv, i32 4, !dbg !3922
  %22 = bitcast i8** %data36 to %struct.rdg_vertex**, !dbg !3922
  %23 = load %struct.rdg_vertex*, %struct.rdg_vertex** %22, align 8, !dbg !3922
  %has_mem_write37 = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %23, i64 0, i32 1, !dbg !3922
  %24 = load i8, i8* %has_mem_write37, align 8, !dbg !3922
  %tobool38 = icmp eq i8 %24, 0, !dbg !3922
  br i1 %tobool38, label %for.inc57, label %for.cond40.preheader, !dbg !3924

for.cond40.preheader:                             ; preds = %if.then32
  br label %for.cond40, !dbg !3925

for.cond40:                                       ; preds = %for.cond40.preheader, %for.inc
  %k.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond40.preheader ], !dbg !3927
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !3874, metadata !DIExpression()), !dbg !3885
  %25 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %other_stores, align 8, !dbg !3928
  %tobool41 = icmp eq %struct.VEC_int_heap* %25, null, !dbg !3928
  br i1 %tobool41, label %cond.end, label %cond.true, !dbg !3928

cond.true:                                        ; preds = %for.cond40
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %25, i64 0, i32 0, !dbg !3928
  br label %cond.end, !dbg !3928

cond.end:                                         ; preds = %for.cond40, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %for.cond40 ], !dbg !3928
  call void @llvm.dbg.value(metadata i32* %kk, metadata !3875, metadata !DIExpression(DW_OP_deref)), !dbg !3885
  %call42 = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %k.0, i32* nonnull %kk) #7, !dbg !3928
  %tobool43 = icmp eq i32 %call42, 0, !dbg !3925
  br i1 %tobool43, label %for.inc57.loopexit, label %for.body44, !dbg !3925

for.body44:                                       ; preds = %cond.end
  %26 = load i32, i32* %kk, align 4, !dbg !3930
  call void @llvm.dbg.value(metadata i32 %26, metadata !3875, metadata !DIExpression()), !dbg !3885
  %27 = zext i32 %26 to i64, !dbg !3932
  %cmp45 = icmp eq i64 %indvars.iv, %27, !dbg !3932
  br i1 %cmp45, label %if.then47, label %for.inc, !dbg !3933

if.then47:                                        ; preds = %for.body44
  %k.0.lcssa3 = phi i32 [ %k.0, %for.body44 ], !dbg !3927
  call void @llvm.dbg.value(metadata i32 %k.0.lcssa3, metadata !3874, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i32 %k.0.lcssa3, metadata !3874, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i32 %k.0.lcssa3, metadata !3874, metadata !DIExpression()), !dbg !3885
  %28 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %other_stores, align 8, !dbg !3934
  %tobool48 = icmp eq %struct.VEC_int_heap* %28, null, !dbg !3934
  br i1 %tobool48, label %cond.end52, label %cond.true49, !dbg !3934

cond.true49:                                      ; preds = %if.then47
  %base50 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %28, i64 0, i32 0, !dbg !3934
  br label %cond.end52, !dbg !3934

cond.end52:                                       ; preds = %if.then47, %cond.true49
  %cond53 = phi %struct.VEC_int_base* [ %base50, %cond.true49 ], [ null, %if.then47 ], !dbg !3934
  %call54 = call fastcc i32 @VEC_int_base_unordered_remove(%struct.VEC_int_base* %cond53, i32 %k.0.lcssa3) #7, !dbg !3934
  br label %for.inc57, !dbg !3936

for.inc:                                          ; preds = %for.body44
  %inc = add nuw nsw i32 %k.0, 1, !dbg !3937
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3874, metadata !DIExpression()), !dbg !3885
  br label %for.cond40, !dbg !3938, !llvm.loop !3939

for.inc57.loopexit:                               ; preds = %cond.end
  br label %for.inc57, !dbg !3941

for.inc57:                                        ; preds = %for.inc57.loopexit, %if.then32, %land.lhs.true28, %lor.lhs.false20, %for.body10, %cond.end52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3941
  call void @llvm.dbg.value(metadata i32 undef, metadata !3873, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3885
  br label %for.cond8, !dbg !3942, !llvm.loop !3943

for.end59:                                        ; preds = %for.cond8
  call void @llvm.dbg.value(metadata i32 0, metadata !3872, metadata !DIExpression()), !dbg !3885
  %29 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !3945
  %30 = load i32, i32* %i, align 4, !dbg !3947
  call void @llvm.dbg.value(metadata i32 %30, metadata !3871, metadata !DIExpression()), !dbg !3885
  %idxprom61 = zext i32 %30 to i64, !dbg !3948
  %succ = getelementptr inbounds %struct.vertex, %struct.vertex* %29, i64 %idxprom61, i32 1, !dbg !3949
  br label %for.cond63, !dbg !3950

for.cond63:                                       ; preds = %for.inc66, %for.end59
  %n.0 = phi i32 [ 0, %for.end59 ], [ %inc67, %for.inc66 ], !dbg !3951
  %e.0.in = phi %struct.graph_edge** [ %succ, %for.end59 ], [ %succ_next, %for.inc66 ]
  %e.0 = load %struct.graph_edge*, %struct.graph_edge** %e.0.in, align 8, !dbg !3951
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.0, metadata !3884, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !3872, metadata !DIExpression()), !dbg !3885
  %tobool64 = icmp eq %struct.graph_edge* %e.0, null, !dbg !3952
  br i1 %tobool64, label %for.end68, label %for.inc66, !dbg !3952

for.inc66:                                        ; preds = %for.cond63
  %succ_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 3, !dbg !3953
  %inc67 = add i32 %n.0, 1, !dbg !3955
  call void @llvm.dbg.value(metadata i32 %inc67, metadata !3872, metadata !DIExpression()), !dbg !3885
  br label %for.cond63, !dbg !3956, !llvm.loop !3957

for.end68:                                        ; preds = %for.cond63
  %n.0.lcssa = phi i32 [ %n.0, %for.cond63 ], !dbg !3951
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3872, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3872, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3872, metadata !DIExpression()), !dbg !3885
  %cmp69 = icmp ugt i32 %n.0.lcssa, 1, !dbg !3959
  br i1 %cmp69, label %if.then71, label %for.inc74, !dbg !3961

if.then71:                                        ; preds = %for.end68
  call void @llvm.dbg.value(metadata i32 %30, metadata !3871, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.value(metadata i8* %foo, metadata !3870, metadata !DIExpression(DW_OP_deref)), !dbg !3885
  call fastcc void @rdg_flag_all_uses(%struct.graph* %rdg, i32 %30, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %processed, i8* nonnull %foo) #7, !dbg !3962
  br label %for.inc74, !dbg !3962

for.inc74:                                        ; preds = %lor.lhs.false, %if.then71, %for.end68
  call void @llvm.dbg.value(metadata i32* %i, metadata !3871, metadata !DIExpression(DW_OP_deref)), !dbg !3885
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %ii, metadata !3876, metadata !DIExpression(DW_OP_deref)), !dbg !3885
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %ii, i32* nonnull %i) #7, !dbg !3899
  br label %for.cond, !dbg !3899, !llvm.loop !3963

for.end75:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #8, !dbg !3965
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3965
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3965
  call void @llvm.dbg.value(metadata i8* %foo, metadata !3870, metadata !DIExpression(DW_OP_deref)), !dbg !3885
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %foo) #8, !dbg !3965
  ret void, !dbg !3965
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rdg_flag_loop_exits(%struct.graph* %rdg, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %processed, i8* %part_has_writes) unnamed_addr #5 !dbg !3966 {
entry:
  %i = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  %conds = alloca %struct.VEC_gimple_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !3970, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %loops, metadata !3971, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition, metadata !3972, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %processed, metadata !3973, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i8* %part_has_writes, metadata !3974, metadata !DIExpression()), !dbg !3982
  %0 = bitcast i32* %i to i8*, !dbg !3983
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3983
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3984
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3984
  %2 = bitcast %struct.VEC_gimple_heap** %conds to i8*, !dbg !3985
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3985
  %call = tail call fastcc %struct.VEC_gimple_heap* @VEC_gimple_heap_alloc(i32 3) #7, !dbg !3986
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %call, metadata !3977, metadata !DIExpression()), !dbg !3982
  store %struct.VEC_gimple_heap* %call, %struct.VEC_gimple_heap** %conds, align 8, !dbg !3987
  call void @llvm.dbg.value(metadata i32* %i, metadata !3975, metadata !DIExpression(DW_OP_deref)), !dbg !3982
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3976, metadata !DIExpression(DW_OP_deref)), !dbg !3982
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %loops, i32 0, i32* nonnull %i) #7, !dbg !3988
  br label %for.cond, !dbg !3988

for.cond:                                         ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata i32* %i, metadata !3975, metadata !DIExpression(DW_OP_deref)), !dbg !3982
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3976, metadata !DIExpression(DW_OP_deref)), !dbg !3982
  %call1 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3990
  %tobool = icmp eq i8 %call1, 0, !dbg !3988
  br i1 %tobool, label %while.cond.preheader, label %for.body, !dbg !3988

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !3992

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !3993
  call void @llvm.dbg.value(metadata i32 %3, metadata !3975, metadata !DIExpression()), !dbg !3982
  %call2 = call fastcc %struct.loop* @get_loop(i32 %3) #7, !dbg !3994
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %conds, metadata !3977, metadata !DIExpression(DW_OP_deref)), !dbg !3982
  call fastcc void @collect_condition_stmts(%struct.loop* %call2, %struct.VEC_gimple_heap** nonnull %conds) #7, !dbg !3995
  call void @llvm.dbg.value(metadata i32* %i, metadata !3975, metadata !DIExpression(DW_OP_deref)), !dbg !3982
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3976, metadata !DIExpression(DW_OP_deref)), !dbg !3982
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3990
  br label %for.cond, !dbg !3990, !llvm.loop !3996

while.cond:                                       ; preds = %while.cond.preheader, %for.end28
  %4 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %conds, align 8, !dbg !3998
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %4, metadata !3977, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %4, metadata !3977, metadata !DIExpression()), !dbg !3982
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %4, i64 0, i32 0, !dbg !3998
  %call4 = call fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %base) #7, !dbg !3998
  %cmp = icmp eq i32 %call4, 0, !dbg !3998
  br i1 %cmp, label %while.end, label %while.body, !dbg !3992

while.body:                                       ; preds = %while.cond
  %5 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %conds, align 8, !dbg !3999
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %5, metadata !3977, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %5, metadata !3977, metadata !DIExpression()), !dbg !3982
  %base8 = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %5, i64 0, i32 0, !dbg !3999
  %call12 = call fastcc %union.gimple_statement_d* @VEC_gimple_base_pop(%struct.VEC_gimple_base* %base8) #7, !dbg !3999
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call12, metadata !3978, metadata !DIExpression()), !dbg !4000
  %call13 = call i32 @rdg_vertex_for_stmt(%struct.graph* %rdg, %union.gimple_statement_d* %call12) #6, !dbg !4001
  call void @llvm.dbg.value(metadata i32 %call13, metadata !3980, metadata !DIExpression()), !dbg !4000
  %call14 = call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !4002
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call14, metadata !3981, metadata !DIExpression()), !dbg !4000
  %call15 = call fastcc zeroext i8 @already_processed_vertex_p(%struct.bitmap_head_def* %processed, i32 %call13) #7, !dbg !4003
  %tobool16 = icmp eq i8 %call15, 0, !dbg !4003
  br i1 %tobool16, label %if.then, label %if.end, !dbg !4005

if.then:                                          ; preds = %while.body
  call fastcc void @rdg_flag_vertex_and_dependent(%struct.graph* %rdg, i32 %call13, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %call14, %struct.bitmap_head_def* %processed, i8* %part_has_writes) #7, !dbg !4006
  br label %if.end, !dbg !4006

if.end:                                           ; preds = %while.body, %if.then
  call void @llvm.dbg.value(metadata i32* %i, metadata !3975, metadata !DIExpression(DW_OP_deref)), !dbg !3982
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3976, metadata !DIExpression(DW_OP_deref)), !dbg !3982
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %call14, i32 0, i32* nonnull %i) #7, !dbg !4007
  br label %for.cond17, !dbg !4007

for.cond17:                                       ; preds = %for.inc27, %if.end
  call void @llvm.dbg.value(metadata i32* %i, metadata !3975, metadata !DIExpression(DW_OP_deref)), !dbg !3982
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3976, metadata !DIExpression(DW_OP_deref)), !dbg !3982
  %call18 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !4009
  %tobool19 = icmp eq i8 %call18, 0, !dbg !4007
  br i1 %tobool19, label %for.end28, label %for.body20, !dbg !4007

for.body20:                                       ; preds = %for.cond17
  %6 = load i32, i32* %i, align 4, !dbg !4011
  call void @llvm.dbg.value(metadata i32 %6, metadata !3975, metadata !DIExpression()), !dbg !3982
  %call21 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %loops, i32 %6) #6, !dbg !4013
  %tobool22 = icmp eq i32 %call21, 0, !dbg !4013
  br i1 %tobool22, label %if.then23, label %for.inc27, !dbg !4014

if.then23:                                        ; preds = %for.body20
  %7 = load i32, i32* %i, align 4, !dbg !4015
  call void @llvm.dbg.value(metadata i32 %7, metadata !3975, metadata !DIExpression()), !dbg !3982
  %call24 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %loops, i32 %7) #6, !dbg !4017
  %8 = load i32, i32* %i, align 4, !dbg !4018
  call void @llvm.dbg.value(metadata i32 %8, metadata !3975, metadata !DIExpression()), !dbg !3982
  %call25 = call fastcc %struct.loop* @get_loop(i32 %8) #7, !dbg !4019
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %conds, metadata !3977, metadata !DIExpression(DW_OP_deref)), !dbg !3982
  call fastcc void @collect_condition_stmts(%struct.loop* %call25, %struct.VEC_gimple_heap** nonnull %conds) #7, !dbg !4020
  br label %for.inc27, !dbg !4021

for.inc27:                                        ; preds = %for.body20, %if.then23
  call void @llvm.dbg.value(metadata i32* %i, metadata !3975, metadata !DIExpression(DW_OP_deref)), !dbg !3982
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3976, metadata !DIExpression(DW_OP_deref)), !dbg !3982
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !4009
  br label %for.cond17, !dbg !4009, !llvm.loop !4022

for.end28:                                        ; preds = %for.cond17
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call14) #6, !dbg !4024
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3981, metadata !DIExpression()), !dbg !4000
  br label %while.cond, !dbg !3992, !llvm.loop !4025

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !4027
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4027
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4027
  ret void, !dbg !4027
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rdg_flag_uses(%struct.graph* %rdg, i32 %u, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %processed, i8* %part_has_writes) unnamed_addr #5 !dbg !4028 {
entry:
  %iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !4030, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i32 %u, metadata !4031, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition, metadata !4032, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %loops, metadata !4033, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %processed, metadata !4034, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.value(metadata i8* %part_has_writes, metadata !4035, metadata !DIExpression()), !dbg !4070
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 1, !dbg !4071
  %0 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !4071
  %idxprom = sext i32 %u to i64, !dbg !4072
  %arrayidx = getelementptr inbounds %struct.vertex, %struct.vertex* %0, i64 %idxprom, !dbg !4072
  call void @llvm.dbg.value(metadata %struct.vertex* %arrayidx, metadata !4037, metadata !DIExpression()), !dbg !4070
  %data = getelementptr inbounds %struct.vertex, %struct.vertex* %0, i64 %idxprom, i32 4, !dbg !4073
  %1 = bitcast i8** %data to %struct.rdg_vertex**, !dbg !4073
  %2 = load %struct.rdg_vertex*, %struct.rdg_vertex** %1, align 8, !dbg !4073
  %stmt1 = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %2, i64 0, i32 0, !dbg !4073
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt1, align 8, !dbg !4073
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %3, metadata !4038, metadata !DIExpression()), !dbg !4070
  %call = tail call fastcc %struct.graph_edge* @has_anti_dependence(%struct.vertex* %arrayidx) #7, !dbg !4074
  call void @llvm.dbg.value(metadata %struct.graph_edge* %call, metadata !4039, metadata !DIExpression()), !dbg !4070
  %tobool = icmp eq %struct.graph_edge* %call, null, !dbg !4075
  br i1 %tobool, label %if.end5, label %if.then, !dbg !4076

if.then:                                          ; preds = %entry
  %dest = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %call, i64 0, i32 1, !dbg !4077
  %4 = load i32, i32* %dest, align 4, !dbg !4077
  call void @llvm.dbg.value(metadata i32 %4, metadata !4040, metadata !DIExpression()), !dbg !4078
  %call2 = tail call fastcc zeroext i8 @already_processed_vertex_p(%struct.bitmap_head_def* %processed, i32 %4) #7, !dbg !4079
  %tobool3 = icmp eq i8 %call2, 0, !dbg !4079
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4081

if.then4:                                         ; preds = %if.then
  tail call fastcc void @rdg_flag_vertex_and_dependent(%struct.graph* %rdg, i32 %4, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %processed, i8* %part_has_writes) #7, !dbg !4082
  br label %if.end5, !dbg !4082

if.end5:                                          ; preds = %if.then, %entry, %if.then4
  %call6 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %3) #7, !dbg !4083
  %cmp = icmp eq i32 %call6, 16, !dbg !4084
  br i1 %cmp, label %if.end24, label %if.then7, !dbg !4085

if.then7:                                         ; preds = %if.end5
  %call8 = tail call fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %3) #7, !dbg !4086
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call8, metadata !4036, metadata !DIExpression()), !dbg !4070
  %cmp9 = icmp eq %struct.ssa_use_operand_d* %call8, null, !dbg !4087
  br i1 %cmp9, label %if.end24, label %if.then10, !dbg !4088

if.then10:                                        ; preds = %if.then7
  %call11 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %call8) #7, !dbg !4089
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !4043, metadata !DIExpression()), !dbg !4090
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %call11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4091
  %bf.load = load i64, i64* %5, align 8, !dbg !4091
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4092
  %cmp12 = icmp eq i64 %bf.cast1, 141, !dbg !4092
  br i1 %cmp12, label %if.then13, label %if.end24, !dbg !4093

if.then13:                                        ; preds = %if.then10
  %def_stmt14 = getelementptr inbounds %union.tree_node, %union.tree_node* %call11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4094
  %6 = bitcast %union.tree_node** %def_stmt14 to %union.gimple_statement_d**, !dbg !4094
  %7 = load %union.gimple_statement_d*, %union.gimple_statement_d** %6, align 8, !dbg !4094
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %7, metadata !4048, metadata !DIExpression()), !dbg !4095
  %call16 = tail call i32 @rdg_vertex_for_stmt(%struct.graph* %rdg, %union.gimple_statement_d* %7) #6, !dbg !4096
  call void @llvm.dbg.value(metadata i32 %call16, metadata !4051, metadata !DIExpression()), !dbg !4095
  %cmp17 = icmp sgt i32 %call16, -1, !dbg !4097
  br i1 %cmp17, label %land.lhs.true, label %if.end24, !dbg !4099

land.lhs.true:                                    ; preds = %if.then13
  %call18 = tail call fastcc zeroext i8 @already_processed_vertex_p(%struct.bitmap_head_def* %processed, i32 %call16) #7, !dbg !4100
  %tobool19 = icmp eq i8 %call18, 0, !dbg !4100
  br i1 %tobool19, label %if.then20, label %if.end24, !dbg !4101

if.then20:                                        ; preds = %land.lhs.true
  tail call fastcc void @rdg_flag_vertex_and_dependent(%struct.graph* %rdg, i32 %call16, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %processed, i8* %part_has_writes) #7, !dbg !4102
  br label %if.end24, !dbg !4102

if.end24:                                         ; preds = %land.lhs.true, %if.then7, %if.end5, %if.then13, %if.then20, %if.then10
  %call25 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %3) #7, !dbg !4103
  %tobool26 = icmp eq i8 %call25, 0, !dbg !4103
  br i1 %tobool26, label %if.end49, label %land.lhs.true27, !dbg !4104

land.lhs.true27:                                  ; preds = %if.end24
  %call28 = tail call fastcc zeroext i8 @has_upstream_mem_writes(i32 %u) #7, !dbg !4105
  %tobool30 = icmp eq i8 %call28, 0, !dbg !4105
  br i1 %tobool30, label %if.end49, label %if.then31, !dbg !4106

if.then31:                                        ; preds = %land.lhs.true27
  %call32 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %3) #7, !dbg !4107
  call void @llvm.dbg.value(metadata %union.tree_node* %call32, metadata !4052, metadata !DIExpression()), !dbg !4108
  %call33 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call32) #6, !dbg !4109
  %tobool34 = icmp eq i8 %call33, 0, !dbg !4109
  br i1 %tobool34, label %if.end49, label %if.then35, !dbg !4110

if.then35:                                        ; preds = %if.then31
  %8 = bitcast %struct.immediate_use_iterator_d* %iter to i8*, !dbg !4111
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %8) #8, !dbg !4111
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !4058, metadata !DIExpression(DW_OP_deref)), !dbg !4112
  %call37 = call fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %iter, %union.tree_node* %call32) #7, !dbg !4113
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call37, metadata !4055, metadata !DIExpression()), !dbg !4112
  br label %for.cond, !dbg !4113

for.cond:                                         ; preds = %for.inc, %if.then35
  %use_p36.0 = phi %struct.ssa_use_operand_d* [ %call37, %if.then35 ], [ %call47, %for.inc ], !dbg !4114
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p36.0, metadata !4055, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !4058, metadata !DIExpression(DW_OP_deref)), !dbg !4112
  %call38 = call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !4115
  %tobool39 = icmp eq i8 %call38, 0, !dbg !4115
  br i1 %tobool39, label %for.body, label %for.end, !dbg !4113

for.body:                                         ; preds = %for.cond
  %stmt41 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use_p36.0, i64 0, i32 2, i32 0, !dbg !4116
  %9 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt41, align 8, !dbg !4116
  %call42 = call i32 @rdg_vertex_for_stmt(%struct.graph* %rdg, %union.gimple_statement_d* %9) #6, !dbg !4117
  call void @llvm.dbg.value(metadata i32 %call42, metadata !4066, metadata !DIExpression()), !dbg !4118
  %call43 = call fastcc zeroext i8 @already_processed_vertex_p(%struct.bitmap_head_def* %processed, i32 %call42) #7, !dbg !4119
  %tobool44 = icmp eq i8 %call43, 0, !dbg !4119
  br i1 %tobool44, label %if.then45, label %for.inc, !dbg !4121

if.then45:                                        ; preds = %for.body
  call fastcc void @rdg_flag_vertex_and_dependent(%struct.graph* %rdg, i32 %call42, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %processed, i8* %part_has_writes) #7, !dbg !4122
  br label %for.inc, !dbg !4122

for.inc:                                          ; preds = %for.body, %if.then45
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !4058, metadata !DIExpression(DW_OP_deref)), !dbg !4112
  %call47 = call fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !4115
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call47, metadata !4055, metadata !DIExpression()), !dbg !4112
  br label %for.cond, !dbg !4115, !llvm.loop !4123

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %8) #8, !dbg !4125
  br label %if.end49, !dbg !4126

if.end49:                                         ; preds = %if.then31, %land.lhs.true27, %if.end24, %for.end
  ret void, !dbg !4127
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rdg_flag_vertex(%struct.graph* %rdg, i32 %v, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, i8* %part_has_writes) unnamed_addr #5 !dbg !4128 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !4132, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 %v, metadata !4133, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition, metadata !4134, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %loops, metadata !4135, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i8* %part_has_writes, metadata !4136, metadata !DIExpression()), !dbg !4138
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %partition, i32 %v) #6, !dbg !4139
  %tobool = icmp eq i32 %call, 0, !dbg !4139
  br i1 %tobool, label %if.end, label %cleanup.cont, !dbg !4141

if.end:                                           ; preds = %entry
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 1, !dbg !4142
  %0 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !4142
  %idxprom = sext i32 %v to i64, !dbg !4142
  %data = getelementptr inbounds %struct.vertex, %struct.vertex* %0, i64 %idxprom, i32 4, !dbg !4142
  %1 = bitcast i8** %data to %struct.rdg_vertex**, !dbg !4142
  %2 = load %struct.rdg_vertex*, %struct.rdg_vertex** %1, align 8, !dbg !4142
  %stmt = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %2, i64 0, i32 0, !dbg !4142
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4142
  %call1 = tail call fastcc %struct.loop* @loop_containing_stmt(%union.gimple_statement_d* %3) #7, !dbg !4143
  call void @llvm.dbg.value(metadata %struct.loop* %call1, metadata !4137, metadata !DIExpression()), !dbg !4138
  %num = getelementptr inbounds %struct.loop, %struct.loop* %call1, i64 0, i32 0, !dbg !4144
  %4 = load i32, i32* %num, align 8, !dbg !4144
  %call2 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %loops, i32 %4) #6, !dbg !4145
  %call3 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %partition, i32 %v) #6, !dbg !4146
  %call4 = tail call fastcc zeroext i8 @rdg_cannot_recompute_vertex_p(%struct.graph* %rdg, i32 %v) #7, !dbg !4147
  %tobool5 = icmp eq i8 %call4, 0, !dbg !4147
  br i1 %tobool5, label %cleanup.cont, label %if.then6, !dbg !4149

if.then6:                                         ; preds = %if.end
  store i8 1, i8* %part_has_writes, align 1, !dbg !4150
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @remaining_stmts, align 8, !dbg !4152
  %call7 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %5, i32 %v) #6, !dbg !4153
  br label %cleanup.cont, !dbg !4154

cleanup.cont:                                     ; preds = %if.end, %entry, %if.then6
  ret void, !dbg !4155
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4156 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4161, metadata !DIExpression()), !dbg !4162
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !4163
  %bf.load = load i32, i32* %0, align 8, !dbg !4163
  %bf.clear = and i32 %bf.load, 255, !dbg !4163
  ret i32 %bf.clear, !dbg !4164
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4165 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4169, metadata !DIExpression()), !dbg !4171
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !4172
  %tobool = icmp eq i8 %call, 0, !dbg !4172
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4174

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !4175
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !4175
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !4175
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %1, metadata !4170, metadata !DIExpression()), !dbg !4171
  %tobool1 = icmp eq %struct.use_optype_d* %1, null, !dbg !4176
  br i1 %tobool1, label %cleanup, label %land.lhs.true, !dbg !4178

land.lhs.true:                                    ; preds = %if.end
  %use = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %1, i64 0, i32 1, i32 3, !dbg !4179
  %2 = load %union.tree_node**, %union.tree_node*** %use, align 8, !dbg !4179
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !4180
  %3 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !4180
  %cmp = icmp eq %union.tree_node** %2, %3, !dbg !4181
  %use_ptr3 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %1, i64 0, i32 1, !dbg !4182
  %spec.select = select i1 %cmp, %struct.ssa_use_operand_d* %use_ptr3, %struct.ssa_use_operand_d* null, !dbg !4183
  ret %struct.ssa_use_operand_d* %spec.select, !dbg !4183

cleanup:                                          ; preds = %if.end, %entry
  ret %struct.ssa_use_operand_d* null, !dbg !4184
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !4185 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !4190, metadata !DIExpression()), !dbg !4191
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !4192
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !4192
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4193
  ret %union.tree_node* %1, !dbg !4194
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4195 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4199, metadata !DIExpression()), !dbg !4200
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4201
  %cmp = icmp eq i32 %call, 6, !dbg !4202
  %conv1 = zext i1 %cmp to i8, !dbg !4201
  ret i8 %conv1, !dbg !4203
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @has_upstream_mem_writes(i32 %u) unnamed_addr #5 !dbg !4204 {
entry:
  call void @llvm.dbg.value(metadata i32 %u, metadata !4208, metadata !DIExpression()), !dbg !4209
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @upstream_mem_writes, align 8, !dbg !4210
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %0, i32 %u) #6, !dbg !4211
  %conv = trunc i32 %call to i8, !dbg !4211
  ret i8 %conv, !dbg !4212
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4213 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4217, metadata !DIExpression()), !dbg !4218
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !4219
  ret %union.tree_node* %call, !dbg !4220
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !4221 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4226, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4227, metadata !DIExpression()), !dbg !4228
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4229
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !4230
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !4231
  store i40* %imm_uses, i40** %0, align 8, !dbg !4231
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !4232
  %1 = bitcast i40* %next to i64*, !dbg !4232
  %2 = load i64, i64* %1, align 8, !dbg !4232
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !4233
  store i64 %2, i64* %3, align 8, !dbg !4233
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !4234
  %tobool = icmp eq i8 %call, 0, !dbg !4234
  br i1 %tobool, label %if.end, label %return, !dbg !4236

if.end:                                           ; preds = %entry
  %imm_use2 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4237
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use2, align 8, !dbg !4237
  br label %return, !dbg !4238

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !4228
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4239
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4240 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4246, metadata !DIExpression()), !dbg !4247
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4248
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4248
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !4249
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !4249
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !4250
  %conv1 = zext i1 %cmp to i8, !dbg !4251
  ret i8 %conv1, !dbg !4252
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4253 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4257, metadata !DIExpression()), !dbg !4259
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4260
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4260
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !4258, metadata !DIExpression()), !dbg !4259
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !4261
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4261
  %2 = load i64, i64* %1, align 8, !dbg !4261
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !4262
  store i64 %2, i64* %3, align 8, !dbg !4262
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !4263
  %tobool = icmp eq i8 %call, 0, !dbg !4263
  br i1 %tobool, label %if.end, label %cleanup, !dbg !4265

if.end:                                           ; preds = %entry
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4266
  br label %cleanup, !dbg !4267

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !4259
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4268
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4269 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4271, metadata !DIExpression()), !dbg !4272
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4273
  %cmp = icmp ugt i32 %call, 5, !dbg !4274
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4275

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4276
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4277
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4278
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4279 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4283, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i32 %i, metadata !4284, metadata !DIExpression()), !dbg !4285
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !4286
  %tobool = icmp eq i8 %call, 0, !dbg !4286
  br i1 %tobool, label %return, label %if.then, !dbg !4288

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !4289
  %idxprom = zext i32 %i to i64, !dbg !4289
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !4289
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4289
  br label %return, !dbg !4291

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !4292
  ret %union.tree_node* %retval.0, !dbg !4293
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4294 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4296, metadata !DIExpression()), !dbg !4297
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4298
  %cmp = icmp eq i32 %call, 0, !dbg !4299
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !4300

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4301
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4302
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4303
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4304 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4308, metadata !DIExpression()), !dbg !4310
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !4311
  %idxprom = zext i32 %call to i64, !dbg !4312
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !4312
  %0 = load i64, i64* %arrayidx, align 8, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %0, metadata !4309, metadata !DIExpression()), !dbg !4310
  %cmp = icmp eq i64 %0, 0, !dbg !4313
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4313

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !4313
  br label %cond.end, !dbg !4313

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !4314
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !4315
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !4316
  ret %union.tree_node** %2, !dbg !4317
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4318 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4322, metadata !DIExpression()), !dbg !4323
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4324
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !4325
  ret i32 %call1, !dbg !4326
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !4327 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4331, metadata !DIExpression()), !dbg !4332
  %idxprom = zext i32 %code to i64, !dbg !4333
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !4333
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4333
  ret i32 %0, !dbg !4334
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_containing_stmt(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4335 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4339, metadata !DIExpression()), !dbg !4341
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #7, !dbg !4342
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4340, metadata !DIExpression()), !dbg !4341
  %tobool = icmp eq %struct.basic_block_def* %call, null, !dbg !4343
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4345

if.end:                                           ; preds = %entry
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 3, !dbg !4346
  %0 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !4346
  br label %cleanup, !dbg !4347

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.loop* [ %0, %if.end ], [ null, %entry ], !dbg !4341
  ret %struct.loop* %retval.0, !dbg !4348
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @rdg_cannot_recompute_vertex_p(%struct.graph* %rdg, i32 %v) unnamed_addr #5 !dbg !4349 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !4353, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i32 %v, metadata !4354, metadata !DIExpression()), !dbg !4355
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 1, !dbg !4356
  %0 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !4356
  %idxprom = sext i32 %v to i64, !dbg !4356
  %data = getelementptr inbounds %struct.vertex, %struct.vertex* %0, i64 %idxprom, i32 4, !dbg !4356
  %1 = bitcast i8** %data to %struct.rdg_vertex**, !dbg !4356
  %2 = load %struct.rdg_vertex*, %struct.rdg_vertex** %1, align 8, !dbg !4356
  %has_mem_write = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %2, i64 0, i32 1, !dbg !4356
  %3 = load i8, i8* %has_mem_write, align 8, !dbg !4356
  %tobool = icmp ne i8 %3, 0, !dbg !4356
  %. = zext i1 %tobool to i8, !dbg !4355
  ret i8 %., !dbg !4358
}

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4359 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4363, metadata !DIExpression()), !dbg !4364
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !4365
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4365
  ret %struct.basic_block_def* %0, !dbg !4366
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !4367 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4376, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !4377, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i32 0, metadata !4378, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4379, metadata !DIExpression()), !dbg !4380
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !4381
  %1 = load i64, i64* %0, align 8, !dbg !4381
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4382
  store i64 %1, i64* %2, align 8, !dbg !4382
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !4383
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !4384
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4385
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !4388
  br label %while.body, !dbg !4388

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !4389
  br i1 %tobool, label %if.then, label %if.end, !dbg !4390

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !4391
  br label %while.end, !dbg !4393

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !4394

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !4388, !llvm.loop !4395

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !4397

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !4397
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !4399
  %7 = load i32, i32* %indx9, align 8, !dbg !4399
  %cmp11 = icmp eq i32 %7, 0, !dbg !4400
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !4401

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !4402
  %8 = load i32, i32* %indx14, align 8, !dbg !4402
  %mul = shl i32 %8, 7, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4378, metadata !DIExpression()), !dbg !4380
  br label %if.end15, !dbg !4404

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !4378, metadata !DIExpression()), !dbg !4380
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4405
  store i32 0, i32* %word_no, align 8, !dbg !4406
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !4407
  %9 = load i64, i64* %arrayidx, align 8, !dbg !4407
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4408
  store i64 %9, i64* %bits21, align 8, !dbg !4409
  %tobool23 = icmp eq i64 %9, 0, !dbg !4410
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !4410
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !4411
  call void @llvm.dbg.value(metadata i32 %add, metadata !4378, metadata !DIExpression()), !dbg !4380
  store i32 %add, i32* %bit_no, align 4, !dbg !4412
  ret void, !dbg !4413
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4414 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4418, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4419, metadata !DIExpression()), !dbg !4423
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4424
  %0 = load i64, i64* %bits, align 8, !dbg !4424
  %tobool = icmp eq i64 %0, 0, !dbg !4425
  br i1 %tobool, label %if.end, label %next_bit, !dbg !4426

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !4427
  br label %next_bit, !dbg !4430

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !4420), !dbg !4431
  br label %while.cond, !dbg !4430

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !4432
  %and = and i64 %2, 1, !dbg !4433
  %tobool2 = icmp eq i64 %and, 0, !dbg !4434
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !4430

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !4435
  store i64 %shr, i64* %bits, align 8, !dbg !4435
  %3 = load i32, i32* %bit_no, align 4, !dbg !4437
  %add = add i32 %3, 1, !dbg !4437
  store i32 %add, i32* %bit_no, align 4, !dbg !4437
  %.pre = load i64, i64* %bits, align 8, !dbg !4432
  br label %while.cond, !dbg !4430, !llvm.loop !4438

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !4440
  %sub = add i32 %4, 63, !dbg !4441
  %div = and i32 %sub, -64, !dbg !4442
  store i32 %div, i32* %bit_no, align 4, !dbg !4443
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4444
  %5 = load i32, i32* %word_no, align 8, !dbg !4445
  %inc = add i32 %5, 1, !dbg !4445
  store i32 %inc, i32* %word_no, align 8, !dbg !4445
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4446
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4446
  br label %while.body6, !dbg !4447

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !4448

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !4449
  %cmp = icmp eq i32 %8, 2, !dbg !4450
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !4446
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !4448

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !4427
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !4427
  %10 = load i64, i64* %arrayidx, align 8, !dbg !4427
  store i64 %10, i64* %bits, align 8, !dbg !4451
  %tobool14 = icmp eq i64 %10, 0, !dbg !4452
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !4454

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !4455
  %add17 = add i32 %11, 64, !dbg !4455
  store i32 %add17, i32* %bit_no, align 4, !dbg !4455
  %12 = load i32, i32* %word_no, align 8, !dbg !4456
  %inc19 = add i32 %12, 1, !dbg !4456
  store i32 %inc19, i32* %word_no, align 8, !dbg !4456
  br label %while.cond7, !dbg !4448, !llvm.loop !4457

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !4446
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !4459
  %14 = load i64, i64* %13, align 8, !dbg !4459
  store i64 %14, i64* %6, align 8, !dbg !4460
  %tobool24 = icmp eq i64 %14, 0, !dbg !4461
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !4463

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !4463
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !4464
  %16 = load i32, i32* %indx, align 8, !dbg !4464
  %mul28 = shl i32 %16, 7, !dbg !4465
  store i32 %mul28, i32* %bit_no, align 4, !dbg !4466
  store i32 0, i32* %word_no, align 8, !dbg !4467
  br label %while.body6, !dbg !4447, !llvm.loop !4468

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !4470

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !4470

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !4423
  ret i8 %retval.0, !dbg !4470
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @rdg_has_similar_memory_accesses(%struct.graph* %rdg, i32 %v1, i32 %v2) unnamed_addr #0 !dbg !4471 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !4475, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata i32 %v1, metadata !4476, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata i32 %v2, metadata !4477, metadata !DIExpression()), !dbg !4478
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 1, !dbg !4479
  %0 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !4479
  %idxprom = sext i32 %v1 to i64, !dbg !4479
  %data = getelementptr inbounds %struct.vertex, %struct.vertex* %0, i64 %idxprom, i32 4, !dbg !4479
  %1 = bitcast i8** %data to %struct.rdg_vertex**, !dbg !4479
  %2 = load %struct.rdg_vertex*, %struct.rdg_vertex** %1, align 8, !dbg !4479
  %stmt = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %2, i64 0, i32 0, !dbg !4479
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4479
  %idxprom2 = sext i32 %v2 to i64, !dbg !4480
  %data4 = getelementptr inbounds %struct.vertex, %struct.vertex* %0, i64 %idxprom2, i32 4, !dbg !4480
  %4 = bitcast i8** %data4 to %struct.rdg_vertex**, !dbg !4480
  %5 = load %struct.rdg_vertex*, %struct.rdg_vertex** %4, align 8, !dbg !4480
  %stmt5 = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %5, i64 0, i32 0, !dbg !4480
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt5, align 8, !dbg !4480
  %call = tail call zeroext i8 @have_similar_memory_accesses(%union.gimple_statement_d* %3, %union.gimple_statement_d* %6) #6, !dbg !4481
  ret i8 %call, !dbg !4482
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rdg_flag_all_uses(%struct.graph* %rdg, i32 %u, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %processed, i8* %part_has_writes) unnamed_addr #5 !dbg !4483 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !4485, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 %u, metadata !4486, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition, metadata !4487, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %loops, metadata !4488, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %processed, metadata !4489, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i8* %part_has_writes, metadata !4490, metadata !DIExpression()), !dbg !4492
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 1, !dbg !4493
  %0 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !4493
  %idxprom = sext i32 %u to i64, !dbg !4495
  %succ = getelementptr inbounds %struct.vertex, %struct.vertex* %0, i64 %idxprom, i32 1, !dbg !4496
  br label %for.cond, !dbg !4497

for.cond:                                         ; preds = %for.inc, %entry
  %e.0.in = phi %struct.graph_edge** [ %succ, %entry ], [ %succ_next, %for.inc ]
  %e.0 = load %struct.graph_edge*, %struct.graph_edge** %e.0.in, align 8, !dbg !4498
  call void @llvm.dbg.value(metadata %struct.graph_edge* %e.0, metadata !4491, metadata !DIExpression()), !dbg !4492
  %tobool = icmp eq %struct.graph_edge* %e.0, null, !dbg !4499
  br i1 %tobool, label %for.end, label %for.body, !dbg !4499

for.body:                                         ; preds = %for.cond
  %dest = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 1, !dbg !4500
  %1 = load i32, i32* %dest, align 4, !dbg !4500
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %processed, i32 %1) #6, !dbg !4503
  %tobool1 = icmp eq i32 %call, 0, !dbg !4503
  br i1 %tobool1, label %if.then, label %for.inc, !dbg !4504

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %dest, align 4, !dbg !4505
  tail call fastcc void @rdg_flag_vertex_and_dependent(%struct.graph* %rdg, i32 %2, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %processed, i8* %part_has_writes) #7, !dbg !4507
  %3 = load i32, i32* %dest, align 4, !dbg !4508
  tail call fastcc void @rdg_flag_all_uses(%struct.graph* %rdg, i32 %3, %struct.bitmap_head_def* %partition, %struct.bitmap_head_def* %loops, %struct.bitmap_head_def* %processed, i8* %part_has_writes) #7, !dbg !4509
  br label %for.inc, !dbg !4510

for.inc:                                          ; preds = %for.body, %if.then
  %succ_next = getelementptr inbounds %struct.graph_edge, %struct.graph_edge* %e.0, i64 0, i32 3, !dbg !4511
  br label %for.cond, !dbg !4512, !llvm.loop !4513

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4515
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_unordered_remove(%struct.VEC_int_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4516 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4520, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4521, metadata !DIExpression()), !dbg !4524
  %idxprom = zext i32 %ix_ to i64, !dbg !4525
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4525
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !4522, metadata !DIExpression()), !dbg !4524
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4525
  call void @llvm.dbg.value(metadata i32 %0, metadata !4523, metadata !DIExpression()), !dbg !4524
  %num2 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4525
  %1 = load i32, i32* %num2, align 4, !dbg !4525
  %dec = add i32 %1, -1, !dbg !4525
  store i32 %dec, i32* %num2, align 4, !dbg !4525
  %idxprom3 = zext i32 %dec to i64, !dbg !4525
  %arrayidx4 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom3, !dbg !4525
  %2 = load i32, i32* %arrayidx4, align 4, !dbg !4525
  store i32 %2, i32* %arrayidx, align 4, !dbg !4525
  ret i32 %0, !dbg !4525
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4526 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4530, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4531, metadata !DIExpression()), !dbg !4532
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4533
  %0 = load i64, i64* %bits, align 8, !dbg !4534
  %shr = lshr i64 %0, 1, !dbg !4534
  store i64 %shr, i64* %bits, align 8, !dbg !4534
  %1 = load i32, i32* %bit_no, align 4, !dbg !4535
  %add = add i32 %1, 1, !dbg !4535
  store i32 %add, i32* %bit_no, align 4, !dbg !4535
  ret void, !dbg !4536
}

declare dso_local zeroext i8 @have_similar_memory_accesses(%union.gimple_statement_d*, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @collect_condition_stmts(%struct.loop* %loop, %struct.VEC_gimple_heap** %conds) unnamed_addr #5 !dbg !4537 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %exits = alloca %struct.VEC_edge_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4541, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %conds, metadata !4542, metadata !DIExpression()), !dbg !4555
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4556
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4556
  %1 = bitcast %struct.VEC_edge_heap** %exits to i8*, !dbg !4557
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4557
  %call = tail call %struct.VEC_edge_heap* @get_loop_exit_edges(%struct.loop* %loop) #6, !dbg !4558
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call, metadata !4545, metadata !DIExpression()), !dbg !4555
  store %struct.VEC_edge_heap* %call, %struct.VEC_edge_heap** %exits, align 8, !dbg !4559
  call void @llvm.dbg.value(metadata i32 0, metadata !4543, metadata !DIExpression()), !dbg !4555
  br label %for.cond, !dbg !4560

for.cond:                                         ; preds = %for.inc, %entry
  %2 = phi %struct.VEC_edge_heap* [ %call, %entry ], [ %.pre, %for.inc ], !dbg !4561
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !4562
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4543, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %2, metadata !4545, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %2, metadata !4545, metadata !DIExpression()), !dbg !4555
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %2, i64 0, i32 0, !dbg !4561
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4544, metadata !DIExpression(DW_OP_deref)), !dbg !4555
  %call1 = call fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %base, i32 %i.0, %struct.edge_def** nonnull %e) #7, !dbg !4561
  %tobool2 = icmp eq i32 %call1, 0, !dbg !4563
  br i1 %tobool2, label %for.end, label %for.body, !dbg !4563

for.body:                                         ; preds = %for.cond
  %3 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4564
  call void @llvm.dbg.value(metadata %struct.edge_def* %3, metadata !4544, metadata !DIExpression()), !dbg !4555
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i64 0, i32 0, !dbg !4565
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4565
  %call4 = call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %4) #6, !dbg !4566
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call4, metadata !4551, metadata !DIExpression()), !dbg !4567
  %tobool5 = icmp eq %union.gimple_statement_d* %call4, null, !dbg !4568
  br i1 %tobool5, label %for.inc, label %if.then, !dbg !4570

if.then:                                          ; preds = %for.body
  %call6 = call fastcc %union.gimple_statement_d** @VEC_gimple_heap_safe_push(%struct.VEC_gimple_heap** %conds, %union.gimple_statement_d* nonnull %call4) #7, !dbg !4571
  br label %for.inc, !dbg !4571

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add i32 %i.0, 1, !dbg !4572
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4543, metadata !DIExpression()), !dbg !4555
  %.pre = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %exits, align 8, !dbg !4561
  br label %for.cond, !dbg !4573, !llvm.loop !4574

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %exits, metadata !4545, metadata !DIExpression(DW_OP_deref)), !dbg !4555
  call fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** nonnull %exits) #7, !dbg !4576
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4577
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4577
  ret void, !dbg !4577
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !4578 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !4582, metadata !DIExpression()), !dbg !4583
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4584
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !4584
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4584
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !4584
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !4584
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !4584
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4584

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !4584
  br label %cond.end, !dbg !4584

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4584
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #7, !dbg !4584
  ret %struct.loop* %call, !dbg !4585
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %vec_) unnamed_addr #0 !dbg !4586 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !4590, metadata !DIExpression()), !dbg !4591
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !4592
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4592

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !4592
  %0 = load i32, i32* %num, align 8, !dbg !4592
  br label %cond.end, !dbg !4592

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4592
  ret i32 %cond, !dbg !4592
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @VEC_gimple_base_pop(%struct.VEC_gimple_base* %vec_) unnamed_addr #0 !dbg !4593 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !4598, metadata !DIExpression()), !dbg !4600
  %num1 = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !4601
  %0 = load i32, i32* %num1, align 8, !dbg !4601
  %dec = add i32 %0, -1, !dbg !4601
  store i32 %dec, i32* %num1, align 8, !dbg !4601
  %idxprom = zext i32 %dec to i64, !dbg !4601
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4601
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %arrayidx, align 8, !dbg !4601
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !4599, metadata !DIExpression()), !dbg !4600
  ret %union.gimple_statement_d* %1, !dbg !4601
}

declare dso_local %struct.VEC_edge_heap* @get_loop_exit_edges(%struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %vec_, i32 %ix_, %struct.edge_def** %ptr) unnamed_addr #0 !dbg !4602 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4609, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4610, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata %struct.edge_def** %ptr, metadata !4611, metadata !DIExpression()), !dbg !4612
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4613
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4613

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4613
  %0 = load i32, i32* %num, align 8, !dbg !4613
  %cmp = icmp ugt i32 %0, %ix_, !dbg !4613
  br i1 %cmp, label %if.then, label %if.else, !dbg !4615

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !4616
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4616
  %1 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4616
  br label %return, !dbg !4616

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !4618

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ null, %if.else ], [ %1, %if.then ], !dbg !4620
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !4620
  store %struct.edge_def* %storemerge, %struct.edge_def** %ptr, align 8, !dbg !4620
  ret i32 %retval.0, !dbg !4615
}

declare dso_local %union.gimple_statement_d* @last_stmt(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d** @VEC_gimple_heap_safe_push(%struct.VEC_gimple_heap** %vec_, %union.gimple_statement_d* %obj_) unnamed_addr #0 !dbg !4621 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %vec_, metadata !4625, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %obj_, metadata !4626, metadata !DIExpression()), !dbg !4627
  %call = tail call fastcc i32 @VEC_gimple_heap_reserve(%struct.VEC_gimple_heap** %vec_, i32 1) #7, !dbg !4628
  %0 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %vec_, align 8, !dbg !4628
  %tobool = icmp eq %struct.VEC_gimple_heap* %0, null, !dbg !4628
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4628

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %0, i64 0, i32 0, !dbg !4628
  br label %cond.end, !dbg !4628

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4628
  %call1 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %cond, %union.gimple_statement_d* %obj_) #7, !dbg !4628
  ret %union.gimple_statement_d** %call1, !dbg !4628
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** %vec_) unnamed_addr #0 !dbg !4629 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %vec_, metadata !4634, metadata !DIExpression()), !dbg !4635
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %vec_, align 8, !dbg !4636
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !4636
  br i1 %tobool, label %if.end, label %if.then, !dbg !4638

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_edge_heap* %0 to i8*, !dbg !4638
  tail call void @free(i8* nonnull %1) #6, !dbg !4636
  br label %if.end, !dbg !4636

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %vec_, align 8, !dbg !4638
  ret void, !dbg !4638
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_heap_reserve(%struct.VEC_gimple_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4639 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %vec_, metadata !4643, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.value(metadata i32 1, metadata !4644, metadata !DIExpression()), !dbg !4646
  %0 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %vec_, align 8, !dbg !4647
  %tobool = icmp eq %struct.VEC_gimple_heap* %0, null, !dbg !4647
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4647

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %0, i64 0, i32 0, !dbg !4647
  br label %cond.end, !dbg !4647

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4647
  %call = tail call fastcc i32 @VEC_gimple_base_space(%struct.VEC_gimple_base* %cond, i32 1) #7, !dbg !4647
  %tobool1 = icmp eq i32 %call, 0, !dbg !4647
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4647
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4645, metadata !DIExpression()), !dbg !4646
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4647

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_gimple_heap** %vec_ to i8**, !dbg !4648
  %2 = load i8*, i8** %1, align 8, !dbg !4648
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !4648
  store i8* %call3, i8** %1, align 8, !dbg !4648
  br label %if.end, !dbg !4648

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4647
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %vec_, %union.gimple_statement_d* %obj_) unnamed_addr #0 !dbg !4650 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !4654, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %obj_, metadata !4655, metadata !DIExpression()), !dbg !4657
  %num1 = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !4658
  %0 = load i32, i32* %num1, align 8, !dbg !4658
  %inc = add i32 %0, 1, !dbg !4658
  store i32 %inc, i32* %num1, align 8, !dbg !4658
  %idxprom = zext i32 %0 to i64, !dbg !4658
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4658
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %arrayidx, metadata !4656, metadata !DIExpression()), !dbg !4657
  store %union.gimple_statement_d* %obj_, %union.gimple_statement_d** %arrayidx, align 8, !dbg !4658
  ret %union.gimple_statement_d** %arrayidx, !dbg !4658
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_space(%struct.VEC_gimple_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4659 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !4663, metadata !DIExpression()), !dbg !4665
  call void @llvm.dbg.value(metadata i32 1, metadata !4664, metadata !DIExpression()), !dbg !4665
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !4666
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4666

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 1, !dbg !4666
  %0 = load i32, i32* %alloc, align 4, !dbg !4666
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !4666
  %1 = load i32, i32* %num, align 8, !dbg !4666
  %cmp1 = icmp ne i32 %0, %1, !dbg !4666
  %phitmp = zext i1 %cmp1 to i32, !dbg !4666
  br label %cond.end, !dbg !4666

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4666

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4666
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_bitmap_heap_reserve(%struct.VEC_bitmap_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4667 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap** %vec_, metadata !4671, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 1, metadata !4672, metadata !DIExpression()), !dbg !4674
  %0 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** %vec_, align 8, !dbg !4675
  %tobool = icmp eq %struct.VEC_bitmap_heap* %0, null, !dbg !4675
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4675

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %0, i64 0, i32 0, !dbg !4675
  br label %cond.end, !dbg !4675

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_bitmap_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4675
  %call = tail call fastcc i32 @VEC_bitmap_base_space(%struct.VEC_bitmap_base* %cond, i32 1) #7, !dbg !4675
  %tobool1 = icmp eq i32 %call, 0, !dbg !4675
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4675
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4673, metadata !DIExpression()), !dbg !4674
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4675

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_bitmap_heap** %vec_ to i8**, !dbg !4676
  %2 = load i8*, i8** %1, align 8, !dbg !4676
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !4676
  store i8* %call3, i8** %1, align 8, !dbg !4676
  br label %if.end, !dbg !4676

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4675
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.bitmap_head_def** @VEC_bitmap_base_quick_push(%struct.VEC_bitmap_base* %vec_, %struct.bitmap_head_def* %obj_) unnamed_addr #0 !dbg !4678 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_base* %vec_, metadata !4683, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %obj_, metadata !4684, metadata !DIExpression()), !dbg !4686
  %num1 = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 0, !dbg !4687
  %0 = load i32, i32* %num1, align 8, !dbg !4687
  %inc = add i32 %0, 1, !dbg !4687
  store i32 %inc, i32* %num1, align 8, !dbg !4687
  %idxprom = zext i32 %0 to i64, !dbg !4687
  %arrayidx = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4687
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %arrayidx, metadata !4685, metadata !DIExpression()), !dbg !4686
  store %struct.bitmap_head_def* %obj_, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4687
  ret %struct.bitmap_head_def** %arrayidx, !dbg !4687
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_bitmap_base_space(%struct.VEC_bitmap_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4688 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_base* %vec_, metadata !4692, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i32 1, metadata !4693, metadata !DIExpression()), !dbg !4694
  %tobool = icmp eq %struct.VEC_bitmap_base* %vec_, null, !dbg !4695
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4695

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 1, !dbg !4695
  %0 = load i32, i32* %alloc, align 4, !dbg !4695
  %num = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 0, !dbg !4695
  %1 = load i32, i32* %num, align 8, !dbg !4695
  %cmp1 = icmp ne i32 %0, %1, !dbg !4695
  %phitmp = zext i1 %cmp1 to i32, !dbg !4695
  br label %cond.end, !dbg !4695

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4695

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4695
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @number_of_rw_in_rdg(%struct.graph* %rdg) unnamed_addr #5 !dbg !4696 {
entry:
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !4700, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.value(metadata i32 0, metadata !4702, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.value(metadata i32 0, metadata !4701, metadata !DIExpression()), !dbg !4703
  %n_vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 0, !dbg !4704
  %0 = load i32, i32* %n_vertices, align 8, !dbg !4704
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 1, !dbg !4707
  %1 = sext i32 %0 to i64, !dbg !4710
  br label %for.cond, !dbg !4710

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !4711
  %res.0 = phi i32 [ %res.2, %for.body ], [ 0, %entry ], !dbg !4703
  call void @llvm.dbg.value(metadata i32 %res.0, metadata !4702, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4701, metadata !DIExpression()), !dbg !4703
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !4712
  br i1 %cmp, label %for.body, label %for.end, !dbg !4713

for.body:                                         ; preds = %for.cond
  %2 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !4714
  %data = getelementptr inbounds %struct.vertex, %struct.vertex* %2, i64 %indvars.iv, i32 4, !dbg !4714
  %3 = bitcast i8** %data to %struct.rdg_vertex**, !dbg !4714
  %4 = load %struct.rdg_vertex*, %struct.rdg_vertex** %3, align 8, !dbg !4714
  %has_mem_write = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %4, i64 0, i32 1, !dbg !4714
  %5 = load i8, i8* %has_mem_write, align 8, !dbg !4714
  %tobool = icmp ne i8 %5, 0, !dbg !4714
  %inc = zext i1 %tobool to i32, !dbg !4715
  %spec.select = add nsw i32 %res.0, %inc, !dbg !4715
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4702, metadata !DIExpression()), !dbg !4703
  %has_mem_reads = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %4, i64 0, i32 2, !dbg !4716
  %6 = load i8, i8* %has_mem_reads, align 1, !dbg !4716
  %tobool5 = icmp ne i8 %6, 0, !dbg !4716
  %inc7 = zext i1 %tobool5 to i32, !dbg !4718
  %res.2 = add nsw i32 %spec.select, %inc7, !dbg !4718
  call void @llvm.dbg.value(metadata i32 %res.2, metadata !4702, metadata !DIExpression()), !dbg !4703
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4719
  call void @llvm.dbg.value(metadata i32 undef, metadata !4701, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4703
  br label %for.cond, !dbg !4720, !llvm.loop !4721

for.end:                                          ; preds = %for.cond
  %res.0.lcssa = phi i32 [ %res.0, %for.cond ], !dbg !4703
  call void @llvm.dbg.value(metadata i32 %res.0.lcssa, metadata !4702, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.value(metadata i32 %res.0.lcssa, metadata !4702, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.value(metadata i32 %res.0.lcssa, metadata !4702, metadata !DIExpression()), !dbg !4703
  ret i32 %res.0.lcssa, !dbg !4723
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @number_of_rw_in_partition(%struct.graph* %rdg, %struct.bitmap_head_def* %partition) unnamed_addr #5 !dbg !4724 {
entry:
  %i = alloca i32, align 4
  %ii = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.graph* %rdg, metadata !4728, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition, metadata !4729, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 0, metadata !4730, metadata !DIExpression()), !dbg !4733
  %0 = bitcast i32* %i to i8*, !dbg !4734
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4734
  %1 = bitcast %struct.bitmap_iterator* %ii to i8*, !dbg !4735
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4735
  call void @llvm.dbg.value(metadata i32* %i, metadata !4731, metadata !DIExpression(DW_OP_deref)), !dbg !4733
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %ii, metadata !4732, metadata !DIExpression(DW_OP_deref)), !dbg !4733
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %ii, %struct.bitmap_head_def* %partition, i32 0, i32* nonnull %i) #7, !dbg !4736
  %vertices = getelementptr inbounds %struct.graph, %struct.graph* %rdg, i64 0, i32 1, !dbg !4738
  br label %for.cond, !dbg !4736

for.cond:                                         ; preds = %for.body, %entry
  %res.0 = phi i32 [ 0, %entry ], [ %res.2, %for.body ], !dbg !4733
  call void @llvm.dbg.value(metadata i32 %res.0, metadata !4730, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32* %i, metadata !4731, metadata !DIExpression(DW_OP_deref)), !dbg !4733
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %ii, metadata !4732, metadata !DIExpression(DW_OP_deref)), !dbg !4733
  %call = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %ii, i32* nonnull %i) #7, !dbg !4742
  %tobool = icmp eq i8 %call, 0, !dbg !4736
  br i1 %tobool, label %for.end, label %for.body, !dbg !4736

for.body:                                         ; preds = %for.cond
  %2 = load %struct.vertex*, %struct.vertex** %vertices, align 8, !dbg !4743
  %3 = load i32, i32* %i, align 4, !dbg !4743
  call void @llvm.dbg.value(metadata i32 %3, metadata !4731, metadata !DIExpression()), !dbg !4733
  %idxprom = zext i32 %3 to i64, !dbg !4743
  %data = getelementptr inbounds %struct.vertex, %struct.vertex* %2, i64 %idxprom, i32 4, !dbg !4743
  %4 = bitcast i8** %data to %struct.rdg_vertex**, !dbg !4743
  %5 = load %struct.rdg_vertex*, %struct.rdg_vertex** %4, align 8, !dbg !4743
  %has_mem_write = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %5, i64 0, i32 1, !dbg !4743
  %6 = load i8, i8* %has_mem_write, align 8, !dbg !4743
  %tobool1 = icmp ne i8 %6, 0, !dbg !4743
  %inc = zext i1 %tobool1 to i32, !dbg !4744
  %spec.select = add nsw i32 %res.0, %inc, !dbg !4744
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4730, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %3, metadata !4731, metadata !DIExpression()), !dbg !4733
  %has_mem_reads = getelementptr inbounds %struct.rdg_vertex, %struct.rdg_vertex* %5, i64 0, i32 2, !dbg !4745
  %7 = load i8, i8* %has_mem_reads, align 1, !dbg !4745
  %tobool6 = icmp ne i8 %7, 0, !dbg !4745
  %inc8 = zext i1 %tobool6 to i32, !dbg !4747
  %res.2 = add nsw i32 %spec.select, %inc8, !dbg !4747
  call void @llvm.dbg.value(metadata i32 %res.2, metadata !4730, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32* %i, metadata !4731, metadata !DIExpression(DW_OP_deref)), !dbg !4733
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %ii, metadata !4732, metadata !DIExpression(DW_OP_deref)), !dbg !4733
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %ii, i32* nonnull %i) #7, !dbg !4742
  br label %for.cond, !dbg !4742, !llvm.loop !4748

for.end:                                          ; preds = %for.cond
  %res.0.lcssa = phi i32 [ %res.0, %for.cond ], !dbg !4733
  call void @llvm.dbg.value(metadata i32 %res.0.lcssa, metadata !4730, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %res.0.lcssa, metadata !4730, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32 %res.0.lcssa, metadata !4730, metadata !DIExpression()), !dbg !4733
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4750
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4750
  ret i32 %res.0.lcssa, !dbg !4751
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @generate_builtin(%struct.loop* %loop, %struct.bitmap_head_def* %partition, i8 zeroext %copy_p) unnamed_addr #5 !dbg !4752 {
entry:
  %bsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp7 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp58 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4754, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition, metadata !4755, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i8 %copy_p, metadata !4756, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i8 0, metadata !4757, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i32 0, metadata !4759, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !4762, metadata !DIExpression()), !dbg !4787
  %0 = bitcast %struct.gimple_stmt_iterator* %bsi to i8*, !dbg !4788
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4788
  %call = tail call %union.tree_node* @number_of_exit_cond_executions(%struct.loop* %loop) #6, !dbg !4789
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4772, metadata !DIExpression()), !dbg !4787
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !4790
  %1 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !4792
  %cmp = icmp eq %union.tree_node* %call, %1, !dbg !4793
  %or.cond = or i1 %tobool, %cmp, !dbg !4794
  br i1 %or.cond, label %cleanup95, label %if.end, !dbg !4794

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.basic_block_def** @get_loop_body_in_dom_order(%struct.loop* %loop) #6, !dbg !4795
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call1, metadata !4760, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i32 0, metadata !4758, metadata !DIExpression()), !dbg !4787
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !4796
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4797
  %3 = bitcast %struct.gimple_stmt_iterator* %tmp7 to i8*, !dbg !4799
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !4800
  br label %for.cond, !dbg !4804

for.cond:                                         ; preds = %for.inc39, %if.end
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc39 ], [ 0, %if.end ], !dbg !4787
  %x.0 = phi i32 [ %x.3, %for.inc39 ], [ 0, %if.end ], !dbg !4787
  %write.0 = phi %union.gimple_statement_d* [ %write.4, %for.inc39 ], [ null, %if.end ], !dbg !4805
  %nb_iter.0 = phi %union.tree_node* [ %nb_iter.5, %for.inc39 ], [ %call, %if.end ], !dbg !4806
  call void @llvm.dbg.value(metadata %union.tree_node* %nb_iter.0, metadata !4772, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %write.0, metadata !4762, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i64 %indvars.iv12, metadata !4758, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i32 %x.0, metadata !4759, metadata !DIExpression()), !dbg !4787
  %4 = load i32, i32* %num_nodes, align 4, !dbg !4807
  %5 = zext i32 %4 to i64, !dbg !4808
  %cmp2 = icmp ult i64 %indvars.iv12, %5, !dbg !4808
  br i1 %cmp2, label %for.body, label %for.end41, !dbg !4809

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call1, i64 %indvars.iv12, !dbg !4810
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4810
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %6, metadata !4773, metadata !DIExpression()), !dbg !4811
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !4812
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %6) #6, !dbg !4812
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !4812
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !4812
  br label %for.cond3, !dbg !4813

for.cond3:                                        ; preds = %for.body6, %for.body
  %x.1 = phi i32 [ %x.0, %for.body ], [ %inc, %for.body6 ], !dbg !4787
  call void @llvm.dbg.value(metadata i32 %x.1, metadata !4759, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4765, metadata !DIExpression(DW_OP_deref)), !dbg !4787
  %call4 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #7, !dbg !4814
  %tobool5 = icmp eq i8 %call4, 0, !dbg !4816
  br i1 %tobool5, label %for.body6, label %for.end, !dbg !4817

for.body6:                                        ; preds = %for.cond3
  %inc = add i32 %x.1, 1, !dbg !4818
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4759, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4765, metadata !DIExpression(DW_OP_deref)), !dbg !4787
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #7, !dbg !4819
  br label %for.cond3, !dbg !4820, !llvm.loop !4821

for.end:                                          ; preds = %for.cond3
  %x.1.lcssa = phi i32 [ %x.1, %for.cond3 ], !dbg !4787
  call void @llvm.dbg.value(metadata i32 %x.1.lcssa, metadata !4759, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i32 %x.1.lcssa, metadata !4759, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i32 %x.1.lcssa, metadata !4759, metadata !DIExpression()), !dbg !4787
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !4823
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp7, %struct.basic_block_def* %6) #7, !dbg !4823
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %3, i64 24, i1 false), !dbg !4823
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !4823
  br label %for.cond8, !dbg !4824

for.cond8:                                        ; preds = %for.inc34, %for.end
  %x.2 = phi i32 [ %x.1.lcssa, %for.end ], [ %inc14, %for.inc34 ], !dbg !4787
  %write.1 = phi %union.gimple_statement_d* [ %write.0, %for.end ], [ %write.3, %for.inc34 ], !dbg !4805
  %nb_iter.1 = phi %union.tree_node* [ %nb_iter.0, %for.end ], [ %nb_iter.4, %for.inc34 ], !dbg !4806
  call void @llvm.dbg.value(metadata %union.tree_node* %nb_iter.1, metadata !4772, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %write.1, metadata !4762, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i32 %x.2, metadata !4759, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4765, metadata !DIExpression(DW_OP_deref)), !dbg !4787
  %call9 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #7, !dbg !4825
  %tobool10 = icmp eq i8 %call9, 0, !dbg !4826
  br i1 %tobool10, label %for.body12, label %cleanup36, !dbg !4827

for.body12:                                       ; preds = %for.cond8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4765, metadata !DIExpression(DW_OP_deref)), !dbg !4787
  %call13 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #7, !dbg !4828
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call13, metadata !4777, metadata !DIExpression()), !dbg !4829
  %inc14 = add i32 %x.2, 1, !dbg !4830
  call void @llvm.dbg.value(metadata i32 %inc14, metadata !4759, metadata !DIExpression()), !dbg !4787
  %call15 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %partition, i32 %x.2) #6, !dbg !4831
  %tobool16 = icmp eq i32 %call15, 0, !dbg !4831
  br i1 %tobool16, label %cleanup, label %land.lhs.true, !dbg !4832

land.lhs.true:                                    ; preds = %for.body12
  %call17 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call13) #7, !dbg !4833
  %tobool18 = icmp eq i8 %call17, 0, !dbg !4833
  br i1 %tobool18, label %cleanup, label %land.lhs.true19, !dbg !4834

land.lhs.true19:                                  ; preds = %land.lhs.true
  %call20 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call13) #7, !dbg !4835
  %call21 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call20) #6, !dbg !4836
  %tobool22 = icmp eq i8 %call21, 0, !dbg !4836
  br i1 %tobool22, label %if.then23, label %cleanup, !dbg !4837

if.then23:                                        ; preds = %land.lhs.true19
  %cmp24 = icmp eq %union.gimple_statement_d* %write.1, null, !dbg !4838
  br i1 %cmp24, label %if.end27, label %cleanup, !dbg !4840

if.end27:                                         ; preds = %if.then23
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call13, metadata !4762, metadata !DIExpression()), !dbg !4787
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !4841
  %cmp28 = icmp eq %struct.basic_block_def* %6, %7, !dbg !4842
  br i1 %cmp28, label %if.then30, label %cleanup, !dbg !4843

if.then30:                                        ; preds = %if.end27
  %call31 = call %union.tree_node* @number_of_latch_executions(%struct.loop* %loop) #6, !dbg !4844
  call void @llvm.dbg.value(metadata %union.tree_node* %call31, metadata !4772, metadata !DIExpression()), !dbg !4787
  br label %cleanup, !dbg !4845

cleanup:                                          ; preds = %if.then23, %land.lhs.true19, %land.lhs.true, %for.body12, %if.then30, %if.end27
  %write.3 = phi %union.gimple_statement_d* [ %write.1, %if.then23 ], [ %write.1, %land.lhs.true19 ], [ %write.1, %land.lhs.true ], [ %write.1, %for.body12 ], [ %call13, %if.then30 ], [ %call13, %if.end27 ], !dbg !4805
  %nb_iter.4 = phi %union.tree_node* [ %nb_iter.1, %if.then23 ], [ %nb_iter.1, %land.lhs.true19 ], [ %nb_iter.1, %land.lhs.true ], [ %nb_iter.1, %for.body12 ], [ %call31, %if.then30 ], [ %nb_iter.1, %if.end27 ], !dbg !4806
  %cleanup.dest.slot.0 = phi i32 [ 11, %if.then23 ], [ 0, %land.lhs.true19 ], [ 0, %land.lhs.true ], [ 0, %for.body12 ], [ 0, %if.then30 ], [ 0, %if.end27 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %nb_iter.4, metadata !4772, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %write.3, metadata !4762, metadata !DIExpression()), !dbg !4787
  %cond = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond, label %for.inc34, label %cleanup36

for.inc34:                                        ; preds = %cleanup
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4765, metadata !DIExpression(DW_OP_deref)), !dbg !4787
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #7, !dbg !4846
  br label %for.cond8, !dbg !4847, !llvm.loop !4848

cleanup36:                                        ; preds = %for.cond8, %cleanup
  %x.3 = phi i32 [ %inc14, %cleanup ], [ %x.2, %for.cond8 ], !dbg !4787
  %write.4 = phi %union.gimple_statement_d* [ %write.3, %cleanup ], [ %write.1, %for.cond8 ], !dbg !4805
  %nb_iter.5 = phi %union.tree_node* [ %nb_iter.4, %cleanup ], [ %nb_iter.1, %for.cond8 ], !dbg !4806
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 0, %for.cond8 ], !dbg !4796
  call void @llvm.dbg.value(metadata %union.tree_node* %nb_iter.5, metadata !4772, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %write.4, metadata !4762, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i32 %x.3, metadata !4759, metadata !DIExpression()), !dbg !4787
  switch i32 %cleanup.dest.slot.1, label %cleanup95.loopexit [
    i32 0, label %for.inc39
    i32 11, label %end.loopexit
  ]

for.inc39:                                        ; preds = %cleanup36
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !4850
  br label %for.cond, !dbg !4851, !llvm.loop !4852

for.end41:                                        ; preds = %for.cond
  %write.0.lcssa = phi %union.gimple_statement_d* [ %write.0, %for.cond ], !dbg !4805
  %nb_iter.0.lcssa = phi %union.tree_node* [ %nb_iter.0, %for.cond ], !dbg !4806
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %write.0.lcssa, metadata !4762, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata %union.tree_node* %nb_iter.0.lcssa, metadata !4772, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %write.0.lcssa, metadata !4762, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata %union.tree_node* %nb_iter.0.lcssa, metadata !4772, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %write.0.lcssa, metadata !4762, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata %union.tree_node* %nb_iter.0.lcssa, metadata !4772, metadata !DIExpression()), !dbg !4787
  %tobool42 = icmp eq %union.gimple_statement_d* %write.0.lcssa, null, !dbg !4854
  br i1 %tobool42, label %end, label %if.end44, !dbg !4856

if.end44:                                         ; preds = %for.end41
  %call45 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* nonnull %write.0.lcssa) #7, !dbg !4857
  call void @llvm.dbg.value(metadata %union.tree_node* %call45, metadata !4763, metadata !DIExpression()), !dbg !4787
  %call46 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* nonnull %write.0.lcssa) #7, !dbg !4858
  call void @llvm.dbg.value(metadata %union.tree_node* %call46, metadata !4764, metadata !DIExpression()), !dbg !4787
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call45, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4859
  %bf.load = load i64, i64* %8, align 8, !dbg !4859
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !4861
  %cmp47 = icmp eq i64 %bf.cast2, 45, !dbg !4861
  br i1 %cmp47, label %if.end57, label %lor.lhs.false49, !dbg !4862

lor.lhs.false49:                                  ; preds = %if.end44
  %cmp54 = icmp eq i64 %bf.cast2, 47, !dbg !4863
  br i1 %cmp54, label %if.end57, label %end, !dbg !4864

if.end57:                                         ; preds = %lor.lhs.false49, %if.end44
  %9 = bitcast %struct.gimple_stmt_iterator* %tmp58 to i8*, !dbg !4865
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #8, !dbg !4865
  %call59 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !4866
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call59, i64 0, i32 0, !dbg !4867
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4867
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp58, %struct.basic_block_def* %10) #7, !dbg !4865
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !4865
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #8, !dbg !4865
  %call60 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* nonnull %write.0.lcssa) #7, !dbg !4868
  %cmp61 = icmp eq i32 %call60, 23, !dbg !4870
  br i1 %cmp61, label %land.lhs.true63, label %if.end71, !dbg !4871

land.lhs.true63:                                  ; preds = %if.end57
  %call64 = call i32 @integer_zerop(%union.tree_node* %call46) #6, !dbg !4872
  %tobool65 = icmp eq i32 %call64, 0, !dbg !4872
  br i1 %tobool65, label %lor.lhs.false66, label %if.then69, !dbg !4873

lor.lhs.false66:                                  ; preds = %land.lhs.true63
  %call67 = call i32 @real_zerop(%union.tree_node* %call46) #6, !dbg !4874
  %tobool68 = icmp eq i32 %call67, 0, !dbg !4874
  br i1 %tobool68, label %if.end71, label %if.then69, !dbg !4875

if.then69:                                        ; preds = %lor.lhs.false66, %land.lhs.true63
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4765, metadata !DIExpression(DW_OP_deref)), !dbg !4787
  %call70 = call fastcc zeroext i8 @generate_memset_zero(%union.gimple_statement_d* nonnull %write.0.lcssa, %union.tree_node* %call45, %union.tree_node* %nb_iter.0.lcssa, %struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #7, !dbg !4876
  call void @llvm.dbg.value(metadata i8 %call70, metadata !4757, metadata !DIExpression()), !dbg !4787
  br label %if.end71, !dbg !4877

if.end71:                                         ; preds = %lor.lhs.false66, %if.then69, %if.end57
  %res.0 = phi i8 [ %call70, %if.then69 ], [ 0, %lor.lhs.false66 ], [ 0, %if.end57 ], !dbg !4787
  call void @llvm.dbg.value(metadata i8 %res.0, metadata !4757, metadata !DIExpression()), !dbg !4787
  %tobool73 = icmp eq i8 %res.0, 0, !dbg !4878
  %tobool75 = icmp ne i8 %copy_p, 0, !dbg !4879
  %or.cond1 = or i1 %tobool73, %tobool75, !dbg !4880
  br i1 %or.cond1, label %end, label %if.then76, !dbg !4880

if.then76:                                        ; preds = %if.end71
  %11 = load i32, i32* %num_nodes, align 4, !dbg !4881
  call void @llvm.dbg.value(metadata i32 %11, metadata !4781, metadata !DIExpression()), !dbg !4882
  %call79 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !4883
  %src80 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call79, i64 0, i32 0, !dbg !4884
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %src80, align 8, !dbg !4884
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %12, metadata !4784, metadata !DIExpression()), !dbg !4882
  %call81 = call %struct.edge_def* @single_exit(%struct.loop* %loop) #6, !dbg !4885
  %dest82 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call81, i64 0, i32 1, !dbg !4886
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %dest82, align 8, !dbg !4886
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %13, metadata !4785, metadata !DIExpression()), !dbg !4882
  call fastcc void @prop_phis(%struct.basic_block_def* %13) #7, !dbg !4887
  %call83 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %12, %struct.basic_block_def* %13, i32 1) #6, !dbg !4888
  call void @cancel_loop_tree(%struct.loop* %loop) #6, !dbg !4889
  call void @llvm.dbg.value(metadata i32 0, metadata !4758, metadata !DIExpression()), !dbg !4787
  %wide.trip.count = zext i32 %11 to i64, !dbg !4890
  br label %for.cond84, !dbg !4893

for.cond84:                                       ; preds = %for.body87, %if.then76
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body87 ], [ 0, %if.then76 ], !dbg !4894
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4758, metadata !DIExpression()), !dbg !4787
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !4890
  br i1 %exitcond, label %for.end92, label %for.body87, !dbg !4895

for.body87:                                       ; preds = %for.cond84
  %arrayidx89 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call1, i64 %indvars.iv, !dbg !4896
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx89, align 8, !dbg !4896
  call void @delete_basic_block(%struct.basic_block_def* %14) #6, !dbg !4897
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4898
  br label %for.cond84, !dbg !4899, !llvm.loop !4900

for.end92:                                        ; preds = %for.cond84
  %call93 = call %struct.basic_block_def* @recompute_dominator(i32 1, %struct.basic_block_def* %13) #6, !dbg !4902
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %13, %struct.basic_block_def* %call93) #6, !dbg !4903
  br label %end, !dbg !4904

end.loopexit:                                     ; preds = %cleanup36
  br label %end, !dbg !4905

end:                                              ; preds = %end.loopexit, %for.end41, %for.end92, %if.end71, %lor.lhs.false49
  %res.1 = phi i8 [ 0, %for.end41 ], [ 0, %lor.lhs.false49 ], [ %res.0, %if.end71 ], [ %res.0, %for.end92 ], [ 0, %end.loopexit ], !dbg !4787
  call void @llvm.dbg.value(metadata i8 %res.1, metadata !4757, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.label(metadata !4786), !dbg !4906
  %15 = bitcast %struct.basic_block_def** %call1 to i8*, !dbg !4905
  call void @free(i8* %15) #6, !dbg !4907
  br label %cleanup95, !dbg !4908

cleanup95.loopexit:                               ; preds = %cleanup36
  br label %cleanup95, !dbg !4909

cleanup95:                                        ; preds = %cleanup95.loopexit, %entry, %end
  %retval.0 = phi i8 [ %res.1, %end ], [ 0, %entry ], [ undef, %cleanup95.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4909
  ret i8 %retval.0, !dbg !4909
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @generate_loops_for_partition(%struct.loop* %loop, %struct.bitmap_head_def* %partition, i8 zeroext %copy_p) unnamed_addr #5 !dbg !4910 {
entry:
  %bsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp14 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4912, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %partition, metadata !4913, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i8 %copy_p, metadata !4914, metadata !DIExpression()), !dbg !4923
  %0 = bitcast %struct.gimple_stmt_iterator* %bsi to i8*, !dbg !4924
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4924
  %tobool = icmp eq i8 %copy_p, 0, !dbg !4925
  br i1 %tobool, label %if.end, label %if.then, !dbg !4927

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.loop* @copy_loop_before(%struct.loop* %loop) #7, !dbg !4928
  call void @llvm.dbg.value(metadata %struct.loop* %call, metadata !4912, metadata !DIExpression()), !dbg !4923
  %call1 = tail call %struct.basic_block_def* @create_preheader(%struct.loop* %call, i32 1) #6, !dbg !4930
  tail call fastcc void @create_bb_after_loop(%struct.loop* %call) #7, !dbg !4931
  br label %if.end, !dbg !4932

if.end:                                           ; preds = %entry, %if.then
  %loop.addr.0 = phi %struct.loop* [ %call, %if.then ], [ %loop, %entry ]
  call void @llvm.dbg.value(metadata %struct.loop* %loop.addr.0, metadata !4912, metadata !DIExpression()), !dbg !4923
  %cmp = icmp eq %struct.loop* %loop.addr.0, null, !dbg !4933
  br i1 %cmp, label %cleanup, label %if.end3, !dbg !4935

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.basic_block_def** @get_loop_body_in_dom_order(%struct.loop* nonnull %loop.addr.0) #6, !dbg !4936
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call4, metadata !4918, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i32 0, metadata !4916, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i32 0, metadata !4915, metadata !DIExpression()), !dbg !4923
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop.addr.0, i64 0, i32 6, !dbg !4937
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4938
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp14 to i8*, !dbg !4940
  br label %for.cond, !dbg !4942

for.cond:                                         ; preds = %for.end29, %if.end3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end29 ], [ 0, %if.end3 ], !dbg !4943
  %x.0 = phi i32 [ %x.2.lcssa, %for.end29 ], [ 0, %if.end3 ], !dbg !4944
  call void @llvm.dbg.value(metadata i32 %x.0, metadata !4916, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4915, metadata !DIExpression()), !dbg !4923
  %3 = load i32, i32* %num_nodes, align 4, !dbg !4945
  %4 = zext i32 %3 to i64, !dbg !4946
  %cmp5 = icmp ult i64 %indvars.iv, %4, !dbg !4946
  br i1 %cmp5, label %for.body, label %for.end31, !dbg !4947

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call4, i64 %indvars.iv, !dbg !4948
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4948
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %5, metadata !4919, metadata !DIExpression()), !dbg !4949
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !4950
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %5) #6, !dbg !4950
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !4950
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !4950
  br label %for.cond6, !dbg !4951

for.cond6:                                        ; preds = %if.end13, %for.body
  %x.1 = phi i32 [ %x.0, %for.body ], [ %inc, %if.end13 ], !dbg !4943
  call void @llvm.dbg.value(metadata i32 %x.1, metadata !4916, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4917, metadata !DIExpression(DW_OP_deref)), !dbg !4923
  %call7 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #7, !dbg !4952
  %tobool8 = icmp eq i8 %call7, 0, !dbg !4954
  br i1 %tobool8, label %for.body9, label %for.end, !dbg !4955

for.body9:                                        ; preds = %for.cond6
  %inc = add i32 %x.1, 1, !dbg !4956
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4916, metadata !DIExpression()), !dbg !4923
  %call10 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %partition, i32 %x.1) #6, !dbg !4958
  %tobool11 = icmp eq i32 %call10, 0, !dbg !4958
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !4959

if.then12:                                        ; preds = %for.body9
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4917, metadata !DIExpression(DW_OP_deref)), !dbg !4923
  call void @remove_phi_node(%struct.gimple_stmt_iterator* nonnull %bsi, i8 zeroext 1) #6, !dbg !4960
  br label %if.end13, !dbg !4960

if.else:                                          ; preds = %for.body9
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4917, metadata !DIExpression(DW_OP_deref)), !dbg !4923
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #7, !dbg !4961
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  br label %for.cond6, !dbg !4962, !llvm.loop !4963

for.end:                                          ; preds = %for.cond6
  %x.1.lcssa = phi i32 [ %x.1, %for.cond6 ], !dbg !4943
  call void @llvm.dbg.value(metadata i32 %x.1.lcssa, metadata !4916, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i32 %x.1.lcssa, metadata !4916, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i32 %x.1.lcssa, metadata !4916, metadata !DIExpression()), !dbg !4923
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !4965
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp14, %struct.basic_block_def* %5) #7, !dbg !4965
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !4965
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !4965
  br label %for.cond15, !dbg !4966

for.cond15:                                       ; preds = %if.end28, %for.end
  %x.2 = phi i32 [ %x.1.lcssa, %for.end ], [ %x.4, %if.end28 ], !dbg !4943
  call void @llvm.dbg.value(metadata i32 %x.2, metadata !4916, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4917, metadata !DIExpression(DW_OP_deref)), !dbg !4923
  %call16 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #7, !dbg !4967
  %tobool17 = icmp eq i8 %call16, 0, !dbg !4969
  br i1 %tobool17, label %for.body19, label %for.end29, !dbg !4970

for.body19:                                       ; preds = %for.cond15
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4917, metadata !DIExpression(DW_OP_deref)), !dbg !4923
  %call20 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #7, !dbg !4971
  %call21 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call20) #7, !dbg !4973
  %cmp22 = icmp eq i32 %call21, 4, !dbg !4974
  br i1 %cmp22, label %if.else27, label %land.lhs.true, !dbg !4975

land.lhs.true:                                    ; preds = %for.body19
  %inc23 = add i32 %x.2, 1, !dbg !4976
  call void @llvm.dbg.value(metadata i32 %inc23, metadata !4916, metadata !DIExpression()), !dbg !4923
  %call24 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %partition, i32 %x.2) #6, !dbg !4977
  %tobool25 = icmp eq i32 %call24, 0, !dbg !4977
  br i1 %tobool25, label %if.then26, label %if.else27, !dbg !4978

if.then26:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4917, metadata !DIExpression(DW_OP_deref)), !dbg !4923
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %bsi, i8 zeroext 0) #6, !dbg !4979
  br label %if.end28, !dbg !4979

if.else27:                                        ; preds = %land.lhs.true, %for.body19
  %x.3 = phi i32 [ %inc23, %land.lhs.true ], [ %x.2, %for.body19 ], !dbg !4943
  call void @llvm.dbg.value(metadata i32 %x.3, metadata !4916, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !4917, metadata !DIExpression(DW_OP_deref)), !dbg !4923
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #7, !dbg !4980
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  %x.4 = phi i32 [ %x.3, %if.else27 ], [ %inc23, %if.then26 ], !dbg !4976
  call void @llvm.dbg.value(metadata i32 %x.4, metadata !4916, metadata !DIExpression()), !dbg !4923
  br label %for.cond15, !dbg !4981, !llvm.loop !4982

for.end29:                                        ; preds = %for.cond15
  %x.2.lcssa = phi i32 [ %x.2, %for.cond15 ], !dbg !4943
  call void @llvm.dbg.value(metadata i32 %x.2.lcssa, metadata !4916, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i32 %x.2.lcssa, metadata !4916, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i32 %x.2.lcssa, metadata !4916, metadata !DIExpression()), !dbg !4923
  call void @mark_virtual_ops_in_bb(%struct.basic_block_def* %5) #6, !dbg !4984
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4985
  br label %for.cond, !dbg !4986, !llvm.loop !4987

for.end31:                                        ; preds = %for.cond
  %6 = bitcast %struct.basic_block_def** %call4 to i8*, !dbg !4989
  call void @free(i8* %6) #6, !dbg !4990
  br label %cleanup, !dbg !4991

cleanup:                                          ; preds = %if.end, %for.end31
  %retval.0 = phi i8 [ 1, %for.end31 ], [ 0, %if.end ], !dbg !4923
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4992
  ret i8 %retval.0, !dbg !4992
}

declare dso_local %union.tree_node* @number_of_exit_cond_executions(%struct.loop*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def** @get_loop_body_in_dom_order(%struct.loop*) local_unnamed_addr #2

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !4993 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !4997, metadata !DIExpression()), !dbg !4998
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4999
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4999
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !5000
  %conv1 = zext i1 %cmp to i8, !dbg !5001
  ret i8 %conv1, !dbg !5002
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !5003 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !5008, metadata !DIExpression()), !dbg !5009
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !5010
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !5010
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !5011
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !5011
  %2 = load i64, i64* %1, align 8, !dbg !5011
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !5012
  store i64 %2, i64* %3, align 8, !dbg !5012
  ret void, !dbg !5013
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5014 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5018, metadata !DIExpression()), !dbg !5021
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !5019, metadata !DIExpression()), !dbg !5022
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !5023
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !5020, metadata !DIExpression()), !dbg !5021
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !5024
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !5025
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !5026
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !5027
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !5028
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !5029
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !5030
  ret void, !dbg !5031
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !5032 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !5036, metadata !DIExpression()), !dbg !5037
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !5038
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !5038
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !5039
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !5039
  ret %union.gimple_statement_d* %1, !dbg !5040
}

declare dso_local %union.tree_node* @number_of_latch_executions(%struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5041 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5043, metadata !DIExpression()), !dbg !5044
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !5045
  ret %union.tree_node* %call, !dbg !5046
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5047 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5049, metadata !DIExpression()), !dbg !5052
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !5050, metadata !DIExpression()), !dbg !5053
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !5054
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !5051, metadata !DIExpression()), !dbg !5052
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #7, !dbg !5055
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !5056
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !5057
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !5058
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !5059
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !5060
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !5061
  ret void, !dbg !5062
}

declare dso_local %struct.edge_def* @loop_preheader_edge(%struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5063 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5067, metadata !DIExpression()), !dbg !5069
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !5070
  call void @llvm.dbg.value(metadata i32 %call, metadata !5068, metadata !DIExpression()), !dbg !5069
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !5071
  %cmp = icmp eq i32 %call1, 3, !dbg !5073
  br i1 %cmp, label %if.then, label %if.end, !dbg !5074

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !5075
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5075
  %bf.load = load i64, i64* %0, align 8, !dbg !5075
  %1 = trunc i64 %bf.load to i32, !dbg !5075
  %bf.cast = and i32 %1, 65535, !dbg !5075
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !5068, metadata !DIExpression()), !dbg !5069
  br label %if.end, !dbg !5076

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !5069
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !5068, metadata !DIExpression()), !dbg !5069
  ret i32 %code.0, !dbg !5077
}

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @real_zerop(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @generate_memset_zero(%union.gimple_statement_d* %stmt, %union.tree_node* %op0, %union.tree_node* %nb_iter, %struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %bsi) unnamed_addr #5 !dbg !5078 {
entry:
  %stmt_list = alloca %struct.gimple_seq_d*, align 8
  %stmts = alloca %struct.gimple_seq_d*, align 8
  %i = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5082, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata %union.tree_node* %op0, metadata !5083, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata %union.tree_node* %nb_iter, metadata !5084, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %bsi, metadata !5085, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.value(metadata i8 0, metadata !5088, metadata !DIExpression()), !dbg !5102
  %0 = bitcast %struct.gimple_seq_d** %stmt_list to i8*, !dbg !5104
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5104
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* null, metadata !5089, metadata !DIExpression()), !dbg !5102
  store %struct.gimple_seq_d* null, %struct.gimple_seq_d** %stmt_list, align 8, !dbg !5105
  %1 = bitcast %struct.gimple_seq_d** %stmts to i8*, !dbg !5104
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !5104
  %2 = bitcast %struct.gimple_stmt_iterator* %i to i8*, !dbg !5106
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !5106
  %call = tail call i8* @xcalloc(i64 1, i64 112) #6, !dbg !5107
  %3 = bitcast i8* %call to %struct.data_reference*, !dbg !5107
  call void @llvm.dbg.value(metadata %struct.data_reference* %3, metadata !5095, metadata !DIExpression()), !dbg !5102
  %call1 = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %stmt) #7, !dbg !5108
  call void @llvm.dbg.value(metadata i32 %call1, metadata !5096, metadata !DIExpression()), !dbg !5102
  %stmt2 = bitcast i8* %call to %union.gimple_statement_d**, !dbg !5109
  store %union.gimple_statement_d* %stmt, %union.gimple_statement_d** %stmt2, align 8, !dbg !5110
  %ref = getelementptr inbounds i8, i8* %call, i64 8, !dbg !5111
  %4 = bitcast i8* %ref to %union.tree_node**, !dbg !5111
  store %union.tree_node* %op0, %union.tree_node** %4, align 8, !dbg !5112
  %call3 = tail call zeroext i8 @dr_analyze_innermost(%struct.data_reference* %3) #6, !dbg !5113
  %tobool = icmp eq i8 %call3, 0, !dbg !5113
  br i1 %tobool, label %end, label %if.end, !dbg !5115

if.end:                                           ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !5116
  %step = getelementptr inbounds i8, i8* %call, i64 56, !dbg !5116
  %6 = bitcast i8* %step to %union.tree_node**, !dbg !5116
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8, !dbg !5116
  %call4 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %5, %union.tree_node* %7) #6, !dbg !5116
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %op0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5116
  %8 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !5116
  %9 = load %struct.tree_type*, %struct.tree_type** %8, align 8, !dbg !5116
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %9, i64 0, i32 3, !dbg !5116
  %10 = load %union.tree_node*, %union.tree_node** %size_unit, align 8, !dbg !5116
  %call6 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 64, %union.tree_node* %call4, %union.tree_node* %10) #6, !dbg !5116
  %call7 = tail call i32 @integer_zerop(%union.tree_node* %call6) #6, !dbg !5118
  %tobool8 = icmp eq i32 %call7, 0, !dbg !5118
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !5119

if.then9:                                         ; preds = %if.end
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !5120
  %offset = getelementptr inbounds i8, i8* %call, i64 40, !dbg !5122
  %12 = bitcast i8* %offset to %union.tree_node**, !dbg !5122
  %13 = load %union.tree_node*, %union.tree_node** %12, align 8, !dbg !5122
  %init = getelementptr inbounds i8, i8* %call, i64 48, !dbg !5123
  %14 = bitcast i8* %init to %union.tree_node**, !dbg !5123
  %15 = load %union.tree_node*, %union.tree_node** %14, align 8, !dbg !5123
  %call12 = tail call %union.tree_node* @size_binop_loc(i32 %call1, i32 63, %union.tree_node* %13, %union.tree_node* %15) #6, !dbg !5124
  %call13 = tail call %union.tree_node* @fold_convert_loc(i32 %call1, %union.tree_node* %11, %union.tree_node* %call12) #6, !dbg !5125
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !5086, metadata !DIExpression()), !dbg !5102
  %innermost14 = getelementptr inbounds i8, i8* %call, i64 32, !dbg !5126
  %16 = bitcast i8* %innermost14 to %struct.tree_common**, !dbg !5126
  %17 = load %struct.tree_common*, %struct.tree_common** %16, align 8, !dbg !5126
  %type16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %17, i64 0, i32 2, !dbg !5126
  %18 = load %union.tree_node*, %union.tree_node** %type16, align 8, !dbg !5126
  %.cast1 = bitcast %struct.tree_common* %17 to %union.tree_node*, !dbg !5126
  %call19 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %call1, i32 66, %union.tree_node* %18, %union.tree_node* %.cast1, %union.tree_node* %call13) #6, !dbg !5126
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !5086, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmt_list, metadata !5089, metadata !DIExpression(DW_OP_deref)), !dbg !5102
  %call20 = call fastcc %union.tree_node* @build_size_arg_loc(i32 %call1, %union.tree_node* %nb_iter, %union.tree_node* %op0, %struct.gimple_seq_d** nonnull %stmt_list) #7, !dbg !5127
  call void @llvm.dbg.value(metadata %union.tree_node* %call20, metadata !5087, metadata !DIExpression()), !dbg !5102
  br label %if.end55, !dbg !5128

if.else:                                          ; preds = %if.end
  %19 = load %struct.tree_type*, %struct.tree_type** %8, align 8, !dbg !5129
  %size_unit24 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %19, i64 0, i32 3, !dbg !5129
  %20 = load %union.tree_node*, %union.tree_node** %size_unit24, align 8, !dbg !5129
  %21 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !5129
  %22 = load %union.tree_node*, %union.tree_node** %6, align 8, !dbg !5129
  %call27 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %21, %union.tree_node* %22) #6, !dbg !5129
  %call28 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 63, %union.tree_node* %20, %union.tree_node* %call27) #6, !dbg !5129
  %call29 = tail call i32 @integer_zerop(%union.tree_node* %call28) #6, !dbg !5131
  %tobool30 = icmp eq i32 %call29, 0, !dbg !5131
  br i1 %tobool30, label %end, label %if.then31, !dbg !5132

if.then31:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmt_list, metadata !5089, metadata !DIExpression(DW_OP_deref)), !dbg !5102
  %call32 = call fastcc %union.tree_node* @build_size_arg_loc(i32 %call1, %union.tree_node* %nb_iter, %union.tree_node* %op0, %struct.gimple_seq_d** nonnull %stmt_list) #7, !dbg !5133
  call void @llvm.dbg.value(metadata %union.tree_node* %call32, metadata !5087, metadata !DIExpression()), !dbg !5102
  %offset34 = getelementptr inbounds i8, i8* %call, i64 40, !dbg !5135
  %23 = bitcast i8* %offset34 to %union.tree_node**, !dbg !5135
  %24 = load %union.tree_node*, %union.tree_node** %23, align 8, !dbg !5135
  %init36 = getelementptr inbounds i8, i8* %call, i64 48, !dbg !5136
  %25 = bitcast i8* %init36 to %union.tree_node**, !dbg !5136
  %26 = load %union.tree_node*, %union.tree_node** %25, align 8, !dbg !5136
  %call37 = call %union.tree_node* @size_binop_loc(i32 %call1, i32 63, %union.tree_node* %24, %union.tree_node* %26) #6, !dbg !5137
  call void @llvm.dbg.value(metadata %union.tree_node* %call37, metadata !5086, metadata !DIExpression()), !dbg !5102
  %27 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !5138
  %call38 = call %union.tree_node* @fold_convert_loc(i32 %call1, %union.tree_node* %27, %union.tree_node* %call37) #6, !dbg !5139
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !5086, metadata !DIExpression()), !dbg !5102
  %28 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !5140
  %call39 = call %union.tree_node* @fold_convert_loc(i32 %call1, %union.tree_node* %28, %union.tree_node* %call32) #6, !dbg !5141
  %call40 = call %union.tree_node* @size_binop_loc(i32 %call1, i32 64, %union.tree_node* %call38, %union.tree_node* %call39) #6, !dbg !5142
  call void @llvm.dbg.value(metadata %union.tree_node* %call40, metadata !5086, metadata !DIExpression()), !dbg !5102
  %29 = load %struct.tree_type*, %struct.tree_type** %8, align 8, !dbg !5143
  %size_unit44 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %29, i64 0, i32 3, !dbg !5143
  %30 = load %union.tree_node*, %union.tree_node** %size_unit44, align 8, !dbg !5143
  %call45 = call %union.tree_node* @size_binop_loc(i32 %call1, i32 63, %union.tree_node* %call40, %union.tree_node* %30) #6, !dbg !5144
  call void @llvm.dbg.value(metadata %union.tree_node* %call45, metadata !5086, metadata !DIExpression()), !dbg !5102
  %innermost46 = getelementptr inbounds i8, i8* %call, i64 32, !dbg !5145
  %31 = bitcast i8* %innermost46 to %struct.tree_common**, !dbg !5145
  %32 = load %struct.tree_common*, %struct.tree_common** %31, align 8, !dbg !5145
  %type49 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %32, i64 0, i32 2, !dbg !5145
  %33 = load %union.tree_node*, %union.tree_node** %type49, align 8, !dbg !5145
  %.cast = bitcast %struct.tree_common* %32 to %union.tree_node*, !dbg !5145
  %call52 = call %union.tree_node* @fold_build2_stat_loc(i32 %call1, i32 66, %union.tree_node* %33, %union.tree_node* %.cast, %union.tree_node* %call45) #6, !dbg !5145
  call void @llvm.dbg.value(metadata %union.tree_node* %call52, metadata !5086, metadata !DIExpression()), !dbg !5102
  br label %if.end55

if.end55:                                         ; preds = %if.then31, %if.then9
  %addr_base.0 = phi %union.tree_node* [ %call19, %if.then9 ], [ %call52, %if.then31 ], !dbg !5146
  %nb_bytes.0 = phi %union.tree_node* [ %call20, %if.then9 ], [ %call32, %if.then31 ], !dbg !5146
  call void @llvm.dbg.value(metadata %union.tree_node* %nb_bytes.0, metadata !5087, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata %union.tree_node* %addr_base.0, metadata !5086, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !5090, metadata !DIExpression(DW_OP_deref)), !dbg !5102
  %call56 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %addr_base.0, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 1, %union.tree_node* null) #6, !dbg !5147
  call void @llvm.dbg.value(metadata %union.tree_node* %call56, metadata !5092, metadata !DIExpression()), !dbg !5102
  %34 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !5148
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %34, metadata !5090, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmt_list, metadata !5089, metadata !DIExpression(DW_OP_deref)), !dbg !5102
  call void @gimple_seq_add_seq(%struct.gimple_seq_d** nonnull %stmt_list, %struct.gimple_seq_d* %34) #6, !dbg !5149
  %35 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([721 x %union.tree_node*], [721 x %union.tree_node*]* @implicit_built_in_decls, i64 0, i64 333), align 8, !dbg !5150
  %call57 = call %union.tree_node* @build_fold_addr_expr_loc(i32 0, %union.tree_node* %35) #6, !dbg !5150
  call void @llvm.dbg.value(metadata %union.tree_node* %call57, metadata !5093, metadata !DIExpression()), !dbg !5102
  %36 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !5151
  %call58 = call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* %call57, i32 3, %union.tree_node* %call56, %union.tree_node* %36, %union.tree_node* %nb_bytes.0) #6, !dbg !5152
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call58, metadata !5091, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmt_list, metadata !5089, metadata !DIExpression(DW_OP_deref)), !dbg !5102
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %stmt_list, %union.gimple_statement_d* %call58) #6, !dbg !5153
  %37 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !5154
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %37) #8, !dbg !5154
  %38 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmt_list, align 8, !dbg !5155
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %38, metadata !5089, metadata !DIExpression()), !dbg !5102
  call fastcc void @gsi_start(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.gimple_seq_d* %38) #7, !dbg !5154
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %37, i64 24, i1 false), !dbg !5154
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %37) #8, !dbg !5154
  br label %for.cond, !dbg !5156

for.cond:                                         ; preds = %for.body, %if.end55
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !5094, metadata !DIExpression(DW_OP_deref)), !dbg !5102
  %call59 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !5157
  %tobool60 = icmp eq i8 %call59, 0, !dbg !5158
  br i1 %tobool60, label %for.body, label %for.end, !dbg !5159

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !5094, metadata !DIExpression(DW_OP_deref)), !dbg !5102
  %call61 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !5160
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call61, metadata !5097, metadata !DIExpression()), !dbg !5161
  call fastcc void @update_stmt_if_modified(%union.gimple_statement_d* %call61) #7, !dbg !5162
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !5094, metadata !DIExpression(DW_OP_deref)), !dbg !5102
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %i) #7, !dbg !5163
  br label %for.cond, !dbg !5164, !llvm.loop !5165

for.end:                                          ; preds = %for.cond
  %39 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmt_list, align 8, !dbg !5167
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %39, metadata !5089, metadata !DIExpression()), !dbg !5102
  call void @gsi_insert_seq_after(%struct.gimple_stmt_iterator* nonnull %bsi, %struct.gimple_seq_d* %39, i32 2) #6, !dbg !5168
  call void @llvm.dbg.value(metadata i8 1, metadata !5088, metadata !DIExpression()), !dbg !5102
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5169
  %tobool62 = icmp eq %struct._IO_FILE* %40, null, !dbg !5169
  br i1 %tobool62, label %end, label %land.lhs.true, !dbg !5171

land.lhs.true:                                    ; preds = %for.end
  %41 = load i32, i32* @dump_flags, align 4, !dbg !5172
  %and = and i32 %41, 8, !dbg !5173
  %tobool63 = icmp eq i32 %and, 0, !dbg !5173
  br i1 %tobool63, label %end, label %if.then64, !dbg !5174

if.then64:                                        ; preds = %land.lhs.true
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !5175
  br label %end, !dbg !5175

end:                                              ; preds = %land.lhs.true, %for.end, %if.else, %entry, %if.then64
  %res.0 = phi i8 [ 0, %entry ], [ 0, %if.else ], [ 1, %if.then64 ], [ 1, %land.lhs.true ], [ 1, %for.end ], !dbg !5102
  call void @llvm.dbg.value(metadata i8 %res.0, metadata !5088, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.label(metadata !5101), !dbg !5176
  call void @free_data_ref(%struct.data_reference* %3) #6, !dbg !5177
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !5178
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !5178
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5178
  ret i8 %res.0, !dbg !5179
}

declare dso_local %struct.edge_def* @single_exit(%struct.loop*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @prop_phis(%struct.basic_block_def* %b) unnamed_addr #5 !dbg !5180 {
entry:
  %psi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b, metadata !5184, metadata !DIExpression()), !dbg !5198
  %0 = bitcast %struct.gimple_stmt_iterator* %psi to i8*, !dbg !5199
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !5199
  %call = tail call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %b) #7, !dbg !5200
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !5186, metadata !DIExpression()), !dbg !5198
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !5201
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !5201
  call fastcc void @gsi_start(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.gimple_seq_d* %call) #7, !dbg !5201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !5201
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !5201
  %2 = bitcast %struct.immediate_use_iterator_d* %iter to i8*, !dbg !5202
  br label %for.cond, !dbg !5203

for.cond:                                         ; preds = %if.end, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !5185, metadata !DIExpression(DW_OP_deref)), !dbg !5198
  %call1 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %psi) #7, !dbg !5204
  %tobool = icmp eq i8 %call1, 0, !dbg !5205
  br i1 %tobool, label %for.body, label %for.end24, !dbg !5206

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !5185, metadata !DIExpression(DW_OP_deref)), !dbg !5198
  %call2 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %psi) #7, !dbg !5207
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !5187, metadata !DIExpression()), !dbg !5208
  %call3 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call2) #7, !dbg !5209
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !5191, metadata !DIExpression()), !dbg !5208
  %call4 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call2, i64 0) #7, !dbg !5210
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !5192, metadata !DIExpression()), !dbg !5208
  %call5 = call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %call2) #7, !dbg !5211
  %cmp = icmp eq i32 %call5, 1, !dbg !5211
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !5211

cond.true:                                        ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 335, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !5211
  br label %cond.end, !dbg !5211

cond.end:                                         ; preds = %for.body, %cond.true
  %call6 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call3) #6, !dbg !5212
  %tobool7 = icmp eq i8 %call6, 0, !dbg !5212
  br i1 %tobool7, label %if.then, label %if.else, !dbg !5213

if.then:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %2) #8, !dbg !5214
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !5193, metadata !DIExpression(DW_OP_deref)), !dbg !5202
  %call8 = call fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %iter, %union.tree_node* %call3) #7, !dbg !5215
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call8, metadata !5197, metadata !DIExpression()), !dbg !5202
  br label %for.cond9, !dbg !5215

for.cond9:                                        ; preds = %for.inc21, %if.then
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !5193, metadata !DIExpression(DW_OP_deref)), !dbg !5202
  %call10 = call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !5217
  %tobool11 = icmp eq i8 %call10, 0, !dbg !5217
  br i1 %tobool11, label %for.body13, label %for.end23, !dbg !5215

for.body13:                                       ; preds = %for.cond9
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !5193, metadata !DIExpression(DW_OP_deref)), !dbg !5202
  %call14 = call fastcc %struct.ssa_use_operand_d* @first_imm_use_on_stmt(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !5219
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call14, metadata !5196, metadata !DIExpression()), !dbg !5202
  br label %for.cond15, !dbg !5219

for.cond15:                                       ; preds = %for.body19, %for.body13
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call14, %for.body13 ], [ %call20, %for.body19 ], !dbg !5221
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !5196, metadata !DIExpression()), !dbg !5202
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !5193, metadata !DIExpression(DW_OP_deref)), !dbg !5202
  %call16 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !5222
  %tobool17 = icmp eq i8 %call16, 0, !dbg !5222
  br i1 %tobool17, label %for.body19, label %for.inc21, !dbg !5219

for.body19:                                       ; preds = %for.cond15
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0, %union.tree_node* %call4) #7, !dbg !5224
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !5193, metadata !DIExpression(DW_OP_deref)), !dbg !5202
  %call20 = call fastcc %struct.ssa_use_operand_d* @next_imm_use_on_stmt(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !5222
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call20, metadata !5196, metadata !DIExpression()), !dbg !5202
  br label %for.cond15, !dbg !5222, !llvm.loop !5225

for.inc21:                                        ; preds = %for.cond15
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !5193, metadata !DIExpression(DW_OP_deref)), !dbg !5202
  %call22 = call fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !5217
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call22, metadata !5197, metadata !DIExpression()), !dbg !5202
  br label %for.cond9, !dbg !5217, !llvm.loop !5227

for.end23:                                        ; preds = %for.cond9
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %2) #8, !dbg !5229
  br label %if.end, !dbg !5230

if.else:                                          ; preds = %cond.end
  call void @replace_uses_by(%union.tree_node* %call3, %union.tree_node* %call4) #6, !dbg !5231
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end23
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !5185, metadata !DIExpression(DW_OP_deref)), !dbg !5198
  call void @remove_phi_node(%struct.gimple_stmt_iterator* nonnull %psi, i8 zeroext 1) #6, !dbg !5232
  br label %for.cond, !dbg !5233, !llvm.loop !5234

for.end24:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !5236
  ret void, !dbg !5236
}

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

declare dso_local void @cancel_loop_tree(%struct.loop*) local_unnamed_addr #2

declare dso_local void @delete_basic_block(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @set_immediate_dominator(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @recompute_dominator(i32, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5237 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5244, metadata !DIExpression()), !dbg !5245
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !5246
  %0 = load i32, i32* %flags, align 8, !dbg !5246
  %and = and i32 %0, 512, !dbg !5247
  %tobool = icmp eq i32 %and, 0, !dbg !5247
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !5248

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !5249
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !5249
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !5250
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !5251

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !5252
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !5252
  br label %cond.end, !dbg !5251

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !5251
  ret %struct.gimple_seq_d* %cond, !dbg !5253
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !5254 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !5261, metadata !DIExpression()), !dbg !5262
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !5263
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5263

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !5264
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !5264
  br label %cond.end, !dbg !5263

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !5263
  ret %struct.gimple_seq_node_d* %cond, !dbg !5265
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !5266 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !5268, metadata !DIExpression()), !dbg !5269
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !5270
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5270

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !5271
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !5271
  br label %cond.end, !dbg !5270

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !5270
  ret %struct.gimple_seq_node_d* %cond, !dbg !5272
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !5273 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5275, metadata !DIExpression()), !dbg !5277
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !5278
  call void @llvm.dbg.value(metadata i32 %call, metadata !5276, metadata !DIExpression()), !dbg !5277
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !5279

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !5281
  %bf.load = load i32, i32* %0, align 8, !dbg !5281
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !5281
  br label %cleanup, !dbg !5282

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !5283
  br label %cleanup, !dbg !5285

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !5277
  ret i32 %retval.0, !dbg !5286
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !5287 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !5291, metadata !DIExpression()), !dbg !5292
  %idxprom = sext i32 %code to i64, !dbg !5293
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !5293
  %0 = load i8, i8* %arrayidx, align 1, !dbg !5293
  %conv = zext i8 %0 to i32, !dbg !5294
  ret i32 %conv, !dbg !5295
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5296 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5300, metadata !DIExpression()), !dbg !5301
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !5302
  %0 = load i32, i32* %location, align 8, !dbg !5302
  ret i32 %0, !dbg !5303
}

declare dso_local zeroext i8 @dr_analyze_innermost(%struct.data_reference*) local_unnamed_addr #2

declare dso_local %union.tree_node* @size_binop_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @build_size_arg_loc(i32 %loc, %union.tree_node* %nb_iter, %union.tree_node* %op, %struct.gimple_seq_d** %stmt_list) unnamed_addr #0 !dbg !5304 {
entry:
  %stmts = alloca %struct.gimple_seq_d*, align 8
  call void @llvm.dbg.value(metadata i32 %loc, metadata !5309, metadata !DIExpression()), !dbg !5315
  call void @llvm.dbg.value(metadata %union.tree_node* %nb_iter, metadata !5310, metadata !DIExpression()), !dbg !5315
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !5311, metadata !DIExpression()), !dbg !5315
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmt_list, metadata !5312, metadata !DIExpression()), !dbg !5315
  %0 = bitcast %struct.gimple_seq_d** %stmts to i8*, !dbg !5316
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5316
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 41), align 8, !dbg !5317
  %call = tail call %union.tree_node* @fold_convert_loc(i32 %loc, %union.tree_node* %1, %union.tree_node* %nb_iter) #6, !dbg !5317
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 41), align 8, !dbg !5317
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %op, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5317
  %3 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !5317
  %4 = load %struct.tree_type*, %struct.tree_type** %3, align 8, !dbg !5317
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %4, i64 0, i32 3, !dbg !5317
  %5 = load %union.tree_node*, %union.tree_node** %size_unit, align 8, !dbg !5317
  %call2 = tail call %union.tree_node* @fold_convert_loc(i32 %loc, %union.tree_node* %2, %union.tree_node* %5) #6, !dbg !5317
  %call3 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %loc, i32 65, %union.tree_node* %1, %union.tree_node* %call, %union.tree_node* %call2) #6, !dbg !5317
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !5314, metadata !DIExpression()), !dbg !5315
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %stmts, metadata !5313, metadata !DIExpression(DW_OP_deref)), !dbg !5315
  %call4 = call %union.tree_node* @force_gimple_operand(%union.tree_node* %call3, %struct.gimple_seq_d** nonnull %stmts, i8 zeroext 1, %union.tree_node* null) #6, !dbg !5318
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !5314, metadata !DIExpression()), !dbg !5315
  %6 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %stmts, align 8, !dbg !5319
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %6, metadata !5313, metadata !DIExpression()), !dbg !5315
  call void @gimple_seq_add_seq(%struct.gimple_seq_d** %stmt_list, %struct.gimple_seq_d* %6) #6, !dbg !5320
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5321
  ret %union.tree_node* %call4, !dbg !5322
}

declare dso_local %union.tree_node* @force_gimple_operand(%union.tree_node*, %struct.gimple_seq_d**, i8 zeroext, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @gimple_seq_add_seq(%struct.gimple_seq_d**, %struct.gimple_seq_d*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_fold_addr_expr_loc(i32, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_call(%union.tree_node*, i32, ...) local_unnamed_addr #2

declare dso_local void @gimple_seq_add_stmt(%struct.gimple_seq_d**, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !5323 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !5327, metadata !DIExpression()), !dbg !5329
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !5328, metadata !DIExpression()), !dbg !5330
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %seq) #7, !dbg !5331
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !5332
  store %struct.gimple_seq_node_d* %call, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !5333
  %seq1 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !5334
  store %struct.gimple_seq_d* %seq, %struct.gimple_seq_d** %seq1, align 8, !dbg !5335
  %tobool = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !5336
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !5337

land.lhs.true:                                    ; preds = %entry
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call, i64 0, i32 0, !dbg !5338
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !5338
  %tobool4 = icmp eq %union.gimple_statement_d* %0, null, !dbg !5339
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !5340

cond.true:                                        ; preds = %land.lhs.true
  %call7 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* nonnull %0) #7, !dbg !5341
  br label %cond.end, !dbg !5340

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.basic_block_def* [ %call7, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !5340
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !5342
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %bb, align 8, !dbg !5343
  ret void, !dbg !5344
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt_if_modified(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !5345 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !5349, metadata !DIExpression()), !dbg !5350
  %call = tail call fastcc zeroext i8 @gimple_modified_p(%union.gimple_statement_d* %s) #7, !dbg !5351
  %tobool = icmp eq i8 %call, 0, !dbg !5351
  br i1 %tobool, label %if.end, label %if.then, !dbg !5353

if.then:                                          ; preds = %entry
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !5354
  br label %if.end, !dbg !5354

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !5355
}

declare dso_local void @gsi_insert_seq_after(%struct.gimple_stmt_iterator*, %struct.gimple_seq_d*, i32) local_unnamed_addr #2

declare dso_local void @free_data_ref(%struct.data_reference*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_modified_p(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5356 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5358, metadata !DIExpression()), !dbg !5359
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !5360
  %tobool = icmp eq i8 %call, 0, !dbg !5361
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5361

cond.true:                                        ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !5362
  %bf.load = load i32, i32* %0, align 8, !dbg !5362
  %bf.lshr = lshr i32 %bf.load, 13, !dbg !5362
  %1 = trunc i32 %bf.lshr to i8, !dbg !5363
  %conv1 = and i8 %1, 1, !dbg !5363
  br label %cond.end, !dbg !5361

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8 [ %conv1, %cond.true ], [ 0, %entry ]
  ret i8 %cond, !dbg !5364
}

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5365 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5367, metadata !DIExpression()), !dbg !5368
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !5369
  %0 = load i32, i32* %flags, align 8, !dbg !5369
  %and = and i32 %0, 512, !dbg !5369
  %tobool = icmp eq i32 %and, 0, !dbg !5369
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5369

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 510, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !5369
  br label %cond.end, !dbg !5369

cond.end:                                         ; preds = %entry, %cond.true
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !5370
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !5370
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !5372
  br i1 %tobool1, label %return, label %if.end, !dbg !5373

if.end:                                           ; preds = %cond.end
  %phi_nodes = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 1, !dbg !5374
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %phi_nodes, align 8, !dbg !5374
  br label %return, !dbg !5375

return:                                           ; preds = %cond.end, %if.end
  %retval.0 = phi %struct.gimple_seq_d* [ %2, %if.end ], [ null, %cond.end ], !dbg !5368
  ret %struct.gimple_seq_d* %retval.0, !dbg !5376
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5377 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5379, metadata !DIExpression()), !dbg !5380
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !5381
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !5381
  ret %union.tree_node* %0, !dbg !5382
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !5383 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5387, metadata !DIExpression()), !dbg !5391
  call void @llvm.dbg.value(metadata i64 0, metadata !5388, metadata !DIExpression()), !dbg !5391
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !5392
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call, metadata !5389, metadata !DIExpression()), !dbg !5391
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !5393
  %call1 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %imm_use) #7, !dbg !5394
  ret %union.tree_node* %call1, !dbg !5395
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5396 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5400, metadata !DIExpression()), !dbg !5401
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !5402
  %0 = load i32, i32* %nargs, align 4, !dbg !5402
  ret i32 %0, !dbg !5403
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !5404 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !5408, metadata !DIExpression()), !dbg !5410
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !5409, metadata !DIExpression()), !dbg !5410
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5411
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !5412
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !5413
  store i40* %imm_uses, i40** %0, align 8, !dbg !5413
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !5414
  %1 = bitcast i40* %next to i64*, !dbg !5414
  %2 = load i64, i64* %1, align 8, !dbg !5414
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !5415
  store i64 %2, i64* %3, align 8, !dbg !5415
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !5416
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next_imm_name, align 8, !dbg !5417
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !5418
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !5419
  %next3 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 1, !dbg !5420
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next3, align 8, !dbg !5421
  %stmt = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 2, i32 0, !dbg !5422
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %stmt, align 8, !dbg !5423
  %use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 3, !dbg !5424
  store %union.tree_node** null, %union.tree_node*** %use, align 8, !dbg !5425
  %call = tail call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !5426
  %tobool = icmp eq i8 %call, 0, !dbg !5426
  br i1 %tobool, label %if.end, label %return, !dbg !5428

if.end:                                           ; preds = %entry
  %imm_use6 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !5429
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use6, align 8, !dbg !5429
  tail call fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %4, %struct.immediate_use_iterator_d* %imm) #7, !dbg !5430
  %5 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use6, align 8, !dbg !5431
  %stmt9 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %5, i64 0, i32 2, i32 0, !dbg !5431
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt9, align 8, !dbg !5431
  br label %return, !dbg !5432

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.end ], [ null, %entry ], !dbg !5410
  ret %union.gimple_statement_d* %retval.0, !dbg !5433
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !5434 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !5436, metadata !DIExpression()), !dbg !5437
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !5438
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !5438
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !5439
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !5439
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !5440
  %conv1 = zext i1 %cmp to i8, !dbg !5441
  ret i8 %conv1, !dbg !5442
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @first_imm_use_on_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !5443 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !5445, metadata !DIExpression()), !dbg !5446
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !5447
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !5447
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !5448
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !5448
  %2 = load i64, i64* %1, align 8, !dbg !5448
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !5449
  %3 = bitcast %struct.ssa_use_operand_d** %next_imm_name to i64*, !dbg !5450
  store i64 %2, i64* %3, align 8, !dbg !5450
  ret %struct.ssa_use_operand_d* %0, !dbg !5451
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !5452 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !5454, metadata !DIExpression()), !dbg !5455
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !5456
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !5456
  %iter_node = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !5457
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %iter_node, !dbg !5458
  %conv1 = zext i1 %cmp to i8, !dbg !5459
  ret i8 %conv1, !dbg !5460
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) unnamed_addr #0 !dbg !5461 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !5465, metadata !DIExpression()), !dbg !5467
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !5466, metadata !DIExpression()), !dbg !5467
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use) #7, !dbg !5468
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !5469
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !5469
  store %union.tree_node* %val, %union.tree_node** %0, align 8, !dbg !5470
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) #7, !dbg !5471
  ret void, !dbg !5472
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @next_imm_use_on_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !5473 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !5475, metadata !DIExpression()), !dbg !5476
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !5477
  %0 = bitcast %struct.ssa_use_operand_d** %next_imm_name to i64*, !dbg !5477
  %1 = load i64, i64* %0, align 8, !dbg !5477
  %2 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !5478
  store i64 %1, i64* %2, align 8, !dbg !5478
  %call = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !5479
  %tobool = icmp eq i8 %call, 0, !dbg !5479
  br i1 %tobool, label %if.else, label %return, !dbg !5481

if.else:                                          ; preds = %entry
  %imm_use1 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !5482
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use1, align 8, !dbg !5482
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 1, !dbg !5484
  %4 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !5484
  %5 = load i64, i64* %4, align 8, !dbg !5484
  store i64 %5, i64* %0, align 8, !dbg !5485
  br label %return, !dbg !5486

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi %struct.ssa_use_operand_d* [ %3, %if.else ], [ null, %entry ], !dbg !5487
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !5488
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !5489 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !5493, metadata !DIExpression()), !dbg !5494
  %next = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 1, !dbg !5495
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !5495
  %1 = load i64, i64* %0, align 8, !dbg !5495
  %2 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !5496
  store i64 %1, i64* %2, align 8, !dbg !5496
  %call = tail call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !5497
  %tobool = icmp eq i8 %call, 0, !dbg !5497
  br i1 %tobool, label %if.end4, label %if.then, !dbg !5499

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !5500
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !5500
  %cmp = icmp eq %struct.ssa_use_operand_d* %3, null, !dbg !5503
  br i1 %cmp, label %return, label %if.then2, !dbg !5504

if.then2:                                         ; preds = %if.then
  %iter_node3 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !5505
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node3) #7, !dbg !5506
  br label %return, !dbg !5506

if.end4:                                          ; preds = %entry
  %imm_use5 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !5507
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use5, align 8, !dbg !5507
  tail call fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %4, %struct.immediate_use_iterator_d* %imm) #7, !dbg !5508
  %5 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use5, align 8, !dbg !5509
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %5, i64 0, i32 2, i32 0, !dbg !5509
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !5509
  br label %return, !dbg !5510

return:                                           ; preds = %if.then, %if.then2, %if.end4
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.end4 ], [ null, %if.then2 ], [ null, %if.then ], !dbg !5494
  ret %union.gimple_statement_d* %retval.0, !dbg !5511
}

declare dso_local void @replace_uses_by(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @remove_phi_node(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !5512 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5516, metadata !DIExpression()), !dbg !5518
  call void @llvm.dbg.value(metadata i32 %index, metadata !5517, metadata !DIExpression()), !dbg !5518
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !5519
  %0 = load i32, i32* %capacity, align 8, !dbg !5519
  %cmp = icmp ult i32 %0, %index, !dbg !5519
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !5519

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !5519
  br label %cond.end, !dbg !5519

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !5520
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !5520
  ret %struct.phi_arg_d* %arrayidx, !dbg !5521
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %head, %struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !5522 {
entry:
  %op_iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !5526, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !5527, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !5529, metadata !DIExpression()), !dbg !5546
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %head, i64 0, i32 2, i32 0, !dbg !5547
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !5547
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !5530, metadata !DIExpression()), !dbg !5546
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %head) #7, !dbg !5548
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5531, metadata !DIExpression()), !dbg !5546
  %1 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %op_iter, i64 0, i32 0, !dbg !5549
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #8, !dbg !5549
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !5550
  %tobool = icmp eq i8 %call1, 0, !dbg !5550
  %cond = select i1 %tobool, i32 4, i32 1, !dbg !5550
  call void @llvm.dbg.value(metadata i32 %cond, metadata !5545, metadata !DIExpression()), !dbg !5546
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %0) #7, !dbg !5551
  %cmp = icmp eq i32 %call2, 16, !dbg !5553
  br i1 %cmp, label %if.then, label %if.else, !dbg !5554

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !5532, metadata !DIExpression(DW_OP_deref)), !dbg !5546
  %call4 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %0, i32 %cond) #7, !dbg !5555
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call4, metadata !5528, metadata !DIExpression()), !dbg !5546
  br label %for.cond, !dbg !5555

for.cond:                                         ; preds = %for.inc, %if.then
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call4, %if.then ], [ %call12, %for.inc ], !dbg !5558
  %last_p.0 = phi %struct.ssa_use_operand_d* [ %head, %if.then ], [ %last_p.1, %for.inc ], !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0, metadata !5529, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !5528, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !5532, metadata !DIExpression(DW_OP_deref)), !dbg !5546
  %call5 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !5559
  %tobool6 = icmp eq i8 %call5, 0, !dbg !5559
  br i1 %tobool6, label %for.body, label %if.end44.loopexit, !dbg !5555

for.body:                                         ; preds = %for.cond
  %call7 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0) #7, !dbg !5561
  %cmp8 = icmp eq %union.tree_node* %call7, %call, !dbg !5563
  br i1 %cmp8, label %if.then10, label %for.inc, !dbg !5564

if.then10:                                        ; preds = %for.body
  %call11 = call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p.0, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p.0) #7, !dbg !5565
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call11, metadata !5529, metadata !DIExpression()), !dbg !5546
  br label %for.inc, !dbg !5566

for.inc:                                          ; preds = %for.body, %if.then10
  %last_p.1 = phi %struct.ssa_use_operand_d* [ %call11, %if.then10 ], [ %last_p.0, %for.body ], !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.1, metadata !5529, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !5532, metadata !DIExpression(DW_OP_deref)), !dbg !5546
  %call12 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !5559
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call12, metadata !5528, metadata !DIExpression()), !dbg !5546
  br label %for.cond, !dbg !5559, !llvm.loop !5567

if.else:                                          ; preds = %entry
  br i1 %tobool, label %if.else31, label %if.then15, !dbg !5569

if.then15:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !5532, metadata !DIExpression(DW_OP_deref)), !dbg !5546
  %call16 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %0, i32 %cond) #7, !dbg !5571
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call16, metadata !5528, metadata !DIExpression()), !dbg !5546
  br label %for.cond17, !dbg !5571

for.cond17:                                       ; preds = %for.inc28, %if.then15
  %use_p.1 = phi %struct.ssa_use_operand_d* [ %call16, %if.then15 ], [ %call29, %for.inc28 ], !dbg !5575
  %last_p.2 = phi %struct.ssa_use_operand_d* [ %head, %if.then15 ], [ %last_p.3, %for.inc28 ], !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2, metadata !5529, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.1, metadata !5528, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !5532, metadata !DIExpression(DW_OP_deref)), !dbg !5546
  %call18 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !5576
  %tobool19 = icmp eq i8 %call18, 0, !dbg !5576
  br i1 %tobool19, label %for.body21, label %if.end44.loopexit1, !dbg !5571

for.body21:                                       ; preds = %for.cond17
  %call22 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.1) #7, !dbg !5578
  %cmp23 = icmp eq %union.tree_node* %call22, %call, !dbg !5580
  br i1 %cmp23, label %if.then25, label %for.inc28, !dbg !5581

if.then25:                                        ; preds = %for.body21
  %call26 = call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p.1, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p.2) #7, !dbg !5582
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call26, metadata !5529, metadata !DIExpression()), !dbg !5546
  br label %for.inc28, !dbg !5583

for.inc28:                                        ; preds = %for.body21, %if.then25
  %last_p.3 = phi %struct.ssa_use_operand_d* [ %call26, %if.then25 ], [ %last_p.2, %for.body21 ], !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.3, metadata !5529, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !5532, metadata !DIExpression(DW_OP_deref)), !dbg !5546
  %call29 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !5576
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call29, metadata !5528, metadata !DIExpression()), !dbg !5546
  br label %for.cond17, !dbg !5576, !llvm.loop !5584

if.else31:                                        ; preds = %if.else
  %call32 = tail call fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %0) #7, !dbg !5586
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call32, metadata !5528, metadata !DIExpression()), !dbg !5546
  %cmp33 = icmp eq %struct.ssa_use_operand_d* %call32, null, !dbg !5588
  br i1 %cmp33, label %if.end44, label %if.then35, !dbg !5589

if.then35:                                        ; preds = %if.else31
  %call36 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %call32) #7, !dbg !5590
  %cmp37 = icmp eq %union.tree_node* %call36, %call, !dbg !5593
  br i1 %cmp37, label %if.then39, label %if.end44, !dbg !5594

if.then39:                                        ; preds = %if.then35
  %call40 = tail call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* nonnull %call32, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %head) #7, !dbg !5595
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call40, metadata !5529, metadata !DIExpression()), !dbg !5546
  br label %if.end44, !dbg !5596

if.end44.loopexit:                                ; preds = %for.cond
  %last_p.0.lcssa = phi %struct.ssa_use_operand_d* [ %last_p.0, %for.cond ], !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !5529, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !5529, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !5529, metadata !DIExpression()), !dbg !5546
  br label %if.end44, !dbg !5597

if.end44.loopexit1:                               ; preds = %for.cond17
  %last_p.2.lcssa = phi %struct.ssa_use_operand_d* [ %last_p.2, %for.cond17 ], !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !5529, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !5529, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !5529, metadata !DIExpression()), !dbg !5546
  br label %if.end44, !dbg !5597

if.end44:                                         ; preds = %if.end44.loopexit1, %if.end44.loopexit, %if.else31, %if.then35, %if.then39
  %last_p.7 = phi %struct.ssa_use_operand_d* [ %head, %if.else31 ], [ %call40, %if.then39 ], [ %head, %if.then35 ], [ %last_p.0.lcssa, %if.end44.loopexit ], [ %last_p.2.lcssa, %if.end44.loopexit1 ], !dbg !5599
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.7, metadata !5529, metadata !DIExpression()), !dbg !5546
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !5597
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !5597
  %cmp45 = icmp eq %struct.ssa_use_operand_d* %2, null, !dbg !5600
  br i1 %cmp45, label %if.end49, label %if.then47, !dbg !5601

if.then47:                                        ; preds = %if.end44
  %iter_node48 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !5602
  call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node48) #7, !dbg !5603
  br label %if.end49, !dbg !5603

if.end49:                                         ; preds = %if.end44, %if.then47
  %iter_node50 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !5604
  call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* nonnull %iter_node50, %struct.ssa_use_operand_d* %last_p.7) #7, !dbg !5605
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #8, !dbg !5606
  ret void, !dbg !5606
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %phi, i32 %flags) unnamed_addr #0 !dbg !5607 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !5612, metadata !DIExpression()), !dbg !5617
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !5613, metadata !DIExpression()), !dbg !5617
  call void @llvm.dbg.value(metadata i32 %flags, metadata !5614, metadata !DIExpression()), !dbg !5617
  %call = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #7, !dbg !5618
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5615, metadata !DIExpression()), !dbg !5617
  tail call fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !5619
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !5620
  store i8 0, i8* %done, align 8, !dbg !5621
  %and = and i32 %flags, 5, !dbg !5622
  %cmp = icmp eq i32 %and, 0, !dbg !5622
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !5622

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 918, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !5622
  br label %cond.end, !dbg !5622

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !5623
  %tobool = icmp eq i8 %call1, 0, !dbg !5623
  %cond2 = select i1 %tobool, i32 4, i32 1, !dbg !5623
  call void @llvm.dbg.value(metadata i32 %cond2, metadata !5616, metadata !DIExpression()), !dbg !5617
  %and3 = and i32 %cond2, %flags, !dbg !5624
  %cmp4 = icmp eq i32 %and3, 0, !dbg !5626
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5627

if.then:                                          ; preds = %cond.end
  store i8 1, i8* %done, align 8, !dbg !5628
  br label %cleanup, !dbg !5630

if.end:                                           ; preds = %cond.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !5631
  store %union.gimple_statement_d* %phi, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !5632
  %call7 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #7, !dbg !5633
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !5634
  store i32 %call7, i32* %num_phi, align 4, !dbg !5635
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !5636
  store i32 2, i32* %iter_type, align 4, !dbg !5637
  %call8 = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !5638
  br label %cleanup, !dbg !5639

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ null, %if.then ], [ %call8, %if.end ], !dbg !5617
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !5640
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !5641 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !5647, metadata !DIExpression()), !dbg !5648
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !5649
  %0 = load i8, i8* %done, align 8, !dbg !5649
  ret i8 %0, !dbg !5650
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p) unnamed_addr #0 !dbg !5651 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !5655, metadata !DIExpression()), !dbg !5658
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !5656, metadata !DIExpression()), !dbg !5658
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p, metadata !5657, metadata !DIExpression()), !dbg !5658
  %cmp = icmp eq %struct.ssa_use_operand_d* %use_p, %head, !dbg !5659
  br i1 %cmp, label %if.end3, label %if.then, !dbg !5661

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %last_p, i64 0, i32 1, !dbg !5662
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !5662
  %cmp1 = icmp eq %struct.ssa_use_operand_d* %0, %use_p, !dbg !5665
  br i1 %cmp1, label %if.end3, label %if.else, !dbg !5666

if.else:                                          ; preds = %if.then
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use_p) #7, !dbg !5667
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %use_p, %struct.ssa_use_operand_d* %last_p) #7, !dbg !5669
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !5657, metadata !DIExpression()), !dbg !5658
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.else, %if.then
  %last_p.addr.1 = phi %struct.ssa_use_operand_d* [ %last_p, %entry ], [ %use_p, %if.then ], [ %use_p, %if.else ]
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.addr.1, metadata !5657, metadata !DIExpression()), !dbg !5658
  ret %struct.ssa_use_operand_d* %last_p.addr.1, !dbg !5670
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !5671 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !5675, metadata !DIExpression()), !dbg !5677
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !5678
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !5678
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !5680
  br i1 %tobool, label %if.end, label %if.then, !dbg !5681

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !5682
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !5676, metadata !DIExpression()), !dbg !5677
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !5684
  %2 = load i64, i64* %1, align 8, !dbg !5684
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !5685
  store i64 %2, i64* %3, align 8, !dbg !5685
  br label %cleanup, !dbg !5686

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !5687
  %4 = load i32, i32* %phi_i, align 8, !dbg !5687
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !5689
  %5 = load i32, i32* %num_phi, align 4, !dbg !5689
  %cmp = icmp slt i32 %4, %5, !dbg !5690
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !5691

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !5692
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !5692
  %inc = add nsw i32 %4, 1, !dbg !5692
  store i32 %inc, i32* %phi_i, align 8, !dbg !5692
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #7, !dbg !5692
  br label %cleanup, !dbg !5694

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !5695
  store i8 1, i8* %done, align 8, !dbg !5696
  br label %cleanup, !dbg !5697

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !5677
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !5698
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !5699 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !5701, metadata !DIExpression()), !dbg !5704
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5702, metadata !DIExpression()), !dbg !5704
  call void @llvm.dbg.value(metadata i32 %flags, metadata !5703, metadata !DIExpression()), !dbg !5704
  %0 = and i32 %flags, 11, !dbg !5705
  %1 = icmp eq i32 %0, 1, !dbg !5705
  br i1 %1, label %cond.end, label %cond.true, !dbg !5705

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 771, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !5705
  br label %cond.end, !dbg !5705

cond.end:                                         ; preds = %entry, %cond.true
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) #7, !dbg !5706
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !5707
  store i32 2, i32* %iter_type, align 4, !dbg !5708
  %call = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !5709
  ret %struct.ssa_use_operand_d* %call, !dbg !5710
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !5711 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !5715, metadata !DIExpression()), !dbg !5716
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !5717
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !5717
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !5719
  br i1 %cmp, label %return, label %if.end, !dbg !5720

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !5721
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !5721
  %2 = load i64, i64* %1, align 8, !dbg !5721
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !5722
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !5723
  store i64 %2, i64* %3, align 8, !dbg !5723
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !5724
  %5 = load i64, i64* %4, align 8, !dbg !5724
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !5725
  %7 = load i64*, i64** %6, align 8, !dbg !5725
  store i64 %5, i64* %7, align 8, !dbg !5726
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !5727
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !5728
  br label %return, !dbg !5729

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !5729
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !5730 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !5734, metadata !DIExpression()), !dbg !5736
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !5735, metadata !DIExpression()), !dbg !5736
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !5737
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !5738
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !5739
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !5739
  %1 = load i64, i64* %0, align 8, !dbg !5739
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !5740
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !5741
  store i64 %1, i64* %2, align 8, !dbg !5741
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !5742
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !5743
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !5744
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !5745
  ret void, !dbg !5746
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !5747 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !5751, metadata !DIExpression()), !dbg !5752
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !5753
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !5754
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !5755
  store %struct.use_optype_d* null, %struct.use_optype_d** %uses, align 8, !dbg !5756
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !5757
  store i32 0, i32* %iter_type, align 4, !dbg !5758
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !5759
  store i32 0, i32* %phi_i, align 8, !dbg !5760
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !5761
  store i32 0, i32* %num_phi, align 4, !dbg !5762
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !5763
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !5764
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !5765
  store i8 1, i8* %done, align 8, !dbg !5766
  ret void, !dbg !5767
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !5768 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5772, metadata !DIExpression()), !dbg !5774
  call void @llvm.dbg.value(metadata i32 %i, metadata !5773, metadata !DIExpression()), !dbg !5774
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !5775
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !5776
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !5777
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !5778 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !5782, metadata !DIExpression()), !dbg !5785
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5783, metadata !DIExpression()), !dbg !5785
  call void @llvm.dbg.value(metadata i32 %flags, metadata !5784, metadata !DIExpression()), !dbg !5785
  %0 = and i32 %flags, 10, !dbg !5786
  %1 = icmp eq i32 %0, 8, !dbg !5786
  br i1 %1, label %cond.true, label %land.lhs.true, !dbg !5786

land.lhs.true:                                    ; preds = %entry
  %2 = and i32 %flags, 5, !dbg !5786
  %3 = icmp eq i32 %2, 4, !dbg !5786
  br i1 %3, label %cond.true, label %cond.end, !dbg !5786

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !5786
  br label %cond.end, !dbg !5786

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %tobool9 = icmp eq i32 %0, 0, !dbg !5787
  br i1 %tobool9, label %cond.end12, label %cond.true10, !dbg !5788

cond.true10:                                      ; preds = %cond.end
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #7, !dbg !5789
  br label %cond.end12, !dbg !5788

cond.end12:                                       ; preds = %cond.end, %cond.true10
  %4 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ null, %cond.end ], !dbg !5788
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !5790
  store %struct.def_optype_d* %4, %struct.def_optype_d** %defs, align 8, !dbg !5791
  %and14 = and i32 %flags, 8, !dbg !5792
  %tobool15 = icmp eq i32 %and14, 0, !dbg !5792
  br i1 %tobool15, label %land.lhs.true16, label %if.end, !dbg !5794

land.lhs.true16:                                  ; preds = %cond.end12
  %tobool18 = icmp eq %struct.def_optype_d* %4, null, !dbg !5795
  br i1 %tobool18, label %if.end, label %land.lhs.true19, !dbg !5796

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !5797
  %cmp = icmp eq %union.tree_node* %call20, null, !dbg !5798
  br i1 %cmp, label %if.end, label %if.then, !dbg !5799

if.then:                                          ; preds = %land.lhs.true19
  %5 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !5800
  %6 = load i64*, i64** %5, align 8, !dbg !5800
  %7 = load i64, i64* %6, align 8, !dbg !5801
  %8 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !5802
  store i64 %7, i64* %8, align 8, !dbg !5802
  br label %if.end, !dbg !5803

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true16, %cond.end12, %if.then
  %and23 = and i32 %flags, 5, !dbg !5804
  %tobool24 = icmp eq i32 %and23, 0, !dbg !5804
  br i1 %tobool24, label %cond.end28, label %cond.true25, !dbg !5805

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #7, !dbg !5806
  br label %cond.end28, !dbg !5805

cond.end28:                                       ; preds = %if.end, %cond.true25
  %9 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ null, %if.end ], !dbg !5805
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !5807
  store %struct.use_optype_d* %9, %struct.use_optype_d** %uses, align 8, !dbg !5808
  %and30 = and i32 %flags, 4, !dbg !5809
  %tobool31 = icmp eq i32 %and30, 0, !dbg !5809
  br i1 %tobool31, label %land.lhs.true32, label %if.end42, !dbg !5811

land.lhs.true32:                                  ; preds = %cond.end28
  %tobool34 = icmp eq %struct.use_optype_d* %9, null, !dbg !5812
  br i1 %tobool34, label %if.end42, label %land.lhs.true35, !dbg !5813

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %call36 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !5814
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !5815
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !5816

if.then38:                                        ; preds = %land.lhs.true35
  %10 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !5817
  %11 = load i64*, i64** %10, align 8, !dbg !5817
  %12 = load i64, i64* %11, align 8, !dbg !5818
  %13 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !5819
  store i64 %12, i64* %13, align 8, !dbg !5819
  br label %if.end42, !dbg !5820

if.end42:                                         ; preds = %land.lhs.true35, %land.lhs.true32, %cond.end28, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !5821
  store i8 0, i8* %done, align 8, !dbg !5822
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !5823
  store i32 0, i32* %phi_i, align 8, !dbg !5824
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !5825
  store i32 0, i32* %num_phi, align 4, !dbg !5826
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !5827
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !5828
  ret void, !dbg !5829
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5830 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5834, metadata !DIExpression()), !dbg !5835
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !5836
  %tobool = icmp eq i8 %call, 0, !dbg !5836
  br i1 %tobool, label %return, label %if.end, !dbg !5838

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !5839
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !5839
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !5839
  br label %return, !dbg !5840

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !5835
  ret %struct.def_optype_d* %retval.0, !dbg !5841
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5842 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5844, metadata !DIExpression()), !dbg !5845
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !5846
  %tobool = icmp eq i8 %call, 0, !dbg !5846
  br i1 %tobool, label %return, label %if.end, !dbg !5848

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !5849
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !5849
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !5849
  br label %return, !dbg !5850

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !5845
  ret %union.tree_node* %retval.0, !dbg !5851
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5852 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5856, metadata !DIExpression()), !dbg !5857
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !5858
  %tobool = icmp eq i8 %call, 0, !dbg !5858
  br i1 %tobool, label %return, label %if.end, !dbg !5860

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !5861
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !5861
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !5861
  br label %return, !dbg !5862

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !5857
  ret %struct.use_optype_d* %retval.0, !dbg !5863
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5864 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5866, metadata !DIExpression()), !dbg !5867
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !5868
  %tobool = icmp eq i8 %call, 0, !dbg !5868
  br i1 %tobool, label %return, label %if.end, !dbg !5870

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !5871
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !5871
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !5871
  br label %return, !dbg !5872

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !5867
  ret %union.tree_node* %retval.0, !dbg !5873
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* %def) unnamed_addr #0 !dbg !5874 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !5878, metadata !DIExpression()), !dbg !5881
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !5879, metadata !DIExpression()), !dbg !5881
  %tobool = icmp eq %union.tree_node* %def, null, !dbg !5882
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5884

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5885
  %bf.load = load i64, i64* %0, align 8, !dbg !5885
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5886
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !5886
  br i1 %cmp, label %if.else, label %if.then, !dbg !5887

if.then:                                          ; preds = %lor.lhs.false, %entry
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !5888
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !5889
  br label %if.end, !dbg !5890

if.else:                                          ; preds = %lor.lhs.false
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5891
  %1 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !5891
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %1, metadata !5880, metadata !DIExpression()), !dbg !5881
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* nonnull %1) #7, !dbg !5893
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5894
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.loop* @copy_loop_before(%struct.loop* %loop) unnamed_addr #5 !dbg !5895 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !5899, metadata !DIExpression()), !dbg !5902
  %call = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !5903
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !5901, metadata !DIExpression()), !dbg !5902
  %call1 = tail call %struct.edge_def* @single_exit(%struct.loop* %loop) #6, !dbg !5904
  %tobool = icmp eq %struct.edge_def* %call1, null, !dbg !5904
  br i1 %tobool, label %cleanup, label %if.end, !dbg !5906

if.end:                                           ; preds = %entry
  tail call void @initialize_original_copy_tables() #6, !dbg !5907
  %call2 = tail call %struct.loop* @slpeel_tree_duplicate_loop_to_edge_cfg(%struct.loop* %loop, %struct.edge_def* %call) #6, !dbg !5908
  call void @llvm.dbg.value(metadata %struct.loop* %call2, metadata !5900, metadata !DIExpression()), !dbg !5902
  tail call void @free_original_copy_tables() #6, !dbg !5909
  %tobool3 = icmp eq %struct.loop* %call2, null, !dbg !5910
  br i1 %tobool3, label %cleanup, label %if.end5, !dbg !5912

if.end5:                                          ; preds = %if.end
  tail call fastcc void @update_phis_for_loop_copy(%struct.loop* %loop, %struct.loop* nonnull %call2) #7, !dbg !5913
  tail call void @rename_variables_in_loop(%struct.loop* nonnull %call2) #6, !dbg !5914
  br label %cleanup, !dbg !5915

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi %struct.loop* [ %call2, %if.end5 ], [ null, %entry ], [ null, %if.end ], !dbg !5902
  ret %struct.loop* %retval.0, !dbg !5916
}

declare dso_local %struct.basic_block_def* @create_preheader(%struct.loop*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @create_bb_after_loop(%struct.loop* %loop) unnamed_addr #5 !dbg !5917 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !5921, metadata !DIExpression()), !dbg !5923
  %call = tail call %struct.edge_def* @single_exit(%struct.loop* %loop) #6, !dbg !5924
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !5922, metadata !DIExpression()), !dbg !5923
  %tobool = icmp eq %struct.edge_def* %call, null, !dbg !5925
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !5927

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.basic_block_def* @split_edge(%struct.edge_def* nonnull %call) #6, !dbg !5928
  br label %cleanup.cont, !dbg !5929

cleanup.cont:                                     ; preds = %entry, %if.end
  ret void, !dbg !5929
}

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @mark_virtual_ops_in_bb(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @initialize_original_copy_tables() local_unnamed_addr #2

declare dso_local %struct.loop* @slpeel_tree_duplicate_loop_to_edge_cfg(%struct.loop*, %struct.edge_def*) local_unnamed_addr #2

declare dso_local void @free_original_copy_tables() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_phis_for_loop_copy(%struct.loop* %orig_loop, %struct.loop* %new_loop) unnamed_addr #5 !dbg !5930 {
entry:
  %si_new = alloca %struct.gimple_stmt_iterator, align 8
  %si_orig = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %orig_loop, metadata !5934, metadata !DIExpression()), !dbg !5949
  call void @llvm.dbg.value(metadata %struct.loop* %new_loop, metadata !5935, metadata !DIExpression()), !dbg !5949
  %0 = bitcast %struct.gimple_stmt_iterator* %si_new to i8*, !dbg !5950
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !5950
  %1 = bitcast %struct.gimple_stmt_iterator* %si_orig to i8*, !dbg !5950
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !5950
  %call = tail call %struct.edge_def* @loop_latch_edge(%struct.loop* %orig_loop) #6, !dbg !5951
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !5939, metadata !DIExpression()), !dbg !5949
  %call1 = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %orig_loop) #6, !dbg !5952
  call void @llvm.dbg.value(metadata %struct.edge_def* %call1, metadata !5940, metadata !DIExpression()), !dbg !5949
  %call2 = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %new_loop) #6, !dbg !5953
  call void @llvm.dbg.value(metadata %struct.edge_def* %call2, metadata !5941, metadata !DIExpression()), !dbg !5949
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !5954
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !5954
  %header = getelementptr inbounds %struct.loop, %struct.loop* %new_loop, i64 0, i32 2, !dbg !5955
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !5955
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %3) #6, !dbg !5954
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !5954
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !5954
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp3 to i8*, !dbg !5956
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !5956
  %header4 = getelementptr inbounds %struct.loop, %struct.loop* %orig_loop, i64 0, i32 2, !dbg !5957
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %header4, align 8, !dbg !5957
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp3, %struct.basic_block_def* %5) #6, !dbg !5956
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !5956
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !5956
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call1, i64 0, i32 6, !dbg !5958
  %dest_idx13 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 6, !dbg !5958
  br label %for.cond, !dbg !5959

for.cond:                                         ; preds = %if.end20, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si_new, metadata !5937, metadata !DIExpression(DW_OP_deref)), !dbg !5949
  %call5 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si_new) #7, !dbg !5960
  %tobool = icmp eq i8 %call5, 0, !dbg !5960
  br i1 %tobool, label %land.rhs, label %for.end, !dbg !5961

land.rhs:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si_orig, metadata !5938, metadata !DIExpression(DW_OP_deref)), !dbg !5949
  %call6 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si_orig) #7, !dbg !5962
  %tobool7 = icmp eq i8 %call6, 0, !dbg !5963
  br i1 %tobool7, label %for.body, label %for.end, !dbg !5964

for.body:                                         ; preds = %land.rhs
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si_new, metadata !5937, metadata !DIExpression(DW_OP_deref)), !dbg !5949
  %call8 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si_new) #7, !dbg !5965
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call8, metadata !5947, metadata !DIExpression()), !dbg !5958
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si_orig, metadata !5938, metadata !DIExpression(DW_OP_deref)), !dbg !5949
  %call9 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si_orig) #7, !dbg !5966
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call9, metadata !5948, metadata !DIExpression()), !dbg !5958
  %6 = load i32, i32* %dest_idx, align 4, !dbg !5967
  %call10 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call9, i32 %6) #7, !dbg !5967
  %call11 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call10) #7, !dbg !5967
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !5942, metadata !DIExpression()), !dbg !5958
  %call12 = call fastcc i32 @gimple_phi_arg_location_from_edge(%union.gimple_statement_d* %call9, %struct.edge_def* %call1) #7, !dbg !5968
  call void @llvm.dbg.value(metadata i32 %call12, metadata !5946, metadata !DIExpression()), !dbg !5958
  call void @add_phi_arg(%union.gimple_statement_d* %call8, %union.tree_node* %call11, %struct.edge_def* %call2, i32 %call12) #6, !dbg !5969
  %7 = load i32, i32* %dest_idx13, align 4, !dbg !5970
  %call14 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call9, i32 %7) #7, !dbg !5970
  %call15 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call14) #7, !dbg !5970
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !5942, metadata !DIExpression()), !dbg !5958
  %call16 = call fastcc i32 @gimple_phi_arg_location_from_edge(%union.gimple_statement_d* %call9, %struct.edge_def* %call) #7, !dbg !5971
  call void @llvm.dbg.value(metadata i32 %call16, metadata !5946, metadata !DIExpression()), !dbg !5958
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5972
  %bf.load = load i64, i64* %8, align 8, !dbg !5972
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5974
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !5974
  br i1 %cmp, label %if.then, label %if.end20, !dbg !5975

if.then:                                          ; preds = %for.body
  %call17 = call %union.tree_node* @get_current_def(%union.tree_node* %call15) #6, !dbg !5976
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !5936, metadata !DIExpression()), !dbg !5949
  %tobool18 = icmp eq %union.tree_node* %call17, null, !dbg !5978
  %spec.select = select i1 %tobool18, %union.tree_node* %call15, %union.tree_node* %call17, !dbg !5980
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select, metadata !5936, metadata !DIExpression()), !dbg !5949
  br label %if.end20, !dbg !5981

if.end20:                                         ; preds = %for.body, %if.then
  %new_ssa_name.1 = phi %union.tree_node* [ %spec.select, %if.then ], [ %call15, %for.body ], !dbg !5982
  call void @llvm.dbg.value(metadata %union.tree_node* %new_ssa_name.1, metadata !5936, metadata !DIExpression()), !dbg !5949
  %call21 = call %struct.edge_def* @loop_latch_edge(%struct.loop* %new_loop) #6, !dbg !5983
  call void @add_phi_arg(%union.gimple_statement_d* %call8, %union.tree_node* %new_ssa_name.1, %struct.edge_def* %call21, i32 %call16) #6, !dbg !5984
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si_new, metadata !5937, metadata !DIExpression(DW_OP_deref)), !dbg !5949
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %si_new) #7, !dbg !5985
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si_orig, metadata !5938, metadata !DIExpression(DW_OP_deref)), !dbg !5949
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %si_orig) #7, !dbg !5986
  br label %for.cond, !dbg !5987, !llvm.loop !5988

for.end:                                          ; preds = %for.cond, %land.rhs
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !5990
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !5990
  ret void, !dbg !5990
}

declare dso_local void @rename_variables_in_loop(%struct.loop*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @loop_latch_edge(%struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(%union.gimple_statement_d* %gs, %struct.edge_def* %e) unnamed_addr #0 !dbg !5991 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5995, metadata !DIExpression()), !dbg !5997
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !5996, metadata !DIExpression()), !dbg !5997
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 6, !dbg !5998
  %0 = load i32, i32* %dest_idx, align 4, !dbg !5998
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %0) #7, !dbg !5999
  %locus = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 2, !dbg !6000
  %1 = load i32, i32* %locus, align 8, !dbg !6000
  ret i32 %1, !dbg !6001
}

declare dso_local void @add_phi_arg(%union.gimple_statement_d*, %union.tree_node*, %struct.edge_def*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_current_def(%union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #2

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
!llvm.module.flags = !{!2223, !2224, !2225}
!llvm.ident = !{!2226}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_loop_distribution", scope: !2, file: !3, line: 1231, type: !2197, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !658, globals: !2192, nameTableKind: None)
!3 = !DIFile(filename: "tree-loop-distribution.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560, !569, !573, !580, !619, !645, !651}
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
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !190, line: 7, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!192 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!195 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!196 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!197 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!198 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!199 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!200 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!201 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!202 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!203 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!204 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!205 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!206 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!207 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!208 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!209 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!210 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!211 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!212 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!213 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!214 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!215 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!216 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!217 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!218 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!219 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!220 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!221 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!222 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!223 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!224 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!225 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!226 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!227 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!228 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!229 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!230 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!231 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!232 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!233 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!234 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!235 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!236 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!237 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!238 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!239 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!240 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!241 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!242 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!243 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!244 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!245 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!246 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!247 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!248 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!249 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!250 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!251 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!252 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!253 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!254 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!255 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!256 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!257 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!258 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!259 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!260 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!261 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!262 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!263 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!264 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!265 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!266 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!267 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!268 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!269 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!270 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!271 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!272 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!273 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!274 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!275 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!276 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!277 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!278 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!279 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!280 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!281 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!282 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!283 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!284 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!285 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!286 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!288 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!289 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!290 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!291 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!292 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!293 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!294 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!295 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!296 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!297 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!298 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!299 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!300 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!301 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!302 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!303 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!304 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!305 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!306 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!307 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!308 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!309 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!310 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!311 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!312 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!313 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!314 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!315 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!316 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !318, line: 363, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322}
!320 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!323 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !318, line: 355, baseType: !7, size: 32, elements: !324)
!324 = !{!325, !326, !327}
!325 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!326 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!327 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !329, line: 474, baseType: !7, size: 32, elements: !330)
!329 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!330 = !{!331, !332}
!331 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!332 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!333 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !334, line: 280, baseType: !7, size: 32, elements: !335)
!334 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!336 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!337 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!338 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!339 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!340 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!341 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!342 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !334, line: 1817, baseType: !7, size: 32, elements: !353)
!353 = !{!354, !355, !356, !357, !358}
!354 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !334, line: 1805, baseType: !7, size: 32, elements: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !334, line: 39, baseType: !7, size: 32, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!368 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!369 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!372 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!373 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!374 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!375 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!376 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!377 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!378 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!379 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!380 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!381 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!382 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!383 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!384 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!385 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!386 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!387 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!388 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!389 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!390 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!391 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!392 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!393 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!394 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!395 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!396 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!397 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!398 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!399 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!400 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!401 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!402 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!403 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!404 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!405 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!406 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!407 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!408 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!409 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!410 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!411 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!412 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!413 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!414 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!415 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!416 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!417 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!418 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!419 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!420 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!421 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!422 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!423 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!424 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!425 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!426 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!427 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!428 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!429 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!430 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!431 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!432 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!433 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!434 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!435 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!436 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!437 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!438 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!439 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!440 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!441 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!442 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!443 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!444 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!445 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!446 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!447 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!448 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!449 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!450 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!451 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!452 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!453 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!454 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!455 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!456 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!457 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!458 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!459 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!460 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!461 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!462 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!463 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!464 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!465 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!466 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!467 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!468 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!469 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!470 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!471 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!472 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!473 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!474 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!475 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!476 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!477 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!478 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!479 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!480 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!481 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!482 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!483 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!484 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!485 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!486 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!487 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!488 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!489 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!490 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!491 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!492 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!493 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!494 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!495 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!496 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!497 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!498 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!499 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!500 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!501 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!502 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!503 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!504 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!505 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!506 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!507 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!508 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!509 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!510 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!511 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!512 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!513 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!514 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!515 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!516 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!517 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!518 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!519 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!520 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!521 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!522 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!523 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!524 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!525 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!526 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!527 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!528 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!529 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!530 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!531 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!532 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!533 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!534 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!535 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!536 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!537 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!538 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!539 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!540 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!541 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!542 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!543 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!544 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!545 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!546 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!547 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!548 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!549 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!550 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!551 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!552 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!553 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!554 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!555 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!556 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!557 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!558 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!559 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !561, line: 31, baseType: !7, size: 32, elements: !562)
!561 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!562 = !{!563, !564, !565, !566, !567, !568}
!563 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!564 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!565 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!566 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!567 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!568 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!569 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !561, line: 91, baseType: !7, size: 32, elements: !570)
!570 = !{!571, !572}
!571 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!572 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!573 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rdg_dep_type", file: !574, line: 514, baseType: !7, size: 32, elements: !575)
!574 = !DIFile(filename: "./tree-data-ref.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!575 = !{!576, !577, !578, !579}
!576 = !DIEnumerator(name: "flow_dd", value: 102, isUnsigned: true)
!577 = !DIEnumerator(name: "anti_dd", value: 97, isUnsigned: true)
!578 = !DIEnumerator(name: "output_dd", value: 111, isUnsigned: true)
!579 = !DIEnumerator(name: "input_dd", value: 105, isUnsigned: true)
!580 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !581, line: 51, baseType: !7, size: 32, elements: !582)
!581 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!583 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!584 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!585 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!586 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!587 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!588 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!589 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!590 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!591 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!592 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!593 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!594 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!595 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!596 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!597 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!598 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!599 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!600 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!601 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!602 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!603 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!604 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!605 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!606 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!607 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!608 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!609 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!610 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!611 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!612 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!613 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!614 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!615 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!616 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!617 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!618 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!619 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !581, line: 727, baseType: !7, size: 32, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!621 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!622 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!623 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!624 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!625 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!626 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!627 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!628 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!629 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!630 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!631 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!632 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!633 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!634 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!635 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!636 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!637 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!638 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!639 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!640 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!641 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!642 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!643 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!644 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!645 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !581, line: 80, baseType: !7, size: 32, elements: !646)
!646 = !{!647, !648, !649, !650}
!647 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!648 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!649 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!650 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!651 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !652, line: 119, baseType: !7, size: 32, elements: !653)
!652 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!653 = !{!654, !655, !656, !657}
!654 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!655 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!656 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!657 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!658 = !{!659, !660, !661, !662, !665, !666, !668, !731, !746, !2033, !789, !7, !2038, !2044, !2062, !2074, !2186, !2057, !2056, !2187, !366, !790, !2190, !814, !1334, !663, !769, !645, !2085, !809}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!661 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !669, line: 47, baseType: !670)
!669 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !672, line: 75, size: 256, elements: !673)
!672 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!673 = !{!674, !689, !690, !691}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !671, file: !672, line: 76, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !672, line: 68, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !672, line: 63, size: 320, elements: !678)
!678 = !{!679, !681, !682, !683}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !677, file: !672, line: 64, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !677, file: !672, line: 65, baseType: !680, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !677, file: !672, line: 66, baseType: !7, size: 32, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !677, file: !672, line: 67, baseType: !684, size: 128, offset: 192)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 128, elements: !687)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !672, line: 29, baseType: !686)
!686 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!687 = !{!688}
!688 = !DISubrange(count: 2)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !671, file: !672, line: 77, baseType: !675, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !671, file: !672, line: 78, baseType: !7, size: 32, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !671, file: !672, line: 79, baseType: !692, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !672, line: 49, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !672, line: 45, size: 832, elements: !695)
!695 = !{!696, !697, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !694, file: !672, line: 46, baseType: !680, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !694, file: !672, line: 47, baseType: !670, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !694, file: !672, line: 48, baseType: !699, size: 704, offset: 128)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !700, line: 164, size: 704, elements: !701)
!700 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!701 = !{!702, !704, !714, !715, !716, !717, !718, !719, !723, !727, !728, !729, !730}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !699, file: !700, line: 166, baseType: !703, size: 64)
!703 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !699, file: !700, line: 167, baseType: !705, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !700, line: 157, size: 192, elements: !707)
!707 = !{!708, !709, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !706, file: !700, line: 159, baseType: !663, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !706, file: !700, line: 160, baseType: !705, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !706, file: !700, line: 161, baseType: !711, size: 32, offset: 128)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 32, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 4)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !699, file: !700, line: 168, baseType: !663, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !699, file: !700, line: 169, baseType: !663, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !699, file: !700, line: 170, baseType: !663, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !699, file: !700, line: 171, baseType: !703, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !699, file: !700, line: 172, baseType: !661, size: 32, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !699, file: !700, line: 176, baseType: !720, size: 64, offset: 448)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!705, !665, !703}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !699, file: !700, line: 177, baseType: !724, size: 64, offset: 512)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !665, !705}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !699, file: !700, line: 178, baseType: !665, size: 64, offset: 576)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !699, file: !700, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !699, file: !700, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !699, file: !700, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !733, line: 32, baseType: !734)
!733 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !733, line: 32, size: 96, elements: !735)
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !734, file: !733, line: 32, baseType: !737, size: 96)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !733, line: 31, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !733, line: 31, size: 96, elements: !739)
!739 = !{!740, !741, !742}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !738, file: !733, line: 31, baseType: !7, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !738, file: !733, line: 31, baseType: !7, size: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !738, file: !733, line: 31, baseType: !743, size: 32, offset: 64)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 32, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 1)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !561, line: 84, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !561, line: 100, size: 1216, elements: !749)
!749 = !{!750, !751, !752, !1997, !1998, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2023, !2031, !2032}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !748, file: !561, line: 102, baseType: !661, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !748, file: !561, line: 105, baseType: !7, size: 32, offset: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !748, file: !561, line: 108, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !755)
!755 = !{!756, !1964, !1965, !1966, !1967, !1971, !1972, !1973, !1991, !1992, !1993, !1994, !1995, !1996}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !754, file: !318, line: 219, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !759)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !759, file: !318, line: 151, baseType: !762, size: 128)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !764)
!764 = !{!765, !766, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !763, file: !318, line: 150, baseType: !7, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !763, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !763, file: !318, line: 150, baseType: !768, size: 64, offset: 64)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 64, elements: !744)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !669, line: 108, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !772)
!772 = !{!773, !774, !775, !1956, !1957, !1958, !1959, !1960, !1961, !1962}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !771, file: !318, line: 124, baseType: !753, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !771, file: !318, line: 125, baseType: !753, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !771, file: !318, line: 131, baseType: !776, size: 64, offset: 128)
!776 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !777)
!777 = !{!778, !1955}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !776, file: !318, line: 129, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !669, line: 66, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !581, line: 143, size: 192, elements: !782)
!782 = !{!783, !1953, !1954}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !781, file: !581, line: 145, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !669, line: 69, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !581, line: 136, size: 192, elements: !787)
!787 = !{!788, !1951, !1952}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !786, file: !581, line: 137, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !669, line: 58, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !581, line: 737, size: 768, elements: !792)
!792 = !{!793, !1798, !1808, !1814, !1819, !1824, !1831, !1837, !1843, !1848, !1862, !1867, !1873, !1878, !1888, !1893, !1909, !1916, !1923, !1929, !1934, !1940, !1946}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !791, file: !581, line: 738, baseType: !794, size: 256)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !581, line: 271, size: 256, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !811, !812, !813}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !794, file: !581, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !794, file: !581, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !794, file: !581, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !794, file: !581, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !794, file: !581, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !794, file: !581, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !794, file: !581, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !794, file: !581, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !794, file: !581, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !794, file: !581, line: 312, baseType: !7, size: 32, offset: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !794, file: !581, line: 316, baseType: !807, size: 32, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !808, line: 58, baseType: !809)
!808 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !810, line: 44, baseType: !7)
!810 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!811 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !794, file: !581, line: 319, baseType: !7, size: 32, offset: 96)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !794, file: !581, line: 323, baseType: !753, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !794, file: !581, line: 327, baseType: !814, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !669, line: 56, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !817)
!817 = !{!818, !851, !857, !868, !887, !898, !903, !910, !916, !929, !937, !975, !1090, !1118, !1135, !1136, !1141, !1150, !1156, !1161, !1165, !1169, !1449, !1496, !1502, !1508, !1515, !1528, !1542, !1559, !1571, !1593, !1608, !1780}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !816, file: !334, line: 3372, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !820)
!820 = !{!821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !819, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !819, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !819, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !819, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !819, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !819, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !819, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !819, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !819, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !819, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !819, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !819, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !819, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !819, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !819, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !819, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !819, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !819, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !819, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !819, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !819, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !819, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !819, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !819, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !819, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !819, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !819, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !819, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !819, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !819, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !816, file: !334, line: 3373, baseType: !852, size: 192)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !853)
!853 = !{!854, !855, !856}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !852, file: !334, line: 403, baseType: !819, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !852, file: !334, line: 404, baseType: !814, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !852, file: !334, line: 405, baseType: !814, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !816, file: !334, line: 3374, baseType: !858, size: 320)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !858, file: !334, line: 1385, baseType: !852, size: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !858, file: !334, line: 1386, baseType: !862, size: 128, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !863, line: 58, baseType: !864)
!863 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 54, size: 128, elements: !865)
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !864, file: !863, line: 56, baseType: !686, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !864, file: !863, line: 57, baseType: !703, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !816, file: !334, line: 3375, baseType: !869, size: 256)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !869, file: !334, line: 1398, baseType: !852, size: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !869, file: !334, line: 1399, baseType: !873, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !875, line: 52, size: 256, elements: !876)
!875 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!876 = !{!877, !878, !879, !880, !881, !882, !883}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !874, file: !875, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !874, file: !875, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !874, file: !875, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !874, file: !875, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !874, file: !875, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !874, file: !875, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !874, file: !875, line: 62, baseType: !884, size: 192, offset: 64)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 192, elements: !885)
!885 = !{!886}
!886 = !DISubrange(count: 3)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !816, file: !334, line: 3376, baseType: !888, size: 256)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !888, file: !334, line: 1409, baseType: !852, size: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !888, file: !334, line: 1410, baseType: !892, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !894, line: 27, size: 192, elements: !895)
!894 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !893, file: !894, line: 29, baseType: !862, size: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !893, file: !894, line: 30, baseType: !189, size: 32, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !816, file: !334, line: 3377, baseType: !899, size: 256)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !899, file: !334, line: 1438, baseType: !852, size: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !899, file: !334, line: 1439, baseType: !814, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !816, file: !334, line: 3378, baseType: !904, size: 256)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !905)
!905 = !{!906, !907, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !904, file: !334, line: 1419, baseType: !852, size: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !904, file: !334, line: 1420, baseType: !661, size: 32, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !904, file: !334, line: 1421, baseType: !909, size: 8, offset: 224)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 8, elements: !744)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !816, file: !334, line: 3379, baseType: !911, size: 320)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !912)
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !911, file: !334, line: 1429, baseType: !852, size: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !911, file: !334, line: 1430, baseType: !814, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !911, file: !334, line: 1431, baseType: !814, size: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !816, file: !334, line: 3380, baseType: !917, size: 320)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !917, file: !334, line: 1461, baseType: !852, size: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !917, file: !334, line: 1462, baseType: !921, size: 128, offset: 192)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !922, line: 31, size: 128, elements: !923)
!922 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!923 = !{!924, !927, !928}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !921, file: !922, line: 32, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !921, file: !922, line: 33, baseType: !7, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !921, file: !922, line: 34, baseType: !7, size: 32, offset: 96)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !816, file: !334, line: 3381, baseType: !930, size: 384)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !931)
!931 = !{!932, !933, !934, !935, !936}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !930, file: !334, line: 2508, baseType: !852, size: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !930, file: !334, line: 2509, baseType: !807, size: 32, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !930, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !930, file: !334, line: 2511, baseType: !814, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !930, file: !334, line: 2512, baseType: !814, size: 64, offset: 320)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !816, file: !334, line: 3382, baseType: !938, size: 896)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !939)
!939 = !{!940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !938, file: !334, line: 2653, baseType: !930, size: 384)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !938, file: !334, line: 2654, baseType: !814, size: 64, offset: 384)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !938, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !938, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !938, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !938, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !938, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !938, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !938, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !938, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !938, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !938, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !938, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !938, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !938, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !938, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !938, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !938, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !938, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !938, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !938, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !938, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !938, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !938, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !938, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !938, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !938, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !938, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !938, file: !334, line: 2705, baseType: !814, size: 64, offset: 576)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !938, file: !334, line: 2706, baseType: !814, size: 64, offset: 640)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !938, file: !334, line: 2707, baseType: !814, size: 64, offset: 704)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !938, file: !334, line: 2708, baseType: !814, size: 64, offset: 768)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !938, file: !334, line: 2711, baseType: !973, size: 64, offset: 832)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !816, file: !334, line: 3383, baseType: !976, size: 960)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !976, file: !334, line: 2757, baseType: !938, size: 896)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !976, file: !334, line: 2758, baseType: !980, size: 64, offset: 896)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !669, line: 50, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !983, line: 240, size: 384, elements: !984)
!983 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!984 = !{!985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !982, file: !983, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !982, file: !983, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !982, file: !983, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !982, file: !983, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !982, file: !983, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !982, file: !983, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !982, file: !983, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !982, file: !983, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !982, file: !983, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !982, file: !983, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !982, file: !983, line: 321, baseType: !996, size: 320, offset: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !983, line: 315, size: 320, elements: !997)
!997 = !{!998, !1057, !1059, !1088, !1089}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !996, file: !983, line: 316, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 64, elements: !744)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !983, line: 183, baseType: !1001)
!1001 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !983, line: 166, size: 64, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1015, !1016, !1028, !1031, !1032, !1033, !1034, !1047, !1054}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !1001, file: !983, line: 168, baseType: !661, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !1001, file: !983, line: 169, baseType: !7, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !1001, file: !983, line: 170, baseType: !666, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !1001, file: !983, line: 171, baseType: !980, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !1001, file: !983, line: 172, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !669, line: 53, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !983, line: 359, size: 128, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !1010, file: !983, line: 360, baseType: !661, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1010, file: !983, line: 361, baseType: !1014, size: 64, offset: 64)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, size: 64, elements: !744)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !1001, file: !983, line: 173, baseType: !189, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !1001, file: !983, line: 174, baseType: !1017, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !983, line: 133, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !983, line: 115, size: 32, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !1018, file: !983, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !1018, file: !983, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !1018, file: !983, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !1018, file: !983, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !1018, file: !983, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !1018, file: !983, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !1018, file: !983, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !1018, file: !983, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !1001, file: !983, line: 175, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !983, line: 175, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !1001, file: !983, line: 176, baseType: !670, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !1001, file: !983, line: 177, baseType: !814, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !1001, file: !983, line: 178, baseType: !753, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !1001, file: !983, line: 179, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !983, line: 150, baseType: !1037)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !983, line: 142, size: 320, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1045, !1046}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1037, file: !983, line: 144, baseType: !814, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1037, file: !983, line: 145, baseType: !980, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1037, file: !983, line: 146, baseType: !980, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1037, file: !983, line: 147, baseType: !1043, size: 32, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1044, line: 31, baseType: !661)
!1044 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1037, file: !983, line: 148, baseType: !7, size: 32, offset: 224)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1037, file: !983, line: 149, baseType: !660, size: 8, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !1001, file: !983, line: 180, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !983, line: 162, baseType: !1050)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !983, line: 159, size: 128, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1050, file: !983, line: 160, baseType: !814, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1050, file: !983, line: 161, baseType: !703, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !1001, file: !983, line: 181, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !983, line: 181, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !996, file: !983, line: 317, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !703, size: 64, elements: !744)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !996, file: !983, line: 318, baseType: !1060, size: 320)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !983, line: 188, size: 320, elements: !1061)
!1061 = !{!1062, !1064, !1087}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1060, file: !983, line: 190, baseType: !1063, size: 192)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 192, elements: !885)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1060, file: !983, line: 193, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !983, line: 206, size: 320, elements: !1067)
!1067 = !{!1068, !1072, !1073, !1074, !1086}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1066, file: !983, line: 208, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !669, line: 62, baseType: !1071)
!1071 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !669, line: 61, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1066, file: !983, line: 211, baseType: !7, size: 32, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1066, file: !983, line: 214, baseType: !703, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1066, file: !983, line: 224, baseType: !1075, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !983, line: 202, baseType: !1077)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !983, line: 202, size: 128, elements: !1078)
!1078 = !{!1079}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1077, file: !983, line: 202, baseType: !1080, size: 128)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !983, line: 200, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !983, line: 200, size: 128, elements: !1082)
!1082 = !{!1083, !1084, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1081, file: !983, line: 200, baseType: !7, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1081, file: !983, line: 200, baseType: !7, size: 32, offset: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1081, file: !983, line: 200, baseType: !1014, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1066, file: !983, line: 234, baseType: !1075, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1060, file: !983, line: 197, baseType: !703, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !996, file: !983, line: 319, baseType: !874, size: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !996, file: !983, line: 320, baseType: !893, size: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !816, file: !334, line: 3384, baseType: !1091, size: 1472)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1092)
!1092 = !{!1093, !1114, !1115, !1116, !1117}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1091, file: !334, line: 3115, baseType: !1094, size: 1216)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1094, file: !334, line: 2985, baseType: !976, size: 960)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1094, file: !334, line: 2986, baseType: !814, size: 64, offset: 960)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1094, file: !334, line: 2987, baseType: !814, size: 64, offset: 1024)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1094, file: !334, line: 2988, baseType: !814, size: 64, offset: 1088)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1094, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1094, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1094, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1094, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1094, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1094, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1094, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1094, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1094, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1094, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1094, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1094, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1094, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1094, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1091, file: !334, line: 3117, baseType: !814, size: 64, offset: 1216)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1091, file: !334, line: 3119, baseType: !814, size: 64, offset: 1280)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1091, file: !334, line: 3121, baseType: !814, size: 64, offset: 1344)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1091, file: !334, line: 3123, baseType: !814, size: 64, offset: 1408)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !816, file: !334, line: 3385, baseType: !1119, size: 1088)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1120)
!1120 = !{!1121, !1122, !1123}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1119, file: !334, line: 2875, baseType: !976, size: 960)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1119, file: !334, line: 2876, baseType: !980, size: 64, offset: 960)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1119, file: !334, line: 2877, baseType: !1124, size: 64, offset: 1024)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1126, line: 172, size: 128, elements: !1127)
!1126 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1134}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1125, file: !1126, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1125, file: !1126, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1125, file: !1126, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1125, file: !1126, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1125, file: !1126, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1125, file: !1126, line: 195, baseType: !7, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1125, file: !1126, line: 199, baseType: !814, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !816, file: !334, line: 3386, baseType: !1094, size: 1216)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !816, file: !334, line: 3387, baseType: !1137, size: 1280)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1137, file: !334, line: 3094, baseType: !1094, size: 1216)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1137, file: !334, line: 3095, baseType: !1124, size: 64, offset: 1216)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !816, file: !334, line: 3388, baseType: !1142, size: 1216)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1142, file: !334, line: 2825, baseType: !938, size: 896)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1142, file: !334, line: 2827, baseType: !814, size: 64, offset: 896)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1142, file: !334, line: 2828, baseType: !814, size: 64, offset: 960)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1142, file: !334, line: 2829, baseType: !814, size: 64, offset: 1024)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1142, file: !334, line: 2830, baseType: !814, size: 64, offset: 1088)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1142, file: !334, line: 2831, baseType: !814, size: 64, offset: 1152)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !816, file: !334, line: 3389, baseType: !1151, size: 1024)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1152)
!1152 = !{!1153, !1154, !1155}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1151, file: !334, line: 2851, baseType: !976, size: 960)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1151, file: !334, line: 2852, baseType: !661, size: 32, offset: 960)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1151, file: !334, line: 2853, baseType: !661, size: 32, offset: 992)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !816, file: !334, line: 3390, baseType: !1157, size: 1024)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1157, file: !334, line: 2858, baseType: !976, size: 960)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1157, file: !334, line: 2859, baseType: !1124, size: 64, offset: 960)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !816, file: !334, line: 3391, baseType: !1162, size: 960)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1163)
!1163 = !{!1164}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1162, file: !334, line: 2863, baseType: !976, size: 960)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !816, file: !334, line: 3392, baseType: !1166, size: 1472)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1167)
!1167 = !{!1168}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1166, file: !334, line: 3305, baseType: !1091, size: 1472)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !816, file: !334, line: 3393, baseType: !1170, size: 1792)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1171)
!1171 = !{!1172, !1173, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1170, file: !334, line: 3249, baseType: !1091, size: 1472)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1170, file: !334, line: 3251, baseType: !1174, size: 64, offset: 1472)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1176, line: 463, size: 1152, elements: !1177)
!1176 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1177 = !{!1178, !1181, !1212, !1213, !1352, !1372, !1373, !1374, !1375, !1376, !1377, !1401, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1175, file: !1176, line: 464, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1176, line: 464, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1175, file: !1176, line: 467, baseType: !1182, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1184)
!1184 = !{!1185, !1187, !1188, !1201, !1202, !1203, !1204, !1205, !1206, !1208, !1210, !1211}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1183, file: !318, line: 377, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !669, line: 111, baseType: !753)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1183, file: !318, line: 378, baseType: !1186, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1183, file: !318, line: 381, baseType: !1189, size: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1191, file: !318, line: 282, baseType: !1194, size: 128)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !1195)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !1196)
!1196 = !{!1197, !1198, !1199}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1195, file: !318, line: 281, baseType: !7, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1195, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1195, file: !318, line: 281, baseType: !1200, size: 64, offset: 64)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1186, size: 64, elements: !744)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1183, file: !318, line: 384, baseType: !661, size: 32, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1183, file: !318, line: 387, baseType: !661, size: 32, offset: 224)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1183, file: !318, line: 390, baseType: !661, size: 32, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1183, file: !318, line: 394, baseType: !1189, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1183, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1183, file: !318, line: 399, baseType: !1207, size: 64, offset: 416)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !687)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1183, file: !318, line: 402, baseType: !1209, size: 64, offset: 480)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !687)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1183, file: !318, line: 406, baseType: !661, size: 32, offset: 544)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1183, file: !318, line: 409, baseType: !661, size: 32, offset: 576)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1175, file: !1176, line: 470, baseType: !780, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1175, file: !1176, line: 473, baseType: !1214, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1126, line: 39, size: 1152, elements: !1216)
!1216 = !{!1217, !1269, !1282, !1295, !1296, !1307, !1308, !1312, !1313, !1314, !1315, !1316}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1215, file: !1126, line: 41, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1219, line: 144, baseType: !1220)
!1219 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1219, line: 100, size: 896, elements: !1222)
!1222 = !{!1223, !1231, !1236, !1241, !1243, !1246, !1247, !1248, !1249, !1250, !1255, !1257, !1258, !1263, !1268}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1221, file: !1219, line: 102, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1219, line: 52, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1219, line: 47, baseType: !7)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1221, file: !1219, line: 105, baseType: !1232, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1219, line: 59, baseType: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!661, !1229, !1229}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1221, file: !1219, line: 108, baseType: !1237, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1219, line: 63, baseType: !1238)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !665}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1221, file: !1219, line: 111, baseType: !1242, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1221, file: !1219, line: 114, baseType: !1244, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1245, line: 46, baseType: !686)
!1245 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1221, file: !1219, line: 117, baseType: !1244, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1221, file: !1219, line: 120, baseType: !1244, size: 64, offset: 384)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1221, file: !1219, line: 124, baseType: !7, size: 32, offset: 448)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1221, file: !1219, line: 128, baseType: !7, size: 32, offset: 480)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1221, file: !1219, line: 131, baseType: !1251, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1219, line: 75, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!665, !1244, !1244}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1221, file: !1219, line: 132, baseType: !1256, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1219, line: 78, baseType: !1238)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1221, file: !1219, line: 135, baseType: !665, size: 64, offset: 640)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1221, file: !1219, line: 136, baseType: !1259, size: 64, offset: 704)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1219, line: 82, baseType: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!665, !665, !1244, !1244}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1221, file: !1219, line: 137, baseType: !1264, size: 64, offset: 768)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1219, line: 83, baseType: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !665, !665}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1221, file: !1219, line: 141, baseType: !7, size: 32, offset: 832)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1215, file: !1126, line: 48, baseType: !1270, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !581, line: 35, baseType: !1272)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !581, line: 35, size: 128, elements: !1273)
!1273 = !{!1274}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1272, file: !581, line: 35, baseType: !1275, size: 128)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !581, line: 33, baseType: !1276)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !581, line: 33, size: 128, elements: !1277)
!1277 = !{!1278, !1279, !1280}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1276, file: !581, line: 33, baseType: !7, size: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1276, file: !581, line: 33, baseType: !7, size: 32, offset: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1276, file: !581, line: 33, baseType: !1281, size: 64, offset: 64)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 64, elements: !744)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1215, file: !1126, line: 51, baseType: !1283, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1286)
!1286 = !{!1287}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1285, file: !334, line: 183, baseType: !1288, size: 128)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1289)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1290)
!1290 = !{!1291, !1292, !1293}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1289, file: !334, line: 182, baseType: !7, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1289, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1289, file: !334, line: 182, baseType: !1294, size: 64, offset: 64)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 64, elements: !744)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1215, file: !1126, line: 54, baseType: !814, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1215, file: !1126, line: 57, baseType: !1297, size: 128, offset: 256)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1298, line: 31, size: 128, elements: !1299)
!1298 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1305, !1306}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1297, file: !1298, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1297, file: !1298, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1297, file: !1298, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1297, file: !1298, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1297, file: !1298, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1297, file: !1298, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1297, file: !1298, line: 56, baseType: !668, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1215, file: !1126, line: 60, baseType: !1297, size: 128, offset: 384)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1215, file: !1126, line: 64, baseType: !1309, size: 64, offset: 512)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1311, line: 33, flags: DIFlagFwdDecl)
!1311 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1215, file: !1126, line: 67, baseType: !814, size: 64, offset: 576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1215, file: !1126, line: 73, baseType: !1218, size: 64, offset: 640)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1215, file: !1126, line: 77, baseType: !668, size: 64, offset: 704)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1215, file: !1126, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1215, file: !1126, line: 82, baseType: !1317, size: 320, offset: 832)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !652, line: 62, size: 320, elements: !1318)
!1318 = !{!1319, !1325, !1326, !1327, !1328, !1335}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1317, file: !652, line: 63, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !652, line: 56, size: 128, elements: !1322)
!1322 = !{!1323, !1324}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1321, file: !652, line: 57, baseType: !1320, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1321, file: !652, line: 58, baseType: !909, size: 8, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1317, file: !652, line: 64, baseType: !7, size: 32, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1317, file: !652, line: 66, baseType: !7, size: 32, offset: 96)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1317, file: !652, line: 68, baseType: !660, size: 8, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1317, file: !652, line: 70, baseType: !1329, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !652, line: 37, size: 128, elements: !1331)
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1330, file: !652, line: 39, baseType: !1329, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1330, file: !652, line: 40, baseType: !1334, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1317, file: !652, line: 71, baseType: !1336, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !652, line: 45, size: 320, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1337, file: !652, line: 47, baseType: !1336, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1337, file: !652, line: 48, baseType: !1341, size: 256, offset: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !1342)
!1342 = !{!1343, !1345, !1346, !1351}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1341, file: !334, line: 1884, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1341, file: !334, line: 1885, baseType: !1344, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1341, file: !334, line: 1891, baseType: !1347, size: 64, offset: 128)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1341, file: !334, line: 1891, size: 64, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1347, file: !334, line: 1891, baseType: !789, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1347, file: !334, line: 1891, baseType: !814, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1341, file: !334, line: 1892, baseType: !1334, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1175, file: !1176, line: 476, baseType: !1353, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !561, line: 187, size: 256, elements: !1355)
!1355 = !{!1356, !1357, !1370, !1371}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1354, file: !561, line: 189, baseType: !661, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1354, file: !561, line: 192, baseType: !1358, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !561, line: 87, baseType: !1360)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !561, line: 87, size: 128, elements: !1361)
!1361 = !{!1362}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1360, file: !561, line: 87, baseType: !1363, size: 128)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !561, line: 85, baseType: !1364)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !561, line: 85, size: 128, elements: !1365)
!1365 = !{!1366, !1367, !1368}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1364, file: !561, line: 85, baseType: !7, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1364, file: !561, line: 85, baseType: !7, size: 32, offset: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1364, file: !561, line: 85, baseType: !1369, size: 64, offset: 64)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 64, elements: !744)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1354, file: !561, line: 197, baseType: !1218, size: 64, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1354, file: !561, line: 200, baseType: !747, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1175, file: !1176, line: 479, baseType: !1218, size: 64, offset: 320)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1175, file: !1176, line: 484, baseType: !814, size: 64, offset: 384)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1175, file: !1176, line: 488, baseType: !814, size: 64, offset: 448)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1175, file: !1176, line: 493, baseType: !814, size: 64, offset: 512)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1175, file: !1176, line: 496, baseType: !814, size: 64, offset: 576)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1175, file: !1176, line: 501, baseType: !1378, size: 64, offset: 640)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !1380)
!1380 = !{!1381, !1384, !1385, !1386, !1387, !1389, !1390, !1395, !1396, !1397, !1398, !1399, !1400}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1379, file: !329, line: 2356, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1379, file: !329, line: 2357, baseType: !666, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1379, file: !329, line: 2358, baseType: !661, size: 32, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1379, file: !329, line: 2359, baseType: !661, size: 32, offset: 160)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1379, file: !329, line: 2360, baseType: !1388, size: 128, offset: 192)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 128, elements: !712)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1379, file: !329, line: 2364, baseType: !661, size: 32, offset: 320)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1379, file: !329, line: 2367, baseType: !1391, size: 128, offset: 384)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1391, file: !329, line: 2351, baseType: !980, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1391, file: !329, line: 2352, baseType: !703, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1379, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1379, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1379, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1379, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1379, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1379, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1175, file: !1176, line: 504, baseType: !1402, size: 64, offset: 704)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1176, line: 504, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1175, file: !1176, line: 507, baseType: !1218, size: 64, offset: 768)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1175, file: !1176, line: 510, baseType: !661, size: 32, offset: 832)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1175, file: !1176, line: 513, baseType: !661, size: 32, offset: 864)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1175, file: !1176, line: 516, baseType: !807, size: 32, offset: 896)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1175, file: !1176, line: 519, baseType: !807, size: 32, offset: 928)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1175, file: !1176, line: 522, baseType: !7, size: 32, offset: 960)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1175, file: !1176, line: 523, baseType: !7, size: 32, offset: 992)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1175, file: !1176, line: 528, baseType: !666, size: 64, offset: 1024)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1175, file: !1176, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1175, file: !1176, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1175, file: !1176, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1175, file: !1176, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1175, file: !1176, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1175, file: !1176, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1175, file: !1176, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1175, file: !1176, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1175, file: !1176, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1175, file: !1176, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1175, file: !1176, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1175, file: !1176, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1175, file: !1176, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1175, file: !1176, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1175, file: !1176, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1175, file: !1176, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1170, file: !334, line: 3254, baseType: !814, size: 64, offset: 1536)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1170, file: !334, line: 3257, baseType: !814, size: 64, offset: 1600)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1170, file: !334, line: 3258, baseType: !814, size: 64, offset: 1664)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1170, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1170, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1170, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1170, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1170, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1170, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1170, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1170, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1170, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1170, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1170, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1170, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1170, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1170, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1170, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1170, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1170, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1170, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !816, file: !334, line: 3394, baseType: !1450, size: 1344)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !1451)
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1450, file: !334, line: 2280, baseType: !852, size: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1450, file: !334, line: 2281, baseType: !814, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1450, file: !334, line: 2282, baseType: !814, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1450, file: !334, line: 2283, baseType: !814, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1450, file: !334, line: 2284, baseType: !814, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1450, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1450, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1450, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1450, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1450, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1450, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1450, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1450, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1450, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1450, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1450, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1450, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1450, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1450, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1450, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1450, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1450, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1450, file: !334, line: 2306, baseType: !1043, size: 32, offset: 544)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1450, file: !334, line: 2307, baseType: !814, size: 64, offset: 576)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1450, file: !334, line: 2308, baseType: !814, size: 64, offset: 640)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1450, file: !334, line: 2314, baseType: !1478, size: 64, offset: 704)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !1479)
!1479 = !{!1480, !1481, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1478, file: !334, line: 2310, baseType: !661, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1478, file: !334, line: 2311, baseType: !666, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1478, file: !334, line: 2312, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1450, file: !334, line: 2315, baseType: !814, size: 64, offset: 768)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1450, file: !334, line: 2316, baseType: !814, size: 64, offset: 832)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1450, file: !334, line: 2317, baseType: !814, size: 64, offset: 896)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1450, file: !334, line: 2318, baseType: !814, size: 64, offset: 960)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1450, file: !334, line: 2319, baseType: !814, size: 64, offset: 1024)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1450, file: !334, line: 2320, baseType: !814, size: 64, offset: 1088)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1450, file: !334, line: 2321, baseType: !814, size: 64, offset: 1152)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1450, file: !334, line: 2322, baseType: !814, size: 64, offset: 1216)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1450, file: !334, line: 2324, baseType: !1494, size: 64, offset: 1280)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !816, file: !334, line: 3395, baseType: !1497, size: 320)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !1498)
!1498 = !{!1499, !1500, !1501}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1497, file: !334, line: 1470, baseType: !852, size: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1497, file: !334, line: 1471, baseType: !814, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1497, file: !334, line: 1472, baseType: !814, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !816, file: !334, line: 3396, baseType: !1503, size: 320)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !1504)
!1504 = !{!1505, !1506, !1507}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1503, file: !334, line: 1483, baseType: !852, size: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1503, file: !334, line: 1484, baseType: !661, size: 32, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1503, file: !334, line: 1485, baseType: !1294, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !816, file: !334, line: 3397, baseType: !1509, size: 384)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1514}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1509, file: !334, line: 1830, baseType: !852, size: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1509, file: !334, line: 1831, baseType: !807, size: 32, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1509, file: !334, line: 1832, baseType: !814, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1509, file: !334, line: 1835, baseType: !1294, size: 64, offset: 320)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !816, file: !334, line: 3398, baseType: !1516, size: 704)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !1517)
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1527}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1516, file: !334, line: 1899, baseType: !852, size: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1516, file: !334, line: 1902, baseType: !814, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1516, file: !334, line: 1905, baseType: !789, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1516, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1516, file: !334, line: 1911, baseType: !1523, size: 64, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1126, line: 117, size: 128, elements: !1525)
!1525 = !{!1526}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1524, file: !1126, line: 120, baseType: !1297, size: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1516, file: !334, line: 1914, baseType: !1341, size: 256, offset: 448)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !816, file: !334, line: 3399, baseType: !1529, size: 704)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1529, file: !334, line: 2009, baseType: !852, size: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1529, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1529, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1529, file: !334, line: 2014, baseType: !807, size: 32, offset: 224)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1529, file: !334, line: 2016, baseType: !814, size: 64, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1529, file: !334, line: 2017, baseType: !1283, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1529, file: !334, line: 2019, baseType: !814, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1529, file: !334, line: 2020, baseType: !814, size: 64, offset: 448)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1529, file: !334, line: 2021, baseType: !814, size: 64, offset: 512)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1529, file: !334, line: 2022, baseType: !814, size: 64, offset: 576)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1529, file: !334, line: 2023, baseType: !814, size: 64, offset: 640)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !816, file: !334, line: 3400, baseType: !1543, size: 832)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !1544)
!1544 = !{!1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1543, file: !334, line: 2431, baseType: !852, size: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1543, file: !334, line: 2433, baseType: !814, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1543, file: !334, line: 2434, baseType: !814, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1543, file: !334, line: 2435, baseType: !814, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1543, file: !334, line: 2436, baseType: !814, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1543, file: !334, line: 2437, baseType: !1283, size: 64, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1543, file: !334, line: 2438, baseType: !814, size: 64, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1543, file: !334, line: 2440, baseType: !814, size: 64, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1543, file: !334, line: 2441, baseType: !814, size: 64, offset: 640)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1543, file: !334, line: 2443, baseType: !1555, size: 128, offset: 704)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !1556)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !1557)
!1557 = !{!1558}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1556, file: !334, line: 182, baseType: !1288, size: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !816, file: !334, line: 3401, baseType: !1560, size: 320)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !1561)
!1561 = !{!1562, !1563, !1570}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1560, file: !334, line: 3329, baseType: !852, size: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1560, file: !334, line: 3330, baseType: !1564, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !1566)
!1566 = !{!1567, !1568, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1565, file: !334, line: 3322, baseType: !1564, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1565, file: !334, line: 3323, baseType: !1564, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1565, file: !334, line: 3324, baseType: !814, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1560, file: !334, line: 3331, baseType: !1564, size: 64, offset: 256)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !816, file: !334, line: 3402, baseType: !1572, size: 256)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !1573)
!1573 = !{!1574, !1575}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1572, file: !334, line: 1541, baseType: !852, size: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1572, file: !334, line: 1542, baseType: !1576, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !1579)
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1578, file: !334, line: 1538, baseType: !1581, size: 192)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !1582)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !1583)
!1583 = !{!1584, !1585, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1582, file: !334, line: 1537, baseType: !7, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1582, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1582, file: !334, line: 1537, baseType: !1587, size: 128, offset: 64)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1588, size: 128, elements: !744)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1589, file: !334, line: 1533, baseType: !814, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1589, file: !334, line: 1534, baseType: !814, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !816, file: !334, line: 3403, baseType: !1594, size: 512)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1605, !1606, !1607}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1594, file: !334, line: 1939, baseType: !852, size: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1594, file: !334, line: 1940, baseType: !807, size: 32, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1594, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1594, file: !334, line: 1946, baseType: !1600, size: 32, offset: 256)
!1600 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !1601)
!1601 = !{!1602, !1603, !1604}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1600, file: !334, line: 1943, baseType: !352, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1600, file: !334, line: 1944, baseType: !359, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1600, file: !334, line: 1945, baseType: !366, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1594, file: !334, line: 1950, baseType: !779, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1594, file: !334, line: 1951, baseType: !779, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1594, file: !334, line: 1953, baseType: !1294, size: 64, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !816, file: !334, line: 3404, baseType: !1609, size: 1664)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1609, file: !334, line: 3338, baseType: !852, size: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1609, file: !334, line: 3341, baseType: !1613, size: 1472, offset: 192)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1614, line: 410, size: 1472, elements: !1615)
!1614 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1615 = !{!1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1613, file: !1614, line: 412, baseType: !661, size: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1613, file: !1614, line: 413, baseType: !661, size: 32, offset: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1613, file: !1614, line: 414, baseType: !661, size: 32, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1613, file: !1614, line: 415, baseType: !661, size: 32, offset: 96)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1613, file: !1614, line: 416, baseType: !661, size: 32, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1613, file: !1614, line: 417, baseType: !661, size: 32, offset: 160)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1613, file: !1614, line: 418, baseType: !660, size: 8, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1613, file: !1614, line: 419, baseType: !660, size: 8, offset: 200)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1613, file: !1614, line: 420, baseType: !1625, size: 8, offset: 208)
!1625 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1613, file: !1614, line: 421, baseType: !1625, size: 8, offset: 216)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1613, file: !1614, line: 422, baseType: !1625, size: 8, offset: 224)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1613, file: !1614, line: 423, baseType: !1625, size: 8, offset: 232)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1613, file: !1614, line: 424, baseType: !1625, size: 8, offset: 240)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1613, file: !1614, line: 425, baseType: !1625, size: 8, offset: 248)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1613, file: !1614, line: 426, baseType: !1625, size: 8, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1613, file: !1614, line: 427, baseType: !1625, size: 8, offset: 264)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1613, file: !1614, line: 428, baseType: !1625, size: 8, offset: 272)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1613, file: !1614, line: 429, baseType: !1625, size: 8, offset: 280)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1613, file: !1614, line: 430, baseType: !1625, size: 8, offset: 288)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1613, file: !1614, line: 431, baseType: !1625, size: 8, offset: 296)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1613, file: !1614, line: 432, baseType: !1625, size: 8, offset: 304)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1613, file: !1614, line: 433, baseType: !1625, size: 8, offset: 312)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1613, file: !1614, line: 434, baseType: !1625, size: 8, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1613, file: !1614, line: 435, baseType: !1625, size: 8, offset: 328)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1613, file: !1614, line: 436, baseType: !1625, size: 8, offset: 336)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1613, file: !1614, line: 437, baseType: !1625, size: 8, offset: 344)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1613, file: !1614, line: 438, baseType: !1625, size: 8, offset: 352)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1613, file: !1614, line: 439, baseType: !1625, size: 8, offset: 360)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1613, file: !1614, line: 440, baseType: !1625, size: 8, offset: 368)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1613, file: !1614, line: 441, baseType: !1625, size: 8, offset: 376)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1613, file: !1614, line: 442, baseType: !1625, size: 8, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1613, file: !1614, line: 443, baseType: !1625, size: 8, offset: 392)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1613, file: !1614, line: 444, baseType: !1625, size: 8, offset: 400)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1613, file: !1614, line: 445, baseType: !1625, size: 8, offset: 408)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1613, file: !1614, line: 446, baseType: !1625, size: 8, offset: 416)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1613, file: !1614, line: 447, baseType: !1625, size: 8, offset: 424)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1613, file: !1614, line: 448, baseType: !1625, size: 8, offset: 432)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1613, file: !1614, line: 449, baseType: !1625, size: 8, offset: 440)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1613, file: !1614, line: 450, baseType: !1625, size: 8, offset: 448)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1613, file: !1614, line: 451, baseType: !1625, size: 8, offset: 456)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1613, file: !1614, line: 452, baseType: !1625, size: 8, offset: 464)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1613, file: !1614, line: 453, baseType: !1625, size: 8, offset: 472)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1613, file: !1614, line: 454, baseType: !1625, size: 8, offset: 480)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1613, file: !1614, line: 455, baseType: !1625, size: 8, offset: 488)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1613, file: !1614, line: 456, baseType: !1625, size: 8, offset: 496)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1613, file: !1614, line: 457, baseType: !1625, size: 8, offset: 504)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1613, file: !1614, line: 458, baseType: !1625, size: 8, offset: 512)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1613, file: !1614, line: 459, baseType: !1625, size: 8, offset: 520)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1613, file: !1614, line: 460, baseType: !1625, size: 8, offset: 528)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1613, file: !1614, line: 461, baseType: !1625, size: 8, offset: 536)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1613, file: !1614, line: 462, baseType: !1625, size: 8, offset: 544)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1613, file: !1614, line: 463, baseType: !1625, size: 8, offset: 552)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1613, file: !1614, line: 464, baseType: !1625, size: 8, offset: 560)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1613, file: !1614, line: 465, baseType: !1625, size: 8, offset: 568)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1613, file: !1614, line: 466, baseType: !1625, size: 8, offset: 576)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1613, file: !1614, line: 467, baseType: !1625, size: 8, offset: 584)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1613, file: !1614, line: 468, baseType: !1625, size: 8, offset: 592)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1613, file: !1614, line: 469, baseType: !1625, size: 8, offset: 600)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1613, file: !1614, line: 470, baseType: !1625, size: 8, offset: 608)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1613, file: !1614, line: 471, baseType: !1625, size: 8, offset: 616)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1613, file: !1614, line: 472, baseType: !1625, size: 8, offset: 624)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1613, file: !1614, line: 473, baseType: !1625, size: 8, offset: 632)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1613, file: !1614, line: 474, baseType: !1625, size: 8, offset: 640)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1613, file: !1614, line: 475, baseType: !1625, size: 8, offset: 648)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1613, file: !1614, line: 476, baseType: !1625, size: 8, offset: 656)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1613, file: !1614, line: 477, baseType: !1625, size: 8, offset: 664)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1613, file: !1614, line: 478, baseType: !1625, size: 8, offset: 672)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1613, file: !1614, line: 479, baseType: !1625, size: 8, offset: 680)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1613, file: !1614, line: 480, baseType: !1625, size: 8, offset: 688)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1613, file: !1614, line: 481, baseType: !1625, size: 8, offset: 696)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1613, file: !1614, line: 482, baseType: !1625, size: 8, offset: 704)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1613, file: !1614, line: 483, baseType: !1625, size: 8, offset: 712)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1613, file: !1614, line: 484, baseType: !1625, size: 8, offset: 720)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1613, file: !1614, line: 485, baseType: !1625, size: 8, offset: 728)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1613, file: !1614, line: 486, baseType: !1625, size: 8, offset: 736)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1613, file: !1614, line: 487, baseType: !1625, size: 8, offset: 744)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1613, file: !1614, line: 488, baseType: !1625, size: 8, offset: 752)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1613, file: !1614, line: 489, baseType: !1625, size: 8, offset: 760)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1613, file: !1614, line: 490, baseType: !1625, size: 8, offset: 768)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1613, file: !1614, line: 491, baseType: !1625, size: 8, offset: 776)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1613, file: !1614, line: 492, baseType: !1625, size: 8, offset: 784)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1613, file: !1614, line: 493, baseType: !1625, size: 8, offset: 792)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1613, file: !1614, line: 494, baseType: !1625, size: 8, offset: 800)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1613, file: !1614, line: 495, baseType: !1625, size: 8, offset: 808)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1613, file: !1614, line: 496, baseType: !1625, size: 8, offset: 816)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1613, file: !1614, line: 497, baseType: !1625, size: 8, offset: 824)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1613, file: !1614, line: 498, baseType: !1625, size: 8, offset: 832)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1613, file: !1614, line: 499, baseType: !1625, size: 8, offset: 840)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1613, file: !1614, line: 500, baseType: !1625, size: 8, offset: 848)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1613, file: !1614, line: 501, baseType: !1625, size: 8, offset: 856)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1613, file: !1614, line: 502, baseType: !1625, size: 8, offset: 864)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1613, file: !1614, line: 503, baseType: !1625, size: 8, offset: 872)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1613, file: !1614, line: 504, baseType: !1625, size: 8, offset: 880)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1613, file: !1614, line: 505, baseType: !1625, size: 8, offset: 888)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1613, file: !1614, line: 506, baseType: !1625, size: 8, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1613, file: !1614, line: 507, baseType: !1625, size: 8, offset: 904)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1613, file: !1614, line: 508, baseType: !1625, size: 8, offset: 912)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1613, file: !1614, line: 509, baseType: !1625, size: 8, offset: 920)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1613, file: !1614, line: 510, baseType: !1625, size: 8, offset: 928)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1613, file: !1614, line: 511, baseType: !1625, size: 8, offset: 936)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1613, file: !1614, line: 512, baseType: !1625, size: 8, offset: 944)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1613, file: !1614, line: 513, baseType: !1625, size: 8, offset: 952)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1613, file: !1614, line: 514, baseType: !1625, size: 8, offset: 960)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1613, file: !1614, line: 515, baseType: !1625, size: 8, offset: 968)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1613, file: !1614, line: 516, baseType: !1625, size: 8, offset: 976)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1613, file: !1614, line: 517, baseType: !1625, size: 8, offset: 984)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1613, file: !1614, line: 518, baseType: !1625, size: 8, offset: 992)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1613, file: !1614, line: 519, baseType: !1625, size: 8, offset: 1000)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1613, file: !1614, line: 520, baseType: !1625, size: 8, offset: 1008)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1613, file: !1614, line: 521, baseType: !1625, size: 8, offset: 1016)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1613, file: !1614, line: 522, baseType: !1625, size: 8, offset: 1024)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1613, file: !1614, line: 523, baseType: !1625, size: 8, offset: 1032)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1613, file: !1614, line: 524, baseType: !1625, size: 8, offset: 1040)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1613, file: !1614, line: 525, baseType: !1625, size: 8, offset: 1048)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1613, file: !1614, line: 526, baseType: !1625, size: 8, offset: 1056)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1613, file: !1614, line: 527, baseType: !1625, size: 8, offset: 1064)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1613, file: !1614, line: 528, baseType: !1625, size: 8, offset: 1072)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1613, file: !1614, line: 529, baseType: !1625, size: 8, offset: 1080)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1613, file: !1614, line: 530, baseType: !1625, size: 8, offset: 1088)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1613, file: !1614, line: 531, baseType: !1625, size: 8, offset: 1096)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1613, file: !1614, line: 532, baseType: !1625, size: 8, offset: 1104)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1613, file: !1614, line: 533, baseType: !1625, size: 8, offset: 1112)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1613, file: !1614, line: 534, baseType: !1625, size: 8, offset: 1120)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1613, file: !1614, line: 535, baseType: !1625, size: 8, offset: 1128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1613, file: !1614, line: 536, baseType: !1625, size: 8, offset: 1136)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1613, file: !1614, line: 537, baseType: !1625, size: 8, offset: 1144)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1613, file: !1614, line: 538, baseType: !1625, size: 8, offset: 1152)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1613, file: !1614, line: 539, baseType: !1625, size: 8, offset: 1160)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1613, file: !1614, line: 540, baseType: !1625, size: 8, offset: 1168)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1613, file: !1614, line: 541, baseType: !1625, size: 8, offset: 1176)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1613, file: !1614, line: 542, baseType: !1625, size: 8, offset: 1184)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1613, file: !1614, line: 543, baseType: !1625, size: 8, offset: 1192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1613, file: !1614, line: 544, baseType: !1625, size: 8, offset: 1200)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1613, file: !1614, line: 545, baseType: !1625, size: 8, offset: 1208)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1613, file: !1614, line: 546, baseType: !1625, size: 8, offset: 1216)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1613, file: !1614, line: 547, baseType: !1625, size: 8, offset: 1224)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1613, file: !1614, line: 548, baseType: !1625, size: 8, offset: 1232)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1613, file: !1614, line: 549, baseType: !1625, size: 8, offset: 1240)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1613, file: !1614, line: 550, baseType: !1625, size: 8, offset: 1248)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1613, file: !1614, line: 551, baseType: !1625, size: 8, offset: 1256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1613, file: !1614, line: 552, baseType: !1625, size: 8, offset: 1264)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1613, file: !1614, line: 553, baseType: !1625, size: 8, offset: 1272)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1613, file: !1614, line: 554, baseType: !1625, size: 8, offset: 1280)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1613, file: !1614, line: 555, baseType: !1625, size: 8, offset: 1288)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1613, file: !1614, line: 556, baseType: !1625, size: 8, offset: 1296)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1613, file: !1614, line: 557, baseType: !1625, size: 8, offset: 1304)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1613, file: !1614, line: 558, baseType: !1625, size: 8, offset: 1312)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1613, file: !1614, line: 559, baseType: !1625, size: 8, offset: 1320)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1613, file: !1614, line: 560, baseType: !1625, size: 8, offset: 1328)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1613, file: !1614, line: 561, baseType: !1625, size: 8, offset: 1336)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1613, file: !1614, line: 562, baseType: !1625, size: 8, offset: 1344)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1613, file: !1614, line: 563, baseType: !1625, size: 8, offset: 1352)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1613, file: !1614, line: 564, baseType: !1625, size: 8, offset: 1360)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1613, file: !1614, line: 565, baseType: !1625, size: 8, offset: 1368)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1613, file: !1614, line: 566, baseType: !1625, size: 8, offset: 1376)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1613, file: !1614, line: 567, baseType: !1625, size: 8, offset: 1384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1613, file: !1614, line: 568, baseType: !1625, size: 8, offset: 1392)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1613, file: !1614, line: 569, baseType: !1625, size: 8, offset: 1400)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1613, file: !1614, line: 570, baseType: !1625, size: 8, offset: 1408)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1613, file: !1614, line: 571, baseType: !1625, size: 8, offset: 1416)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1613, file: !1614, line: 572, baseType: !1625, size: 8, offset: 1424)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1613, file: !1614, line: 573, baseType: !1625, size: 8, offset: 1432)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1613, file: !1614, line: 574, baseType: !1625, size: 8, offset: 1440)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !816, file: !334, line: 3405, baseType: !1781, size: 384)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1781, file: !334, line: 3353, baseType: !852, size: 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1781, file: !334, line: 3356, baseType: !1785, size: 192, offset: 192)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1614, line: 578, size: 192, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1785, file: !1614, line: 580, baseType: !661, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1785, file: !1614, line: 581, baseType: !661, size: 32, offset: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1785, file: !1614, line: 582, baseType: !661, size: 32, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1785, file: !1614, line: 583, baseType: !661, size: 32, offset: 96)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1785, file: !1614, line: 584, baseType: !660, size: 8, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1785, file: !1614, line: 585, baseType: !660, size: 8, offset: 136)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1785, file: !1614, line: 586, baseType: !660, size: 8, offset: 144)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1785, file: !1614, line: 587, baseType: !660, size: 8, offset: 152)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1785, file: !1614, line: 588, baseType: !660, size: 8, offset: 160)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1785, file: !1614, line: 589, baseType: !660, size: 8, offset: 168)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1785, file: !1614, line: 590, baseType: !660, size: 8, offset: 176)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !791, file: !581, line: 739, baseType: !1799, size: 448)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !581, line: 350, size: 448, elements: !1800)
!1800 = !{!1801, !1807}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1799, file: !581, line: 353, baseType: !1802, size: 384)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !581, line: 333, size: 384, elements: !1803)
!1803 = !{!1804, !1805, !1806}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1802, file: !581, line: 336, baseType: !794, size: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1802, file: !581, line: 343, baseType: !1329, size: 64, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1802, file: !581, line: 344, baseType: !1336, size: 64, offset: 320)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1799, file: !581, line: 359, baseType: !1294, size: 64, offset: 384)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !791, file: !581, line: 740, baseType: !1809, size: 512)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !581, line: 365, size: 512, elements: !1810)
!1810 = !{!1811, !1812, !1813}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1809, file: !581, line: 368, baseType: !1802, size: 384)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1809, file: !581, line: 373, baseType: !814, size: 64, offset: 384)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1809, file: !581, line: 374, baseType: !814, size: 64, offset: 448)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !791, file: !581, line: 741, baseType: !1815, size: 576)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !581, line: 380, size: 576, elements: !1816)
!1816 = !{!1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1815, file: !581, line: 383, baseType: !1809, size: 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1815, file: !581, line: 389, baseType: !1294, size: 64, offset: 512)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !791, file: !581, line: 742, baseType: !1820, size: 320)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !581, line: 395, size: 320, elements: !1821)
!1821 = !{!1822, !1823}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1820, file: !581, line: 397, baseType: !794, size: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1820, file: !581, line: 400, baseType: !779, size: 64, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !791, file: !581, line: 743, baseType: !1825, size: 448)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !581, line: 406, size: 448, elements: !1826)
!1826 = !{!1827, !1828, !1829, !1830}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1825, file: !581, line: 408, baseType: !794, size: 256)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1825, file: !581, line: 412, baseType: !814, size: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1825, file: !581, line: 420, baseType: !814, size: 64, offset: 320)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1825, file: !581, line: 423, baseType: !779, size: 64, offset: 384)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !791, file: !581, line: 744, baseType: !1832, size: 384)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !581, line: 429, size: 384, elements: !1833)
!1833 = !{!1834, !1835, !1836}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1832, file: !581, line: 431, baseType: !794, size: 256)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1832, file: !581, line: 434, baseType: !814, size: 64, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1832, file: !581, line: 437, baseType: !779, size: 64, offset: 320)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !791, file: !581, line: 745, baseType: !1838, size: 384)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !581, line: 443, size: 384, elements: !1839)
!1839 = !{!1840, !1841, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1838, file: !581, line: 445, baseType: !794, size: 256)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1838, file: !581, line: 449, baseType: !814, size: 64, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1838, file: !581, line: 453, baseType: !779, size: 64, offset: 320)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !791, file: !581, line: 746, baseType: !1844, size: 320)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !581, line: 459, size: 320, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1844, file: !581, line: 461, baseType: !794, size: 256)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1844, file: !581, line: 464, baseType: !814, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !791, file: !581, line: 747, baseType: !1849, size: 768)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !581, line: 469, size: 768, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1854, !1855}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1849, file: !581, line: 471, baseType: !794, size: 256)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1849, file: !581, line: 474, baseType: !7, size: 32, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1849, file: !581, line: 475, baseType: !7, size: 32, offset: 288)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1849, file: !581, line: 478, baseType: !814, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1849, file: !581, line: 481, baseType: !1856, size: 384, offset: 384)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1857, size: 384, elements: !744)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !334, line: 1917, size: 384, elements: !1858)
!1858 = !{!1859, !1860, !1861}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1857, file: !334, line: 1920, baseType: !1341, size: 256)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1857, file: !334, line: 1921, baseType: !814, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1857, file: !334, line: 1922, baseType: !807, size: 32, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !791, file: !581, line: 748, baseType: !1863, size: 320)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !581, line: 487, size: 320, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1863, file: !581, line: 490, baseType: !794, size: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1863, file: !581, line: 494, baseType: !661, size: 32, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !791, file: !581, line: 749, baseType: !1868, size: 384)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !581, line: 500, size: 384, elements: !1869)
!1869 = !{!1870, !1871, !1872}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1868, file: !581, line: 502, baseType: !794, size: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1868, file: !581, line: 506, baseType: !779, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1868, file: !581, line: 510, baseType: !779, size: 64, offset: 320)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !791, file: !581, line: 750, baseType: !1874, size: 320)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !581, line: 529, size: 320, elements: !1875)
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1874, file: !581, line: 531, baseType: !794, size: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1874, file: !581, line: 540, baseType: !779, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !791, file: !581, line: 751, baseType: !1879, size: 704)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !581, line: 546, size: 704, elements: !1880)
!1880 = !{!1881, !1882, !1883, !1884, !1885, !1886, !1887}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1879, file: !581, line: 549, baseType: !1809, size: 512)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1879, file: !581, line: 553, baseType: !666, size: 64, offset: 512)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1879, file: !581, line: 557, baseType: !660, size: 8, offset: 576)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1879, file: !581, line: 558, baseType: !660, size: 8, offset: 584)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1879, file: !581, line: 559, baseType: !660, size: 8, offset: 592)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1879, file: !581, line: 560, baseType: !660, size: 8, offset: 600)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1879, file: !581, line: 566, baseType: !1294, size: 64, offset: 640)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !791, file: !581, line: 752, baseType: !1889, size: 384)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !581, line: 571, size: 384, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1889, file: !581, line: 573, baseType: !1820, size: 320)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1889, file: !581, line: 577, baseType: !814, size: 64, offset: 320)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !791, file: !581, line: 753, baseType: !1894, size: 576)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !581, line: 600, size: 576, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1899, !1908}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1894, file: !581, line: 602, baseType: !1820, size: 320)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1894, file: !581, line: 605, baseType: !814, size: 64, offset: 320)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1894, file: !581, line: 609, baseType: !1244, size: 64, offset: 384)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1894, file: !581, line: 612, baseType: !1900, size: 64, offset: 448)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !581, line: 581, size: 320, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1906, !1907}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1901, file: !581, line: 583, baseType: !366, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1901, file: !581, line: 586, baseType: !814, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1901, file: !581, line: 589, baseType: !814, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1901, file: !581, line: 592, baseType: !814, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1901, file: !581, line: 595, baseType: !814, size: 64, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1894, file: !581, line: 616, baseType: !779, size: 64, offset: 512)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !791, file: !581, line: 754, baseType: !1910, size: 512)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !581, line: 622, size: 512, elements: !1911)
!1911 = !{!1912, !1913, !1914, !1915}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1910, file: !581, line: 624, baseType: !1820, size: 320)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1910, file: !581, line: 628, baseType: !814, size: 64, offset: 320)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1910, file: !581, line: 632, baseType: !814, size: 64, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1910, file: !581, line: 636, baseType: !814, size: 64, offset: 448)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !791, file: !581, line: 755, baseType: !1917, size: 704)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !581, line: 642, size: 704, elements: !1918)
!1918 = !{!1919, !1920, !1921, !1922}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1917, file: !581, line: 644, baseType: !1910, size: 512)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1917, file: !581, line: 648, baseType: !814, size: 64, offset: 512)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1917, file: !581, line: 652, baseType: !814, size: 64, offset: 576)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1917, file: !581, line: 653, baseType: !814, size: 64, offset: 640)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !791, file: !581, line: 756, baseType: !1924, size: 448)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !581, line: 663, size: 448, elements: !1925)
!1925 = !{!1926, !1927, !1928}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1924, file: !581, line: 665, baseType: !1820, size: 320)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1924, file: !581, line: 668, baseType: !814, size: 64, offset: 320)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1924, file: !581, line: 673, baseType: !814, size: 64, offset: 384)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !791, file: !581, line: 757, baseType: !1930, size: 384)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !581, line: 694, size: 384, elements: !1931)
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1930, file: !581, line: 696, baseType: !1820, size: 320)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1930, file: !581, line: 699, baseType: !814, size: 64, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !791, file: !581, line: 758, baseType: !1935, size: 384)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !581, line: 681, size: 384, elements: !1936)
!1936 = !{!1937, !1938, !1939}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1935, file: !581, line: 683, baseType: !794, size: 256)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1935, file: !581, line: 686, baseType: !814, size: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1935, file: !581, line: 689, baseType: !814, size: 64, offset: 320)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !791, file: !581, line: 759, baseType: !1941, size: 384)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !581, line: 707, size: 384, elements: !1942)
!1942 = !{!1943, !1944, !1945}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1941, file: !581, line: 709, baseType: !794, size: 256)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1941, file: !581, line: 712, baseType: !814, size: 64, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1941, file: !581, line: 712, baseType: !814, size: 64, offset: 320)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !791, file: !581, line: 760, baseType: !1947, size: 320)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !581, line: 718, size: 320, elements: !1948)
!1948 = !{!1949, !1950}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1947, file: !581, line: 720, baseType: !794, size: 256)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1947, file: !581, line: 723, baseType: !814, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !786, file: !581, line: 138, baseType: !785, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !786, file: !581, line: 139, baseType: !785, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !781, file: !581, line: 146, baseType: !784, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !781, file: !581, line: 152, baseType: !779, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !776, file: !318, line: 130, baseType: !980, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !771, file: !318, line: 134, baseType: !665, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !771, file: !318, line: 137, baseType: !814, size: 64, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !771, file: !318, line: 138, baseType: !807, size: 32, offset: 320)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !771, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !318, line: 144, baseType: !661, size: 32, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !771, file: !318, line: 145, baseType: !661, size: 32, offset: 416)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !771, file: !318, line: 146, baseType: !1963, size: 64, offset: 448)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !703)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !754, file: !318, line: 220, baseType: !757, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !754, file: !318, line: 223, baseType: !665, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !754, file: !318, line: 226, baseType: !747, size: 64, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !754, file: !318, line: 229, baseType: !1968, size: 128, offset: 256)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1969, size: 128, elements: !687)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !754, file: !318, line: 232, baseType: !753, size: 64, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !754, file: !318, line: 233, baseType: !753, size: 64, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !754, file: !318, line: 238, baseType: !1974, size: 64, offset: 512)
!1974 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !1975)
!1975 = !{!1976, !1982}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1974, file: !318, line: 236, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !1979)
!1979 = !{!1980, !1981}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1978, file: !318, line: 275, baseType: !779, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1978, file: !318, line: 278, baseType: !779, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1974, file: !318, line: 237, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989, !1990}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1984, file: !318, line: 261, baseType: !980, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1984, file: !318, line: 262, baseType: !980, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1984, file: !318, line: 266, baseType: !980, size: 64, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1984, file: !318, line: 267, baseType: !980, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1984, file: !318, line: 270, baseType: !661, size: 32, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !754, file: !318, line: 241, baseType: !1963, size: 64, offset: 576)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !754, file: !318, line: 244, baseType: !661, size: 32, offset: 640)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !754, file: !318, line: 247, baseType: !661, size: 32, offset: 672)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !754, file: !318, line: 250, baseType: !661, size: 32, offset: 704)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !754, file: !318, line: 253, baseType: !661, size: 32, offset: 736)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !318, line: 256, baseType: !661, size: 32, offset: 768)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !748, file: !561, line: 111, baseType: !753, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !748, file: !561, line: 114, baseType: !1999, size: 64, offset: 192)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !561, line: 41, size: 64, elements: !2000)
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1999, file: !561, line: 42, baseType: !560, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1999, file: !561, line: 43, baseType: !7, size: 32, offset: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !748, file: !561, line: 117, baseType: !7, size: 32, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !748, file: !561, line: 120, baseType: !7, size: 32, offset: 288)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !748, file: !561, line: 123, baseType: !1358, size: 64, offset: 320)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !748, file: !561, line: 126, baseType: !747, size: 64, offset: 384)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !748, file: !561, line: 129, baseType: !747, size: 64, offset: 448)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !748, file: !561, line: 132, baseType: !665, size: 64, offset: 512)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !748, file: !561, line: 139, baseType: !814, size: 64, offset: 576)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !748, file: !561, line: 143, baseType: !862, size: 128, offset: 640)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !748, file: !561, line: 146, baseType: !862, size: 128, offset: 768)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !748, file: !561, line: 148, baseType: !660, size: 8, offset: 896)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !748, file: !561, line: 149, baseType: !660, size: 8, offset: 904)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !748, file: !561, line: 153, baseType: !569, size: 32, offset: 928)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !748, file: !561, line: 156, baseType: !2016, size: 64, offset: 960)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !561, line: 48, size: 320, elements: !2018)
!2018 = !{!2019, !2020, !2021, !2022}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2017, file: !561, line: 50, baseType: !789, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !2017, file: !561, line: 59, baseType: !862, size: 128, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !2017, file: !561, line: 64, baseType: !660, size: 8, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2017, file: !561, line: 67, baseType: !2016, size: 64, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !748, file: !561, line: 159, baseType: !2024, size: 64, offset: 1024)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !561, line: 72, size: 256, elements: !2026)
!2026 = !{!2027, !2028, !2029, !2030}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !2025, file: !561, line: 74, baseType: !770, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2025, file: !561, line: 77, baseType: !2024, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2025, file: !561, line: 78, baseType: !2024, size: 64, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !2025, file: !561, line: 81, baseType: !2024, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !748, file: !561, line: 162, baseType: !660, size: 8, offset: 1088)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !748, file: !561, line: 166, baseType: !814, size: 64, offset: 1152)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_heap", file: !581, line: 34, baseType: !2035)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_heap", file: !581, line: 34, size: 128, elements: !2036)
!2036 = !{!2037}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2035, file: !581, line: 34, baseType: !1275, size: 128)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdg_vertex", file: !574, line: 485, size: 128, elements: !2040)
!2040 = !{!2041, !2042, !2043}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2039, file: !574, line: 488, baseType: !789, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "has_mem_write", scope: !2039, file: !574, line: 491, baseType: !660, size: 8, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "has_mem_reads", scope: !2039, file: !574, line: 494, baseType: !660, size: 8, offset: 72)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rdgc_heap", file: !574, line: 604, baseType: !2046)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rdgc_heap", file: !574, line: 604, size: 128, elements: !2047)
!2047 = !{!2048}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2046, file: !574, line: 604, baseType: !2049, size: 128)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rdgc_base", file: !574, line: 603, baseType: !2050)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rdgc_base", file: !574, line: 603, size: 128, elements: !2051)
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2050, file: !574, line: 603, baseType: !7, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2050, file: !574, line: 603, baseType: !7, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2050, file: !574, line: 603, baseType: !2055, size: 64, offset: 64)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2056, size: 64, elements: !744)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "rdgc", file: !574, line: 601, baseType: !2057)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdg_component", file: !574, line: 597, size: 128, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2058, file: !574, line: 599, baseType: !661, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "vertices", scope: !2058, file: !574, line: 600, baseType: !731, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_bitmap_heap", file: !574, line: 607, baseType: !2064)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_bitmap_heap", file: !574, line: 607, size: 128, elements: !2065)
!2065 = !{!2066}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2064, file: !574, line: 607, baseType: !2067, size: 128)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_bitmap_base", file: !574, line: 606, baseType: !2068)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_bitmap_base", file: !574, line: 606, size: 128, elements: !2069)
!2069 = !{!2070, !2071, !2072}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2068, file: !574, line: 606, baseType: !7, size: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2068, file: !574, line: 606, baseType: !7, size: 32, offset: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2068, file: !574, line: 606, baseType: !2073, size: 64, offset: 64)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 64, elements: !744)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdg_edge", file: !574, line: 531, size: 128, elements: !2076)
!2076 = !{!2077, !2078, !2079}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2075, file: !574, line: 534, baseType: !573, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2075, file: !574, line: 538, baseType: !7, size: 32, offset: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "relation", scope: !2075, file: !574, line: 542, baseType: !2080, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "ddr_p", file: !574, line: 331, baseType: !2081)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_dependence_relation", file: !574, line: 282, size: 512, elements: !2083)
!2083 = !{!2084, !2143, !2144, !2145, !2174, !2175, !2181, !2182, !2183, !2184, !2185}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2082, file: !574, line: 285, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_reference", file: !574, line: 165, size: 896, elements: !2087)
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2100, !2110, !2115}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2086, file: !574, line: 168, baseType: !789, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2086, file: !574, line: 171, baseType: !814, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2086, file: !574, line: 174, baseType: !665, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "is_read", scope: !2086, file: !574, line: 177, baseType: !660, size: 8, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "innermost", scope: !2086, file: !574, line: 180, baseType: !2093, size: 320, offset: 256)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "innermost_loop_behavior", file: !574, line: 51, size: 320, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !2093, file: !574, line: 53, baseType: !814, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2093, file: !574, line: 54, baseType: !814, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2093, file: !574, line: 55, baseType: !814, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !2093, file: !574, line: 56, baseType: !814, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "aligned_to", scope: !2093, file: !574, line: 60, baseType: !814, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !2086, file: !574, line: 183, baseType: !2101, size: 128, offset: 576)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "indices", file: !574, line: 78, size: 128, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "base_object", scope: !2101, file: !574, line: 81, baseType: !814, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "access_fns", scope: !2101, file: !574, line: 84, baseType: !2105, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !334, line: 184, baseType: !2107)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !334, line: 184, size: 128, elements: !2108)
!2108 = !{!2109}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2107, file: !334, line: 184, baseType: !1288, size: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2086, file: !574, line: 186, baseType: !2111, size: 128, offset: 704)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dr_alias", file: !574, line: 87, size: 128, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !2111, file: !574, line: 91, baseType: !1523, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "vops", scope: !2111, file: !574, line: 96, baseType: !668, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "access_matrix", scope: !2086, file: !574, line: 189, baseType: !2116, size: 64, offset: 832)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "access_matrix", file: !574, line: 127, size: 256, elements: !2118)
!2118 = !{!2119, !2125, !2126, !2127}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !2117, file: !574, line: 129, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_heap", file: !561, line: 86, baseType: !2122)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_heap", file: !561, line: 86, size: 128, elements: !2123)
!2123 = !{!2124}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2122, file: !561, line: 86, baseType: !1363, size: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "nb_induction_vars", scope: !2117, file: !574, line: 130, baseType: !661, size: 32, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !2117, file: !574, line: 131, baseType: !2105, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !2117, file: !574, line: 132, baseType: !2128, size: 64, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_lambda_vector_gc", file: !2130, line: 34, baseType: !2131)
!2130 = !DIFile(filename: "./lambda.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_lambda_vector_gc", file: !2130, line: 34, size: 128, elements: !2132)
!2132 = !{!2133}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2131, file: !2130, line: 34, baseType: !2134, size: 128)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_lambda_vector_base", file: !2130, line: 32, baseType: !2135)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_lambda_vector_base", file: !2130, line: 32, size: 128, elements: !2136)
!2136 = !{!2137, !2138, !2139}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2135, file: !2130, line: 32, baseType: !7, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2135, file: !2130, line: 32, baseType: !7, size: 32, offset: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2135, file: !2130, line: 32, baseType: !2140, size: 64, offset: 64)
!2140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2141, size: 64, elements: !744)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "lambda_vector", file: !2130, line: 31, baseType: !2142)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2082, file: !574, line: 286, baseType: !2085, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "are_dependent", scope: !2082, file: !574, line: 299, baseType: !814, size: 64, offset: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "subscripts", scope: !2082, file: !574, line: 304, baseType: !2146, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_subscript_p_heap", file: !574, line: 272, baseType: !2148)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_subscript_p_heap", file: !574, line: 272, size: 128, elements: !2149)
!2149 = !{!2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2148, file: !574, line: 272, baseType: !2151, size: 128)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_subscript_p_base", file: !574, line: 271, baseType: !2152)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_subscript_p_base", file: !574, line: 271, size: 128, elements: !2153)
!2153 = !{!2154, !2155, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2152, file: !574, line: 271, baseType: !7, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2152, file: !574, line: 271, baseType: !7, size: 32, offset: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2152, file: !574, line: 271, baseType: !2157, size: 64, offset: 64)
!2157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2158, size: 64, elements: !744)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "subscript_p", file: !574, line: 270, baseType: !2159)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subscript", file: !574, line: 252, size: 256, elements: !2161)
!2161 = !{!2162, !2171, !2172, !2173}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "conflicting_iterations_in_a", scope: !2160, file: !574, line: 256, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "conflict_function", file: !574, line: 243, baseType: !2165)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 239, size: 192, elements: !2166)
!2166 = !{!2167, !2168}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2165, file: !574, line: 241, baseType: !7, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "fns", scope: !2165, file: !574, line: 242, baseType: !2169, size: 128, offset: 64)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2170, size: 128, elements: !687)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "affine_fn", file: !574, line: 237, baseType: !2105)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "conflicting_iterations_in_b", scope: !2160, file: !574, line: 257, baseType: !2163, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "last_conflict", scope: !2160, file: !574, line: 261, baseType: !814, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "distance", scope: !2160, file: !574, line: 267, baseType: !814, size: 64, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !2082, file: !574, line: 307, baseType: !2120, size: 64, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "dir_vects", scope: !2082, file: !574, line: 310, baseType: !2176, size: 64, offset: 320)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_lambda_vector_heap", file: !2130, line: 33, baseType: !2178)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_lambda_vector_heap", file: !2130, line: 33, size: 128, elements: !2179)
!2179 = !{!2180}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2178, file: !2130, line: 33, baseType: !2134, size: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "dist_vects", scope: !2082, file: !574, line: 313, baseType: !2176, size: 64, offset: 384)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "inner_loop", scope: !2082, file: !574, line: 317, baseType: !7, size: 32, offset: 448)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "reversed_p", scope: !2082, file: !574, line: 320, baseType: !660, size: 8, offset: 480)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "affine_p", scope: !2082, file: !574, line: 324, baseType: !660, size: 8, offset: 488)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "self_reference_p", scope: !2082, file: !574, line: 328, baseType: !660, size: 8, offset: 496)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !652, line: 30, baseType: !2188)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !334, line: 1893, baseType: !1341)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!2192 = !{!0, !2193, !2195}
!2193 = !DIGlobalVariableExpression(var: !2194, expr: !DIExpression())
!2194 = distinct !DIGlobalVariable(name: "remaining_stmts", scope: !2, file: !3, line: 75, type: !668, isLocal: true, isDefinition: true)
!2195 = !DIGlobalVariableExpression(var: !2196, expr: !DIExpression())
!2196 = distinct !DIGlobalVariable(name: "upstream_mem_writes", scope: !2, file: !3, line: 79, type: !668, isLocal: true, isDefinition: true)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !2198)
!2198 = !{!2199}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2197, file: !6, line: 158, baseType: !2200, size: 640)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2208, !2212, !2214, !2215, !2216, !2218, !2219, !2220, !2221, !2222}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2200, file: !6, line: 117, baseType: !5, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2200, file: !6, line: 121, baseType: !666, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2200, file: !6, line: 125, baseType: !2205, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!660}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2200, file: !6, line: 130, baseType: !2209, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!7}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2200, file: !6, line: 133, baseType: !2213, size: 64, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2200, file: !6, line: 136, baseType: !2213, size: 64, offset: 320)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2200, file: !6, line: 139, baseType: !661, size: 32, offset: 384)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2200, file: !6, line: 143, baseType: !2217, size: 32, offset: 416)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2200, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2200, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2200, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2200, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2200, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2223 = !{i32 2, !"Dwarf Version", i32 4}
!2224 = !{i32 2, !"Debug Info Version", i32 3}
!2225 = !{i32 1, !"wchar_size", i32 4}
!2226 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2227 = distinct !DISubprogram(name: "vprintf", scope: !2228, file: !2228, line: 39, type: !2229, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2239)
!2228 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!661, !2231, !2232}
!2231 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !666)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2234)
!2234 = !{!2235, !2236, !2237, !2238}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2233, file: !3, baseType: !7, size: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2233, file: !3, baseType: !7, size: 32, offset: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2233, file: !3, baseType: !665, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2233, file: !3, baseType: !665, size: 64, offset: 128)
!2239 = !{!2240, !2241}
!2240 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2227, file: !2228, line: 39, type: !2231)
!2241 = !DILocalVariable(name: "__arg", arg: 2, scope: !2227, file: !2228, line: 39, type: !2232)
!2242 = !DILocation(line: 0, scope: !2227)
!2243 = !DILocation(line: 41, column: 20, scope: !2227)
!2244 = !DILocation(line: 41, column: 10, scope: !2227)
!2245 = !DILocation(line: 41, column: 3, scope: !2227)
!2246 = distinct !DISubprogram(name: "getchar", scope: !2228, file: !2228, line: 47, type: !2247, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2249)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!661}
!2249 = !{}
!2250 = !DILocation(line: 49, column: 16, scope: !2246)
!2251 = !DILocation(line: 49, column: 10, scope: !2246)
!2252 = !DILocation(line: 49, column: 3, scope: !2246)
!2253 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2228, file: !2228, line: 56, type: !2254, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2307)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!661, !2256}
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2258, line: 7, baseType: !2259)
!2258 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2260, line: 49, size: 1728, elements: !2261)
!2260 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2261 = !{!2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2277, !2279, !2280, !2281, !2284, !2286, !2287, !2288, !2291, !2293, !2296, !2299, !2300, !2301, !2302, !2303}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2259, file: !2260, line: 51, baseType: !661, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2259, file: !2260, line: 54, baseType: !663, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2259, file: !2260, line: 55, baseType: !663, size: 64, offset: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2259, file: !2260, line: 56, baseType: !663, size: 64, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2259, file: !2260, line: 57, baseType: !663, size: 64, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2259, file: !2260, line: 58, baseType: !663, size: 64, offset: 320)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2259, file: !2260, line: 59, baseType: !663, size: 64, offset: 384)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2259, file: !2260, line: 60, baseType: !663, size: 64, offset: 448)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2259, file: !2260, line: 61, baseType: !663, size: 64, offset: 512)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2259, file: !2260, line: 64, baseType: !663, size: 64, offset: 576)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2259, file: !2260, line: 65, baseType: !663, size: 64, offset: 640)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2259, file: !2260, line: 66, baseType: !663, size: 64, offset: 704)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2259, file: !2260, line: 68, baseType: !2275, size: 64, offset: 768)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2260, line: 36, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2259, file: !2260, line: 70, baseType: !2278, size: 64, offset: 832)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2259, file: !2260, line: 72, baseType: !661, size: 32, offset: 896)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2259, file: !2260, line: 73, baseType: !661, size: 32, offset: 928)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2259, file: !2260, line: 74, baseType: !2282, size: 64, offset: 960)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2283, line: 152, baseType: !703)
!2283 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2259, file: !2260, line: 77, baseType: !2285, size: 16, offset: 1024)
!2285 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2259, file: !2260, line: 78, baseType: !1625, size: 8, offset: 1040)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2259, file: !2260, line: 79, baseType: !909, size: 8, offset: 1048)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2259, file: !2260, line: 81, baseType: !2289, size: 64, offset: 1088)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2260, line: 43, baseType: null)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2259, file: !2260, line: 89, baseType: !2292, size: 64, offset: 1152)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2283, line: 153, baseType: !703)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2259, file: !2260, line: 91, baseType: !2294, size: 64, offset: 1216)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2260, line: 37, flags: DIFlagFwdDecl)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2259, file: !2260, line: 92, baseType: !2297, size: 64, offset: 1280)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2260, line: 38, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2259, file: !2260, line: 93, baseType: !2278, size: 64, offset: 1344)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2259, file: !2260, line: 94, baseType: !665, size: 64, offset: 1408)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2259, file: !2260, line: 95, baseType: !1244, size: 64, offset: 1472)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2259, file: !2260, line: 96, baseType: !661, size: 32, offset: 1536)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2259, file: !2260, line: 98, baseType: !2304, size: 160, offset: 1568)
!2304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 160, elements: !2305)
!2305 = !{!2306}
!2306 = !DISubrange(count: 20)
!2307 = !{!2308}
!2308 = !DILocalVariable(name: "__fp", arg: 1, scope: !2253, file: !2228, line: 56, type: !2256)
!2309 = !DILocation(line: 0, scope: !2253)
!2310 = !DILocation(line: 58, column: 10, scope: !2253)
!2311 = !DILocation(line: 58, column: 3, scope: !2253)
!2312 = distinct !DISubprogram(name: "getc_unlocked", scope: !2228, file: !2228, line: 66, type: !2254, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2313)
!2313 = !{!2314}
!2314 = !DILocalVariable(name: "__fp", arg: 1, scope: !2312, file: !2228, line: 66, type: !2256)
!2315 = !DILocation(line: 0, scope: !2312)
!2316 = !DILocation(line: 68, column: 10, scope: !2312)
!2317 = !DILocation(line: 68, column: 3, scope: !2312)
!2318 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2228, file: !2228, line: 73, type: !2247, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2249)
!2319 = !DILocation(line: 75, column: 10, scope: !2318)
!2320 = !DILocation(line: 75, column: 3, scope: !2318)
!2321 = distinct !DISubprogram(name: "putchar", scope: !2228, file: !2228, line: 82, type: !2322, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2324)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!661, !661}
!2324 = !{!2325}
!2325 = !DILocalVariable(name: "__c", arg: 1, scope: !2321, file: !2228, line: 82, type: !661)
!2326 = !DILocation(line: 0, scope: !2321)
!2327 = !DILocation(line: 84, column: 21, scope: !2321)
!2328 = !DILocation(line: 84, column: 10, scope: !2321)
!2329 = !DILocation(line: 84, column: 3, scope: !2321)
!2330 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2228, file: !2228, line: 91, type: !2331, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2333)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!661, !661, !2256}
!2333 = !{!2334, !2335}
!2334 = !DILocalVariable(name: "__c", arg: 1, scope: !2330, file: !2228, line: 91, type: !661)
!2335 = !DILocalVariable(name: "__stream", arg: 2, scope: !2330, file: !2228, line: 91, type: !2256)
!2336 = !DILocation(line: 0, scope: !2330)
!2337 = !DILocation(line: 93, column: 10, scope: !2330)
!2338 = !DILocation(line: 93, column: 3, scope: !2330)
!2339 = distinct !DISubprogram(name: "putc_unlocked", scope: !2228, file: !2228, line: 101, type: !2331, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2340)
!2340 = !{!2341, !2342}
!2341 = !DILocalVariable(name: "__c", arg: 1, scope: !2339, file: !2228, line: 101, type: !661)
!2342 = !DILocalVariable(name: "__stream", arg: 2, scope: !2339, file: !2228, line: 101, type: !2256)
!2343 = !DILocation(line: 0, scope: !2339)
!2344 = !DILocation(line: 103, column: 10, scope: !2339)
!2345 = !DILocation(line: 103, column: 3, scope: !2339)
!2346 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2228, file: !2228, line: 108, type: !2322, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2347)
!2347 = !{!2348}
!2348 = !DILocalVariable(name: "__c", arg: 1, scope: !2346, file: !2228, line: 108, type: !661)
!2349 = !DILocation(line: 0, scope: !2346)
!2350 = !DILocation(line: 110, column: 10, scope: !2346)
!2351 = !DILocation(line: 110, column: 3, scope: !2346)
!2352 = distinct !DISubprogram(name: "getline", scope: !2228, file: !2228, line: 118, type: !2353, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2357)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!2355, !662, !2356, !2256}
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2283, line: 193, baseType: !703)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!2357 = !{!2358, !2359, !2360}
!2358 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2352, file: !2228, line: 118, type: !662)
!2359 = !DILocalVariable(name: "__n", arg: 2, scope: !2352, file: !2228, line: 118, type: !2356)
!2360 = !DILocalVariable(name: "__stream", arg: 3, scope: !2352, file: !2228, line: 118, type: !2256)
!2361 = !DILocation(line: 0, scope: !2352)
!2362 = !DILocation(line: 120, column: 10, scope: !2352)
!2363 = !DILocation(line: 120, column: 3, scope: !2352)
!2364 = distinct !DISubprogram(name: "feof_unlocked", scope: !2228, file: !2228, line: 128, type: !2254, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2365)
!2365 = !{!2366}
!2366 = !DILocalVariable(name: "__stream", arg: 1, scope: !2364, file: !2228, line: 128, type: !2256)
!2367 = !DILocation(line: 0, scope: !2364)
!2368 = !DILocation(line: 130, column: 10, scope: !2364)
!2369 = !DILocation(line: 130, column: 3, scope: !2364)
!2370 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2228, file: !2228, line: 135, type: !2254, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2371)
!2371 = !{!2372}
!2372 = !DILocalVariable(name: "__stream", arg: 1, scope: !2370, file: !2228, line: 135, type: !2256)
!2373 = !DILocation(line: 0, scope: !2370)
!2374 = !DILocation(line: 137, column: 10, scope: !2370)
!2375 = !DILocation(line: 137, column: 3, scope: !2370)
!2376 = distinct !DISubprogram(name: "tolower", scope: !2377, file: !2377, line: 207, type: !2322, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2378)
!2377 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2378 = !{!2379}
!2379 = !DILocalVariable(name: "__c", arg: 1, scope: !2376, file: !2377, line: 207, type: !661)
!2380 = !DILocation(line: 0, scope: !2376)
!2381 = !DILocation(line: 209, column: 22, scope: !2376)
!2382 = !DILocation(line: 209, column: 39, scope: !2376)
!2383 = !DILocation(line: 209, column: 38, scope: !2376)
!2384 = !DILocation(line: 209, column: 37, scope: !2376)
!2385 = !DILocation(line: 209, column: 10, scope: !2376)
!2386 = !DILocation(line: 209, column: 3, scope: !2376)
!2387 = distinct !DISubprogram(name: "toupper", scope: !2377, file: !2377, line: 213, type: !2322, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2388)
!2388 = !{!2389}
!2389 = !DILocalVariable(name: "__c", arg: 1, scope: !2387, file: !2377, line: 213, type: !661)
!2390 = !DILocation(line: 0, scope: !2387)
!2391 = !DILocation(line: 215, column: 22, scope: !2387)
!2392 = !DILocation(line: 215, column: 39, scope: !2387)
!2393 = !DILocation(line: 215, column: 38, scope: !2387)
!2394 = !DILocation(line: 215, column: 37, scope: !2387)
!2395 = !DILocation(line: 215, column: 10, scope: !2387)
!2396 = !DILocation(line: 215, column: 3, scope: !2387)
!2397 = distinct !DISubprogram(name: "atoi", scope: !2398, file: !2398, line: 361, type: !2399, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2401)
!2398 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!661, !666}
!2401 = !{!2402}
!2402 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2397, file: !2398, line: 361, type: !666)
!2403 = !DILocation(line: 0, scope: !2397)
!2404 = !DILocation(line: 363, column: 16, scope: !2397)
!2405 = !DILocation(line: 363, column: 10, scope: !2397)
!2406 = !DILocation(line: 363, column: 3, scope: !2397)
!2407 = distinct !DISubprogram(name: "atol", scope: !2398, file: !2398, line: 366, type: !2408, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!703, !666}
!2410 = !{!2411}
!2411 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2407, file: !2398, line: 366, type: !666)
!2412 = !DILocation(line: 0, scope: !2407)
!2413 = !DILocation(line: 368, column: 10, scope: !2407)
!2414 = !DILocation(line: 368, column: 3, scope: !2407)
!2415 = distinct !DISubprogram(name: "atoll", scope: !2398, file: !2398, line: 373, type: !2416, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2419)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!2418, !666}
!2418 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2419 = !{!2420}
!2420 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2415, file: !2398, line: 373, type: !666)
!2421 = !DILocation(line: 0, scope: !2415)
!2422 = !DILocation(line: 375, column: 10, scope: !2415)
!2423 = !DILocation(line: 375, column: 3, scope: !2415)
!2424 = distinct !DISubprogram(name: "bsearch", scope: !2425, file: !2425, line: 20, type: !2426, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2429)
!2425 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!665, !1229, !1229, !1244, !1244, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2398, line: 808, baseType: !1233)
!2429 = !{!2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439}
!2430 = !DILocalVariable(name: "__key", arg: 1, scope: !2424, file: !2425, line: 20, type: !1229)
!2431 = !DILocalVariable(name: "__base", arg: 2, scope: !2424, file: !2425, line: 20, type: !1229)
!2432 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2424, file: !2425, line: 20, type: !1244)
!2433 = !DILocalVariable(name: "__size", arg: 4, scope: !2424, file: !2425, line: 20, type: !1244)
!2434 = !DILocalVariable(name: "__compar", arg: 5, scope: !2424, file: !2425, line: 21, type: !2428)
!2435 = !DILocalVariable(name: "__l", scope: !2424, file: !2425, line: 23, type: !1244)
!2436 = !DILocalVariable(name: "__u", scope: !2424, file: !2425, line: 23, type: !1244)
!2437 = !DILocalVariable(name: "__idx", scope: !2424, file: !2425, line: 23, type: !1244)
!2438 = !DILocalVariable(name: "__p", scope: !2424, file: !2425, line: 24, type: !1229)
!2439 = !DILocalVariable(name: "__comparison", scope: !2424, file: !2425, line: 25, type: !661)
!2440 = !DILocation(line: 0, scope: !2424)
!2441 = !DILocation(line: 29, column: 3, scope: !2424)
!2442 = !DILocation(line: 27, column: 7, scope: !2424)
!2443 = !DILocation(line: 29, column: 14, scope: !2424)
!2444 = !DILocation(line: 31, column: 20, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2424, file: !2425, line: 30, column: 5)
!2446 = !DILocation(line: 31, column: 27, scope: !2445)
!2447 = !DILocation(line: 32, column: 56, scope: !2445)
!2448 = !DILocation(line: 32, column: 47, scope: !2445)
!2449 = !DILocation(line: 33, column: 22, scope: !2445)
!2450 = !DILocation(line: 34, column: 24, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2445, file: !2425, line: 34, column: 11)
!2452 = !DILocation(line: 34, column: 11, scope: !2445)
!2453 = !DILocation(line: 36, column: 29, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2451, file: !2425, line: 36, column: 16)
!2455 = !DILocation(line: 36, column: 16, scope: !2451)
!2456 = !DILocation(line: 37, column: 14, scope: !2454)
!2457 = distinct !{!2457, !2441, !2458}
!2458 = !DILocation(line: 40, column: 5, scope: !2424)
!2459 = !DILocation(line: 43, column: 1, scope: !2424)
!2460 = distinct !DISubprogram(name: "atof", scope: !2461, file: !2461, line: 25, type: !2462, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2465)
!2461 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!2464, !666}
!2464 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2465 = !{!2466}
!2466 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2460, file: !2461, line: 25, type: !666)
!2467 = !DILocation(line: 0, scope: !2460)
!2468 = !DILocation(line: 27, column: 10, scope: !2460)
!2469 = !DILocation(line: 27, column: 3, scope: !2460)
!2470 = distinct !DISubprogram(name: "strtoimax", scope: !2471, file: !2471, line: 324, type: !2472, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2478)
!2471 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!2474, !2231, !2477, !661}
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2475, line: 101, baseType: !2476)
!2475 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2283, line: 72, baseType: !703)
!2477 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !662)
!2478 = !{!2479, !2480, !2481}
!2479 = !DILocalVariable(name: "nptr", arg: 1, scope: !2470, file: !2471, line: 324, type: !2231)
!2480 = !DILocalVariable(name: "endptr", arg: 2, scope: !2470, file: !2471, line: 324, type: !2477)
!2481 = !DILocalVariable(name: "base", arg: 3, scope: !2470, file: !2471, line: 324, type: !661)
!2482 = !DILocation(line: 0, scope: !2470)
!2483 = !DILocation(line: 327, column: 10, scope: !2470)
!2484 = !DILocation(line: 327, column: 3, scope: !2470)
!2485 = distinct !DISubprogram(name: "strtoumax", scope: !2471, file: !2471, line: 336, type: !2486, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2490)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!2488, !2231, !2477, !661}
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2475, line: 102, baseType: !2489)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2283, line: 73, baseType: !686)
!2490 = !{!2491, !2492, !2493}
!2491 = !DILocalVariable(name: "nptr", arg: 1, scope: !2485, file: !2471, line: 336, type: !2231)
!2492 = !DILocalVariable(name: "endptr", arg: 2, scope: !2485, file: !2471, line: 336, type: !2477)
!2493 = !DILocalVariable(name: "base", arg: 3, scope: !2485, file: !2471, line: 336, type: !661)
!2494 = !DILocation(line: 0, scope: !2485)
!2495 = !DILocation(line: 339, column: 10, scope: !2485)
!2496 = !DILocation(line: 339, column: 3, scope: !2485)
!2497 = distinct !DISubprogram(name: "wcstoimax", scope: !2471, file: !2471, line: 348, type: !2498, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2507)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!2474, !2500, !2504, !661}
!2500 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2501)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2503)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2471, line: 34, baseType: !661)
!2504 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2505)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2507 = !{!2508, !2509, !2510}
!2508 = !DILocalVariable(name: "nptr", arg: 1, scope: !2497, file: !2471, line: 348, type: !2500)
!2509 = !DILocalVariable(name: "endptr", arg: 2, scope: !2497, file: !2471, line: 348, type: !2504)
!2510 = !DILocalVariable(name: "base", arg: 3, scope: !2497, file: !2471, line: 348, type: !661)
!2511 = !DILocation(line: 0, scope: !2497)
!2512 = !DILocation(line: 351, column: 10, scope: !2497)
!2513 = !DILocation(line: 351, column: 3, scope: !2497)
!2514 = distinct !DISubprogram(name: "wcstoumax", scope: !2471, file: !2471, line: 362, type: !2515, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!2488, !2500, !2504, !661}
!2517 = !{!2518, !2519, !2520}
!2518 = !DILocalVariable(name: "nptr", arg: 1, scope: !2514, file: !2471, line: 362, type: !2500)
!2519 = !DILocalVariable(name: "endptr", arg: 2, scope: !2514, file: !2471, line: 362, type: !2504)
!2520 = !DILocalVariable(name: "base", arg: 3, scope: !2514, file: !2471, line: 362, type: !661)
!2521 = !DILocation(line: 0, scope: !2514)
!2522 = !DILocation(line: 365, column: 10, scope: !2514)
!2523 = !DILocation(line: 365, column: 3, scope: !2514)
!2524 = distinct !DISubprogram(name: "stat", scope: !2525, file: !2525, line: 453, type: !2526, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2563)
!2525 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!661, !666, !2528}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2530, line: 46, size: 1152, elements: !2531)
!2530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2531 = !{!2532, !2534, !2536, !2538, !2540, !2542, !2544, !2545, !2546, !2547, !2549, !2551, !2559, !2560, !2561}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2529, file: !2530, line: 48, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2283, line: 145, baseType: !686)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2529, file: !2530, line: 53, baseType: !2535, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2283, line: 148, baseType: !686)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2529, file: !2530, line: 61, baseType: !2537, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2283, line: 151, baseType: !686)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2529, file: !2530, line: 62, baseType: !2539, size: 32, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2283, line: 150, baseType: !7)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2529, file: !2530, line: 64, baseType: !2541, size: 32, offset: 224)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2283, line: 146, baseType: !7)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2529, file: !2530, line: 65, baseType: !2543, size: 32, offset: 256)
!2543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2283, line: 147, baseType: !7)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2529, file: !2530, line: 67, baseType: !661, size: 32, offset: 288)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2529, file: !2530, line: 69, baseType: !2533, size: 64, offset: 320)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2529, file: !2530, line: 74, baseType: !2282, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2529, file: !2530, line: 78, baseType: !2548, size: 64, offset: 448)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2283, line: 174, baseType: !703)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2529, file: !2530, line: 80, baseType: !2550, size: 64, offset: 512)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2283, line: 179, baseType: !703)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2529, file: !2530, line: 91, baseType: !2552, size: 128, offset: 576)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2553, line: 10, size: 128, elements: !2554)
!2553 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2554 = !{!2555, !2557}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2552, file: !2553, line: 12, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2283, line: 160, baseType: !703)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2552, file: !2553, line: 16, baseType: !2558, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2283, line: 196, baseType: !703)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2529, file: !2530, line: 92, baseType: !2552, size: 128, offset: 704)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2529, file: !2530, line: 93, baseType: !2552, size: 128, offset: 832)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2529, file: !2530, line: 106, baseType: !2562, size: 192, offset: 960)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2558, size: 192, elements: !885)
!2563 = !{!2564, !2565}
!2564 = !DILocalVariable(name: "__path", arg: 1, scope: !2524, file: !2525, line: 453, type: !666)
!2565 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2524, file: !2525, line: 453, type: !2528)
!2566 = !DILocation(line: 0, scope: !2524)
!2567 = !DILocation(line: 455, column: 10, scope: !2524)
!2568 = !DILocation(line: 455, column: 3, scope: !2524)
!2569 = distinct !DISubprogram(name: "lstat", scope: !2525, file: !2525, line: 460, type: !2526, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2570)
!2570 = !{!2571, !2572}
!2571 = !DILocalVariable(name: "__path", arg: 1, scope: !2569, file: !2525, line: 460, type: !666)
!2572 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2569, file: !2525, line: 460, type: !2528)
!2573 = !DILocation(line: 0, scope: !2569)
!2574 = !DILocation(line: 462, column: 10, scope: !2569)
!2575 = !DILocation(line: 462, column: 3, scope: !2569)
!2576 = distinct !DISubprogram(name: "fstat", scope: !2525, file: !2525, line: 467, type: !2577, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!661, !661, !2528}
!2579 = !{!2580, !2581}
!2580 = !DILocalVariable(name: "__fd", arg: 1, scope: !2576, file: !2525, line: 467, type: !661)
!2581 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2576, file: !2525, line: 467, type: !2528)
!2582 = !DILocation(line: 0, scope: !2576)
!2583 = !DILocation(line: 469, column: 10, scope: !2576)
!2584 = !DILocation(line: 469, column: 3, scope: !2576)
!2585 = distinct !DISubprogram(name: "fstatat", scope: !2525, file: !2525, line: 474, type: !2586, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2588)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!661, !661, !666, !2528, !661}
!2588 = !{!2589, !2590, !2591, !2592}
!2589 = !DILocalVariable(name: "__fd", arg: 1, scope: !2585, file: !2525, line: 474, type: !661)
!2590 = !DILocalVariable(name: "__filename", arg: 2, scope: !2585, file: !2525, line: 474, type: !666)
!2591 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2585, file: !2525, line: 474, type: !2528)
!2592 = !DILocalVariable(name: "__flag", arg: 4, scope: !2585, file: !2525, line: 474, type: !661)
!2593 = !DILocation(line: 0, scope: !2585)
!2594 = !DILocation(line: 477, column: 10, scope: !2585)
!2595 = !DILocation(line: 477, column: 3, scope: !2585)
!2596 = distinct !DISubprogram(name: "mknod", scope: !2525, file: !2525, line: 483, type: !2597, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!661, !666, !2539, !2533}
!2599 = !{!2600, !2601, !2602}
!2600 = !DILocalVariable(name: "__path", arg: 1, scope: !2596, file: !2525, line: 483, type: !666)
!2601 = !DILocalVariable(name: "__mode", arg: 2, scope: !2596, file: !2525, line: 483, type: !2539)
!2602 = !DILocalVariable(name: "__dev", arg: 3, scope: !2596, file: !2525, line: 483, type: !2533)
!2603 = !DILocation(line: 0, scope: !2596)
!2604 = !DILocation(line: 485, column: 10, scope: !2596)
!2605 = !DILocation(line: 485, column: 3, scope: !2596)
!2606 = distinct !DISubprogram(name: "mknodat", scope: !2525, file: !2525, line: 491, type: !2607, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!661, !661, !666, !2539, !2533}
!2609 = !{!2610, !2611, !2612, !2613}
!2610 = !DILocalVariable(name: "__fd", arg: 1, scope: !2606, file: !2525, line: 491, type: !661)
!2611 = !DILocalVariable(name: "__path", arg: 2, scope: !2606, file: !2525, line: 491, type: !666)
!2612 = !DILocalVariable(name: "__mode", arg: 3, scope: !2606, file: !2525, line: 491, type: !2539)
!2613 = !DILocalVariable(name: "__dev", arg: 4, scope: !2606, file: !2525, line: 491, type: !2533)
!2614 = !DILocation(line: 0, scope: !2606)
!2615 = !DILocation(line: 494, column: 10, scope: !2606)
!2616 = !DILocation(line: 494, column: 3, scope: !2606)
!2617 = distinct !DISubprogram(name: "stat64", scope: !2525, file: !2525, line: 502, type: !2618, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2640)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!661, !666, !2620}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2530, line: 119, size: 1152, elements: !2622)
!2622 = !{!2623, !2624, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2636, !2637, !2638, !2639}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2621, file: !2530, line: 121, baseType: !2533, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2621, file: !2530, line: 123, baseType: !2625, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2283, line: 149, baseType: !686)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2621, file: !2530, line: 124, baseType: !2537, size: 64, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2621, file: !2530, line: 125, baseType: !2539, size: 32, offset: 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2621, file: !2530, line: 132, baseType: !2541, size: 32, offset: 224)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2621, file: !2530, line: 133, baseType: !2543, size: 32, offset: 256)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2621, file: !2530, line: 135, baseType: !661, size: 32, offset: 288)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2621, file: !2530, line: 136, baseType: !2533, size: 64, offset: 320)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2621, file: !2530, line: 137, baseType: !2282, size: 64, offset: 384)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2621, file: !2530, line: 143, baseType: !2548, size: 64, offset: 448)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2621, file: !2530, line: 144, baseType: !2635, size: 64, offset: 512)
!2635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2283, line: 180, baseType: !703)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2621, file: !2530, line: 152, baseType: !2552, size: 128, offset: 576)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2621, file: !2530, line: 153, baseType: !2552, size: 128, offset: 704)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2621, file: !2530, line: 154, baseType: !2552, size: 128, offset: 832)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2621, file: !2530, line: 164, baseType: !2562, size: 192, offset: 960)
!2640 = !{!2641, !2642}
!2641 = !DILocalVariable(name: "__path", arg: 1, scope: !2617, file: !2525, line: 502, type: !666)
!2642 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2617, file: !2525, line: 502, type: !2620)
!2643 = !DILocation(line: 0, scope: !2617)
!2644 = !DILocation(line: 504, column: 10, scope: !2617)
!2645 = !DILocation(line: 504, column: 3, scope: !2617)
!2646 = distinct !DISubprogram(name: "lstat64", scope: !2525, file: !2525, line: 509, type: !2618, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2647)
!2647 = !{!2648, !2649}
!2648 = !DILocalVariable(name: "__path", arg: 1, scope: !2646, file: !2525, line: 509, type: !666)
!2649 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2646, file: !2525, line: 509, type: !2620)
!2650 = !DILocation(line: 0, scope: !2646)
!2651 = !DILocation(line: 511, column: 10, scope: !2646)
!2652 = !DILocation(line: 511, column: 3, scope: !2646)
!2653 = distinct !DISubprogram(name: "fstat64", scope: !2525, file: !2525, line: 516, type: !2654, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!661, !661, !2620}
!2656 = !{!2657, !2658}
!2657 = !DILocalVariable(name: "__fd", arg: 1, scope: !2653, file: !2525, line: 516, type: !661)
!2658 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2653, file: !2525, line: 516, type: !2620)
!2659 = !DILocation(line: 0, scope: !2653)
!2660 = !DILocation(line: 518, column: 10, scope: !2653)
!2661 = !DILocation(line: 518, column: 3, scope: !2653)
!2662 = distinct !DISubprogram(name: "fstatat64", scope: !2525, file: !2525, line: 523, type: !2663, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2665)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!661, !661, !666, !2620, !661}
!2665 = !{!2666, !2667, !2668, !2669}
!2666 = !DILocalVariable(name: "__fd", arg: 1, scope: !2662, file: !2525, line: 523, type: !661)
!2667 = !DILocalVariable(name: "__filename", arg: 2, scope: !2662, file: !2525, line: 523, type: !666)
!2668 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2662, file: !2525, line: 523, type: !2620)
!2669 = !DILocalVariable(name: "__flag", arg: 4, scope: !2662, file: !2525, line: 523, type: !661)
!2670 = !DILocation(line: 0, scope: !2662)
!2671 = !DILocation(line: 526, column: 10, scope: !2662)
!2672 = !DILocation(line: 526, column: 3, scope: !2662)
!2673 = distinct !DISubprogram(name: "debug_rdg_partitions", scope: !3, file: !3, line: 981, type: !2674, scopeLine: 982, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{null, !2062}
!2676 = !{!2677}
!2677 = !DILocalVariable(name: "partitions", arg: 1, scope: !2673, file: !3, line: 981, type: !2062)
!2678 = !DILocation(line: 0, scope: !2673)
!2679 = !DILocation(line: 983, column: 24, scope: !2673)
!2680 = !DILocation(line: 983, column: 3, scope: !2673)
!2681 = !DILocation(line: 984, column: 1, scope: !2673)
!2682 = distinct !DISubprogram(name: "dump_rdg_partitions", scope: !3, file: !3, line: 968, type: !2683, scopeLine: 969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{null, !2256, !2062}
!2685 = !{!2686, !2687, !2688, !2689}
!2686 = !DILocalVariable(name: "file", arg: 1, scope: !2682, file: !3, line: 968, type: !2256)
!2687 = !DILocalVariable(name: "partitions", arg: 2, scope: !2682, file: !3, line: 968, type: !2062)
!2688 = !DILocalVariable(name: "i", scope: !2682, file: !3, line: 970, type: !661)
!2689 = !DILocalVariable(name: "partition", scope: !2682, file: !3, line: 971, type: !668)
!2690 = !DILocation(line: 0, scope: !2682)
!2691 = !DILocation(line: 971, column: 3, scope: !2682)
!2692 = !DILocation(line: 0, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 973, column: 3)
!2694 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 973, column: 3)
!2695 = !DILocation(line: 973, column: 8, scope: !2694)
!2696 = !DILocation(line: 0, scope: !2694)
!2697 = !DILocation(line: 973, column: 15, scope: !2693)
!2698 = !DILocation(line: 973, column: 3, scope: !2694)
!2699 = !DILocation(line: 974, column: 30, scope: !2693)
!2700 = !DILocation(line: 974, column: 5, scope: !2693)
!2701 = !DILocation(line: 973, column: 64, scope: !2693)
!2702 = !DILocation(line: 973, column: 3, scope: !2693)
!2703 = distinct !{!2703, !2698, !2704}
!2704 = !DILocation(line: 974, column: 39, scope: !2694)
!2705 = !DILocation(line: 975, column: 1, scope: !2682)
!2706 = distinct !DISubprogram(name: "gate_tree_loop_distribution", scope: !3, file: !3, line: 1226, type: !2206, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2249)
!2707 = !DILocation(line: 1228, column: 10, scope: !2706)
!2708 = !DILocation(line: 1228, column: 38, scope: !2706)
!2709 = !DILocation(line: 1228, column: 3, scope: !2706)
!2710 = distinct !DISubprogram(name: "tree_loop_distribution", scope: !3, file: !3, line: 1185, type: !2210, scopeLine: 1186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2711)
!2711 = !{!2712, !2713, !2719, !2720}
!2712 = !DILocalVariable(name: "loop", scope: !2710, file: !3, line: 1187, type: !747)
!2713 = !DILocalVariable(name: "li", scope: !2710, file: !3, line: 1188, type: !2714)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !561, line: 515, baseType: !2715)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 508, size: 128, elements: !2716)
!2716 = !{!2717, !2718}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !2715, file: !561, line: 511, baseType: !731, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2715, file: !561, line: 514, baseType: !7, size: 32, offset: 64)
!2719 = !DILocalVariable(name: "nb_generated_loops", scope: !2710, file: !3, line: 1189, type: !661)
!2720 = !DILocalVariable(name: "work_list", scope: !2721, file: !3, line: 1193, type: !2033)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1192, column: 5)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 1191, column: 3)
!2723 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 1191, column: 3)
!2724 = !DILocation(line: 1187, column: 3, scope: !2710)
!2725 = !DILocation(line: 1188, column: 3, scope: !2710)
!2726 = !DILocation(line: 0, scope: !2710)
!2727 = !DILocation(line: 1191, column: 3, scope: !2723)
!2728 = !DILocation(line: 0, scope: !2721)
!2729 = !DILocation(line: 1191, column: 3, scope: !2722)
!2730 = !DILocation(line: 1193, column: 7, scope: !2721)
!2731 = !DILocation(line: 1193, column: 39, scope: !2721)
!2732 = !DILocation(line: 1193, column: 27, scope: !2721)
!2733 = !DILocation(line: 1198, column: 25, scope: !2721)
!2734 = !DILocation(line: 1198, column: 7, scope: !2721)
!2735 = !DILocation(line: 1204, column: 7, scope: !2721)
!2736 = !DILocation(line: 1206, column: 45, scope: !2721)
!2737 = !DILocation(line: 1206, column: 51, scope: !2721)
!2738 = !DILocation(line: 1206, column: 28, scope: !2721)
!2739 = !DILocation(line: 1208, column: 11, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 1208, column: 11)
!2741 = !DILocation(line: 1208, column: 21, scope: !2740)
!2742 = !DILocation(line: 1208, column: 25, scope: !2740)
!2743 = !DILocation(line: 1208, column: 36, scope: !2740)
!2744 = !DILocation(line: 1208, column: 11, scope: !2721)
!2745 = !DILocation(line: 1210, column: 27, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1210, column: 8)
!2747 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 1209, column: 2)
!2748 = !DILocation(line: 0, scope: !2746)
!2749 = !DILocation(line: 1210, column: 8, scope: !2747)
!2750 = !DILocation(line: 1211, column: 6, scope: !2746)
!2751 = !DILocation(line: 1214, column: 6, scope: !2746)
!2752 = !DILocation(line: 1217, column: 7, scope: !2721)
!2753 = !DILocation(line: 1219, column: 7, scope: !2721)
!2754 = !DILocation(line: 1220, column: 5, scope: !2722)
!2755 = distinct !{!2755, !2727, !2756}
!2756 = !DILocation(line: 1220, column: 5, scope: !2723)
!2757 = !DILocation(line: 1223, column: 1, scope: !2710)
!2758 = !DILocation(line: 1222, column: 3, scope: !2710)
!2759 = distinct !DISubprogram(name: "VEC_bitmap_base_iterate", scope: !574, file: !574, line: 606, type: !2760, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2765)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!661, !2762, !7, !2764}
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2067)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!2765 = !{!2766, !2767, !2768}
!2766 = !DILocalVariable(name: "vec_", arg: 1, scope: !2759, file: !574, line: 606, type: !2762)
!2767 = !DILocalVariable(name: "ix_", arg: 2, scope: !2759, file: !574, line: 606, type: !7)
!2768 = !DILocalVariable(name: "ptr", arg: 3, scope: !2759, file: !574, line: 606, type: !2764)
!2769 = !DILocation(line: 0, scope: !2759)
!2770 = !DILocation(line: 606, column: 1, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2759, file: !574, line: 606, column: 1)
!2772 = !DILocation(line: 606, column: 1, scope: !2759)
!2773 = !DILocation(line: 606, column: 1, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2771, file: !574, line: 606, column: 1)
!2775 = !DILocation(line: 606, column: 1, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2771, file: !574, line: 606, column: 1)
!2777 = !DILocation(line: 0, scope: !2771)
!2778 = distinct !DISubprogram(name: "fel_init", scope: !561, file: !561, line: 535, type: !2779, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2783)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null, !2781, !2782, !7}
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2789}
!2784 = !DILocalVariable(name: "li", arg: 1, scope: !2778, file: !561, line: 535, type: !2781)
!2785 = !DILocalVariable(name: "loop", arg: 2, scope: !2778, file: !561, line: 535, type: !2782)
!2786 = !DILocalVariable(name: "flags", arg: 3, scope: !2778, file: !561, line: 535, type: !7)
!2787 = !DILocalVariable(name: "aloop", scope: !2778, file: !561, line: 537, type: !747)
!2788 = !DILocalVariable(name: "i", scope: !2778, file: !561, line: 538, type: !7)
!2789 = !DILocalVariable(name: "mn", scope: !2778, file: !561, line: 539, type: !661)
!2790 = !DILocation(line: 0, scope: !2778)
!2791 = !DILocation(line: 541, column: 7, scope: !2778)
!2792 = !DILocation(line: 541, column: 11, scope: !2778)
!2793 = !DILocation(line: 542, column: 8, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2778, file: !561, line: 542, column: 7)
!2795 = !DILocation(line: 542, column: 7, scope: !2778)
!2796 = !DILocation(line: 544, column: 11, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2794, file: !561, line: 543, column: 5)
!2798 = !DILocation(line: 544, column: 20, scope: !2797)
!2799 = !DILocation(line: 545, column: 13, scope: !2797)
!2800 = !DILocation(line: 546, column: 7, scope: !2797)
!2801 = !DILocation(line: 549, column: 18, scope: !2778)
!2802 = !DILocation(line: 549, column: 7, scope: !2778)
!2803 = !DILocation(line: 549, column: 16, scope: !2778)
!2804 = !DILocation(line: 0, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !561, line: 560, column: 12)
!2806 = distinct !DILexicalBlock(scope: !2778, file: !561, line: 552, column: 7)
!2807 = !DILocation(line: 590, column: 7, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2805, file: !561, line: 587, column: 5)
!2809 = !DILocation(line: 592, column: 8, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !561, line: 592, column: 8)
!2811 = distinct !DILexicalBlock(scope: !2808, file: !561, line: 591, column: 2)
!2812 = !DILocation(line: 592, column: 15, scope: !2810)
!2813 = !DILocation(line: 592, column: 19, scope: !2810)
!2814 = !DILocation(line: 592, column: 8, scope: !2811)
!2815 = !DILocation(line: 593, column: 6, scope: !2810)
!2816 = !DILocation(line: 595, column: 15, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2811, file: !561, line: 595, column: 8)
!2818 = !DILocation(line: 595, column: 21, scope: !2817)
!2819 = !DILocation(line: 595, column: 8, scope: !2811)
!2820 = !DILocation(line: 599, column: 8, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2817, file: !561, line: 598, column: 6)
!2822 = !DILocation(line: 596, column: 21, scope: !2817)
!2823 = !DILocation(line: 596, column: 6, scope: !2817)
!2824 = !DILocation(line: 599, column: 15, scope: !2821)
!2825 = !DILocation(line: 599, column: 21, scope: !2821)
!2826 = !DILocation(line: 599, column: 29, scope: !2821)
!2827 = !DILocation(line: 599, column: 39, scope: !2821)
!2828 = !DILocation(line: 599, column: 44, scope: !2821)
!2829 = !DILocation(line: 0, scope: !2821)
!2830 = !DILocation(line: 600, column: 11, scope: !2821)
!2831 = distinct !{!2831, !2820, !2832}
!2832 = !DILocation(line: 600, column: 28, scope: !2821)
!2833 = !DILocation(line: 601, column: 18, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2821, file: !561, line: 601, column: 12)
!2835 = !DILocation(line: 601, column: 12, scope: !2821)
!2836 = !DILocation(line: 603, column: 23, scope: !2821)
!2837 = distinct !{!2837, !2807, !2838}
!2838 = !DILocation(line: 605, column: 2, scope: !2808)
!2839 = !DILocation(line: 608, column: 3, scope: !2778)
!2840 = !DILocation(line: 609, column: 1, scope: !2778)
!2841 = distinct !DISubprogram(name: "VEC_gimple_heap_alloc", scope: !581, file: !581, line: 34, type: !2842, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!2033, !661}
!2844 = !{!2845}
!2845 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2841, file: !581, line: 34, type: !661)
!2846 = !DILocation(line: 0, scope: !2841)
!2847 = !DILocation(line: 34, column: 1, scope: !2841)
!2848 = distinct !DISubprogram(name: "distribute_loop", scope: !3, file: !3, line: 1126, type: !2849, scopeLine: 1127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!661, !747, !2033}
!2851 = !{!2852, !2853, !2854, !2855, !2879, !2880, !2881, !2882}
!2852 = !DILocalVariable(name: "loop", arg: 1, scope: !2848, file: !3, line: 1126, type: !747)
!2853 = !DILocalVariable(name: "stmts", arg: 2, scope: !2848, file: !3, line: 1126, type: !2033)
!2854 = !DILocalVariable(name: "res", scope: !2848, file: !3, line: 1128, type: !661)
!2855 = !DILocalVariable(name: "rdg", scope: !2848, file: !3, line: 1129, type: !2856)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "graph", file: !2858, line: 45, size: 192, elements: !2859)
!2858 = !DIFile(filename: "./graphds.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2859 = !{!2860, !2861, !2878}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "n_vertices", scope: !2857, file: !2858, line: 47, baseType: !661, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "vertices", scope: !2857, file: !2858, line: 48, baseType: !2862, size: 64, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vertex", file: !2858, line: 33, size: 256, elements: !2864)
!2864 = !{!2865, !2874, !2875, !2876, !2877}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !2863, file: !2858, line: 35, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "graph_edge", file: !2858, line: 23, size: 256, elements: !2868)
!2868 = !{!2869, !2870, !2871, !2872, !2873}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2867, file: !2858, line: 25, baseType: !661, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !2867, file: !2858, line: 25, baseType: !661, size: 32, offset: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "pred_next", scope: !2867, file: !2858, line: 26, baseType: !2866, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "succ_next", scope: !2867, file: !2858, line: 26, baseType: !2866, size: 64, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2867, file: !2858, line: 28, baseType: !665, size: 64, offset: 192)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "succ", scope: !2863, file: !2858, line: 35, baseType: !2866, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "component", scope: !2863, file: !2858, line: 37, baseType: !661, size: 32, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !2863, file: !2858, line: 39, baseType: !661, size: 32, offset: 160)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2863, file: !2858, line: 40, baseType: !665, size: 64, offset: 192)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !2857, file: !2858, line: 50, baseType: !1218, size: 64, offset: 128)
!2879 = !DILocalVariable(name: "s", scope: !2848, file: !3, line: 1130, type: !789)
!2880 = !DILocalVariable(name: "i", scope: !2848, file: !3, line: 1131, type: !7)
!2881 = !DILocalVariable(name: "vertices", scope: !2848, file: !3, line: 1132, type: !731)
!2882 = !DILocalVariable(name: "v", scope: !2883, file: !3, line: 1163, type: !661)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 1162, column: 5)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 1161, column: 3)
!2885 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 1161, column: 3)
!2886 = !DILocation(line: 0, scope: !2848)
!2887 = !DILocation(line: 1130, column: 3, scope: !2848)
!2888 = !DILocation(line: 1132, column: 3, scope: !2848)
!2889 = !DILocation(line: 1134, column: 13, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 1134, column: 7)
!2891 = !DILocation(line: 1134, column: 23, scope: !2890)
!2892 = !DILocation(line: 1134, column: 7, scope: !2848)
!2893 = !DILocation(line: 1136, column: 11, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 1136, column: 11)
!2895 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 1135, column: 5)
!2896 = !DILocation(line: 1136, column: 21, scope: !2894)
!2897 = !DILocation(line: 1136, column: 25, scope: !2894)
!2898 = !DILocation(line: 1136, column: 36, scope: !2894)
!2899 = !DILocation(line: 1136, column: 11, scope: !2895)
!2900 = !DILocation(line: 1139, column: 10, scope: !2894)
!2901 = !DILocation(line: 1137, column: 2, scope: !2894)
!2902 = !DILocation(line: 1144, column: 9, scope: !2848)
!2903 = !DILocation(line: 1146, column: 8, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 1146, column: 7)
!2905 = !DILocation(line: 1146, column: 7, scope: !2848)
!2906 = !DILocation(line: 1148, column: 11, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 1148, column: 11)
!2908 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 1147, column: 5)
!2909 = !DILocation(line: 1148, column: 21, scope: !2907)
!2910 = !DILocation(line: 1148, column: 25, scope: !2907)
!2911 = !DILocation(line: 1148, column: 36, scope: !2907)
!2912 = !DILocation(line: 1148, column: 11, scope: !2908)
!2913 = !DILocation(line: 1151, column: 10, scope: !2907)
!2914 = !DILocation(line: 1149, column: 2, scope: !2907)
!2915 = !DILocation(line: 1156, column: 14, scope: !2848)
!2916 = !DILocation(line: 1156, column: 12, scope: !2848)
!2917 = !DILocation(line: 1158, column: 7, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 1158, column: 7)
!2919 = !DILocation(line: 1158, column: 17, scope: !2918)
!2920 = !DILocation(line: 1158, column: 21, scope: !2918)
!2921 = !DILocation(line: 1158, column: 32, scope: !2918)
!2922 = !DILocation(line: 1158, column: 7, scope: !2848)
!2923 = !DILocation(line: 1159, column: 5, scope: !2918)
!2924 = !DILocation(line: 0, scope: !2884)
!2925 = !DILocation(line: 1161, column: 8, scope: !2885)
!2926 = !DILocation(line: 0, scope: !2885)
!2927 = !DILocation(line: 1161, column: 15, scope: !2884)
!2928 = !DILocation(line: 1161, column: 3, scope: !2885)
!2929 = !DILocation(line: 1163, column: 41, scope: !2883)
!2930 = !DILocation(line: 1163, column: 15, scope: !2883)
!2931 = !DILocation(line: 0, scope: !2883)
!2932 = !DILocation(line: 1165, column: 13, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1165, column: 11)
!2934 = !DILocation(line: 1165, column: 11, scope: !2883)
!2935 = !DILocation(line: 1167, column: 4, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 1166, column: 2)
!2937 = !DILocation(line: 1169, column: 8, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 1169, column: 8)
!2939 = !DILocation(line: 1169, column: 18, scope: !2938)
!2940 = !DILocation(line: 1169, column: 22, scope: !2938)
!2941 = !DILocation(line: 1169, column: 33, scope: !2938)
!2942 = !DILocation(line: 1169, column: 8, scope: !2936)
!2943 = !DILocation(line: 1170, column: 6, scope: !2938)
!2944 = !DILocation(line: 1161, column: 51, scope: !2884)
!2945 = !DILocation(line: 1161, column: 3, scope: !2884)
!2946 = distinct !{!2946, !2928, !2947}
!2947 = !DILocation(line: 1173, column: 5, scope: !2885)
!2948 = !DILocation(line: 1175, column: 31, scope: !2848)
!2949 = !DILocation(line: 1175, column: 9, scope: !2848)
!2950 = !DILocation(line: 1176, column: 3, scope: !2848)
!2951 = !DILocation(line: 1177, column: 3, scope: !2848)
!2952 = !DILocation(line: 1179, column: 3, scope: !2848)
!2953 = !DILocation(line: 1180, column: 1, scope: !2848)
!2954 = distinct !DISubprogram(name: "VEC_gimple_heap_free", scope: !581, file: !581, line: 34, type: !2955, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2958)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !2957}
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2958 = !{!2959}
!2959 = !DILocalVariable(name: "vec_", arg: 1, scope: !2954, file: !581, line: 34, type: !2957)
!2960 = !DILocation(line: 0, scope: !2954)
!2961 = !DILocation(line: 34, column: 1, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2954, file: !581, line: 34, column: 1)
!2963 = !DILocation(line: 34, column: 1, scope: !2954)
!2964 = distinct !DISubprogram(name: "fel_next", scope: !561, file: !561, line: 518, type: !2965, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !2781, !2782}
!2967 = !{!2968, !2969, !2970}
!2968 = !DILocalVariable(name: "li", arg: 1, scope: !2964, file: !561, line: 518, type: !2781)
!2969 = !DILocalVariable(name: "loop", arg: 2, scope: !2964, file: !561, line: 518, type: !2782)
!2970 = !DILocalVariable(name: "anum", scope: !2964, file: !561, line: 520, type: !661)
!2971 = !DILocation(line: 0, scope: !2964)
!2972 = !DILocation(line: 520, column: 3, scope: !2964)
!2973 = !DILocation(line: 522, column: 3, scope: !2964)
!2974 = !DILocation(line: 522, column: 10, scope: !2964)
!2975 = !DILocation(line: 524, column: 14, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2964, file: !561, line: 523, column: 5)
!2977 = !DILocation(line: 525, column: 25, scope: !2976)
!2978 = !DILocation(line: 525, column: 15, scope: !2976)
!2979 = !DILocation(line: 525, column: 13, scope: !2976)
!2980 = !DILocation(line: 526, column: 11, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2976, file: !561, line: 526, column: 11)
!2982 = !DILocation(line: 526, column: 11, scope: !2976)
!2983 = distinct !{!2983, !2973, !2984}
!2984 = !DILocation(line: 528, column: 5, scope: !2964)
!2985 = !DILocation(line: 530, column: 3, scope: !2964)
!2986 = !DILocation(line: 531, column: 9, scope: !2964)
!2987 = !DILocation(line: 532, column: 1, scope: !2964)
!2988 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !733, file: !733, line: 32, type: !2989, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!731, !661}
!2991 = !{!2992}
!2992 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2988, file: !733, line: 32, type: !661)
!2993 = !DILocation(line: 0, scope: !2988)
!2994 = !DILocation(line: 32, column: 1, scope: !2988)
!2995 = distinct !DISubprogram(name: "number_of_loops", scope: !561, file: !561, line: 459, type: !2210, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2249)
!2996 = !DILocation(line: 461, column: 8, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2995, file: !561, line: 461, column: 7)
!2998 = !DILocation(line: 461, column: 7, scope: !2995)
!2999 = !DILocation(line: 464, column: 10, scope: !2995)
!3000 = !DILocation(line: 464, column: 3, scope: !2995)
!3001 = !DILocation(line: 0, scope: !2995)
!3002 = !DILocation(line: 465, column: 1, scope: !2995)
!3003 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !561, file: !561, line: 85, type: !3004, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3008)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!661, !3006, !7, !2782}
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1363)
!3008 = !{!3009, !3010, !3011}
!3009 = !DILocalVariable(name: "vec_", arg: 1, scope: !3003, file: !561, line: 85, type: !3006)
!3010 = !DILocalVariable(name: "ix_", arg: 2, scope: !3003, file: !561, line: 85, type: !7)
!3011 = !DILocalVariable(name: "ptr", arg: 3, scope: !3003, file: !561, line: 85, type: !2782)
!3012 = !DILocation(line: 0, scope: !3003)
!3013 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !733, file: !733, line: 31, type: !3014, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3017)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!2142, !3016, !661}
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!3017 = !{!3018, !3019, !3020}
!3018 = !DILocalVariable(name: "vec_", arg: 1, scope: !3013, file: !733, line: 31, type: !3016)
!3019 = !DILocalVariable(name: "obj_", arg: 2, scope: !3013, file: !733, line: 31, type: !661)
!3020 = !DILocalVariable(name: "slot_", scope: !3013, file: !733, line: 31, type: !2142)
!3021 = !DILocation(line: 0, scope: !3013)
!3022 = !DILocation(line: 31, column: 1, scope: !3013)
!3023 = distinct !DISubprogram(name: "loop_outer", scope: !561, file: !561, line: 434, type: !3024, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3028)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!747, !3026}
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!3028 = !{!3029, !3030}
!3029 = !DILocalVariable(name: "loop", arg: 1, scope: !3023, file: !561, line: 434, type: !3026)
!3030 = !DILocalVariable(name: "n", scope: !3023, file: !561, line: 436, type: !7)
!3031 = !DILocation(line: 0, scope: !3023)
!3032 = !DILocation(line: 436, column: 16, scope: !3023)
!3033 = !DILocation(line: 438, column: 9, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3023, file: !561, line: 438, column: 7)
!3035 = !DILocation(line: 438, column: 7, scope: !3023)
!3036 = !DILocation(line: 441, column: 10, scope: !3023)
!3037 = !DILocation(line: 441, column: 3, scope: !3023)
!3038 = !DILocation(line: 442, column: 1, scope: !3023)
!3039 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !561, file: !561, line: 85, type: !3040, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3042)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!7, !3006}
!3042 = !{!3043}
!3043 = !DILocalVariable(name: "vec_", arg: 1, scope: !3039, file: !561, line: 85, type: !3006)
!3044 = !DILocation(line: 0, scope: !3039)
!3045 = !DILocation(line: 85, column: 1, scope: !3039)
!3046 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !561, file: !561, line: 85, type: !3047, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!746, !3006, !7}
!3049 = !{!3050, !3051}
!3050 = !DILocalVariable(name: "vec_", arg: 1, scope: !3046, file: !561, line: 85, type: !3006)
!3051 = !DILocalVariable(name: "ix_", arg: 2, scope: !3046, file: !561, line: 85, type: !7)
!3052 = !DILocation(line: 0, scope: !3046)
!3053 = !DILocation(line: 85, column: 1, scope: !3046)
!3054 = distinct !DISubprogram(name: "VEC_gimple_base_iterate", scope: !581, file: !581, line: 33, type: !3055, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3060)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!661, !3057, !7, !3059}
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!3060 = !{!3061, !3062, !3063}
!3061 = !DILocalVariable(name: "vec_", arg: 1, scope: !3054, file: !581, line: 33, type: !3057)
!3062 = !DILocalVariable(name: "ix_", arg: 2, scope: !3054, file: !581, line: 33, type: !7)
!3063 = !DILocalVariable(name: "ptr", arg: 3, scope: !3054, file: !581, line: 33, type: !3059)
!3064 = !DILocation(line: 0, scope: !3054)
!3065 = !DILocation(line: 33, column: 1, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3054, file: !581, line: 33, column: 1)
!3067 = !DILocation(line: 33, column: 1, scope: !3054)
!3068 = !DILocation(line: 33, column: 1, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3066, file: !581, line: 33, column: 1)
!3070 = !DILocation(line: 33, column: 1, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3066, file: !581, line: 33, column: 1)
!3072 = !DILocation(line: 0, scope: !3066)
!3073 = distinct !DISubprogram(name: "VEC_int_heap_safe_push", scope: !733, file: !733, line: 32, type: !3074, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3077)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!2142, !2186, !3076}
!3076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!3077 = !{!3078, !3079}
!3078 = !DILocalVariable(name: "vec_", arg: 1, scope: !3073, file: !733, line: 32, type: !2186)
!3079 = !DILocalVariable(name: "obj_", arg: 2, scope: !3073, file: !733, line: 32, type: !3076)
!3080 = !DILocation(line: 0, scope: !3073)
!3081 = !DILocation(line: 32, column: 1, scope: !3073)
!3082 = distinct !DISubprogram(name: "ldist_gen", scope: !3, file: !3, line: 1048, type: !3083, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3085)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!661, !747, !2856, !731}
!3085 = !{!3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3102, !3103, !3104}
!3086 = !DILocalVariable(name: "loop", arg: 1, scope: !3082, file: !3, line: 1048, type: !747)
!3087 = !DILocalVariable(name: "rdg", arg: 2, scope: !3082, file: !3, line: 1048, type: !2856)
!3088 = !DILocalVariable(name: "starting_vertices", arg: 3, scope: !3082, file: !3, line: 1049, type: !731)
!3089 = !DILocalVariable(name: "i", scope: !3082, file: !3, line: 1051, type: !661)
!3090 = !DILocalVariable(name: "nbp", scope: !3082, file: !3, line: 1051, type: !661)
!3091 = !DILocalVariable(name: "components", scope: !3082, file: !3, line: 1052, type: !2044)
!3092 = !DILocalVariable(name: "partitions", scope: !3082, file: !3, line: 1053, type: !2062)
!3093 = !DILocalVariable(name: "other_stores", scope: !3082, file: !3, line: 1054, type: !731)
!3094 = !DILocalVariable(name: "partition", scope: !3082, file: !3, line: 1055, type: !668)
!3095 = !DILocalVariable(name: "processed", scope: !3082, file: !3, line: 1055, type: !668)
!3096 = !DILocalVariable(name: "v", scope: !3097, file: !3, line: 1068, type: !661)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 1067, column: 2)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 1066, column: 11)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 1061, column: 5)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 1060, column: 3)
!3101 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 1060, column: 3)
!3102 = !DILocalVariable(name: "j", scope: !3097, file: !3, line: 1069, type: !7)
!3103 = !DILocalVariable(name: "found", scope: !3097, file: !3, line: 1070, type: !660)
!3104 = !DILabel(scope: !3082, name: "ldist_done", file: !3, line: 1105)
!3105 = !DILocation(line: 0, scope: !3082)
!3106 = !DILocation(line: 1052, column: 3, scope: !3082)
!3107 = !DILocation(line: 1052, column: 34, scope: !3082)
!3108 = !DILocation(line: 1052, column: 21, scope: !3082)
!3109 = !DILocation(line: 1053, column: 3, scope: !3082)
!3110 = !DILocation(line: 1053, column: 36, scope: !3082)
!3111 = !DILocation(line: 1053, column: 23, scope: !3082)
!3112 = !DILocation(line: 1054, column: 3, scope: !3082)
!3113 = !DILocation(line: 1054, column: 35, scope: !3082)
!3114 = !DILocation(line: 1054, column: 20, scope: !3082)
!3115 = !DILocation(line: 1055, column: 3, scope: !3082)
!3116 = !DILocation(line: 1055, column: 33, scope: !3082)
!3117 = !DILocation(line: 1057, column: 21, scope: !3082)
!3118 = !DILocation(line: 1057, column: 19, scope: !3082)
!3119 = !DILocation(line: 1058, column: 25, scope: !3082)
!3120 = !DILocation(line: 1058, column: 23, scope: !3082)
!3121 = !DILocation(line: 0, scope: !3100)
!3122 = !DILocation(line: 0, scope: !3098)
!3123 = !DILocation(line: 0, scope: !3097)
!3124 = !DILocation(line: 0, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 1072, column: 4)
!3126 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 1072, column: 4)
!3127 = !DILocation(line: 1060, column: 8, scope: !3101)
!3128 = !DILocation(line: 0, scope: !3101)
!3129 = !DILocation(line: 1060, column: 24, scope: !3100)
!3130 = !DILocation(line: 1060, column: 17, scope: !3100)
!3131 = !DILocation(line: 1060, column: 3, scope: !3101)
!3132 = !DILocation(line: 1062, column: 23, scope: !3099)
!3133 = !DILocation(line: 1062, column: 7, scope: !3099)
!3134 = !DILocation(line: 1066, column: 11, scope: !3098)
!3135 = !DILocation(line: 1066, column: 11, scope: !3099)
!3136 = !DILocation(line: 1068, column: 4, scope: !3097)
!3137 = !DILocation(line: 1072, column: 9, scope: !3126)
!3138 = !DILocation(line: 0, scope: !3126)
!3139 = !DILocation(line: 1072, column: 16, scope: !3125)
!3140 = !DILocation(line: 1072, column: 4, scope: !3126)
!3141 = !DILocation(line: 1073, column: 15, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 1073, column: 10)
!3143 = !DILocation(line: 1073, column: 12, scope: !3142)
!3144 = !DILocation(line: 1073, column: 10, scope: !3125)
!3145 = !DILocation(line: 1072, column: 61, scope: !3125)
!3146 = !DILocation(line: 1072, column: 4, scope: !3125)
!3147 = distinct !{!3147, !3140, !3148}
!3148 = !DILocation(line: 1077, column: 8, scope: !3126)
!3149 = !DILocation(line: 1079, column: 8, scope: !3097)
!3150 = !DILocation(line: 1080, column: 6, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 1079, column: 8)
!3152 = !DILocation(line: 1081, column: 2, scope: !3098)
!3153 = !DILocation(line: 1081, column: 2, scope: !3097)
!3154 = !DILocation(line: 1060, column: 37, scope: !3100)
!3155 = !DILocation(line: 1060, column: 3, scope: !3100)
!3156 = distinct !{!3156, !3131, !3157}
!3157 = !DILocation(line: 1082, column: 5, scope: !3101)
!3158 = !DILocation(line: 1084, column: 3, scope: !3082)
!3159 = !DILocation(line: 1085, column: 3, scope: !3082)
!3160 = !DILocation(line: 1086, column: 30, scope: !3082)
!3161 = !DILocation(line: 1086, column: 3, scope: !3082)
!3162 = !DILocation(line: 1088, column: 3, scope: !3082)
!3163 = !DILocation(line: 1089, column: 9, scope: !3082)
!3164 = !DILocation(line: 1091, column: 11, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 1091, column: 7)
!3166 = !DILocation(line: 1092, column: 7, scope: !3165)
!3167 = !DILocation(line: 1092, column: 42, scope: !3165)
!3168 = !DILocation(line: 1092, column: 10, scope: !3165)
!3169 = !DILocation(line: 1091, column: 7, scope: !3082)
!3170 = !DILocation(line: 1095, column: 7, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 1095, column: 7)
!3172 = !DILocation(line: 1095, column: 17, scope: !3171)
!3173 = !DILocation(line: 1095, column: 21, scope: !3171)
!3174 = !DILocation(line: 1095, column: 32, scope: !3171)
!3175 = !DILocation(line: 1095, column: 7, scope: !3082)
!3176 = !DILocation(line: 1096, column: 37, scope: !3171)
!3177 = !DILocation(line: 1096, column: 5, scope: !3171)
!3178 = !DILocation(line: 0, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 1099, column: 9)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 1098, column: 3)
!3181 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 1098, column: 3)
!3182 = !DILocation(line: 1098, column: 8, scope: !3181)
!3183 = !DILocation(line: 0, scope: !3181)
!3184 = !DILocation(line: 1098, column: 15, scope: !3180)
!3185 = !DILocation(line: 1098, column: 3, scope: !3181)
!3186 = !DILocation(line: 1099, column: 45, scope: !3179)
!3187 = !DILocation(line: 1099, column: 58, scope: !3179)
!3188 = !DILocation(line: 1099, column: 56, scope: !3179)
!3189 = !DILocation(line: 1099, column: 10, scope: !3179)
!3190 = !DILocation(line: 1099, column: 9, scope: !3180)
!3191 = !DILocation(line: 1098, column: 64, scope: !3180)
!3192 = !DILocation(line: 1098, column: 3, scope: !3180)
!3193 = distinct !{!3193, !3185, !3194}
!3194 = !DILocation(line: 1100, column: 12, scope: !3181)
!3195 = !DILocation(line: 1102, column: 3, scope: !3082)
!3196 = !DILocation(line: 1103, column: 3, scope: !3082)
!3197 = !DILocation(line: 1107, column: 3, scope: !3082)
!3198 = !DILocation(line: 1105, column: 2, scope: !3082)
!3199 = !DILocation(line: 1108, column: 3, scope: !3082)
!3200 = !DILocation(line: 1110, column: 8, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 1110, column: 3)
!3202 = !DILocation(line: 0, scope: !3201)
!3203 = !DILocation(line: 1110, column: 15, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 1110, column: 3)
!3205 = !DILocation(line: 1110, column: 3, scope: !3201)
!3206 = !DILocation(line: 1111, column: 5, scope: !3204)
!3207 = !DILocation(line: 1110, column: 64, scope: !3204)
!3208 = !DILocation(line: 1110, column: 3, scope: !3204)
!3209 = distinct !{!3209, !3205, !3210}
!3210 = !DILocation(line: 1111, column: 5, scope: !3201)
!3211 = !DILocation(line: 1113, column: 3, scope: !3082)
!3212 = !DILocation(line: 1114, column: 3, scope: !3082)
!3213 = !DILocation(line: 1115, column: 24, scope: !3082)
!3214 = !DILocation(line: 1115, column: 3, scope: !3082)
!3215 = !DILocation(line: 1117, column: 1, scope: !3082)
!3216 = !DILocation(line: 1116, column: 3, scope: !3082)
!3217 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !733, file: !733, line: 32, type: !3218, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3220)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{null, !2186}
!3220 = !{!3221}
!3221 = !DILocalVariable(name: "vec_", arg: 1, scope: !3217, file: !733, line: 32, type: !2186)
!3222 = !DILocation(line: 0, scope: !3217)
!3223 = !DILocation(line: 32, column: 1, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3217, file: !733, line: 32, column: 1)
!3225 = !DILocation(line: 32, column: 1, scope: !3217)
!3226 = distinct !DISubprogram(name: "VEC_int_heap_reserve", scope: !733, file: !733, line: 32, type: !3227, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!661, !2186, !661}
!3229 = !{!3230, !3231, !3232}
!3230 = !DILocalVariable(name: "vec_", arg: 1, scope: !3226, file: !733, line: 32, type: !2186)
!3231 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3226, file: !733, line: 32, type: !661)
!3232 = !DILocalVariable(name: "extend", scope: !3226, file: !733, line: 32, type: !661)
!3233 = !DILocation(line: 0, scope: !3226)
!3234 = !DILocation(line: 32, column: 1, scope: !3226)
!3235 = !DILocation(line: 32, column: 1, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3226, file: !733, line: 32, column: 1)
!3237 = distinct !DISubprogram(name: "VEC_int_base_space", scope: !733, file: !733, line: 31, type: !3238, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!661, !3016, !661}
!3240 = !{!3241, !3242}
!3241 = !DILocalVariable(name: "vec_", arg: 1, scope: !3237, file: !733, line: 31, type: !3016)
!3242 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3237, file: !733, line: 31, type: !661)
!3243 = !DILocation(line: 0, scope: !3237)
!3244 = !DILocation(line: 31, column: 1, scope: !3237)
!3245 = distinct !DISubprogram(name: "VEC_rdgc_heap_alloc", scope: !574, file: !574, line: 604, type: !3246, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!2044, !661}
!3248 = !{!3249}
!3249 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3245, file: !574, line: 604, type: !661)
!3250 = !DILocation(line: 0, scope: !3245)
!3251 = !DILocation(line: 604, column: 1, scope: !3245)
!3252 = distinct !DISubprogram(name: "VEC_bitmap_heap_alloc", scope: !574, file: !574, line: 607, type: !3253, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!2062, !661}
!3255 = !{!3256}
!3256 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3252, file: !574, line: 607, type: !661)
!3257 = !DILocation(line: 0, scope: !3252)
!3258 = !DILocation(line: 607, column: 1, scope: !3252)
!3259 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !733, file: !733, line: 31, type: !3260, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3264)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!661, !3262, !7, !2142}
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!3264 = !{!3265, !3266, !3267}
!3265 = !DILocalVariable(name: "vec_", arg: 1, scope: !3259, file: !733, line: 31, type: !3262)
!3266 = !DILocalVariable(name: "ix_", arg: 2, scope: !3259, file: !733, line: 31, type: !7)
!3267 = !DILocalVariable(name: "ptr", arg: 3, scope: !3259, file: !733, line: 31, type: !2142)
!3268 = !DILocation(line: 0, scope: !3259)
!3269 = !DILocation(line: 31, column: 1, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3259, file: !733, line: 31, column: 1)
!3271 = !DILocation(line: 31, column: 1, scope: !3259)
!3272 = !DILocation(line: 31, column: 1, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3270, file: !733, line: 31, column: 1)
!3274 = !DILocation(line: 31, column: 1, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3270, file: !733, line: 31, column: 1)
!3276 = !DILocation(line: 0, scope: !3270)
!3277 = distinct !DISubprogram(name: "mark_nodes_having_upstream_mem_writes", scope: !3, file: !3, line: 515, type: !3278, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !2856}
!3280 = !{!3281, !3282, !3283, !3284, !3285, !3290}
!3281 = !DILocalVariable(name: "rdg", arg: 1, scope: !3277, file: !3, line: 515, type: !2856)
!3282 = !DILocalVariable(name: "v", scope: !3277, file: !3, line: 517, type: !661)
!3283 = !DILocalVariable(name: "x", scope: !3277, file: !3, line: 517, type: !661)
!3284 = !DILocalVariable(name: "seen", scope: !3277, file: !3, line: 518, type: !668)
!3285 = !DILocalVariable(name: "i", scope: !3286, file: !3, line: 523, type: !7)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 522, column: 7)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 521, column: 9)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 520, column: 3)
!3289 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 520, column: 3)
!3290 = !DILocalVariable(name: "nodes", scope: !3286, file: !3, line: 524, type: !731)
!3291 = !DILocation(line: 0, scope: !3277)
!3292 = !DILocation(line: 517, column: 3, scope: !3277)
!3293 = !DILocation(line: 518, column: 17, scope: !3277)
!3294 = !DILocation(line: 520, column: 17, scope: !3289)
!3295 = !DILocation(line: 0, scope: !3286)
!3296 = !DILocation(line: 0, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 535, column: 10)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 529, column: 4)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 528, column: 2)
!3300 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 528, column: 2)
!3301 = !DILocation(line: 520, column: 8, scope: !3289)
!3302 = !DILocation(line: 0, scope: !3289)
!3303 = !DILocation(line: 520, column: 35, scope: !3288)
!3304 = !DILocation(line: 520, column: 3, scope: !3289)
!3305 = !DILocation(line: 521, column: 10, scope: !3287)
!3306 = !DILocation(line: 521, column: 9, scope: !3288)
!3307 = !DILocation(line: 524, column: 2, scope: !3286)
!3308 = !DILocation(line: 524, column: 27, scope: !3286)
!3309 = !DILocation(line: 524, column: 19, scope: !3286)
!3310 = !DILocation(line: 526, column: 2, scope: !3286)
!3311 = !DILocation(line: 528, column: 7, scope: !3300)
!3312 = !DILocation(line: 0, scope: !3300)
!3313 = !DILocation(line: 528, column: 14, scope: !3299)
!3314 = !DILocation(line: 528, column: 2, scope: !3300)
!3315 = !DILocation(line: 530, column: 30, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 530, column: 10)
!3317 = !DILocation(line: 530, column: 10, scope: !3316)
!3318 = !DILocation(line: 530, column: 10, scope: !3298)
!3319 = !DILocation(line: 533, column: 28, scope: !3298)
!3320 = !DILocation(line: 533, column: 6, scope: !3298)
!3321 = !DILocation(line: 535, column: 10, scope: !3297)
!3322 = !DILocation(line: 536, column: 3, scope: !3297)
!3323 = !DILocation(line: 536, column: 40, scope: !3297)
!3324 = !DILocation(line: 536, column: 6, scope: !3297)
!3325 = !DILocation(line: 540, column: 3, scope: !3297)
!3326 = !DILocation(line: 540, column: 34, scope: !3297)
!3327 = !DILocation(line: 540, column: 43, scope: !3297)
!3328 = !DILocation(line: 540, column: 29, scope: !3297)
!3329 = !DILocation(line: 540, column: 6, scope: !3297)
!3330 = !DILocation(line: 535, column: 10, scope: !3298)
!3331 = !DILocation(line: 542, column: 19, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 541, column: 8)
!3333 = !DILocation(line: 542, column: 40, scope: !3332)
!3334 = !DILocation(line: 542, column: 3, scope: !3332)
!3335 = !DILocation(line: 543, column: 8, scope: !3332)
!3336 = !DILocation(line: 528, column: 47, scope: !3299)
!3337 = !DILocation(line: 528, column: 2, scope: !3299)
!3338 = distinct !{!3338, !3314, !3339}
!3339 = !DILocation(line: 544, column: 4, scope: !3300)
!3340 = !DILocation(line: 546, column: 2, scope: !3286)
!3341 = !DILocation(line: 547, column: 7, scope: !3287)
!3342 = !DILocation(line: 547, column: 7, scope: !3286)
!3343 = !DILocation(line: 520, column: 3, scope: !3288)
!3344 = distinct !{!3344, !3304, !3345}
!3345 = !DILocation(line: 547, column: 7, scope: !3289)
!3346 = !DILocation(line: 548, column: 1, scope: !3277)
!3347 = distinct !DISubprogram(name: "rdg_build_components", scope: !3, file: !3, line: 857, type: !3348, scopeLine: 859, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3351)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !2856, !731, !3350}
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!3351 = !{!3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3364}
!3352 = !DILocalVariable(name: "rdg", arg: 1, scope: !3347, file: !3, line: 857, type: !2856)
!3353 = !DILocalVariable(name: "starting_vertices", arg: 2, scope: !3347, file: !3, line: 857, type: !731)
!3354 = !DILocalVariable(name: "components", arg: 3, scope: !3347, file: !3, line: 858, type: !3350)
!3355 = !DILocalVariable(name: "i", scope: !3347, file: !3, line: 860, type: !661)
!3356 = !DILocalVariable(name: "v", scope: !3347, file: !3, line: 860, type: !661)
!3357 = !DILocalVariable(name: "saved_components", scope: !3347, file: !3, line: 861, type: !668)
!3358 = !DILocalVariable(name: "n_components", scope: !3347, file: !3, line: 862, type: !661)
!3359 = !DILocalVariable(name: "all_components", scope: !3347, file: !3, line: 863, type: !2186)
!3360 = !DILocalVariable(name: "c", scope: !3361, file: !3, line: 873, type: !661)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 872, column: 5)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 871, column: 3)
!3363 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 871, column: 3)
!3364 = !DILocalVariable(name: "x", scope: !3365, file: !3, line: 877, type: !2056)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 876, column: 2)
!3366 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 875, column: 11)
!3367 = !DILocation(line: 0, scope: !3347)
!3368 = !DILocation(line: 860, column: 3, scope: !3347)
!3369 = !DILocation(line: 861, column: 29, scope: !3347)
!3370 = !DILocation(line: 862, column: 22, scope: !3347)
!3371 = !DILocation(line: 863, column: 38, scope: !3347)
!3372 = !DILocation(line: 865, column: 8, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 865, column: 3)
!3374 = !DILocation(line: 0, scope: !3373)
!3375 = !DILocation(line: 865, column: 17, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 865, column: 3)
!3377 = !DILocation(line: 865, column: 3, scope: !3373)
!3378 = !DILocation(line: 0, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 868, column: 3)
!3380 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 868, column: 3)
!3381 = !DILocation(line: 868, column: 3, scope: !3380)
!3382 = !DILocation(line: 866, column: 25, scope: !3376)
!3383 = !DILocation(line: 866, column: 5, scope: !3376)
!3384 = !DILocation(line: 866, column: 23, scope: !3376)
!3385 = !DILocation(line: 865, column: 34, scope: !3376)
!3386 = !DILocation(line: 865, column: 3, scope: !3376)
!3387 = distinct !{!3387, !3377, !3388}
!3388 = !DILocation(line: 866, column: 25, scope: !3373)
!3389 = !DILocation(line: 0, scope: !3380)
!3390 = !DILocation(line: 868, column: 24, scope: !3379)
!3391 = !DILocation(line: 868, column: 17, scope: !3379)
!3392 = !DILocation(line: 0, scope: !3362)
!3393 = !DILocation(line: 871, column: 3, scope: !3363)
!3394 = !DILocation(line: 869, column: 5, scope: !3379)
!3395 = !DILocation(line: 868, column: 37, scope: !3379)
!3396 = !DILocation(line: 868, column: 3, scope: !3379)
!3397 = distinct !{!3397, !3381, !3398}
!3398 = !DILocation(line: 869, column: 5, scope: !3380)
!3399 = !DILocation(line: 0, scope: !3363)
!3400 = !DILocation(line: 871, column: 15, scope: !3362)
!3401 = !DILocation(line: 886, column: 3, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 886, column: 3)
!3403 = !DILocation(line: 873, column: 20, scope: !3361)
!3404 = !DILocation(line: 873, column: 29, scope: !3361)
!3405 = !DILocation(line: 873, column: 15, scope: !3361)
!3406 = !DILocation(line: 873, column: 32, scope: !3361)
!3407 = !DILocation(line: 0, scope: !3361)
!3408 = !DILocation(line: 875, column: 12, scope: !3366)
!3409 = !DILocation(line: 875, column: 11, scope: !3361)
!3410 = !DILocation(line: 877, column: 13, scope: !3365)
!3411 = !DILocation(line: 0, scope: !3365)
!3412 = !DILocation(line: 878, column: 7, scope: !3365)
!3413 = !DILocation(line: 878, column: 11, scope: !3365)
!3414 = !DILocation(line: 879, column: 18, scope: !3365)
!3415 = !DILocation(line: 879, column: 7, scope: !3365)
!3416 = !DILocation(line: 879, column: 16, scope: !3365)
!3417 = !DILocation(line: 881, column: 4, scope: !3365)
!3418 = !DILocation(line: 882, column: 4, scope: !3365)
!3419 = !DILocation(line: 883, column: 2, scope: !3365)
!3420 = !DILocation(line: 871, column: 60, scope: !3362)
!3421 = !DILocation(line: 871, column: 3, scope: !3362)
!3422 = distinct !{!3422, !3393, !3423}
!3423 = !DILocation(line: 884, column: 5, scope: !3363)
!3424 = !DILocation(line: 0, scope: !3402)
!3425 = !DILocation(line: 886, column: 17, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 886, column: 3)
!3427 = !DILocation(line: 887, column: 10, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 887, column: 9)
!3429 = !DILocation(line: 887, column: 9, scope: !3426)
!3430 = !DILocation(line: 888, column: 7, scope: !3428)
!3431 = !DILocation(line: 886, column: 34, scope: !3426)
!3432 = !DILocation(line: 886, column: 3, scope: !3426)
!3433 = distinct !{!3433, !3401, !3434}
!3434 = !DILocation(line: 888, column: 7, scope: !3402)
!3435 = !DILocation(line: 890, column: 3, scope: !3347)
!3436 = !DILocation(line: 891, column: 3, scope: !3347)
!3437 = !DILocation(line: 892, column: 1, scope: !3347)
!3438 = distinct !DISubprogram(name: "rdg_build_partitions", scope: !3, file: !3, line: 899, type: !3439, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3442)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{null, !2856, !2044, !2186, !3441, !668}
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3455, !3456, !3457, !3460}
!3443 = !DILocalVariable(name: "rdg", arg: 1, scope: !3438, file: !3, line: 899, type: !2856)
!3444 = !DILocalVariable(name: "components", arg: 2, scope: !3438, file: !3, line: 899, type: !2044)
!3445 = !DILocalVariable(name: "other_stores", arg: 3, scope: !3438, file: !3, line: 900, type: !2186)
!3446 = !DILocalVariable(name: "partitions", arg: 4, scope: !3438, file: !3, line: 901, type: !3441)
!3447 = !DILocalVariable(name: "processed", arg: 5, scope: !3438, file: !3, line: 901, type: !668)
!3448 = !DILocalVariable(name: "i", scope: !3438, file: !3, line: 903, type: !661)
!3449 = !DILocalVariable(name: "x", scope: !3438, file: !3, line: 904, type: !2056)
!3450 = !DILocalVariable(name: "partition", scope: !3438, file: !3, line: 905, type: !668)
!3451 = !DILocalVariable(name: "np", scope: !3452, file: !3, line: 909, type: !668)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 908, column: 5)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 907, column: 3)
!3454 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 907, column: 3)
!3455 = !DILocalVariable(name: "part_has_writes", scope: !3452, file: !3, line: 910, type: !660)
!3456 = !DILocalVariable(name: "v", scope: !3452, file: !3, line: 911, type: !661)
!3457 = !DILocalVariable(name: "comps", scope: !3458, file: !3, line: 948, type: !2044)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 947, column: 5)
!3459 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 946, column: 7)
!3460 = !DILocalVariable(name: "foo", scope: !3458, file: !3, line: 949, type: !731)
!3461 = !DILocation(line: 0, scope: !3438)
!3462 = !DILocation(line: 904, column: 3, scope: !3438)
!3463 = !DILocation(line: 905, column: 22, scope: !3438)
!3464 = !DILocation(line: 0, scope: !3453)
!3465 = !DILocation(line: 907, column: 8, scope: !3454)
!3466 = !DILocation(line: 0, scope: !3454)
!3467 = !DILocation(line: 905, column: 10, scope: !3438)
!3468 = !DILocation(line: 907, column: 15, scope: !3453)
!3469 = !DILocation(line: 907, column: 3, scope: !3454)
!3470 = !DILocation(line: 0, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 938, column: 3)
!3472 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 938, column: 3)
!3473 = !DILocation(line: 938, column: 3, scope: !3472)
!3474 = !DILocation(line: 0, scope: !3452)
!3475 = !DILocation(line: 910, column: 7, scope: !3452)
!3476 = !DILocation(line: 910, column: 12, scope: !3452)
!3477 = !DILocation(line: 911, column: 15, scope: !3452)
!3478 = !DILocation(line: 913, column: 11, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 913, column: 11)
!3480 = !DILocation(line: 913, column: 11, scope: !3452)
!3481 = !DILocation(line: 916, column: 52, scope: !3452)
!3482 = !DILocation(line: 916, column: 12, scope: !3452)
!3483 = !DILocation(line: 918, column: 7, scope: !3452)
!3484 = !DILocation(line: 919, column: 7, scope: !3452)
!3485 = !DILocation(line: 920, column: 7, scope: !3452)
!3486 = !DILocation(line: 922, column: 11, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 922, column: 11)
!3488 = !DILocation(line: 922, column: 11, scope: !3452)
!3489 = !DILocation(line: 924, column: 8, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !3, line: 924, column: 8)
!3491 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 923, column: 2)
!3492 = !DILocation(line: 924, column: 18, scope: !3490)
!3493 = !DILocation(line: 924, column: 22, scope: !3490)
!3494 = !DILocation(line: 924, column: 33, scope: !3490)
!3495 = !DILocation(line: 924, column: 8, scope: !3491)
!3496 = !DILocation(line: 926, column: 8, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 925, column: 6)
!3498 = !DILocation(line: 927, column: 8, scope: !3497)
!3499 = !DILocation(line: 928, column: 6, scope: !3497)
!3500 = !DILocation(line: 930, column: 4, scope: !3491)
!3501 = !DILocation(line: 931, column: 16, scope: !3491)
!3502 = !DILocation(line: 932, column: 2, scope: !3491)
!3503 = !DILocation(line: 933, column: 5, scope: !3453)
!3504 = !DILocation(line: 907, column: 54, scope: !3453)
!3505 = !DILocation(line: 907, column: 3, scope: !3453)
!3506 = distinct !{!3506, !3469, !3507}
!3507 = !DILocation(line: 933, column: 5, scope: !3454)
!3508 = !DILocation(line: 0, scope: !3472)
!3509 = !DILocation(line: 938, column: 24, scope: !3471)
!3510 = !DILocation(line: 938, column: 17, scope: !3471)
!3511 = !DILocation(line: 939, column: 10, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 939, column: 9)
!3513 = !DILocation(line: 940, column: 2, scope: !3512)
!3514 = !DILocation(line: 940, column: 5, scope: !3512)
!3515 = !DILocation(line: 939, column: 9, scope: !3471)
!3516 = !DILocation(line: 941, column: 7, scope: !3512)
!3517 = !DILocation(line: 938, column: 37, scope: !3471)
!3518 = !DILocation(line: 938, column: 3, scope: !3471)
!3519 = distinct !{!3519, !3473, !3520}
!3520 = !DILocation(line: 941, column: 7, scope: !3472)
!3521 = !DILocation(line: 946, column: 7, scope: !3459)
!3522 = !DILocation(line: 946, column: 39, scope: !3459)
!3523 = !DILocation(line: 946, column: 7, scope: !3438)
!3524 = !DILocation(line: 948, column: 7, scope: !3458)
!3525 = !DILocation(line: 948, column: 33, scope: !3458)
!3526 = !DILocation(line: 0, scope: !3458)
!3527 = !DILocation(line: 948, column: 25, scope: !3458)
!3528 = !DILocation(line: 949, column: 7, scope: !3458)
!3529 = !DILocation(line: 949, column: 30, scope: !3458)
!3530 = !DILocation(line: 949, column: 24, scope: !3458)
!3531 = !DILocation(line: 951, column: 34, scope: !3458)
!3532 = !DILocation(line: 951, column: 7, scope: !3458)
!3533 = !DILocation(line: 952, column: 34, scope: !3458)
!3534 = !DILocation(line: 952, column: 7, scope: !3458)
!3535 = !DILocation(line: 954, column: 7, scope: !3458)
!3536 = !DILocation(line: 955, column: 28, scope: !3458)
!3537 = !DILocation(line: 955, column: 7, scope: !3458)
!3538 = !DILocation(line: 956, column: 5, scope: !3459)
!3539 = !DILocation(line: 956, column: 5, scope: !3458)
!3540 = !DILocation(line: 959, column: 7, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 959, column: 7)
!3542 = !DILocation(line: 959, column: 37, scope: !3541)
!3543 = !DILocation(line: 959, column: 7, scope: !3438)
!3544 = !DILocation(line: 960, column: 5, scope: !3541)
!3545 = !DILocation(line: 962, column: 5, scope: !3541)
!3546 = !DILocation(line: 963, column: 1, scope: !3438)
!3547 = distinct !DISubprogram(name: "VEC_bitmap_base_length", scope: !574, file: !574, line: 606, type: !3548, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3550)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!7, !2762}
!3550 = !{!3551}
!3551 = !DILocalVariable(name: "vec_", arg: 1, scope: !3547, file: !574, line: 606, type: !2762)
!3552 = !DILocation(line: 0, scope: !3547)
!3553 = !DILocation(line: 606, column: 1, scope: !3547)
!3554 = distinct !DISubprogram(name: "partition_contains_all_rw", scope: !3, file: !3, line: 1031, type: !3555, scopeLine: 1032, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3557)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!660, !2856, !2062}
!3557 = !{!3558, !3559, !3560, !3561, !3562}
!3558 = !DILocalVariable(name: "rdg", arg: 1, scope: !3554, file: !3, line: 1031, type: !2856)
!3559 = !DILocalVariable(name: "partitions", arg: 2, scope: !3554, file: !3, line: 1031, type: !2062)
!3560 = !DILocalVariable(name: "i", scope: !3554, file: !3, line: 1033, type: !661)
!3561 = !DILocalVariable(name: "partition", scope: !3554, file: !3, line: 1034, type: !668)
!3562 = !DILocalVariable(name: "nrw", scope: !3554, file: !3, line: 1035, type: !661)
!3563 = !DILocation(line: 0, scope: !3554)
!3564 = !DILocation(line: 1034, column: 3, scope: !3554)
!3565 = !DILocation(line: 1035, column: 13, scope: !3554)
!3566 = !DILocation(line: 0, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 1037, column: 3)
!3568 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 1037, column: 3)
!3569 = !DILocation(line: 1037, column: 8, scope: !3568)
!3570 = !DILocation(line: 0, scope: !3568)
!3571 = !DILocation(line: 1037, column: 15, scope: !3567)
!3572 = !DILocation(line: 1037, column: 3, scope: !3568)
!3573 = !DILocation(line: 1038, column: 48, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 1038, column: 9)
!3575 = !DILocation(line: 1038, column: 16, scope: !3574)
!3576 = !DILocation(line: 1038, column: 13, scope: !3574)
!3577 = !DILocation(line: 1038, column: 9, scope: !3567)
!3578 = !DILocation(line: 1037, column: 64, scope: !3567)
!3579 = !DILocation(line: 1037, column: 3, scope: !3567)
!3580 = distinct !{!3580, !3572, !3581}
!3581 = !DILocation(line: 1039, column: 14, scope: !3568)
!3582 = !DILocation(line: 1042, column: 1, scope: !3554)
!3583 = distinct !DISubprogram(name: "generate_code_for_partition", scope: !3, file: !3, line: 445, type: !3584, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3586)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!660, !747, !668, !660}
!3586 = !{!3587, !3588, !3589}
!3587 = !DILocalVariable(name: "loop", arg: 1, scope: !3583, file: !3, line: 445, type: !747)
!3588 = !DILocalVariable(name: "partition", arg: 2, scope: !3583, file: !3, line: 445, type: !668)
!3589 = !DILocalVariable(name: "copy_p", arg: 3, scope: !3583, file: !3, line: 445, type: !660)
!3590 = !DILocation(line: 0, scope: !3583)
!3591 = !DILocation(line: 447, column: 7, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 447, column: 7)
!3593 = !DILocation(line: 447, column: 7, scope: !3583)
!3594 = !DILocation(line: 450, column: 10, scope: !3583)
!3595 = !DILocation(line: 450, column: 3, scope: !3583)
!3596 = !DILocation(line: 451, column: 1, scope: !3583)
!3597 = distinct !DISubprogram(name: "VEC_bitmap_heap_free", scope: !574, file: !574, line: 607, type: !3598, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3600)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{null, !3441}
!3600 = !{!3601}
!3601 = !DILocalVariable(name: "vec_", arg: 1, scope: !3597, file: !574, line: 607, type: !3441)
!3602 = !DILocation(line: 0, scope: !3597)
!3603 = !DILocation(line: 607, column: 1, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3597, file: !574, line: 607, column: 1)
!3605 = !DILocation(line: 607, column: 1, scope: !3597)
!3606 = distinct !DISubprogram(name: "free_rdg_components", scope: !3, file: !3, line: 841, type: !3607, scopeLine: 842, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{null, !2044}
!3609 = !{!3610, !3611, !3612}
!3610 = !DILocalVariable(name: "components", arg: 1, scope: !3606, file: !3, line: 841, type: !2044)
!3611 = !DILocalVariable(name: "i", scope: !3606, file: !3, line: 843, type: !661)
!3612 = !DILocalVariable(name: "x", scope: !3606, file: !3, line: 844, type: !2056)
!3613 = !DILocation(line: 0, scope: !3606)
!3614 = !DILocation(line: 844, column: 3, scope: !3606)
!3615 = !DILocation(line: 0, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 846, column: 3)
!3617 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 846, column: 3)
!3618 = !DILocation(line: 0, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 847, column: 5)
!3620 = !DILocation(line: 846, column: 8, scope: !3617)
!3621 = !DILocation(line: 0, scope: !3617)
!3622 = !DILocation(line: 846, column: 15, scope: !3616)
!3623 = !DILocation(line: 846, column: 3, scope: !3617)
!3624 = !DILocation(line: 848, column: 7, scope: !3619)
!3625 = !DILocation(line: 849, column: 13, scope: !3619)
!3626 = !DILocation(line: 849, column: 7, scope: !3619)
!3627 = !DILocation(line: 846, column: 54, scope: !3616)
!3628 = !DILocation(line: 846, column: 3, scope: !3616)
!3629 = distinct !{!3629, !3623, !3630}
!3630 = !DILocation(line: 850, column: 5, scope: !3617)
!3631 = !DILocation(line: 851, column: 1, scope: !3606)
!3632 = distinct !DISubprogram(name: "predecessor_has_mem_write", scope: !3, file: !3, line: 495, type: !3633, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!660, !2856, !2862}
!3635 = !{!3636, !3637, !3638}
!3636 = !DILocalVariable(name: "rdg", arg: 1, scope: !3632, file: !3, line: 495, type: !2856)
!3637 = !DILocalVariable(name: "v", arg: 2, scope: !3632, file: !3, line: 495, type: !2862)
!3638 = !DILocalVariable(name: "e", scope: !3632, file: !3, line: 497, type: !2866)
!3639 = !DILocation(line: 0, scope: !3632)
!3640 = !DILocation(line: 499, column: 10, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 499, column: 7)
!3642 = !DILocation(line: 499, column: 7, scope: !3641)
!3643 = !DILocation(line: 499, column: 7, scope: !3632)
!3644 = !DILocation(line: 505, column: 8, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 501, column: 11)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 500, column: 5)
!3647 = distinct !DILexicalBlock(scope: !3641, file: !3, line: 500, column: 5)
!3648 = !DILocation(line: 500, column: 10, scope: !3647)
!3649 = !DILocation(line: 0, scope: !3647)
!3650 = !DILocation(line: 500, column: 5, scope: !3647)
!3651 = !DILocation(line: 501, column: 25, scope: !3645)
!3652 = !DILocation(line: 501, column: 49, scope: !3645)
!3653 = !DILocation(line: 501, column: 11, scope: !3645)
!3654 = !DILocation(line: 505, column: 4, scope: !3645)
!3655 = !DILocation(line: 501, column: 11, scope: !3646)
!3656 = !DILocation(line: 500, column: 33, scope: !3646)
!3657 = !DILocation(line: 500, column: 5, scope: !3646)
!3658 = distinct !{!3658, !3650, !3659}
!3659 = !DILocation(line: 506, column: 9, scope: !3647)
!3660 = !DILocation(line: 509, column: 1, scope: !3632)
!3661 = distinct !DISubprogram(name: "has_anti_dependence", scope: !3, file: !3, line: 480, type: !3662, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3664)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!2866, !2862}
!3664 = !{!3665, !3666}
!3665 = !DILocalVariable(name: "v", arg: 1, scope: !3661, file: !3, line: 480, type: !2862)
!3666 = !DILocalVariable(name: "e", scope: !3661, file: !3, line: 482, type: !2866)
!3667 = !DILocation(line: 0, scope: !3661)
!3668 = !DILocation(line: 484, column: 10, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 484, column: 7)
!3670 = !DILocation(line: 484, column: 7, scope: !3669)
!3671 = !DILocation(line: 484, column: 7, scope: !3661)
!3672 = !DILocation(line: 485, column: 10, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 485, column: 5)
!3674 = !DILocation(line: 0, scope: !3673)
!3675 = !DILocation(line: 485, column: 5, scope: !3673)
!3676 = !DILocation(line: 486, column: 11, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 486, column: 11)
!3678 = distinct !DILexicalBlock(scope: !3673, file: !3, line: 485, column: 5)
!3679 = !DILocation(line: 486, column: 25, scope: !3677)
!3680 = !DILocation(line: 486, column: 11, scope: !3678)
!3681 = !DILocation(line: 485, column: 33, scope: !3678)
!3682 = !DILocation(line: 485, column: 5, scope: !3678)
!3683 = distinct !{!3683, !3675, !3684}
!3684 = !DILocation(line: 487, column: 9, scope: !3673)
!3685 = !DILocation(line: 490, column: 1, scope: !3661)
!3686 = distinct !DISubprogram(name: "VEC_rdgc_heap_safe_push", scope: !574, file: !574, line: 604, type: !3687, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3690)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!3689, !3350, !2056}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!3690 = !{!3691, !3692}
!3691 = !DILocalVariable(name: "vec_", arg: 1, scope: !3686, file: !574, line: 604, type: !3350)
!3692 = !DILocalVariable(name: "obj_", arg: 2, scope: !3686, file: !574, line: 604, type: !2056)
!3693 = !DILocation(line: 0, scope: !3686)
!3694 = !DILocation(line: 604, column: 1, scope: !3686)
!3695 = distinct !DISubprogram(name: "VEC_rdgc_heap_reserve", scope: !574, file: !574, line: 604, type: !3696, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3698)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!661, !3350, !661}
!3698 = !{!3699, !3700, !3701}
!3699 = !DILocalVariable(name: "vec_", arg: 1, scope: !3695, file: !574, line: 604, type: !3350)
!3700 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3695, file: !574, line: 604, type: !661)
!3701 = !DILocalVariable(name: "extend", scope: !3695, file: !574, line: 604, type: !661)
!3702 = !DILocation(line: 0, scope: !3695)
!3703 = !DILocation(line: 604, column: 1, scope: !3695)
!3704 = !DILocation(line: 604, column: 1, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3695, file: !574, line: 604, column: 1)
!3706 = distinct !DISubprogram(name: "VEC_rdgc_base_quick_push", scope: !574, file: !574, line: 603, type: !3707, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3710)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!3689, !3709, !2056}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!3710 = !{!3711, !3712, !3713}
!3711 = !DILocalVariable(name: "vec_", arg: 1, scope: !3706, file: !574, line: 603, type: !3709)
!3712 = !DILocalVariable(name: "obj_", arg: 2, scope: !3706, file: !574, line: 603, type: !2056)
!3713 = !DILocalVariable(name: "slot_", scope: !3706, file: !574, line: 603, type: !3689)
!3714 = !DILocation(line: 0, scope: !3706)
!3715 = !DILocation(line: 603, column: 1, scope: !3706)
!3716 = distinct !DISubprogram(name: "VEC_rdgc_base_space", scope: !574, file: !574, line: 603, type: !3717, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3719)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!661, !3709, !661}
!3719 = !{!3720, !3721}
!3720 = !DILocalVariable(name: "vec_", arg: 1, scope: !3716, file: !574, line: 603, type: !3709)
!3721 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3716, file: !574, line: 603, type: !661)
!3722 = !DILocation(line: 0, scope: !3716)
!3723 = !DILocation(line: 603, column: 1, scope: !3716)
!3724 = distinct !DISubprogram(name: "VEC_rdgc_base_iterate", scope: !574, file: !574, line: 603, type: !3725, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3729)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!661, !3727, !7, !3689}
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2049)
!3729 = !{!3730, !3731, !3732}
!3730 = !DILocalVariable(name: "vec_", arg: 1, scope: !3724, file: !574, line: 603, type: !3727)
!3731 = !DILocalVariable(name: "ix_", arg: 2, scope: !3724, file: !574, line: 603, type: !7)
!3732 = !DILocalVariable(name: "ptr", arg: 3, scope: !3724, file: !574, line: 603, type: !3689)
!3733 = !DILocation(line: 0, scope: !3724)
!3734 = !DILocation(line: 603, column: 1, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3724, file: !574, line: 603, column: 1)
!3736 = !DILocation(line: 603, column: 1, scope: !3724)
!3737 = !DILocation(line: 603, column: 1, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3735, file: !574, line: 603, column: 1)
!3739 = !DILocation(line: 603, column: 1, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3735, file: !574, line: 603, column: 1)
!3741 = !DILocation(line: 0, scope: !3735)
!3742 = distinct !DISubprogram(name: "VEC_int_base_index", scope: !733, file: !733, line: 31, type: !3743, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!661, !3262, !7}
!3745 = !{!3746, !3747}
!3746 = !DILocalVariable(name: "vec_", arg: 1, scope: !3742, file: !733, line: 31, type: !3262)
!3747 = !DILocalVariable(name: "ix_", arg: 2, scope: !3742, file: !733, line: 31, type: !7)
!3748 = !DILocation(line: 0, scope: !3742)
!3749 = !DILocation(line: 31, column: 1, scope: !3742)
!3750 = distinct !DISubprogram(name: "build_rdg_partition_for_component", scope: !3, file: !3, line: 810, type: !3751, scopeLine: 813, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3753)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!668, !2856, !2056, !659, !2186}
!3753 = !{!3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762}
!3754 = !DILocalVariable(name: "rdg", arg: 1, scope: !3750, file: !3, line: 810, type: !2856)
!3755 = !DILocalVariable(name: "c", arg: 2, scope: !3750, file: !3, line: 810, type: !2056)
!3756 = !DILocalVariable(name: "part_has_writes", arg: 3, scope: !3750, file: !3, line: 811, type: !659)
!3757 = !DILocalVariable(name: "other_stores", arg: 4, scope: !3750, file: !3, line: 812, type: !2186)
!3758 = !DILocalVariable(name: "i", scope: !3750, file: !3, line: 814, type: !661)
!3759 = !DILocalVariable(name: "v", scope: !3750, file: !3, line: 814, type: !661)
!3760 = !DILocalVariable(name: "partition", scope: !3750, file: !3, line: 815, type: !668)
!3761 = !DILocalVariable(name: "loops", scope: !3750, file: !3, line: 816, type: !668)
!3762 = !DILocalVariable(name: "processed", scope: !3750, file: !3, line: 817, type: !668)
!3763 = !DILocation(line: 0, scope: !3750)
!3764 = !DILocation(line: 814, column: 3, scope: !3750)
!3765 = !DILocation(line: 815, column: 22, scope: !3750)
!3766 = !DILocation(line: 816, column: 18, scope: !3750)
!3767 = !DILocation(line: 817, column: 22, scope: !3750)
!3768 = !DILocation(line: 0, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 819, column: 3)
!3770 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 819, column: 3)
!3771 = !DILocation(line: 819, column: 8, scope: !3770)
!3772 = !DILocation(line: 0, scope: !3770)
!3773 = !DILocation(line: 819, column: 15, scope: !3769)
!3774 = !DILocation(line: 819, column: 3, scope: !3770)
!3775 = !DILocation(line: 820, column: 49, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 820, column: 9)
!3777 = !DILocation(line: 820, column: 10, scope: !3776)
!3778 = !DILocation(line: 820, column: 9, scope: !3769)
!3779 = !DILocation(line: 821, column: 43, scope: !3776)
!3780 = !DILocation(line: 821, column: 7, scope: !3776)
!3781 = !DILocation(line: 819, column: 54, scope: !3769)
!3782 = !DILocation(line: 819, column: 3, scope: !3769)
!3783 = distinct !{!3783, !3774, !3784}
!3784 = !DILocation(line: 822, column: 25, scope: !3770)
!3785 = !DILocation(line: 828, column: 3, scope: !3750)
!3786 = !DILocation(line: 831, column: 3, scope: !3750)
!3787 = !DILocation(line: 833, column: 3, scope: !3750)
!3788 = !DILocation(line: 834, column: 3, scope: !3750)
!3789 = !DILocation(line: 836, column: 1, scope: !3750)
!3790 = !DILocation(line: 835, column: 3, scope: !3750)
!3791 = distinct !DISubprogram(name: "VEC_bitmap_heap_safe_push", scope: !574, file: !574, line: 607, type: !3792, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3794)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!2764, !3441, !668}
!3794 = !{!3795, !3796}
!3795 = !DILocalVariable(name: "vec_", arg: 1, scope: !3791, file: !574, line: 607, type: !3441)
!3796 = !DILocalVariable(name: "obj_", arg: 2, scope: !3791, file: !574, line: 607, type: !668)
!3797 = !DILocation(line: 0, scope: !3791)
!3798 = !DILocation(line: 607, column: 1, scope: !3791)
!3799 = distinct !DISubprogram(name: "VEC_int_base_length", scope: !733, file: !733, line: 31, type: !3800, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3802)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!7, !3262}
!3802 = !{!3803}
!3803 = !DILocalVariable(name: "vec_", arg: 1, scope: !3799, file: !733, line: 31, type: !3262)
!3804 = !DILocation(line: 0, scope: !3799)
!3805 = !DILocation(line: 31, column: 1, scope: !3799)
!3806 = distinct !DISubprogram(name: "already_processed_vertex_p", scope: !3, file: !3, line: 470, type: !3807, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3809)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!660, !668, !661}
!3809 = !{!3810, !3811}
!3810 = !DILocalVariable(name: "processed", arg: 1, scope: !3806, file: !3, line: 470, type: !668)
!3811 = !DILocalVariable(name: "v", arg: 2, scope: !3806, file: !3, line: 470, type: !661)
!3812 = !DILocation(line: 0, scope: !3806)
!3813 = !DILocation(line: 472, column: 11, scope: !3806)
!3814 = !DILocation(line: 473, column: 4, scope: !3806)
!3815 = !DILocation(line: 473, column: 22, scope: !3806)
!3816 = !DILocation(line: 473, column: 8, scope: !3806)
!3817 = !DILocation(line: 473, column: 7, scope: !3806)
!3818 = !DILocation(line: 472, column: 3, scope: !3806)
!3819 = distinct !DISubprogram(name: "rdg_flag_vertex_and_dependent", scope: !3, file: !3, line: 673, type: !3820, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3822)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{null, !2856, !661, !668, !668, !668, !659}
!3822 = !{!3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831}
!3823 = !DILocalVariable(name: "rdg", arg: 1, scope: !3819, file: !3, line: 673, type: !2856)
!3824 = !DILocalVariable(name: "v", arg: 2, scope: !3819, file: !3, line: 673, type: !661)
!3825 = !DILocalVariable(name: "partition", arg: 3, scope: !3819, file: !3, line: 673, type: !668)
!3826 = !DILocalVariable(name: "loops", arg: 4, scope: !3819, file: !3, line: 674, type: !668)
!3827 = !DILocalVariable(name: "processed", arg: 5, scope: !3819, file: !3, line: 674, type: !668)
!3828 = !DILocalVariable(name: "part_has_writes", arg: 6, scope: !3819, file: !3, line: 675, type: !659)
!3829 = !DILocalVariable(name: "i", scope: !3819, file: !3, line: 677, type: !7)
!3830 = !DILocalVariable(name: "nodes", scope: !3819, file: !3, line: 678, type: !731)
!3831 = !DILocalVariable(name: "x", scope: !3819, file: !3, line: 679, type: !661)
!3832 = !DILocation(line: 0, scope: !3819)
!3833 = !DILocation(line: 678, column: 3, scope: !3819)
!3834 = !DILocation(line: 678, column: 28, scope: !3819)
!3835 = !DILocation(line: 678, column: 20, scope: !3819)
!3836 = !DILocation(line: 679, column: 3, scope: !3819)
!3837 = !DILocation(line: 681, column: 3, scope: !3819)
!3838 = !DILocation(line: 682, column: 3, scope: !3819)
!3839 = !DILocation(line: 683, column: 43, scope: !3819)
!3840 = !DILocation(line: 683, column: 3, scope: !3819)
!3841 = !DILocation(line: 684, column: 25, scope: !3819)
!3842 = !DILocation(line: 684, column: 3, scope: !3819)
!3843 = !DILocation(line: 686, column: 8, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 686, column: 3)
!3845 = !DILocation(line: 0, scope: !3844)
!3846 = !DILocation(line: 686, column: 15, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 686, column: 3)
!3848 = !DILocation(line: 686, column: 3, scope: !3844)
!3849 = !DILocation(line: 687, column: 49, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 687, column: 9)
!3851 = !DILocation(line: 687, column: 10, scope: !3850)
!3852 = !DILocation(line: 687, column: 9, scope: !3847)
!3853 = !DILocation(line: 688, column: 43, scope: !3850)
!3854 = !DILocation(line: 688, column: 7, scope: !3850)
!3855 = !DILocation(line: 686, column: 48, scope: !3847)
!3856 = !DILocation(line: 686, column: 3, scope: !3847)
!3857 = distinct !{!3857, !3848, !3858}
!3858 = !DILocation(line: 689, column: 25, scope: !3844)
!3859 = !DILocation(line: 691, column: 3, scope: !3819)
!3860 = !DILocation(line: 692, column: 1, scope: !3819)
!3861 = distinct !DISubprogram(name: "rdg_flag_similar_memory_accesses", scope: !3, file: !3, line: 756, type: !3862, scopeLine: 759, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{null, !2856, !668, !668, !668, !2186}
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3884}
!3865 = !DILocalVariable(name: "rdg", arg: 1, scope: !3861, file: !3, line: 756, type: !2856)
!3866 = !DILocalVariable(name: "partition", arg: 2, scope: !3861, file: !3, line: 756, type: !668)
!3867 = !DILocalVariable(name: "loops", arg: 3, scope: !3861, file: !3, line: 757, type: !668)
!3868 = !DILocalVariable(name: "processed", arg: 4, scope: !3861, file: !3, line: 757, type: !668)
!3869 = !DILocalVariable(name: "other_stores", arg: 5, scope: !3861, file: !3, line: 758, type: !2186)
!3870 = !DILocalVariable(name: "foo", scope: !3861, file: !3, line: 760, type: !660)
!3871 = !DILocalVariable(name: "i", scope: !3861, file: !3, line: 761, type: !7)
!3872 = !DILocalVariable(name: "n", scope: !3861, file: !3, line: 761, type: !7)
!3873 = !DILocalVariable(name: "j", scope: !3861, file: !3, line: 762, type: !661)
!3874 = !DILocalVariable(name: "k", scope: !3861, file: !3, line: 762, type: !661)
!3875 = !DILocalVariable(name: "kk", scope: !3861, file: !3, line: 762, type: !661)
!3876 = !DILocalVariable(name: "ii", scope: !3861, file: !3, line: 763, type: !3877)
!3877 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !672, line: 218, baseType: !3878)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 203, size: 256, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !3878, file: !672, line: 206, baseType: !675, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !3878, file: !672, line: 209, baseType: !675, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !3878, file: !672, line: 212, baseType: !7, size: 32, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3878, file: !672, line: 217, baseType: !685, size: 64, offset: 192)
!3884 = !DILocalVariable(name: "e", scope: !3861, file: !3, line: 764, type: !2866)
!3885 = !DILocation(line: 0, scope: !3861)
!3886 = !DILocation(line: 760, column: 3, scope: !3861)
!3887 = !DILocation(line: 761, column: 3, scope: !3861)
!3888 = !DILocation(line: 762, column: 3, scope: !3861)
!3889 = !DILocation(line: 763, column: 3, scope: !3861)
!3890 = !DILocation(line: 766, column: 3, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3861, file: !3, line: 766, column: 3)
!3892 = !DILocation(line: 0, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 767, column: 9)
!3894 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 766, column: 3)
!3895 = !DILocation(line: 0, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !3, line: 770, column: 2)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 770, column: 2)
!3898 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 769, column: 7)
!3899 = !DILocation(line: 766, column: 3, scope: !3894)
!3900 = !DILocation(line: 767, column: 9, scope: !3893)
!3901 = !DILocation(line: 768, column: 2, scope: !3893)
!3902 = !DILocation(line: 768, column: 5, scope: !3893)
!3903 = !DILocation(line: 767, column: 9, scope: !3894)
!3904 = !DILocation(line: 770, column: 7, scope: !3897)
!3905 = !DILocation(line: 0, scope: !3897)
!3906 = !DILocation(line: 770, column: 23, scope: !3896)
!3907 = !DILocation(line: 770, column: 16, scope: !3896)
!3908 = !DILocation(line: 770, column: 2, scope: !3897)
!3909 = !DILocation(line: 771, column: 9, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 771, column: 8)
!3911 = !DILocation(line: 772, column: 8, scope: !3910)
!3912 = !DILocation(line: 772, column: 12, scope: !3910)
!3913 = !DILocation(line: 773, column: 5, scope: !3910)
!3914 = !DILocation(line: 773, column: 8, scope: !3910)
!3915 = !DILocation(line: 774, column: 8, scope: !3910)
!3916 = !DILocation(line: 774, column: 49, scope: !3910)
!3917 = !DILocation(line: 774, column: 11, scope: !3910)
!3918 = !DILocation(line: 771, column: 8, scope: !3896)
!3919 = !DILocation(line: 778, column: 8, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3910, file: !3, line: 775, column: 6)
!3921 = !DILocation(line: 784, column: 8, scope: !3920)
!3922 = !DILocation(line: 787, column: 12, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3920, file: !3, line: 787, column: 12)
!3924 = !DILocation(line: 787, column: 12, scope: !3920)
!3925 = !DILocation(line: 788, column: 3, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3923, file: !3, line: 788, column: 3)
!3927 = !DILocation(line: 0, scope: !3926)
!3928 = !DILocation(line: 788, column: 15, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 788, column: 3)
!3930 = !DILocation(line: 789, column: 9, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 789, column: 9)
!3932 = !DILocation(line: 789, column: 12, scope: !3931)
!3933 = !DILocation(line: 789, column: 9, scope: !3929)
!3934 = !DILocation(line: 791, column: 9, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 790, column: 7)
!3936 = !DILocation(line: 792, column: 9, scope: !3935)
!3937 = !DILocation(line: 788, column: 57, scope: !3929)
!3938 = !DILocation(line: 788, column: 3, scope: !3929)
!3939 = distinct !{!3939, !3925, !3940}
!3940 = !DILocation(line: 793, column: 7, scope: !3926)
!3941 = !DILocation(line: 770, column: 36, scope: !3896)
!3942 = !DILocation(line: 770, column: 2, scope: !3896)
!3943 = distinct !{!3943, !3908, !3944}
!3944 = !DILocation(line: 794, column: 6, scope: !3897)
!3945 = !DILocation(line: 798, column: 23, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 798, column: 2)
!3947 = !DILocation(line: 798, column: 32, scope: !3946)
!3948 = !DILocation(line: 798, column: 18, scope: !3946)
!3949 = !DILocation(line: 798, column: 35, scope: !3946)
!3950 = !DILocation(line: 798, column: 7, scope: !3946)
!3951 = !DILocation(line: 0, scope: !3946)
!3952 = !DILocation(line: 798, column: 2, scope: !3946)
!3953 = !DILocation(line: 798, column: 51, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 798, column: 2)
!3955 = !DILocation(line: 798, column: 63, scope: !3954)
!3956 = !DILocation(line: 798, column: 2, scope: !3954)
!3957 = distinct !{!3957, !3952, !3958}
!3958 = !DILocation(line: 798, column: 66, scope: !3946)
!3959 = !DILocation(line: 800, column: 8, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 800, column: 6)
!3961 = !DILocation(line: 800, column: 6, scope: !3898)
!3962 = !DILocation(line: 801, column: 4, scope: !3960)
!3963 = distinct !{!3963, !3890, !3964}
!3964 = !DILocation(line: 802, column: 7, scope: !3891)
!3965 = !DILocation(line: 803, column: 1, scope: !3861)
!3966 = distinct !DISubprogram(name: "rdg_flag_loop_exits", scope: !3, file: !3, line: 720, type: !3967, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3969)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !2856, !668, !668, !668, !659}
!3969 = !{!3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3980, !3981}
!3970 = !DILocalVariable(name: "rdg", arg: 1, scope: !3966, file: !3, line: 720, type: !2856)
!3971 = !DILocalVariable(name: "loops", arg: 2, scope: !3966, file: !3, line: 720, type: !668)
!3972 = !DILocalVariable(name: "partition", arg: 3, scope: !3966, file: !3, line: 720, type: !668)
!3973 = !DILocalVariable(name: "processed", arg: 4, scope: !3966, file: !3, line: 721, type: !668)
!3974 = !DILocalVariable(name: "part_has_writes", arg: 5, scope: !3966, file: !3, line: 721, type: !659)
!3975 = !DILocalVariable(name: "i", scope: !3966, file: !3, line: 723, type: !7)
!3976 = !DILocalVariable(name: "bi", scope: !3966, file: !3, line: 724, type: !3877)
!3977 = !DILocalVariable(name: "conds", scope: !3966, file: !3, line: 725, type: !2033)
!3978 = !DILocalVariable(name: "cond", scope: !3979, file: !3, line: 732, type: !789)
!3979 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 731, column: 5)
!3980 = !DILocalVariable(name: "v", scope: !3979, file: !3, line: 733, type: !661)
!3981 = !DILocalVariable(name: "new_loops", scope: !3979, file: !3, line: 734, type: !668)
!3982 = !DILocation(line: 0, scope: !3966)
!3983 = !DILocation(line: 723, column: 3, scope: !3966)
!3984 = !DILocation(line: 724, column: 3, scope: !3966)
!3985 = !DILocation(line: 725, column: 3, scope: !3966)
!3986 = !DILocation(line: 725, column: 31, scope: !3966)
!3987 = !DILocation(line: 725, column: 23, scope: !3966)
!3988 = !DILocation(line: 727, column: 3, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 727, column: 3)
!3990 = !DILocation(line: 727, column: 3, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 727, column: 3)
!3992 = !DILocation(line: 730, column: 3, scope: !3966)
!3993 = !DILocation(line: 728, column: 40, scope: !3991)
!3994 = !DILocation(line: 728, column: 30, scope: !3991)
!3995 = !DILocation(line: 728, column: 5, scope: !3991)
!3996 = distinct !{!3996, !3988, !3997}
!3997 = !DILocation(line: 728, column: 50, scope: !3989)
!3998 = !DILocation(line: 730, column: 11, scope: !3966)
!3999 = !DILocation(line: 732, column: 21, scope: !3979)
!4000 = !DILocation(line: 0, scope: !3979)
!4001 = !DILocation(line: 733, column: 15, scope: !3979)
!4002 = !DILocation(line: 734, column: 26, scope: !3979)
!4003 = !DILocation(line: 736, column: 12, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 736, column: 11)
!4005 = !DILocation(line: 736, column: 11, scope: !3979)
!4006 = !DILocation(line: 737, column: 2, scope: !4004)
!4007 = !DILocation(line: 740, column: 7, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 740, column: 7)
!4009 = !DILocation(line: 740, column: 7, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 740, column: 7)
!4011 = !DILocation(line: 741, column: 28, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 741, column: 6)
!4013 = !DILocation(line: 741, column: 7, scope: !4012)
!4014 = !DILocation(line: 741, column: 6, scope: !4010)
!4015 = !DILocation(line: 743, column: 29, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4012, file: !3, line: 742, column: 4)
!4017 = !DILocation(line: 743, column: 6, scope: !4016)
!4018 = !DILocation(line: 744, column: 41, scope: !4016)
!4019 = !DILocation(line: 744, column: 31, scope: !4016)
!4020 = !DILocation(line: 744, column: 6, scope: !4016)
!4021 = !DILocation(line: 745, column: 4, scope: !4016)
!4022 = distinct !{!4022, !4007, !4023}
!4023 = !DILocation(line: 745, column: 4, scope: !4008)
!4024 = !DILocation(line: 747, column: 7, scope: !3979)
!4025 = distinct !{!4025, !3992, !4026}
!4026 = !DILocation(line: 748, column: 5, scope: !3966)
!4027 = !DILocation(line: 749, column: 1, scope: !3966)
!4028 = distinct !DISubprogram(name: "rdg_flag_uses", scope: !3, file: !3, line: 584, type: !3820, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4029)
!4029 = !{!4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4043, !4048, !4051, !4052, !4055, !4058, !4066}
!4030 = !DILocalVariable(name: "rdg", arg: 1, scope: !4028, file: !3, line: 584, type: !2856)
!4031 = !DILocalVariable(name: "u", arg: 2, scope: !4028, file: !3, line: 584, type: !661)
!4032 = !DILocalVariable(name: "partition", arg: 3, scope: !4028, file: !3, line: 584, type: !668)
!4033 = !DILocalVariable(name: "loops", arg: 4, scope: !4028, file: !3, line: 584, type: !668)
!4034 = !DILocalVariable(name: "processed", arg: 5, scope: !4028, file: !3, line: 585, type: !668)
!4035 = !DILocalVariable(name: "part_has_writes", arg: 6, scope: !4028, file: !3, line: 585, type: !659)
!4036 = !DILocalVariable(name: "use_p", scope: !4028, file: !3, line: 587, type: !2187)
!4037 = !DILocalVariable(name: "x", scope: !4028, file: !3, line: 588, type: !2862)
!4038 = !DILocalVariable(name: "stmt", scope: !4028, file: !3, line: 589, type: !789)
!4039 = !DILocalVariable(name: "anti_dep", scope: !4028, file: !3, line: 590, type: !2866)
!4040 = !DILocalVariable(name: "v", scope: !4041, file: !3, line: 597, type: !661)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 596, column: 5)
!4042 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 595, column: 7)
!4043 = !DILocalVariable(name: "use", scope: !4044, file: !3, line: 608, type: !814)
!4044 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 607, column: 2)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !3, line: 606, column: 11)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 605, column: 5)
!4047 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 604, column: 7)
!4048 = !DILocalVariable(name: "def_stmt", scope: !4049, file: !3, line: 612, type: !789)
!4049 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 611, column: 6)
!4050 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 610, column: 8)
!4051 = !DILocalVariable(name: "v", scope: !4049, file: !3, line: 613, type: !661)
!4052 = !DILocalVariable(name: "op0", scope: !4053, file: !3, line: 625, type: !814)
!4053 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 624, column: 5)
!4054 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 623, column: 7)
!4055 = !DILocalVariable(name: "use_p", scope: !4056, file: !3, line: 631, type: !2187)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 630, column: 2)
!4057 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 629, column: 11)
!4058 = !DILocalVariable(name: "iter", scope: !4056, file: !3, line: 632, type: !4059)
!4059 = !DIDerivedType(tag: DW_TAG_typedef, name: "imm_use_iterator", file: !1126, line: 249, baseType: !4060)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "immediate_use_iterator_d", file: !1126, line: 238, size: 448, elements: !4061)
!4061 = !{!4062, !4063, !4064, !4065}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !4060, file: !1126, line: 241, baseType: !2188, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "end_p", scope: !4060, file: !1126, line: 243, baseType: !2188, size: 64, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "iter_node", scope: !4060, file: !1126, line: 245, baseType: !2189, size: 256, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "next_imm_name", scope: !4060, file: !1126, line: 248, baseType: !2188, size: 64, offset: 384)
!4066 = !DILocalVariable(name: "v", scope: !4067, file: !3, line: 636, type: !661)
!4067 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 635, column: 6)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 634, column: 4)
!4069 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 634, column: 4)
!4070 = !DILocation(line: 0, scope: !4028)
!4071 = !DILocation(line: 588, column: 29, scope: !4028)
!4072 = !DILocation(line: 588, column: 24, scope: !4028)
!4073 = !DILocation(line: 589, column: 17, scope: !4028)
!4074 = !DILocation(line: 590, column: 33, scope: !4028)
!4075 = !DILocation(line: 595, column: 7, scope: !4042)
!4076 = !DILocation(line: 595, column: 7, scope: !4028)
!4077 = !DILocation(line: 597, column: 25, scope: !4041)
!4078 = !DILocation(line: 0, scope: !4041)
!4079 = !DILocation(line: 599, column: 12, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 599, column: 11)
!4081 = !DILocation(line: 599, column: 11, scope: !4041)
!4082 = !DILocation(line: 600, column: 2, scope: !4080)
!4083 = !DILocation(line: 604, column: 7, scope: !4047)
!4084 = !DILocation(line: 604, column: 26, scope: !4047)
!4085 = !DILocation(line: 604, column: 7, scope: !4028)
!4086 = !DILocation(line: 606, column: 20, scope: !4045)
!4087 = !DILocation(line: 606, column: 43, scope: !4045)
!4088 = !DILocation(line: 606, column: 11, scope: !4046)
!4089 = !DILocation(line: 608, column: 15, scope: !4044)
!4090 = !DILocation(line: 0, scope: !4044)
!4091 = !DILocation(line: 610, column: 8, scope: !4050)
!4092 = !DILocation(line: 610, column: 24, scope: !4050)
!4093 = !DILocation(line: 610, column: 8, scope: !4044)
!4094 = !DILocation(line: 612, column: 26, scope: !4049)
!4095 = !DILocation(line: 0, scope: !4049)
!4096 = !DILocation(line: 613, column: 16, scope: !4049)
!4097 = !DILocation(line: 615, column: 14, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 615, column: 12)
!4099 = !DILocation(line: 616, column: 5, scope: !4098)
!4100 = !DILocation(line: 616, column: 9, scope: !4098)
!4101 = !DILocation(line: 615, column: 12, scope: !4049)
!4102 = !DILocation(line: 617, column: 3, scope: !4098)
!4103 = !DILocation(line: 623, column: 7, scope: !4054)
!4104 = !DILocation(line: 623, column: 31, scope: !4054)
!4105 = !DILocation(line: 623, column: 34, scope: !4054)
!4106 = !DILocation(line: 623, column: 7, scope: !4028)
!4107 = !DILocation(line: 625, column: 18, scope: !4053)
!4108 = !DILocation(line: 0, scope: !4053)
!4109 = !DILocation(line: 629, column: 11, scope: !4057)
!4110 = !DILocation(line: 629, column: 11, scope: !4053)
!4111 = !DILocation(line: 632, column: 4, scope: !4056)
!4112 = !DILocation(line: 0, scope: !4056)
!4113 = !DILocation(line: 634, column: 4, scope: !4069)
!4114 = !DILocation(line: 0, scope: !4069)
!4115 = !DILocation(line: 634, column: 4, scope: !4068)
!4116 = !DILocation(line: 636, column: 42, scope: !4067)
!4117 = !DILocation(line: 636, column: 16, scope: !4067)
!4118 = !DILocation(line: 0, scope: !4067)
!4119 = !DILocation(line: 638, column: 13, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 638, column: 12)
!4121 = !DILocation(line: 638, column: 12, scope: !4067)
!4122 = !DILocation(line: 639, column: 3, scope: !4120)
!4123 = distinct !{!4123, !4113, !4124}
!4124 = !DILocation(line: 641, column: 6, scope: !4069)
!4125 = !DILocation(line: 642, column: 2, scope: !4057)
!4126 = !DILocation(line: 642, column: 2, scope: !4056)
!4127 = !DILocation(line: 644, column: 1, scope: !4028)
!4128 = distinct !DISubprogram(name: "rdg_flag_vertex", scope: !3, file: !3, line: 650, type: !4129, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4131)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{null, !2856, !661, !668, !668, !659}
!4131 = !{!4132, !4133, !4134, !4135, !4136, !4137}
!4132 = !DILocalVariable(name: "rdg", arg: 1, scope: !4128, file: !3, line: 650, type: !2856)
!4133 = !DILocalVariable(name: "v", arg: 2, scope: !4128, file: !3, line: 650, type: !661)
!4134 = !DILocalVariable(name: "partition", arg: 3, scope: !4128, file: !3, line: 650, type: !668)
!4135 = !DILocalVariable(name: "loops", arg: 4, scope: !4128, file: !3, line: 650, type: !668)
!4136 = !DILocalVariable(name: "part_has_writes", arg: 5, scope: !4128, file: !3, line: 651, type: !659)
!4137 = !DILocalVariable(name: "loop", scope: !4128, file: !3, line: 653, type: !747)
!4138 = !DILocation(line: 0, scope: !4128)
!4139 = !DILocation(line: 655, column: 7, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 655, column: 7)
!4141 = !DILocation(line: 655, column: 7, scope: !4128)
!4142 = !DILocation(line: 658, column: 32, scope: !4128)
!4143 = !DILocation(line: 658, column: 10, scope: !4128)
!4144 = !DILocation(line: 659, column: 32, scope: !4128)
!4145 = !DILocation(line: 659, column: 3, scope: !4128)
!4146 = !DILocation(line: 660, column: 3, scope: !4128)
!4147 = !DILocation(line: 662, column: 7, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 662, column: 7)
!4149 = !DILocation(line: 662, column: 7, scope: !4128)
!4150 = !DILocation(line: 664, column: 24, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 663, column: 5)
!4152 = !DILocation(line: 665, column: 25, scope: !4151)
!4153 = !DILocation(line: 665, column: 7, scope: !4151)
!4154 = !DILocation(line: 666, column: 5, scope: !4151)
!4155 = !DILocation(line: 667, column: 1, scope: !4128)
!4156 = distinct !DISubprogram(name: "gimple_code", scope: !581, file: !581, line: 1052, type: !4157, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4160)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!580, !4159}
!4159 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !669, line: 60, baseType: !2190)
!4160 = !{!4161}
!4161 = !DILocalVariable(name: "g", arg: 1, scope: !4156, file: !581, line: 1052, type: !4159)
!4162 = !DILocation(line: 0, scope: !4156)
!4163 = !DILocation(line: 1054, column: 20, scope: !4156)
!4164 = !DILocation(line: 1054, column: 3, scope: !4156)
!4165 = distinct !DISubprogram(name: "gimple_vuse_op", scope: !581, file: !581, line: 1334, type: !4166, scopeLine: 1335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4168)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!2187, !4159}
!4168 = !{!4169, !4170}
!4169 = !DILocalVariable(name: "g", arg: 1, scope: !4165, file: !581, line: 1334, type: !4159)
!4170 = !DILocalVariable(name: "ops", scope: !4165, file: !581, line: 1336, type: !1336)
!4171 = !DILocation(line: 0, scope: !4165)
!4172 = !DILocation(line: 1337, column: 8, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4165, file: !581, line: 1337, column: 7)
!4174 = !DILocation(line: 1337, column: 7, scope: !4165)
!4175 = !DILocation(line: 1339, column: 25, scope: !4165)
!4176 = !DILocation(line: 1340, column: 7, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4165, file: !581, line: 1340, column: 7)
!4178 = !DILocation(line: 1341, column: 7, scope: !4177)
!4179 = !DILocation(line: 1341, column: 28, scope: !4177)
!4180 = !DILocation(line: 1341, column: 49, scope: !4177)
!4181 = !DILocation(line: 1341, column: 32, scope: !4177)
!4182 = !DILocation(line: 1342, column: 12, scope: !4177)
!4183 = !DILocation(line: 1340, column: 7, scope: !4165)
!4184 = !DILocation(line: 1344, column: 1, scope: !4165)
!4185 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !4186, file: !4186, line: 427, type: !4187, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4189)
!4186 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!814, !2187}
!4189 = !{!4190}
!4190 = !DILocalVariable(name: "use", arg: 1, scope: !4185, file: !4186, line: 427, type: !2187)
!4191 = !DILocation(line: 0, scope: !4185)
!4192 = !DILocation(line: 429, column: 17, scope: !4185)
!4193 = !DILocation(line: 429, column: 10, scope: !4185)
!4194 = !DILocation(line: 429, column: 3, scope: !4185)
!4195 = distinct !DISubprogram(name: "is_gimple_assign", scope: !581, file: !581, line: 1677, type: !4196, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4198)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!660, !4159}
!4198 = !{!4199}
!4199 = !DILocalVariable(name: "gs", arg: 1, scope: !4195, file: !581, line: 1677, type: !4159)
!4200 = !DILocation(line: 0, scope: !4195)
!4201 = !DILocation(line: 1679, column: 10, scope: !4195)
!4202 = !DILocation(line: 1679, column: 27, scope: !4195)
!4203 = !DILocation(line: 1679, column: 3, scope: !4195)
!4204 = distinct !DISubprogram(name: "has_upstream_mem_writes", scope: !3, file: !3, line: 554, type: !4205, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4207)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!660, !661}
!4207 = !{!4208}
!4208 = !DILocalVariable(name: "u", arg: 1, scope: !4204, file: !3, line: 554, type: !661)
!4209 = !DILocation(line: 0, scope: !4204)
!4210 = !DILocation(line: 556, column: 24, scope: !4204)
!4211 = !DILocation(line: 556, column: 10, scope: !4204)
!4212 = !DILocation(line: 556, column: 3, scope: !4204)
!4213 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !581, file: !581, line: 1694, type: !4214, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4216)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!814, !4159}
!4216 = !{!4217}
!4217 = !DILocalVariable(name: "gs", arg: 1, scope: !4213, file: !581, line: 1694, type: !4159)
!4218 = !DILocation(line: 0, scope: !4213)
!4219 = !DILocation(line: 1697, column: 10, scope: !4213)
!4220 = !DILocation(line: 1697, column: 3, scope: !4213)
!4221 = distinct !DISubprogram(name: "first_readonly_imm_use", scope: !4186, file: !4186, line: 292, type: !4222, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4225)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!2187, !4224, !814}
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4225 = !{!4226, !4227}
!4226 = !DILocalVariable(name: "imm", arg: 1, scope: !4221, file: !4186, line: 292, type: !4224)
!4227 = !DILocalVariable(name: "var", arg: 2, scope: !4221, file: !4186, line: 292, type: !814)
!4228 = !DILocation(line: 0, scope: !4221)
!4229 = !DILocation(line: 294, column: 18, scope: !4221)
!4230 = !DILocation(line: 294, column: 8, scope: !4221)
!4231 = !DILocation(line: 294, column: 14, scope: !4221)
!4232 = !DILocation(line: 295, column: 30, scope: !4221)
!4233 = !DILocation(line: 295, column: 16, scope: !4221)
!4234 = !DILocation(line: 299, column: 7, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4221, file: !4186, line: 299, column: 7)
!4236 = !DILocation(line: 299, column: 7, scope: !4221)
!4237 = !DILocation(line: 301, column: 15, scope: !4221)
!4238 = !DILocation(line: 301, column: 3, scope: !4221)
!4239 = !DILocation(line: 302, column: 1, scope: !4221)
!4240 = distinct !DISubprogram(name: "end_readonly_imm_use_p", scope: !4186, file: !4186, line: 285, type: !4241, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4245)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!660, !4243}
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4059)
!4245 = !{!4246}
!4246 = !DILocalVariable(name: "imm", arg: 1, scope: !4240, file: !4186, line: 285, type: !4243)
!4247 = !DILocation(line: 0, scope: !4240)
!4248 = !DILocation(line: 287, column: 16, scope: !4240)
!4249 = !DILocation(line: 287, column: 32, scope: !4240)
!4250 = !DILocation(line: 287, column: 24, scope: !4240)
!4251 = !DILocation(line: 287, column: 10, scope: !4240)
!4252 = !DILocation(line: 287, column: 3, scope: !4240)
!4253 = distinct !DISubprogram(name: "next_readonly_imm_use", scope: !4186, file: !4186, line: 306, type: !4254, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4256)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!2187, !4224}
!4256 = !{!4257, !4258}
!4257 = !DILocalVariable(name: "imm", arg: 1, scope: !4253, file: !4186, line: 306, type: !4224)
!4258 = !DILocalVariable(name: "old", scope: !4253, file: !4186, line: 308, type: !2187)
!4259 = !DILocation(line: 0, scope: !4253)
!4260 = !DILocation(line: 308, column: 28, scope: !4253)
!4261 = !DILocation(line: 319, column: 23, scope: !4253)
!4262 = !DILocation(line: 319, column: 16, scope: !4253)
!4263 = !DILocation(line: 320, column: 7, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4253, file: !4186, line: 320, column: 7)
!4265 = !DILocation(line: 320, column: 7, scope: !4253)
!4266 = !DILocation(line: 322, column: 15, scope: !4253)
!4267 = !DILocation(line: 322, column: 3, scope: !4253)
!4268 = !DILocation(line: 323, column: 1, scope: !4253)
!4269 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !581, file: !581, line: 1283, type: !4196, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4270)
!4270 = !{!4271}
!4271 = !DILocalVariable(name: "g", arg: 1, scope: !4269, file: !581, line: 1283, type: !4159)
!4272 = !DILocation(line: 0, scope: !4269)
!4273 = !DILocation(line: 1285, column: 10, scope: !4269)
!4274 = !DILocation(line: 1285, column: 26, scope: !4269)
!4275 = !DILocation(line: 1285, column: 43, scope: !4269)
!4276 = !DILocation(line: 1285, column: 46, scope: !4269)
!4277 = !DILocation(line: 1285, column: 62, scope: !4269)
!4278 = !DILocation(line: 1285, column: 3, scope: !4269)
!4279 = distinct !DISubprogram(name: "gimple_op", scope: !581, file: !581, line: 1631, type: !4280, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4282)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!814, !4159, !7}
!4282 = !{!4283, !4284}
!4283 = !DILocalVariable(name: "gs", arg: 1, scope: !4279, file: !581, line: 1631, type: !4159)
!4284 = !DILocalVariable(name: "i", arg: 2, scope: !4279, file: !581, line: 1631, type: !7)
!4285 = !DILocation(line: 0, scope: !4279)
!4286 = !DILocation(line: 1633, column: 7, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4279, file: !581, line: 1633, column: 7)
!4288 = !DILocation(line: 1633, column: 7, scope: !4279)
!4289 = !DILocation(line: 1638, column: 14, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4287, file: !581, line: 1634, column: 5)
!4291 = !DILocation(line: 1638, column: 7, scope: !4290)
!4292 = !DILocation(line: 0, scope: !4287)
!4293 = !DILocation(line: 1642, column: 1, scope: !4279)
!4294 = distinct !DISubprogram(name: "gimple_has_ops", scope: !581, file: !581, line: 1274, type: !4196, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4295)
!4295 = !{!4296}
!4296 = !DILocalVariable(name: "g", arg: 1, scope: !4294, file: !581, line: 1274, type: !4159)
!4297 = !DILocation(line: 0, scope: !4294)
!4298 = !DILocation(line: 1276, column: 10, scope: !4294)
!4299 = !DILocation(line: 1276, column: 26, scope: !4294)
!4300 = !DILocation(line: 1276, column: 41, scope: !4294)
!4301 = !DILocation(line: 1276, column: 44, scope: !4294)
!4302 = !DILocation(line: 1276, column: 60, scope: !4294)
!4303 = !DILocation(line: 1276, column: 3, scope: !4294)
!4304 = distinct !DISubprogram(name: "gimple_ops", scope: !581, file: !581, line: 1614, type: !4305, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4307)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!1334, !789}
!4307 = !{!4308, !4309}
!4308 = !DILocalVariable(name: "gs", arg: 1, scope: !4304, file: !581, line: 1614, type: !789)
!4309 = !DILocalVariable(name: "off", scope: !4304, file: !581, line: 1616, type: !1244)
!4310 = !DILocation(line: 0, scope: !4304)
!4311 = !DILocation(line: 1621, column: 28, scope: !4304)
!4312 = !DILocation(line: 1621, column: 9, scope: !4304)
!4313 = !DILocation(line: 1622, column: 3, scope: !4304)
!4314 = !DILocation(line: 1624, column: 20, scope: !4304)
!4315 = !DILocation(line: 1624, column: 32, scope: !4304)
!4316 = !DILocation(line: 1624, column: 10, scope: !4304)
!4317 = !DILocation(line: 1624, column: 3, scope: !4304)
!4318 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !581, file: !581, line: 1073, type: !4319, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4321)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!619, !789}
!4321 = !{!4322}
!4322 = !DILocalVariable(name: "gs", arg: 1, scope: !4318, file: !581, line: 1073, type: !789)
!4323 = !DILocation(line: 0, scope: !4318)
!4324 = !DILocation(line: 1075, column: 24, scope: !4318)
!4325 = !DILocation(line: 1075, column: 10, scope: !4318)
!4326 = !DILocation(line: 1075, column: 3, scope: !4318)
!4327 = distinct !DISubprogram(name: "gss_for_code", scope: !581, file: !581, line: 1061, type: !4328, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4330)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!619, !580}
!4330 = !{!4331}
!4331 = !DILocalVariable(name: "code", arg: 1, scope: !4327, file: !581, line: 1061, type: !580)
!4332 = !DILocation(line: 0, scope: !4327)
!4333 = !DILocation(line: 1066, column: 10, scope: !4327)
!4334 = !DILocation(line: 1066, column: 3, scope: !4327)
!4335 = distinct !DISubprogram(name: "loop_containing_stmt", scope: !4186, file: !4186, line: 617, type: !4336, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4338)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!747, !789}
!4338 = !{!4339, !4340}
!4339 = !DILocalVariable(name: "stmt", arg: 1, scope: !4335, file: !4186, line: 617, type: !789)
!4340 = !DILocalVariable(name: "bb", scope: !4335, file: !4186, line: 619, type: !1186)
!4341 = !DILocation(line: 0, scope: !4335)
!4342 = !DILocation(line: 619, column: 20, scope: !4335)
!4343 = !DILocation(line: 620, column: 8, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4335, file: !4186, line: 620, column: 7)
!4345 = !DILocation(line: 620, column: 7, scope: !4335)
!4346 = !DILocation(line: 623, column: 14, scope: !4335)
!4347 = !DILocation(line: 623, column: 3, scope: !4335)
!4348 = !DILocation(line: 624, column: 1, scope: !4335)
!4349 = distinct !DISubprogram(name: "rdg_cannot_recompute_vertex_p", scope: !3, file: !3, line: 457, type: !4350, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4352)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!660, !2856, !661}
!4352 = !{!4353, !4354}
!4353 = !DILocalVariable(name: "rdg", arg: 1, scope: !4349, file: !3, line: 457, type: !2856)
!4354 = !DILocalVariable(name: "v", arg: 2, scope: !4349, file: !3, line: 457, type: !661)
!4355 = !DILocation(line: 0, scope: !4349)
!4356 = !DILocation(line: 459, column: 7, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4349, file: !3, line: 459, column: 7)
!4358 = !DILocation(line: 463, column: 1, scope: !4349)
!4359 = distinct !DISubprogram(name: "gimple_bb", scope: !581, file: !581, line: 1112, type: !4360, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4362)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!753, !4159}
!4362 = !{!4363}
!4363 = !DILocalVariable(name: "g", arg: 1, scope: !4359, file: !581, line: 1112, type: !4159)
!4364 = !DILocation(line: 0, scope: !4359)
!4365 = !DILocation(line: 1114, column: 20, scope: !4359)
!4366 = !DILocation(line: 1114, column: 3, scope: !4359)
!4367 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !672, file: !672, line: 224, type: !4368, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4375)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{null, !4370, !4371, !7, !4374}
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !669, line: 48, baseType: !4372)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4375 = !{!4376, !4377, !4378, !4379}
!4376 = !DILocalVariable(name: "bi", arg: 1, scope: !4367, file: !672, line: 224, type: !4370)
!4377 = !DILocalVariable(name: "map", arg: 2, scope: !4367, file: !672, line: 224, type: !4371)
!4378 = !DILocalVariable(name: "start_bit", arg: 3, scope: !4367, file: !672, line: 225, type: !7)
!4379 = !DILocalVariable(name: "bit_no", arg: 4, scope: !4367, file: !672, line: 225, type: !4374)
!4380 = !DILocation(line: 0, scope: !4367)
!4381 = !DILocation(line: 227, column: 19, scope: !4367)
!4382 = !DILocation(line: 227, column: 12, scope: !4367)
!4383 = !DILocation(line: 228, column: 7, scope: !4367)
!4384 = !DILocation(line: 228, column: 12, scope: !4367)
!4385 = !DILocation(line: 0, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4387, file: !672, line: 233, column: 11)
!4387 = distinct !DILexicalBlock(scope: !4367, file: !672, line: 232, column: 5)
!4388 = !DILocation(line: 231, column: 3, scope: !4367)
!4389 = !DILocation(line: 233, column: 12, scope: !4386)
!4390 = !DILocation(line: 233, column: 11, scope: !4387)
!4391 = !DILocation(line: 235, column: 13, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4386, file: !672, line: 234, column: 2)
!4393 = !DILocation(line: 236, column: 4, scope: !4392)
!4394 = !DILocation(line: 239, column: 11, scope: !4387)
!4395 = distinct !{!4395, !4388, !4396}
!4396 = !DILocation(line: 242, column: 5, scope: !4367)
!4397 = !DILocation(line: 245, column: 11, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4367, file: !672, line: 245, column: 7)
!4399 = !DILocation(line: 245, column: 17, scope: !4398)
!4400 = !DILocation(line: 245, column: 22, scope: !4398)
!4401 = !DILocation(line: 245, column: 7, scope: !4367)
!4402 = !DILocation(line: 246, column: 27, scope: !4398)
!4403 = !DILocation(line: 246, column: 32, scope: !4398)
!4404 = !DILocation(line: 246, column: 5, scope: !4398)
!4405 = !DILocation(line: 249, column: 7, scope: !4367)
!4406 = !DILocation(line: 249, column: 15, scope: !4367)
!4407 = !DILocation(line: 250, column: 14, scope: !4367)
!4408 = !DILocation(line: 251, column: 7, scope: !4367)
!4409 = !DILocation(line: 251, column: 12, scope: !4367)
!4410 = !DILocation(line: 257, column: 16, scope: !4367)
!4411 = !DILocation(line: 257, column: 13, scope: !4367)
!4412 = !DILocation(line: 259, column: 11, scope: !4367)
!4413 = !DILocation(line: 260, column: 1, scope: !4367)
!4414 = distinct !DISubprogram(name: "bmp_iter_set", scope: !672, file: !672, line: 393, type: !4415, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4417)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!660, !4370, !4374}
!4417 = !{!4418, !4419, !4420}
!4418 = !DILocalVariable(name: "bi", arg: 1, scope: !4414, file: !672, line: 393, type: !4370)
!4419 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4414, file: !672, line: 393, type: !4374)
!4420 = !DILabel(scope: !4421, name: "next_bit", file: !672, line: 398)
!4421 = distinct !DILexicalBlock(scope: !4422, file: !672, line: 397, column: 5)
!4422 = distinct !DILexicalBlock(scope: !4414, file: !672, line: 396, column: 7)
!4423 = !DILocation(line: 0, scope: !4414)
!4424 = !DILocation(line: 396, column: 11, scope: !4422)
!4425 = !DILocation(line: 396, column: 7, scope: !4422)
!4426 = !DILocation(line: 396, column: 7, scope: !4414)
!4427 = !DILocation(line: 419, column: 15, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4429, file: !672, line: 418, column: 2)
!4429 = distinct !DILexicalBlock(scope: !4414, file: !672, line: 415, column: 5)
!4430 = !DILocation(line: 399, column: 7, scope: !4421)
!4431 = !DILocation(line: 398, column: 5, scope: !4421)
!4432 = !DILocation(line: 399, column: 20, scope: !4421)
!4433 = !DILocation(line: 399, column: 25, scope: !4421)
!4434 = !DILocation(line: 399, column: 14, scope: !4421)
!4435 = !DILocation(line: 401, column: 13, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4421, file: !672, line: 400, column: 2)
!4437 = !DILocation(line: 402, column: 12, scope: !4436)
!4438 = distinct !{!4438, !4430, !4439}
!4439 = !DILocation(line: 403, column: 2, scope: !4421)
!4440 = !DILocation(line: 410, column: 15, scope: !4414)
!4441 = !DILocation(line: 410, column: 42, scope: !4414)
!4442 = !DILocation(line: 411, column: 26, scope: !4414)
!4443 = !DILocation(line: 410, column: 11, scope: !4414)
!4444 = !DILocation(line: 412, column: 7, scope: !4414)
!4445 = !DILocation(line: 412, column: 14, scope: !4414)
!4446 = !DILocation(line: 0, scope: !4429)
!4447 = !DILocation(line: 414, column: 3, scope: !4414)
!4448 = !DILocation(line: 417, column: 7, scope: !4429)
!4449 = !DILocation(line: 417, column: 18, scope: !4429)
!4450 = !DILocation(line: 417, column: 26, scope: !4429)
!4451 = !DILocation(line: 419, column: 13, scope: !4428)
!4452 = !DILocation(line: 420, column: 8, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4428, file: !672, line: 420, column: 8)
!4454 = !DILocation(line: 420, column: 8, scope: !4428)
!4455 = !DILocation(line: 422, column: 12, scope: !4428)
!4456 = !DILocation(line: 423, column: 15, scope: !4428)
!4457 = distinct !{!4457, !4448, !4458}
!4458 = !DILocation(line: 424, column: 2, scope: !4429)
!4459 = !DILocation(line: 427, column: 28, scope: !4429)
!4460 = !DILocation(line: 427, column: 16, scope: !4429)
!4461 = !DILocation(line: 428, column: 12, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4429, file: !672, line: 428, column: 11)
!4463 = !DILocation(line: 428, column: 11, scope: !4429)
!4464 = !DILocation(line: 430, column: 27, scope: !4429)
!4465 = !DILocation(line: 430, column: 32, scope: !4429)
!4466 = !DILocation(line: 430, column: 15, scope: !4429)
!4467 = !DILocation(line: 431, column: 19, scope: !4429)
!4468 = distinct !{!4468, !4447, !4469}
!4469 = !DILocation(line: 432, column: 5, scope: !4414)
!4470 = !DILocation(line: 433, column: 1, scope: !4414)
!4471 = distinct !DISubprogram(name: "rdg_has_similar_memory_accesses", scope: !574, file: !574, line: 578, type: !4472, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4474)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!660, !2856, !661, !661}
!4474 = !{!4475, !4476, !4477}
!4475 = !DILocalVariable(name: "rdg", arg: 1, scope: !4471, file: !574, line: 578, type: !2856)
!4476 = !DILocalVariable(name: "v1", arg: 2, scope: !4471, file: !574, line: 578, type: !661)
!4477 = !DILocalVariable(name: "v2", arg: 3, scope: !4471, file: !574, line: 578, type: !661)
!4478 = !DILocation(line: 0, scope: !4471)
!4479 = !DILocation(line: 580, column: 40, scope: !4471)
!4480 = !DILocation(line: 581, column: 12, scope: !4471)
!4481 = !DILocation(line: 580, column: 10, scope: !4471)
!4482 = !DILocation(line: 580, column: 3, scope: !4471)
!4483 = distinct !DISubprogram(name: "rdg_flag_all_uses", scope: !3, file: !3, line: 565, type: !3820, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4484)
!4484 = !{!4485, !4486, !4487, !4488, !4489, !4490, !4491}
!4485 = !DILocalVariable(name: "rdg", arg: 1, scope: !4483, file: !3, line: 565, type: !2856)
!4486 = !DILocalVariable(name: "u", arg: 2, scope: !4483, file: !3, line: 565, type: !661)
!4487 = !DILocalVariable(name: "partition", arg: 3, scope: !4483, file: !3, line: 565, type: !668)
!4488 = !DILocalVariable(name: "loops", arg: 4, scope: !4483, file: !3, line: 565, type: !668)
!4489 = !DILocalVariable(name: "processed", arg: 5, scope: !4483, file: !3, line: 566, type: !668)
!4490 = !DILocalVariable(name: "part_has_writes", arg: 6, scope: !4483, file: !3, line: 566, type: !659)
!4491 = !DILocalVariable(name: "e", scope: !4483, file: !3, line: 568, type: !2866)
!4492 = !DILocation(line: 0, scope: !4483)
!4493 = !DILocation(line: 570, column: 17, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 570, column: 3)
!4495 = !DILocation(line: 570, column: 12, scope: !4494)
!4496 = !DILocation(line: 570, column: 29, scope: !4494)
!4497 = !DILocation(line: 570, column: 8, scope: !4494)
!4498 = !DILocation(line: 0, scope: !4494)
!4499 = !DILocation(line: 570, column: 3, scope: !4494)
!4500 = !DILocation(line: 571, column: 38, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 571, column: 9)
!4502 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 570, column: 3)
!4503 = !DILocation(line: 571, column: 10, scope: !4501)
!4504 = !DILocation(line: 571, column: 9, scope: !4502)
!4505 = !DILocation(line: 573, column: 41, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 572, column: 7)
!4507 = !DILocation(line: 573, column: 2, scope: !4506)
!4508 = !DILocation(line: 575, column: 29, scope: !4506)
!4509 = !DILocation(line: 575, column: 2, scope: !4506)
!4510 = !DILocation(line: 577, column: 7, scope: !4506)
!4511 = !DILocation(line: 570, column: 45, scope: !4502)
!4512 = !DILocation(line: 570, column: 3, scope: !4502)
!4513 = distinct !{!4513, !4499, !4514}
!4514 = !DILocation(line: 577, column: 7, scope: !4494)
!4515 = !DILocation(line: 578, column: 1, scope: !4483)
!4516 = distinct !DISubprogram(name: "VEC_int_base_unordered_remove", scope: !733, file: !733, line: 31, type: !4517, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4519)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!661, !3016, !7}
!4519 = !{!4520, !4521, !4522, !4523}
!4520 = !DILocalVariable(name: "vec_", arg: 1, scope: !4516, file: !733, line: 31, type: !3016)
!4521 = !DILocalVariable(name: "ix_", arg: 2, scope: !4516, file: !733, line: 31, type: !7)
!4522 = !DILocalVariable(name: "slot_", scope: !4516, file: !733, line: 31, type: !2142)
!4523 = !DILocalVariable(name: "obj_", scope: !4516, file: !733, line: 31, type: !661)
!4524 = !DILocation(line: 0, scope: !4516)
!4525 = !DILocation(line: 31, column: 1, scope: !4516)
!4526 = distinct !DISubprogram(name: "bmp_iter_next", scope: !672, file: !672, line: 382, type: !4527, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4529)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{null, !4370, !4374}
!4529 = !{!4530, !4531}
!4530 = !DILocalVariable(name: "bi", arg: 1, scope: !4526, file: !672, line: 382, type: !4370)
!4531 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4526, file: !672, line: 382, type: !4374)
!4532 = !DILocation(line: 0, scope: !4526)
!4533 = !DILocation(line: 384, column: 7, scope: !4526)
!4534 = !DILocation(line: 384, column: 12, scope: !4526)
!4535 = !DILocation(line: 385, column: 11, scope: !4526)
!4536 = !DILocation(line: 386, column: 1, scope: !4526)
!4537 = distinct !DISubprogram(name: "collect_condition_stmts", scope: !3, file: !3, line: 698, type: !4538, scopeLine: 699, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4540)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{null, !747, !2957}
!4540 = !{!4541, !4542, !4543, !4544, !4545, !4551}
!4541 = !DILocalVariable(name: "loop", arg: 1, scope: !4537, file: !3, line: 698, type: !747)
!4542 = !DILocalVariable(name: "conds", arg: 2, scope: !4537, file: !3, line: 698, type: !2957)
!4543 = !DILocalVariable(name: "i", scope: !4537, file: !3, line: 700, type: !7)
!4544 = !DILocalVariable(name: "e", scope: !4537, file: !3, line: 701, type: !769)
!4545 = !DILocalVariable(name: "exits", scope: !4537, file: !3, line: 702, type: !4546)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_heap", file: !318, line: 152, baseType: !4548)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_heap", file: !318, line: 152, size: 128, elements: !4549)
!4549 = !{!4550}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4548, file: !318, line: 152, baseType: !762, size: 128)
!4551 = !DILocalVariable(name: "cond", scope: !4552, file: !3, line: 706, type: !789)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 705, column: 5)
!4553 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 704, column: 3)
!4554 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 704, column: 3)
!4555 = !DILocation(line: 0, scope: !4537)
!4556 = !DILocation(line: 701, column: 3, scope: !4537)
!4557 = !DILocation(line: 702, column: 3, scope: !4537)
!4558 = !DILocation(line: 702, column: 29, scope: !4537)
!4559 = !DILocation(line: 702, column: 21, scope: !4537)
!4560 = !DILocation(line: 704, column: 8, scope: !4554)
!4561 = !DILocation(line: 704, column: 15, scope: !4553)
!4562 = !DILocation(line: 0, scope: !4554)
!4563 = !DILocation(line: 704, column: 3, scope: !4554)
!4564 = !DILocation(line: 706, column: 32, scope: !4552)
!4565 = !DILocation(line: 706, column: 35, scope: !4552)
!4566 = !DILocation(line: 706, column: 21, scope: !4552)
!4567 = !DILocation(line: 0, scope: !4552)
!4568 = !DILocation(line: 708, column: 11, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 708, column: 11)
!4570 = !DILocation(line: 708, column: 11, scope: !4552)
!4571 = !DILocation(line: 709, column: 2, scope: !4569)
!4572 = !DILocation(line: 704, column: 49, scope: !4553)
!4573 = !DILocation(line: 704, column: 3, scope: !4553)
!4574 = distinct !{!4574, !4563, !4575}
!4575 = !DILocation(line: 710, column: 5, scope: !4554)
!4576 = !DILocation(line: 712, column: 3, scope: !4537)
!4577 = !DILocation(line: 713, column: 1, scope: !4537)
!4578 = distinct !DISubprogram(name: "get_loop", scope: !561, file: !561, line: 417, type: !4579, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4581)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!747, !7}
!4581 = !{!4582}
!4582 = !DILocalVariable(name: "num", arg: 1, scope: !4578, file: !561, line: 417, type: !7)
!4583 = !DILocation(line: 0, scope: !4578)
!4584 = !DILocation(line: 419, column: 10, scope: !4578)
!4585 = !DILocation(line: 419, column: 3, scope: !4578)
!4586 = distinct !DISubprogram(name: "VEC_gimple_base_length", scope: !581, file: !581, line: 33, type: !4587, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4589)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!7, !3057}
!4589 = !{!4590}
!4590 = !DILocalVariable(name: "vec_", arg: 1, scope: !4586, file: !581, line: 33, type: !3057)
!4591 = !DILocation(line: 0, scope: !4586)
!4592 = !DILocation(line: 33, column: 1, scope: !4586)
!4593 = distinct !DISubprogram(name: "VEC_gimple_base_pop", scope: !581, file: !581, line: 33, type: !4594, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4597)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!789, !4596}
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!4597 = !{!4598, !4599}
!4598 = !DILocalVariable(name: "vec_", arg: 1, scope: !4593, file: !581, line: 33, type: !4596)
!4599 = !DILocalVariable(name: "obj_", scope: !4593, file: !581, line: 33, type: !789)
!4600 = !DILocation(line: 0, scope: !4593)
!4601 = !DILocation(line: 33, column: 1, scope: !4593)
!4602 = distinct !DISubprogram(name: "VEC_edge_base_iterate", scope: !318, file: !318, line: 150, type: !4603, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4608)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!661, !4605, !7, !4607}
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!4608 = !{!4609, !4610, !4611}
!4609 = !DILocalVariable(name: "vec_", arg: 1, scope: !4602, file: !318, line: 150, type: !4605)
!4610 = !DILocalVariable(name: "ix_", arg: 2, scope: !4602, file: !318, line: 150, type: !7)
!4611 = !DILocalVariable(name: "ptr", arg: 3, scope: !4602, file: !318, line: 150, type: !4607)
!4612 = !DILocation(line: 0, scope: !4602)
!4613 = !DILocation(line: 150, column: 1, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4602, file: !318, line: 150, column: 1)
!4615 = !DILocation(line: 150, column: 1, scope: !4602)
!4616 = !DILocation(line: 150, column: 1, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4614, file: !318, line: 150, column: 1)
!4618 = !DILocation(line: 150, column: 1, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4614, file: !318, line: 150, column: 1)
!4620 = !DILocation(line: 0, scope: !4614)
!4621 = distinct !DISubprogram(name: "VEC_gimple_heap_safe_push", scope: !581, file: !581, line: 34, type: !4622, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4624)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!3059, !2957, !789}
!4624 = !{!4625, !4626}
!4625 = !DILocalVariable(name: "vec_", arg: 1, scope: !4621, file: !581, line: 34, type: !2957)
!4626 = !DILocalVariable(name: "obj_", arg: 2, scope: !4621, file: !581, line: 34, type: !789)
!4627 = !DILocation(line: 0, scope: !4621)
!4628 = !DILocation(line: 34, column: 1, scope: !4621)
!4629 = distinct !DISubprogram(name: "VEC_edge_heap_free", scope: !318, file: !318, line: 152, type: !4630, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4633)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{null, !4632}
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4633 = !{!4634}
!4634 = !DILocalVariable(name: "vec_", arg: 1, scope: !4629, file: !318, line: 152, type: !4632)
!4635 = !DILocation(line: 0, scope: !4629)
!4636 = !DILocation(line: 152, column: 1, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4629, file: !318, line: 152, column: 1)
!4638 = !DILocation(line: 152, column: 1, scope: !4629)
!4639 = distinct !DISubprogram(name: "VEC_gimple_heap_reserve", scope: !581, file: !581, line: 34, type: !4640, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4642)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!661, !2957, !661}
!4642 = !{!4643, !4644, !4645}
!4643 = !DILocalVariable(name: "vec_", arg: 1, scope: !4639, file: !581, line: 34, type: !2957)
!4644 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4639, file: !581, line: 34, type: !661)
!4645 = !DILocalVariable(name: "extend", scope: !4639, file: !581, line: 34, type: !661)
!4646 = !DILocation(line: 0, scope: !4639)
!4647 = !DILocation(line: 34, column: 1, scope: !4639)
!4648 = !DILocation(line: 34, column: 1, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4639, file: !581, line: 34, column: 1)
!4650 = distinct !DISubprogram(name: "VEC_gimple_base_quick_push", scope: !581, file: !581, line: 33, type: !4651, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4653)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!3059, !4596, !789}
!4653 = !{!4654, !4655, !4656}
!4654 = !DILocalVariable(name: "vec_", arg: 1, scope: !4650, file: !581, line: 33, type: !4596)
!4655 = !DILocalVariable(name: "obj_", arg: 2, scope: !4650, file: !581, line: 33, type: !789)
!4656 = !DILocalVariable(name: "slot_", scope: !4650, file: !581, line: 33, type: !3059)
!4657 = !DILocation(line: 0, scope: !4650)
!4658 = !DILocation(line: 33, column: 1, scope: !4650)
!4659 = distinct !DISubprogram(name: "VEC_gimple_base_space", scope: !581, file: !581, line: 33, type: !4660, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4662)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!661, !4596, !661}
!4662 = !{!4663, !4664}
!4663 = !DILocalVariable(name: "vec_", arg: 1, scope: !4659, file: !581, line: 33, type: !4596)
!4664 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4659, file: !581, line: 33, type: !661)
!4665 = !DILocation(line: 0, scope: !4659)
!4666 = !DILocation(line: 33, column: 1, scope: !4659)
!4667 = distinct !DISubprogram(name: "VEC_bitmap_heap_reserve", scope: !574, file: !574, line: 607, type: !4668, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4670)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!661, !3441, !661}
!4670 = !{!4671, !4672, !4673}
!4671 = !DILocalVariable(name: "vec_", arg: 1, scope: !4667, file: !574, line: 607, type: !3441)
!4672 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4667, file: !574, line: 607, type: !661)
!4673 = !DILocalVariable(name: "extend", scope: !4667, file: !574, line: 607, type: !661)
!4674 = !DILocation(line: 0, scope: !4667)
!4675 = !DILocation(line: 607, column: 1, scope: !4667)
!4676 = !DILocation(line: 607, column: 1, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4667, file: !574, line: 607, column: 1)
!4678 = distinct !DISubprogram(name: "VEC_bitmap_base_quick_push", scope: !574, file: !574, line: 606, type: !4679, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4682)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!2764, !4681, !668}
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!4682 = !{!4683, !4684, !4685}
!4683 = !DILocalVariable(name: "vec_", arg: 1, scope: !4678, file: !574, line: 606, type: !4681)
!4684 = !DILocalVariable(name: "obj_", arg: 2, scope: !4678, file: !574, line: 606, type: !668)
!4685 = !DILocalVariable(name: "slot_", scope: !4678, file: !574, line: 606, type: !2764)
!4686 = !DILocation(line: 0, scope: !4678)
!4687 = !DILocation(line: 606, column: 1, scope: !4678)
!4688 = distinct !DISubprogram(name: "VEC_bitmap_base_space", scope: !574, file: !574, line: 606, type: !4689, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4691)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!661, !4681, !661}
!4691 = !{!4692, !4693}
!4692 = !DILocalVariable(name: "vec_", arg: 1, scope: !4688, file: !574, line: 606, type: !4681)
!4693 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4688, file: !574, line: 606, type: !661)
!4694 = !DILocation(line: 0, scope: !4688)
!4695 = !DILocation(line: 606, column: 1, scope: !4688)
!4696 = distinct !DISubprogram(name: "number_of_rw_in_rdg", scope: !3, file: !3, line: 989, type: !4697, scopeLine: 990, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4699)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!661, !2856}
!4699 = !{!4700, !4701, !4702}
!4700 = !DILocalVariable(name: "rdg", arg: 1, scope: !4696, file: !3, line: 989, type: !2856)
!4701 = !DILocalVariable(name: "i", scope: !4696, file: !3, line: 991, type: !661)
!4702 = !DILocalVariable(name: "res", scope: !4696, file: !3, line: 991, type: !661)
!4703 = !DILocation(line: 0, scope: !4696)
!4704 = !DILocation(line: 0, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4706, file: !3, line: 993, column: 3)
!4706 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 993, column: 3)
!4707 = !DILocation(line: 0, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 995, column: 11)
!4709 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 994, column: 5)
!4710 = !DILocation(line: 993, column: 8, scope: !4706)
!4711 = !DILocation(line: 0, scope: !4706)
!4712 = !DILocation(line: 993, column: 17, scope: !4705)
!4713 = !DILocation(line: 993, column: 3, scope: !4706)
!4714 = !DILocation(line: 995, column: 11, scope: !4708)
!4715 = !DILocation(line: 995, column: 11, scope: !4709)
!4716 = !DILocation(line: 998, column: 11, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 998, column: 11)
!4718 = !DILocation(line: 998, column: 11, scope: !4709)
!4719 = !DILocation(line: 993, column: 37, scope: !4705)
!4720 = !DILocation(line: 993, column: 3, scope: !4705)
!4721 = distinct !{!4721, !4713, !4722}
!4722 = !DILocation(line: 1000, column: 5, scope: !4706)
!4723 = !DILocation(line: 1002, column: 3, scope: !4696)
!4724 = distinct !DISubprogram(name: "number_of_rw_in_partition", scope: !3, file: !3, line: 1009, type: !4725, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4727)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!661, !2856, !668}
!4727 = !{!4728, !4729, !4730, !4731, !4732}
!4728 = !DILocalVariable(name: "rdg", arg: 1, scope: !4724, file: !3, line: 1009, type: !2856)
!4729 = !DILocalVariable(name: "partition", arg: 2, scope: !4724, file: !3, line: 1009, type: !668)
!4730 = !DILocalVariable(name: "res", scope: !4724, file: !3, line: 1011, type: !661)
!4731 = !DILocalVariable(name: "i", scope: !4724, file: !3, line: 1012, type: !7)
!4732 = !DILocalVariable(name: "ii", scope: !4724, file: !3, line: 1013, type: !3877)
!4733 = !DILocation(line: 0, scope: !4724)
!4734 = !DILocation(line: 1012, column: 3, scope: !4724)
!4735 = !DILocation(line: 1013, column: 3, scope: !4724)
!4736 = !DILocation(line: 1015, column: 3, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 1015, column: 3)
!4738 = !DILocation(line: 0, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 1017, column: 11)
!4740 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 1016, column: 5)
!4741 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 1015, column: 3)
!4742 = !DILocation(line: 1015, column: 3, scope: !4741)
!4743 = !DILocation(line: 1017, column: 11, scope: !4739)
!4744 = !DILocation(line: 1017, column: 11, scope: !4740)
!4745 = !DILocation(line: 1020, column: 11, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 1020, column: 11)
!4747 = !DILocation(line: 1020, column: 11, scope: !4740)
!4748 = distinct !{!4748, !4736, !4749}
!4749 = !DILocation(line: 1022, column: 5, scope: !4737)
!4750 = !DILocation(line: 1025, column: 1, scope: !4724)
!4751 = !DILocation(line: 1024, column: 3, scope: !4724)
!4752 = distinct !DISubprogram(name: "generate_builtin", scope: !3, file: !3, line: 359, type: !3584, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4753)
!4753 = !{!4754, !4755, !4756, !4757, !4758, !4759, !4760, !4762, !4763, !4764, !4765, !4772, !4773, !4777, !4781, !4784, !4785, !4786}
!4754 = !DILocalVariable(name: "loop", arg: 1, scope: !4752, file: !3, line: 359, type: !747)
!4755 = !DILocalVariable(name: "partition", arg: 2, scope: !4752, file: !3, line: 359, type: !668)
!4756 = !DILocalVariable(name: "copy_p", arg: 3, scope: !4752, file: !3, line: 359, type: !660)
!4757 = !DILocalVariable(name: "res", scope: !4752, file: !3, line: 361, type: !660)
!4758 = !DILocalVariable(name: "i", scope: !4752, file: !3, line: 362, type: !7)
!4759 = !DILocalVariable(name: "x", scope: !4752, file: !3, line: 362, type: !7)
!4760 = !DILocalVariable(name: "bbs", scope: !4752, file: !3, line: 363, type: !4761)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!4762 = !DILocalVariable(name: "write", scope: !4752, file: !3, line: 364, type: !789)
!4763 = !DILocalVariable(name: "op0", scope: !4752, file: !3, line: 365, type: !814)
!4764 = !DILocalVariable(name: "op1", scope: !4752, file: !3, line: 365, type: !814)
!4765 = !DILocalVariable(name: "bsi", scope: !4752, file: !3, line: 366, type: !4766)
!4766 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !581, line: 265, baseType: !4767)
!4767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !581, line: 254, size: 192, elements: !4768)
!4768 = !{!4769, !4770, !4771}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4767, file: !581, line: 257, baseType: !784, size: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4767, file: !581, line: 263, baseType: !779, size: 64, offset: 64)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !4767, file: !581, line: 264, baseType: !1186, size: 64, offset: 128)
!4772 = !DILocalVariable(name: "nb_iter", scope: !4752, file: !3, line: 367, type: !814)
!4773 = !DILocalVariable(name: "bb", scope: !4774, file: !3, line: 376, type: !1186)
!4774 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 375, column: 5)
!4775 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 374, column: 3)
!4776 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 374, column: 3)
!4777 = !DILocalVariable(name: "stmt", scope: !4778, file: !3, line: 383, type: !789)
!4778 = distinct !DILexicalBlock(scope: !4779, file: !3, line: 382, column: 2)
!4779 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 381, column: 7)
!4780 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 381, column: 7)
!4781 = !DILocalVariable(name: "nbbs", scope: !4782, file: !3, line: 422, type: !7)
!4782 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 421, column: 5)
!4783 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 420, column: 7)
!4784 = !DILocalVariable(name: "src", scope: !4782, file: !3, line: 423, type: !1186)
!4785 = !DILocalVariable(name: "dest", scope: !4782, file: !3, line: 424, type: !1186)
!4786 = !DILabel(scope: !4752, name: "end", file: !3, line: 436)
!4787 = !DILocation(line: 0, scope: !4752)
!4788 = !DILocation(line: 366, column: 3, scope: !4752)
!4789 = !DILocation(line: 367, column: 18, scope: !4752)
!4790 = !DILocation(line: 369, column: 8, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 369, column: 7)
!4792 = !DILocation(line: 369, column: 30, scope: !4791)
!4793 = !DILocation(line: 369, column: 27, scope: !4791)
!4794 = !DILocation(line: 369, column: 16, scope: !4791)
!4795 = !DILocation(line: 372, column: 9, scope: !4752)
!4796 = !DILocation(line: 0, scope: !4775)
!4797 = !DILocation(line: 0, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 378, column: 7)
!4799 = !DILocation(line: 0, scope: !4780)
!4800 = !DILocation(line: 0, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 395, column: 12)
!4802 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 388, column: 6)
!4803 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 385, column: 8)
!4804 = !DILocation(line: 374, column: 8, scope: !4776)
!4805 = !DILocation(line: 364, column: 10, scope: !4752)
!4806 = !DILocation(line: 367, column: 8, scope: !4752)
!4807 = !DILocation(line: 374, column: 25, scope: !4775)
!4808 = !DILocation(line: 374, column: 17, scope: !4775)
!4809 = !DILocation(line: 374, column: 3, scope: !4776)
!4810 = !DILocation(line: 376, column: 24, scope: !4774)
!4811 = !DILocation(line: 0, scope: !4774)
!4812 = !DILocation(line: 378, column: 18, scope: !4798)
!4813 = !DILocation(line: 378, column: 12, scope: !4798)
!4814 = !DILocation(line: 378, column: 40, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 378, column: 7)
!4816 = !DILocation(line: 378, column: 39, scope: !4815)
!4817 = !DILocation(line: 378, column: 7, scope: !4798)
!4818 = !DILocation(line: 379, column: 3, scope: !4815)
!4819 = !DILocation(line: 378, column: 57, scope: !4815)
!4820 = !DILocation(line: 378, column: 7, scope: !4815)
!4821 = distinct !{!4821, !4817, !4822}
!4822 = !DILocation(line: 379, column: 3, scope: !4798)
!4823 = !DILocation(line: 381, column: 18, scope: !4780)
!4824 = !DILocation(line: 381, column: 12, scope: !4780)
!4825 = !DILocation(line: 381, column: 38, scope: !4779)
!4826 = !DILocation(line: 381, column: 37, scope: !4779)
!4827 = !DILocation(line: 381, column: 7, scope: !4780)
!4828 = !DILocation(line: 383, column: 18, scope: !4778)
!4829 = !DILocation(line: 0, scope: !4778)
!4830 = !DILocation(line: 385, column: 34, scope: !4803)
!4831 = !DILocation(line: 385, column: 8, scope: !4803)
!4832 = !DILocation(line: 386, column: 8, scope: !4803)
!4833 = !DILocation(line: 386, column: 11, scope: !4803)
!4834 = !DILocation(line: 387, column: 8, scope: !4803)
!4835 = !DILocation(line: 387, column: 27, scope: !4803)
!4836 = !DILocation(line: 387, column: 12, scope: !4803)
!4837 = !DILocation(line: 385, column: 8, scope: !4778)
!4838 = !DILocation(line: 391, column: 18, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 391, column: 12)
!4840 = !DILocation(line: 391, column: 12, scope: !4802)
!4841 = !DILocation(line: 395, column: 24, scope: !4801)
!4842 = !DILocation(line: 395, column: 15, scope: !4801)
!4843 = !DILocation(line: 395, column: 12, scope: !4802)
!4844 = !DILocation(line: 396, column: 13, scope: !4801)
!4845 = !DILocation(line: 396, column: 3, scope: !4801)
!4846 = !DILocation(line: 381, column: 55, scope: !4779)
!4847 = !DILocation(line: 381, column: 7, scope: !4779)
!4848 = distinct !{!4848, !4827, !4849}
!4849 = !DILocation(line: 398, column: 2, scope: !4780)
!4850 = !DILocation(line: 374, column: 37, scope: !4775)
!4851 = !DILocation(line: 374, column: 3, scope: !4775)
!4852 = distinct !{!4852, !4809, !4853}
!4853 = !DILocation(line: 399, column: 5, scope: !4776)
!4854 = !DILocation(line: 401, column: 8, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 401, column: 7)
!4856 = !DILocation(line: 401, column: 7, scope: !4752)
!4857 = !DILocation(line: 404, column: 9, scope: !4752)
!4858 = !DILocation(line: 405, column: 9, scope: !4752)
!4859 = !DILocation(line: 407, column: 9, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 407, column: 7)
!4861 = !DILocation(line: 407, column: 25, scope: !4860)
!4862 = !DILocation(line: 408, column: 2, scope: !4860)
!4863 = !DILocation(line: 408, column: 21, scope: !4860)
!4864 = !DILocation(line: 407, column: 7, scope: !4752)
!4865 = !DILocation(line: 412, column: 9, scope: !4752)
!4866 = !DILocation(line: 412, column: 22, scope: !4752)
!4867 = !DILocation(line: 412, column: 50, scope: !4752)
!4868 = !DILocation(line: 414, column: 7, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 414, column: 7)
!4870 = !DILocation(line: 414, column: 38, scope: !4869)
!4871 = !DILocation(line: 415, column: 7, scope: !4869)
!4872 = !DILocation(line: 415, column: 11, scope: !4869)
!4873 = !DILocation(line: 415, column: 31, scope: !4869)
!4874 = !DILocation(line: 415, column: 34, scope: !4869)
!4875 = !DILocation(line: 414, column: 7, scope: !4752)
!4876 = !DILocation(line: 416, column: 11, scope: !4869)
!4877 = !DILocation(line: 416, column: 5, scope: !4869)
!4878 = !DILocation(line: 420, column: 7, scope: !4783)
!4879 = !DILocation(line: 420, column: 15, scope: !4783)
!4880 = !DILocation(line: 420, column: 11, scope: !4783)
!4881 = !DILocation(line: 422, column: 29, scope: !4782)
!4882 = !DILocation(line: 0, scope: !4782)
!4883 = !DILocation(line: 423, column: 25, scope: !4782)
!4884 = !DILocation(line: 423, column: 53, scope: !4782)
!4885 = !DILocation(line: 424, column: 26, scope: !4782)
!4886 = !DILocation(line: 424, column: 46, scope: !4782)
!4887 = !DILocation(line: 425, column: 7, scope: !4782)
!4888 = !DILocation(line: 426, column: 7, scope: !4782)
!4889 = !DILocation(line: 427, column: 7, scope: !4782)
!4890 = !DILocation(line: 429, column: 21, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 429, column: 7)
!4892 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 429, column: 7)
!4893 = !DILocation(line: 429, column: 12, scope: !4892)
!4894 = !DILocation(line: 0, scope: !4892)
!4895 = !DILocation(line: 429, column: 7, scope: !4892)
!4896 = !DILocation(line: 430, column: 22, scope: !4891)
!4897 = !DILocation(line: 430, column: 2, scope: !4891)
!4898 = !DILocation(line: 429, column: 30, scope: !4891)
!4899 = !DILocation(line: 429, column: 7, scope: !4891)
!4900 = distinct !{!4900, !4895, !4901}
!4901 = !DILocation(line: 430, column: 28, scope: !4892)
!4902 = !DILocation(line: 433, column: 11, scope: !4782)
!4903 = !DILocation(line: 432, column: 7, scope: !4782)
!4904 = !DILocation(line: 434, column: 5, scope: !4782)
!4905 = !DILocation(line: 437, column: 9, scope: !4752)
!4906 = !DILocation(line: 436, column: 2, scope: !4752)
!4907 = !DILocation(line: 437, column: 3, scope: !4752)
!4908 = !DILocation(line: 438, column: 3, scope: !4752)
!4909 = !DILocation(line: 439, column: 1, scope: !4752)
!4910 = distinct !DISubprogram(name: "generate_loops_for_partition", scope: !3, file: !3, line: 178, type: !3584, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4911)
!4911 = !{!4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919}
!4912 = !DILocalVariable(name: "loop", arg: 1, scope: !4910, file: !3, line: 178, type: !747)
!4913 = !DILocalVariable(name: "partition", arg: 2, scope: !4910, file: !3, line: 178, type: !668)
!4914 = !DILocalVariable(name: "copy_p", arg: 3, scope: !4910, file: !3, line: 178, type: !660)
!4915 = !DILocalVariable(name: "i", scope: !4910, file: !3, line: 180, type: !7)
!4916 = !DILocalVariable(name: "x", scope: !4910, file: !3, line: 180, type: !7)
!4917 = !DILocalVariable(name: "bsi", scope: !4910, file: !3, line: 181, type: !4766)
!4918 = !DILocalVariable(name: "bbs", scope: !4910, file: !3, line: 182, type: !4761)
!4919 = !DILocalVariable(name: "bb", scope: !4920, file: !3, line: 201, type: !1186)
!4920 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 200, column: 5)
!4921 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 199, column: 3)
!4922 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 199, column: 3)
!4923 = !DILocation(line: 0, scope: !4910)
!4924 = !DILocation(line: 181, column: 3, scope: !4910)
!4925 = !DILocation(line: 184, column: 7, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 184, column: 7)
!4927 = !DILocation(line: 184, column: 7, scope: !4910)
!4928 = !DILocation(line: 186, column: 14, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 185, column: 5)
!4930 = !DILocation(line: 187, column: 7, scope: !4929)
!4931 = !DILocation(line: 188, column: 7, scope: !4929)
!4932 = !DILocation(line: 189, column: 5, scope: !4929)
!4933 = !DILocation(line: 191, column: 12, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 191, column: 7)
!4935 = !DILocation(line: 191, column: 7, scope: !4910)
!4936 = !DILocation(line: 197, column: 9, scope: !4910)
!4937 = !DILocation(line: 0, scope: !4921)
!4938 = !DILocation(line: 0, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 203, column: 7)
!4940 = !DILocation(line: 0, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 209, column: 7)
!4942 = !DILocation(line: 199, column: 8, scope: !4922)
!4943 = !DILocation(line: 0, scope: !4922)
!4944 = !DILocation(line: 199, column: 10, scope: !4922)
!4945 = !DILocation(line: 199, column: 32, scope: !4921)
!4946 = !DILocation(line: 199, column: 24, scope: !4921)
!4947 = !DILocation(line: 199, column: 3, scope: !4922)
!4948 = !DILocation(line: 201, column: 24, scope: !4920)
!4949 = !DILocation(line: 0, scope: !4920)
!4950 = !DILocation(line: 203, column: 18, scope: !4939)
!4951 = !DILocation(line: 203, column: 12, scope: !4939)
!4952 = !DILocation(line: 203, column: 40, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4939, file: !3, line: 203, column: 7)
!4954 = !DILocation(line: 203, column: 39, scope: !4953)
!4955 = !DILocation(line: 203, column: 7, scope: !4939)
!4956 = !DILocation(line: 204, column: 33, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 204, column: 6)
!4958 = !DILocation(line: 204, column: 7, scope: !4957)
!4959 = !DILocation(line: 204, column: 6, scope: !4953)
!4960 = !DILocation(line: 205, column: 4, scope: !4957)
!4961 = !DILocation(line: 207, column: 4, scope: !4957)
!4962 = !DILocation(line: 203, column: 7, scope: !4953)
!4963 = distinct !{!4963, !4955, !4964}
!4964 = !DILocation(line: 207, column: 18, scope: !4939)
!4965 = !DILocation(line: 209, column: 18, scope: !4941)
!4966 = !DILocation(line: 209, column: 12, scope: !4941)
!4967 = !DILocation(line: 209, column: 38, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 209, column: 7)
!4969 = !DILocation(line: 209, column: 37, scope: !4968)
!4970 = !DILocation(line: 209, column: 7, scope: !4941)
!4971 = !DILocation(line: 210, column: 19, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 210, column: 6)
!4973 = !DILocation(line: 210, column: 6, scope: !4972)
!4974 = !DILocation(line: 210, column: 35, scope: !4972)
!4975 = !DILocation(line: 211, column: 6, scope: !4972)
!4976 = !DILocation(line: 211, column: 36, scope: !4972)
!4977 = !DILocation(line: 211, column: 10, scope: !4972)
!4978 = !DILocation(line: 210, column: 6, scope: !4968)
!4979 = !DILocation(line: 212, column: 4, scope: !4972)
!4980 = !DILocation(line: 214, column: 4, scope: !4972)
!4981 = !DILocation(line: 209, column: 7, scope: !4968)
!4982 = distinct !{!4982, !4970, !4983}
!4983 = !DILocation(line: 214, column: 18, scope: !4941)
!4984 = !DILocation(line: 216, column: 2, scope: !4920)
!4985 = !DILocation(line: 199, column: 44, scope: !4921)
!4986 = !DILocation(line: 199, column: 3, scope: !4921)
!4987 = distinct !{!4987, !4947, !4988}
!4988 = !DILocation(line: 217, column: 5, scope: !4922)
!4989 = !DILocation(line: 219, column: 9, scope: !4910)
!4990 = !DILocation(line: 219, column: 3, scope: !4910)
!4991 = !DILocation(line: 220, column: 3, scope: !4910)
!4992 = !DILocation(line: 221, column: 1, scope: !4910)
!4993 = distinct !DISubprogram(name: "gsi_end_p", scope: !581, file: !581, line: 4467, type: !4994, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4996)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!660, !4766}
!4996 = !{!4997}
!4997 = !DILocalVariable(name: "i", arg: 1, scope: !4993, file: !581, line: 4467, type: !4766)
!4998 = !DILocation(line: 4467, column: 33, scope: !4993)
!4999 = !DILocation(line: 4469, column: 12, scope: !4993)
!5000 = !DILocation(line: 4469, column: 16, scope: !4993)
!5001 = !DILocation(line: 4469, column: 10, scope: !4993)
!5002 = !DILocation(line: 4469, column: 3, scope: !4993)
!5003 = distinct !DISubprogram(name: "gsi_next", scope: !581, file: !581, line: 4485, type: !5004, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5007)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{null, !5006}
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!5007 = !{!5008}
!5008 = !DILocalVariable(name: "i", arg: 1, scope: !5003, file: !581, line: 4485, type: !5006)
!5009 = !DILocation(line: 0, scope: !5003)
!5010 = !DILocation(line: 4487, column: 15, scope: !5003)
!5011 = !DILocation(line: 4487, column: 20, scope: !5003)
!5012 = !DILocation(line: 4487, column: 10, scope: !5003)
!5013 = !DILocation(line: 4488, column: 1, scope: !5003)
!5014 = distinct !DISubprogram(name: "gsi_start_bb", scope: !581, file: !581, line: 4418, type: !5015, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5017)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!4766, !1186}
!5017 = !{!5018, !5019, !5020}
!5018 = !DILocalVariable(name: "bb", arg: 1, scope: !5014, file: !581, line: 4418, type: !1186)
!5019 = !DILocalVariable(name: "i", scope: !5014, file: !581, line: 4420, type: !4766)
!5020 = !DILocalVariable(name: "seq", scope: !5014, file: !581, line: 4421, type: !779)
!5021 = !DILocation(line: 0, scope: !5014)
!5022 = !DILocation(line: 4420, column: 24, scope: !5014)
!5023 = !DILocation(line: 4423, column: 9, scope: !5014)
!5024 = !DILocation(line: 4424, column: 11, scope: !5014)
!5025 = !DILocation(line: 4424, column: 5, scope: !5014)
!5026 = !DILocation(line: 4424, column: 9, scope: !5014)
!5027 = !DILocation(line: 4425, column: 5, scope: !5014)
!5028 = !DILocation(line: 4425, column: 9, scope: !5014)
!5029 = !DILocation(line: 4426, column: 5, scope: !5014)
!5030 = !DILocation(line: 4426, column: 8, scope: !5014)
!5031 = !DILocation(line: 4429, column: 1, scope: !5014)
!5032 = distinct !DISubprogram(name: "gsi_stmt", scope: !581, file: !581, line: 4501, type: !5033, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5035)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!789, !4766}
!5035 = !{!5036}
!5036 = !DILocalVariable(name: "i", arg: 1, scope: !5032, file: !581, line: 4501, type: !4766)
!5037 = !DILocation(line: 4501, column: 32, scope: !5032)
!5038 = !DILocation(line: 4503, column: 12, scope: !5032)
!5039 = !DILocation(line: 4503, column: 17, scope: !5032)
!5040 = !DILocation(line: 4503, column: 3, scope: !5032)
!5041 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !581, file: !581, line: 1727, type: !4214, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5042)
!5042 = !{!5043}
!5043 = !DILocalVariable(name: "gs", arg: 1, scope: !5041, file: !581, line: 1727, type: !4159)
!5044 = !DILocation(line: 0, scope: !5041)
!5045 = !DILocation(line: 1730, column: 10, scope: !5041)
!5046 = !DILocation(line: 1730, column: 3, scope: !5041)
!5047 = distinct !DISubprogram(name: "gsi_last_bb", scope: !581, file: !581, line: 4450, type: !5015, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5048)
!5048 = !{!5049, !5050, !5051}
!5049 = !DILocalVariable(name: "bb", arg: 1, scope: !5047, file: !581, line: 4450, type: !1186)
!5050 = !DILocalVariable(name: "i", scope: !5047, file: !581, line: 4452, type: !4766)
!5051 = !DILocalVariable(name: "seq", scope: !5047, file: !581, line: 4453, type: !779)
!5052 = !DILocation(line: 0, scope: !5047)
!5053 = !DILocation(line: 4452, column: 24, scope: !5047)
!5054 = !DILocation(line: 4455, column: 9, scope: !5047)
!5055 = !DILocation(line: 4456, column: 11, scope: !5047)
!5056 = !DILocation(line: 4456, column: 5, scope: !5047)
!5057 = !DILocation(line: 4456, column: 9, scope: !5047)
!5058 = !DILocation(line: 4457, column: 5, scope: !5047)
!5059 = !DILocation(line: 4457, column: 9, scope: !5047)
!5060 = !DILocation(line: 4458, column: 5, scope: !5047)
!5061 = !DILocation(line: 4458, column: 8, scope: !5047)
!5062 = !DILocation(line: 4461, column: 1, scope: !5047)
!5063 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !581, file: !581, line: 1815, type: !5064, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5066)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{!366, !4159}
!5066 = !{!5067, !5068}
!5067 = !DILocalVariable(name: "gs", arg: 1, scope: !5063, file: !581, line: 1815, type: !4159)
!5068 = !DILocalVariable(name: "code", scope: !5063, file: !581, line: 1817, type: !366)
!5069 = !DILocation(line: 0, scope: !5063)
!5070 = !DILocation(line: 1820, column: 10, scope: !5063)
!5071 = !DILocation(line: 1821, column: 7, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5063, file: !581, line: 1821, column: 7)
!5073 = !DILocation(line: 1821, column: 35, scope: !5072)
!5074 = !DILocation(line: 1821, column: 7, scope: !5063)
!5075 = !DILocation(line: 1822, column: 12, scope: !5072)
!5076 = !DILocation(line: 1822, column: 5, scope: !5072)
!5077 = !DILocation(line: 1824, column: 3, scope: !5063)
!5078 = distinct !DISubprogram(name: "generate_memset_zero", scope: !3, file: !3, line: 245, type: !5079, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5081)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!660, !789, !814, !814, !4766}
!5081 = !{!5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5101}
!5082 = !DILocalVariable(name: "stmt", arg: 1, scope: !5078, file: !3, line: 245, type: !789)
!5083 = !DILocalVariable(name: "op0", arg: 2, scope: !5078, file: !3, line: 245, type: !814)
!5084 = !DILocalVariable(name: "nb_iter", arg: 3, scope: !5078, file: !3, line: 245, type: !814)
!5085 = !DILocalVariable(name: "bsi", arg: 4, scope: !5078, file: !3, line: 246, type: !4766)
!5086 = !DILocalVariable(name: "addr_base", scope: !5078, file: !3, line: 248, type: !814)
!5087 = !DILocalVariable(name: "nb_bytes", scope: !5078, file: !3, line: 248, type: !814)
!5088 = !DILocalVariable(name: "res", scope: !5078, file: !3, line: 249, type: !660)
!5089 = !DILocalVariable(name: "stmt_list", scope: !5078, file: !3, line: 250, type: !779)
!5090 = !DILocalVariable(name: "stmts", scope: !5078, file: !3, line: 250, type: !779)
!5091 = !DILocalVariable(name: "fn_call", scope: !5078, file: !3, line: 251, type: !789)
!5092 = !DILocalVariable(name: "mem", scope: !5078, file: !3, line: 252, type: !814)
!5093 = !DILocalVariable(name: "fn", scope: !5078, file: !3, line: 252, type: !814)
!5094 = !DILocalVariable(name: "i", scope: !5078, file: !3, line: 253, type: !4766)
!5095 = !DILocalVariable(name: "dr", scope: !5078, file: !3, line: 254, type: !2085)
!5096 = !DILocalVariable(name: "loc", scope: !5078, file: !3, line: 255, type: !807)
!5097 = !DILocalVariable(name: "s", scope: !5098, file: !3, line: 307, type: !789)
!5098 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 306, column: 5)
!5099 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 305, column: 3)
!5100 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 305, column: 3)
!5101 = !DILabel(scope: !5078, name: "end", file: !3, line: 317)
!5102 = !DILocation(line: 0, scope: !5078)
!5103 = !DILocation(line: 246, column: 30, scope: !5078)
!5104 = !DILocation(line: 250, column: 3, scope: !5078)
!5105 = !DILocation(line: 250, column: 14, scope: !5078)
!5106 = !DILocation(line: 253, column: 3, scope: !5078)
!5107 = !DILocation(line: 254, column: 31, scope: !5078)
!5108 = !DILocation(line: 255, column: 20, scope: !5078)
!5109 = !DILocation(line: 257, column: 3, scope: !5078)
!5110 = !DILocation(line: 257, column: 16, scope: !5078)
!5111 = !DILocation(line: 258, column: 3, scope: !5078)
!5112 = !DILocation(line: 258, column: 15, scope: !5078)
!5113 = !DILocation(line: 259, column: 8, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 259, column: 7)
!5115 = !DILocation(line: 259, column: 7, scope: !5078)
!5116 = !DILocation(line: 263, column: 22, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 263, column: 7)
!5118 = !DILocation(line: 263, column: 7, scope: !5117)
!5119 = !DILocation(line: 263, column: 7, scope: !5078)
!5120 = !DILocation(line: 267, column: 42, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 266, column: 5)
!5122 = !DILocation(line: 269, column: 11, scope: !5121)
!5123 = !DILocation(line: 270, column: 11, scope: !5121)
!5124 = !DILocation(line: 268, column: 9, scope: !5121)
!5125 = !DILocation(line: 267, column: 19, scope: !5121)
!5126 = !DILocation(line: 271, column: 19, scope: !5121)
!5127 = !DILocation(line: 275, column: 18, scope: !5121)
!5128 = !DILocation(line: 276, column: 5, scope: !5121)
!5129 = !DILocation(line: 279, column: 27, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 279, column: 12)
!5131 = !DILocation(line: 279, column: 12, scope: !5130)
!5132 = !DILocation(line: 279, column: 12, scope: !5117)
!5133 = !DILocation(line: 283, column: 18, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 282, column: 5)
!5135 = !DILocation(line: 285, column: 51, scope: !5134)
!5136 = !DILocation(line: 285, column: 67, scope: !5134)
!5137 = !DILocation(line: 285, column: 19, scope: !5134)
!5138 = !DILocation(line: 286, column: 42, scope: !5134)
!5139 = !DILocation(line: 286, column: 19, scope: !5134)
!5140 = !DILocation(line: 288, column: 30, scope: !5134)
!5141 = !DILocation(line: 288, column: 7, scope: !5134)
!5142 = !DILocation(line: 287, column: 19, scope: !5134)
!5143 = !DILocation(line: 290, column: 7, scope: !5134)
!5144 = !DILocation(line: 289, column: 19, scope: !5134)
!5145 = !DILocation(line: 291, column: 19, scope: !5134)
!5146 = !DILocation(line: 0, scope: !5117)
!5147 = !DILocation(line: 298, column: 9, scope: !5078)
!5148 = !DILocation(line: 299, column: 35, scope: !5078)
!5149 = !DILocation(line: 299, column: 3, scope: !5078)
!5150 = !DILocation(line: 301, column: 8, scope: !5078)
!5151 = !DILocation(line: 302, column: 44, scope: !5078)
!5152 = !DILocation(line: 302, column: 13, scope: !5078)
!5153 = !DILocation(line: 303, column: 3, scope: !5078)
!5154 = !DILocation(line: 305, column: 12, scope: !5100)
!5155 = !DILocation(line: 305, column: 23, scope: !5100)
!5156 = !DILocation(line: 305, column: 8, scope: !5100)
!5157 = !DILocation(line: 305, column: 36, scope: !5099)
!5158 = !DILocation(line: 305, column: 35, scope: !5099)
!5159 = !DILocation(line: 305, column: 3, scope: !5100)
!5160 = !DILocation(line: 307, column: 18, scope: !5098)
!5161 = !DILocation(line: 0, scope: !5098)
!5162 = !DILocation(line: 308, column: 7, scope: !5098)
!5163 = !DILocation(line: 305, column: 51, scope: !5099)
!5164 = !DILocation(line: 305, column: 3, scope: !5099)
!5165 = distinct !{!5165, !5159, !5166}
!5166 = !DILocation(line: 309, column: 5, scope: !5100)
!5167 = !DILocation(line: 311, column: 31, scope: !5078)
!5168 = !DILocation(line: 311, column: 3, scope: !5078)
!5169 = !DILocation(line: 314, column: 7, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 314, column: 7)
!5171 = !DILocation(line: 314, column: 17, scope: !5170)
!5172 = !DILocation(line: 314, column: 21, scope: !5170)
!5173 = !DILocation(line: 314, column: 32, scope: !5170)
!5174 = !DILocation(line: 314, column: 7, scope: !5078)
!5175 = !DILocation(line: 315, column: 5, scope: !5170)
!5176 = !DILocation(line: 317, column: 2, scope: !5078)
!5177 = !DILocation(line: 318, column: 3, scope: !5078)
!5178 = !DILocation(line: 320, column: 1, scope: !5078)
!5179 = !DILocation(line: 319, column: 3, scope: !5078)
!5180 = distinct !DISubprogram(name: "prop_phis", scope: !3, file: !3, line: 325, type: !5181, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5183)
!5181 = !DISubroutineType(types: !5182)
!5182 = !{null, !1186}
!5183 = !{!5184, !5185, !5186, !5187, !5191, !5192, !5193, !5196, !5197}
!5184 = !DILocalVariable(name: "b", arg: 1, scope: !5180, file: !3, line: 325, type: !1186)
!5185 = !DILocalVariable(name: "psi", scope: !5180, file: !3, line: 327, type: !4766)
!5186 = !DILocalVariable(name: "phis", scope: !5180, file: !3, line: 328, type: !779)
!5187 = !DILocalVariable(name: "phi", scope: !5188, file: !3, line: 332, type: !789)
!5188 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 331, column: 5)
!5189 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 330, column: 3)
!5190 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 330, column: 3)
!5191 = !DILocalVariable(name: "def", scope: !5188, file: !3, line: 333, type: !814)
!5192 = !DILocalVariable(name: "use", scope: !5188, file: !3, line: 333, type: !814)
!5193 = !DILocalVariable(name: "iter", scope: !5194, file: !3, line: 339, type: !4059)
!5194 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 338, column: 2)
!5195 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 337, column: 11)
!5196 = !DILocalVariable(name: "use_p", scope: !5194, file: !3, line: 340, type: !2187)
!5197 = !DILocalVariable(name: "stmt", scope: !5194, file: !3, line: 341, type: !789)
!5198 = !DILocation(line: 0, scope: !5180)
!5199 = !DILocation(line: 327, column: 3, scope: !5180)
!5200 = !DILocation(line: 328, column: 21, scope: !5180)
!5201 = !DILocation(line: 330, column: 14, scope: !5190)
!5202 = !DILocation(line: 0, scope: !5194)
!5203 = !DILocation(line: 330, column: 8, scope: !5190)
!5204 = !DILocation(line: 330, column: 33, scope: !5189)
!5205 = !DILocation(line: 330, column: 32, scope: !5189)
!5206 = !DILocation(line: 330, column: 3, scope: !5190)
!5207 = !DILocation(line: 332, column: 20, scope: !5188)
!5208 = !DILocation(line: 0, scope: !5188)
!5209 = !DILocation(line: 333, column: 18, scope: !5188)
!5210 = !DILocation(line: 333, column: 49, scope: !5188)
!5211 = !DILocation(line: 335, column: 7, scope: !5188)
!5212 = !DILocation(line: 337, column: 12, scope: !5195)
!5213 = !DILocation(line: 337, column: 11, scope: !5188)
!5214 = !DILocation(line: 339, column: 4, scope: !5194)
!5215 = !DILocation(line: 343, column: 4, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5194, file: !3, line: 343, column: 4)
!5217 = !DILocation(line: 343, column: 4, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 343, column: 4)
!5219 = !DILocation(line: 344, column: 6, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 344, column: 6)
!5221 = !DILocation(line: 0, scope: !5220)
!5222 = !DILocation(line: 344, column: 6, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 344, column: 6)
!5224 = !DILocation(line: 345, column: 8, scope: !5223)
!5225 = distinct !{!5225, !5219, !5226}
!5226 = !DILocation(line: 345, column: 8, scope: !5220)
!5227 = distinct !{!5227, !5215, !5228}
!5228 = !DILocation(line: 345, column: 8, scope: !5216)
!5229 = !DILocation(line: 346, column: 2, scope: !5195)
!5230 = !DILocation(line: 346, column: 2, scope: !5194)
!5231 = !DILocation(line: 348, column: 2, scope: !5195)
!5232 = !DILocation(line: 350, column: 7, scope: !5188)
!5233 = !DILocation(line: 330, column: 3, scope: !5189)
!5234 = distinct !{!5234, !5206, !5235}
!5235 = !DILocation(line: 351, column: 5, scope: !5190)
!5236 = !DILocation(line: 352, column: 1, scope: !5180)
!5237 = distinct !DISubprogram(name: "bb_seq", scope: !581, file: !581, line: 237, type: !5238, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5243)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!779, !5240}
!5240 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !669, line: 112, baseType: !5241)
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!5243 = !{!5244}
!5244 = !DILocalVariable(name: "bb", arg: 1, scope: !5237, file: !581, line: 237, type: !5240)
!5245 = !DILocation(line: 0, scope: !5237)
!5246 = !DILocation(line: 239, column: 17, scope: !5237)
!5247 = !DILocation(line: 239, column: 23, scope: !5237)
!5248 = !DILocation(line: 239, column: 33, scope: !5237)
!5249 = !DILocation(line: 239, column: 43, scope: !5237)
!5250 = !DILocation(line: 239, column: 36, scope: !5237)
!5251 = !DILocation(line: 239, column: 10, scope: !5237)
!5252 = !DILocation(line: 239, column: 68, scope: !5237)
!5253 = !DILocation(line: 239, column: 3, scope: !5237)
!5254 = distinct !DISubprogram(name: "gimple_seq_first", scope: !581, file: !581, line: 159, type: !5255, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5260)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!784, !5257}
!5257 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !669, line: 67, baseType: !5258)
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!5260 = !{!5261}
!5261 = !DILocalVariable(name: "s", arg: 1, scope: !5254, file: !581, line: 159, type: !5257)
!5262 = !DILocation(line: 0, scope: !5254)
!5263 = !DILocation(line: 161, column: 10, scope: !5254)
!5264 = !DILocation(line: 161, column: 17, scope: !5254)
!5265 = !DILocation(line: 161, column: 3, scope: !5254)
!5266 = distinct !DISubprogram(name: "gimple_seq_last", scope: !581, file: !581, line: 178, type: !5255, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5267)
!5267 = !{!5268}
!5268 = !DILocalVariable(name: "s", arg: 1, scope: !5266, file: !581, line: 178, type: !5257)
!5269 = !DILocation(line: 0, scope: !5266)
!5270 = !DILocation(line: 180, column: 10, scope: !5266)
!5271 = !DILocation(line: 180, column: 17, scope: !5266)
!5272 = !DILocation(line: 180, column: 3, scope: !5266)
!5273 = distinct !DISubprogram(name: "gimple_expr_code", scope: !581, file: !581, line: 1438, type: !5064, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5274)
!5274 = !{!5275, !5276}
!5275 = !DILocalVariable(name: "stmt", arg: 1, scope: !5273, file: !581, line: 1438, type: !4159)
!5276 = !DILocalVariable(name: "code", scope: !5273, file: !581, line: 1440, type: !580)
!5277 = !DILocation(line: 0, scope: !5273)
!5278 = !DILocation(line: 1440, column: 27, scope: !5273)
!5279 = !DILocation(line: 1441, column: 29, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5273, file: !581, line: 1441, column: 7)
!5281 = !DILocation(line: 1442, column: 42, scope: !5280)
!5282 = !DILocation(line: 1442, column: 5, scope: !5280)
!5283 = !DILocation(line: 1446, column: 5, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5280, file: !581, line: 1443, column: 12)
!5285 = !DILocation(line: 1448, column: 5, scope: !5273)
!5286 = !DILocation(line: 1450, column: 1, scope: !5273)
!5287 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !581, file: !581, line: 1686, type: !5288, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5290)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!645, !366}
!5290 = !{!5291}
!5291 = !DILocalVariable(name: "code", arg: 1, scope: !5287, file: !581, line: 1686, type: !366)
!5292 = !DILocation(line: 0, scope: !5287)
!5293 = !DILocation(line: 1688, column: 34, scope: !5287)
!5294 = !DILocation(line: 1688, column: 10, scope: !5287)
!5295 = !DILocation(line: 1688, column: 3, scope: !5287)
!5296 = distinct !DISubprogram(name: "gimple_location", scope: !581, file: !581, line: 1139, type: !5297, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5299)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{!807, !4159}
!5299 = !{!5300}
!5300 = !DILocalVariable(name: "g", arg: 1, scope: !5296, file: !581, line: 1139, type: !4159)
!5301 = !DILocation(line: 0, scope: !5296)
!5302 = !DILocation(line: 1141, column: 20, scope: !5296)
!5303 = !DILocation(line: 1141, column: 3, scope: !5296)
!5304 = distinct !DISubprogram(name: "build_size_arg_loc", scope: !3, file: !3, line: 226, type: !5305, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5308)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!814, !807, !814, !814, !5307}
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!5308 = !{!5309, !5310, !5311, !5312, !5313, !5314}
!5309 = !DILocalVariable(name: "loc", arg: 1, scope: !5304, file: !3, line: 226, type: !807)
!5310 = !DILocalVariable(name: "nb_iter", arg: 2, scope: !5304, file: !3, line: 226, type: !814)
!5311 = !DILocalVariable(name: "op", arg: 3, scope: !5304, file: !3, line: 226, type: !814)
!5312 = !DILocalVariable(name: "stmt_list", arg: 4, scope: !5304, file: !3, line: 227, type: !5307)
!5313 = !DILocalVariable(name: "stmts", scope: !5304, file: !3, line: 229, type: !779)
!5314 = !DILocalVariable(name: "x", scope: !5304, file: !3, line: 230, type: !814)
!5315 = !DILocation(line: 0, scope: !5304)
!5316 = !DILocation(line: 229, column: 3, scope: !5304)
!5317 = !DILocation(line: 232, column: 7, scope: !5304)
!5318 = !DILocation(line: 236, column: 7, scope: !5304)
!5319 = !DILocation(line: 237, column: 34, scope: !5304)
!5320 = !DILocation(line: 237, column: 3, scope: !5304)
!5321 = !DILocation(line: 240, column: 1, scope: !5304)
!5322 = !DILocation(line: 239, column: 3, scope: !5304)
!5323 = distinct !DISubprogram(name: "gsi_start", scope: !581, file: !581, line: 4403, type: !5324, scopeLine: 4404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5326)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{!4766, !779}
!5326 = !{!5327, !5328}
!5327 = !DILocalVariable(name: "seq", arg: 1, scope: !5323, file: !581, line: 4403, type: !779)
!5328 = !DILocalVariable(name: "i", scope: !5323, file: !581, line: 4405, type: !4766)
!5329 = !DILocation(line: 0, scope: !5323)
!5330 = !DILocation(line: 4405, column: 24, scope: !5323)
!5331 = !DILocation(line: 4407, column: 11, scope: !5323)
!5332 = !DILocation(line: 4407, column: 5, scope: !5323)
!5333 = !DILocation(line: 4407, column: 9, scope: !5323)
!5334 = !DILocation(line: 4408, column: 5, scope: !5323)
!5335 = !DILocation(line: 4408, column: 9, scope: !5323)
!5336 = !DILocation(line: 4409, column: 11, scope: !5323)
!5337 = !DILocation(line: 4409, column: 17, scope: !5323)
!5338 = !DILocation(line: 4409, column: 27, scope: !5323)
!5339 = !DILocation(line: 4409, column: 20, scope: !5323)
!5340 = !DILocation(line: 4409, column: 10, scope: !5323)
!5341 = !DILocation(line: 4409, column: 35, scope: !5323)
!5342 = !DILocation(line: 4409, column: 5, scope: !5323)
!5343 = !DILocation(line: 4409, column: 8, scope: !5323)
!5344 = !DILocation(line: 4411, column: 3, scope: !5323)
!5345 = distinct !DISubprogram(name: "update_stmt_if_modified", scope: !581, file: !581, line: 1468, type: !5346, scopeLine: 1469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5348)
!5346 = !DISubroutineType(types: !5347)
!5347 = !{null, !789}
!5348 = !{!5349}
!5349 = !DILocalVariable(name: "s", arg: 1, scope: !5345, file: !581, line: 1468, type: !789)
!5350 = !DILocation(line: 0, scope: !5345)
!5351 = !DILocation(line: 1470, column: 7, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5345, file: !581, line: 1470, column: 7)
!5353 = !DILocation(line: 1470, column: 7, scope: !5345)
!5354 = !DILocation(line: 1471, column: 5, scope: !5352)
!5355 = !DILocation(line: 1472, column: 1, scope: !5345)
!5356 = distinct !DISubprogram(name: "gimple_modified_p", scope: !581, file: !581, line: 1425, type: !4196, scopeLine: 1426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5357)
!5357 = !{!5358}
!5358 = !DILocalVariable(name: "g", arg: 1, scope: !5356, file: !581, line: 1425, type: !4159)
!5359 = !DILocation(line: 0, scope: !5356)
!5360 = !DILocation(line: 1427, column: 11, scope: !5356)
!5361 = !DILocation(line: 1427, column: 10, scope: !5356)
!5362 = !DILocation(line: 1427, column: 50, scope: !5356)
!5363 = !DILocation(line: 1427, column: 33, scope: !5356)
!5364 = !DILocation(line: 1427, column: 3, scope: !5356)
!5365 = distinct !DISubprogram(name: "phi_nodes", scope: !4186, file: !4186, line: 508, type: !5238, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5366)
!5366 = !{!5367}
!5367 = !DILocalVariable(name: "bb", arg: 1, scope: !5365, file: !4186, line: 508, type: !5240)
!5368 = !DILocation(line: 0, scope: !5365)
!5369 = !DILocation(line: 510, column: 3, scope: !5365)
!5370 = !DILocation(line: 511, column: 15, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5365, file: !4186, line: 511, column: 7)
!5372 = !DILocation(line: 511, column: 8, scope: !5371)
!5373 = !DILocation(line: 511, column: 7, scope: !5365)
!5374 = !DILocation(line: 513, column: 25, scope: !5365)
!5375 = !DILocation(line: 513, column: 3, scope: !5365)
!5376 = !DILocation(line: 514, column: 1, scope: !5365)
!5377 = distinct !DISubprogram(name: "gimple_phi_result", scope: !581, file: !581, line: 3071, type: !4214, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5378)
!5378 = !{!5379}
!5379 = !DILocalVariable(name: "gs", arg: 1, scope: !5377, file: !581, line: 3071, type: !4159)
!5380 = !DILocation(line: 0, scope: !5377)
!5381 = !DILocation(line: 3074, column: 25, scope: !5377)
!5382 = !DILocation(line: 3074, column: 3, scope: !5377)
!5383 = distinct !DISubprogram(name: "gimple_phi_arg_def", scope: !4186, file: !4186, line: 450, type: !5384, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5386)
!5384 = !DISubroutineType(types: !5385)
!5385 = !{!814, !789, !1244}
!5386 = !{!5387, !5388, !5389}
!5387 = !DILocalVariable(name: "gs", arg: 1, scope: !5383, file: !4186, line: 450, type: !789)
!5388 = !DILocalVariable(name: "index", arg: 2, scope: !5383, file: !4186, line: 450, type: !1244)
!5389 = !DILocalVariable(name: "pd", scope: !5383, file: !4186, line: 452, type: !5390)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!5391 = !DILocation(line: 0, scope: !5383)
!5392 = !DILocation(line: 452, column: 26, scope: !5383)
!5393 = !DILocation(line: 453, column: 33, scope: !5383)
!5394 = !DILocation(line: 453, column: 10, scope: !5383)
!5395 = !DILocation(line: 453, column: 3, scope: !5383)
!5396 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !581, file: !581, line: 3061, type: !5397, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5399)
!5397 = !DISubroutineType(types: !5398)
!5398 = !{!7, !4159}
!5399 = !{!5400}
!5400 = !DILocalVariable(name: "gs", arg: 1, scope: !5396, file: !581, line: 3061, type: !4159)
!5401 = !DILocation(line: 0, scope: !5396)
!5402 = !DILocation(line: 3064, column: 25, scope: !5396)
!5403 = !DILocation(line: 3064, column: 3, scope: !5396)
!5404 = distinct !DISubprogram(name: "first_imm_use_stmt", scope: !4186, file: !4186, line: 1058, type: !5405, scopeLine: 1059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5407)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{!789, !4224, !814}
!5407 = !{!5408, !5409}
!5408 = !DILocalVariable(name: "imm", arg: 1, scope: !5404, file: !4186, line: 1058, type: !4224)
!5409 = !DILocalVariable(name: "var", arg: 2, scope: !5404, file: !4186, line: 1058, type: !814)
!5410 = !DILocation(line: 0, scope: !5404)
!5411 = !DILocation(line: 1060, column: 18, scope: !5404)
!5412 = !DILocation(line: 1060, column: 8, scope: !5404)
!5413 = !DILocation(line: 1060, column: 14, scope: !5404)
!5414 = !DILocation(line: 1061, column: 30, scope: !5404)
!5415 = !DILocation(line: 1061, column: 16, scope: !5404)
!5416 = !DILocation(line: 1062, column: 8, scope: !5404)
!5417 = !DILocation(line: 1062, column: 22, scope: !5404)
!5418 = !DILocation(line: 1067, column: 18, scope: !5404)
!5419 = !DILocation(line: 1067, column: 23, scope: !5404)
!5420 = !DILocation(line: 1068, column: 18, scope: !5404)
!5421 = !DILocation(line: 1068, column: 23, scope: !5404)
!5422 = !DILocation(line: 1069, column: 22, scope: !5404)
!5423 = !DILocation(line: 1069, column: 27, scope: !5404)
!5424 = !DILocation(line: 1070, column: 18, scope: !5404)
!5425 = !DILocation(line: 1070, column: 22, scope: !5404)
!5426 = !DILocation(line: 1072, column: 7, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5404, file: !4186, line: 1072, column: 7)
!5428 = !DILocation(line: 1072, column: 7, scope: !5404)
!5429 = !DILocation(line: 1075, column: 30, scope: !5404)
!5430 = !DILocation(line: 1075, column: 3, scope: !5404)
!5431 = !DILocation(line: 1077, column: 10, scope: !5404)
!5432 = !DILocation(line: 1077, column: 3, scope: !5404)
!5433 = !DILocation(line: 1078, column: 1, scope: !5404)
!5434 = distinct !DISubprogram(name: "end_imm_use_stmt_p", scope: !4186, file: !4186, line: 969, type: !4241, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5435)
!5435 = !{!5436}
!5436 = !DILocalVariable(name: "imm", arg: 1, scope: !5434, file: !4186, line: 969, type: !4243)
!5437 = !DILocation(line: 0, scope: !5434)
!5438 = !DILocation(line: 971, column: 16, scope: !5434)
!5439 = !DILocation(line: 971, column: 32, scope: !5434)
!5440 = !DILocation(line: 971, column: 24, scope: !5434)
!5441 = !DILocation(line: 971, column: 10, scope: !5434)
!5442 = !DILocation(line: 971, column: 3, scope: !5434)
!5443 = distinct !DISubprogram(name: "first_imm_use_on_stmt", scope: !4186, file: !4186, line: 1101, type: !4254, scopeLine: 1102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5444)
!5444 = !{!5445}
!5445 = !DILocalVariable(name: "imm", arg: 1, scope: !5443, file: !4186, line: 1101, type: !4224)
!5446 = !DILocation(line: 0, scope: !5443)
!5447 = !DILocation(line: 1103, column: 29, scope: !5443)
!5448 = !DILocation(line: 1103, column: 38, scope: !5443)
!5449 = !DILocation(line: 1103, column: 8, scope: !5443)
!5450 = !DILocation(line: 1103, column: 22, scope: !5443)
!5451 = !DILocation(line: 1104, column: 3, scope: !5443)
!5452 = distinct !DISubprogram(name: "end_imm_use_on_stmt_p", scope: !4186, file: !4186, line: 1110, type: !4241, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5453)
!5453 = !{!5454}
!5454 = !DILocalVariable(name: "imm", arg: 1, scope: !5452, file: !4186, line: 1110, type: !4243)
!5455 = !DILocation(line: 0, scope: !5452)
!5456 = !DILocation(line: 1112, column: 16, scope: !5452)
!5457 = !DILocation(line: 1112, column: 34, scope: !5452)
!5458 = !DILocation(line: 1112, column: 24, scope: !5452)
!5459 = !DILocation(line: 1112, column: 10, scope: !5452)
!5460 = !DILocation(line: 1112, column: 3, scope: !5452)
!5461 = distinct !DISubprogram(name: "set_ssa_use_from_ptr", scope: !4186, file: !4186, line: 233, type: !5462, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5464)
!5462 = !DISubroutineType(types: !5463)
!5463 = !{null, !2187, !814}
!5464 = !{!5465, !5466}
!5465 = !DILocalVariable(name: "use", arg: 1, scope: !5461, file: !4186, line: 233, type: !2187)
!5466 = !DILocalVariable(name: "val", arg: 2, scope: !5461, file: !4186, line: 233, type: !814)
!5467 = !DILocation(line: 0, scope: !5461)
!5468 = !DILocation(line: 235, column: 3, scope: !5461)
!5469 = !DILocation(line: 236, column: 10, scope: !5461)
!5470 = !DILocation(line: 236, column: 15, scope: !5461)
!5471 = !DILocation(line: 237, column: 3, scope: !5461)
!5472 = !DILocation(line: 238, column: 1, scope: !5461)
!5473 = distinct !DISubprogram(name: "next_imm_use_on_stmt", scope: !4186, file: !4186, line: 1118, type: !4254, scopeLine: 1119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5474)
!5474 = !{!5475}
!5475 = !DILocalVariable(name: "imm", arg: 1, scope: !5473, file: !4186, line: 1118, type: !4224)
!5476 = !DILocation(line: 0, scope: !5473)
!5477 = !DILocation(line: 1120, column: 23, scope: !5473)
!5478 = !DILocation(line: 1120, column: 16, scope: !5473)
!5479 = !DILocation(line: 1121, column: 7, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5473, file: !4186, line: 1121, column: 7)
!5481 = !DILocation(line: 1121, column: 7, scope: !5473)
!5482 = !DILocation(line: 1125, column: 33, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5480, file: !4186, line: 1124, column: 5)
!5484 = !DILocation(line: 1125, column: 42, scope: !5483)
!5485 = !DILocation(line: 1125, column: 26, scope: !5483)
!5486 = !DILocation(line: 1126, column: 7, scope: !5483)
!5487 = !DILocation(line: 0, scope: !5480)
!5488 = !DILocation(line: 1128, column: 1, scope: !5473)
!5489 = distinct !DISubprogram(name: "next_imm_use_stmt", scope: !4186, file: !4186, line: 1083, type: !5490, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5492)
!5490 = !DISubroutineType(types: !5491)
!5491 = !{!789, !4224}
!5492 = !{!5493}
!5493 = !DILocalVariable(name: "imm", arg: 1, scope: !5489, file: !4186, line: 1083, type: !4224)
!5494 = !DILocation(line: 0, scope: !5489)
!5495 = !DILocation(line: 1085, column: 33, scope: !5489)
!5496 = !DILocation(line: 1085, column: 16, scope: !5489)
!5497 = !DILocation(line: 1086, column: 7, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5489, file: !4186, line: 1086, column: 7)
!5499 = !DILocation(line: 1086, column: 7, scope: !5489)
!5500 = !DILocation(line: 1088, column: 26, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5502, file: !4186, line: 1088, column: 11)
!5502 = distinct !DILexicalBlock(scope: !5498, file: !4186, line: 1087, column: 5)
!5503 = !DILocation(line: 1088, column: 31, scope: !5501)
!5504 = !DILocation(line: 1088, column: 11, scope: !5502)
!5505 = !DILocation(line: 1089, column: 24, scope: !5501)
!5506 = !DILocation(line: 1089, column: 2, scope: !5501)
!5507 = !DILocation(line: 1093, column: 30, scope: !5489)
!5508 = !DILocation(line: 1093, column: 3, scope: !5489)
!5509 = !DILocation(line: 1094, column: 10, scope: !5489)
!5510 = !DILocation(line: 1094, column: 3, scope: !5489)
!5511 = !DILocation(line: 1095, column: 1, scope: !5489)
!5512 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !581, file: !581, line: 3100, type: !5513, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5515)
!5513 = !DISubroutineType(types: !5514)
!5514 = !{!5390, !789, !7}
!5515 = !{!5516, !5517}
!5516 = !DILocalVariable(name: "gs", arg: 1, scope: !5512, file: !581, line: 3100, type: !789)
!5517 = !DILocalVariable(name: "index", arg: 2, scope: !5512, file: !581, line: 3100, type: !7)
!5518 = !DILocation(line: 0, scope: !5512)
!5519 = !DILocation(line: 3103, column: 3, scope: !5512)
!5520 = !DILocation(line: 3104, column: 12, scope: !5512)
!5521 = !DILocation(line: 3104, column: 3, scope: !5512)
!5522 = distinct !DISubprogram(name: "link_use_stmts_after", scope: !4186, file: !4186, line: 1018, type: !5523, scopeLine: 1019, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5525)
!5523 = !DISubroutineType(types: !5524)
!5524 = !{null, !2187, !4224}
!5525 = !{!5526, !5527, !5528, !5529, !5530, !5531, !5532, !5545}
!5526 = !DILocalVariable(name: "head", arg: 1, scope: !5522, file: !4186, line: 1018, type: !2187)
!5527 = !DILocalVariable(name: "imm", arg: 2, scope: !5522, file: !4186, line: 1018, type: !4224)
!5528 = !DILocalVariable(name: "use_p", scope: !5522, file: !4186, line: 1020, type: !2187)
!5529 = !DILocalVariable(name: "last_p", scope: !5522, file: !4186, line: 1021, type: !2187)
!5530 = !DILocalVariable(name: "head_stmt", scope: !5522, file: !4186, line: 1022, type: !789)
!5531 = !DILocalVariable(name: "use", scope: !5522, file: !4186, line: 1023, type: !814)
!5532 = !DILocalVariable(name: "op_iter", scope: !5522, file: !4186, line: 1024, type: !5533)
!5533 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !652, line: 140, baseType: !5534)
!5534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !652, line: 131, size: 320, elements: !5535)
!5535 = !{!5536, !5537, !5538, !5540, !5542, !5543, !5544}
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !5534, file: !652, line: 133, baseType: !660, size: 8)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !5534, file: !652, line: 134, baseType: !651, size: 32, offset: 32)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !5534, file: !652, line: 135, baseType: !5539, size: 64, offset: 64)
!5539 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !652, line: 42, baseType: !1329)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !5534, file: !652, line: 136, baseType: !5541, size: 64, offset: 128)
!5541 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !652, line: 50, baseType: !1336)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !5534, file: !652, line: 137, baseType: !661, size: 32, offset: 192)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !5534, file: !652, line: 138, baseType: !661, size: 32, offset: 224)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !5534, file: !652, line: 139, baseType: !789, size: 64, offset: 256)
!5545 = !DILocalVariable(name: "flag", scope: !5522, file: !4186, line: 1025, type: !661)
!5546 = !DILocation(line: 0, scope: !5522)
!5547 = !DILocation(line: 1022, column: 22, scope: !5522)
!5548 = !DILocation(line: 1023, column: 14, scope: !5522)
!5549 = !DILocation(line: 1024, column: 3, scope: !5522)
!5550 = !DILocation(line: 1028, column: 11, scope: !5522)
!5551 = !DILocation(line: 1030, column: 7, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5522, file: !4186, line: 1030, column: 7)
!5553 = !DILocation(line: 1030, column: 31, scope: !5552)
!5554 = !DILocation(line: 1030, column: 7, scope: !5522)
!5555 = !DILocation(line: 1032, column: 7, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5557, file: !4186, line: 1032, column: 7)
!5557 = distinct !DILexicalBlock(scope: !5552, file: !4186, line: 1031, column: 5)
!5558 = !DILocation(line: 0, scope: !5556)
!5559 = !DILocation(line: 1032, column: 7, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5556, file: !4186, line: 1032, column: 7)
!5561 = !DILocation(line: 1033, column: 6, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5560, file: !4186, line: 1033, column: 6)
!5563 = !DILocation(line: 1033, column: 27, scope: !5562)
!5564 = !DILocation(line: 1033, column: 6, scope: !5560)
!5565 = !DILocation(line: 1034, column: 13, scope: !5562)
!5566 = !DILocation(line: 1034, column: 4, scope: !5562)
!5567 = distinct !{!5567, !5555, !5568}
!5568 = !DILocation(line: 1034, column: 53, scope: !5556)
!5569 = !DILocation(line: 1038, column: 11, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5552, file: !4186, line: 1037, column: 5)
!5571 = !DILocation(line: 1040, column: 4, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5573, file: !4186, line: 1040, column: 4)
!5573 = distinct !DILexicalBlock(scope: !5574, file: !4186, line: 1039, column: 2)
!5574 = distinct !DILexicalBlock(scope: !5570, file: !4186, line: 1038, column: 11)
!5575 = !DILocation(line: 0, scope: !5572)
!5576 = !DILocation(line: 1040, column: 4, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5572, file: !4186, line: 1040, column: 4)
!5578 = !DILocation(line: 1041, column: 10, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5577, file: !4186, line: 1041, column: 10)
!5580 = !DILocation(line: 1041, column: 31, scope: !5579)
!5581 = !DILocation(line: 1041, column: 10, scope: !5577)
!5582 = !DILocation(line: 1042, column: 17, scope: !5579)
!5583 = !DILocation(line: 1042, column: 8, scope: !5579)
!5584 = distinct !{!5584, !5571, !5585}
!5585 = !DILocation(line: 1042, column: 57, scope: !5572)
!5586 = !DILocation(line: 1044, column: 25, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5574, file: !4186, line: 1044, column: 16)
!5588 = !DILocation(line: 1044, column: 53, scope: !5587)
!5589 = !DILocation(line: 1044, column: 16, scope: !5574)
!5590 = !DILocation(line: 1046, column: 8, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5592, file: !4186, line: 1046, column: 8)
!5592 = distinct !DILexicalBlock(scope: !5587, file: !4186, line: 1045, column: 2)
!5593 = !DILocation(line: 1046, column: 29, scope: !5591)
!5594 = !DILocation(line: 1046, column: 8, scope: !5592)
!5595 = !DILocation(line: 1047, column: 15, scope: !5591)
!5596 = !DILocation(line: 1047, column: 6, scope: !5591)
!5597 = !DILocation(line: 1051, column: 22, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5522, file: !4186, line: 1051, column: 7)
!5599 = !DILocation(line: 1021, column: 17, scope: !5522)
!5600 = !DILocation(line: 1051, column: 27, scope: !5598)
!5601 = !DILocation(line: 1051, column: 7, scope: !5522)
!5602 = !DILocation(line: 1052, column: 27, scope: !5598)
!5603 = !DILocation(line: 1052, column: 5, scope: !5598)
!5604 = !DILocation(line: 1053, column: 32, scope: !5522)
!5605 = !DILocation(line: 1053, column: 3, scope: !5522)
!5606 = !DILocation(line: 1054, column: 1, scope: !5522)
!5607 = distinct !DISubprogram(name: "op_iter_init_phiuse", scope: !4186, file: !4186, line: 910, type: !5608, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5611)
!5608 = !DISubroutineType(types: !5609)
!5609 = !{!2187, !5610, !789, !661}
!5610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5533, size: 64)
!5611 = !{!5612, !5613, !5614, !5615, !5616}
!5612 = !DILocalVariable(name: "ptr", arg: 1, scope: !5607, file: !4186, line: 910, type: !5610)
!5613 = !DILocalVariable(name: "phi", arg: 2, scope: !5607, file: !4186, line: 910, type: !789)
!5614 = !DILocalVariable(name: "flags", arg: 3, scope: !5607, file: !4186, line: 910, type: !661)
!5615 = !DILocalVariable(name: "phi_def", scope: !5607, file: !4186, line: 912, type: !814)
!5616 = !DILocalVariable(name: "comp", scope: !5607, file: !4186, line: 913, type: !661)
!5617 = !DILocation(line: 0, scope: !5607)
!5618 = !DILocation(line: 912, column: 18, scope: !5607)
!5619 = !DILocation(line: 915, column: 3, scope: !5607)
!5620 = !DILocation(line: 916, column: 8, scope: !5607)
!5621 = !DILocation(line: 916, column: 13, scope: !5607)
!5622 = !DILocation(line: 918, column: 3, scope: !5607)
!5623 = !DILocation(line: 920, column: 11, scope: !5607)
!5624 = !DILocation(line: 923, column: 14, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5607, file: !4186, line: 923, column: 7)
!5626 = !DILocation(line: 923, column: 22, scope: !5625)
!5627 = !DILocation(line: 923, column: 7, scope: !5607)
!5628 = !DILocation(line: 925, column: 17, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5625, file: !4186, line: 924, column: 5)
!5630 = !DILocation(line: 926, column: 7, scope: !5629)
!5631 = !DILocation(line: 929, column: 8, scope: !5607)
!5632 = !DILocation(line: 929, column: 17, scope: !5607)
!5633 = !DILocation(line: 930, column: 18, scope: !5607)
!5634 = !DILocation(line: 930, column: 8, scope: !5607)
!5635 = !DILocation(line: 930, column: 16, scope: !5607)
!5636 = !DILocation(line: 931, column: 8, scope: !5607)
!5637 = !DILocation(line: 931, column: 18, scope: !5607)
!5638 = !DILocation(line: 932, column: 10, scope: !5607)
!5639 = !DILocation(line: 932, column: 3, scope: !5607)
!5640 = !DILocation(line: 933, column: 1, scope: !5607)
!5641 = distinct !DISubprogram(name: "op_iter_done", scope: !4186, file: !4186, line: 652, type: !5642, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5646)
!5642 = !DISubroutineType(types: !5643)
!5643 = !{!660, !5644}
!5644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5645, size: 64)
!5645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5533)
!5646 = !{!5647}
!5647 = !DILocalVariable(name: "ptr", arg: 1, scope: !5641, file: !4186, line: 652, type: !5644)
!5648 = !DILocation(line: 0, scope: !5641)
!5649 = !DILocation(line: 654, column: 15, scope: !5641)
!5650 = !DILocation(line: 654, column: 3, scope: !5641)
!5651 = distinct !DISubprogram(name: "move_use_after_head", scope: !4186, file: !4186, line: 990, type: !5652, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5654)
!5652 = !DISubroutineType(types: !5653)
!5653 = !{!2187, !2187, !2187, !2187}
!5654 = !{!5655, !5656, !5657}
!5655 = !DILocalVariable(name: "use_p", arg: 1, scope: !5651, file: !4186, line: 990, type: !2187)
!5656 = !DILocalVariable(name: "head", arg: 2, scope: !5651, file: !4186, line: 990, type: !2187)
!5657 = !DILocalVariable(name: "last_p", arg: 3, scope: !5651, file: !4186, line: 991, type: !2187)
!5658 = !DILocation(line: 0, scope: !5651)
!5659 = !DILocation(line: 997, column: 13, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5651, file: !4186, line: 997, column: 7)
!5661 = !DILocation(line: 997, column: 7, scope: !5651)
!5662 = !DILocation(line: 1000, column: 19, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5664, file: !4186, line: 1000, column: 11)
!5664 = distinct !DILexicalBlock(scope: !5660, file: !4186, line: 998, column: 5)
!5665 = !DILocation(line: 1000, column: 24, scope: !5663)
!5666 = !DILocation(line: 1000, column: 11, scope: !5664)
!5667 = !DILocation(line: 1005, column: 4, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5663, file: !4186, line: 1003, column: 2)
!5669 = !DILocation(line: 1006, column: 4, scope: !5668)
!5670 = !DILocation(line: 1010, column: 3, scope: !5651)
!5671 = distinct !DISubprogram(name: "op_iter_next_use", scope: !4186, file: !4186, line: 659, type: !5672, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5674)
!5672 = !DISubroutineType(types: !5673)
!5673 = !{!2187, !5610}
!5674 = !{!5675, !5676}
!5675 = !DILocalVariable(name: "ptr", arg: 1, scope: !5671, file: !4186, line: 659, type: !5610)
!5676 = !DILocalVariable(name: "use_p", scope: !5671, file: !4186, line: 661, type: !2187)
!5677 = !DILocation(line: 0, scope: !5671)
!5678 = !DILocation(line: 665, column: 12, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5671, file: !4186, line: 665, column: 7)
!5680 = !DILocation(line: 665, column: 7, scope: !5679)
!5681 = !DILocation(line: 665, column: 7, scope: !5671)
!5682 = !DILocation(line: 667, column: 15, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5679, file: !4186, line: 666, column: 5)
!5684 = !DILocation(line: 668, column: 30, scope: !5683)
!5685 = !DILocation(line: 668, column: 17, scope: !5683)
!5686 = !DILocation(line: 669, column: 7, scope: !5683)
!5687 = !DILocation(line: 671, column: 12, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5671, file: !4186, line: 671, column: 7)
!5689 = !DILocation(line: 671, column: 25, scope: !5688)
!5690 = !DILocation(line: 671, column: 18, scope: !5688)
!5691 = !DILocation(line: 671, column: 7, scope: !5671)
!5692 = !DILocation(line: 673, column: 14, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5688, file: !4186, line: 672, column: 5)
!5694 = !DILocation(line: 673, column: 7, scope: !5693)
!5695 = !DILocation(line: 675, column: 8, scope: !5671)
!5696 = !DILocation(line: 675, column: 13, scope: !5671)
!5697 = !DILocation(line: 676, column: 3, scope: !5671)
!5698 = !DILocation(line: 677, column: 1, scope: !5671)
!5699 = distinct !DISubprogram(name: "op_iter_init_use", scope: !4186, file: !4186, line: 768, type: !5608, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5700)
!5700 = !{!5701, !5702, !5703}
!5701 = !DILocalVariable(name: "ptr", arg: 1, scope: !5699, file: !4186, line: 768, type: !5610)
!5702 = !DILocalVariable(name: "stmt", arg: 2, scope: !5699, file: !4186, line: 768, type: !789)
!5703 = !DILocalVariable(name: "flags", arg: 3, scope: !5699, file: !4186, line: 768, type: !661)
!5704 = !DILocation(line: 0, scope: !5699)
!5705 = !DILocation(line: 770, column: 3, scope: !5699)
!5706 = !DILocation(line: 772, column: 3, scope: !5699)
!5707 = !DILocation(line: 773, column: 8, scope: !5699)
!5708 = !DILocation(line: 773, column: 18, scope: !5699)
!5709 = !DILocation(line: 774, column: 10, scope: !5699)
!5710 = !DILocation(line: 774, column: 3, scope: !5699)
!5711 = distinct !DISubprogram(name: "delink_imm_use", scope: !4186, file: !4186, line: 188, type: !5712, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5714)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{null, !2188}
!5714 = !{!5715}
!5715 = !DILocalVariable(name: "linknode", arg: 1, scope: !5711, file: !4186, line: 188, type: !2188)
!5716 = !DILocation(line: 0, scope: !5711)
!5717 = !DILocation(line: 191, column: 17, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5711, file: !4186, line: 191, column: 7)
!5719 = !DILocation(line: 191, column: 22, scope: !5718)
!5720 = !DILocation(line: 191, column: 7, scope: !5711)
!5721 = !DILocation(line: 194, column: 36, scope: !5711)
!5722 = !DILocation(line: 194, column: 19, scope: !5711)
!5723 = !DILocation(line: 194, column: 24, scope: !5711)
!5724 = !DILocation(line: 195, column: 36, scope: !5711)
!5725 = !DILocation(line: 195, column: 13, scope: !5711)
!5726 = !DILocation(line: 195, column: 24, scope: !5711)
!5727 = !DILocation(line: 196, column: 18, scope: !5711)
!5728 = !DILocation(line: 197, column: 18, scope: !5711)
!5729 = !DILocation(line: 198, column: 1, scope: !5711)
!5730 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !4186, file: !4186, line: 202, type: !5731, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5733)
!5731 = !DISubroutineType(types: !5732)
!5732 = !{null, !2188, !2188}
!5733 = !{!5734, !5735}
!5734 = !DILocalVariable(name: "linknode", arg: 1, scope: !5730, file: !4186, line: 202, type: !2188)
!5735 = !DILocalVariable(name: "list", arg: 2, scope: !5730, file: !4186, line: 202, type: !2188)
!5736 = !DILocation(line: 0, scope: !5730)
!5737 = !DILocation(line: 206, column: 13, scope: !5730)
!5738 = !DILocation(line: 206, column: 18, scope: !5730)
!5739 = !DILocation(line: 207, column: 26, scope: !5730)
!5740 = !DILocation(line: 207, column: 13, scope: !5730)
!5741 = !DILocation(line: 207, column: 18, scope: !5730)
!5742 = !DILocation(line: 208, column: 9, scope: !5730)
!5743 = !DILocation(line: 208, column: 15, scope: !5730)
!5744 = !DILocation(line: 208, column: 20, scope: !5730)
!5745 = !DILocation(line: 209, column: 14, scope: !5730)
!5746 = !DILocation(line: 210, column: 1, scope: !5730)
!5747 = distinct !DISubprogram(name: "clear_and_done_ssa_iter", scope: !4186, file: !4186, line: 729, type: !5748, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5750)
!5748 = !DISubroutineType(types: !5749)
!5749 = !{null, !5610}
!5750 = !{!5751}
!5751 = !DILocalVariable(name: "ptr", arg: 1, scope: !5747, file: !4186, line: 729, type: !5610)
!5752 = !DILocation(line: 0, scope: !5747)
!5753 = !DILocation(line: 731, column: 8, scope: !5747)
!5754 = !DILocation(line: 731, column: 13, scope: !5747)
!5755 = !DILocation(line: 732, column: 8, scope: !5747)
!5756 = !DILocation(line: 732, column: 13, scope: !5747)
!5757 = !DILocation(line: 733, column: 8, scope: !5747)
!5758 = !DILocation(line: 733, column: 18, scope: !5747)
!5759 = !DILocation(line: 734, column: 8, scope: !5747)
!5760 = !DILocation(line: 734, column: 14, scope: !5747)
!5761 = !DILocation(line: 735, column: 8, scope: !5747)
!5762 = !DILocation(line: 735, column: 16, scope: !5747)
!5763 = !DILocation(line: 736, column: 8, scope: !5747)
!5764 = !DILocation(line: 736, column: 17, scope: !5747)
!5765 = !DILocation(line: 737, column: 8, scope: !5747)
!5766 = !DILocation(line: 737, column: 13, scope: !5747)
!5767 = !DILocation(line: 738, column: 1, scope: !5747)
!5768 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !4186, file: !4186, line: 442, type: !5769, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5771)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!2187, !789, !661}
!5771 = !{!5772, !5773}
!5772 = !DILocalVariable(name: "gs", arg: 1, scope: !5768, file: !4186, line: 442, type: !789)
!5773 = !DILocalVariable(name: "i", arg: 2, scope: !5768, file: !4186, line: 442, type: !661)
!5774 = !DILocation(line: 0, scope: !5768)
!5775 = !DILocation(line: 444, column: 11, scope: !5768)
!5776 = !DILocation(line: 444, column: 35, scope: !5768)
!5777 = !DILocation(line: 444, column: 3, scope: !5768)
!5778 = distinct !DISubprogram(name: "op_iter_init", scope: !4186, file: !4186, line: 742, type: !5779, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5781)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{null, !5610, !789, !661}
!5781 = !{!5782, !5783, !5784}
!5782 = !DILocalVariable(name: "ptr", arg: 1, scope: !5778, file: !4186, line: 742, type: !5610)
!5783 = !DILocalVariable(name: "stmt", arg: 2, scope: !5778, file: !4186, line: 742, type: !789)
!5784 = !DILocalVariable(name: "flags", arg: 3, scope: !5778, file: !4186, line: 742, type: !661)
!5785 = !DILocation(line: 0, scope: !5778)
!5786 = !DILocation(line: 746, column: 3, scope: !5778)
!5787 = !DILocation(line: 748, column: 22, scope: !5778)
!5788 = !DILocation(line: 748, column: 15, scope: !5778)
!5789 = !DILocation(line: 748, column: 52, scope: !5778)
!5790 = !DILocation(line: 748, column: 8, scope: !5778)
!5791 = !DILocation(line: 748, column: 13, scope: !5778)
!5792 = !DILocation(line: 749, column: 15, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5778, file: !4186, line: 749, column: 7)
!5794 = !DILocation(line: 750, column: 7, scope: !5793)
!5795 = !DILocation(line: 750, column: 10, scope: !5793)
!5796 = !DILocation(line: 751, column: 7, scope: !5793)
!5797 = !DILocation(line: 751, column: 10, scope: !5793)
!5798 = !DILocation(line: 751, column: 29, scope: !5793)
!5799 = !DILocation(line: 749, column: 7, scope: !5778)
!5800 = !DILocation(line: 752, column: 22, scope: !5793)
!5801 = !DILocation(line: 752, column: 28, scope: !5793)
!5802 = !DILocation(line: 752, column: 15, scope: !5793)
!5803 = !DILocation(line: 752, column: 5, scope: !5793)
!5804 = !DILocation(line: 753, column: 22, scope: !5778)
!5805 = !DILocation(line: 753, column: 15, scope: !5778)
!5806 = !DILocation(line: 753, column: 52, scope: !5778)
!5807 = !DILocation(line: 753, column: 8, scope: !5778)
!5808 = !DILocation(line: 753, column: 13, scope: !5778)
!5809 = !DILocation(line: 754, column: 15, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5778, file: !4186, line: 754, column: 7)
!5811 = !DILocation(line: 755, column: 7, scope: !5810)
!5812 = !DILocation(line: 755, column: 10, scope: !5810)
!5813 = !DILocation(line: 756, column: 7, scope: !5810)
!5814 = !DILocation(line: 756, column: 10, scope: !5810)
!5815 = !DILocation(line: 756, column: 29, scope: !5810)
!5816 = !DILocation(line: 754, column: 7, scope: !5778)
!5817 = !DILocation(line: 757, column: 22, scope: !5810)
!5818 = !DILocation(line: 757, column: 28, scope: !5810)
!5819 = !DILocation(line: 757, column: 15, scope: !5810)
!5820 = !DILocation(line: 757, column: 5, scope: !5810)
!5821 = !DILocation(line: 758, column: 8, scope: !5778)
!5822 = !DILocation(line: 758, column: 13, scope: !5778)
!5823 = !DILocation(line: 760, column: 8, scope: !5778)
!5824 = !DILocation(line: 760, column: 14, scope: !5778)
!5825 = !DILocation(line: 761, column: 8, scope: !5778)
!5826 = !DILocation(line: 761, column: 16, scope: !5778)
!5827 = !DILocation(line: 762, column: 8, scope: !5778)
!5828 = !DILocation(line: 762, column: 17, scope: !5778)
!5829 = !DILocation(line: 763, column: 1, scope: !5778)
!5830 = distinct !DISubprogram(name: "gimple_def_ops", scope: !581, file: !581, line: 1292, type: !5831, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5833)
!5831 = !DISubroutineType(types: !5832)
!5832 = !{!1329, !4159}
!5833 = !{!5834}
!5834 = !DILocalVariable(name: "g", arg: 1, scope: !5830, file: !581, line: 1292, type: !4159)
!5835 = !DILocation(line: 0, scope: !5830)
!5836 = !DILocation(line: 1294, column: 8, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5830, file: !581, line: 1294, column: 7)
!5838 = !DILocation(line: 1294, column: 7, scope: !5830)
!5839 = !DILocation(line: 1296, column: 26, scope: !5830)
!5840 = !DILocation(line: 1296, column: 3, scope: !5830)
!5841 = !DILocation(line: 1297, column: 1, scope: !5830)
!5842 = distinct !DISubprogram(name: "gimple_vdef", scope: !581, file: !581, line: 1375, type: !4214, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5843)
!5843 = !{!5844}
!5844 = !DILocalVariable(name: "g", arg: 1, scope: !5842, file: !581, line: 1375, type: !4159)
!5845 = !DILocation(line: 0, scope: !5842)
!5846 = !DILocation(line: 1377, column: 8, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5842, file: !581, line: 1377, column: 7)
!5848 = !DILocation(line: 1377, column: 7, scope: !5842)
!5849 = !DILocation(line: 1379, column: 23, scope: !5842)
!5850 = !DILocation(line: 1379, column: 3, scope: !5842)
!5851 = !DILocation(line: 1380, column: 1, scope: !5842)
!5852 = distinct !DISubprogram(name: "gimple_use_ops", scope: !581, file: !581, line: 1313, type: !5853, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5855)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{!1336, !4159}
!5855 = !{!5856}
!5856 = !DILocalVariable(name: "g", arg: 1, scope: !5852, file: !581, line: 1313, type: !4159)
!5857 = !DILocation(line: 0, scope: !5852)
!5858 = !DILocation(line: 1315, column: 8, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5852, file: !581, line: 1315, column: 7)
!5860 = !DILocation(line: 1315, column: 7, scope: !5852)
!5861 = !DILocation(line: 1317, column: 26, scope: !5852)
!5862 = !DILocation(line: 1317, column: 3, scope: !5852)
!5863 = !DILocation(line: 1318, column: 1, scope: !5852)
!5864 = distinct !DISubprogram(name: "gimple_vuse", scope: !581, file: !581, line: 1365, type: !4214, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5865)
!5865 = !{!5866}
!5866 = !DILocalVariable(name: "g", arg: 1, scope: !5864, file: !581, line: 1365, type: !4159)
!5867 = !DILocation(line: 0, scope: !5864)
!5868 = !DILocation(line: 1367, column: 8, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5864, file: !581, line: 1367, column: 7)
!5870 = !DILocation(line: 1367, column: 7, scope: !5864)
!5871 = !DILocation(line: 1369, column: 23, scope: !5864)
!5872 = !DILocation(line: 1369, column: 3, scope: !5864)
!5873 = !DILocation(line: 1370, column: 1, scope: !5864)
!5874 = distinct !DISubprogram(name: "link_imm_use", scope: !4186, file: !4186, line: 214, type: !5875, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5877)
!5875 = !DISubroutineType(types: !5876)
!5876 = !{null, !2188, !814}
!5877 = !{!5878, !5879, !5880}
!5878 = !DILocalVariable(name: "linknode", arg: 1, scope: !5874, file: !4186, line: 214, type: !2188)
!5879 = !DILocalVariable(name: "def", arg: 2, scope: !5874, file: !4186, line: 214, type: !814)
!5880 = !DILocalVariable(name: "root", scope: !5874, file: !4186, line: 216, type: !2188)
!5881 = !DILocation(line: 0, scope: !5874)
!5882 = !DILocation(line: 218, column: 8, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5874, file: !4186, line: 218, column: 7)
!5884 = !DILocation(line: 218, column: 12, scope: !5883)
!5885 = !DILocation(line: 218, column: 15, scope: !5883)
!5886 = !DILocation(line: 218, column: 31, scope: !5883)
!5887 = !DILocation(line: 218, column: 7, scope: !5874)
!5888 = !DILocation(line: 219, column: 15, scope: !5883)
!5889 = !DILocation(line: 219, column: 20, scope: !5883)
!5890 = !DILocation(line: 219, column: 5, scope: !5883)
!5891 = !DILocation(line: 222, column: 16, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5883, file: !4186, line: 221, column: 5)
!5893 = !DILocation(line: 227, column: 7, scope: !5892)
!5894 = !DILocation(line: 229, column: 1, scope: !5874)
!5895 = distinct !DISubprogram(name: "copy_loop_before", scope: !3, file: !3, line: 136, type: !5896, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5898)
!5896 = !DISubroutineType(types: !5897)
!5897 = !{!747, !747}
!5898 = !{!5899, !5900, !5901}
!5899 = !DILocalVariable(name: "loop", arg: 1, scope: !5895, file: !3, line: 136, type: !747)
!5900 = !DILocalVariable(name: "res", scope: !5895, file: !3, line: 138, type: !747)
!5901 = !DILocalVariable(name: "preheader", scope: !5895, file: !3, line: 139, type: !769)
!5902 = !DILocation(line: 0, scope: !5895)
!5903 = !DILocation(line: 139, column: 20, scope: !5895)
!5904 = !DILocation(line: 141, column: 8, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 141, column: 7)
!5906 = !DILocation(line: 141, column: 7, scope: !5895)
!5907 = !DILocation(line: 144, column: 3, scope: !5895)
!5908 = !DILocation(line: 145, column: 9, scope: !5895)
!5909 = !DILocation(line: 146, column: 3, scope: !5895)
!5910 = !DILocation(line: 148, column: 8, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 148, column: 7)
!5912 = !DILocation(line: 148, column: 7, scope: !5895)
!5913 = !DILocation(line: 151, column: 3, scope: !5895)
!5914 = !DILocation(line: 152, column: 3, scope: !5895)
!5915 = !DILocation(line: 154, column: 3, scope: !5895)
!5916 = !DILocation(line: 155, column: 1, scope: !5895)
!5917 = distinct !DISubprogram(name: "create_bb_after_loop", scope: !3, file: !3, line: 160, type: !5918, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5920)
!5918 = !DISubroutineType(types: !5919)
!5919 = !{null, !747}
!5920 = !{!5921, !5922}
!5921 = !DILocalVariable(name: "loop", arg: 1, scope: !5917, file: !3, line: 160, type: !747)
!5922 = !DILocalVariable(name: "exit", scope: !5917, file: !3, line: 162, type: !769)
!5923 = !DILocation(line: 0, scope: !5917)
!5924 = !DILocation(line: 162, column: 15, scope: !5917)
!5925 = !DILocation(line: 164, column: 8, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 164, column: 7)
!5927 = !DILocation(line: 164, column: 7, scope: !5917)
!5928 = !DILocation(line: 167, column: 3, scope: !5917)
!5929 = !DILocation(line: 168, column: 1, scope: !5917)
!5930 = distinct !DISubprogram(name: "update_phis_for_loop_copy", scope: !3, file: !3, line: 85, type: !5931, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5933)
!5931 = !DISubroutineType(types: !5932)
!5932 = !{null, !747, !747}
!5933 = !{!5934, !5935, !5936, !5937, !5938, !5939, !5940, !5941, !5942, !5946, !5947, !5948}
!5934 = !DILocalVariable(name: "orig_loop", arg: 1, scope: !5930, file: !3, line: 85, type: !747)
!5935 = !DILocalVariable(name: "new_loop", arg: 2, scope: !5930, file: !3, line: 85, type: !747)
!5936 = !DILocalVariable(name: "new_ssa_name", scope: !5930, file: !3, line: 87, type: !814)
!5937 = !DILocalVariable(name: "si_new", scope: !5930, file: !3, line: 88, type: !4766)
!5938 = !DILocalVariable(name: "si_orig", scope: !5930, file: !3, line: 88, type: !4766)
!5939 = !DILocalVariable(name: "orig_loop_latch", scope: !5930, file: !3, line: 89, type: !769)
!5940 = !DILocalVariable(name: "orig_entry_e", scope: !5930, file: !3, line: 90, type: !769)
!5941 = !DILocalVariable(name: "new_loop_entry_e", scope: !5930, file: !3, line: 91, type: !769)
!5942 = !DILocalVariable(name: "def", scope: !5943, file: !3, line: 100, type: !814)
!5943 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 99, column: 5)
!5944 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 95, column: 3)
!5945 = distinct !DILexicalBlock(scope: !5930, file: !3, line: 95, column: 3)
!5946 = !DILocalVariable(name: "locus", scope: !5943, file: !3, line: 101, type: !809)
!5947 = !DILocalVariable(name: "phi_new", scope: !5943, file: !3, line: 102, type: !789)
!5948 = !DILocalVariable(name: "phi_orig", scope: !5943, file: !3, line: 103, type: !789)
!5949 = !DILocation(line: 0, scope: !5930)
!5950 = !DILocation(line: 88, column: 3, scope: !5930)
!5951 = !DILocation(line: 89, column: 26, scope: !5930)
!5952 = !DILocation(line: 90, column: 23, scope: !5930)
!5953 = !DILocation(line: 91, column: 27, scope: !5930)
!5954 = !DILocation(line: 95, column: 17, scope: !5945)
!5955 = !DILocation(line: 95, column: 43, scope: !5945)
!5956 = !DILocation(line: 96, column: 18, scope: !5945)
!5957 = !DILocation(line: 96, column: 45, scope: !5945)
!5958 = !DILocation(line: 0, scope: !5943)
!5959 = !DILocation(line: 95, column: 8, scope: !5945)
!5960 = !DILocation(line: 97, column: 9, scope: !5944)
!5961 = !DILocation(line: 97, column: 28, scope: !5944)
!5962 = !DILocation(line: 97, column: 32, scope: !5944)
!5963 = !DILocation(line: 97, column: 31, scope: !5944)
!5964 = !DILocation(line: 95, column: 3, scope: !5945)
!5965 = !DILocation(line: 102, column: 24, scope: !5943)
!5966 = !DILocation(line: 103, column: 25, scope: !5943)
!5967 = !DILocation(line: 107, column: 13, scope: !5943)
!5968 = !DILocation(line: 108, column: 15, scope: !5943)
!5969 = !DILocation(line: 109, column: 7, scope: !5943)
!5970 = !DILocation(line: 113, column: 13, scope: !5943)
!5971 = !DILocation(line: 114, column: 15, scope: !5943)
!5972 = !DILocation(line: 116, column: 11, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 116, column: 11)
!5974 = !DILocation(line: 116, column: 27, scope: !5973)
!5975 = !DILocation(line: 116, column: 11, scope: !5943)
!5976 = !DILocation(line: 118, column: 19, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 117, column: 2)
!5978 = !DILocation(line: 120, column: 9, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 120, column: 8)
!5980 = !DILocation(line: 120, column: 8, scope: !5977)
!5981 = !DILocation(line: 124, column: 2, scope: !5977)
!5982 = !DILocation(line: 0, scope: !5973)
!5983 = !DILocation(line: 129, column: 43, scope: !5943)
!5984 = !DILocation(line: 129, column: 7, scope: !5943)
!5985 = !DILocation(line: 98, column: 8, scope: !5944)
!5986 = !DILocation(line: 98, column: 28, scope: !5944)
!5987 = !DILocation(line: 95, column: 3, scope: !5944)
!5988 = distinct !{!5988, !5964, !5989}
!5989 = !DILocation(line: 130, column: 5, scope: !5945)
!5990 = !DILocation(line: 131, column: 1, scope: !5930)
!5991 = distinct !DISubprogram(name: "gimple_phi_arg_location_from_edge", scope: !4186, file: !4186, line: 483, type: !5992, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5994)
!5992 = !DISubroutineType(types: !5993)
!5993 = !{!809, !789, !769}
!5994 = !{!5995, !5996}
!5995 = !DILocalVariable(name: "gs", arg: 1, scope: !5991, file: !4186, line: 483, type: !789)
!5996 = !DILocalVariable(name: "e", arg: 2, scope: !5991, file: !4186, line: 483, type: !769)
!5997 = !DILocation(line: 0, scope: !5991)
!5998 = !DILocation(line: 485, column: 33, scope: !5991)
!5999 = !DILocation(line: 485, column: 10, scope: !5991)
!6000 = !DILocation(line: 485, column: 44, scope: !5991)
!6001 = !DILocation(line: 485, column: 3, scope: !5991)
