; ModuleID = 'tree-ssa-dce.bc'
source_filename = "tree-ssa-dce.c"
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
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.stmt_stats = type { i32, i32, i32, i32 }
%struct.VEC_gimple_heap = type { %struct.VEC_gimple_base }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.immediate_use_iterator_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.edge_list = type { i32, i32, %struct.edge_def** }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.VEC_basic_block_heap = type { %struct.VEC_basic_block_base }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.ao_ref_s = type { %union.tree_node*, %union.tree_node*, i64, i64, i64, i32, i32 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [31 x i8] c"Marking result for renaming : \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dce\00", align 1
@pass_dce = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8 ()* @gate_dce, i32 ()* @tree_ssa_dce, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 76, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [8 x i8] c"dceloop\00", align 1
@pass_dce_loop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8 ()* @gate_dce, i32 ()* @tree_ssa_dce_loop, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 76, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8, !dbg !2037
@.str.4 = private unnamed_addr constant [6 x i8] c"cddce\00", align 1
@pass_cd_dce = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8 ()* @gate_dce, i32 ()* @tree_ssa_cd_dce, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 77, i32 40, i32 0, i32 0, i32 0, i32 13 } }, align 8, !dbg !2065
@.str.5 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@flag_tree_dce = external dso_local local_unnamed_addr global i32, align 4
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@visited_control_parents = internal unnamed_addr global %struct.simple_bitmap_def* null, align 8, !dbg !2087
@longest_chain = internal unnamed_addr global i32 0, align 4, !dbg !2089
@total_chain = internal unnamed_addr global i32 0, align 4, !dbg !2091
@nr_walks = internal unnamed_addr global i32 0, align 4, !dbg !2093
@chain_ovfl = internal unnamed_addr global i1 false, align 1, !dbg !2109
@visited = internal global %struct.bitmap_head_def* null, align 8, !dbg !2097
@cfg_altered = internal unnamed_addr global i1 false, align 1, !dbg !2110
@.str.8 = private unnamed_addr constant [19 x i8] c"Statements deleted\00", align 1
@stats = internal global %struct.stmt_stats zeroinitializer, align 4, !dbg !2101
@.str.9 = private unnamed_addr constant [18 x i8] c"PHI nodes deleted\00", align 1
@control_dependence_map = internal unnamed_addr global %struct.bitmap_head_def** null, align 8, !dbg !2067
@last_stmt_necessary = internal unnamed_addr global %struct.simple_bitmap_def* null, align 8, !dbg !2069
@bb_contains_live_stmts = internal unnamed_addr global %struct.simple_bitmap_def* null, align 8, !dbg !2081
@processed = internal unnamed_addr global %struct.simple_bitmap_def* null, align 8, !dbg !2083
@worklist = internal global %struct.VEC_gimple_heap* null, align 8, !dbg !2085
@.str.10 = private unnamed_addr constant [15 x i8] c"tree-ssa-dce.c\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@.str.12 = private unnamed_addr constant [46 x i8] c"Marking back edge of irreducible loop %i->%i\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"can not prove finiteness of loop %i\0A\00", align 1
@flag_non_call_exceptions = external dso_local local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"Marking useful stmt: \00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"\0AProcessing worklist:\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"processing: \00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"marking necessary through \00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c" stmt \00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.19 = private unnamed_addr constant [38 x i8] c"\0AEliminating unnecessary statements:\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Deleting LHS of call: \00", align 1
@flag_var_tracking_assignments = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"Deleting : \00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Redirecting edge %i->%i to %i\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Removed %d of %d statements (%d%%)\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Removed %d of %d PHI nodes (%d%%)\0A\00", align 1
@optimize = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2115 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2129, metadata !DIExpression()), !dbg !2130
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2131
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2132
  ret i32 %call, !dbg !2133
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2134 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2138
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2139
  ret i32 %call, !dbg !2140
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2141 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2196, metadata !DIExpression()), !dbg !2197
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2198
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2198
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2198
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2198
  %cmp = icmp uge i8* %0, %1, !dbg !2198
  %conv1 = zext i1 %cmp to i64, !dbg !2198
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2198
  %tobool = icmp eq i64 %expval, 0, !dbg !2198
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2198

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2198
  br label %cond.end, !dbg !2198

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2198
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2198
  %2 = load i8, i8* %0, align 1, !dbg !2198
  %conv3 = zext i8 %2 to i32, !dbg !2198
  br label %cond.end, !dbg !2198

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2198
  ret i32 %cond, !dbg !2199
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2200 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2202, metadata !DIExpression()), !dbg !2203
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2204
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2204
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2204
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2204
  %cmp = icmp uge i8* %0, %1, !dbg !2204
  %conv1 = zext i1 %cmp to i64, !dbg !2204
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2204
  %tobool = icmp eq i64 %expval, 0, !dbg !2204
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2204

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2204
  br label %cond.end, !dbg !2204

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2204
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2204
  %2 = load i8, i8* %0, align 1, !dbg !2204
  %conv3 = zext i8 %2 to i32, !dbg !2204
  br label %cond.end, !dbg !2204

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2204
  ret i32 %cond, !dbg !2205
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2206 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2207
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2207
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2207
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2207
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2207
  %cmp = icmp uge i8* %1, %2, !dbg !2207
  %conv1 = zext i1 %cmp to i64, !dbg !2207
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2207
  %tobool = icmp eq i64 %expval, 0, !dbg !2207
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2207

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2207
  br label %cond.end, !dbg !2207

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2207
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2207
  %3 = load i8, i8* %1, align 1, !dbg !2207
  %conv3 = zext i8 %3 to i32, !dbg !2207
  br label %cond.end, !dbg !2207

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2207
  ret i32 %cond, !dbg !2208
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2209 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2213, metadata !DIExpression()), !dbg !2214
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2215
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2216
  ret i32 %call, !dbg !2217
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2218 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2222, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2223, metadata !DIExpression()), !dbg !2224
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2225
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2225
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2225
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2225
  %cmp = icmp uge i8* %0, %1, !dbg !2225
  %conv1 = zext i1 %cmp to i64, !dbg !2225
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2225
  %tobool = icmp eq i64 %expval, 0, !dbg !2225
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2225

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2225
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2225
  br label %cond.end, !dbg !2225

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2225
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2225
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2225
  store i8 %conv2, i8* %0, align 1, !dbg !2225
  %conv6 = and i32 %__c, 255, !dbg !2225
  br label %cond.end, !dbg !2225

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2225
  ret i32 %cond, !dbg !2226
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2227 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2229, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2230, metadata !DIExpression()), !dbg !2231
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2232
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2232
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2232
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2232
  %cmp = icmp uge i8* %0, %1, !dbg !2232
  %conv1 = zext i1 %cmp to i64, !dbg !2232
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2232
  %tobool = icmp eq i64 %expval, 0, !dbg !2232
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2232

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2232
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2232
  br label %cond.end, !dbg !2232

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2232
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2232
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2232
  store i8 %conv2, i8* %0, align 1, !dbg !2232
  %conv6 = and i32 %__c, 255, !dbg !2232
  br label %cond.end, !dbg !2232

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2232
  ret i32 %cond, !dbg !2233
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2234 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2236, metadata !DIExpression()), !dbg !2237
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2238
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2238
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2238
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2238
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2238
  %cmp = icmp uge i8* %1, %2, !dbg !2238
  %conv1 = zext i1 %cmp to i64, !dbg !2238
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2238
  %tobool = icmp eq i64 %expval, 0, !dbg !2238
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2238

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2238
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2238
  br label %cond.end, !dbg !2238

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2238
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2238
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2238
  store i8 %conv4, i8* %1, align 1, !dbg !2238
  %conv6 = and i32 %__c, 255, !dbg !2238
  br label %cond.end, !dbg !2238

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2238
  ret i32 %cond, !dbg !2239
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2240 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2246, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2247, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2248, metadata !DIExpression()), !dbg !2249
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2250
  ret i64 %call, !dbg !2251
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2252 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2254, metadata !DIExpression()), !dbg !2255
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2256
  %0 = load i32, i32* %_flags, align 8, !dbg !2256
  %and = lshr i32 %0, 4, !dbg !2256
  %and.lobit = and i32 %and, 1, !dbg !2256
  ret i32 %and.lobit, !dbg !2257
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2258 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2260, metadata !DIExpression()), !dbg !2261
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2262
  %0 = load i32, i32* %_flags, align 8, !dbg !2262
  %and = lshr i32 %0, 5, !dbg !2262
  %and.lobit = and i32 %and, 1, !dbg !2262
  ret i32 %and.lobit, !dbg !2263
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2264 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2267, metadata !DIExpression()), !dbg !2268
  %__c.off = add i32 %__c, 128, !dbg !2269
  %0 = icmp ult i32 %__c.off, 384, !dbg !2269
  br i1 %0, label %cond.true, label %cond.end, !dbg !2269

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2270
  %1 = load i32*, i32** %call, align 8, !dbg !2271
  %idxprom = sext i32 %__c to i64, !dbg !2272
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2272
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2272
  br label %cond.end, !dbg !2273

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2273
  ret i32 %cond, !dbg !2274
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2275 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2277, metadata !DIExpression()), !dbg !2278
  %__c.off = add i32 %__c, 128, !dbg !2279
  %0 = icmp ult i32 %__c.off, 384, !dbg !2279
  br i1 %0, label %cond.true, label %cond.end, !dbg !2279

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2280
  %1 = load i32*, i32** %call, align 8, !dbg !2281
  %idxprom = sext i32 %__c to i64, !dbg !2282
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2282
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2282
  br label %cond.end, !dbg !2283

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2283
  ret i32 %cond, !dbg !2284
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2285 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2290, metadata !DIExpression()), !dbg !2291
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2292
  %conv = trunc i64 %call to i32, !dbg !2293
  ret i32 %conv, !dbg !2294
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2295 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2299, metadata !DIExpression()), !dbg !2300
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2301
  ret i64 %call, !dbg !2302
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2303 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2308, metadata !DIExpression()), !dbg !2309
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2310
  ret i64 %call, !dbg !2311
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2312 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2318, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2319, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2320, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2321, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2322, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 0, metadata !2323, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2324, metadata !DIExpression()), !dbg !2328
  br label %while.cond, !dbg !2329

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2330
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2328
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2324, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2323, metadata !DIExpression()), !dbg !2328
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2331
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2329

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2332
  %div = lshr i64 %add, 1, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %div, metadata !2325, metadata !DIExpression()), !dbg !2328
  %mul = mul i64 %div, %__size, !dbg !2335
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2336
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2326, metadata !DIExpression()), !dbg !2328
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %call, metadata !2327, metadata !DIExpression()), !dbg !2328
  %cmp1 = icmp slt i32 %call, 0, !dbg !2338
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2340

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2341
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2343

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2323, metadata !DIExpression()), !dbg !2328
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2328
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2328
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2324, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2323, metadata !DIExpression()), !dbg !2328
  br label %while.cond, !dbg !2329, !llvm.loop !2345

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2328
  ret i8* %retval.0, !dbg !2347
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2348 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2354, metadata !DIExpression()), !dbg !2355
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2356
  ret double %call, !dbg !2357
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2358 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2367, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i32 %base, metadata !2369, metadata !DIExpression()), !dbg !2370
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2371
  ret i64 %call, !dbg !2372
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2373 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2379, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2380, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 %base, metadata !2381, metadata !DIExpression()), !dbg !2382
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2383
  ret i64 %call, !dbg !2384
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2385 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2396, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2397, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i32 %base, metadata !2398, metadata !DIExpression()), !dbg !2399
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2400
  ret i64 %call, !dbg !2401
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2402 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2406, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2407, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 %base, metadata !2408, metadata !DIExpression()), !dbg !2409
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2410
  ret i64 %call, !dbg !2411
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2412 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2452, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2453, metadata !DIExpression()), !dbg !2454
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2455
  ret i32 %call, !dbg !2456
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2457 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2459, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2460, metadata !DIExpression()), !dbg !2461
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2462
  ret i32 %call, !dbg !2463
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2464 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2468, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2469, metadata !DIExpression()), !dbg !2470
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2471
  ret i32 %call, !dbg !2472
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2473 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2477, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2478, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2479, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2480, metadata !DIExpression()), !dbg !2481
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2482
  ret i32 %call, !dbg !2483
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2484 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2488, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2489, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2490, metadata !DIExpression()), !dbg !2491
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2490, metadata !DIExpression(DW_OP_deref)), !dbg !2491
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2492
  ret i32 %call, !dbg !2493
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2494 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2498, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2499, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2500, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2501, metadata !DIExpression()), !dbg !2502
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2501, metadata !DIExpression(DW_OP_deref)), !dbg !2502
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2503
  ret i32 %call, !dbg !2504
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2505 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2529, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2530, metadata !DIExpression()), !dbg !2531
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2532
  ret i32 %call, !dbg !2533
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2534 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2536, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2537, metadata !DIExpression()), !dbg !2538
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2539
  ret i32 %call, !dbg !2540
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2541 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2545, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2546, metadata !DIExpression()), !dbg !2547
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2548
  ret i32 %call, !dbg !2549
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2550 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2554, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2555, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2556, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2557, metadata !DIExpression()), !dbg !2558
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2559
  ret i32 %call, !dbg !2560
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @mark_virtual_phi_result_for_renaming(%union.gimple_statement_d* %phi) local_unnamed_addr #5 !dbg !2561 {
entry:
  %iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !2565, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 0, metadata !2566, metadata !DIExpression()), !dbg !2579
  %0 = bitcast %struct.immediate_use_iterator_d* %iter to i8*, !dbg !2580
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #7, !dbg !2580
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2581
  %tobool = icmp eq %struct._IO_FILE* %1, null, !dbg !2581
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2583

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @dump_flags, align 4, !dbg !2584
  %and = and i32 %2, 8, !dbg !2585
  %tobool1 = icmp eq i32 %and, 0, !dbg !2585
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2586

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2587
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2589
  tail call void @print_gimple_stmt(%struct._IO_FILE* %3, %union.gimple_statement_d* %phi, i32 0, i32 2) #6, !dbg !2590
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2591
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2592
  br label %if.end, !dbg !2593

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %call3 = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #8, !dbg !2594
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2577, metadata !DIExpression()), !dbg !2579
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2595
  %5 = bitcast i32* %var to %union.tree_node**, !dbg !2595
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8, !dbg !2595
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !2578, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2567, metadata !DIExpression(DW_OP_deref)), !dbg !2579
  %call4 = call fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %iter, %union.tree_node* %call3) #8, !dbg !2596
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call4, metadata !2576, metadata !DIExpression()), !dbg !2579
  br label %for.cond, !dbg !2596

for.cond:                                         ; preds = %for.end, %if.end
  %used.0 = phi i8 [ 0, %if.end ], [ 1, %for.end ], !dbg !2579
  %stmt.0 = phi %union.gimple_statement_d* [ %call4, %if.end ], [ %call15, %for.end ], !dbg !2598
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt.0, metadata !2576, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 %used.0, metadata !2566, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2567, metadata !DIExpression(DW_OP_deref)), !dbg !2579
  %call5 = call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !2599
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2599
  br i1 %tobool6, label %for.body, label %for.end16, !dbg !2596

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2567, metadata !DIExpression(DW_OP_deref)), !dbg !2579
  %call7 = call fastcc %struct.ssa_use_operand_d* @first_imm_use_on_stmt(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !2601
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call7, metadata !2575, metadata !DIExpression()), !dbg !2579
  br label %for.cond8, !dbg !2601

for.cond8:                                        ; preds = %for.body12, %for.body
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call7, %for.body ], [ %call13, %for.body12 ], !dbg !2604
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !2575, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2567, metadata !DIExpression(DW_OP_deref)), !dbg !2579
  %call9 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !2605
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2605
  br i1 %tobool10, label %for.body12, label %for.end, !dbg !2601

for.body12:                                       ; preds = %for.cond8
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0, %union.tree_node* %6) #8, !dbg !2607
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2567, metadata !DIExpression(DW_OP_deref)), !dbg !2579
  %call13 = call fastcc %struct.ssa_use_operand_d* @next_imm_use_on_stmt(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !2605
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call13, metadata !2575, metadata !DIExpression()), !dbg !2579
  br label %for.cond8, !dbg !2605, !llvm.loop !2608

for.end:                                          ; preds = %for.cond8
  call fastcc void @update_stmt(%union.gimple_statement_d* %stmt.0) #8, !dbg !2610
  call void @llvm.dbg.value(metadata i8 1, metadata !2566, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !2567, metadata !DIExpression(DW_OP_deref)), !dbg !2579
  %call15 = call fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !2599
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call15, metadata !2576, metadata !DIExpression()), !dbg !2579
  br label %for.cond, !dbg !2599, !llvm.loop !2611

for.end16:                                        ; preds = %for.cond
  %used.0.lcssa = phi i8 [ %used.0, %for.cond ], !dbg !2579
  call void @llvm.dbg.value(metadata i8 %used.0.lcssa, metadata !2566, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 %used.0.lcssa, metadata !2566, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 %used.0.lcssa, metadata !2566, metadata !DIExpression()), !dbg !2579
  %tobool17 = icmp eq i8 %used.0.lcssa, 0, !dbg !2613
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !2615

if.then18:                                        ; preds = %for.end16
  call void @mark_sym_for_renaming(%union.tree_node* %6) #6, !dbg !2616
  br label %if.end19, !dbg !2616

if.end19:                                         ; preds = %for.end16, %if.then18
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #7, !dbg !2617
  ret void, !dbg !2617
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2618 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2623, metadata !DIExpression()), !dbg !2624
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !2625
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !2625
  ret %union.tree_node* %0, !dbg !2626
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !2627 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2633, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2634, metadata !DIExpression()), !dbg !2635
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2636
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !2637
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !2638
  store i40* %imm_uses, i40** %0, align 8, !dbg !2638
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !2639
  %1 = bitcast i40* %next to i64*, !dbg !2639
  %2 = load i64, i64* %1, align 8, !dbg !2639
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !2640
  store i64 %2, i64* %3, align 8, !dbg !2640
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !2641
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next_imm_name, align 8, !dbg !2642
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !2643
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2644
  %next3 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 1, !dbg !2645
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next3, align 8, !dbg !2646
  %stmt = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 2, i32 0, !dbg !2647
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %stmt, align 8, !dbg !2648
  %use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 3, !dbg !2649
  store %union.tree_node** null, %union.tree_node*** %use, align 8, !dbg !2650
  %call = tail call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) #8, !dbg !2651
  %tobool = icmp eq i8 %call, 0, !dbg !2651
  br i1 %tobool, label %if.end, label %return, !dbg !2653

if.end:                                           ; preds = %entry
  %imm_use6 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2654
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use6, align 8, !dbg !2654
  tail call fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %4, %struct.immediate_use_iterator_d* %imm) #8, !dbg !2655
  %5 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use6, align 8, !dbg !2656
  %stmt9 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %5, i64 0, i32 2, i32 0, !dbg !2656
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt9, align 8, !dbg !2656
  br label %return, !dbg !2657

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.end ], [ null, %entry ], !dbg !2635
  ret %union.gimple_statement_d* %retval.0, !dbg !2658
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !2659 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2665, metadata !DIExpression()), !dbg !2666
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2667
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !2667
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !2668
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !2668
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !2669
  %conv1 = zext i1 %cmp to i8, !dbg !2670
  ret i8 %conv1, !dbg !2671
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @first_imm_use_on_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !2672 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2676, metadata !DIExpression()), !dbg !2677
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2678
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !2678
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !2679
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !2679
  %2 = load i64, i64* %1, align 8, !dbg !2679
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !2680
  %3 = bitcast %struct.ssa_use_operand_d** %next_imm_name to i64*, !dbg !2681
  store i64 %2, i64* %3, align 8, !dbg !2681
  ret %struct.ssa_use_operand_d* %0, !dbg !2682
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !2683 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2685, metadata !DIExpression()), !dbg !2686
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2687
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !2687
  %iter_node = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !2688
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %iter_node, !dbg !2689
  %conv1 = zext i1 %cmp to i8, !dbg !2690
  ret i8 %conv1, !dbg !2691
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) unnamed_addr #0 !dbg !2692 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !2696, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !2697, metadata !DIExpression()), !dbg !2698
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use) #8, !dbg !2699
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !2700
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !2700
  store %union.tree_node* %val, %union.tree_node** %0, align 8, !dbg !2701
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) #8, !dbg !2702
  ret void, !dbg !2703
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @next_imm_use_on_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !2704 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2706, metadata !DIExpression()), !dbg !2707
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !2708
  %0 = bitcast %struct.ssa_use_operand_d** %next_imm_name to i64*, !dbg !2708
  %1 = load i64, i64* %0, align 8, !dbg !2708
  %2 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !2709
  store i64 %1, i64* %2, align 8, !dbg !2709
  %call = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(%struct.immediate_use_iterator_d* %imm) #8, !dbg !2710
  %tobool = icmp eq i8 %call, 0, !dbg !2710
  br i1 %tobool, label %if.else, label %return, !dbg !2712

if.else:                                          ; preds = %entry
  %imm_use1 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2713
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use1, align 8, !dbg !2713
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 1, !dbg !2715
  %4 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !2715
  %5 = load i64, i64* %4, align 8, !dbg !2715
  store i64 %5, i64* %0, align 8, !dbg !2716
  br label %return, !dbg !2717

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi %struct.ssa_use_operand_d* [ %3, %if.else ], [ null, %entry ], !dbg !2718
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !2719
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !2720 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !2722, metadata !DIExpression()), !dbg !2723
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #8, !dbg !2724
  %tobool = icmp eq i8 %call, 0, !dbg !2724
  br i1 %tobool, label %if.end, label %if.then, !dbg !2726

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !2727
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !2729
  br label %if.end, !dbg !2730

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2731
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !2732 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2736, metadata !DIExpression()), !dbg !2737
  %next = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 1, !dbg !2738
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !2738
  %1 = load i64, i64* %0, align 8, !dbg !2738
  %2 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !2739
  store i64 %1, i64* %2, align 8, !dbg !2739
  %call = tail call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) #8, !dbg !2740
  %tobool = icmp eq i8 %call, 0, !dbg !2740
  br i1 %tobool, label %if.end4, label %if.then, !dbg !2742

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !2743
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2743
  %cmp = icmp eq %struct.ssa_use_operand_d* %3, null, !dbg !2746
  br i1 %cmp, label %return, label %if.then2, !dbg !2747

if.then2:                                         ; preds = %if.then
  %iter_node3 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !2748
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node3) #8, !dbg !2749
  br label %return, !dbg !2749

if.end4:                                          ; preds = %entry
  %imm_use5 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !2750
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use5, align 8, !dbg !2750
  tail call fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %4, %struct.immediate_use_iterator_d* %imm) #8, !dbg !2751
  %5 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use5, align 8, !dbg !2752
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %5, i64 0, i32 2, i32 0, !dbg !2752
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2752
  br label %return, !dbg !2753

return:                                           ; preds = %if.then, %if.then2, %if.end4
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.end4 ], [ null, %if.then2 ], [ null, %if.then ], !dbg !2737
  ret %union.gimple_statement_d* %retval.0, !dbg !2754
}

declare dso_local void @mark_sym_for_renaming(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_dce() #5 !dbg !2755 {
entry:
  %0 = load i32, i32* @flag_tree_dce, align 4, !dbg !2756
  %cmp = icmp ne i32 %0, 0, !dbg !2757
  %conv1 = zext i1 %cmp to i8, !dbg !2756
  ret i8 %conv1, !dbg !2758
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_dce() #5 !dbg !2759 {
entry:
  %call = tail call fastcc i32 @perform_tree_ssa_dce(i8 zeroext 0) #8, !dbg !2760
  ret i32 %call, !dbg !2761
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_dce_loop() #5 !dbg !2762 {
entry:
  %call = tail call fastcc i32 @perform_tree_ssa_dce(i8 zeroext 0) #8, !dbg !2765
  call void @llvm.dbg.value(metadata i32 %call, metadata !2764, metadata !DIExpression()), !dbg !2766
  %tobool = icmp eq i32 %call, 0, !dbg !2767
  br i1 %tobool, label %if.end, label %if.then, !dbg !2769

if.then:                                          ; preds = %entry
  tail call void @free_numbers_of_iterations_estimates() #6, !dbg !2770
  tail call void @scev_reset() #6, !dbg !2772
  br label %if.end, !dbg !2773

if.end:                                           ; preds = %entry, %if.then
  ret i32 %call, !dbg !2774
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_cd_dce() #5 !dbg !2775 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2776
  %cmp = icmp sgt i32 %0, 1, !dbg !2777
  %conv1 = zext i1 %cmp to i8, !dbg !2776
  %call = tail call fastcc i32 @perform_tree_ssa_dce(i8 zeroext %conv1) #8, !dbg !2778
  ret i32 %call, !dbg !2779
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %head, %struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !2780 {
entry:
  %op_iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !2784, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !2785, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !2787, metadata !DIExpression()), !dbg !2804
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %head, i64 0, i32 2, i32 0, !dbg !2805
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2805
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !2788, metadata !DIExpression()), !dbg !2804
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %head) #8, !dbg !2806
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2789, metadata !DIExpression()), !dbg !2804
  %1 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %op_iter, i64 0, i32 0, !dbg !2807
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #7, !dbg !2807
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !2808
  %tobool = icmp eq i8 %call1, 0, !dbg !2808
  %cond = select i1 %tobool, i32 4, i32 1, !dbg !2808
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2803, metadata !DIExpression()), !dbg !2804
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %0) #8, !dbg !2809
  %cmp = icmp eq i32 %call2, 16, !dbg !2811
  br i1 %cmp, label %if.then, label %if.else, !dbg !2812

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !2790, metadata !DIExpression(DW_OP_deref)), !dbg !2804
  %call4 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %0, i32 %cond) #8, !dbg !2813
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call4, metadata !2786, metadata !DIExpression()), !dbg !2804
  br label %for.cond, !dbg !2813

for.cond:                                         ; preds = %for.inc, %if.then
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call4, %if.then ], [ %call12, %for.inc ], !dbg !2816
  %last_p.0 = phi %struct.ssa_use_operand_d* [ %head, %if.then ], [ %last_p.1, %for.inc ], !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0, metadata !2787, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !2786, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !2790, metadata !DIExpression(DW_OP_deref)), !dbg !2804
  %call5 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !2817
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2817
  br i1 %tobool6, label %for.body, label %if.end44.loopexit, !dbg !2813

for.body:                                         ; preds = %for.cond
  %call7 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0) #8, !dbg !2819
  %cmp8 = icmp eq %union.tree_node* %call7, %call, !dbg !2821
  br i1 %cmp8, label %if.then10, label %for.inc, !dbg !2822

if.then10:                                        ; preds = %for.body
  %call11 = call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p.0, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p.0) #8, !dbg !2823
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call11, metadata !2787, metadata !DIExpression()), !dbg !2804
  br label %for.inc, !dbg !2824

for.inc:                                          ; preds = %for.body, %if.then10
  %last_p.1 = phi %struct.ssa_use_operand_d* [ %call11, %if.then10 ], [ %last_p.0, %for.body ], !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.1, metadata !2787, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !2790, metadata !DIExpression(DW_OP_deref)), !dbg !2804
  %call12 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !2817
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call12, metadata !2786, metadata !DIExpression()), !dbg !2804
  br label %for.cond, !dbg !2817, !llvm.loop !2825

if.else:                                          ; preds = %entry
  br i1 %tobool, label %if.else31, label %if.then15, !dbg !2827

if.then15:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !2790, metadata !DIExpression(DW_OP_deref)), !dbg !2804
  %call16 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %0, i32 %cond) #8, !dbg !2829
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call16, metadata !2786, metadata !DIExpression()), !dbg !2804
  br label %for.cond17, !dbg !2829

for.cond17:                                       ; preds = %for.inc28, %if.then15
  %use_p.1 = phi %struct.ssa_use_operand_d* [ %call16, %if.then15 ], [ %call29, %for.inc28 ], !dbg !2833
  %last_p.2 = phi %struct.ssa_use_operand_d* [ %head, %if.then15 ], [ %last_p.3, %for.inc28 ], !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2, metadata !2787, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.1, metadata !2786, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !2790, metadata !DIExpression(DW_OP_deref)), !dbg !2804
  %call18 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !2834
  %tobool19 = icmp eq i8 %call18, 0, !dbg !2834
  br i1 %tobool19, label %for.body21, label %if.end44.loopexit1, !dbg !2829

for.body21:                                       ; preds = %for.cond17
  %call22 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.1) #8, !dbg !2836
  %cmp23 = icmp eq %union.tree_node* %call22, %call, !dbg !2838
  br i1 %cmp23, label %if.then25, label %for.inc28, !dbg !2839

if.then25:                                        ; preds = %for.body21
  %call26 = call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p.1, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p.2) #8, !dbg !2840
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call26, metadata !2787, metadata !DIExpression()), !dbg !2804
  br label %for.inc28, !dbg !2841

for.inc28:                                        ; preds = %for.body21, %if.then25
  %last_p.3 = phi %struct.ssa_use_operand_d* [ %call26, %if.then25 ], [ %last_p.2, %for.body21 ], !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.3, metadata !2787, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !2790, metadata !DIExpression(DW_OP_deref)), !dbg !2804
  %call29 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %op_iter) #8, !dbg !2834
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call29, metadata !2786, metadata !DIExpression()), !dbg !2804
  br label %for.cond17, !dbg !2834, !llvm.loop !2842

if.else31:                                        ; preds = %if.else
  %call32 = tail call fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %0) #8, !dbg !2844
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call32, metadata !2786, metadata !DIExpression()), !dbg !2804
  %cmp33 = icmp eq %struct.ssa_use_operand_d* %call32, null, !dbg !2846
  br i1 %cmp33, label %if.end44, label %if.then35, !dbg !2847

if.then35:                                        ; preds = %if.else31
  %call36 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %call32) #8, !dbg !2848
  %cmp37 = icmp eq %union.tree_node* %call36, %call, !dbg !2851
  br i1 %cmp37, label %if.then39, label %if.end44, !dbg !2852

if.then39:                                        ; preds = %if.then35
  %call40 = tail call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* nonnull %call32, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %head) #8, !dbg !2853
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call40, metadata !2787, metadata !DIExpression()), !dbg !2804
  br label %if.end44, !dbg !2854

if.end44.loopexit:                                ; preds = %for.cond
  %last_p.0.lcssa = phi %struct.ssa_use_operand_d* [ %last_p.0, %for.cond ], !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !2787, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !2787, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !2787, metadata !DIExpression()), !dbg !2804
  br label %if.end44, !dbg !2855

if.end44.loopexit1:                               ; preds = %for.cond17
  %last_p.2.lcssa = phi %struct.ssa_use_operand_d* [ %last_p.2, %for.cond17 ], !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !2787, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !2787, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !2787, metadata !DIExpression()), !dbg !2804
  br label %if.end44, !dbg !2855

if.end44:                                         ; preds = %if.end44.loopexit1, %if.end44.loopexit, %if.else31, %if.then35, %if.then39
  %last_p.7 = phi %struct.ssa_use_operand_d* [ %head, %if.else31 ], [ %call40, %if.then39 ], [ %head, %if.then35 ], [ %last_p.0.lcssa, %if.end44.loopexit ], [ %last_p.2.lcssa, %if.end44.loopexit1 ], !dbg !2857
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.7, metadata !2787, metadata !DIExpression()), !dbg !2804
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !2855
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2855
  %cmp45 = icmp eq %struct.ssa_use_operand_d* %2, null, !dbg !2858
  br i1 %cmp45, label %if.end49, label %if.then47, !dbg !2859

if.then47:                                        ; preds = %if.end44
  %iter_node48 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !2860
  call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node48) #8, !dbg !2861
  br label %if.end49, !dbg !2861

if.end49:                                         ; preds = %if.end44, %if.then47
  %iter_node50 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !2862
  call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* nonnull %iter_node50, %struct.ssa_use_operand_d* %last_p.7) #8, !dbg !2863
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #7, !dbg !2864
  ret void, !dbg !2864
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !2865 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !2869, metadata !DIExpression()), !dbg !2870
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !2871
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !2871
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2872
  ret %union.tree_node* %1, !dbg !2873
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2874 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2878, metadata !DIExpression()), !dbg !2879
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2880
  %bf.load = load i32, i32* %0, align 8, !dbg !2880
  %bf.clear = and i32 %bf.load, 255, !dbg !2880
  ret i32 %bf.clear, !dbg !2881
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %phi, i32 %flags) unnamed_addr #0 !dbg !2882 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2887, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !2888, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2889, metadata !DIExpression()), !dbg !2892
  %call = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #8, !dbg !2893
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2890, metadata !DIExpression()), !dbg !2892
  tail call fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !2894
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2895
  store i8 0, i8* %done, align 8, !dbg !2896
  %and = and i32 %flags, 5, !dbg !2897
  %cmp = icmp eq i32 %and, 0, !dbg !2897
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2897

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 918, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2897
  br label %cond.end, !dbg !2897

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !2898
  %tobool = icmp eq i8 %call1, 0, !dbg !2898
  %cond2 = select i1 %tobool, i32 4, i32 1, !dbg !2898
  call void @llvm.dbg.value(metadata i32 %cond2, metadata !2891, metadata !DIExpression()), !dbg !2892
  %and3 = and i32 %cond2, %flags, !dbg !2899
  %cmp4 = icmp eq i32 %and3, 0, !dbg !2901
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2902

if.then:                                          ; preds = %cond.end
  store i8 1, i8* %done, align 8, !dbg !2903
  br label %cleanup, !dbg !2905

if.end:                                           ; preds = %cond.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !2906
  store %union.gimple_statement_d* %phi, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !2907
  %call7 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #8, !dbg !2908
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !2909
  store i32 %call7, i32* %num_phi, align 4, !dbg !2910
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !2911
  store i32 2, i32* %iter_type, align 4, !dbg !2912
  %call8 = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !2913
  br label %cleanup, !dbg !2914

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ null, %if.then ], [ %call8, %if.end ], !dbg !2892
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !2915
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2916 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2922, metadata !DIExpression()), !dbg !2923
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2924
  %0 = load i8, i8* %done, align 8, !dbg !2924
  ret i8 %0, !dbg !2925
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p) unnamed_addr #0 !dbg !2926 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !2930, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !2931, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p, metadata !2932, metadata !DIExpression()), !dbg !2933
  %cmp = icmp eq %struct.ssa_use_operand_d* %use_p, %head, !dbg !2934
  br i1 %cmp, label %if.end3, label %if.then, !dbg !2936

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %last_p, i64 0, i32 1, !dbg !2937
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !2937
  %cmp1 = icmp eq %struct.ssa_use_operand_d* %0, %use_p, !dbg !2940
  br i1 %cmp1, label %if.end3, label %if.else, !dbg !2941

if.else:                                          ; preds = %if.then
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use_p) #8, !dbg !2942
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %use_p, %struct.ssa_use_operand_d* %last_p) #8, !dbg !2944
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !2932, metadata !DIExpression()), !dbg !2933
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.else, %if.then
  %last_p.addr.1 = phi %struct.ssa_use_operand_d* [ %last_p, %entry ], [ %use_p, %if.then ], [ %use_p, %if.else ]
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.addr.1, metadata !2932, metadata !DIExpression()), !dbg !2933
  ret %struct.ssa_use_operand_d* %last_p.addr.1, !dbg !2945
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2946 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2950, metadata !DIExpression()), !dbg !2952
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !2953
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !2953
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !2955
  br i1 %tobool, label %if.end, label %if.then, !dbg !2956

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !2957
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !2951, metadata !DIExpression()), !dbg !2952
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !2959
  %2 = load i64, i64* %1, align 8, !dbg !2959
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !2960
  store i64 %2, i64* %3, align 8, !dbg !2960
  br label %cleanup, !dbg !2961

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !2962
  %4 = load i32, i32* %phi_i, align 8, !dbg !2962
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !2964
  %5 = load i32, i32* %num_phi, align 4, !dbg !2964
  %cmp = icmp slt i32 %4, %5, !dbg !2965
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !2966

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !2967
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !2967
  %inc = add nsw i32 %4, 1, !dbg !2967
  store i32 %inc, i32* %phi_i, align 8, !dbg !2967
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #8, !dbg !2967
  br label %cleanup, !dbg !2969

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2970
  store i8 1, i8* %done, align 8, !dbg !2971
  br label %cleanup, !dbg !2972

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !2952
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !2973
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !2974 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2976, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2977, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2978, metadata !DIExpression()), !dbg !2979
  %0 = and i32 %flags, 11, !dbg !2980
  %1 = icmp eq i32 %0, 1, !dbg !2980
  br i1 %1, label %cond.end, label %cond.true, !dbg !2980

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 771, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2980
  br label %cond.end, !dbg !2980

cond.end:                                         ; preds = %entry, %cond.true
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) #8, !dbg !2981
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !2982
  store i32 2, i32* %iter_type, align 4, !dbg !2983
  %call = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !2984
  ret %struct.ssa_use_operand_d* %call, !dbg !2985
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2986 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2990, metadata !DIExpression()), !dbg !2992
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !2993
  %tobool = icmp eq i8 %call, 0, !dbg !2993
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2995

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !2996
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !2996
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !2996
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %1, metadata !2991, metadata !DIExpression()), !dbg !2992
  %tobool1 = icmp eq %struct.use_optype_d* %1, null, !dbg !2997
  br i1 %tobool1, label %cleanup, label %land.lhs.true, !dbg !2999

land.lhs.true:                                    ; preds = %if.end
  %use = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %1, i64 0, i32 1, i32 3, !dbg !3000
  %2 = load %union.tree_node**, %union.tree_node*** %use, align 8, !dbg !3000
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !3001
  %3 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !3001
  %cmp = icmp eq %union.tree_node** %2, %3, !dbg !3002
  %use_ptr3 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %1, i64 0, i32 1, !dbg !3003
  %spec.select = select i1 %cmp, %struct.ssa_use_operand_d* %use_ptr3, %struct.ssa_use_operand_d* null, !dbg !3004
  ret %struct.ssa_use_operand_d* %spec.select, !dbg !3004

cleanup:                                          ; preds = %if.end, %entry
  ret %struct.ssa_use_operand_d* null, !dbg !3005
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !3006 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3010, metadata !DIExpression()), !dbg !3011
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3012
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3012
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !3014
  br i1 %cmp, label %return, label %if.end, !dbg !3015

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !3016
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3016
  %2 = load i64, i64* %1, align 8, !dbg !3016
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !3017
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !3018
  store i64 %2, i64* %3, align 8, !dbg !3018
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !3019
  %5 = load i64, i64* %4, align 8, !dbg !3019
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !3020
  %7 = load i64*, i64** %6, align 8, !dbg !3020
  store i64 %5, i64* %7, align 8, !dbg !3021
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3022
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !3023
  br label %return, !dbg !3024

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !3024
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !3025 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3029, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !3030, metadata !DIExpression()), !dbg !3031
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3032
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3033
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !3034
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3034
  %1 = load i64, i64* %0, align 8, !dbg !3034
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !3035
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !3036
  store i64 %1, i64* %2, align 8, !dbg !3036
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !3037
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !3038
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !3039
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !3040
  ret void, !dbg !3041
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3042 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3046, metadata !DIExpression()), !dbg !3047
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3048
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !3049
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3050
  store %struct.use_optype_d* null, %struct.use_optype_d** %uses, align 8, !dbg !3051
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3052
  store i32 0, i32* %iter_type, align 4, !dbg !3053
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3054
  store i32 0, i32* %phi_i, align 8, !dbg !3055
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3056
  store i32 0, i32* %num_phi, align 4, !dbg !3057
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3058
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3059
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3060
  store i8 1, i8* %done, align 8, !dbg !3061
  ret void, !dbg !3062
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3063 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3067, metadata !DIExpression()), !dbg !3068
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !3069
  %0 = load i32, i32* %nargs, align 4, !dbg !3069
  ret i32 %0, !dbg !3070
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3071 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3075, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 %i, metadata !3076, metadata !DIExpression()), !dbg !3077
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #8, !dbg !3078
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3079
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3080
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3081 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3086, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i32 %index, metadata !3087, metadata !DIExpression()), !dbg !3088
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3089
  %0 = load i32, i32* %capacity, align 8, !dbg !3089
  %cmp = icmp ult i32 %0, %index, !dbg !3089
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3089

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3089
  br label %cond.end, !dbg !3089

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3090
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3090
  ret %struct.phi_arg_d* %arrayidx, !dbg !3091
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3092 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3096, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3097, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3098, metadata !DIExpression()), !dbg !3099
  %0 = and i32 %flags, 10, !dbg !3100
  %1 = icmp eq i32 %0, 8, !dbg !3100
  br i1 %1, label %cond.true, label %land.lhs.true, !dbg !3100

land.lhs.true:                                    ; preds = %entry
  %2 = and i32 %flags, 5, !dbg !3100
  %3 = icmp eq i32 %2, 4, !dbg !3100
  br i1 %3, label %cond.true, label %cond.end, !dbg !3100

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3100
  br label %cond.end, !dbg !3100

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %tobool9 = icmp eq i32 %0, 0, !dbg !3101
  br i1 %tobool9, label %cond.end12, label %cond.true10, !dbg !3102

cond.true10:                                      ; preds = %cond.end
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #8, !dbg !3103
  br label %cond.end12, !dbg !3102

cond.end12:                                       ; preds = %cond.end, %cond.true10
  %4 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ null, %cond.end ], !dbg !3102
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3104
  store %struct.def_optype_d* %4, %struct.def_optype_d** %defs, align 8, !dbg !3105
  %and14 = and i32 %flags, 8, !dbg !3106
  %tobool15 = icmp eq i32 %and14, 0, !dbg !3106
  br i1 %tobool15, label %land.lhs.true16, label %if.end, !dbg !3108

land.lhs.true16:                                  ; preds = %cond.end12
  %tobool18 = icmp eq %struct.def_optype_d* %4, null, !dbg !3109
  br i1 %tobool18, label %if.end, label %land.lhs.true19, !dbg !3110

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #8, !dbg !3111
  %cmp = icmp eq %union.tree_node* %call20, null, !dbg !3112
  br i1 %cmp, label %if.end, label %if.then, !dbg !3113

if.then:                                          ; preds = %land.lhs.true19
  %5 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !3114
  %6 = load i64*, i64** %5, align 8, !dbg !3114
  %7 = load i64, i64* %6, align 8, !dbg !3115
  %8 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !3116
  store i64 %7, i64* %8, align 8, !dbg !3116
  br label %if.end, !dbg !3117

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true16, %cond.end12, %if.then
  %and23 = and i32 %flags, 5, !dbg !3118
  %tobool24 = icmp eq i32 %and23, 0, !dbg !3118
  br i1 %tobool24, label %cond.end28, label %cond.true25, !dbg !3119

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #8, !dbg !3120
  br label %cond.end28, !dbg !3119

cond.end28:                                       ; preds = %if.end, %cond.true25
  %9 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ null, %if.end ], !dbg !3119
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3121
  store %struct.use_optype_d* %9, %struct.use_optype_d** %uses, align 8, !dbg !3122
  %and30 = and i32 %flags, 4, !dbg !3123
  %tobool31 = icmp eq i32 %and30, 0, !dbg !3123
  br i1 %tobool31, label %land.lhs.true32, label %if.end42, !dbg !3125

land.lhs.true32:                                  ; preds = %cond.end28
  %tobool34 = icmp eq %struct.use_optype_d* %9, null, !dbg !3126
  br i1 %tobool34, label %if.end42, label %land.lhs.true35, !dbg !3127

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %call36 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #8, !dbg !3128
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !3129
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !3130

if.then38:                                        ; preds = %land.lhs.true35
  %10 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !3131
  %11 = load i64*, i64** %10, align 8, !dbg !3131
  %12 = load i64, i64* %11, align 8, !dbg !3132
  %13 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3133
  store i64 %12, i64* %13, align 8, !dbg !3133
  br label %if.end42, !dbg !3134

if.end42:                                         ; preds = %land.lhs.true35, %land.lhs.true32, %cond.end28, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3135
  store i8 0, i8* %done, align 8, !dbg !3136
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3137
  store i32 0, i32* %phi_i, align 8, !dbg !3138
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3139
  store i32 0, i32* %num_phi, align 4, !dbg !3140
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3141
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3142
  ret void, !dbg !3143
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3144 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3148, metadata !DIExpression()), !dbg !3149
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #8, !dbg !3150
  %tobool = icmp eq i8 %call, 0, !dbg !3150
  br i1 %tobool, label %return, label %if.end, !dbg !3152

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !3153
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !3153
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !3153
  br label %return, !dbg !3154

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3149
  ret %struct.def_optype_d* %retval.0, !dbg !3155
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3156 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3158, metadata !DIExpression()), !dbg !3159
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !3160
  %tobool = icmp eq i8 %call, 0, !dbg !3160
  br i1 %tobool, label %return, label %if.end, !dbg !3162

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !3163
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !3163
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3163
  br label %return, !dbg !3164

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3159
  ret %union.tree_node* %retval.0, !dbg !3165
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3166 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3170, metadata !DIExpression()), !dbg !3171
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #8, !dbg !3172
  %tobool = icmp eq i8 %call, 0, !dbg !3172
  br i1 %tobool, label %return, label %if.end, !dbg !3174

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !3175
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !3175
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !3175
  br label %return, !dbg !3176

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3171
  ret %struct.use_optype_d* %retval.0, !dbg !3177
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3178 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3180, metadata !DIExpression()), !dbg !3181
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !3182
  %tobool = icmp eq i8 %call, 0, !dbg !3182
  br i1 %tobool, label %return, label %if.end, !dbg !3184

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !3185
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !3185
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3185
  br label %return, !dbg !3186

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3181
  ret %union.tree_node* %retval.0, !dbg !3187
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3188 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3192, metadata !DIExpression()), !dbg !3193
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3194
  %cmp = icmp eq i32 %call, 0, !dbg !3195
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3196

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3197
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3198
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3199
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3200 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3202, metadata !DIExpression()), !dbg !3203
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3204
  %cmp = icmp ugt i32 %call, 5, !dbg !3205
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3206

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3207
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3208
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3209
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* %def) unnamed_addr #0 !dbg !3210 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !3214, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !3215, metadata !DIExpression()), !dbg !3217
  %tobool = icmp eq %union.tree_node* %def, null, !dbg !3218
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3220

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3221
  %bf.load = load i64, i64* %0, align 8, !dbg !3221
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3222
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3222
  br i1 %cmp, label %if.else, label %if.then, !dbg !3223

if.then:                                          ; preds = %lor.lhs.false, %entry
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !3224
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3225
  br label %if.end, !dbg !3226

if.else:                                          ; preds = %lor.lhs.false
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3227
  %1 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !3227
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %1, metadata !3216, metadata !DIExpression()), !dbg !3217
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* nonnull %1) #8, !dbg !3229
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3230
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @perform_tree_ssa_dce(i8 zeroext %aggressive) unnamed_addr #5 !dbg !3231 {
entry:
  call void @llvm.dbg.value(metadata i8 %aggressive, metadata !3235, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata %struct.edge_list* null, metadata !3236, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8 0, metadata !3244, metadata !DIExpression()), !dbg !3245
  %tobool = icmp eq i8 %aggressive, 0, !dbg !3246
  br i1 %tobool, label %if.end, label %if.then, !dbg !3248

if.then:                                          ; preds = %entry
  tail call void @loop_optimizer_init(i32 15) #6, !dbg !3249
  br label %if.end, !dbg !3249

if.end:                                           ; preds = %entry, %if.then
  tail call fastcc void @tree_dce_init(i8 zeroext %aggressive) #8, !dbg !3250
  br i1 %tobool, label %if.end14, label %do.body, !dbg !3251

do.body:                                          ; preds = %if.end
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !3252
  %tobool3 = icmp eq i8 %0, 0, !dbg !3252
  br i1 %tobool3, label %do.end, label %if.then4, !dbg !3257

if.then4:                                         ; preds = %do.body
  tail call void @timevar_push_1(i32 113) #6, !dbg !3252
  br label %do.end, !dbg !3252

do.end:                                           ; preds = %do.body, %if.then4
  tail call void @calculate_dominance_info(i32 2) #6, !dbg !3258
  %call = tail call %struct.edge_list* @create_edge_list() #6, !dbg !3259
  call void @llvm.dbg.value(metadata %struct.edge_list* %call, metadata !3236, metadata !DIExpression()), !dbg !3245
  tail call fastcc void @find_all_control_dependences(%struct.edge_list* %call) #8, !dbg !3260
  %1 = load i8, i8* @timevar_enable, align 1, !dbg !3261
  %tobool7 = icmp eq i8 %1, 0, !dbg !3261
  br i1 %tobool7, label %do.end11, label %if.then8, !dbg !3264

if.then8:                                         ; preds = %do.end
  tail call void @timevar_pop_1(i32 113) #6, !dbg !3261
  br label %do.end11, !dbg !3261

do.end11:                                         ; preds = %do.end, %if.then8
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3265
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3265
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3265
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 5, !dbg !3265
  %4 = load i32, i32* %x_last_basic_block, align 8, !dbg !3265
  %call12 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %4) #6, !dbg !3266
  store %struct.simple_bitmap_def* %call12, %struct.simple_bitmap_def** @visited_control_parents, align 8, !dbg !3267
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call12) #6, !dbg !3268
  %call13 = tail call zeroext i8 @mark_dfs_back_edges() #6, !dbg !3269
  br label %if.end14, !dbg !3270

if.end14:                                         ; preds = %if.end, %do.end11
  %el.0 = phi %struct.edge_list* [ %call, %do.end11 ], [ null, %if.end ], !dbg !3245
  call void @llvm.dbg.value(metadata %struct.edge_list* %el.0, metadata !3236, metadata !DIExpression()), !dbg !3245
  tail call fastcc void @find_obviously_necessary_stmts(%struct.edge_list* %el.0) #8, !dbg !3271
  br i1 %tobool, label %if.end17, label %if.then16, !dbg !3272

if.then16:                                        ; preds = %if.end14
  tail call void @loop_optimizer_finalize() #6, !dbg !3273
  br label %if.end17, !dbg !3273

if.end17:                                         ; preds = %if.end14, %if.then16
  store i32 0, i32* @longest_chain, align 4, !dbg !3275
  store i32 0, i32* @total_chain, align 4, !dbg !3276
  store i32 0, i32* @nr_walks, align 4, !dbg !3277
  store i1 false, i1* @chain_ovfl, align 1, !dbg !3278
  %call18 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3279
  store %struct.bitmap_head_def* %call18, %struct.bitmap_head_def** @visited, align 8, !dbg !3280
  tail call fastcc void @propagate_necessity(%struct.edge_list* %el.0) #8, !dbg !3281
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @visited, align 8, !dbg !3282
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %5) #6, !dbg !3282
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @visited, align 8, !dbg !3282
  %call19 = tail call fastcc zeroext i8 @eliminate_unnecessary_stmts() #8, !dbg !3283
  call void @llvm.dbg.value(metadata i8 %call19, metadata !3244, metadata !DIExpression()), !dbg !3245
  %.b2 = load i1, i1* @cfg_altered, align 1, !dbg !3284
  %6 = zext i1 %.b2 to i8, !dbg !3284
  %or241 = or i8 %call19, %6, !dbg !3285
  call void @llvm.dbg.value(metadata i8 %or241, metadata !3244, metadata !DIExpression()), !dbg !3245
  tail call void @free_dominance_info(i32 2) #6, !dbg !3286
  %.b = load i1, i1* @cfg_altered, align 1, !dbg !3287
  br i1 %.b, label %if.then27, label %if.end28, !dbg !3289

if.then27:                                        ; preds = %if.end17
  tail call void @free_dominance_info(i32 1) #6, !dbg !3290
  br label %if.end28, !dbg !3290

if.end28:                                         ; preds = %if.end17, %if.then27
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3291
  %8 = load i32, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 2), align 4, !dbg !3292
  tail call void @statistics_counter_event(%struct.function* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %8) #6, !dbg !3293
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3294
  %10 = load i32, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 3), align 4, !dbg !3295
  tail call void @statistics_counter_event(%struct.function* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %10) #6, !dbg !3296
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3297
  %tobool31 = icmp eq %struct._IO_FILE* %11, null, !dbg !3297
  br i1 %tobool31, label %if.end34, label %land.lhs.true, !dbg !3299

land.lhs.true:                                    ; preds = %if.end28
  %12 = load i32, i32* @dump_flags, align 4, !dbg !3300
  %and = and i32 %12, 24, !dbg !3301
  %tobool32 = icmp eq i32 %and, 0, !dbg !3301
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !3302

if.then33:                                        ; preds = %land.lhs.true
  tail call fastcc void @print_stats() #8, !dbg !3303
  br label %if.end34, !dbg !3303

if.end34:                                         ; preds = %land.lhs.true, %if.end28, %if.then33
  tail call fastcc void @tree_dce_done(i8 zeroext %aggressive) #8, !dbg !3304
  tail call void @free_edge_list(%struct.edge_list* %el.0) #6, !dbg !3305
  %tobool35 = icmp eq i8 %or241, 0, !dbg !3306
  %. = select i1 %tobool35, i32 0, i32 34850, !dbg !3308
  ret i32 %., !dbg !3309
}

declare dso_local void @loop_optimizer_init(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @tree_dce_init(i8 zeroext %aggressive) unnamed_addr #5 !dbg !3310 {
entry:
  call void @llvm.dbg.value(metadata i8 %aggressive, metadata !3314, metadata !DIExpression()), !dbg !3318
  %call = tail call i8* @memset(i8* bitcast (%struct.stmt_stats* @stats to i8*), i32 0, i64 16) #6, !dbg !3319
  %tobool = icmp eq i8 %aggressive, 0, !dbg !3320
  br i1 %tobool, label %if.end, label %if.then, !dbg !3321

if.then:                                          ; preds = %entry
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3322
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3322
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3322
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !3322
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !3322
  %conv = sext i32 %2 to i64, !dbg !3322
  %mul = shl nsw i64 %conv, 3, !dbg !3322
  %call1 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3322
  store i8* %call1, i8** bitcast (%struct.bitmap_head_def*** @control_dependence_map to i8**), align 8, !dbg !3323
  call void @llvm.dbg.value(metadata i32 0, metadata !3315, metadata !DIExpression()), !dbg !3324
  br label %for.cond, !dbg !3325

for.cond:                                         ; preds = %for.body, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ], !dbg !3327
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3315, metadata !DIExpression()), !dbg !3324
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3328
  %cfg3 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3328
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3, align 8, !dbg !3328
  %x_last_basic_block4 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 5, !dbg !3328
  %5 = load i32, i32* %x_last_basic_block4, align 8, !dbg !3328
  %6 = sext i32 %5 to i64, !dbg !3330
  %cmp = icmp slt i64 %indvars.iv, %6, !dbg !3330
  br i1 %cmp, label %for.body, label %for.end, !dbg !3331

for.body:                                         ; preds = %for.cond
  %call6 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3332
  %7 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** @control_dependence_map, align 8, !dbg !3333
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %7, i64 %indvars.iv, !dbg !3333
  store %struct.bitmap_head_def* %call6, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3334
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3335
  call void @llvm.dbg.value(metadata i32 undef, metadata !3315, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3324
  br label %for.cond, !dbg !3336, !llvm.loop !3337

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i32 [ %5, %for.cond ], !dbg !3328
  %call10 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %.lcssa) #6, !dbg !3339
  store %struct.simple_bitmap_def* %call10, %struct.simple_bitmap_def** @last_stmt_necessary, align 8, !dbg !3340
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call10) #6, !dbg !3341
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3342
  %cfg12 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !3342
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg12, align 8, !dbg !3342
  %x_last_basic_block13 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 5, !dbg !3342
  %10 = load i32, i32* %x_last_basic_block13, align 8, !dbg !3342
  %call14 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %10) #6, !dbg !3343
  store %struct.simple_bitmap_def* %call14, %struct.simple_bitmap_def** @bb_contains_live_stmts, align 8, !dbg !3344
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call14) #6, !dbg !3345
  br label %if.end, !dbg !3346

if.end:                                           ; preds = %entry, %for.end
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3347
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 3, !dbg !3347
  %12 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3347
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %12, i64 0, i32 2, !dbg !3347
  %13 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !3347
  %tobool16 = icmp eq %struct.VEC_tree_gc* %13, null, !dbg !3347
  br i1 %tobool16, label %cond.end, label %cond.true, !dbg !3347

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %13, i64 0, i32 0, !dbg !3347
  br label %cond.end, !dbg !3347

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !3347
  %call20 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #8, !dbg !3347
  %add = add i32 %call20, 1, !dbg !3348
  %call21 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %add) #6, !dbg !3349
  store %struct.simple_bitmap_def* %call21, %struct.simple_bitmap_def** @processed, align 8, !dbg !3350
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call21) #6, !dbg !3351
  %call22 = tail call fastcc %struct.VEC_gimple_heap* @VEC_gimple_heap_alloc(i32 64) #8, !dbg !3352
  store %struct.VEC_gimple_heap* %call22, %struct.VEC_gimple_heap** @worklist, align 8, !dbg !3353
  store i1 false, i1* @cfg_altered, align 1, !dbg !3354
  ret void, !dbg !3355
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #2

declare dso_local void @calculate_dominance_info(i32) local_unnamed_addr #2

declare dso_local %struct.edge_list* @create_edge_list() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @find_all_control_dependences(%struct.edge_list* %el) unnamed_addr #5 !dbg !3356 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_list* %el, metadata !3360, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i32 0, metadata !3361, metadata !DIExpression()), !dbg !3362
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %el, i64 0, i32 1, !dbg !3363
  br label %for.cond, !dbg !3366

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3367
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3361, metadata !DIExpression()), !dbg !3362
  %0 = load i32, i32* %num_edges, align 4, !dbg !3368
  %cmp = icmp slt i32 %i.0, %0, !dbg !3369
  br i1 %cmp, label %for.body, label %for.end, !dbg !3370

for.body:                                         ; preds = %for.cond
  tail call fastcc void @find_control_dependence(%struct.edge_list* %el, i32 %i.0) #8, !dbg !3371
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3372
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3361, metadata !DIExpression()), !dbg !3362
  br label %for.cond, !dbg !3373, !llvm.loop !3374

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3376
}

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #2

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #2

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @find_obviously_necessary_stmts(%struct.edge_list* %el) unnamed_addr #5 !dbg !3377 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp6 = alloca %struct.gimple_stmt_iterator, align 8
  %li = alloca %struct.loop_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp46 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_list* %el, metadata !3379, metadata !DIExpression()), !dbg !3411
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3412
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3412
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !3413
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3413
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3414
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3414
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3414
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !3414
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3414
  %5 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3416
  %6 = bitcast %struct.gimple_stmt_iterator* %tmp6 to i8*, !dbg !3420
  %cmp13 = icmp ne %struct.edge_list* %el, null, !dbg !3422
  %conv14 = zext i1 %cmp13 to i8, !dbg !3422
  br label %for.cond, !dbg !3414

for.cond:                                         ; preds = %for.inc17, %entry
  %7 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre3, %for.inc17 ], !dbg !3425
  %.pn = phi %struct.basic_block_def* [ %4, %entry ], [ %bb.0, %for.inc17 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3426
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3426
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3380, metadata !DIExpression()), !dbg !3411
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 1, !dbg !3425
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3425
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %8, !dbg !3425
  br i1 %cmp, label %for.end19, label %for.body, !dbg !3414

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !3427
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #6, !dbg !3427
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !3427
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !3427
  br label %for.cond3, !dbg !3428

for.cond3:                                        ; preds = %for.body4, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3381, metadata !DIExpression(DW_OP_deref)), !dbg !3411
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3429
  %tobool = icmp eq i8 %call, 0, !dbg !3431
  br i1 %tobool, label %for.body4, label %for.end, !dbg !3432

for.body4:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3381, metadata !DIExpression(DW_OP_deref)), !dbg !3411
  %call5 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3433
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !3389, metadata !DIExpression()), !dbg !3411
  call fastcc void @gimple_set_plf(%union.gimple_statement_d* %call5, i32 1, i8 zeroext 0) #8, !dbg !3435
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3381, metadata !DIExpression(DW_OP_deref)), !dbg !3411
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !3436
  br label %for.cond3, !dbg !3437, !llvm.loop !3438

for.end:                                          ; preds = %for.cond3
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #7, !dbg !3440
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp6, %struct.basic_block_def* %bb.0) #8, !dbg !3440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !3440
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7, !dbg !3440
  br label %for.cond7, !dbg !3441

for.cond7:                                        ; preds = %for.body11, %for.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3381, metadata !DIExpression(DW_OP_deref)), !dbg !3411
  %call8 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3442
  %tobool9 = icmp eq i8 %call8, 0, !dbg !3443
  br i1 %tobool9, label %for.body11, label %for.inc17, !dbg !3444

for.body11:                                       ; preds = %for.cond7
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3381, metadata !DIExpression(DW_OP_deref)), !dbg !3411
  %call12 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3445
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call12, metadata !3390, metadata !DIExpression()), !dbg !3411
  call fastcc void @gimple_set_plf(%union.gimple_statement_d* %call12, i32 1, i8 zeroext 0) #8, !dbg !3446
  call fastcc void @mark_stmt_if_obviously_necessary(%union.gimple_statement_d* %call12, i8 zeroext %conv14) #8, !dbg !3447
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3381, metadata !DIExpression(DW_OP_deref)), !dbg !3411
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !3448
  br label %for.cond7, !dbg !3449, !llvm.loop !3450

for.inc17:                                        ; preds = %for.cond7
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3425
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3452
  %.pre3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3425
  br label %for.cond, !dbg !3425, !llvm.loop !3453

for.end19:                                        ; preds = %for.cond
  %9 = load i64*, i64** bitcast (%union.tree_node** @current_function_decl to i64**), align 8, !dbg !3455
  %bf.load = load i64, i64* %9, align 8, !dbg !3455
  %bf.cast1 = and i64 %bf.load, 1048576, !dbg !3455
  %tobool20 = icmp eq i64 %bf.cast1, 0, !dbg !3455
  br i1 %tobool20, label %lor.lhs.false, label %for.end19.land.lhs.true_crit_edge, !dbg !3457

for.end19.land.lhs.true_crit_edge:                ; preds = %for.end19
  %looping_const_or_pure_flag.phi.trans.insert = getelementptr inbounds i64, i64* %9, i64 27, !dbg !3458
  %10 = bitcast i64* %looping_const_or_pure_flag.phi.trans.insert to i32*, !dbg !3458
  %bf.load26.pre = load i32, i32* %10, align 8, !dbg !3459
  br label %land.lhs.true, !dbg !3457

lor.lhs.false:                                    ; preds = %for.end19
  %pure_flag = getelementptr inbounds i64, i64* %9, i64 27, !dbg !3460
  %11 = bitcast i64* %pure_flag to i32*, !dbg !3460
  %bf.load21 = load i32, i32* %11, align 8, !dbg !3460
  %bf.clear23 = and i32 %bf.load21, 134217728, !dbg !3460
  %tobool24 = icmp eq i32 %bf.clear23, 0, !dbg !3460
  br i1 %tobool24, label %if.end, label %land.lhs.true, !dbg !3461

land.lhs.true:                                    ; preds = %for.end19.land.lhs.true_crit_edge, %lor.lhs.false
  %bf.load26 = phi i32 [ %bf.load26.pre, %for.end19.land.lhs.true_crit_edge ], [ %bf.load21, %lor.lhs.false ], !dbg !3459
  %bf.clear28 = and i32 %bf.load26, 268435456, !dbg !3459
  %tobool29 = icmp ne i32 %bf.clear28, 0, !dbg !3459
  %or.cond = and i1 %tobool29, %cmp13, !dbg !3462
  br i1 %or.cond, label %if.then31, label %cleanup, !dbg !3462

if.end:                                           ; preds = %lor.lhs.false
  %tobool30.old = icmp eq %struct.edge_list* %el, null, !dbg !3463
  br i1 %tobool30.old, label %cleanup, label %if.then31, !dbg !3464

if.then31:                                        ; preds = %if.end, %land.lhs.true
  %12 = bitcast %struct.loop_iterator* %li to i8*, !dbg !3465
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #7, !dbg !3465
  %13 = bitcast %struct.loop** %loop to i8*, !dbg !3466
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #7, !dbg !3466
  call void @scev_initialize() #6, !dbg !3467
  %call32 = call zeroext i8 @mark_irreducible_loops() #6, !dbg !3468
  %tobool33 = icmp eq i8 %call32, 0, !dbg !3468
  br i1 %tobool33, label %if.end70, label %if.then34, !dbg !3469

if.then34:                                        ; preds = %if.then31
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3470
  %cfg36 = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !3470
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg36, align 8, !dbg !3470
  %x_entry_block_ptr37 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 0, !dbg !3470
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr37, align 8, !dbg !3470
  %17 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3471
  %18 = bitcast %struct.edge_iterator* %tmp46 to i8*, !dbg !3472
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp46, i64 0, i32 0, !dbg !3472
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp46, i64 0, i32 1, !dbg !3472
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3474
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3474
  br label %for.cond39, !dbg !3470

for.cond39:                                       ; preds = %for.end66, %if.then34
  %23 = phi %struct.control_flow_graph* [ %15, %if.then34 ], [ %.pre6, %for.end66 ], !dbg !3476
  %.pn2 = phi %struct.basic_block_def* [ %16, %if.then34 ], [ %bb.1, %for.end66 ]
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn2, i64 0, i32 6, !dbg !3477
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !3477
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !3380, metadata !DIExpression()), !dbg !3411
  %x_exit_block_ptr42 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %23, i64 0, i32 1, !dbg !3476
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr42, align 8, !dbg !3476
  %cmp43 = icmp eq %struct.basic_block_def* %bb.1, %24, !dbg !3476
  br i1 %cmp43, label %if.end70.loopexit, label %for.body45, !dbg !3470

for.body45:                                       ; preds = %for.cond39
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #7, !dbg !3478
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #7, !dbg !3479
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 1, !dbg !3479
  %call47 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3479
  %25 = extractvalue { i32, %struct.VEC_edge_gc** } %call47, 0, !dbg !3479
  store i32 %25, i32* %19, align 8, !dbg !3479
  %26 = extractvalue { i32, %struct.VEC_edge_gc** } %call47, 1, !dbg !3479
  store %struct.VEC_edge_gc** %26, %struct.VEC_edge_gc*** %20, align 8, !dbg !3479
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %17, i8* nonnull align 8 %18, i64 16, i1 false), !dbg !3479
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #7, !dbg !3479
  br label %for.cond48, !dbg !3479

for.cond48:                                       ; preds = %for.inc65, %for.body45
  %27 = load i32, i32* %21, align 8, !dbg !3480
  %28 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %22, align 8, !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3388, metadata !DIExpression(DW_OP_deref)), !dbg !3411
  %call49 = call fastcc zeroext i8 @ei_cond(i32 %27, %struct.VEC_edge_gc** %28, %struct.edge_def** nonnull %e) #8, !dbg !3480
  %tobool50 = icmp eq i8 %call49, 0, !dbg !3479
  br i1 %tobool50, label %for.end66, label %for.body51, !dbg !3479

for.body51:                                       ; preds = %for.cond48
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3481
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !3388, metadata !DIExpression()), !dbg !3411
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 7, !dbg !3483
  %30 = load i32, i32* %flags, align 8, !dbg !3483
  %and = and i32 %30, 32, !dbg !3484
  %tobool52 = icmp eq i32 %and, 0, !dbg !3484
  br i1 %tobool52, label %for.inc65, label %land.lhs.true53, !dbg !3485

land.lhs.true53:                                  ; preds = %for.body51
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !3388, metadata !DIExpression()), !dbg !3411
  %31 = trunc i32 %30 to i8, !dbg !3486
  %tobool56 = icmp slt i8 %31, 0, !dbg !3486
  br i1 %tobool56, label %if.then57, label %for.inc65, !dbg !3487

if.then57:                                        ; preds = %land.lhs.true53
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3488
  %tobool58 = icmp eq %struct._IO_FILE* %32, null, !dbg !3488
  br i1 %tobool58, label %if.end62, label %if.then59, !dbg !3491

if.then59:                                        ; preds = %if.then57
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !3388, metadata !DIExpression()), !dbg !3411
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 0, !dbg !3492
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3492
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i64 0, i32 9, !dbg !3493
  %34 = load i32, i32* %index, align 8, !dbg !3493
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !3388, metadata !DIExpression()), !dbg !3411
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 1, !dbg !3494
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3494
  %index60 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i64 0, i32 9, !dbg !3495
  %36 = load i32, i32* %index60, align 8, !dbg !3495
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i32 %34, i32 %36) #6, !dbg !3496
  %.pre7 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3497
  br label %if.end62, !dbg !3496

if.end62:                                         ; preds = %if.then57, %if.then59
  %37 = phi %struct.edge_def* [ %29, %if.then57 ], [ %.pre7, %if.then59 ], !dbg !3497
  call void @llvm.dbg.value(metadata %struct.edge_def* %37, metadata !3388, metadata !DIExpression()), !dbg !3411
  %dest63 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %37, i64 0, i32 1, !dbg !3498
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %dest63, align 8, !dbg !3498
  call fastcc void @mark_control_dependent_edges_necessary(%struct.basic_block_def* %38, %struct.edge_list* %el) #8, !dbg !3499
  br label %for.inc65, !dbg !3500

for.inc65:                                        ; preds = %for.body51, %land.lhs.true53, %if.end62
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3400, metadata !DIExpression(DW_OP_deref)), !dbg !3471
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3480
  br label %for.cond48, !dbg !3480, !llvm.loop !3501

for.end66:                                        ; preds = %for.cond48
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #7, !dbg !3503
  %.pre5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3476
  %cfg41.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre5, i64 0, i32 1, !dbg !3504
  %.pre6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg41.phi.trans.insert, align 8, !dbg !3476
  br label %for.cond39, !dbg !3476, !llvm.loop !3505

if.end70.loopexit:                                ; preds = %for.cond39
  br label %if.end70, !dbg !3507

if.end70:                                         ; preds = %if.end70.loopexit, %if.then31
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !3391, metadata !DIExpression(DW_OP_deref)), !dbg !3509
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !3399, metadata !DIExpression(DW_OP_deref)), !dbg !3509
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #8, !dbg !3507
  br label %for.cond71, !dbg !3507

for.cond71:                                       ; preds = %for.inc82, %if.end70
  %39 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !3510
  call void @llvm.dbg.value(metadata %struct.loop* %39, metadata !3399, metadata !DIExpression()), !dbg !3509
  %tobool72 = icmp eq %struct.loop* %39, null, !dbg !3507
  br i1 %tobool72, label %for.end83, label %for.body73, !dbg !3507

for.body73:                                       ; preds = %for.cond71
  call void @llvm.dbg.value(metadata %struct.loop* %39, metadata !3399, metadata !DIExpression()), !dbg !3509
  %call74 = call zeroext i8 @finite_loop_p(%struct.loop* nonnull %39) #6, !dbg !3512
  %tobool75 = icmp eq i8 %call74, 0, !dbg !3512
  br i1 %tobool75, label %if.then76, label %for.inc82, !dbg !3514

if.then76:                                        ; preds = %for.body73
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3515
  %tobool77 = icmp eq %struct._IO_FILE* %40, null, !dbg !3515
  br i1 %tobool77, label %if.end80, label %if.then78, !dbg !3518

if.then78:                                        ; preds = %if.then76
  %41 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !3519
  call void @llvm.dbg.value(metadata %struct.loop* %41, metadata !3399, metadata !DIExpression()), !dbg !3509
  %num = getelementptr inbounds %struct.loop, %struct.loop* %41, i64 0, i32 0, !dbg !3520
  %42 = load i32, i32* %num, align 8, !dbg !3520
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %42) #6, !dbg !3521
  br label %if.end80, !dbg !3521

if.end80:                                         ; preds = %if.then76, %if.then78
  %43 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !3522
  call void @llvm.dbg.value(metadata %struct.loop* %43, metadata !3399, metadata !DIExpression()), !dbg !3509
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %43, i64 0, i32 3, !dbg !3523
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3523
  call fastcc void @mark_control_dependent_edges_necessary(%struct.basic_block_def* %44, %struct.edge_list* %el) #8, !dbg !3524
  br label %for.inc82, !dbg !3525

for.inc82:                                        ; preds = %for.body73, %if.end80
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !3391, metadata !DIExpression(DW_OP_deref)), !dbg !3509
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !3399, metadata !DIExpression(DW_OP_deref)), !dbg !3509
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !3510
  br label %for.cond71, !dbg !3510, !llvm.loop !3526

for.end83:                                        ; preds = %for.cond71
  call void @scev_finalize() #6, !dbg !3528
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #7, !dbg !3529
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #7, !dbg !3529
  br label %cleanup, !dbg !3530

cleanup:                                          ; preds = %if.end, %for.end83, %land.lhs.true
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3531
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3531
  ret void, !dbg !3531
}

declare dso_local void @loop_optimizer_finalize() local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @propagate_necessity(%struct.edge_list* %el) unnamed_addr #5 !dbg !3532 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.edge_list* %el, metadata !3534, metadata !DIExpression()), !dbg !3579
  %tobool = icmp ne %struct.edge_list* %el, null, !dbg !3580
  call void @llvm.dbg.value(metadata i1 %tobool, metadata !3536, metadata !DIExpression()), !dbg !3579
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3581
  %tobool1 = icmp eq %struct._IO_FILE* %0, null, !dbg !3581
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !3583

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @dump_flags, align 4, !dbg !3584
  %and = and i32 %1, 8, !dbg !3585
  %tobool2 = icmp eq i32 %and, 0, !dbg !3585
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3586

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !3587
  br label %if.end, !dbg !3587

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !3588
  br label %while.cond, !dbg !3589

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %3 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** @worklist, align 8, !dbg !3590
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %3, i64 0, i32 0, !dbg !3590
  %call5 = call fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %base) #8, !dbg !3590
  %cmp = icmp eq i32 %call5, 0, !dbg !3591
  br i1 %cmp, label %while.end, label %while.body, !dbg !3589

while.body:                                       ; preds = %while.cond
  %4 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** @worklist, align 8, !dbg !3592
  %base9 = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %4, i64 0, i32 0, !dbg !3592
  %call13 = call fastcc %union.gimple_statement_d* @VEC_gimple_base_pop(%struct.VEC_gimple_base* %base9) #8, !dbg !3592
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call13, metadata !3535, metadata !DIExpression()), !dbg !3579
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3593
  %tobool14 = icmp eq %struct._IO_FILE* %5, null, !dbg !3593
  br i1 %tobool14, label %if.end21, label %land.lhs.true15, !dbg !3595

land.lhs.true15:                                  ; preds = %while.body
  %6 = load i32, i32* @dump_flags, align 4, !dbg !3596
  %and16 = and i32 %6, 8, !dbg !3597
  %tobool17 = icmp eq i32 %and16, 0, !dbg !3597
  br i1 %tobool17, label %if.end21, label %if.then18, !dbg !3598

if.then18:                                        ; preds = %land.lhs.true15
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !3599
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3601
  call void @print_gimple_stmt(%struct._IO_FILE* %7, %union.gimple_statement_d* %call13, i32 0, i32 2) #6, !dbg !3602
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3603
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3604
  br label %if.end21, !dbg !3605

if.end21:                                         ; preds = %land.lhs.true15, %while.body, %if.then18
  br i1 %tobool, label %if.then23, label %if.end34, !dbg !3606

if.then23:                                        ; preds = %if.end21
  %call24 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call13) #8, !dbg !3607
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call24, metadata !3537, metadata !DIExpression()), !dbg !3608
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3609
  %cfg = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 1, !dbg !3609
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3609
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 0, !dbg !3609
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3609
  %cmp25 = icmp eq %struct.basic_block_def* %call24, %11, !dbg !3611
  br i1 %cmp25, label %if.end34, label %land.lhs.true27, !dbg !3612

land.lhs.true27:                                  ; preds = %if.then23
  %12 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @visited_control_parents, align 8, !dbg !3613
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call24, i64 0, i32 9, !dbg !3613
  %13 = load i32, i32* %index, align 8, !dbg !3613
  %div = lshr i32 %13, 6, !dbg !3613
  %idxprom = zext i32 %div to i64, !dbg !3613
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %12, i64 0, i32 3, i64 %idxprom, !dbg !3613
  %14 = load i64, i64* %arrayidx, align 8, !dbg !3613
  %rem = and i32 %13, 63, !dbg !3613
  %sh_prom = zext i32 %rem to i64, !dbg !3613
  %15 = shl i64 1, %sh_prom, !dbg !3613
  %16 = and i64 %14, %15, !dbg !3613
  %tobool30 = icmp eq i64 %16, 0, !dbg !3613
  br i1 %tobool30, label %if.then31, label %if.end34, !dbg !3614

if.then31:                                        ; preds = %land.lhs.true27
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %12, i32 %13) #8, !dbg !3615
  call fastcc void @mark_control_dependent_edges_necessary(%struct.basic_block_def* %call24, %struct.edge_list* nonnull %el) #8, !dbg !3617
  br label %if.end34, !dbg !3618

if.end34:                                         ; preds = %land.lhs.true27, %if.then23, %if.then31, %if.end21
  %call35 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call13) #8, !dbg !3619
  %cmp36 = icmp eq i32 %call35, 16, !dbg !3620
  br i1 %cmp36, label %land.lhs.true38, label %if.else, !dbg !3621

land.lhs.true38:                                  ; preds = %if.end34
  %call39 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call13) #8, !dbg !3622
  %call40 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call39) #6, !dbg !3623
  %tobool42 = icmp eq i8 %call40, 0, !dbg !3623
  br i1 %tobool42, label %if.else, label %for.cond.preheader, !dbg !3624

for.cond.preheader:                               ; preds = %land.lhs.true38
  br label %for.cond, !dbg !3625

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %k.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !3626
  call void @llvm.dbg.value(metadata i64 %k.0, metadata !3541, metadata !DIExpression()), !dbg !3627
  %call44 = call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %call13) #8, !dbg !3628
  %conv45 = zext i32 %call44 to i64, !dbg !3628
  %cmp46 = icmp ult i64 %k.0, %conv45, !dbg !3629
  br i1 %cmp46, label %for.body, label %for.end, !dbg !3625

for.body:                                         ; preds = %for.cond
  %conv48 = trunc i64 %k.0 to i32, !dbg !3630
  %call49 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call13, i32 %conv48) #8, !dbg !3630
  %call50 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call49) #8, !dbg !3630
  call void @llvm.dbg.value(metadata %union.tree_node* %call50, metadata !3544, metadata !DIExpression()), !dbg !3631
  %17 = getelementptr inbounds %union.tree_node, %union.tree_node* %call50, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3632
  %bf.load = load i64, i64* %17, align 8, !dbg !3632
  %bf.cast7 = and i64 %bf.load, 65535, !dbg !3634
  %cmp52 = icmp eq i64 %bf.cast7, 141, !dbg !3634
  br i1 %cmp52, label %if.then54, label %for.inc, !dbg !3635

if.then54:                                        ; preds = %for.body
  call fastcc void @mark_operand_necessary(%union.tree_node* %call50) #8, !dbg !3636
  br label %for.inc, !dbg !3636

for.inc:                                          ; preds = %for.body, %if.then54
  %inc = add nuw nsw i64 %k.0, 1, !dbg !3637
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3541, metadata !DIExpression()), !dbg !3627
  br label %for.cond, !dbg !3638, !llvm.loop !3639

for.end:                                          ; preds = %for.cond
  br i1 %tobool, label %land.lhs.true58, label %if.end269, !dbg !3641

land.lhs.true58:                                  ; preds = %for.end
  %call59 = call fastcc zeroext i8 @degenerate_phi_p(%union.gimple_statement_d* %call13) #8, !dbg !3642
  %tobool60 = icmp eq i8 %call59, 0, !dbg !3642
  br i1 %tobool60, label %for.cond62.preheader, label %if.end269, !dbg !3643

for.cond62.preheader:                             ; preds = %land.lhs.true58
  br label %for.cond62, !dbg !3644

for.cond62:                                       ; preds = %for.cond62.preheader, %for.inc89
  %k.1 = phi i64 [ %inc90, %for.inc89 ], [ 0, %for.cond62.preheader ], !dbg !3645
  call void @llvm.dbg.value(metadata i64 %k.1, metadata !3541, metadata !DIExpression()), !dbg !3627
  %call63 = call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %call13) #8, !dbg !3646
  %conv64 = zext i32 %call63 to i64, !dbg !3646
  %cmp65 = icmp ult i64 %k.1, %conv64, !dbg !3647
  br i1 %cmp65, label %for.body67, label %if.end269.loopexit, !dbg !3644

for.body67:                                       ; preds = %for.cond62
  %call68 = call fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %call13, i64 %k.1) #8, !dbg !3648
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call68, i64 0, i32 0, !dbg !3649
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3649
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %18, metadata !3548, metadata !DIExpression()), !dbg !3650
  %19 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3651
  %cfg70 = getelementptr inbounds %struct.function, %struct.function* %19, i64 0, i32 1, !dbg !3651
  %20 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg70, align 8, !dbg !3651
  %x_entry_block_ptr71 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %20, i64 0, i32 0, !dbg !3651
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr71, align 8, !dbg !3651
  %cmp72 = icmp eq %struct.basic_block_def* %18, %21, !dbg !3653
  br i1 %cmp72, label %for.inc89, label %land.lhs.true74, !dbg !3654

land.lhs.true74:                                  ; preds = %for.body67
  %22 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @visited_control_parents, align 8, !dbg !3655
  %index76 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i64 0, i32 9, !dbg !3655
  %23 = load i32, i32* %index76, align 8, !dbg !3655
  %div77 = lshr i32 %23, 6, !dbg !3655
  %idxprom78 = zext i32 %div77 to i64, !dbg !3655
  %arrayidx79 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %22, i64 0, i32 3, i64 %idxprom78, !dbg !3655
  %24 = load i64, i64* %arrayidx79, align 8, !dbg !3655
  %rem81 = and i32 %23, 63, !dbg !3655
  %sh_prom82 = zext i32 %rem81 to i64, !dbg !3655
  %25 = shl i64 1, %sh_prom82, !dbg !3655
  %26 = and i64 %24, %25, !dbg !3655
  %tobool85 = icmp eq i64 %26, 0, !dbg !3655
  br i1 %tobool85, label %if.then86, label %for.inc89, !dbg !3656

if.then86:                                        ; preds = %land.lhs.true74
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %22, i32 %23) #8, !dbg !3657
  call fastcc void @mark_control_dependent_edges_necessary(%struct.basic_block_def* %18, %struct.edge_list* nonnull %el) #8, !dbg !3659
  br label %for.inc89, !dbg !3660

for.inc89:                                        ; preds = %land.lhs.true74, %for.body67, %if.then86
  %inc90 = add nuw nsw i64 %k.1, 1, !dbg !3661
  call void @llvm.dbg.value(metadata i64 %inc90, metadata !3541, metadata !DIExpression()), !dbg !3627
  br label %for.cond62, !dbg !3662, !llvm.loop !3663

if.else:                                          ; preds = %land.lhs.true38, %if.end34
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #7, !dbg !3665
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3554, metadata !DIExpression(DW_OP_deref)), !dbg !3588
  %call93 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %call13, i32 1) #8, !dbg !3666
  call void @llvm.dbg.value(metadata %union.tree_node* %call93, metadata !3556, metadata !DIExpression()), !dbg !3588
  br label %for.cond94, !dbg !3666

for.cond94:                                       ; preds = %for.body97, %if.else
  %use.0 = phi %union.tree_node* [ %call93, %if.else ], [ %call99, %for.body97 ], !dbg !3668
  call void @llvm.dbg.value(metadata %union.tree_node* %use.0, metadata !3556, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3554, metadata !DIExpression(DW_OP_deref)), !dbg !3588
  %call95 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !3669
  %tobool96 = icmp eq i8 %call95, 0, !dbg !3669
  br i1 %tobool96, label %for.body97, label %for.end100, !dbg !3666

for.body97:                                       ; preds = %for.cond94
  call fastcc void @mark_operand_necessary(%union.tree_node* %use.0) #8, !dbg !3671
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3554, metadata !DIExpression(DW_OP_deref)), !dbg !3588
  %call99 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !3669
  call void @llvm.dbg.value(metadata %union.tree_node* %call99, metadata !3556, metadata !DIExpression()), !dbg !3588
  br label %for.cond94, !dbg !3669, !llvm.loop !3672

for.end100:                                       ; preds = %for.cond94
  %call101 = call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %call13) #8, !dbg !3674
  call void @llvm.dbg.value(metadata %union.tree_node* %call101, metadata !3556, metadata !DIExpression()), !dbg !3588
  %tobool102 = icmp eq %union.tree_node* %call101, null, !dbg !3675
  br i1 %tobool102, label %cleanup265, label %if.end104, !dbg !3677, !llvm.loop !3678

if.end104:                                        ; preds = %for.end100
  %.b = load i1, i1* @chain_ovfl, align 1, !dbg !3680
  br i1 %.b, label %if.then106, label %if.end107, !dbg !3682

if.then106:                                       ; preds = %if.end104
  call fastcc void @mark_all_reaching_defs_necessary(%union.gimple_statement_d* %call13) #8, !dbg !3683
  br label %cleanup265, !dbg !3685, !llvm.loop !3678

if.end107:                                        ; preds = %if.end104
  %call108 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call13) #8, !dbg !3686
  %tobool109 = icmp eq i8 %call108, 0, !dbg !3686
  br i1 %tobool109, label %if.else170, label %if.then110, !dbg !3687

if.then110:                                       ; preds = %if.end107
  %call111 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call13) #8, !dbg !3688
  call void @llvm.dbg.value(metadata %union.tree_node* %call111, metadata !3557, metadata !DIExpression()), !dbg !3689
  %cmp112 = icmp eq %union.tree_node* %call111, null, !dbg !3690
  br i1 %cmp112, label %if.end139, label %land.lhs.true114, !dbg !3692

land.lhs.true114:                                 ; preds = %if.then110
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call111, i64 0, i32 0, i32 5, !dbg !3693
  %bf.load115 = load i32, i32* %built_in_class, align 8, !dbg !3693
  %bf.clear116 = and i32 %bf.load115, 6144, !dbg !3693
  %cmp117 = icmp eq i32 %bf.clear116, 6144, !dbg !3694
  br i1 %cmp117, label %land.lhs.true119, label %if.end139, !dbg !3695

land.lhs.true119:                                 ; preds = %land.lhs.true114
  %bf.clear122 = and i32 %bf.load115, 2047, !dbg !3696
  %cmp123 = icmp eq i32 %bf.clear122, 333, !dbg !3697
  br i1 %cmp123, label %cleanup166, label %lor.lhs.false, !dbg !3698, !llvm.loop !3678

lor.lhs.false:                                    ; preds = %land.lhs.true119
  %cmp129 = icmp eq i32 %bf.clear122, 491, !dbg !3699
  br i1 %cmp129, label %cleanup166, label %lor.lhs.false131, !dbg !3700, !llvm.loop !3678

lor.lhs.false131:                                 ; preds = %lor.lhs.false
  %cmp136 = icmp eq i32 %bf.clear122, 455, !dbg !3701
  br i1 %cmp136, label %cleanup166, label %if.end139, !dbg !3702, !llvm.loop !3678

if.end139:                                        ; preds = %if.then110, %lor.lhs.false131, %land.lhs.true114
  call fastcc void @mark_all_reaching_defs_necessary(%union.gimple_statement_d* %call13) #8, !dbg !3703
  call void @llvm.dbg.value(metadata i32 0, metadata !3560, metadata !DIExpression()), !dbg !3689
  br label %for.cond140, !dbg !3704

for.cond140:                                      ; preds = %cleanup, %if.end139
  %i.0 = phi i32 [ 0, %if.end139 ], [ %inc164, %cleanup ], !dbg !3705
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3560, metadata !DIExpression()), !dbg !3689
  %call141 = call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call13) #8, !dbg !3706
  %cmp142 = icmp ult i32 %i.0, %call141, !dbg !3707
  br i1 %cmp142, label %for.body144, label %cleanup166.loopexit, !dbg !3708

for.body144:                                      ; preds = %for.cond140
  %call146 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call13, i32 %i.0) #8, !dbg !3709
  call void @llvm.dbg.value(metadata %union.tree_node* %call146, metadata !3561, metadata !DIExpression()), !dbg !3710
  %27 = getelementptr inbounds %union.tree_node, %union.tree_node* %call146, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3711
  %bf.load148 = load i64, i64* %27, align 8, !dbg !3711
  %bf.cast1506 = and i64 %bf.load148, 65535, !dbg !3713
  %cmp151 = icmp eq i64 %bf.cast1506, 141, !dbg !3713
  br i1 %cmp151, label %cleanup, label %lor.lhs.false153, !dbg !3714

lor.lhs.false153:                                 ; preds = %for.body144
  %call154 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call146) #6, !dbg !3715
  %tobool156 = icmp eq i8 %call154, 0, !dbg !3715
  br i1 %tobool156, label %if.end158, label %cleanup, !dbg !3716

if.end158:                                        ; preds = %lor.lhs.false153
  %call159 = call fastcc zeroext i8 @ref_may_be_aliased(%union.tree_node* %call146) #8, !dbg !3717
  %tobool160 = icmp eq i8 %call159, 0, !dbg !3717
  br i1 %tobool160, label %if.then161, label %cleanup, !dbg !3719

if.then161:                                       ; preds = %if.end158
  call fastcc void @mark_aliased_reaching_defs_necessary(%union.gimple_statement_d* %call13, %union.tree_node* %call146) #8, !dbg !3720
  br label %cleanup, !dbg !3720

cleanup:                                          ; preds = %if.end158, %lor.lhs.false153, %if.then161, %for.body144
  %inc164 = add i32 %i.0, 1, !dbg !3721
  call void @llvm.dbg.value(metadata i32 %inc164, metadata !3560, metadata !DIExpression()), !dbg !3689
  br label %for.cond140, !dbg !3722, !llvm.loop !3723

cleanup166.loopexit:                              ; preds = %for.cond140
  br label %cleanup166

cleanup166:                                       ; preds = %cleanup166.loopexit, %land.lhs.true119, %lor.lhs.false, %lor.lhs.false131
  %cleanup.dest.slot.1 = phi i32 [ 2, %lor.lhs.false131 ], [ 2, %lor.lhs.false ], [ 2, %land.lhs.true119 ], [ 0, %cleanup166.loopexit ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond1, label %if.end250, label %cleanup265

if.else170:                                       ; preds = %if.end107
  %call171 = call zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d* %call13) #6, !dbg !3725
  %tobool172 = icmp eq i8 %call171, 0, !dbg !3725
  br i1 %tobool172, label %if.else194, label %if.then173, !dbg !3726

if.then173:                                       ; preds = %if.else170
  call void @llvm.dbg.value(metadata i8 0, metadata !3568, metadata !DIExpression()), !dbg !3727
  %call174 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call13) #8, !dbg !3728
  call void @llvm.dbg.value(metadata %union.tree_node* %call174, metadata !3565, metadata !DIExpression()), !dbg !3727
  %28 = getelementptr inbounds %union.tree_node, %union.tree_node* %call174, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3729
  %bf.load176 = load i64, i64* %28, align 8, !dbg !3729
  %bf.cast1785 = and i64 %bf.load176, 65535, !dbg !3731
  %cmp179 = icmp eq i64 %bf.cast1785, 141, !dbg !3731
  br i1 %cmp179, label %if.end190, label %land.lhs.true181, !dbg !3732

land.lhs.true181:                                 ; preds = %if.then173
  %call182 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call174) #6, !dbg !3733
  %tobool183 = icmp eq i8 %call182, 0, !dbg !3733
  br i1 %tobool183, label %if.then184, label %if.end190, !dbg !3734

if.then184:                                       ; preds = %land.lhs.true181
  %call185 = call fastcc zeroext i8 @ref_may_be_aliased(%union.tree_node* %call174) #8, !dbg !3735
  %tobool186 = icmp eq i8 %call185, 0, !dbg !3735
  br i1 %tobool186, label %if.then187, label %if.end190, !dbg !3738

if.then187:                                       ; preds = %if.then184
  call fastcc void @mark_aliased_reaching_defs_necessary(%union.gimple_statement_d* %call13, %union.tree_node* %call174) #8, !dbg !3739
  br label %if.end190, !dbg !3739

if.end190:                                        ; preds = %if.then184, %land.lhs.true181, %if.then173, %if.then187
  %rhs_aliased.1 = phi i1 [ false, %land.lhs.true181 ], [ false, %if.then173 ], [ false, %if.then187 ], [ true, %if.then184 ]
  br i1 %rhs_aliased.1, label %if.then192, label %if.end250, !dbg !3740

if.then192:                                       ; preds = %if.end190
  call fastcc void @mark_all_reaching_defs_necessary(%union.gimple_statement_d* %call13) #8, !dbg !3741
  br label %if.end250, !dbg !3741

if.else194:                                       ; preds = %if.else170
  %call195 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call13) #8, !dbg !3743
  %cmp196 = icmp eq i32 %call195, 9, !dbg !3744
  br i1 %cmp196, label %if.then198, label %if.else217, !dbg !3745

if.then198:                                       ; preds = %if.else194
  %call200 = call fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %call13) #8, !dbg !3746
  call void @llvm.dbg.value(metadata %union.tree_node* %call200, metadata !3569, metadata !DIExpression()), !dbg !3747
  %29 = getelementptr inbounds %union.tree_node, %union.tree_node* %call200, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3748
  %bf.load202 = load i64, i64* %29, align 8, !dbg !3748
  %bf.cast2044 = and i64 %bf.load202, 65535, !dbg !3750
  %cmp205 = icmp eq i64 %bf.cast2044, 141, !dbg !3750
  br i1 %cmp205, label %if.end250, label %land.lhs.true207, !dbg !3751

land.lhs.true207:                                 ; preds = %if.then198
  %call208 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %call200) #6, !dbg !3752
  %tobool209 = icmp eq i8 %call208, 0, !dbg !3752
  br i1 %tobool209, label %if.then210, label %if.end250, !dbg !3753

if.then210:                                       ; preds = %land.lhs.true207
  %call211 = call fastcc zeroext i8 @ref_may_be_aliased(%union.tree_node* %call200) #8, !dbg !3754
  %tobool212 = icmp eq i8 %call211, 0, !dbg !3754
  br i1 %tobool212, label %if.then213, label %if.else214, !dbg !3757

if.then213:                                       ; preds = %if.then210
  call fastcc void @mark_aliased_reaching_defs_necessary(%union.gimple_statement_d* %call13, %union.tree_node* %call200) #8, !dbg !3758
  br label %if.end250, !dbg !3758

if.else214:                                       ; preds = %if.then210
  call fastcc void @mark_all_reaching_defs_necessary(%union.gimple_statement_d* %call13) #8, !dbg !3759
  br label %if.end250

if.else217:                                       ; preds = %if.else194
  %call218 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call13) #8, !dbg !3760
  %cmp219 = icmp eq i32 %call218, 7, !dbg !3761
  br i1 %cmp219, label %if.then221, label %if.else246, !dbg !3762

if.then221:                                       ; preds = %if.else217
  call fastcc void @mark_all_reaching_defs_necessary(%union.gimple_statement_d* %call13) #8, !dbg !3763
  call void @llvm.dbg.value(metadata i32 0, metadata !3572, metadata !DIExpression()), !dbg !3764
  br label %for.cond223, !dbg !3765

for.cond223:                                      ; preds = %for.inc243, %if.then221
  %i222.0 = phi i32 [ 0, %if.then221 ], [ %inc244, %for.inc243 ], !dbg !3766
  call void @llvm.dbg.value(metadata i32 %i222.0, metadata !3572, metadata !DIExpression()), !dbg !3764
  %call224 = call fastcc i32 @gimple_asm_ninputs(%union.gimple_statement_d* %call13) #8, !dbg !3767
  %cmp225 = icmp ult i32 %i222.0, %call224, !dbg !3768
  br i1 %cmp225, label %for.body227, label %if.end250.loopexit, !dbg !3769

for.body227:                                      ; preds = %for.cond223
  %call228 = call fastcc %union.tree_node* @gimple_asm_input_op(%union.gimple_statement_d* %call13, i32 %i222.0) #8, !dbg !3770
  %30 = getelementptr inbounds %union.tree_node, %union.tree_node* %call228, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3770
  %31 = load %union.tree_node*, %union.tree_node** %30, align 8, !dbg !3770
  call void @llvm.dbg.value(metadata %union.tree_node* %31, metadata !3575, metadata !DIExpression()), !dbg !3771
  %32 = getelementptr inbounds %union.tree_node, %union.tree_node* %31, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3772
  %bf.load230 = load i64, i64* %32, align 8, !dbg !3772
  %bf.cast2323 = and i64 %bf.load230, 65535, !dbg !3774
  %cmp233 = icmp eq i64 %bf.cast2323, 141, !dbg !3774
  br i1 %cmp233, label %for.inc243, label %land.lhs.true235, !dbg !3775

land.lhs.true235:                                 ; preds = %for.body227
  %call236 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %31) #6, !dbg !3776
  %tobool237 = icmp eq i8 %call236, 0, !dbg !3776
  br i1 %tobool237, label %land.lhs.true238, label %for.inc243, !dbg !3777

land.lhs.true238:                                 ; preds = %land.lhs.true235
  %call239 = call fastcc zeroext i8 @ref_may_be_aliased(%union.tree_node* %31) #8, !dbg !3778
  %tobool240 = icmp eq i8 %call239, 0, !dbg !3778
  br i1 %tobool240, label %if.then241, label %for.inc243, !dbg !3779

if.then241:                                       ; preds = %land.lhs.true238
  call fastcc void @mark_aliased_reaching_defs_necessary(%union.gimple_statement_d* %call13, %union.tree_node* %31) #8, !dbg !3780
  br label %for.inc243, !dbg !3780

for.inc243:                                       ; preds = %land.lhs.true238, %land.lhs.true235, %for.body227, %if.then241
  %inc244 = add i32 %i222.0, 1, !dbg !3781
  call void @llvm.dbg.value(metadata i32 %inc244, metadata !3572, metadata !DIExpression()), !dbg !3764
  br label %for.cond223, !dbg !3782, !llvm.loop !3783

if.else246:                                       ; preds = %if.else217
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 805, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3785
  br label %if.end250

if.end250.loopexit:                               ; preds = %for.cond223
  br label %if.end250, !dbg !3786

if.end250:                                        ; preds = %if.end250.loopexit, %land.lhs.true207, %if.then198, %if.then192, %if.end190, %if.else246, %if.else214, %if.then213, %cleanup166
  %33 = load i32, i32* @total_chain, align 4, !dbg !3786
  %cmp251 = icmp ugt i32 %33, 16384, !dbg !3788
  br i1 %cmp251, label %land.lhs.true253, label %cleanup265, !dbg !3789

land.lhs.true253:                                 ; preds = %if.end250
  %34 = load i32, i32* @longest_chain, align 4, !dbg !3790
  %mul = shl i32 %34, 5, !dbg !3791
  %cmp254 = icmp ugt i32 %33, %mul, !dbg !3792
  br i1 %cmp254, label %land.lhs.true256, label %cleanup265, !dbg !3793

land.lhs.true256:                                 ; preds = %land.lhs.true253
  %35 = load i32, i32* @nr_walks, align 4, !dbg !3794
  %mul257 = shl i32 %35, 5, !dbg !3795
  %cmp258 = icmp ugt i32 %33, %mul257, !dbg !3796
  br i1 %cmp258, label %if.then260, label %cleanup265, !dbg !3797

if.then260:                                       ; preds = %land.lhs.true256
  store i1 true, i1* @chain_ovfl, align 1, !dbg !3798
  %36 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @visited, align 8, !dbg !3800
  %tobool261 = icmp eq %struct.bitmap_head_def* %36, null, !dbg !3800
  br i1 %tobool261, label %cleanup265, label %if.then262, !dbg !3802

if.then262:                                       ; preds = %if.then260
  call void @bitmap_clear(%struct.bitmap_head_def* nonnull %36) #6, !dbg !3803
  br label %cleanup265, !dbg !3803

cleanup265:                                       ; preds = %if.then260, %for.end100, %if.end250, %land.lhs.true253, %land.lhs.true256, %if.then262, %cleanup166, %if.then106
  %cleanup.dest.slot.2 = phi i32 [ 2, %if.then106 ], [ %cleanup.dest.slot.1, %cleanup166 ], [ 2, %for.end100 ], [ 0, %if.then260 ], [ 0, %if.then262 ], [ 0, %land.lhs.true256 ], [ 0, %land.lhs.true253 ], [ 0, %if.end250 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #7, !dbg !3804
  %switch2 = icmp eq i32 %cleanup.dest.slot.2, 0
  br i1 %switch2, label %if.end269, label %while.cond.backedge

if.end269.loopexit:                               ; preds = %for.cond62
  br label %if.end269, !dbg !3589

if.end269:                                        ; preds = %if.end269.loopexit, %land.lhs.true58, %cleanup265, %for.end
  br label %while.cond.backedge, !dbg !3589

while.cond.backedge:                              ; preds = %if.end269, %cleanup265
  br label %while.cond, !dbg !3590, !llvm.loop !3678

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3805
}

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @eliminate_unnecessary_stmts() unnamed_addr #5 !dbg !3806 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %psi = alloca %struct.gimple_stmt_iterator, align 8
  %h = alloca %struct.VEC_basic_block_heap*, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp85 = alloca %struct.gimple_stmt_iterator, align 8
  %iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata i8 0, metadata !3808, metadata !DIExpression()), !dbg !3844
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3845
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3845
  %1 = bitcast %struct.gimple_stmt_iterator* %psi to i8*, !dbg !3845
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3845
  %2 = bitcast %struct.VEC_basic_block_heap** %h to i8*, !dbg !3846
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !3846
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3847
  %tobool = icmp eq %struct._IO_FILE* %3, null, !dbg !3847
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3849

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* @dump_flags, align 4, !dbg !3850
  %and = and i32 %4, 8, !dbg !3851
  %tobool1 = icmp eq i32 %and, 0, !dbg !3851
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3852

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !3853
  br label %if.end, !dbg !3853

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  tail call void @clear_special_calls() #6, !dbg !3854
  %call3 = tail call zeroext i8 @dom_info_available_p(i32 1) #6, !dbg !3855
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3855
  br i1 %tobool4, label %cond.true, label %cond.end, !dbg !3855

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 1090, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3855
  br label %cond.end, !dbg !3855

cond.end:                                         ; preds = %if.end, %cond.true
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3856
  %cfg = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !3856
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3856
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !3856
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3856
  %call5 = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %7) #8, !dbg !3857
  %call6 = tail call %struct.VEC_basic_block_heap* @get_all_dominated_blocks(i32 1, %struct.basic_block_def* %call5) #6, !dbg !3858
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %call6, metadata !3814, metadata !DIExpression()), !dbg !3844
  store %struct.VEC_basic_block_heap* %call6, %struct.VEC_basic_block_heap** %h, align 8, !dbg !3859
  %8 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3860
  br label %while.cond, !dbg !3861

while.cond.loopexit:                              ; preds = %for.cond
  %something_changed.1.lcssa = phi i8 [ %something_changed.1, %for.cond ], !dbg !3862
  call void @llvm.dbg.value(metadata i8 %something_changed.1.lcssa, metadata !3808, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i8 %something_changed.1.lcssa, metadata !3808, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i8 %something_changed.1.lcssa, metadata !3808, metadata !DIExpression()), !dbg !3844
  %.pre = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %h, align 8, !dbg !3863
  br label %while.cond, !dbg !3861

while.cond:                                       ; preds = %while.cond.loopexit, %cond.end
  %9 = phi %struct.VEC_basic_block_heap* [ %call6, %cond.end ], [ %.pre, %while.cond.loopexit ], !dbg !3863
  %something_changed.0 = phi i8 [ 0, %cond.end ], [ %something_changed.1.lcssa, %while.cond.loopexit ], !dbg !3862
  call void @llvm.dbg.value(metadata i8 %something_changed.0, metadata !3808, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %9, metadata !3814, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %9, metadata !3814, metadata !DIExpression()), !dbg !3844
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %9, i64 0, i32 0, !dbg !3863
  %call12 = call fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %base) #8, !dbg !3863
  %tobool13 = icmp eq i32 %call12, 0, !dbg !3861
  br i1 %tobool13, label %while.end, label %while.body, !dbg !3861

while.body:                                       ; preds = %while.cond
  %10 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %h, align 8, !dbg !3864
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %10, metadata !3814, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %10, metadata !3814, metadata !DIExpression()), !dbg !3844
  %base16 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %10, i64 0, i32 0, !dbg !3864
  %call20 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_pop(%struct.VEC_basic_block_base* %base16) #8, !dbg !3864
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call20, metadata !3809, metadata !DIExpression()), !dbg !3844
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7, !dbg !3865
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %call20) #8, !dbg !3865
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %8, i64 24, i1 false), !dbg !3865
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !3865
  br label %for.cond, !dbg !3866

for.cond:                                         ; preds = %for.inc, %while.body
  %something_changed.1 = phi i8 [ %something_changed.0, %while.body ], [ %something_changed.6, %for.inc ], !dbg !3862
  call void @llvm.dbg.value(metadata i8 %something_changed.1, metadata !3808, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3810, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  %call21 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3867
  %tobool22 = icmp eq i8 %call21, 0, !dbg !3868
  br i1 %tobool22, label %for.body, label %while.cond.loopexit, !dbg !3869, !llvm.loop !3870

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3810, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  %call23 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3872
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call23, metadata !3812, metadata !DIExpression()), !dbg !3844
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %0, i64 24, i1 false), !dbg !3873
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %psi, metadata !3811, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  call fastcc void @gsi_prev(%struct.gimple_stmt_iterator* nonnull %psi) #8, !dbg !3874
  %11 = load i32, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 0), align 4, !dbg !3875
  %inc = add nsw i32 %11, 1, !dbg !3875
  store i32 %inc, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 0), align 4, !dbg !3875
  %call24 = call fastcc i32 @gimple_plf(%union.gimple_statement_d* %call23, i32 1) #8, !dbg !3876
  %tobool25 = icmp eq i32 %call24, 0, !dbg !3876
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !3877

if.then26:                                        ; preds = %for.body
  %call27 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call23) #8, !dbg !3878
  %tobool28 = icmp eq i8 %call27, 0, !dbg !3878
  %spec.select = select i1 %tobool28, i8 1, i8 %something_changed.1, !dbg !3881
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !3808, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3810, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  call fastcc void @remove_dead_stmt(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.basic_block_def* %call20) #8, !dbg !3882
  br label %for.inc, !dbg !3883

if.else:                                          ; preds = %for.body
  %call31 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call23) #8, !dbg !3884
  %tobool32 = icmp eq i8 %call31, 0, !dbg !3884
  br i1 %tobool32, label %for.inc, label %if.then33, !dbg !3885

if.then33:                                        ; preds = %if.else
  %call34 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call23) #8, !dbg !3886
  call void @llvm.dbg.value(metadata %union.tree_node* %call34, metadata !3813, metadata !DIExpression()), !dbg !3844
  %tobool35 = icmp eq %union.tree_node* %call34, null, !dbg !3887
  br i1 %tobool35, label %for.inc, label %if.then36, !dbg !3888

if.then36:                                        ; preds = %if.then33
  %call37 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call23) #8, !dbg !3889
  call void @llvm.dbg.value(metadata %union.tree_node* %call37, metadata !3820, metadata !DIExpression()), !dbg !3890
  %tobool38 = icmp eq %union.tree_node* %call37, null, !dbg !3891
  br i1 %tobool38, label %if.end56, label %land.lhs.true39, !dbg !3893

land.lhs.true39:                                  ; preds = %if.then36
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %call37, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3894
  %bf.load = load i64, i64* %12, align 8, !dbg !3894
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !3895
  %cmp = icmp eq i64 %bf.cast2, 141, !dbg !3895
  br i1 %cmp, label %land.lhs.true41, label %if.end56, !dbg !3896

land.lhs.true41:                                  ; preds = %land.lhs.true39
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @processed, align 8, !dbg !3897
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %call37, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3897
  %14 = bitcast %union.tree_node** %version to i32*, !dbg !3897
  %15 = load i32, i32* %14, align 8, !dbg !3897
  %div = lshr i32 %15, 6, !dbg !3897
  %idxprom = zext i32 %div to i64, !dbg !3897
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %13, i64 0, i32 3, i64 %idxprom, !dbg !3897
  %16 = load i64, i64* %arrayidx, align 8, !dbg !3897
  %rem = and i32 %15, 63, !dbg !3897
  %sh_prom = zext i32 %rem to i64, !dbg !3897
  %17 = shl i64 1, %sh_prom, !dbg !3897
  %18 = and i64 %16, %17, !dbg !3897
  %tobool45 = icmp eq i64 %18, 0, !dbg !3897
  br i1 %tobool45, label %if.then46, label %if.end56, !dbg !3898

if.then46:                                        ; preds = %land.lhs.true41
  call void @llvm.dbg.value(metadata i8 1, metadata !3808, metadata !DIExpression()), !dbg !3844
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3899
  %tobool47 = icmp eq %struct._IO_FILE* %19, null, !dbg !3899
  br i1 %tobool47, label %if.end54, label %land.lhs.true48, !dbg !3902

land.lhs.true48:                                  ; preds = %if.then46
  %20 = load i32, i32* @dump_flags, align 4, !dbg !3903
  %and49 = and i32 %20, 8, !dbg !3904
  %tobool50 = icmp eq i32 %and49, 0, !dbg !3904
  br i1 %tobool50, label %if.end54, label %if.then51, !dbg !3905

if.then51:                                        ; preds = %land.lhs.true48
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !3906
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3908
  call void @print_gimple_stmt(%struct._IO_FILE* %21, %union.gimple_statement_d* %call23, i32 0, i32 2) #6, !dbg !3909
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3910
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3911
  br label %if.end54, !dbg !3912

if.end54:                                         ; preds = %land.lhs.true48, %if.then46, %if.then51
  call fastcc void @gimple_call_set_lhs(%union.gimple_statement_d* %call23, %union.tree_node* null) #8, !dbg !3913
  %call55 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(%union.gimple_statement_d* %call23, %union.gimple_statement_d* %call23) #6, !dbg !3914
  call fastcc void @update_stmt(%union.gimple_statement_d* %call23) #8, !dbg !3915
  call void @release_ssa_name(%union.tree_node* nonnull %call37) #6, !dbg !3916
  br label %if.end56, !dbg !3917

if.end56:                                         ; preds = %land.lhs.true41, %if.then36, %if.end54, %land.lhs.true39
  %something_changed.3 = phi i8 [ %something_changed.1, %land.lhs.true41 ], [ 1, %if.end54 ], [ %something_changed.1, %land.lhs.true39 ], [ %something_changed.1, %if.then36 ], !dbg !3844
  call void @llvm.dbg.value(metadata i8 %something_changed.3, metadata !3808, metadata !DIExpression()), !dbg !3844
  call void @notice_special_calls(%union.gimple_statement_d* %call23) #6, !dbg !3918
  br label %for.inc, !dbg !3919

for.inc:                                          ; preds = %if.then33, %if.else, %if.then26, %if.end56
  %something_changed.6 = phi i8 [ %spec.select, %if.then26 ], [ %something_changed.1, %if.else ], [ %something_changed.3, %if.end56 ], [ %something_changed.1, %if.then33 ], !dbg !3862
  call void @llvm.dbg.value(metadata i8 %something_changed.6, metadata !3808, metadata !DIExpression()), !dbg !3844
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !3920
  br label %for.cond, !dbg !3921, !llvm.loop !3922

while.end:                                        ; preds = %while.cond
  %something_changed.0.lcssa = phi i8 [ %something_changed.0, %while.cond ], !dbg !3862
  call void @llvm.dbg.value(metadata i8 %something_changed.0.lcssa, metadata !3808, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i8 %something_changed.0.lcssa, metadata !3808, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i8 %something_changed.0.lcssa, metadata !3808, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %h, metadata !3814, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  call fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** nonnull %h) #8, !dbg !3924
  %.b = load i1, i1* @cfg_altered, align 1, !dbg !3925
  br i1 %.b, label %if.then61, label %while.end.if.end167_crit_edge, !dbg !3926

while.end.if.end167_crit_edge:                    ; preds = %while.end
  %.pre6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3927
  %cfg169.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre6, i64 0, i32 1, !dbg !3929
  %.pre7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg169.phi.trans.insert, align 8, !dbg !3927
  %x_entry_block_ptr170.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre7, i64 0, i32 0, !dbg !3929
  %.pre8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr170.phi.trans.insert, align 8, !dbg !3927
  br label %if.end167, !dbg !3926

if.then61:                                        ; preds = %while.end
  call void @find_unreachable_blocks() #6, !dbg !3930
  %23 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3931
  %cfg63 = getelementptr inbounds %struct.function, %struct.function* %23, i64 0, i32 1, !dbg !3931
  %24 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg63, align 8, !dbg !3931
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %24, i64 0, i32 1, !dbg !3931
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3931
  %prev_bb64 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i64 0, i32 5, !dbg !3932
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %prev_bb64, align 8, !dbg !3932
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %26, metadata !3809, metadata !DIExpression()), !dbg !3844
  %27 = bitcast %struct.gimple_stmt_iterator* %tmp85 to i8*, !dbg !3933
  %28 = bitcast %struct.immediate_use_iterator_d* %iter to i8*, !dbg !3934
  br label %for.cond65, !dbg !3935

for.cond65:                                       ; preds = %for.inc165, %if.then61
  %29 = phi %struct.control_flow_graph* [ %24, %if.then61 ], [ %.pre4, %for.inc165 ], !dbg !3936
  %bb.0 = phi %struct.basic_block_def* [ %26, %if.then61 ], [ %prev_bb.3, %for.inc165 ], !dbg !3937
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3809, metadata !DIExpression()), !dbg !3844
  %x_entry_block_ptr68 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %29, i64 0, i32 0, !dbg !3936
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr68, align 8, !dbg !3936
  %cmp69 = icmp eq %struct.basic_block_def* %bb.0, %30, !dbg !3938
  br i1 %cmp69, label %if.end167.loopexit, label %for.body70, !dbg !3939

for.body70:                                       ; preds = %for.cond65
  %prev_bb71 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 5, !dbg !3940
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %prev_bb71, align 8, !dbg !3940
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %31, metadata !3830, metadata !DIExpression()), !dbg !3941
  %32 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @bb_contains_live_stmts, align 8, !dbg !3942
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3942
  %33 = load i32, i32* %index, align 8, !dbg !3942
  %div73 = lshr i32 %33, 6, !dbg !3942
  %idxprom74 = zext i32 %div73 to i64, !dbg !3942
  %arrayidx75 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %32, i64 0, i32 3, i64 %idxprom74, !dbg !3942
  %34 = load i64, i64* %arrayidx75, align 8, !dbg !3942
  %rem77 = and i32 %33, 63, !dbg !3942
  %sh_prom78 = zext i32 %rem77 to i64, !dbg !3942
  %35 = shl i64 1, %sh_prom78, !dbg !3942
  %36 = and i64 %34, %35, !dbg !3942
  %tobool81 = icmp eq i64 %36, 0, !dbg !3942
  br i1 %tobool81, label %if.then84, label %lor.lhs.false, !dbg !3943

lor.lhs.false:                                    ; preds = %for.body70
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 13, !dbg !3944
  %37 = load i32, i32* %flags, align 8, !dbg !3944
  %and82 = and i32 %37, 2, !dbg !3945
  %tobool83 = icmp eq i32 %and82, 0, !dbg !3945
  br i1 %tobool83, label %if.then84, label %for.inc165, !dbg !3946

if.then84:                                        ; preds = %lor.lhs.false, %for.body70
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %27) #7, !dbg !3947
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp85, %struct.basic_block_def* %bb.0) #6, !dbg !3947
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %27, i64 24, i1 false), !dbg !3947
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %27) #7, !dbg !3947
  br label %for.cond86, !dbg !3948

for.cond86:                                       ; preds = %for.inc125, %if.then84
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3810, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  %call87 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3949
  %tobool88 = icmp eq i8 %call87, 0, !dbg !3950
  br i1 %tobool88, label %for.body90, label %for.end126, !dbg !3951

for.body90:                                       ; preds = %for.cond86
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3810, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  %call91 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3952
  %call92 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call91) #8, !dbg !3953
  %call93 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call92) #6, !dbg !3954
  %tobool94 = icmp eq i8 %call93, 0, !dbg !3954
  br i1 %tobool94, label %if.then95, label %for.inc125, !dbg !3955

if.then95:                                        ; preds = %for.body90
  call void @llvm.dbg.value(metadata i8 0, metadata !3833, metadata !DIExpression()), !dbg !3934
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %28) #7, !dbg !3956
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3810, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  %call96 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3957
  %call97 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call96) #8, !dbg !3957
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !3843, metadata !DIExpression(DW_OP_deref)), !dbg !3934
  %call98 = call fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %iter, %union.tree_node* %call97) #8, !dbg !3957
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call98, metadata !3812, metadata !DIExpression()), !dbg !3844
  br label %for.cond99, !dbg !3957

for.cond99:                                       ; preds = %for.inc117, %if.then95
  %stmt.0 = phi %union.gimple_statement_d* [ %call98, %if.then95 ], [ %call118, %for.inc117 ], !dbg !3959
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt.0, metadata !3812, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !3843, metadata !DIExpression(DW_OP_deref)), !dbg !3934
  %call100 = call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !3960
  %tobool101 = icmp eq i8 %call100, 0, !dbg !3960
  br i1 %tobool101, label %for.body103, label %for.end119.loopexit, !dbg !3957

for.body103:                                      ; preds = %for.cond99
  %call104 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt.0) #8, !dbg !3962
  %flags105 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call104, i64 0, i32 13, !dbg !3965
  %38 = load i32, i32* %flags105, align 8, !dbg !3965
  %and106 = and i32 %38, 2, !dbg !3966
  %tobool107 = icmp eq i32 %and106, 0, !dbg !3966
  br i1 %tobool107, label %for.inc117, label %if.end109, !dbg !3967

if.end109:                                        ; preds = %for.body103
  %call110 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt.0) #8, !dbg !3968
  %cmp111 = icmp eq i32 %call110, 16, !dbg !3970
  br i1 %cmp111, label %if.then115, label %lor.lhs.false112, !dbg !3971

lor.lhs.false112:                                 ; preds = %if.end109
  %call113 = call fastcc i32 @gimple_plf(%union.gimple_statement_d* %stmt.0, i32 1) #8, !dbg !3972
  %tobool114 = icmp eq i32 %call113, 0, !dbg !3972
  br i1 %tobool114, label %for.inc117, label %if.then115, !dbg !3973

if.then115:                                       ; preds = %lor.lhs.false112, %if.end109
  call void @llvm.dbg.value(metadata i8 1, metadata !3833, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !3843, metadata !DIExpression(DW_OP_deref)), !dbg !3934
  call fastcc void @end_imm_use_stmt_traverse(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !3974
  br label %for.end119, !dbg !3974

for.inc117:                                       ; preds = %lor.lhs.false112, %for.body103
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !3843, metadata !DIExpression(DW_OP_deref)), !dbg !3934
  %call118 = call fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !3960
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call118, metadata !3812, metadata !DIExpression()), !dbg !3844
  br label %for.cond99, !dbg !3960, !llvm.loop !3977

for.end119.loopexit:                              ; preds = %for.cond99
  br label %for.end119, !dbg !3979

for.end119:                                       ; preds = %for.end119.loopexit, %if.then115
  %found.0 = phi i1 [ true, %if.then115 ], [ false, %for.end119.loopexit ]
  br i1 %found.0, label %if.then121, label %if.end123, !dbg !3979

if.then121:                                       ; preds = %for.end119
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3810, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  %call122 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3980
  call void @mark_virtual_phi_result_for_renaming(%union.gimple_statement_d* %call122) #8, !dbg !3982
  br label %if.end123, !dbg !3982

if.end123:                                        ; preds = %if.then121, %for.end119
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %28) #7, !dbg !3983
  br label %for.inc125, !dbg !3984

for.inc125:                                       ; preds = %for.body90, %if.end123
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3810, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !3985
  br label %for.cond86, !dbg !3986, !llvm.loop !3987

for.end126:                                       ; preds = %for.cond86
  %flags127 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 13, !dbg !3989
  %39 = load i32, i32* %flags127, align 8, !dbg !3989
  %and128 = and i32 %39, 2, !dbg !3991
  %tobool129 = icmp eq i32 %and128, 0, !dbg !3991
  br i1 %tobool129, label %if.then130, label %for.inc165, !dbg !3992

if.then130:                                       ; preds = %for.end126
  %40 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !3993
  %tobool131 = icmp eq i32 %40, 0, !dbg !3993
  br i1 %tobool131, label %if.then135, label %lor.lhs.false132, !dbg !3996

lor.lhs.false132:                                 ; preds = %if.then130
  %call133 = call %struct.basic_block_def* @first_dom_son(i32 1, %struct.basic_block_def* %bb.0) #6, !dbg !3997
  %tobool134 = icmp eq %struct.basic_block_def* %call133, null, !dbg !3997
  br i1 %tobool134, label %if.then135, label %if.else136, !dbg !3998

if.then135:                                       ; preds = %lor.lhs.false132, %if.then130
  call void @delete_basic_block(%struct.basic_block_def* %bb.0) #6, !dbg !3999
  br label %for.inc165, !dbg !3999

if.else136:                                       ; preds = %lor.lhs.false132
  %call137 = call %struct.VEC_basic_block_heap* @get_all_dominated_blocks(i32 1, %struct.basic_block_def* %bb.0) #6, !dbg !4000
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %call137, metadata !3814, metadata !DIExpression()), !dbg !3844
  store %struct.VEC_basic_block_heap* %call137, %struct.VEC_basic_block_heap** %h, align 8, !dbg !4002
  br label %while.cond138, !dbg !4003

while.cond138:                                    ; preds = %while.cond138.backedge, %if.else136
  %41 = phi %struct.VEC_basic_block_heap* [ %call137, %if.else136 ], [ %.pre5, %while.cond138.backedge ], !dbg !4004
  %prev_bb.0 = phi %struct.basic_block_def* [ %31, %if.else136 ], [ %43, %while.cond138.backedge ], !dbg !4005
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %prev_bb.0, metadata !3830, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %41, metadata !3814, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %41, metadata !3814, metadata !DIExpression()), !dbg !3844
  %base141 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %41, i64 0, i32 0, !dbg !4004
  %call145 = call fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %base141) #8, !dbg !4004
  %tobool146 = icmp eq i32 %call145, 0, !dbg !4003
  br i1 %tobool146, label %while.end161, label %while.body147, !dbg !4003

while.body147:                                    ; preds = %while.cond138
  %42 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %h, align 8, !dbg !4006
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %42, metadata !3814, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %42, metadata !3814, metadata !DIExpression()), !dbg !3844
  %base150 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %42, i64 0, i32 0, !dbg !4006
  %call154 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_pop(%struct.VEC_basic_block_base* %base150) #8, !dbg !4006
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call154, metadata !3809, metadata !DIExpression()), !dbg !3844
  %prev_bb155 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call154, i64 0, i32 5, !dbg !4008
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %prev_bb155, align 8, !dbg !4008
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %43, metadata !3830, metadata !DIExpression()), !dbg !3941
  %flags156 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call154, i64 0, i32 13, !dbg !4009
  %44 = load i32, i32* %flags156, align 8, !dbg !4009
  %and157 = and i32 %44, 2, !dbg !4011
  %tobool158 = icmp eq i32 %and157, 0, !dbg !4011
  br i1 %tobool158, label %if.end160, label %while.cond138.backedge, !dbg !4012

if.end160:                                        ; preds = %while.body147
  call void @delete_basic_block(%struct.basic_block_def* %call154) #6, !dbg !4013
  br label %while.cond138.backedge, !dbg !4003

while.cond138.backedge:                           ; preds = %if.end160, %while.body147
  %.pre5 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %h, align 8, !dbg !4004
  br label %while.cond138, !dbg !3941, !llvm.loop !4014

while.end161:                                     ; preds = %while.cond138
  %prev_bb.0.lcssa = phi %struct.basic_block_def* [ %prev_bb.0, %while.cond138 ], !dbg !4005
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %prev_bb.0.lcssa, metadata !3830, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %prev_bb.0.lcssa, metadata !3830, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %prev_bb.0.lcssa, metadata !3830, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %h, metadata !3814, metadata !DIExpression(DW_OP_deref)), !dbg !3844
  call fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** nonnull %h) #8, !dbg !4016
  br label %for.inc165

for.inc165:                                       ; preds = %lor.lhs.false, %for.end126, %if.then135, %while.end161
  %prev_bb.3 = phi %struct.basic_block_def* [ %31, %lor.lhs.false ], [ %31, %for.end126 ], [ %prev_bb.0.lcssa, %while.end161 ], [ %31, %if.then135 ], !dbg !4017
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %prev_bb.3, metadata !3830, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %prev_bb.3, metadata !3809, metadata !DIExpression()), !dbg !3844
  %.pre3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3936
  %cfg67.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre3, i64 0, i32 1, !dbg !4018
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg67.phi.trans.insert, align 8, !dbg !3936
  br label %for.cond65, !dbg !4019, !llvm.loop !4020

if.end167.loopexit:                               ; preds = %for.cond65
  %.lcssa = phi %struct.control_flow_graph* [ %29, %for.cond65 ], !dbg !3936
  %bb.0.lcssa = phi %struct.basic_block_def* [ %bb.0, %for.cond65 ], !dbg !3937
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0.lcssa, metadata !3809, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0.lcssa, metadata !3809, metadata !DIExpression()), !dbg !3844
  br label %if.end167, !dbg !3927

if.end167:                                        ; preds = %while.end.if.end167_crit_edge, %if.end167.loopexit
  %45 = phi %struct.basic_block_def* [ %.pre8, %while.end.if.end167_crit_edge ], [ %bb.0.lcssa, %if.end167.loopexit ], !dbg !3927
  %46 = phi %struct.control_flow_graph* [ %.pre7, %while.end.if.end167_crit_edge ], [ %.lcssa, %if.end167.loopexit ], !dbg !3927
  br label %for.cond171, !dbg !3927

for.cond171:                                      ; preds = %for.body176, %if.end167
  %47 = phi %struct.control_flow_graph* [ %46, %if.end167 ], [ %.pre10, %for.body176 ], !dbg !4022
  %.pn = phi %struct.basic_block_def* [ %45, %if.end167 ], [ %bb.1, %for.body176 ]
  %something_changed.7 = phi i8 [ %something_changed.0.lcssa, %if.end167 ], [ %or1, %for.body176 ], !dbg !3844
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3929
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !3929
  call void @llvm.dbg.value(metadata i8 %something_changed.7, metadata !3808, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !3809, metadata !DIExpression()), !dbg !3844
  %x_exit_block_ptr174 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %47, i64 0, i32 1, !dbg !4022
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr174, align 8, !dbg !4022
  %cmp175 = icmp eq %struct.basic_block_def* %bb.1, %48, !dbg !4022
  br i1 %cmp175, label %for.end182, label %for.body176, !dbg !3927

for.body176:                                      ; preds = %for.cond171
  %call177 = call fastcc zeroext i8 @remove_dead_phis(%struct.basic_block_def* %bb.1) #8, !dbg !4024
  %or1 = or i8 %something_changed.7, %call177, !dbg !4026
  call void @llvm.dbg.value(metadata i8 %or1, metadata !3808, metadata !DIExpression()), !dbg !3844
  %.pre9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4022
  %cfg173.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre9, i64 0, i32 1, !dbg !4027
  %.pre10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg173.phi.trans.insert, align 8, !dbg !4022
  br label %for.cond171, !dbg !4022, !llvm.loop !4028

for.end182:                                       ; preds = %for.cond171
  %something_changed.7.lcssa = phi i8 [ %something_changed.7, %for.cond171 ], !dbg !3844
  call void @llvm.dbg.value(metadata i8 %something_changed.7.lcssa, metadata !3808, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i8 %something_changed.7.lcssa, metadata !3808, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i8 %something_changed.7.lcssa, metadata !3808, metadata !DIExpression()), !dbg !3844
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !4030
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !4030
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !4030
  ret i8 %something_changed.7.lcssa, !dbg !4031
}

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #2

declare dso_local void @statistics_counter_event(%struct.function*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @print_stats() unnamed_addr #5 !dbg !4032 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 2), align 4, !dbg !4037
  %conv = sitofp i32 %0 to float, !dbg !4038
  %1 = load i32, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 0), align 4, !dbg !4039
  %conv1 = sitofp i32 %1 to float, !dbg !4040
  %div = fdiv float %conv, %conv1, !dbg !4041
  %mul = fmul float %div, 1.000000e+02, !dbg !4042
  call void @llvm.dbg.value(metadata float %mul, metadata !4036, metadata !DIExpression()), !dbg !4043
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4044
  %conv2 = fptosi float %mul to i32, !dbg !4045
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i32 %0, i32 %1, i32 %conv2) #6, !dbg !4046
  %3 = load i32, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 1), align 4, !dbg !4047
  %cmp = icmp eq i32 %3, 0, !dbg !4049
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else, !dbg !4050

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = load i32, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 3), align 4, !dbg !4051
  br label %if.end, !dbg !4050

if.else:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 3), align 4, !dbg !4052
  %conv4 = sitofp i32 %4 to float, !dbg !4053
  %conv5 = sitofp i32 %3 to float, !dbg !4054
  %div6 = fdiv float %conv4, %conv5, !dbg !4055
  %mul7 = fmul float %div6, 1.000000e+02, !dbg !4056
  call void @llvm.dbg.value(metadata float %mul7, metadata !4036, metadata !DIExpression()), !dbg !4043
  %phitmp = fptosi float %mul7 to i32
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.else
  %5 = phi i32 [ %4, %if.else ], [ %.pre, %entry.if.end_crit_edge ], !dbg !4051
  %percg.0 = phi i32 [ %phitmp, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4057
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0), i32 %5, i32 %3, i32 %percg.0) #6, !dbg !4058
  ret void, !dbg !4059
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tree_dce_done(i8 zeroext %aggressive) unnamed_addr #5 !dbg !4060 {
entry:
  call void @llvm.dbg.value(metadata i8 %aggressive, metadata !4062, metadata !DIExpression()), !dbg !4066
  %tobool = icmp eq i8 %aggressive, 0, !dbg !4067
  br i1 %tobool, label %if.end, label %for.cond.preheader, !dbg !4068

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !4069

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !4071
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4063, metadata !DIExpression()), !dbg !4072
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4073
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !4073
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4073
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !4073
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !4073
  %3 = sext i32 %2 to i64, !dbg !4075
  %cmp = icmp slt i64 %indvars.iv, %3, !dbg !4075
  %4 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** @control_dependence_map, align 8, !dbg !4072
  br i1 %cmp, label %for.body, label %for.end, !dbg !4069

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %4, i64 %indvars.iv, !dbg !4076
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4076
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %5) #6, !dbg !4076
  %6 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** @control_dependence_map, align 8, !dbg !4076
  %arrayidx2 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %6, i64 %indvars.iv, !dbg !4076
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %arrayidx2, align 8, !dbg !4076
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4077
  call void @llvm.dbg.value(metadata i32 undef, metadata !4063, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4072
  br label %for.cond, !dbg !4078, !llvm.loop !4079

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.bitmap_head_def** [ %4, %for.cond ], !dbg !4072
  %7 = bitcast %struct.bitmap_head_def** %.lcssa to i8*, !dbg !4081
  tail call void @free(i8* %7) #6, !dbg !4082
  %8 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @visited_control_parents, align 8, !dbg !4083
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %8, i64 0, i32 0, !dbg !4083
  %9 = load i8*, i8** %popcount, align 8, !dbg !4083
  tail call void @free(i8* %9) #6, !dbg !4083
  %10 = load i8*, i8** bitcast (%struct.simple_bitmap_def** @visited_control_parents to i8**), align 8, !dbg !4083
  tail call void @free(i8* %10) #6, !dbg !4083
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @last_stmt_necessary, align 8, !dbg !4084
  %popcount3 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %11, i64 0, i32 0, !dbg !4084
  %12 = load i8*, i8** %popcount3, align 8, !dbg !4084
  tail call void @free(i8* %12) #6, !dbg !4084
  %13 = load i8*, i8** bitcast (%struct.simple_bitmap_def** @last_stmt_necessary to i8**), align 8, !dbg !4084
  tail call void @free(i8* %13) #6, !dbg !4084
  %14 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @bb_contains_live_stmts, align 8, !dbg !4085
  %popcount4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %14, i64 0, i32 0, !dbg !4085
  %15 = load i8*, i8** %popcount4, align 8, !dbg !4085
  tail call void @free(i8* %15) #6, !dbg !4085
  %16 = load i8*, i8** bitcast (%struct.simple_bitmap_def** @bb_contains_live_stmts to i8**), align 8, !dbg !4085
  tail call void @free(i8* %16) #6, !dbg !4085
  store %struct.simple_bitmap_def* null, %struct.simple_bitmap_def** @bb_contains_live_stmts, align 8, !dbg !4086
  br label %if.end, !dbg !4087

if.end:                                           ; preds = %entry, %for.end
  %17 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @processed, align 8, !dbg !4088
  %popcount5 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %17, i64 0, i32 0, !dbg !4088
  %18 = load i8*, i8** %popcount5, align 8, !dbg !4088
  tail call void @free(i8* %18) #6, !dbg !4088
  %19 = load i8*, i8** bitcast (%struct.simple_bitmap_def** @processed to i8**), align 8, !dbg !4088
  tail call void @free(i8* %19) #6, !dbg !4088
  tail call fastcc void @VEC_gimple_heap_free(%struct.VEC_gimple_heap** nonnull @worklist) #8, !dbg !4089
  ret void, !dbg !4090
}

declare dso_local void @free_edge_list(%struct.edge_list*) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !4091 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4097, metadata !DIExpression()), !dbg !4098
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !4099
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4099

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !4099
  %0 = load i32, i32* %num, align 8, !dbg !4099
  br label %cond.end, !dbg !4099

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4099
  ret i32 %cond, !dbg !4099
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_gimple_heap* @VEC_gimple_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !4100 {
entry:
  call void @llvm.dbg.value(metadata i32 64, metadata !4104, metadata !DIExpression()), !dbg !4105
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 64) #6, !dbg !4106
  %0 = bitcast i8* %call to %struct.VEC_gimple_heap*, !dbg !4106
  ret %struct.VEC_gimple_heap* %0, !dbg !4106
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @find_control_dependence(%struct.edge_list* %el, i32 %edge_index) unnamed_addr #5 !dbg !4107 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_list* %el, metadata !4111, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i32 %edge_index, metadata !4112, metadata !DIExpression()), !dbg !4119
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %el, i64 0, i32 2, !dbg !4120
  %0 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !4120
  %idxprom = sext i32 %edge_index to i64, !dbg !4120
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %0, i64 %idxprom, !dbg !4120
  %1 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4120
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %1, i64 0, i32 0, !dbg !4120
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4120
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4120
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !4120
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4120
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !4120
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4120
  %cmp = icmp eq %struct.basic_block_def* %2, %5, !dbg !4120
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4120

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4120
  %.pre = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !4121
  %arrayidx3.phi.trans.insert = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %.pre, i64 %idxprom, !dbg !4123
  %.pre1 = load %struct.edge_def*, %struct.edge_def** %arrayidx3.phi.trans.insert, align 8, !dbg !4121
  %src4.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.pre1, i64 0, i32 0, !dbg !4123
  %.pre2 = load %struct.basic_block_def*, %struct.basic_block_def** %src4.phi.trans.insert, align 8, !dbg !4121
  %.pre3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4124
  %cfg6.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre3, i64 0, i32 1, !dbg !4123
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6.phi.trans.insert, align 8, !dbg !4124
  br label %cond.end, !dbg !4120

cond.end:                                         ; preds = %entry, %cond.true
  %6 = phi %struct.control_flow_graph* [ %4, %entry ], [ %.pre4, %cond.true ], !dbg !4124
  %7 = phi %struct.basic_block_def* [ %2, %entry ], [ %.pre2, %cond.true ], !dbg !4121
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !4124
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4124
  %cmp7 = icmp eq %struct.basic_block_def* %7, %8, !dbg !4125
  br i1 %cmp7, label %if.then, label %if.else, !dbg !4126

if.then:                                          ; preds = %cond.end
  %call = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %7) #8, !dbg !4127
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4114, metadata !DIExpression()), !dbg !4119
  br label %if.end, !dbg !4128

if.else:                                          ; preds = %cond.end
  %call15 = tail call fastcc %struct.basic_block_def* @find_pdom(%struct.basic_block_def* %7) #8, !dbg !4129
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call15, metadata !4114, metadata !DIExpression()), !dbg !4119
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ending_block.0 = phi %struct.basic_block_def* [ %call, %if.then ], [ %call15, %if.else ], !dbg !4123
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %ending_block.0, metadata !4114, metadata !DIExpression()), !dbg !4119
  %9 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !4130
  %arrayidx18 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %9, i64 %idxprom, !dbg !4130
  %10 = load %struct.edge_def*, %struct.edge_def** %arrayidx18, align 8, !dbg !4130
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i64 0, i32 1, !dbg !4130
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4130
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %11, metadata !4113, metadata !DIExpression()), !dbg !4119
  br label %for.cond, !dbg !4131

for.cond:                                         ; preds = %cleanup, %if.end
  %current_block.0 = phi %struct.basic_block_def* [ %11, %if.end ], [ %call29, %cleanup ], !dbg !4132
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %current_block.0, metadata !4113, metadata !DIExpression()), !dbg !4119
  %cmp19 = icmp eq %struct.basic_block_def* %current_block.0, %ending_block.0, !dbg !4133
  br i1 %cmp19, label %for.end, label %land.rhs, !dbg !4134

land.rhs:                                         ; preds = %for.cond
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4135
  %cfg21 = getelementptr inbounds %struct.function, %struct.function* %12, i64 0, i32 1, !dbg !4135
  %13 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg21, align 8, !dbg !4135
  %x_exit_block_ptr22 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %13, i64 0, i32 1, !dbg !4135
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr22, align 8, !dbg !4135
  %cmp23 = icmp eq %struct.basic_block_def* %current_block.0, %14, !dbg !4136
  br i1 %cmp23, label %for.end, label %for.body, !dbg !4137

for.body:                                         ; preds = %land.rhs
  %15 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !4138
  %arrayidx26 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %15, i64 %idxprom, !dbg !4138
  %16 = load %struct.edge_def*, %struct.edge_def** %arrayidx26, align 8, !dbg !4138
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !4115, metadata !DIExpression()), !dbg !4139
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 7, !dbg !4140
  %17 = load i32, i32* %flags, align 8, !dbg !4140
  %and = and i32 %17, 2, !dbg !4142
  %tobool = icmp eq i32 %and, 0, !dbg !4142
  br i1 %tobool, label %if.end28, label %cleanup, !dbg !4143

if.end28:                                         ; preds = %for.body
  tail call fastcc void @set_control_dependence_map_bit(%struct.basic_block_def* %current_block.0, i32 %edge_index) #8, !dbg !4144
  br label %cleanup, !dbg !4145

cleanup:                                          ; preds = %for.body, %if.end28
  %call29 = tail call fastcc %struct.basic_block_def* @find_pdom(%struct.basic_block_def* %current_block.0) #8, !dbg !4146
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call29, metadata !4113, metadata !DIExpression()), !dbg !4119
  br label %for.cond, !dbg !4147, !llvm.loop !4148

for.end:                                          ; preds = %land.rhs, %for.cond
  ret void, !dbg !4150
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4151 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4158, metadata !DIExpression()), !dbg !4159
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #8, !dbg !4160
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !4161
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4161
  ret %struct.basic_block_def* %0, !dbg !4162
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @find_pdom(%struct.basic_block_def* %block) unnamed_addr #0 !dbg !4163 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %block, metadata !4167, metadata !DIExpression()), !dbg !4171
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4172
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !4172
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4172
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !4172
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4172
  %cmp = icmp eq %struct.basic_block_def* %2, %block, !dbg !4172
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4172

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4172
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4173
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !4174
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !4173
  br label %cond.end, !dbg !4172

cond.end:                                         ; preds = %entry, %cond.true
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %cond.true ], !dbg !4173
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !4173
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4173
  %cmp3 = icmp eq %struct.basic_block_def* %4, %block, !dbg !4175
  br i1 %cmp3, label %if.then, label %if.else, !dbg !4176

if.then:                                          ; preds = %cond.end
  br label %return, !dbg !4177

if.else:                                          ; preds = %cond.end
  %call = tail call %struct.basic_block_def* @get_immediate_dominator(i32 2, %struct.basic_block_def* %block) #6, !dbg !4178
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4168, metadata !DIExpression()), !dbg !4179
  %tobool = icmp eq %struct.basic_block_def* %call, null, !dbg !4180
  br i1 %tobool, label %if.then7, label %return, !dbg !4182

if.then7:                                         ; preds = %if.else
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4183
  %cfg9 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !4183
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg9, align 8, !dbg !4183
  %x_exit_block_ptr10 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 1, !dbg !4183
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr10, align 8, !dbg !4183
  br label %return, !dbg !4184

return:                                           ; preds = %if.else, %if.then7, %if.then
  %retval.1 = phi %struct.basic_block_def* [ %block, %if.then ], [ %7, %if.then7 ], [ %call, %if.else ], !dbg !4174
  ret %struct.basic_block_def* %retval.1, !dbg !4185
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_control_dependence_map_bit(%struct.basic_block_def* %bb, i32 %edge_index) unnamed_addr #0 !dbg !4186 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4190, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i32 %edge_index, metadata !4191, metadata !DIExpression()), !dbg !4192
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4193
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !4193
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4193
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !4193
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4193
  %cmp = icmp eq %struct.basic_block_def* %2, %bb, !dbg !4195
  br i1 %cmp, label %return, label %if.end, !dbg !4196

if.end:                                           ; preds = %entry
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 1, !dbg !4197
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4197
  %cmp3 = icmp eq %struct.basic_block_def* %3, %bb, !dbg !4197
  br i1 %cmp3, label %cond.true, label %cond.end, !dbg !4197

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4197
  br label %cond.end, !dbg !4197

cond.end:                                         ; preds = %if.end, %cond.true
  %4 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** @control_dependence_map, align 8, !dbg !4198
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !4199
  %5 = load i32, i32* %index, align 8, !dbg !4199
  %idxprom = sext i32 %5 to i64, !dbg !4198
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %4, i64 %idxprom, !dbg !4198
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4198
  %call = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %6, i32 %edge_index) #6, !dbg !4200
  br label %return, !dbg !4201

return:                                           ; preds = %entry, %cond.end
  ret void, !dbg !4201
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4202 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4206, metadata !DIExpression()), !dbg !4207
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #8, !dbg !4208
  %tobool = icmp eq i8 %call, 0, !dbg !4208
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4208

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4208
  br label %cond.end, !dbg !4208

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4209
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4209
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4209
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !4209

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4209
  br label %cond.end5, !dbg !4209

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !4209
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !4209
  ret %struct.edge_def* %call7, !dbg !4210
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4211 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4215, metadata !DIExpression()), !dbg !4216
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4217
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4217
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4217
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4217

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4217
  br label %cond.end, !dbg !4217

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4217
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4217
  %cmp = icmp eq i32 %call, 1, !dbg !4218
  %conv2 = zext i1 %cmp to i8, !dbg !4217
  ret i8 %conv2, !dbg !4219
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4220 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4226, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4227, metadata !DIExpression()), !dbg !4228
  br label %land.end, !dbg !4229

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4229
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4229
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4229
  ret %struct.edge_def* %0, !dbg !4229
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !4230 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4234, metadata !DIExpression()), !dbg !4235
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4236
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4236

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4236
  %0 = load i32, i32* %num, align 8, !dbg !4236
  br label %cond.end, !dbg !4236

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4236
  ret i32 %cond, !dbg !4236
}

declare dso_local %struct.basic_block_def* @get_immediate_dominator(i32, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !4237 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !4241, metadata !DIExpression()), !dbg !4242
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4243
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4243
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !4244
  %conv1 = zext i1 %cmp to i8, !dbg !4245
  ret i8 %conv1, !dbg !4246
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !4247 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !4251, metadata !DIExpression()), !dbg !4252
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4253
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4253
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !4254
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4254
  ret %union.gimple_statement_d* %1, !dbg !4255
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_plf(%union.gimple_statement_d* %stmt, i32 %plf, i8 zeroext %val_p) unnamed_addr #0 !dbg !4256 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4260, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i32 1, metadata !4261, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i8 %val_p, metadata !4262, metadata !DIExpression()), !dbg !4263
  %tobool = icmp eq i8 %val_p, 0, !dbg !4264
  br i1 %tobool, label %if.else, label %if.then, !dbg !4266

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4267
  %bf.load = load i32, i32* %0, align 8, !dbg !4268
  %bf.set = or i32 %bf.load, 2048, !dbg !4268
  store i32 %bf.set, i32* %0, align 8, !dbg !4268
  br label %if.end, !dbg !4269

if.else:                                          ; preds = %entry
  %1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4270
  %bf.load4 = load i32, i32* %1, align 8, !dbg !4271
  %bf.set11 = and i32 %bf.load4, -2049, !dbg !4271
  store i32 %bf.set11, i32* %1, align 8, !dbg !4271
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4272
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !4273 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !4278, metadata !DIExpression()), !dbg !4279
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4280
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4280
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !4281
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !4281
  %2 = load i64, i64* %1, align 8, !dbg !4281
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !4282
  store i64 %2, i64* %3, align 8, !dbg !4282
  ret void, !dbg !4283
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4284 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4288, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4289, metadata !DIExpression()), !dbg !4292
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !4293
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !4290, metadata !DIExpression()), !dbg !4291
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !4294
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !4295
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4296
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !4297
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !4298
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !4299
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !4300
  ret void, !dbg !4301
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_stmt_if_obviously_necessary(%union.gimple_statement_d* %stmt, i8 zeroext %aggressive) unnamed_addr #5 !dbg !4302 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4306, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i8 %aggressive, metadata !4307, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !4308, metadata !DIExpression()), !dbg !4309
  %0 = load i32, i32* @flag_non_call_exceptions, align 4, !dbg !4310
  %tobool = icmp eq i32 %0, 0, !dbg !4310
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4312

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i8 @stmt_could_throw_p(%union.gimple_statement_d* %stmt) #6, !dbg !4313
  %tobool1 = icmp eq i8 %call, 0, !dbg !4313
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4314

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @mark_stmt_necessary(%union.gimple_statement_d* %stmt, i8 zeroext 1) #8, !dbg !4315
  br label %cleanup, !dbg !4317

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !4318
  switch i32 %call2, label %sw.epilog [
    i32 33, label %sw.bb
    i32 4, label %sw.bb
    i32 7, label %sw.bb3
    i32 14, label %sw.bb3
    i32 9, label %sw.bb3
    i32 8, label %sw.bb4
    i32 6, label %sw.bb14
    i32 2, label %sw.bb19
    i32 3, label %sw.bb27
    i32 1, label %sw.bb30
    i32 5, label %sw.bb47
  ], !dbg !4319

sw.bb:                                            ; preds = %if.end, %if.end
  tail call fastcc void @mark_stmt_necessary(%union.gimple_statement_d* %stmt, i8 zeroext 0) #8, !dbg !4320
  br label %cleanup, !dbg !4322

sw.bb3:                                           ; preds = %if.end, %if.end, %if.end
  tail call fastcc void @mark_stmt_necessary(%union.gimple_statement_d* %stmt, i8 zeroext 1) #8, !dbg !4323
  br label %cleanup, !dbg !4324

sw.bb4:                                           ; preds = %if.end
  %call5 = tail call zeroext i8 @gimple_has_side_effects(%union.gimple_statement_d* %stmt) #6, !dbg !4325
  %tobool6 = icmp eq i8 %call5, 0, !dbg !4325
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4327

if.then7:                                         ; preds = %sw.bb4
  tail call fastcc void @mark_stmt_necessary(%union.gimple_statement_d* %stmt, i8 zeroext 1) #8, !dbg !4328
  br label %cleanup, !dbg !4330

if.end8:                                          ; preds = %sw.bb4
  %call9 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !4331
  %tobool10 = icmp eq %union.tree_node* %call9, null, !dbg !4331
  br i1 %tobool10, label %cleanup, label %if.end12, !dbg !4333

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !4334
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !4308, metadata !DIExpression()), !dbg !4309
  %phitmp = icmp ne %union.tree_node* %call13, null, !dbg !4335
  br label %sw.bb14, !dbg !4335

sw.bb14:                                          ; preds = %if.end, %if.end12
  %lhs.0 = phi i1 [ false, %if.end ], [ %phitmp, %if.end12 ]
  br i1 %lhs.0, label %sw.epilog, label %if.then16, !dbg !4336

if.then16:                                        ; preds = %sw.bb14
  %call17 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !4337
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !4308, metadata !DIExpression()), !dbg !4309
  br label %sw.epilog, !dbg !4339

sw.bb19:                                          ; preds = %if.end
  %call20 = tail call fastcc zeroext i8 @gimple_debug_bind_has_value_p(%union.gimple_statement_d* %stmt) #8, !dbg !4340
  %tobool22 = icmp eq i8 %call20, 0, !dbg !4340
  br i1 %tobool22, label %lor.lhs.false, label %if.then25, !dbg !4342

lor.lhs.false:                                    ; preds = %sw.bb19
  %call23 = tail call fastcc %union.tree_node* @gimple_debug_bind_get_var(%union.gimple_statement_d* %stmt) #8, !dbg !4343
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4343
  %bf.load = load i64, i64* %1, align 8, !dbg !4343
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4344
  %cmp = icmp eq i64 %bf.cast1, 37, !dbg !4344
  br i1 %cmp, label %cleanup, label %if.then25, !dbg !4345

if.then25:                                        ; preds = %lor.lhs.false, %sw.bb19
  tail call fastcc void @mark_stmt_necessary(%union.gimple_statement_d* %stmt, i8 zeroext 0) #8, !dbg !4346
  br label %cleanup, !dbg !4346

sw.bb27:                                          ; preds = %if.end
  %call28 = tail call zeroext i8 @simple_goto_p(%union.gimple_statement_d* %stmt) #6, !dbg !4347
  %tobool29 = icmp eq i8 %call28, 0, !dbg !4347
  br i1 %tobool29, label %cond.end, label %cond.true, !dbg !4347

cond.true:                                        ; preds = %sw.bb27
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 338, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4347
  br label %cond.end, !dbg !4347

cond.end:                                         ; preds = %sw.bb27, %cond.true
  tail call fastcc void @mark_stmt_necessary(%union.gimple_statement_d* %stmt, i8 zeroext 1) #8, !dbg !4348
  br label %cleanup, !dbg !4349

sw.bb30:                                          ; preds = %if.end
  %call31 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #8, !dbg !4350
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call31, i64 0, i32 1, !dbg !4350
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4350
  %tobool32 = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !4350
  br i1 %tobool32, label %cond.end38, label %cond.true33, !dbg !4350

cond.true33:                                      ; preds = %sw.bb30
  %call34 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #8, !dbg !4350
  %succs35 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call34, i64 0, i32 1, !dbg !4350
  %3 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs35, align 8, !dbg !4350
  %base36 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %3, i64 0, i32 0, !dbg !4350
  br label %cond.end38, !dbg !4350

cond.end38:                                       ; preds = %sw.bb30, %cond.true33
  %cond39 = phi %struct.VEC_edge_base* [ %base36, %cond.true33 ], [ null, %sw.bb30 ], !dbg !4350
  %call40 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond39) #8, !dbg !4350
  %cmp41 = icmp eq i32 %call40, 2, !dbg !4350
  br i1 %cmp41, label %sw.bb47, label %cond.true43, !dbg !4350

cond.true43:                                      ; preds = %cond.end38
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 343, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4350
  br label %sw.bb47, !dbg !4350

sw.bb47:                                          ; preds = %cond.true43, %cond.end38, %if.end
  %tobool48 = icmp eq i8 %aggressive, 0, !dbg !4351
  br i1 %tobool48, label %if.then49, label %sw.epilog, !dbg !4353

if.then49:                                        ; preds = %sw.bb47
  tail call fastcc void @mark_stmt_necessary(%union.gimple_statement_d* %stmt, i8 zeroext 1) #8, !dbg !4354
  br label %sw.epilog, !dbg !4354

sw.epilog:                                        ; preds = %sw.bb47, %if.end, %if.then49, %sw.bb14, %if.then16
  %call51 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %stmt) #8, !dbg !4355
  %tobool53 = icmp eq i8 %call51, 0, !dbg !4355
  br i1 %tobool53, label %lor.lhs.false54, label %if.then58, !dbg !4357

lor.lhs.false54:                                  ; preds = %sw.epilog
  %call55 = tail call zeroext i8 @is_ctrl_altering_stmt(%union.gimple_statement_d* %stmt) #6, !dbg !4358
  %tobool57 = icmp eq i8 %call55, 0, !dbg !4358
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !4359

if.then58:                                        ; preds = %lor.lhs.false54, %sw.epilog
  tail call fastcc void @mark_stmt_necessary(%union.gimple_statement_d* %stmt, i8 zeroext 1) #8, !dbg !4360
  br label %cleanup, !dbg !4362

if.end59:                                         ; preds = %lor.lhs.false54
  %call60 = tail call zeroext i8 @is_hidden_global_store(%union.gimple_statement_d* %stmt) #6, !dbg !4363
  %tobool61 = icmp eq i8 %call60, 0, !dbg !4363
  br i1 %tobool61, label %cleanup, label %if.then62, !dbg !4365

if.then62:                                        ; preds = %if.end59
  tail call fastcc void @mark_stmt_necessary(%union.gimple_statement_d* %stmt, i8 zeroext 1) #8, !dbg !4366
  br label %cleanup, !dbg !4368

cleanup:                                          ; preds = %if.end8, %lor.lhs.false, %if.end59, %if.then25, %if.then62, %if.then58, %cond.end, %if.then7, %sw.bb3, %sw.bb, %if.then
  ret void, !dbg !4369
}

declare dso_local void @scev_initialize() local_unnamed_addr #2

declare dso_local zeroext i8 @mark_irreducible_loops() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !4370 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !4374, metadata !DIExpression()), !dbg !4376
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !4377
  store i32 0, i32* %index, align 8, !dbg !4378
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !4379
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !4380
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !4381
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !4381
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !4381
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !4382 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !4387, metadata !DIExpression()), !dbg !4388
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !4389
  %tobool = icmp eq i8 %call, 0, !dbg !4389
  br i1 %tobool, label %if.then, label %if.else, !dbg !4391

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !4392
  br label %return, !dbg !4394

if.else:                                          ; preds = %entry
  br label %return, !dbg !4395

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !4397
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !4397
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !4397
  ret i8 %retval.0, !dbg !4398
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_control_dependent_edges_necessary(%struct.basic_block_def* %bb, %struct.edge_list* %el) unnamed_addr #5 !dbg !4399 {
entry:
  %bi = alloca %struct.bitmap_iterator, align 8
  %edge_number = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4403, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata %struct.edge_list* %el, metadata !4404, metadata !DIExpression()), !dbg !4419
  %0 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !4420
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !4420
  %1 = bitcast i32* %edge_number to i8*, !dbg !4421
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7, !dbg !4421
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4422
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !4422
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4422
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !4422
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4422
  %cmp = icmp eq %struct.basic_block_def* %4, %bb, !dbg !4422
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4422

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 383, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4422
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4423
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !4425
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !4423
  br label %cond.end, !dbg !4422

cond.end:                                         ; preds = %entry, %cond.true
  %5 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre1, %cond.true ], !dbg !4423
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 0, !dbg !4423
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4423
  %cmp3 = icmp eq %struct.basic_block_def* %6, %bb, !dbg !4426
  br i1 %cmp3, label %cleanup22, label %if.end, !dbg !4427

if.end:                                           ; preds = %cond.end
  %7 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** @control_dependence_map, align 8, !dbg !4428
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !4428
  %8 = load i32, i32* %index, align 8, !dbg !4428
  %idxprom = sext i32 %8 to i64, !dbg !4428
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %7, i64 %idxprom, !dbg !4428
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4428
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4405, metadata !DIExpression(DW_OP_deref)), !dbg !4419
  call void @llvm.dbg.value(metadata i32* %edge_number, metadata !4413, metadata !DIExpression(DW_OP_deref)), !dbg !4419
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %9, i32 0, i32* nonnull %edge_number) #8, !dbg !4428
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %el, i64 0, i32 2, !dbg !4429
  br label %for.cond, !dbg !4428

for.cond:                                         ; preds = %cleanup, %if.end
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4405, metadata !DIExpression(DW_OP_deref)), !dbg !4419
  call void @llvm.dbg.value(metadata i32* %edge_number, metadata !4413, metadata !DIExpression(DW_OP_deref)), !dbg !4419
  %call = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %edge_number) #8, !dbg !4430
  %tobool = icmp eq i8 %call, 0, !dbg !4428
  br i1 %tobool, label %cleanup22.loopexit, label %for.body, !dbg !4428

for.body:                                         ; preds = %for.cond
  %10 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !4431
  %11 = load i32, i32* %edge_number, align 4, !dbg !4431
  call void @llvm.dbg.value(metadata i32 %11, metadata !4413, metadata !DIExpression()), !dbg !4419
  %idxprom4 = zext i32 %11 to i64, !dbg !4431
  %arrayidx5 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %10, i64 %idxprom4, !dbg !4431
  %12 = load %struct.edge_def*, %struct.edge_def** %arrayidx5, align 8, !dbg !4431
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 0, !dbg !4431
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4431
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %13, metadata !4418, metadata !DIExpression()), !dbg !4429
  %14 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @last_stmt_necessary, align 8, !dbg !4432
  %index6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 9, !dbg !4432
  %15 = load i32, i32* %index6, align 8, !dbg !4432
  %div = lshr i32 %15, 6, !dbg !4432
  %idxprom7 = zext i32 %div to i64, !dbg !4432
  %arrayidx8 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %14, i64 0, i32 3, i64 %idxprom7, !dbg !4432
  %16 = load i64, i64* %arrayidx8, align 8, !dbg !4432
  %rem = and i32 %15, 63, !dbg !4432
  %sh_prom = zext i32 %rem to i64, !dbg !4432
  %17 = shl i64 1, %sh_prom, !dbg !4432
  %18 = and i64 %16, %17, !dbg !4432
  %tobool10 = icmp eq i64 %18, 0, !dbg !4432
  br i1 %tobool10, label %if.end12, label %cleanup, !dbg !4434

if.end12:                                         ; preds = %for.body
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %14, i32 %15) #8, !dbg !4435
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @bb_contains_live_stmts, align 8, !dbg !4436
  %20 = load i32, i32* %index6, align 8, !dbg !4437
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %19, i32 %20) #8, !dbg !4438
  %call15 = call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %13) #6, !dbg !4439
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call15, metadata !4414, metadata !DIExpression()), !dbg !4429
  %tobool16 = icmp eq %union.gimple_statement_d* %call15, null, !dbg !4440
  br i1 %tobool16, label %cleanup, label %land.lhs.true, !dbg !4442

land.lhs.true:                                    ; preds = %if.end12
  %call17 = call zeroext i8 @is_ctrl_stmt(%union.gimple_statement_d* nonnull %call15) #6, !dbg !4443
  %tobool18 = icmp eq i8 %call17, 0, !dbg !4443
  br i1 %tobool18, label %cleanup, label %if.then19, !dbg !4444

if.then19:                                        ; preds = %land.lhs.true
  call fastcc void @mark_stmt_necessary(%union.gimple_statement_d* nonnull %call15, i8 zeroext 1) #8, !dbg !4445
  br label %cleanup, !dbg !4445

cleanup:                                          ; preds = %land.lhs.true, %if.end12, %for.body, %if.then19
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4405, metadata !DIExpression(DW_OP_deref)), !dbg !4419
  call void @llvm.dbg.value(metadata i32* %edge_number, metadata !4413, metadata !DIExpression(DW_OP_deref)), !dbg !4419
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %edge_number) #8, !dbg !4430
  br label %for.cond, !dbg !4430, !llvm.loop !4446

cleanup22.loopexit:                               ; preds = %for.cond
  br label %cleanup22, !dbg !4448

cleanup22:                                        ; preds = %cleanup22.loopexit, %cond.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7, !dbg !4448
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !4448
  ret void, !dbg !4448
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !4449 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !4454, metadata !DIExpression()), !dbg !4455
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !4456
  %0 = load i32, i32* %index, align 8, !dbg !4456
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !4456
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !4456
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !4456
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4456
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4456

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !4456
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !4456
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !4456
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4456
  br label %cond.end, !dbg !4456

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4456
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4456
  %cmp = icmp ult i32 %0, %call2, !dbg !4456
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !4456

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4456
  br label %cond.end5, !dbg !4456

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !4457
  %inc = add i32 %5, 1, !dbg !4457
  store i32 %inc, i32* %index, align 8, !dbg !4457
  ret void, !dbg !4458
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !4459 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4465, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4466, metadata !DIExpression()), !dbg !4471
  call void @llvm.dbg.value(metadata i32 0, metadata !4467, metadata !DIExpression()), !dbg !4471
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !4472
  store i32 0, i32* %idx, align 8, !dbg !4473
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4474
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !4474
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4474
  %tobool = icmp eq %struct.loops* %1, null, !dbg !4474
  br i1 %tobool, label %if.then, label %if.end, !dbg !4476

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !4477
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !4479
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !4480
  br label %cleanup, !dbg !4481

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !4482
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #8, !dbg !4482
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !4483
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !4484
  call void @llvm.dbg.value(metadata i32 1, metadata !4470, metadata !DIExpression()), !dbg !4471
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4485
  %x_current_loops35 = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !4485
  %3 = load %struct.loops*, %struct.loops** %x_current_loops35, align 8, !dbg !4485
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %3, i64 0, i32 3, !dbg !4485
  %4 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !4485
  br label %while.cond79, !dbg !4488

while.cond79:                                     ; preds = %if.end, %if.end111
  %5 = phi %struct.loop* [ %4, %if.end ], [ %25, %if.end111 ]
  %6 = phi %struct.loop* [ %4, %if.end ], [ %26, %if.end111 ]
  %7 = phi %struct.loop* [ %4, %if.end ], [ %27, %if.end111 ]
  %8 = phi %struct.loop* [ %4, %if.end ], [ %28, %if.end111 ]
  %9 = phi %struct.loop* [ %4, %if.end ], [ %29, %if.end111 ]
  %10 = phi %struct.loop* [ %4, %if.end ], [ %30, %if.end111 ]
  %11 = phi %struct.loop* [ %4, %if.end ], [ %31, %if.end111 ]
  %12 = phi %struct.loop* [ %4, %if.end ], [ %32, %if.end111 ], !dbg !4490
  call void @llvm.dbg.value(metadata %struct.loop* %12, metadata !4468, metadata !DIExpression()), !dbg !4471
  %num81 = getelementptr inbounds %struct.loop, %struct.loop* %12, i64 0, i32 0, !dbg !4493
  %13 = load i32, i32* %num81, align 8, !dbg !4493
  %cmp82 = icmp slt i32 %13, 1, !dbg !4494
  br i1 %cmp82, label %if.end94, label %if.then83, !dbg !4495

if.then83:                                        ; preds = %while.cond79
  %14 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !4496
  %tobool85 = icmp eq %struct.VEC_int_heap* %14, null, !dbg !4496
  br i1 %tobool85, label %cond.end90, label %cond.true86, !dbg !4496

cond.true86:                                      ; preds = %if.then83
  %base88 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %14, i64 0, i32 0, !dbg !4496
  br label %cond.end90, !dbg !4496

cond.end90:                                       ; preds = %if.then83, %cond.true86
  %cond91 = phi %struct.VEC_int_base* [ %base88, %cond.true86 ], [ null, %if.then83 ], !dbg !4496
  call void @llvm.dbg.value(metadata %struct.loop* %11, metadata !4468, metadata !DIExpression()), !dbg !4471
  %num92 = getelementptr inbounds %struct.loop, %struct.loop* %11, i64 0, i32 0, !dbg !4496
  %15 = load i32, i32* %num92, align 8, !dbg !4496
  %call93 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond91, i32 %15) #8, !dbg !4496
  br label %if.end94, !dbg !4496

if.end94:                                         ; preds = %while.cond79, %cond.end90
  call void @llvm.dbg.value(metadata %struct.loop* %10, metadata !4468, metadata !DIExpression()), !dbg !4471
  %inner95 = getelementptr inbounds %struct.loop, %struct.loop* %10, i64 0, i32 8, !dbg !4497
  %16 = load %struct.loop*, %struct.loop** %inner95, align 8, !dbg !4497
  %cmp96 = icmp eq %struct.loop* %16, null, !dbg !4499
  br i1 %cmp96, label %while.cond100.preheader, label %if.then97, !dbg !4500

while.cond100.preheader:                          ; preds = %if.end94
  br label %while.cond100, !dbg !4501

if.then97:                                        ; preds = %if.end94
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !4468, metadata !DIExpression()), !dbg !4471
  %inner98 = getelementptr inbounds %struct.loop, %struct.loop* %9, i64 0, i32 8, !dbg !4503
  %17 = load %struct.loop*, %struct.loop** %inner98, align 8, !dbg !4503
  br label %if.end111, !dbg !4504

while.cond100:                                    ; preds = %while.cond100.preheader, %while.body104
  %18 = phi %struct.loop* [ %5, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %19 = phi %struct.loop* [ %6, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %20 = phi %struct.loop* [ %7, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %21 = phi %struct.loop* [ %8, %while.cond100.preheader ], [ %call105, %while.body104 ], !dbg !4505
  call void @llvm.dbg.value(metadata %struct.loop* %21, metadata !4468, metadata !DIExpression()), !dbg !4471
  %cmp101 = icmp eq %struct.loop* %21, null, !dbg !4506
  br i1 %cmp101, label %land.end, label %land.rhs, !dbg !4507

land.rhs:                                         ; preds = %while.cond100
  call void @llvm.dbg.value(metadata %struct.loop* %20, metadata !4468, metadata !DIExpression()), !dbg !4471
  %next102 = getelementptr inbounds %struct.loop, %struct.loop* %20, i64 0, i32 9, !dbg !4508
  %22 = load %struct.loop*, %struct.loop** %next102, align 8, !dbg !4508
  %cmp103 = icmp eq %struct.loop* %22, null, !dbg !4509
  br label %land.end

land.end:                                         ; preds = %while.cond100, %land.rhs
  %23 = phi i1 [ false, %while.cond100 ], [ %cmp103, %land.rhs ], !dbg !4510
  call void @llvm.dbg.value(metadata %struct.loop* %19, metadata !4468, metadata !DIExpression()), !dbg !4471
  br i1 %23, label %while.body104, label %while.end106, !dbg !4501

while.body104:                                    ; preds = %land.end
  %call105 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %19) #8, !dbg !4511
  call void @llvm.dbg.value(metadata %struct.loop* %call105, metadata !4468, metadata !DIExpression()), !dbg !4471
  br label %while.cond100, !dbg !4501, !llvm.loop !4512

while.end106:                                     ; preds = %land.end
  %.lcssa4 = phi %struct.loop* [ %18, %land.end ]
  %.lcssa = phi %struct.loop* [ %19, %land.end ]
  %cmp107 = icmp eq %struct.loop* %.lcssa, null, !dbg !4514
  br i1 %cmp107, label %if.end114.loopexit, label %if.end109, !dbg !4516

if.end109:                                        ; preds = %while.end106
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa4, metadata !4468, metadata !DIExpression()), !dbg !4471
  %next110 = getelementptr inbounds %struct.loop, %struct.loop* %.lcssa4, i64 0, i32 9, !dbg !4517
  %24 = load %struct.loop*, %struct.loop** %next110, align 8, !dbg !4517
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
  br label %while.cond79, !dbg !4488, !llvm.loop !4518

if.end114.loopexit:                               ; preds = %while.end106
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #8, !dbg !4520
  br label %cleanup, !dbg !4521

cleanup:                                          ; preds = %if.end114.loopexit, %if.then
  ret void, !dbg !4521
}

declare dso_local zeroext i8 @finite_loop_p(%struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !4522 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !4526, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !4527, metadata !DIExpression()), !dbg !4529
  %0 = bitcast i32* %anum to i8*, !dbg !4530
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !4530
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !4529
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !4529
  br label %while.cond, !dbg !4531

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !4532
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !4532
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4532

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !4532
  br label %cond.end, !dbg !4532

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !4532
  %2 = load i32, i32* %idx, align 8, !dbg !4532
  call void @llvm.dbg.value(metadata i32* %anum, metadata !4528, metadata !DIExpression(DW_OP_deref)), !dbg !4529
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #8, !dbg !4532
  %tobool2 = icmp eq i32 %call, 0, !dbg !4531
  br i1 %tobool2, label %while.end, label %while.body, !dbg !4531

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !4533
  %inc = add i32 %3, 1, !dbg !4533
  store i32 %inc, i32* %idx, align 8, !dbg !4533
  %4 = load i32, i32* %anum, align 4, !dbg !4535
  call void @llvm.dbg.value(metadata i32 %4, metadata !4528, metadata !DIExpression()), !dbg !4529
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #8, !dbg !4536
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !4537
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !4538
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !4540, !llvm.loop !4541

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #8, !dbg !4543
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !4544
  br label %cleanup, !dbg !4545

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !4545

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !4545
  ret void, !dbg !4545
}

declare dso_local void @scev_finalize() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4546 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4550, metadata !DIExpression()), !dbg !4551
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4552
  %0 = load i32, i32* %flags, align 8, !dbg !4552
  %and = and i32 %0, 512, !dbg !4553
  %tobool = icmp eq i32 %and, 0, !dbg !4553
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !4554

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4555
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4555
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !4556
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4557

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4558
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4558
  br label %cond.end, !dbg !4557

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !4557
  ret %struct.gimple_seq_d* %cond, !dbg !4559
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4560 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4567, metadata !DIExpression()), !dbg !4568
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4569
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4569

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4570
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4570
  br label %cond.end, !dbg !4569

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4569
  ret %struct.gimple_seq_node_d* %cond, !dbg !4571
}

declare dso_local zeroext i8 @stmt_could_throw_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mark_stmt_necessary(%union.gimple_statement_d* %stmt, i8 zeroext %add_to_worklist) unnamed_addr #0 !dbg !4572 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4574, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.value(metadata i8 %add_to_worklist, metadata !4575, metadata !DIExpression()), !dbg !4576
  %tobool = icmp eq %union.gimple_statement_d* %stmt, null, !dbg !4577
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4577

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4577
  br label %cond.end, !dbg !4577

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call fastcc i32 @gimple_plf(%union.gimple_statement_d* %stmt, i32 1) #8, !dbg !4578
  %tobool1 = icmp eq i32 %call, 0, !dbg !4578
  br i1 %tobool1, label %if.end, label %if.end18, !dbg !4580

if.end:                                           ; preds = %cond.end
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4581
  %tobool2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4581
  br i1 %tobool2, label %if.end7, label %land.lhs.true, !dbg !4583

land.lhs.true:                                    ; preds = %if.end
  %1 = load i32, i32* @dump_flags, align 4, !dbg !4584
  %and = and i32 %1, 8, !dbg !4585
  %tobool3 = icmp eq i32 %and, 0, !dbg !4585
  br i1 %tobool3, label %if.end7, label %if.then4, !dbg !4586

if.then4:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !4587
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4589
  tail call void @print_gimple_stmt(%struct._IO_FILE* %2, %union.gimple_statement_d* %stmt, i32 0, i32 2) #6, !dbg !4590
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4591
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4592
  br label %if.end7, !dbg !4593

if.end7:                                          ; preds = %land.lhs.true, %if.end, %if.then4
  tail call fastcc void @gimple_set_plf(%union.gimple_statement_d* %stmt, i32 1, i8 zeroext 1) #8, !dbg !4594
  %tobool8 = icmp eq i8 %add_to_worklist, 0, !dbg !4595
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !4597

if.then9:                                         ; preds = %if.end7
  %call10 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_heap_safe_push(%struct.VEC_gimple_heap** nonnull @worklist, %union.gimple_statement_d* %stmt) #8, !dbg !4598
  br label %if.end11, !dbg !4598

if.end11:                                         ; preds = %if.end7, %if.then9
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @bb_contains_live_stmts, align 8, !dbg !4599
  %tobool12 = icmp eq %struct.simple_bitmap_def* %4, null, !dbg !4599
  br i1 %tobool12, label %if.end18, label %land.lhs.true13, !dbg !4601

land.lhs.true13:                                  ; preds = %if.end11
  %call14 = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %stmt) #8, !dbg !4602
  %tobool15 = icmp eq i8 %call14, 0, !dbg !4602
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !4603

if.then16:                                        ; preds = %land.lhs.true13
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @bb_contains_live_stmts, align 8, !dbg !4604
  %call17 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #8, !dbg !4605
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call17, i64 0, i32 9, !dbg !4606
  %6 = load i32, i32* %index, align 8, !dbg !4606
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %5, i32 %6) #8, !dbg !4607
  br label %if.end18, !dbg !4607

if.end18:                                         ; preds = %land.lhs.true13, %if.end11, %cond.end, %if.then16
  ret void, !dbg !4608
}

declare dso_local zeroext i8 @gimple_has_side_effects(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4609 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4611, metadata !DIExpression()), !dbg !4612
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !4613
  ret %union.tree_node* %call, !dbg !4614
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4615 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4617, metadata !DIExpression()), !dbg !4618
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !4619
  ret %union.tree_node* %call, !dbg !4620
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_has_value_p(%union.gimple_statement_d* %dbg) unnamed_addr #0 !dbg !4621 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %dbg, metadata !4625, metadata !DIExpression()), !dbg !4626
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %dbg, i32 1) #8, !dbg !4627
  %cmp = icmp ne %union.tree_node* %call, null, !dbg !4628
  %conv1 = zext i1 %cmp to i8, !dbg !4627
  ret i8 %conv1, !dbg !4629
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_debug_bind_get_var(%union.gimple_statement_d* %dbg) unnamed_addr #0 !dbg !4630 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %dbg, metadata !4634, metadata !DIExpression()), !dbg !4635
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %dbg, i32 0) #8, !dbg !4636
  ret %union.tree_node* %call, !dbg !4637
}

declare dso_local zeroext i8 @simple_goto_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4638 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4642, metadata !DIExpression()), !dbg !4643
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !4644
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4644
  ret %struct.basic_block_def* %0, !dbg !4645
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4646 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4648, metadata !DIExpression()), !dbg !4649
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %stmt) #8, !dbg !4650
  %tobool = icmp eq i8 %call, 0, !dbg !4650
  br i1 %tobool, label %return, label %if.then, !dbg !4652

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4653
  %bf.load = load i32, i32* %0, align 8, !dbg !4653
  %bf.lshr = lshr i32 %bf.load, 14, !dbg !4653
  %1 = trunc i32 %bf.lshr to i8, !dbg !4654
  %conv = and i8 %1, 1, !dbg !4654
  br label %return, !dbg !4655

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8 [ %conv, %if.then ], [ 0, %entry ], !dbg !4656
  ret i8 %retval.0, !dbg !4657
}

declare dso_local zeroext i8 @is_ctrl_altering_stmt(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local zeroext i8 @is_hidden_global_store(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_plf(%union.gimple_statement_d* %stmt, i32 %plf) unnamed_addr #0 !dbg !4658 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4662, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i32 1, metadata !4663, metadata !DIExpression()), !dbg !4664
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4665
  %bf.load = load i32, i32* %0, align 8, !dbg !4665
  %bf.lshr = lshr i32 %bf.load, 11, !dbg !4665
  %and = and i32 %bf.lshr, 1, !dbg !4666
  ret i32 %and, !dbg !4667
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d** @VEC_gimple_heap_safe_push(%struct.VEC_gimple_heap** %vec_, %union.gimple_statement_d* %obj_) unnamed_addr #0 !dbg !4668 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** @worklist, metadata !4674, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %obj_, metadata !4675, metadata !DIExpression()), !dbg !4676
  %call = tail call fastcc i32 @VEC_gimple_heap_reserve(%struct.VEC_gimple_heap** nonnull @worklist, i32 1) #8, !dbg !4677
  %0 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** @worklist, align 8, !dbg !4677
  %tobool = icmp eq %struct.VEC_gimple_heap* %0, null, !dbg !4677
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4677

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %0, i64 0, i32 0, !dbg !4677
  br label %cond.end, !dbg !4677

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4677
  %call1 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %cond, %union.gimple_statement_d* %obj_) #8, !dbg !4677
  ret %union.gimple_statement_d** %call1, !dbg !4677
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4678 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4680, metadata !DIExpression()), !dbg !4681
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !4682
  %cmp = icmp eq i32 %call, 2, !dbg !4683
  %conv1 = zext i1 %cmp to i8, !dbg !4682
  ret i8 %conv1, !dbg !4684
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !4685 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !4689, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !4690, metadata !DIExpression()), !dbg !4694
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !4695
  %0 = load i8*, i8** %popcount, align 8, !dbg !4695
  %tobool = icmp eq i8* %0, null, !dbg !4696
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !4697

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !4698
  %.pre2 = zext i32 %.pre to i64, !dbg !4699
  %.pre3 = shl i64 1, %.pre2, !dbg !4699
  %.pre4 = lshr i32 %bitno, 6, !dbg !4700
  %.pre5 = zext i32 %.pre4 to i64, !dbg !4701
  br label %if.end7, !dbg !4697

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !4702
  %idxprom = zext i32 %div to i64, !dbg !4702
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !4702
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4702
  %rem = and i32 %bitno, 63, !dbg !4702
  %sh_prom = zext i32 %rem to i64, !dbg !4702
  %2 = shl i64 1, %sh_prom, !dbg !4703
  %3 = and i64 %1, %2, !dbg !4703
  %tobool1 = icmp eq i64 %3, 0, !dbg !4703
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !4705

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !4706
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !4707
  %inc = add i8 %4, 1, !dbg !4707
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !4707
  br label %if.end7, !dbg !4706

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !4701
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !4699
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !4701
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !4708
  %or = or i64 %5, %shl.pre-phi, !dbg !4708
  store i64 %or, i64* %arrayidx13, align 8, !dbg !4708
  ret void, !dbg !4709
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_heap_reserve(%struct.VEC_gimple_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4710 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** @worklist, metadata !4714, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.value(metadata i32 1, metadata !4715, metadata !DIExpression()), !dbg !4717
  %0 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** @worklist, align 8, !dbg !4718
  %tobool = icmp eq %struct.VEC_gimple_heap* %0, null, !dbg !4718
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4718

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %0, i64 0, i32 0, !dbg !4718
  br label %cond.end, !dbg !4718

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4718
  %call = tail call fastcc i32 @VEC_gimple_base_space(%struct.VEC_gimple_base* %cond, i32 1) #8, !dbg !4718
  %tobool1 = icmp eq i32 %call, 0, !dbg !4718
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4718
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4716, metadata !DIExpression()), !dbg !4717
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4718

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_gimple_heap** @worklist to i8**), align 8, !dbg !4719
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %1, i32 1) #6, !dbg !4719
  store i8* %call3, i8** bitcast (%struct.VEC_gimple_heap** @worklist to i8**), align 8, !dbg !4719
  br label %if.end, !dbg !4719

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4718
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %vec_, %union.gimple_statement_d* %obj_) unnamed_addr #0 !dbg !4721 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !4726, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %obj_, metadata !4727, metadata !DIExpression()), !dbg !4729
  %num1 = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !4730
  %0 = load i32, i32* %num1, align 8, !dbg !4730
  %inc = add i32 %0, 1, !dbg !4730
  store i32 %inc, i32* %num1, align 8, !dbg !4730
  %idxprom = zext i32 %0 to i64, !dbg !4730
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4730
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %arrayidx, metadata !4728, metadata !DIExpression()), !dbg !4729
  store %union.gimple_statement_d* %obj_, %union.gimple_statement_d** %arrayidx, align 8, !dbg !4730
  ret %union.gimple_statement_d** %arrayidx, !dbg !4730
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_space(%struct.VEC_gimple_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4731 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !4735, metadata !DIExpression()), !dbg !4737
  call void @llvm.dbg.value(metadata i32 1, metadata !4736, metadata !DIExpression()), !dbg !4737
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !4738
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4738

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 1, !dbg !4738
  %0 = load i32, i32* %alloc, align 4, !dbg !4738
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !4738
  %1 = load i32, i32* %num, align 8, !dbg !4738
  %cmp1 = icmp ne i32 %0, %1, !dbg !4738
  %phitmp = zext i1 %cmp1 to i32, !dbg !4738
  br label %cond.end, !dbg !4738

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4738

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4738
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4739 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4743, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata i32 %i, metadata !4744, metadata !DIExpression()), !dbg !4745
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !4746
  %tobool = icmp eq i8 %call, 0, !dbg !4746
  br i1 %tobool, label %return, label %if.then, !dbg !4748

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !4749
  %idxprom = zext i32 %i to i64, !dbg !4749
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !4749
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4749
  br label %return, !dbg !4751

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !4752
  ret %union.tree_node* %retval.0, !dbg !4753
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4754 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4758, metadata !DIExpression()), !dbg !4760
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !4761
  %idxprom = zext i32 %call to i64, !dbg !4762
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !4762
  %0 = load i64, i64* %arrayidx, align 8, !dbg !4762
  call void @llvm.dbg.value(metadata i64 %0, metadata !4759, metadata !DIExpression()), !dbg !4760
  %cmp = icmp eq i64 %0, 0, !dbg !4763
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4763

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4763
  br label %cond.end, !dbg !4763

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !4764
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !4765
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !4766
  ret %union.tree_node** %2, !dbg !4767
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4768 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4772, metadata !DIExpression()), !dbg !4773
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !4774
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !4775
  ret i32 %call1, !dbg !4776
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !4777 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4781, metadata !DIExpression()), !dbg !4782
  %idxprom = zext i32 %code to i64, !dbg !4783
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !4783
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4783
  ret i32 %0, !dbg !4784
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4785 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4790
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4790
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4790

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4790
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4790
  br label %cond.end, !dbg !4790

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4790
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4790
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !4791
  %conv3 = zext i1 %cmp to i8, !dbg !4792
  ret i8 %conv3, !dbg !4793
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4794 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4799
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4799
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4799

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4799
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4799
  br label %cond.end, !dbg !4799

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4799
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !4799
  ret %struct.edge_def* %call2, !dbg !4800
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4801 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !4806
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4806

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4806
  br label %cond.end, !dbg !4806

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !4807
  ret %struct.VEC_edge_gc* %0, !dbg !4808
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !4809 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4818, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !4819, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i32 0, metadata !4820, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4821, metadata !DIExpression()), !dbg !4822
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !4823
  %1 = load i64, i64* %0, align 8, !dbg !4823
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4824
  store i64 %1, i64* %2, align 8, !dbg !4824
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !4825
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !4826
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4827
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !4830
  br label %while.body, !dbg !4830

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !4831
  br i1 %tobool, label %if.then, label %if.end, !dbg !4832

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !4833
  br label %while.end, !dbg !4835

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !4836

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !4830, !llvm.loop !4837

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !4839

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !4839
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !4841
  %7 = load i32, i32* %indx9, align 8, !dbg !4841
  %cmp11 = icmp eq i32 %7, 0, !dbg !4842
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !4843

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !4844
  %8 = load i32, i32* %indx14, align 8, !dbg !4844
  %mul = shl i32 %8, 7, !dbg !4845
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4820, metadata !DIExpression()), !dbg !4822
  br label %if.end15, !dbg !4846

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !4820, metadata !DIExpression()), !dbg !4822
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4847
  store i32 0, i32* %word_no, align 8, !dbg !4848
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !4849
  %9 = load i64, i64* %arrayidx, align 8, !dbg !4849
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4850
  store i64 %9, i64* %bits21, align 8, !dbg !4851
  %tobool23 = icmp eq i64 %9, 0, !dbg !4852
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !4852
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !4853
  call void @llvm.dbg.value(metadata i32 %add, metadata !4820, metadata !DIExpression()), !dbg !4822
  store i32 %add, i32* %bit_no, align 4, !dbg !4854
  ret void, !dbg !4855
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4856 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4860, metadata !DIExpression()), !dbg !4865
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4861, metadata !DIExpression()), !dbg !4865
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4866
  %0 = load i64, i64* %bits, align 8, !dbg !4866
  %tobool = icmp eq i64 %0, 0, !dbg !4867
  br i1 %tobool, label %if.end, label %next_bit, !dbg !4868

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !4869
  br label %next_bit, !dbg !4872

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !4862), !dbg !4873
  br label %while.cond, !dbg !4872

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !4874
  %and = and i64 %2, 1, !dbg !4875
  %tobool2 = icmp eq i64 %and, 0, !dbg !4876
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !4872

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !4877
  store i64 %shr, i64* %bits, align 8, !dbg !4877
  %3 = load i32, i32* %bit_no, align 4, !dbg !4879
  %add = add i32 %3, 1, !dbg !4879
  store i32 %add, i32* %bit_no, align 4, !dbg !4879
  %.pre = load i64, i64* %bits, align 8, !dbg !4874
  br label %while.cond, !dbg !4872, !llvm.loop !4880

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !4882
  %sub = add i32 %4, 63, !dbg !4883
  %div = and i32 %sub, -64, !dbg !4884
  store i32 %div, i32* %bit_no, align 4, !dbg !4885
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4886
  %5 = load i32, i32* %word_no, align 8, !dbg !4887
  %inc = add i32 %5, 1, !dbg !4887
  store i32 %inc, i32* %word_no, align 8, !dbg !4887
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4888
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4888
  br label %while.body6, !dbg !4889

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !4890

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !4891
  %cmp = icmp eq i32 %8, 2, !dbg !4892
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !4888
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !4890

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !4869
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !4869
  %10 = load i64, i64* %arrayidx, align 8, !dbg !4869
  store i64 %10, i64* %bits, align 8, !dbg !4893
  %tobool14 = icmp eq i64 %10, 0, !dbg !4894
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !4896

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !4897
  %add17 = add i32 %11, 64, !dbg !4897
  store i32 %add17, i32* %bit_no, align 4, !dbg !4897
  %12 = load i32, i32* %word_no, align 8, !dbg !4898
  %inc19 = add i32 %12, 1, !dbg !4898
  store i32 %inc19, i32* %word_no, align 8, !dbg !4898
  br label %while.cond7, !dbg !4890, !llvm.loop !4899

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !4888
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !4901
  %14 = load i64, i64* %13, align 8, !dbg !4901
  store i64 %14, i64* %6, align 8, !dbg !4902
  %tobool24 = icmp eq i64 %14, 0, !dbg !4903
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !4905

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !4905
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !4906
  %16 = load i32, i32* %indx, align 8, !dbg !4906
  %mul28 = shl i32 %16, 7, !dbg !4907
  store i32 %mul28, i32* %bit_no, align 4, !dbg !4908
  store i32 0, i32* %word_no, align 8, !dbg !4909
  br label %while.body6, !dbg !4889, !llvm.loop !4910

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !4912

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !4912

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !4865
  ret i8 %retval.0, !dbg !4912
}

declare dso_local %union.gimple_statement_d* @last_stmt(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @is_ctrl_stmt(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4913 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4917, metadata !DIExpression()), !dbg !4919
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4918, metadata !DIExpression()), !dbg !4919
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4920
  %0 = load i64, i64* %bits, align 8, !dbg !4921
  %shr = lshr i64 %0, 1, !dbg !4921
  store i64 %shr, i64* %bits, align 8, !dbg !4921
  %1 = load i32, i32* %bit_no, align 4, !dbg !4922
  %add = add i32 %1, 1, !dbg !4922
  store i32 %add, i32* %bit_no, align 4, !dbg !4922
  ret void, !dbg !4923
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !4924 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4928, metadata !DIExpression()), !dbg !4929
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !4930
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !4930
  ret %struct.VEC_int_heap* %0, !dbg !4930
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !4931 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4932
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !4932
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4932
  %tobool = icmp eq %struct.loops* %1, null, !dbg !4932
  br i1 %tobool, label %return, label %if.end, !dbg !4934

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !4935
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !4935
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !4935
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !4935

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !4935
  br label %cond.end, !dbg !4935

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !4935
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !4935
  br label %return, !dbg !4936

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !4937
  ret i32 %retval.0, !dbg !4938
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !4939 {
entry:
  unreachable, !dbg !4948
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !4949 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4955, metadata !DIExpression()), !dbg !4958
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !4956, metadata !DIExpression()), !dbg !4958
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4959
  %0 = load i32, i32* %num1, align 4, !dbg !4959
  %inc = add i32 %0, 1, !dbg !4959
  store i32 %inc, i32* %num1, align 4, !dbg !4959
  %idxprom = zext i32 %0 to i64, !dbg !4959
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4959
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !4957, metadata !DIExpression()), !dbg !4958
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !4959
  ret i32* %arrayidx, !dbg !4959
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !4960 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4966, metadata !DIExpression()), !dbg !4968
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !4969
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !4969
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !4969
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4969

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !4969
  br label %cond.end, !dbg !4969

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4969
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !4969
  call void @llvm.dbg.value(metadata i32 %call, metadata !4967, metadata !DIExpression()), !dbg !4968
  %cmp = icmp eq i32 %call, 0, !dbg !4970
  br i1 %cmp, label %cleanup, label %if.end, !dbg !4972

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !4973
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !4973
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !4973

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !4973
  br label %cond.end8, !dbg !4973

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !4973
  %sub = add i32 %call, -1, !dbg !4973
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #8, !dbg !4973
  br label %cleanup, !dbg !4974

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !4968
  ret %struct.loop* %retval.0, !dbg !4975
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !4976 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !4980, metadata !DIExpression()), !dbg !4981
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !4982
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4982

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !4982
  %0 = load i32, i32* %num, align 8, !dbg !4982
  br label %cond.end, !dbg !4982

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4982
  ret i32 %cond, !dbg !4982
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4983 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !4987, metadata !DIExpression()), !dbg !4989
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4988, metadata !DIExpression()), !dbg !4989
  br label %land.end, !dbg !4990

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4990
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4990
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !4990
  ret %struct.loop* %0, !dbg !4990
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !4991 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4997, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4998, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !4999, metadata !DIExpression()), !dbg !5000
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !5001
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !5001

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !5001
  %0 = load i32, i32* %num, align 4, !dbg !5001
  %cmp = icmp ugt i32 %0, %ix_, !dbg !5001
  br i1 %cmp, label %if.then, label %if.else, !dbg !5003

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !5004
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5004
  %1 = load i32, i32* %arrayidx, align 4, !dbg !5004
  br label %return, !dbg !5004

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !5006

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !5008
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !5008
  store i32 %storemerge, i32* %ptr, align 4, !dbg !5008
  ret i32 %retval.0, !dbg !5003
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !5009 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !5013, metadata !DIExpression()), !dbg !5014
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5015
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !5015
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !5015
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !5015
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !5015
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !5015
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5015

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !5015
  br label %cond.end, !dbg !5015

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5015
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #8, !dbg !5015
  ret %struct.loop* %call, !dbg !5016
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !5017 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !5022, metadata !DIExpression()), !dbg !5023
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !5024
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !5024
  br i1 %tobool, label %if.end, label %if.then, !dbg !5026

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !5026
  tail call void @free(i8* nonnull %1) #6, !dbg !5024
  br label %if.end, !dbg !5024

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !5026
  ret void, !dbg !5026
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %vec_) unnamed_addr #0 !dbg !5027 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !5033, metadata !DIExpression()), !dbg !5034
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !5035
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5035

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !5035
  %0 = load i32, i32* %num, align 8, !dbg !5035
  br label %cond.end, !dbg !5035

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !5035
  ret i32 %cond, !dbg !5035
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @VEC_gimple_base_pop(%struct.VEC_gimple_base* %vec_) unnamed_addr #0 !dbg !5036 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !5040, metadata !DIExpression()), !dbg !5042
  %num1 = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !5043
  %0 = load i32, i32* %num1, align 8, !dbg !5043
  %dec = add i32 %0, -1, !dbg !5043
  store i32 %dec, i32* %num1, align 8, !dbg !5043
  %idxprom = zext i32 %dec to i64, !dbg !5043
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5043
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %arrayidx, align 8, !dbg !5043
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !5041, metadata !DIExpression()), !dbg !5042
  ret %union.gimple_statement_d* %1, !dbg !5043
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mark_operand_necessary(%union.tree_node* %op) unnamed_addr #0 !dbg !5044 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !5048, metadata !DIExpression()), !dbg !5051
  %tobool = icmp eq %union.tree_node* %op, null, !dbg !5052
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !5052

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 237, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !5052
  br label %cond.end, !dbg !5052

cond.end:                                         ; preds = %entry, %cond.true
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %op, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !5053
  %0 = bitcast %union.tree_node** %version to i32*, !dbg !5053
  %1 = load i32, i32* %0, align 8, !dbg !5053
  call void @llvm.dbg.value(metadata i32 %1, metadata !5050, metadata !DIExpression()), !dbg !5051
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @processed, align 8, !dbg !5054
  %div = lshr i32 %1, 6, !dbg !5054
  %idxprom = zext i32 %div to i64, !dbg !5054
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i64 0, i32 3, i64 %idxprom, !dbg !5054
  %3 = load i64, i64* %arrayidx, align 8, !dbg !5054
  %rem = and i32 %1, 63, !dbg !5054
  %sh_prom = zext i32 %rem to i64, !dbg !5054
  %4 = shl i64 1, %sh_prom, !dbg !5054
  %5 = and i64 %3, %4, !dbg !5054
  %tobool1 = icmp eq i64 %5, 0, !dbg !5054
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5056

if.then:                                          ; preds = %cond.end
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %op, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5057
  %6 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !5057
  %7 = load %union.gimple_statement_d*, %union.gimple_statement_d** %6, align 8, !dbg !5057
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %7, metadata !5049, metadata !DIExpression()), !dbg !5051
  %call = tail call fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %7) #8, !dbg !5059
  %tobool3 = icmp eq i8 %call, 0, !dbg !5059
  br i1 %tobool3, label %lor.lhs.false, label %cleanup.cont, !dbg !5059

lor.lhs.false:                                    ; preds = %if.then
  %call4 = tail call fastcc i32 @gimple_plf(%union.gimple_statement_d* %7, i32 1) #8, !dbg !5059
  %tobool5 = icmp eq i32 %call4, 0, !dbg !5059
  br i1 %tobool5, label %cond.true6, label %cleanup.cont, !dbg !5059

cond.true6:                                       ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 244, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !5059
  br label %cleanup.cont, !dbg !5059

if.end:                                           ; preds = %cond.end
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %2, i32 %1) #8, !dbg !5060
  %def_stmt11 = getelementptr inbounds %union.tree_node, %union.tree_node* %op, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5061
  %8 = bitcast %union.tree_node** %def_stmt11 to %union.gimple_statement_d**, !dbg !5061
  %9 = load %union.gimple_statement_d*, %union.gimple_statement_d** %8, align 8, !dbg !5061
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %9, metadata !5049, metadata !DIExpression()), !dbg !5051
  %tobool12 = icmp eq %union.gimple_statement_d* %9, null, !dbg !5062
  br i1 %tobool12, label %cond.true13, label %cond.end15, !dbg !5062

cond.true13:                                      ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !5062
  br label %cond.end15, !dbg !5062

cond.end15:                                       ; preds = %if.end, %cond.true13
  %call17 = tail call fastcc i32 @gimple_plf(%union.gimple_statement_d* %9, i32 1) #8, !dbg !5063
  %tobool18 = icmp eq i32 %call17, 0, !dbg !5063
  br i1 %tobool18, label %lor.lhs.false19, label %cleanup.cont, !dbg !5065

lor.lhs.false19:                                  ; preds = %cond.end15
  %call20 = tail call fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %9) #8, !dbg !5066
  %tobool22 = icmp eq i8 %call20, 0, !dbg !5066
  br i1 %tobool22, label %if.end24, label %cleanup.cont, !dbg !5067

if.end24:                                         ; preds = %lor.lhs.false19
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5068
  %tobool25 = icmp eq %struct._IO_FILE* %10, null, !dbg !5068
  br i1 %tobool25, label %if.end31, label %land.lhs.true, !dbg !5070

land.lhs.true:                                    ; preds = %if.end24
  %11 = load i32, i32* @dump_flags, align 4, !dbg !5071
  %and26 = and i32 %11, 8, !dbg !5072
  %tobool27 = icmp eq i32 %and26, 0, !dbg !5072
  br i1 %tobool27, label %if.end31, label %if.then28, !dbg !5073

if.then28:                                        ; preds = %land.lhs.true
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !5074
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5076
  tail call void @print_generic_expr(%struct._IO_FILE* %12, %union.tree_node* %op, i32 0) #6, !dbg !5077
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5078
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !5079
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5080
  tail call void @print_gimple_stmt(%struct._IO_FILE* %14, %union.gimple_statement_d* %9, i32 0, i32 0) #6, !dbg !5081
  br label %if.end31, !dbg !5082

if.end31:                                         ; preds = %land.lhs.true, %if.end24, %if.then28
  tail call fastcc void @gimple_set_plf(%union.gimple_statement_d* %9, i32 1, i8 zeroext 1) #8, !dbg !5083
  %15 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @bb_contains_live_stmts, align 8, !dbg !5084
  %tobool32 = icmp eq %struct.simple_bitmap_def* %15, null, !dbg !5084
  br i1 %tobool32, label %if.end35, label %if.then33, !dbg !5086

if.then33:                                        ; preds = %if.end31
  %call34 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %9) #8, !dbg !5087
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call34, i64 0, i32 9, !dbg !5088
  %16 = load i32, i32* %index, align 8, !dbg !5088
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* nonnull %15, i32 %16) #8, !dbg !5089
  br label %if.end35, !dbg !5089

if.end35:                                         ; preds = %if.end31, %if.then33
  %call36 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_heap_safe_push(%struct.VEC_gimple_heap** nonnull @worklist, %union.gimple_statement_d* %9) #8, !dbg !5090
  br label %cleanup.cont, !dbg !5091

cleanup.cont:                                     ; preds = %lor.lhs.false, %if.then, %lor.lhs.false19, %cond.end15, %if.end35, %cond.true6
  ret void, !dbg !5091
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @degenerate_phi_p(%union.gimple_statement_d* %phi) unnamed_addr #5 !dbg !5092 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !5094, metadata !DIExpression()), !dbg !5097
  %call = tail call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %phi, i64 0) #8, !dbg !5098
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5096, metadata !DIExpression()), !dbg !5097
  call void @llvm.dbg.value(metadata i32 1, metadata !5095, metadata !DIExpression()), !dbg !5097
  br label %for.cond, !dbg !5099

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ], !dbg !5101
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !5095, metadata !DIExpression()), !dbg !5097
  %call1 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #8, !dbg !5102
  %0 = zext i32 %call1 to i64, !dbg !5104
  %cmp = icmp ult i64 %indvars.iv, %0, !dbg !5104
  br i1 %cmp, label %for.body, label %cleanup, !dbg !5105

for.body:                                         ; preds = %for.cond
  %call2 = tail call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %phi, i64 %indvars.iv) #8, !dbg !5106
  %cmp3 = icmp eq %union.tree_node* %call2, %call, !dbg !5108
  br i1 %cmp3, label %for.inc, label %cleanup, !dbg !5109

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !5110
  br label %for.cond, !dbg !5111, !llvm.loop !5112

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 0, %for.body ], [ 1, %for.cond ], !dbg !5097
  ret i8 %retval.0, !dbg !5114
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %gs, i64 %i) unnamed_addr #0 !dbg !5115 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5119, metadata !DIExpression()), !dbg !5121
  call void @llvm.dbg.value(metadata i64 %i, metadata !5120, metadata !DIExpression()), !dbg !5121
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #8, !dbg !5122
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 0, !dbg !5122
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !5122
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !5122
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5122

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #8, !dbg !5122
  %preds2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call1, i64 0, i32 0, !dbg !5122
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds2, align 8, !dbg !5122
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !5122
  br label %cond.end, !dbg !5122

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5122
  %conv = trunc i64 %i to i32, !dbg !5122
  %call3 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %conv) #8, !dbg !5122
  ret %struct.edge_def* %call3, !dbg !5123
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !5124 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !5128, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5129, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata i32 1, metadata !5130, metadata !DIExpression()), !dbg !5131
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 1) #8, !dbg !5132
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !5133
  store i32 1, i32* %iter_type, align 4, !dbg !5134
  %call = tail call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !5135
  ret %union.tree_node* %call, !dbg !5136
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !5137 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !5141, metadata !DIExpression()), !dbg !5143
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !5144
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !5144
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !5146
  br i1 %tobool, label %if.end, label %if.then, !dbg !5147

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !5148
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %use_ptr) #8, !dbg !5148
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5142, metadata !DIExpression()), !dbg !5143
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !5150
  %2 = load i64*, i64** %1, align 8, !dbg !5150
  %3 = load i64, i64* %2, align 8, !dbg !5151
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !5152
  store i64 %3, i64* %4, align 8, !dbg !5152
  br label %cleanup, !dbg !5153

if.end:                                           ; preds = %entry
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !5154
  %5 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !5154
  %tobool4 = icmp eq %struct.def_optype_d* %5, null, !dbg !5156
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !5157

if.then5:                                         ; preds = %if.end
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %5, i64 0, i32 1, !dbg !5158
  %6 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !5158
  %call7 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %6) #8, !dbg !5158
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !5142, metadata !DIExpression()), !dbg !5143
  %7 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !5160
  %8 = load i64*, i64** %7, align 8, !dbg !5160
  %9 = load i64, i64* %8, align 8, !dbg !5161
  %10 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !5162
  store i64 %9, i64* %10, align 8, !dbg !5162
  br label %cleanup, !dbg !5163

if.end11:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !5164
  store i8 1, i8* %done, align 8, !dbg !5165
  br label %cleanup, !dbg !5166

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call7, %if.then5 ], [ null, %if.end11 ], !dbg !5143
  ret %union.tree_node* %retval.0, !dbg !5167
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_all_reaching_defs_necessary(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !5168 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5170, metadata !DIExpression()), !dbg !5171
  %call = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #8, !dbg !5172
  %call1 = tail call i32 @walk_aliased_vdefs(%struct.ao_ref_s* null, %union.tree_node* %call, i8 (%struct.ao_ref_s*, %union.tree_node*, i8*)* nonnull @mark_all_reaching_defs_necessary_1, i8* null, %struct.bitmap_head_def** nonnull @visited) #6, !dbg !5173
  ret void, !dbg !5174
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5175 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5177, metadata !DIExpression()), !dbg !5178
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !5179
  %cmp = icmp eq i32 %call, 8, !dbg !5180
  %conv1 = zext i1 %cmp to i8, !dbg !5179
  ret i8 %conv1, !dbg !5181
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5182 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5184, metadata !DIExpression()), !dbg !5186
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #8, !dbg !5187
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5185, metadata !DIExpression()), !dbg !5186
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5188
  %bf.load = load i64, i64* %0, align 8, !dbg !5188
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5190
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !5190
  br i1 %cmp, label %if.then, label %cleanup, !dbg !5191

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !5192
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !5192
  br label %cleanup, !dbg !5193

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !5186
  ret %union.tree_node* %retval.0, !dbg !5194
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5195 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5197, metadata !DIExpression()), !dbg !5199
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !5200
  call void @llvm.dbg.value(metadata i32 %call, metadata !5198, metadata !DIExpression()), !dbg !5199
  %sub = add i32 %call, -3, !dbg !5201
  ret i32 %sub, !dbg !5202
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !5203 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5205, metadata !DIExpression()), !dbg !5207
  call void @llvm.dbg.value(metadata i32 %index, metadata !5206, metadata !DIExpression()), !dbg !5207
  %add = add i32 %index, 3, !dbg !5208
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add) #8, !dbg !5209
  ret %union.tree_node* %call, !dbg !5210
}

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ref_may_be_aliased(%union.tree_node* %ref) unnamed_addr #5 !dbg !5211 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %ref, metadata !5215, metadata !DIExpression()), !dbg !5216
  br label %while.cond, !dbg !5217

while.cond:                                       ; preds = %while.body, %entry
  %ref.addr.0 = phi %union.tree_node* [ %ref, %entry ], [ %0, %while.body ]
  call void @llvm.dbg.value(metadata %union.tree_node* %ref.addr.0, metadata !5215, metadata !DIExpression()), !dbg !5216
  %call = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %ref.addr.0) #8, !dbg !5218
  %tobool = icmp eq i8 %call, 0, !dbg !5217
  br i1 %tobool, label %while.end, label %while.body, !dbg !5217

while.body:                                       ; preds = %while.cond
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %ref.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !5219
  %0 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !5219
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !5215, metadata !DIExpression()), !dbg !5216
  br label %while.cond, !dbg !5217, !llvm.loop !5220

while.end:                                        ; preds = %while.cond
  %ref.addr.0.lcssa = phi %union.tree_node* [ %ref.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata %union.tree_node* %ref.addr.0.lcssa, metadata !5215, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata %union.tree_node* %ref.addr.0.lcssa, metadata !5215, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata %union.tree_node* %ref.addr.0.lcssa, metadata !5215, metadata !DIExpression()), !dbg !5216
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %ref.addr.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5221
  %bf.load = load i64, i64* %1, align 8, !dbg !5221
  %bf.cast = and i64 %bf.load, 65535, !dbg !5221
  %arrayidx1 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !5221
  %2 = load i32, i32* %arrayidx1, align 4, !dbg !5221
  %cmp = icmp eq i32 %2, 3, !dbg !5221
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5222

land.rhs:                                         ; preds = %while.end
  %call2 = tail call fastcc zeroext i8 @may_be_aliased(%union.tree_node* %ref.addr.0.lcssa) #8, !dbg !5223
  %tobool3 = icmp ne i8 %call2, 0, !dbg !5224
  %phitmp = zext i1 %tobool3 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.end
  %3 = phi i8 [ 1, %while.end ], [ %phitmp, %land.rhs ]
  ret i8 %3, !dbg !5225
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_aliased_reaching_defs_necessary(%union.gimple_statement_d* %stmt, %union.tree_node* %ref) unnamed_addr #5 !dbg !5226 {
entry:
  %refd = alloca %struct.ao_ref_s, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5230, metadata !DIExpression()), !dbg !5244
  call void @llvm.dbg.value(metadata %union.tree_node* %ref, metadata !5231, metadata !DIExpression()), !dbg !5244
  %0 = bitcast %struct.ao_ref_s* %refd to i8*, !dbg !5245
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7, !dbg !5245
  %.b = load i1, i1* @chain_ovfl, align 1, !dbg !5246
  br i1 %.b, label %cond.true, label %cond.end, !dbg !5246

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 553, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !5246
  br label %cond.end, !dbg !5246

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %refd, metadata !5233, metadata !DIExpression(DW_OP_deref)), !dbg !5244
  call void @ao_ref_init(%struct.ao_ref_s* nonnull %refd, %union.tree_node* %ref) #6, !dbg !5247
  %call = call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #8, !dbg !5248
  %call1 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #8, !dbg !5249
  %1 = bitcast %struct.basic_block_def* %call1 to i8*, !dbg !5249
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %refd, metadata !5233, metadata !DIExpression(DW_OP_deref)), !dbg !5244
  %call2 = call i32 @walk_aliased_vdefs(%struct.ao_ref_s* nonnull %refd, %union.tree_node* %call, i8 (%struct.ao_ref_s*, %union.tree_node*, i8*)* nonnull @mark_aliased_reaching_defs_necessary_1, i8* %1, %struct.bitmap_head_def** null) #6, !dbg !5250
  call void @llvm.dbg.value(metadata i32 %call2, metadata !5232, metadata !DIExpression()), !dbg !5244
  %2 = load i32, i32* @longest_chain, align 4, !dbg !5251
  %cmp = icmp ugt i32 %call2, %2, !dbg !5253
  br i1 %cmp, label %if.then, label %if.end, !dbg !5254

if.then:                                          ; preds = %cond.end
  store i32 %call2, i32* @longest_chain, align 4, !dbg !5255
  br label %if.end, !dbg !5256

if.end:                                           ; preds = %if.then, %cond.end
  %3 = load i32, i32* @total_chain, align 4, !dbg !5257
  %add = add i32 %3, %call2, !dbg !5257
  store i32 %add, i32* @total_chain, align 4, !dbg !5257
  %4 = load i32, i32* @nr_walks, align 4, !dbg !5258
  %inc = add i32 %4, 1, !dbg !5258
  store i32 %inc, i32* @nr_walks, align 4, !dbg !5258
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7, !dbg !5259
  ret void, !dbg !5259
}

declare dso_local zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5260 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5262, metadata !DIExpression()), !dbg !5263
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !5264
  ret %union.tree_node* %call, !dbg !5265
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5266 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5268, metadata !DIExpression()), !dbg !5269
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !5270
  ret %union.tree_node* %call, !dbg !5271
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_asm_ninputs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5272 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5274, metadata !DIExpression()), !dbg !5275
  %ni = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 3, !dbg !5276
  %0 = bitcast %union.tree_node*** %ni to i8*, !dbg !5276
  %1 = load i8, i8* %0, align 8, !dbg !5276
  %conv = zext i8 %1 to i32, !dbg !5277
  ret i32 %conv, !dbg !5278
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_asm_input_op(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !5279 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5281, metadata !DIExpression()), !dbg !5283
  call void @llvm.dbg.value(metadata i32 %index, metadata !5282, metadata !DIExpression()), !dbg !5283
  %ni = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 3, !dbg !5284
  %0 = bitcast %union.tree_node*** %ni to i8*, !dbg !5284
  %1 = load i8, i8* %0, align 8, !dbg !5284
  %conv = zext i8 %1 to i32, !dbg !5284
  %cmp = icmp ult i32 %conv, %index, !dbg !5284
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !5284

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 2622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !5284
  br label %cond.end, !dbg !5284

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %index) #8, !dbg !5285
  ret %union.tree_node* %call, !dbg !5286
}

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5287 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5289, metadata !DIExpression()), !dbg !5290
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !5291
  %cmp = icmp eq i32 %call, 18, !dbg !5292
  %conv1 = zext i1 %cmp to i8, !dbg !5291
  ret i8 %conv1, !dbg !5293
}

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !5294 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5298, metadata !DIExpression()), !dbg !5301
  call void @llvm.dbg.value(metadata i64 %index, metadata !5299, metadata !DIExpression()), !dbg !5301
  %conv = trunc i64 %index to i32, !dbg !5302
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #8, !dbg !5303
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call, metadata !5300, metadata !DIExpression()), !dbg !5301
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !5304
  %call1 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %imm_use) #8, !dbg !5305
  ret %union.tree_node* %call1, !dbg !5306
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !5307 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !5312, metadata !DIExpression()), !dbg !5313
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !5314
  ret %union.tree_node* %0, !dbg !5315
}

declare dso_local i32 @walk_aliased_vdefs(%struct.ao_ref_s*, %union.tree_node*, i8 (%struct.ao_ref_s*, %union.tree_node*, i8*)*, i8*, %struct.bitmap_head_def**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @mark_all_reaching_defs_necessary_1(%struct.ao_ref_s* %ref, %union.tree_node* %vdef, i8* %data) #5 !dbg !5316 {
entry:
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref, metadata !5321, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.value(metadata %union.tree_node* %vdef, metadata !5322, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.value(metadata i8* %data, metadata !5323, metadata !DIExpression()), !dbg !5328
  %def_stmt1 = getelementptr inbounds %union.tree_node, %union.tree_node* %vdef, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5329
  %0 = bitcast %union.tree_node** %def_stmt1 to %union.gimple_statement_d**, !dbg !5329
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %0, align 8, !dbg !5329
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !5324, metadata !DIExpression()), !dbg !5328
  %.b2 = load i1, i1* @chain_ovfl, align 1, !dbg !5330
  br i1 %.b2, label %land.lhs.true, label %if.end, !dbg !5332

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @processed, align 8, !dbg !5333
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %vdef, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !5333
  %3 = bitcast %union.tree_node** %version to i32*, !dbg !5333
  %4 = load i32, i32* %3, align 8, !dbg !5333
  %div = lshr i32 %4, 6, !dbg !5333
  %idxprom = zext i32 %div to i64, !dbg !5333
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i64 0, i32 3, i64 %idxprom, !dbg !5333
  %5 = load i64, i64* %arrayidx, align 8, !dbg !5333
  %rem = and i32 %4, 63, !dbg !5333
  %sh_prom = zext i32 %rem to i64, !dbg !5333
  %6 = shl i64 1, %sh_prom, !dbg !5333
  %7 = and i64 %5, %6, !dbg !5333
  %tobool5 = icmp eq i64 %7, 0, !dbg !5333
  br i1 %tobool5, label %if.end, label %if.then, !dbg !5334

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %1) #8, !dbg !5335
  %tobool7 = icmp eq i8 %call, 0, !dbg !5335
  br i1 %tobool7, label %lor.lhs.false, label %cleanup22, !dbg !5335

lor.lhs.false:                                    ; preds = %if.then
  %call8 = tail call fastcc i32 @gimple_plf(%union.gimple_statement_d* %1, i32 1) #8, !dbg !5335
  %tobool9 = icmp eq i32 %call8, 0, !dbg !5335
  br i1 %tobool9, label %cond.true, label %cleanup22, !dbg !5335

cond.true:                                        ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 582, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !5335
  br label %cleanup22, !dbg !5335

if.end:                                           ; preds = %entry, %land.lhs.true
  br i1 %.b2, label %if.end21, label %land.lhs.true11, !dbg !5337

land.lhs.true11:                                  ; preds = %if.end
  %call12 = tail call zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d* %1) #6, !dbg !5338
  %tobool14 = icmp eq i8 %call12, 0, !dbg !5338
  br i1 %tobool14, label %if.end21, label %if.then15, !dbg !5339

if.then15:                                        ; preds = %land.lhs.true11
  %call16 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %1) #8, !dbg !5340
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !5325, metadata !DIExpression()), !dbg !5341
  %call17 = tail call fastcc zeroext i8 @ref_may_be_aliased(%union.tree_node* %call16) #8, !dbg !5342
  %tobool18 = icmp eq i8 %call17, 0, !dbg !5342
  br i1 %tobool18, label %cleanup22, label %if.end21

if.end21:                                         ; preds = %if.end, %if.then15, %land.lhs.true11
  tail call fastcc void @mark_operand_necessary(%union.tree_node* %vdef) #8, !dbg !5344
  br label %cleanup22, !dbg !5345

cleanup22:                                        ; preds = %lor.lhs.false, %if.then, %if.then15, %cond.true, %if.end21
  ret i8 0, !dbg !5346
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5347 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5349, metadata !DIExpression()), !dbg !5350
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !5351
  ret %union.tree_node* %call, !dbg !5352
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5353 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5355, metadata !DIExpression()), !dbg !5356
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !5357
  %0 = load i32, i32* %num_ops, align 4, !dbg !5357
  ret i32 %0, !dbg !5358
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @handled_component_p(%union.tree_node* %t) unnamed_addr #0 !dbg !5359 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !5366, metadata !DIExpression()), !dbg !5367
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5368
  %bf.load = load i64, i64* %0, align 8, !dbg !5368
  %1 = trunc i64 %bf.load to i16, !dbg !5368
  switch i16 %1, label %sw.default [
    i16 42, label %return
    i16 41, label %return
    i16 45, label %return
    i16 46, label %return
    i16 118, label %return
    i16 43, label %return
    i16 44, label %return
  ], !dbg !5369

sw.default:                                       ; preds = %entry
  br label %return, !dbg !5370

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i8 [ 0, %sw.default ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], !dbg !5372
  ret i8 %retval.0, !dbg !5373
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @may_be_aliased(%union.tree_node* %var) unnamed_addr #0 !dbg !5374 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !5376, metadata !DIExpression()), !dbg !5377
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5378
  %bf.load = load i64, i64* %0, align 8, !dbg !5378
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5379
  %cmp = icmp eq i64 %bf.cast1, 33, !dbg !5379
  br i1 %cmp, label %land.end, label %land.lhs.true, !dbg !5380

land.lhs.true:                                    ; preds = %entry
  %bf.cast43 = and i64 %bf.load, 67108864, !dbg !5381
  %tobool = icmp eq i64 %bf.cast43, 0, !dbg !5381
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true17, !dbg !5382

lor.lhs.false:                                    ; preds = %land.lhs.true
  %bf.cast94 = and i64 %bf.load, 134217728, !dbg !5383
  %tobool10 = icmp eq i64 %bf.cast94, 0, !dbg !5383
  br i1 %tobool10, label %lor.lhs.false11, label %land.lhs.true17, !dbg !5384

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5385
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !5385
  %bf.load12 = load i64, i64* %1, align 8, !dbg !5385
  %bf.cast155 = and i64 %bf.load12, 33554432, !dbg !5385
  %tobool16 = icmp eq i64 %bf.cast155, 0, !dbg !5385
  br i1 %tobool16, label %land.rhs, label %land.lhs.true17, !dbg !5386

land.lhs.true17:                                  ; preds = %lor.lhs.false11, %lor.lhs.false, %land.lhs.true
  %bf.cast228 = and i64 %bf.load, 1048576, !dbg !5387
  %tobool23 = icmp eq i64 %bf.cast228, 0, !dbg !5387
  br i1 %tobool23, label %land.rhs, label %land.lhs.true24, !dbg !5388

land.lhs.true24:                                  ; preds = %land.lhs.true17
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5389
  %2 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !5389
  %3 = load %struct.tree_type*, %struct.tree_type** %2, align 8, !dbg !5389
  %needs_constructing_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 6, !dbg !5389
  %bf.load26 = load i32, i32* %needs_constructing_flag, align 4, !dbg !5389
  %bf.clear28 = and i32 %bf.load26, 2048, !dbg !5389
  %tobool29 = icmp eq i32 %bf.clear28, 0, !dbg !5389
  br i1 %tobool29, label %land.end, label %land.rhs, !dbg !5390

land.rhs:                                         ; preds = %land.lhs.true24, %land.lhs.true17, %lor.lhs.false11
  %bf.cast346 = and i64 %bf.load, 134217728, !dbg !5391
  %tobool35 = icmp eq i64 %bf.cast346, 0, !dbg !5391
  br i1 %tobool35, label %lor.lhs.false36, label %land.end, !dbg !5392

lor.lhs.false36:                                  ; preds = %land.rhs
  %decl_flag_138 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5393
  %4 = bitcast i40* %decl_flag_138 to i64*, !dbg !5393
  %bf.load39 = load i64, i64* %4, align 8, !dbg !5393
  %bf.cast427 = and i64 %bf.load39, 33554432, !dbg !5393
  %tobool43 = icmp eq i64 %bf.cast427, 0, !dbg !5393
  br i1 %tobool43, label %lor.rhs, label %land.end, !dbg !5394

lor.rhs:                                          ; preds = %lor.lhs.false36
  %bf.lshr46 = lshr i64 %bf.load, 18, !dbg !5395
  %5 = trunc i64 %bf.lshr46 to i8, !dbg !5394
  %6 = and i8 %5, 1, !dbg !5394
  br label %land.end, !dbg !5394

land.end:                                         ; preds = %land.lhs.true24, %lor.lhs.false36, %land.rhs, %entry, %lor.rhs
  %7 = phi i8 [ 0, %land.lhs.true24 ], [ 0, %entry ], [ 1, %lor.lhs.false36 ], [ 1, %land.rhs ], [ %6, %lor.rhs ]
  ret i8 %7, !dbg !5396
}

declare dso_local void @ao_ref_init(%struct.ao_ref_s*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @mark_aliased_reaching_defs_necessary_1(%struct.ao_ref_s* %ref, %union.tree_node* %vdef, i8* %data) #5 !dbg !5397 {
entry:
  %size = alloca i64, align 8
  %offset = alloca i64, align 8
  %max_size = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.ao_ref_s* %ref, metadata !5399, metadata !DIExpression()), !dbg !5410
  call void @llvm.dbg.value(metadata %union.tree_node* %vdef, metadata !5400, metadata !DIExpression()), !dbg !5410
  call void @llvm.dbg.value(metadata i8* %data, metadata !5401, metadata !DIExpression()), !dbg !5410
  %def_stmt1 = getelementptr inbounds %union.tree_node, %union.tree_node* %vdef, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5411
  %0 = bitcast %union.tree_node** %def_stmt1 to %union.gimple_statement_d**, !dbg !5411
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %0, align 8, !dbg !5411
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !5402, metadata !DIExpression()), !dbg !5410
  tail call fastcc void @mark_operand_necessary(%union.tree_node* %vdef) #8, !dbg !5412
  %call = tail call fastcc zeroext i8 @gimple_has_lhs(%union.gimple_statement_d* %1) #8, !dbg !5413
  %tobool = icmp eq i8 %call, 0, !dbg !5413
  br i1 %tobool, label %if.end51, label %land.lhs.true, !dbg !5414

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %1) #6, !dbg !5415
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5415
  %bf.load = load i64, i64* %2, align 8, !dbg !5415
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5416
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !5416
  br i1 %cmp, label %if.end51, label %if.then, !dbg !5417

if.then:                                          ; preds = %land.lhs.true
  %call5 = tail call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %1) #6, !dbg !5418
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !5406, metadata !DIExpression()), !dbg !5419
  %3 = bitcast i64* %size to i8*, !dbg !5420
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !5420
  %4 = bitcast i64* %offset to i8*, !dbg !5420
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7, !dbg !5420
  %5 = bitcast i64* %max_size to i8*, !dbg !5420
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !5420
  %call6 = tail call %union.tree_node* @ao_ref_base(%struct.ao_ref_s* %ref) #6, !dbg !5421
  call void @llvm.dbg.value(metadata i64* %size, metadata !5407, metadata !DIExpression(DW_OP_deref)), !dbg !5419
  call void @llvm.dbg.value(metadata i64* %offset, metadata !5408, metadata !DIExpression(DW_OP_deref)), !dbg !5419
  call void @llvm.dbg.value(metadata i64* %max_size, metadata !5409, metadata !DIExpression(DW_OP_deref)), !dbg !5419
  %call7 = call %union.tree_node* @get_ref_base_and_extent(%union.tree_node* %call5, i64* nonnull %offset, i64* nonnull %size, i64* nonnull %max_size) #6, !dbg !5422
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !5403, metadata !DIExpression()), !dbg !5419
  %base8 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 1, !dbg !5423
  %6 = load %union.tree_node*, %union.tree_node** %base8, align 8, !dbg !5423
  %cmp9 = icmp eq %union.tree_node* %call7, %6, !dbg !5425
  br i1 %cmp9, label %if.then11, label %if.end46, !dbg !5426

if.then11:                                        ; preds = %if.then
  %7 = load i64, i64* %size, align 8, !dbg !5427
  call void @llvm.dbg.value(metadata i64 %7, metadata !5407, metadata !DIExpression()), !dbg !5419
  %cmp12 = icmp eq i64 %7, -1, !dbg !5430
  br i1 %cmp12, label %if.else, label %land.lhs.true14, !dbg !5431

land.lhs.true14:                                  ; preds = %if.then11
  call void @llvm.dbg.value(metadata i64 %7, metadata !5407, metadata !DIExpression()), !dbg !5419
  %8 = load i64, i64* %max_size, align 8, !dbg !5432
  call void @llvm.dbg.value(metadata i64 %8, metadata !5409, metadata !DIExpression()), !dbg !5419
  %cmp15 = icmp eq i64 %7, %8, !dbg !5433
  br i1 %cmp15, label %land.lhs.true17, label %if.else, !dbg !5434

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %max_size18 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 4, !dbg !5435
  %9 = load i64, i64* %max_size18, align 8, !dbg !5435
  %cmp19 = icmp eq i64 %9, -1, !dbg !5436
  br i1 %cmp19, label %if.else, label %if.then21, !dbg !5437

if.then21:                                        ; preds = %land.lhs.true17
  %10 = load i64, i64* %offset, align 8, !dbg !5438
  call void @llvm.dbg.value(metadata i64 %10, metadata !5408, metadata !DIExpression()), !dbg !5419
  %offset22 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 2, !dbg !5441
  %11 = load i64, i64* %offset22, align 8, !dbg !5441
  %cmp23 = icmp sgt i64 %10, %11, !dbg !5442
  br i1 %cmp23, label %if.end46, label %land.lhs.true25, !dbg !5443

land.lhs.true25:                                  ; preds = %if.then21
  call void @llvm.dbg.value(metadata i64 %10, metadata !5408, metadata !DIExpression()), !dbg !5419
  call void @llvm.dbg.value(metadata i64 %7, metadata !5407, metadata !DIExpression()), !dbg !5419
  %add = add nsw i64 %10, %7, !dbg !5444
  %add28 = add nsw i64 %11, %9, !dbg !5445
  %cmp29 = icmp slt i64 %add, %add28, !dbg !5446
  br i1 %cmp29, label %if.end46, label %cleanup, !dbg !5447

if.else:                                          ; preds = %land.lhs.true17, %if.then11, %land.lhs.true14
  %ref32 = getelementptr inbounds %struct.ao_ref_s, %struct.ao_ref_s* %ref, i64 0, i32 0, !dbg !5448
  %12 = load %union.tree_node*, %union.tree_node** %ref32, align 8, !dbg !5448
  %tobool33 = icmp eq %union.tree_node* %12, null, !dbg !5450
  br i1 %tobool33, label %if.end46, label %land.lhs.true34, !dbg !5451

land.lhs.true34:                                  ; preds = %if.else
  %13 = bitcast i8* %data to %struct.basic_block_def*, !dbg !5452
  %call35 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %1) #8, !dbg !5453
  %call36 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %13, %struct.basic_block_def* %call35) #6, !dbg !5454
  %tobool38 = icmp eq i8 %call36, 0, !dbg !5454
  br i1 %tobool38, label %if.end46, label %land.lhs.true39, !dbg !5455

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %14 = load %union.tree_node*, %union.tree_node** %ref32, align 8, !dbg !5456
  %call41 = call i32 @operand_equal_p(%union.tree_node* %14, %union.tree_node* %call5, i32 0) #6, !dbg !5457
  %tobool42 = icmp eq i32 %call41, 0, !dbg !5457
  br i1 %tobool42, label %if.end46, label %cleanup, !dbg !5458

if.end46:                                         ; preds = %land.lhs.true25, %if.then21, %land.lhs.true39, %land.lhs.true34, %if.else, %if.then
  br label %cleanup, !dbg !5459

cleanup:                                          ; preds = %land.lhs.true25, %land.lhs.true39, %if.end46
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end46 ], [ false, %land.lhs.true25 ], [ false, %land.lhs.true39 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !5459
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7, !dbg !5459
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !5459
  br i1 %cleanup.dest.slot.0, label %if.end51, label %cleanup52

if.end51:                                         ; preds = %land.lhs.true, %entry, %cleanup
  br label %cleanup52, !dbg !5460

cleanup52:                                        ; preds = %cleanup, %if.end51
  %retval.1 = phi i8 [ 1, %cleanup ], [ 0, %if.end51 ], !dbg !5410
  ret i8 %retval.1, !dbg !5461
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !5462 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5464, metadata !DIExpression()), !dbg !5465
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt) #8, !dbg !5466
  %tobool = icmp eq i8 %call, 0, !dbg !5466
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5467

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %stmt) #8, !dbg !5468
  %tobool3 = icmp eq i8 %call1, 0, !dbg !5468
  br i1 %tobool3, label %lor.end, label %land.rhs, !dbg !5469

land.rhs:                                         ; preds = %lor.rhs
  %call4 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !5470
  %cmp = icmp ne %union.tree_node* %call4, null, !dbg !5471
  %phitmp = zext i1 %cmp to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry, %land.rhs
  %0 = phi i8 [ 1, %entry ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !5472
}

declare dso_local %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %union.tree_node* @ao_ref_base(%struct.ao_ref_s*) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_ref_base_and_extent(%union.tree_node*, i64*, i64*, i64*) local_unnamed_addr #2

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local i32 @operand_equal_p(%union.tree_node*, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5473 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5475, metadata !DIExpression()), !dbg !5476
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !5477
  %cmp = icmp eq i32 %call, 6, !dbg !5478
  %conv1 = zext i1 %cmp to i8, !dbg !5477
  ret i8 %conv1, !dbg !5479
}

declare dso_local void @clear_special_calls() local_unnamed_addr #2

declare dso_local zeroext i8 @dom_info_available_p(i32) local_unnamed_addr #2

declare dso_local %struct.VEC_basic_block_heap* @get_all_dominated_blocks(i32, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %vec_) unnamed_addr #0 !dbg !5480 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !5486, metadata !DIExpression()), !dbg !5487
  %tobool = icmp eq %struct.VEC_basic_block_base* %vec_, null, !dbg !5488
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5488

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !5488
  %0 = load i32, i32* %num, align 8, !dbg !5488
  br label %cond.end, !dbg !5488

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !5488
  ret i32 %cond, !dbg !5488
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_pop(%struct.VEC_basic_block_base* %vec_) unnamed_addr #0 !dbg !5489 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !5494, metadata !DIExpression()), !dbg !5496
  %num1 = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !5497
  %0 = load i32, i32* %num1, align 8, !dbg !5497
  %dec = add i32 %0, -1, !dbg !5497
  store i32 %dec, i32* %num1, align 8, !dbg !5497
  %idxprom = zext i32 %dec to i64, !dbg !5497
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5497
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !5497
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !5495, metadata !DIExpression()), !dbg !5496
  ret %struct.basic_block_def* %1, !dbg !5497
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5498 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5500, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !5501, metadata !DIExpression()), !dbg !5504
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !5505
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !5502, metadata !DIExpression()), !dbg !5503
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #8, !dbg !5506
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !5507
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !5508
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !5509
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !5510
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !5511
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !5512
  ret void, !dbg !5513
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_prev(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !5514 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !5516, metadata !DIExpression()), !dbg !5517
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !5518
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !5518
  %prev = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 1, !dbg !5519
  %1 = bitcast %struct.gimple_seq_node_d** %prev to i64*, !dbg !5519
  %2 = load i64, i64* %1, align 8, !dbg !5519
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !5520
  store i64 %2, i64* %3, align 8, !dbg !5520
  ret void, !dbg !5521
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_dead_stmt(%struct.gimple_stmt_iterator* %i, %struct.basic_block_def* %bb) unnamed_addr #5 !dbg !5522 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !5526, metadata !DIExpression()), !dbg !5535
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5527, metadata !DIExpression()), !dbg !5535
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) #8, !dbg !5536
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !5528, metadata !DIExpression()), !dbg !5535
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5537
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !5537
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5539

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @dump_flags, align 4, !dbg !5540
  %and = and i32 %1, 8, !dbg !5541
  %tobool1 = icmp eq i32 %and, 0, !dbg !5541
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5542

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !5543
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5545
  tail call void @print_gimple_stmt(%struct._IO_FILE* %2, %union.gimple_statement_d* %call, i32 0, i32 2) #6, !dbg !5546
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5547
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5548
  br label %if.end, !dbg !5549

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %4 = load i32, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 2), align 4, !dbg !5550
  %inc = add nsw i32 %4, 1, !dbg !5550
  store i32 %inc, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 2), align 4, !dbg !5550
  %call4 = tail call zeroext i8 @is_ctrl_stmt(%union.gimple_statement_d* %call) #6, !dbg !5551
  %tobool5 = icmp eq i8 %call4, 0, !dbg !5551
  br i1 %tobool5, label %if.end45, label %if.then6, !dbg !5552

if.then6:                                         ; preds = %if.end
  %5 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !5553
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !5553
  %call7 = tail call %struct.basic_block_def* @get_immediate_dominator(i32 2, %struct.basic_block_def* %bb) #6, !dbg !5554
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call7, metadata !5529, metadata !DIExpression()), !dbg !5555
  %call8 = tail call %struct.edge_def* @find_edge(%struct.basic_block_def* %bb, %struct.basic_block_def* %call7) #6, !dbg !5556
  call void @llvm.dbg.value(metadata %struct.edge_def* %call8, metadata !5532, metadata !DIExpression()), !dbg !5555
  %tobool9 = icmp eq %struct.edge_def* %call8, null, !dbg !5557
  br i1 %tobool9, label %if.else, label %if.end28, !dbg !5559

if.else:                                          ; preds = %if.then6
  %tobool11 = icmp eq %struct.basic_block_def* %call7, null, !dbg !5560
  br i1 %tobool11, label %if.then12, label %lor.lhs.false, !dbg !5562

lor.lhs.false:                                    ; preds = %if.else
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5563
  %cfg = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !5563
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !5563
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 1, !dbg !5563
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !5563
  %cmp = icmp eq %struct.basic_block_def* %call7, %8, !dbg !5564
  br i1 %cmp, label %if.then12, label %if.else16, !dbg !5565

if.then12:                                        ; preds = %if.else, %lor.lhs.false
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !5566
  %9 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !5566
  %tobool13 = icmp eq %struct.VEC_edge_gc* %9, null, !dbg !5566
  br i1 %tobool13, label %cond.end, label %cond.true, !dbg !5566

cond.true:                                        ; preds = %if.then12
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %9, i64 0, i32 0, !dbg !5566
  br label %cond.end, !dbg !5566

cond.end:                                         ; preds = %if.then12, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.then12 ], !dbg !5566
  %call15 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 0) #8, !dbg !5566
  call void @llvm.dbg.value(metadata %struct.edge_def* %call15, metadata !5532, metadata !DIExpression()), !dbg !5555
  br label %if.end28, !dbg !5567

if.else16:                                        ; preds = %lor.lhs.false
  %succs17 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !5568
  %10 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs17, align 8, !dbg !5568
  %tobool18 = icmp eq %struct.VEC_edge_gc* %10, null, !dbg !5568
  br i1 %tobool18, label %cond.end23, label %cond.true19, !dbg !5568

cond.true19:                                      ; preds = %if.else16
  %base21 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %10, i64 0, i32 0, !dbg !5568
  br label %cond.end23, !dbg !5568

cond.end23:                                       ; preds = %if.else16, %cond.true19
  %cond24 = phi %struct.VEC_edge_base* [ %base21, %cond.true19 ], [ null, %if.else16 ], !dbg !5568
  %call25 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond24, i32 0) #8, !dbg !5568
  %call26 = tail call fastcc %struct.edge_def* @forward_edge_to_pdom(%struct.edge_def* %call25, %struct.basic_block_def* nonnull %call7) #8, !dbg !5569
  call void @llvm.dbg.value(metadata %struct.edge_def* %call26, metadata !5532, metadata !DIExpression()), !dbg !5555
  br label %if.end28

if.end28:                                         ; preds = %if.then6, %cond.end, %cond.end23
  %e.1 = phi %struct.edge_def* [ %call8, %if.then6 ], [ %call15, %cond.end ], [ %call26, %cond.end23 ], !dbg !5555
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.1, metadata !5532, metadata !DIExpression()), !dbg !5555
  %tobool29 = icmp eq %struct.edge_def* %e.1, null, !dbg !5570
  br i1 %tobool29, label %cond.true30, label %cond.end32, !dbg !5570

cond.true30:                                      ; preds = %if.end28
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 1023, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !5570
  br label %cond.end32, !dbg !5570

cond.end32:                                       ; preds = %if.end28, %cond.true30
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.1, i64 0, i32 8, !dbg !5571
  store i32 10000, i32* %probability, align 4, !dbg !5572
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 8, !dbg !5573
  %11 = load i64, i64* %count, align 8, !dbg !5573
  %count34 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.1, i64 0, i32 9, !dbg !5574
  store i64 %11, i64* %count34, align 8, !dbg !5575
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e.1, i64 0, i32 7, !dbg !5576
  %12 = load i32, i32* %flags, align 8, !dbg !5577
  %and35 = and i32 %12, -3074, !dbg !5577
  %or = or i32 %and35, 1, !dbg !5578
  store i32 %or, i32* %flags, align 8, !dbg !5578
  %13 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !5579
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #7, !dbg !5579
  %succs37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !5579
  %call38 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs37) #8, !dbg !5579
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !5579
  %15 = extractvalue { i32, %struct.VEC_edge_gc** } %call38, 0, !dbg !5579
  store i32 %15, i32* %14, align 8, !dbg !5579
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !5579
  %17 = extractvalue { i32, %struct.VEC_edge_gc** } %call38, 1, !dbg !5579
  store %struct.VEC_edge_gc** %17, %struct.VEC_edge_gc*** %16, align 8, !dbg !5579
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %13, i64 16, i1 false), !dbg !5579
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #7, !dbg !5579
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !5581
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !5581
  br label %for.cond, !dbg !5583

for.cond:                                         ; preds = %if.end44, %cond.end32
  %20 = load i32, i32* %18, align 8, !dbg !5584
  %21 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !5584
  %call39 = call fastcc %struct.edge_def* @ei_safe_edge(i32 %20, %struct.VEC_edge_gc** %21) #8, !dbg !5584
  call void @llvm.dbg.value(metadata %struct.edge_def* %call39, metadata !5533, metadata !DIExpression()), !dbg !5555
  %tobool40 = icmp eq %struct.edge_def* %call39, null, !dbg !5585
  br i1 %tobool40, label %for.end, label %for.body, !dbg !5585

for.body:                                         ; preds = %for.cond
  %cmp41 = icmp eq %struct.edge_def* %e.1, %call39, !dbg !5586
  br i1 %cmp41, label %if.else43, label %if.then42, !dbg !5588

if.then42:                                        ; preds = %for.body
  store i1 true, i1* @cfg_altered, align 1, !dbg !5589
  call void @remove_edge(%struct.edge_def* nonnull %call39) #6, !dbg !5591
  br label %if.end44, !dbg !5592

if.else43:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !5534, metadata !DIExpression(DW_OP_deref)), !dbg !5555
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !5593
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.then42
  br label %for.cond, !dbg !5594, !llvm.loop !5595

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !5597
  br label %if.end45, !dbg !5598

if.end45:                                         ; preds = %if.end, %for.end
  call void @unlink_stmt_vdef(%union.gimple_statement_d* %call) #6, !dbg !5599
  call void @gsi_remove(%struct.gimple_stmt_iterator* %i, i8 zeroext 1) #6, !dbg !5600
  call void @release_defs(%union.gimple_statement_d* %call) #6, !dbg !5601
  ret void, !dbg !5602
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !5603 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5605, metadata !DIExpression()), !dbg !5607
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5606, metadata !DIExpression()), !dbg !5607
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* null) #8, !dbg !5608
  ret void, !dbg !5609
}

declare dso_local zeroext i8 @maybe_clean_or_replace_eh_stmt(%union.gimple_statement_d*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @release_ssa_name(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @notice_special_calls(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** %vec_) unnamed_addr #0 !dbg !5610 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %vec_, metadata !5615, metadata !DIExpression()), !dbg !5616
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !5617
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !5617
  br i1 %tobool, label %if.end, label %if.then, !dbg !5619

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_basic_block_heap* %0 to i8*, !dbg !5619
  tail call void @free(i8* nonnull %1) #6, !dbg !5617
  br label %if.end, !dbg !5617

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !5619
  ret void, !dbg !5619
}

declare dso_local void @find_unreachable_blocks() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @end_imm_use_stmt_traverse(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !5620 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !5624, metadata !DIExpression()), !dbg !5625
  %iter_node = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !5626
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node) #8, !dbg !5627
  ret void, !dbg !5628
}

declare dso_local %struct.basic_block_def* @first_dom_son(i32, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @delete_basic_block(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @remove_dead_phis(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !5629 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5633, metadata !DIExpression()), !dbg !5650
  call void @llvm.dbg.value(metadata i8 0, metadata !5634, metadata !DIExpression()), !dbg !5650
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !5651
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !5651
  %call = tail call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb) #8, !dbg !5652
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !5635, metadata !DIExpression()), !dbg !5650
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !5653
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !5653
  call fastcc void @gsi_start(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.gimple_seq_d* %call) #8, !dbg !5653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !5653
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !5653
  %2 = bitcast %struct.immediate_use_iterator_d* %iter to i8*, !dbg !5654
  br label %for.cond.outer, !dbg !5655

for.cond.outer:                                   ; preds = %if.end47, %entry
  %something_changed.0.ph = phi i8 [ 1, %if.end47 ], [ 0, %entry ]
  br label %for.cond, !dbg !5656

for.cond:                                         ; preds = %for.cond.outer, %if.end49
  call void @llvm.dbg.value(metadata i8 %something_changed.0.ph, metadata !5634, metadata !DIExpression()), !dbg !5650
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5637, metadata !DIExpression(DW_OP_deref)), !dbg !5650
  %call1 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !5657
  %tobool = icmp eq i8 %call1, 0, !dbg !5658
  br i1 %tobool, label %for.body, label %for.end50, !dbg !5656

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 1), align 4, !dbg !5659
  %inc = add nsw i32 %3, 1, !dbg !5659
  store i32 %inc, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 1), align 4, !dbg !5659
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5637, metadata !DIExpression(DW_OP_deref)), !dbg !5650
  %call2 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !5660
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !5636, metadata !DIExpression()), !dbg !5650
  %call3 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call2) #8, !dbg !5661
  %call4 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call3) #6, !dbg !5662
  %tobool5 = icmp eq i8 %call4, 0, !dbg !5662
  br i1 %tobool5, label %if.then, label %if.end37, !dbg !5663

if.then:                                          ; preds = %for.body
  %call6 = call fastcc zeroext i8 @degenerate_phi_p(%union.gimple_statement_d* %call2) #8, !dbg !5664
  %tobool7 = icmp eq i8 %call6, 0, !dbg !5664
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !5665

if.then8:                                         ; preds = %if.then
  %call9 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call2) #8, !dbg !5666
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !5638, metadata !DIExpression()), !dbg !5654
  %call10 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call2, i64 0) #8, !dbg !5667
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !5646, metadata !DIExpression()), !dbg !5654
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %2) #7, !dbg !5668
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !5648, metadata !DIExpression(DW_OP_deref)), !dbg !5654
  %call11 = call fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %iter, %union.tree_node* %call9) #8, !dbg !5669
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call11, metadata !5649, metadata !DIExpression()), !dbg !5654
  br label %for.cond12, !dbg !5669

for.cond12:                                       ; preds = %for.inc24, %if.then8
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !5648, metadata !DIExpression(DW_OP_deref)), !dbg !5654
  %call13 = call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !5671
  %tobool14 = icmp eq i8 %call13, 0, !dbg !5671
  br i1 %tobool14, label %for.body16, label %for.end26, !dbg !5669

for.body16:                                       ; preds = %for.cond12
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !5648, metadata !DIExpression(DW_OP_deref)), !dbg !5654
  %call17 = call fastcc %struct.ssa_use_operand_d* @first_imm_use_on_stmt(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !5673
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call17, metadata !5647, metadata !DIExpression()), !dbg !5654
  br label %for.cond18, !dbg !5673

for.cond18:                                       ; preds = %for.body22, %for.body16
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call17, %for.body16 ], [ %call23, %for.body22 ], !dbg !5675
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !5647, metadata !DIExpression()), !dbg !5654
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !5648, metadata !DIExpression(DW_OP_deref)), !dbg !5654
  %call19 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !5676
  %tobool20 = icmp eq i8 %call19, 0, !dbg !5676
  br i1 %tobool20, label %for.body22, label %for.inc24, !dbg !5673

for.body22:                                       ; preds = %for.cond18
  call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0, %union.tree_node* %call10) #8, !dbg !5678
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !5648, metadata !DIExpression(DW_OP_deref)), !dbg !5654
  %call23 = call fastcc %struct.ssa_use_operand_d* @next_imm_use_on_stmt(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !5676
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call23, metadata !5647, metadata !DIExpression()), !dbg !5654
  br label %for.cond18, !dbg !5676, !llvm.loop !5679

for.inc24:                                        ; preds = %for.cond18
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !5648, metadata !DIExpression(DW_OP_deref)), !dbg !5654
  %call25 = call fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %iter) #8, !dbg !5671
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call25, metadata !5649, metadata !DIExpression()), !dbg !5654
  br label %for.cond12, !dbg !5671, !llvm.loop !5681

for.end26:                                        ; preds = %for.cond12
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5683
  %bf.load = load i64, i64* %4, align 8, !dbg !5683
  %bf.cast1 = and i64 %bf.load, 4194304, !dbg !5683
  %tobool27 = icmp eq i64 %bf.cast1, 0, !dbg !5683
  br i1 %tobool27, label %if.end, label %land.lhs.true, !dbg !5685

land.lhs.true:                                    ; preds = %for.end26
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %call10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5686
  %bf.load29 = load i64, i64* %5, align 8, !dbg !5686
  %bf.cast312 = and i64 %bf.load29, 65535, !dbg !5687
  %cmp = icmp eq i64 %bf.cast312, 141, !dbg !5687
  br i1 %cmp, label %if.then32, label %if.end, !dbg !5688

if.then32:                                        ; preds = %land.lhs.true
  %bf.set = or i64 %bf.load29, 4194304, !dbg !5689
  store i64 %bf.set, i64* %5, align 8, !dbg !5689
  br label %if.end, !dbg !5690

if.end:                                           ; preds = %for.end26, %if.then32, %land.lhs.true
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %2) #7, !dbg !5691
  br label %if.end37, !dbg !5692

if.else:                                          ; preds = %if.then
  call fastcc void @gimple_set_plf(%union.gimple_statement_d* %call2, i32 1, i8 zeroext 1) #8, !dbg !5693
  br label %if.end37

if.end37:                                         ; preds = %for.body, %if.end, %if.else
  %call38 = call fastcc i32 @gimple_plf(%union.gimple_statement_d* %call2, i32 1) #8, !dbg !5694
  %tobool39 = icmp eq i32 %call38, 0, !dbg !5694
  br i1 %tobool39, label %if.then40, label %if.end49, !dbg !5696

if.then40:                                        ; preds = %if.end37
  %call2.lcssa = phi %union.gimple_statement_d* [ %call2, %if.end37 ], !dbg !5660
  call void @llvm.dbg.value(metadata i8 1, metadata !5634, metadata !DIExpression()), !dbg !5650
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5697
  %tobool41 = icmp eq %struct._IO_FILE* %6, null, !dbg !5697
  br i1 %tobool41, label %if.end47, label %land.lhs.true42, !dbg !5700

land.lhs.true42:                                  ; preds = %if.then40
  %7 = load i32, i32* @dump_flags, align 4, !dbg !5701
  %and = and i32 %7, 8, !dbg !5702
  %tobool43 = icmp eq i32 %and, 0, !dbg !5702
  br i1 %tobool43, label %if.end47, label %if.then44, !dbg !5703

if.then44:                                        ; preds = %land.lhs.true42
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !5704
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5706
  call void @print_gimple_stmt(%struct._IO_FILE* %8, %union.gimple_statement_d* %call2.lcssa, i32 0, i32 2) #6, !dbg !5707
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5708
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5709
  br label %if.end47, !dbg !5710

if.end47:                                         ; preds = %land.lhs.true42, %if.then40, %if.then44
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5637, metadata !DIExpression(DW_OP_deref)), !dbg !5650
  call void @remove_phi_node(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !5711
  %10 = load i32, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 3), align 4, !dbg !5712
  %inc48 = add nsw i32 %10, 1, !dbg !5712
  store i32 %inc48, i32* getelementptr inbounds (%struct.stmt_stats, %struct.stmt_stats* @stats, i64 0, i32 3), align 4, !dbg !5712
  br label %for.cond.outer, !dbg !5713, !llvm.loop !5714

if.end49:                                         ; preds = %if.end37
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5637, metadata !DIExpression(DW_OP_deref)), !dbg !5650
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !5716
  br label %for.cond, !dbg !5717, !llvm.loop !5714

for.end50:                                        ; preds = %for.cond
  %something_changed.0.ph.lcssa = phi i8 [ %something_changed.0.ph, %for.cond ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !5718
  ret i8 %something_changed.0.ph.lcssa, !dbg !5719
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !5720 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !5722, metadata !DIExpression()), !dbg !5723
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !5724
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5724

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !5725
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !5725
  br label %cond.end, !dbg !5724

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !5724
  ret %struct.gimple_seq_node_d* %cond, !dbg !5726
}

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.edge_def* @forward_edge_to_pdom(%struct.edge_def* %e, %struct.basic_block_def* %post_dom_bb) unnamed_addr #5 !dbg !5727 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %e2 = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp17 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !5731, metadata !DIExpression()), !dbg !5744
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %post_dom_bb, metadata !5732, metadata !DIExpression()), !dbg !5744
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !5745
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !5745
  %1 = bitcast %struct.edge_def** %e2 to i8*, !dbg !5746
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !5746
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !5734, metadata !DIExpression()), !dbg !5744
  store %struct.edge_def* null, %struct.edge_def** %e2, align 8, !dbg !5747
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !5748
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !5748
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5749
  %tobool = icmp eq %struct._IO_FILE* %3, null, !dbg !5749
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5751

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* @dump_flags, align 4, !dbg !5752
  %and = and i32 %4, 8, !dbg !5753
  %tobool1 = icmp eq i32 %and, 0, !dbg !5753
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5754

if.then:                                          ; preds = %land.lhs.true
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !5755
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !5755
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 9, !dbg !5756
  %6 = load i32, i32* %index, align 8, !dbg !5756
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !5757
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !5757
  %index2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 9, !dbg !5758
  %8 = load i32, i32* %index2, align 8, !dbg !5758
  %index3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %post_dom_bb, i64 0, i32 9, !dbg !5759
  %9 = load i32, i32* %index3, align 8, !dbg !5759
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i32 %6, i32 %8, i32 %9) #6, !dbg !5760
  br label %if.end, !dbg !5760

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %call4 = tail call %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def* %e, %struct.basic_block_def* %post_dom_bb) #6, !dbg !5761
  call void @llvm.dbg.value(metadata %struct.edge_def* %call4, metadata !5734, metadata !DIExpression()), !dbg !5744
  store %struct.edge_def* %call4, %struct.edge_def** %e2, align 8, !dbg !5762
  store i1 true, i1* @cfg_altered, align 1, !dbg !5763
  call void @llvm.dbg.value(metadata %struct.edge_def* %call4, metadata !5734, metadata !DIExpression()), !dbg !5744
  %cmp = icmp eq %struct.edge_def* %call4, %e, !dbg !5764
  br i1 %cmp, label %if.end6, label %if.then5, !dbg !5766

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.edge_def* %call4, metadata !5734, metadata !DIExpression()), !dbg !5744
  br label %cleanup42, !dbg !5767

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %post_dom_bb) #8, !dbg !5768
  %call8 = tail call fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %call7) #8, !dbg !5769
  %tobool9 = icmp eq i8 %call8, 0, !dbg !5769
  br i1 %tobool9, label %if.then10, label %cleanup42, !dbg !5770

if.then10:                                        ; preds = %if.end6
  %10 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !5771
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #7, !dbg !5771
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %post_dom_bb, i64 0, i32 0, !dbg !5771
  %call11 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !5771
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !5771
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call11, 0, !dbg !5771
  store i32 %12, i32* %11, align 8, !dbg !5771
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !5771
  %14 = extractvalue { i32, %struct.VEC_edge_gc** } %call11, 1, !dbg !5771
  store %struct.VEC_edge_gc** %14, %struct.VEC_edge_gc*** %13, align 8, !dbg !5771
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %10, i64 16, i1 false), !dbg !5771
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #7, !dbg !5771
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !5773
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !5773
  br label %for.cond, !dbg !5771

for.cond:                                         ; preds = %for.inc, %if.then10
  %17 = load i32, i32* %15, align 8, !dbg !5775
  %18 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !5775
  call void @llvm.dbg.value(metadata %struct.edge_def** %e2, metadata !5734, metadata !DIExpression(DW_OP_deref)), !dbg !5744
  %call12 = call fastcc zeroext i8 @ei_cond(i32 %17, %struct.VEC_edge_gc** %18, %struct.edge_def** nonnull %e2) #8, !dbg !5775
  %tobool13 = icmp eq i8 %call12, 0, !dbg !5771
  %19 = load %struct.edge_def*, %struct.edge_def** %e2, align 8, !dbg !5776
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !5734, metadata !DIExpression()), !dbg !5744
  %cmp14 = icmp ne %struct.edge_def* %19, %e, !dbg !5778
  %or.cond = or i1 %tobool13, %cmp14, !dbg !5771
  br i1 %or.cond, label %for.end, label %for.inc, !dbg !5771

for.inc:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !5735, metadata !DIExpression(DW_OP_deref)), !dbg !5744
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !5775
  br label %for.cond, !dbg !5775, !llvm.loop !5779

for.end:                                          ; preds = %for.cond
  %20 = bitcast %struct.gimple_stmt_iterator* %tmp17 to i8*, !dbg !5781
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %20) #7, !dbg !5781
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp17, %struct.basic_block_def* %post_dom_bb) #6, !dbg !5781
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %20, i64 24, i1 false), !dbg !5781
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %20) #7, !dbg !5781
  br label %for.cond18, !dbg !5782

for.cond18:                                       ; preds = %cleanup, %for.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5733, metadata !DIExpression(DW_OP_deref)), !dbg !5744
  %call19 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !5783
  %tobool20 = icmp eq i8 %call19, 0, !dbg !5784
  br i1 %tobool20, label %for.body21, label %cleanup42.loopexit, !dbg !5785

for.body21:                                       ; preds = %for.cond18
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5733, metadata !DIExpression(DW_OP_deref)), !dbg !5744
  %call22 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !5786
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call22, metadata !5736, metadata !DIExpression()), !dbg !5787
  %call23 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call22) #8, !dbg !5788
  %call24 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call23) #6, !dbg !5790
  %tobool25 = icmp eq i8 %call24, 0, !dbg !5790
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5791

if.then26:                                        ; preds = %for.body21
  call void @mark_virtual_phi_result_for_renaming(%union.gimple_statement_d* %call22) #8, !dbg !5792
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5733, metadata !DIExpression(DW_OP_deref)), !dbg !5744
  call void @remove_phi_node(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !5794
  br label %cleanup, !dbg !5795, !llvm.loop !5796

if.end27:                                         ; preds = %for.body21
  %call28 = call fastcc i32 @gimple_plf(%union.gimple_statement_d* %call22, i32 1) #8, !dbg !5798
  %tobool29 = icmp eq i32 %call28, 0, !dbg !5798
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5800

if.then30:                                        ; preds = %if.end27
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5733, metadata !DIExpression(DW_OP_deref)), !dbg !5744
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !5801
  br label %cleanup, !dbg !5803, !llvm.loop !5796

if.end31:                                         ; preds = %if.end27
  %21 = load %struct.edge_def*, %struct.edge_def** %e2, align 8, !dbg !5804
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !5734, metadata !DIExpression()), !dbg !5744
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i64 0, i32 6, !dbg !5805
  %22 = load i32, i32* %dest_idx, align 4, !dbg !5805
  %conv = zext i32 %22 to i64, !dbg !5804
  %call32 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call22, i64 %conv) #8, !dbg !5806
  call void @llvm.dbg.value(metadata %union.tree_node* %call32, metadata !5742, metadata !DIExpression()), !dbg !5787
  %23 = load %struct.edge_def*, %struct.edge_def** %e2, align 8, !dbg !5807
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !5734, metadata !DIExpression()), !dbg !5744
  %dest_idx33 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i64 0, i32 6, !dbg !5808
  %24 = load i32, i32* %dest_idx33, align 4, !dbg !5808
  %conv34 = zext i32 %24 to i64, !dbg !5807
  %call35 = call fastcc i32 @gimple_phi_arg_location(%union.gimple_statement_d* %call22, i64 %conv34) #8, !dbg !5809
  call void @llvm.dbg.value(metadata i32 %call35, metadata !5743, metadata !DIExpression()), !dbg !5787
  call void @add_phi_arg(%union.gimple_statement_d* %call22, %union.tree_node* %call32, %struct.edge_def* %e, i32 %call35) #6, !dbg !5810
  %call36 = call fastcc zeroext i8 @degenerate_phi_p(%union.gimple_statement_d* %call22) #8, !dbg !5811
  %tobool37 = icmp eq i8 %call36, 0, !dbg !5811
  br i1 %tobool37, label %cond.true, label %cond.end, !dbg !5811

cond.true:                                        ; preds = %if.end31
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 973, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !5811
  br label %cond.end, !dbg !5811

cond.end:                                         ; preds = %if.end31, %cond.true
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5733, metadata !DIExpression(DW_OP_deref)), !dbg !5744
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !5812
  br label %cleanup, !dbg !5813

cleanup:                                          ; preds = %cond.end, %if.then30, %if.then26
  br label %for.cond18

cleanup42.loopexit:                               ; preds = %for.cond18
  br label %cleanup42, !dbg !5814

cleanup42:                                        ; preds = %cleanup42.loopexit, %if.end6, %if.then5
  %retval.0 = phi %struct.edge_def* [ %call4, %if.then5 ], [ %e, %if.end6 ], [ %e, %cleanup42.loopexit ], !dbg !5744
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !5814
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !5814
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !5814
  ret %struct.edge_def* %retval.0, !dbg !5814
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_safe_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !5815 {
entry:
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !5818
  %tobool = icmp eq i8 %call, 0, !dbg !5818
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !5819

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !5820
  br label %cond.end, !dbg !5819

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.edge_def* [ %call1, %cond.true ], [ null, %entry ], !dbg !5819
  ret %struct.edge_def* %cond, !dbg !5821
}

declare dso_local void @remove_edge(%struct.edge_def*) local_unnamed_addr #2

declare dso_local void @unlink_stmt_vdef(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @release_defs(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !5822 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !5826, metadata !DIExpression()), !dbg !5827
  %cmp = icmp eq %struct.gimple_seq_d* %s, null, !dbg !5828
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5829

lor.rhs:                                          ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !5830
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !5830
  %cmp1 = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !5831
  %phitmp = zext i1 %cmp1 to i8, !dbg !5829
  br label %lor.end, !dbg !5829

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i8 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i8 %1, !dbg !5832
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5833 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5835, metadata !DIExpression()), !dbg !5836
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !5837
  %0 = load i32, i32* %flags, align 8, !dbg !5837
  %and = and i32 %0, 512, !dbg !5837
  %tobool = icmp eq i32 %and, 0, !dbg !5837
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5837

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 510, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !5837
  br label %cond.end, !dbg !5837

cond.end:                                         ; preds = %entry, %cond.true
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !5838
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !5838
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !5840
  br i1 %tobool1, label %return, label %if.end, !dbg !5841

if.end:                                           ; preds = %cond.end
  %phi_nodes = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 1, !dbg !5842
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %phi_nodes, align 8, !dbg !5842
  br label %return, !dbg !5843

return:                                           ; preds = %cond.end, %if.end
  %retval.0 = phi %struct.gimple_seq_d* [ %2, %if.end ], [ null, %cond.end ], !dbg !5836
  ret %struct.gimple_seq_d* %retval.0, !dbg !5844
}

declare dso_local void @remove_phi_node(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_arg_location(%union.gimple_statement_d* %gs, i64 %i) unnamed_addr #0 !dbg !5845 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5849, metadata !DIExpression()), !dbg !5851
  call void @llvm.dbg.value(metadata i64 %i, metadata !5850, metadata !DIExpression()), !dbg !5851
  %conv = trunc i64 %i to i32, !dbg !5852
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #8, !dbg !5853
  %locus = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 2, !dbg !5854
  %0 = load i32, i32* %locus, align 8, !dbg !5854
  ret i32 %0, !dbg !5855
}

declare dso_local void @add_phi_arg(%union.gimple_statement_d*, %union.tree_node*, %struct.edge_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !5856 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5860, metadata !DIExpression()), !dbg !5863
  call void @llvm.dbg.value(metadata i32 0, metadata !5861, metadata !DIExpression()), !dbg !5863
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5862, metadata !DIExpression()), !dbg !5863
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !5864
  %tobool = icmp eq i8 %call, 0, !dbg !5864
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !5864

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !5864
  %cmp = icmp eq i32 %call1, 0, !dbg !5864
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !5864

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !5864
  br label %cond.end, !dbg !5864

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !5865
  store %union.tree_node* null, %union.tree_node** %call3, align 8, !dbg !5866
  ret void, !dbg !5867
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !5868 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !5872, metadata !DIExpression()), !dbg !5874
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !5873, metadata !DIExpression()), !dbg !5875
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %seq) #8, !dbg !5876
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !5877
  store %struct.gimple_seq_node_d* %call, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !5878
  %seq1 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !5879
  store %struct.gimple_seq_d* %seq, %struct.gimple_seq_d** %seq1, align 8, !dbg !5880
  %tobool = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !5881
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !5882

land.lhs.true:                                    ; preds = %entry
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call, i64 0, i32 0, !dbg !5883
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !5883
  %tobool4 = icmp eq %union.gimple_statement_d* %0, null, !dbg !5884
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !5885

cond.true:                                        ; preds = %land.lhs.true
  %call7 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* nonnull %0) #8, !dbg !5886
  br label %cond.end, !dbg !5885

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.basic_block_def* [ %call7, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !5885
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !5887
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %bb, align 8, !dbg !5888
  ret void, !dbg !5889
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_gimple_heap_free(%struct.VEC_gimple_heap** %vec_) unnamed_addr #0 !dbg !5890 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** @worklist, metadata !5894, metadata !DIExpression()), !dbg !5895
  %0 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** @worklist, align 8, !dbg !5896
  %tobool = icmp eq %struct.VEC_gimple_heap* %0, null, !dbg !5896
  br i1 %tobool, label %if.end, label %if.then, !dbg !5898

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_gimple_heap* %0 to i8*, !dbg !5898
  tail call void @free(i8* nonnull %1) #6, !dbg !5896
  br label %if.end, !dbg !5896

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_gimple_heap* null, %struct.VEC_gimple_heap** @worklist, align 8, !dbg !5898
  ret void, !dbg !5898
}

declare dso_local void @free_numbers_of_iterations_estimates() local_unnamed_addr #2

declare dso_local void @scev_reset() local_unnamed_addr #2

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
!llvm.module.flags = !{!2111, !2112, !2113}
!llvm.ident = !{!2114}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_dce", scope: !2, file: !3, line: 1419, type: !2039, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !649, globals: !2036, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-dce.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !154, !158, !163, !182, !189, !196, !390, !397, !573, !580, !619, !623}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !6, line: 7, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!9 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!37 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!38 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!39 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!40 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!41 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!42 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!43 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!44 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!45 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!46 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!47 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!48 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!49 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!50 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!51 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!52 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!53 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!54 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!55 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!56 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!57 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!58 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!59 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!60 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!61 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!62 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!63 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!64 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!65 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!66 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!67 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!68 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!69 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!70 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!71 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!72 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!73 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!74 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!75 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!76 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!77 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!78 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!79 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!80 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!81 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!82 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!83 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!84 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!85 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!86 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!87 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!88 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!89 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!90 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!91 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!92 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!93 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!94 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!95 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!96 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!97 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!101 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!102 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!103 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!106 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!107 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!108 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!109 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!110 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!111 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!112 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!113 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!114 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!115 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!116 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!117 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!118 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!119 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!120 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!121 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!122 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!123 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!132 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!133 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !135, line: 363, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !135, line: 355, baseType: !7, size: 32, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!143 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!144 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !146, line: 31, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!147 = !{!148, !149, !150, !151, !152, !153}
!148 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!151 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!152 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!153 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !146, line: 91, baseType: !7, size: 32, elements: !155)
!155 = !{!156, !157}
!156 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!157 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !159, line: 474, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !164, line: 280, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!166 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!176 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !164, line: 1817, baseType: !7, size: 32, elements: !183)
!183 = !{!184, !185, !186, !187, !188}
!184 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!188 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !164, line: 1805, baseType: !7, size: 32, elements: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!192 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!193 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!194 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!195 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !164, line: 39, baseType: !7, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!198 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!199 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!200 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!201 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!202 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!203 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!204 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!205 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!206 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!207 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!208 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!209 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!210 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!211 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!212 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!213 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!214 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!215 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!216 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!217 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!218 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!219 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!220 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!221 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!222 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!223 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!224 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!225 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!226 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!227 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!228 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!229 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!230 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!231 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!232 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!233 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!234 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!235 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!236 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!237 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!238 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!239 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!240 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!241 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!242 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!243 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!244 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!245 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!246 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!247 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!248 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!249 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!250 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!251 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!252 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!253 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!254 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!255 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!256 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!257 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!258 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!259 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!260 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!261 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!262 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!263 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!264 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!265 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!266 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!267 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!268 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!269 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!270 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!271 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!272 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!273 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!274 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!275 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!276 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!277 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!278 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!279 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!280 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!281 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!282 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!283 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!284 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!285 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!286 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!287 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!288 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!289 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!290 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!291 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!292 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!293 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!294 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!295 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!296 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!297 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!298 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!299 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!300 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!301 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!302 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!303 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!304 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!305 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!306 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!307 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!308 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!309 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!310 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!311 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!312 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!313 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!314 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!315 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!316 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!317 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!318 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!319 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!320 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!321 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!322 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!323 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!324 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!325 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!326 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!327 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!328 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!329 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!330 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!331 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!332 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!333 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!334 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!335 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!336 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!337 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!338 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!339 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!340 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!341 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!342 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!343 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!344 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!345 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!346 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!347 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!348 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!349 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!350 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!362 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!363 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!364 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!365 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!366 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!367 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!372 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!375 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!376 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!377 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!378 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!379 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!380 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!381 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!382 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!383 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!384 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!385 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!386 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!387 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!388 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!389 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !391, line: 104, baseType: !7, size: 32, elements: !392)
!391 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!392 = !{!393, !394, !395, !396}
!393 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!394 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!395 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!396 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!397 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !398, line: 74, baseType: !7, size: 32, elements: !399)
!398 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!400 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!562 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!563 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!564 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!565 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!566 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!567 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!568 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!569 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!570 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!571 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!572 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!573 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !574, line: 119, baseType: !7, size: 32, elements: !575)
!574 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!575 = !{!576, !577, !578, !579}
!576 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!577 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!578 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!579 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
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
!619 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "plf_mask", file: !581, line: 130, baseType: !7, size: 32, elements: !620)
!620 = !{!621, !622}
!621 = !DIEnumerator(name: "GF_PLF_1", value: 1, isUnsigned: true)
!622 = !DIEnumerator(name: "GF_PLF_2", value: 2, isUnsigned: true)
!623 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !581, line: 727, baseType: !7, size: 32, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648}
!625 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!626 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!627 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!628 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!629 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!630 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!631 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!632 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!633 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!634 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!635 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!636 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!637 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!638 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!639 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!640 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!641 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!642 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!643 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!644 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!645 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!646 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!647 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!648 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!649 = !{!650, !651, !652, !653, !656, !657, !659, !853, !196, !1236, !2014, !2015, !7, !807, !673, !2020, !1264, !654, !2022, !1289, !1115, !2035}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!652 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !574, line: 30, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !164, line: 1893, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !164, line: 1883, size: 256, elements: !663)
!663 = !{!664, !666, !667, !2013}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !662, file: !164, line: 1884, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !662, file: !164, line: 1885, baseType: !665, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !662, file: !164, line: 1891, baseType: !668, size: 64, offset: 128)
!668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !662, file: !164, line: 1891, size: 64, elements: !669)
!669 = !{!670, !2012}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !668, file: !164, line: 1891, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !672, line: 58, baseType: !673)
!672 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !581, line: 737, size: 768, elements: !675)
!675 = !{!676, !1859, !1869, !1875, !1880, !1885, !1892, !1898, !1904, !1909, !1923, !1928, !1934, !1939, !1949, !1954, !1970, !1977, !1984, !1990, !1995, !2001, !2007}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !674, file: !581, line: 738, baseType: !677, size: 256)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !581, line: 271, size: 256, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !694, !695, !1858}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !677, file: !581, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !677, file: !581, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !677, file: !581, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !677, file: !581, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !677, file: !581, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !677, file: !581, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !677, file: !581, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !677, file: !581, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !677, file: !581, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !677, file: !581, line: 312, baseType: !7, size: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !677, file: !581, line: 316, baseType: !690, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !691, line: 58, baseType: !692)
!691 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !693, line: 44, baseType: !7)
!693 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!694 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !677, file: !581, line: 319, baseType: !7, size: 32, offset: 96)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !677, file: !581, line: 323, baseType: !696, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !698)
!698 = !{!699, !1825, !1826, !1827, !1828, !1832, !1833, !1834, !1852, !1853, !1854, !1855, !1856, !1857}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !697, file: !135, line: 219, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !703)
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !702, file: !135, line: 151, baseType: !705, size: 128)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !707)
!707 = !{!708, !709, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !706, file: !135, line: 150, baseType: !7, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !706, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !706, file: !135, line: 150, baseType: !711, size: 64, offset: 64)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 64, elements: !772)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !672, line: 108, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !715)
!715 = !{!716, !717, !718, !1817, !1818, !1819, !1820, !1821, !1822, !1823}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !714, file: !135, line: 124, baseType: !696, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !714, file: !135, line: 125, baseType: !696, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !714, file: !135, line: 131, baseType: !719, size: 64, offset: 128)
!719 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !720)
!720 = !{!721, !736}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !719, file: !135, line: 129, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !672, line: 66, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !581, line: 143, size: 192, elements: !725)
!725 = !{!726, !734, !735}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !724, file: !581, line: 145, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !672, line: 69, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !581, line: 136, size: 192, elements: !730)
!730 = !{!731, !732, !733}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !729, file: !581, line: 137, baseType: !671, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !729, file: !581, line: 138, baseType: !728, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !729, file: !581, line: 139, baseType: !728, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !724, file: !581, line: 146, baseType: !727, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !724, file: !581, line: 152, baseType: !722, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !719, file: !135, line: 130, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !672, line: 50, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !740, line: 240, size: 384, elements: !741)
!740 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !739, file: !740, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !739, file: !740, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !739, file: !740, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !739, file: !740, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !739, file: !740, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !739, file: !740, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !739, file: !740, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !739, file: !740, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !739, file: !740, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !739, file: !740, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !739, file: !740, line: 321, baseType: !753, size: 320, offset: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !740, line: 315, size: 320, elements: !754)
!754 = !{!755, !1784, !1786, !1815, !1816}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !753, file: !740, line: 316, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, size: 64, elements: !772)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !740, line: 183, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !740, line: 166, size: 64, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !774, !775, !787, !790, !852, !1762, !1763, !1774, !1781}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !758, file: !740, line: 168, baseType: !652, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !758, file: !740, line: 169, baseType: !7, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !758, file: !740, line: 170, baseType: !657, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !758, file: !740, line: 171, baseType: !737, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !758, file: !740, line: 172, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !672, line: 53, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !740, line: 359, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !767, file: !740, line: 360, baseType: !652, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !767, file: !740, line: 361, baseType: !771, size: 64, offset: 64)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, size: 64, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 1)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !758, file: !740, line: 173, baseType: !5, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !758, file: !740, line: 174, baseType: !776, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !740, line: 133, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !740, line: 115, size: 32, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784, !785, !786}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !777, file: !740, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !777, file: !740, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !777, file: !740, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !777, file: !740, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !777, file: !740, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !777, file: !740, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !777, file: !740, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !777, file: !740, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !758, file: !740, line: 175, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !740, line: 175, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !758, file: !740, line: 176, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !793, line: 75, size: 256, elements: !794)
!793 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!794 = !{!795, !810, !811, !812}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !792, file: !793, line: 76, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !793, line: 68, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !793, line: 63, size: 320, elements: !799)
!799 = !{!800, !802, !803, !804}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !798, file: !793, line: 64, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !798, file: !793, line: 65, baseType: !801, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !798, file: !793, line: 66, baseType: !7, size: 32, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !798, file: !793, line: 67, baseType: !805, size: 128, offset: 192)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 128, elements: !808)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !793, line: 29, baseType: !807)
!807 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!808 = !{!809}
!809 = !DISubrange(count: 2)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !792, file: !793, line: 77, baseType: !796, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !792, file: !793, line: 78, baseType: !7, size: 32, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !792, file: !793, line: 79, baseType: !813, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !793, line: 49, baseType: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !793, line: 45, size: 832, elements: !816)
!816 = !{!817, !818, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !815, file: !793, line: 46, baseType: !801, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !815, file: !793, line: 47, baseType: !791, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !815, file: !793, line: 48, baseType: !820, size: 704, offset: 128)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !821, line: 164, size: 704, elements: !822)
!821 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!822 = !{!823, !825, !835, !836, !837, !838, !839, !840, !844, !848, !849, !850, !851}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !820, file: !821, line: 166, baseType: !824, size: 64)
!824 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !820, file: !821, line: 167, baseType: !826, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !821, line: 157, size: 192, elements: !828)
!828 = !{!829, !830, !831}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !827, file: !821, line: 159, baseType: !654, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !827, file: !821, line: 160, baseType: !826, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !827, file: !821, line: 161, baseType: !832, size: 32, offset: 128)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 32, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 4)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !820, file: !821, line: 168, baseType: !654, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !820, file: !821, line: 169, baseType: !654, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !820, file: !821, line: 170, baseType: !654, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !820, file: !821, line: 171, baseType: !824, size: 64, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !820, file: !821, line: 172, baseType: !652, size: 32, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !820, file: !821, line: 176, baseType: !841, size: 64, offset: 448)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!826, !656, !824}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !820, file: !821, line: 177, baseType: !845, size: 64, offset: 512)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !656, !826}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !820, file: !821, line: 178, baseType: !656, size: 64, offset: 576)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !820, file: !821, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !820, file: !821, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !820, file: !821, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !758, file: !740, line: 177, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !672, line: 56, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !164, line: 3371, size: 1792, elements: !856)
!856 = !{!857, !890, !896, !907, !926, !937, !942, !949, !955, !968, !976, !1014, !1019, !1047, !1064, !1065, !1070, !1079, !1085, !1090, !1094, !1098, !1411, !1460, !1466, !1472, !1479, !1492, !1506, !1523, !1535, !1557, !1572, !1744}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !855, file: !164, line: 3372, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !164, line: 360, size: 64, elements: !859)
!859 = !{!860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !858, file: !164, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !858, file: !164, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !858, file: !164, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !858, file: !164, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !858, file: !164, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !858, file: !164, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !858, file: !164, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !858, file: !164, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !858, file: !164, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !858, file: !164, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !858, file: !164, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !858, file: !164, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !858, file: !164, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !858, file: !164, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !858, file: !164, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !858, file: !164, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !858, file: !164, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !858, file: !164, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !858, file: !164, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !858, file: !164, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !858, file: !164, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !858, file: !164, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !858, file: !164, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !858, file: !164, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !858, file: !164, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !858, file: !164, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !858, file: !164, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !858, file: !164, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !858, file: !164, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !858, file: !164, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !855, file: !164, line: 3373, baseType: !891, size: 192)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !164, line: 402, size: 192, elements: !892)
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !891, file: !164, line: 403, baseType: !858, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !891, file: !164, line: 404, baseType: !853, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !891, file: !164, line: 405, baseType: !853, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !855, file: !164, line: 3374, baseType: !897, size: 320)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !164, line: 1384, size: 320, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !897, file: !164, line: 1385, baseType: !891, size: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !897, file: !164, line: 1386, baseType: !901, size: 128, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !902, line: 58, baseType: !903)
!902 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !902, line: 54, size: 128, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !903, file: !902, line: 56, baseType: !807, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !903, file: !902, line: 57, baseType: !824, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !855, file: !164, line: 3375, baseType: !908, size: 256)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !164, line: 1397, size: 256, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !908, file: !164, line: 1398, baseType: !891, size: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !908, file: !164, line: 1399, baseType: !912, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !914, line: 52, size: 256, elements: !915)
!914 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!915 = !{!916, !917, !918, !919, !920, !921, !922}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !913, file: !914, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !913, file: !914, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !913, file: !914, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !913, file: !914, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !913, file: !914, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !913, file: !914, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !913, file: !914, line: 62, baseType: !923, size: 192, offset: 64)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 192, elements: !924)
!924 = !{!925}
!925 = !DISubrange(count: 3)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !855, file: !164, line: 3376, baseType: !927, size: 256)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !164, line: 1408, size: 256, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !927, file: !164, line: 1409, baseType: !891, size: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !927, file: !164, line: 1410, baseType: !931, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !933, line: 27, size: 192, elements: !934)
!933 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !932, file: !933, line: 29, baseType: !901, size: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !932, file: !933, line: 30, baseType: !5, size: 32, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !855, file: !164, line: 3377, baseType: !938, size: 256)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !164, line: 1437, size: 256, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !938, file: !164, line: 1438, baseType: !891, size: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !938, file: !164, line: 1439, baseType: !853, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !855, file: !164, line: 3378, baseType: !943, size: 256)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !164, line: 1418, size: 256, elements: !944)
!944 = !{!945, !946, !947}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !943, file: !164, line: 1419, baseType: !891, size: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !943, file: !164, line: 1420, baseType: !652, size: 32, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !943, file: !164, line: 1421, baseType: !948, size: 8, offset: 224)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 8, elements: !772)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !855, file: !164, line: 3379, baseType: !950, size: 320)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !164, line: 1428, size: 320, elements: !951)
!951 = !{!952, !953, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !950, file: !164, line: 1429, baseType: !891, size: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !950, file: !164, line: 1430, baseType: !853, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !950, file: !164, line: 1431, baseType: !853, size: 64, offset: 256)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !855, file: !164, line: 3380, baseType: !956, size: 320)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !164, line: 1460, size: 320, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !956, file: !164, line: 1461, baseType: !891, size: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !956, file: !164, line: 1462, baseType: !960, size: 128, offset: 192)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !961, line: 31, size: 128, elements: !962)
!961 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!962 = !{!963, !966, !967}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !960, file: !961, line: 32, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !960, file: !961, line: 33, baseType: !7, size: 32, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !960, file: !961, line: 34, baseType: !7, size: 32, offset: 96)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !855, file: !164, line: 3381, baseType: !969, size: 384)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !164, line: 2507, size: 384, elements: !970)
!970 = !{!971, !972, !973, !974, !975}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !969, file: !164, line: 2508, baseType: !891, size: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !969, file: !164, line: 2509, baseType: !690, size: 32, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !969, file: !164, line: 2510, baseType: !7, size: 32, offset: 224)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !969, file: !164, line: 2511, baseType: !853, size: 64, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !969, file: !164, line: 2512, baseType: !853, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !855, file: !164, line: 3382, baseType: !977, size: 896)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !164, line: 2652, size: 896, elements: !978)
!978 = !{!979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !977, file: !164, line: 2653, baseType: !969, size: 384)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !977, file: !164, line: 2654, baseType: !853, size: 64, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !977, file: !164, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !977, file: !164, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !977, file: !164, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !977, file: !164, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !977, file: !164, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !977, file: !164, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !977, file: !164, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !977, file: !164, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !977, file: !164, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !977, file: !164, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !977, file: !164, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !977, file: !164, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !977, file: !164, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !977, file: !164, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !977, file: !164, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !977, file: !164, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !977, file: !164, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !977, file: !164, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !977, file: !164, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !977, file: !164, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !977, file: !164, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !977, file: !164, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !977, file: !164, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !977, file: !164, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !977, file: !164, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !977, file: !164, line: 2703, baseType: !7, size: 32, offset: 512)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !977, file: !164, line: 2705, baseType: !853, size: 64, offset: 576)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !977, file: !164, line: 2706, baseType: !853, size: 64, offset: 640)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !977, file: !164, line: 2707, baseType: !853, size: 64, offset: 704)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !977, file: !164, line: 2708, baseType: !853, size: 64, offset: 768)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !977, file: !164, line: 2711, baseType: !1012, size: 64, offset: 832)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !164, line: 2711, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !855, file: !164, line: 3383, baseType: !1015, size: 960)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !164, line: 2756, size: 960, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1015, file: !164, line: 2757, baseType: !977, size: 896)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1015, file: !164, line: 2758, baseType: !737, size: 64, offset: 896)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !855, file: !164, line: 3384, baseType: !1020, size: 1472)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !164, line: 3114, size: 1472, elements: !1021)
!1021 = !{!1022, !1043, !1044, !1045, !1046}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1020, file: !164, line: 3115, baseType: !1023, size: 1216)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !164, line: 2984, size: 1216, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1023, file: !164, line: 2985, baseType: !1015, size: 960)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1023, file: !164, line: 2986, baseType: !853, size: 64, offset: 960)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1023, file: !164, line: 2987, baseType: !853, size: 64, offset: 1024)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1023, file: !164, line: 2988, baseType: !853, size: 64, offset: 1088)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1023, file: !164, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1023, file: !164, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1023, file: !164, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1023, file: !164, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1023, file: !164, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1023, file: !164, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1023, file: !164, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1023, file: !164, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1023, file: !164, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1023, file: !164, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1023, file: !164, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1023, file: !164, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1023, file: !164, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1023, file: !164, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1020, file: !164, line: 3117, baseType: !853, size: 64, offset: 1216)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1020, file: !164, line: 3119, baseType: !853, size: 64, offset: 1280)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1020, file: !164, line: 3121, baseType: !853, size: 64, offset: 1344)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1020, file: !164, line: 3123, baseType: !853, size: 64, offset: 1408)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !855, file: !164, line: 3385, baseType: !1048, size: 1088)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !164, line: 2874, size: 1088, elements: !1049)
!1049 = !{!1050, !1051, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1048, file: !164, line: 2875, baseType: !1015, size: 960)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1048, file: !164, line: 2876, baseType: !737, size: 64, offset: 960)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1048, file: !164, line: 2877, baseType: !1053, size: 64, offset: 1024)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1055, line: 172, size: 128, elements: !1056)
!1055 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1054, file: !1055, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1054, file: !1055, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1054, file: !1055, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1054, file: !1055, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1054, file: !1055, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1054, file: !1055, line: 195, baseType: !7, size: 32, offset: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1054, file: !1055, line: 199, baseType: !853, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !855, file: !164, line: 3386, baseType: !1023, size: 1216)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !855, file: !164, line: 3387, baseType: !1066, size: 1280)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !164, line: 3093, size: 1280, elements: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1066, file: !164, line: 3094, baseType: !1023, size: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1066, file: !164, line: 3095, baseType: !1053, size: 64, offset: 1216)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !855, file: !164, line: 3388, baseType: !1071, size: 1216)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !164, line: 2824, size: 1216, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1071, file: !164, line: 2825, baseType: !977, size: 896)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1071, file: !164, line: 2827, baseType: !853, size: 64, offset: 896)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1071, file: !164, line: 2828, baseType: !853, size: 64, offset: 960)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1071, file: !164, line: 2829, baseType: !853, size: 64, offset: 1024)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1071, file: !164, line: 2830, baseType: !853, size: 64, offset: 1088)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1071, file: !164, line: 2831, baseType: !853, size: 64, offset: 1152)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !855, file: !164, line: 3389, baseType: !1080, size: 1024)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !164, line: 2850, size: 1024, elements: !1081)
!1081 = !{!1082, !1083, !1084}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1080, file: !164, line: 2851, baseType: !1015, size: 960)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1080, file: !164, line: 2852, baseType: !652, size: 32, offset: 960)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1080, file: !164, line: 2853, baseType: !652, size: 32, offset: 992)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !855, file: !164, line: 3390, baseType: !1086, size: 1024)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !164, line: 2857, size: 1024, elements: !1087)
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1086, file: !164, line: 2858, baseType: !1015, size: 960)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1086, file: !164, line: 2859, baseType: !1053, size: 64, offset: 960)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !855, file: !164, line: 3391, baseType: !1091, size: 960)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !164, line: 2862, size: 960, elements: !1092)
!1092 = !{!1093}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1091, file: !164, line: 2863, baseType: !1015, size: 960)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !855, file: !164, line: 3392, baseType: !1095, size: 1472)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !164, line: 3304, size: 1472, elements: !1096)
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1095, file: !164, line: 3305, baseType: !1020, size: 1472)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !855, file: !164, line: 3393, baseType: !1099, size: 1792)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !164, line: 3248, size: 1792, elements: !1100)
!1100 = !{!1101, !1102, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1099, file: !164, line: 3249, baseType: !1020, size: 1472)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1099, file: !164, line: 3251, baseType: !1103, size: 64, offset: 1472)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1105, line: 463, size: 1152, elements: !1106)
!1105 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1106 = !{!1107, !1110, !1141, !1142, !1271, !1334, !1335, !1336, !1337, !1338, !1339, !1363, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1104, file: !1105, line: 464, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1105, line: 464, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1104, file: !1105, line: 467, baseType: !1111, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !1113)
!1113 = !{!1114, !1116, !1117, !1130, !1131, !1132, !1133, !1134, !1135, !1137, !1139, !1140}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1112, file: !135, line: 377, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !672, line: 111, baseType: !696)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1112, file: !135, line: 378, baseType: !1115, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1112, file: !135, line: 381, baseType: !1118, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !1121)
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1120, file: !135, line: 282, baseType: !1123, size: 128)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !1125)
!1125 = !{!1126, !1127, !1128}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1124, file: !135, line: 281, baseType: !7, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1124, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1124, file: !135, line: 281, baseType: !1129, size: 64, offset: 64)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 64, elements: !772)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1112, file: !135, line: 384, baseType: !652, size: 32, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1112, file: !135, line: 387, baseType: !652, size: 32, offset: 224)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1112, file: !135, line: 390, baseType: !652, size: 32, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1112, file: !135, line: 394, baseType: !1118, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1112, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1112, file: !135, line: 399, baseType: !1136, size: 64, offset: 416)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !808)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1112, file: !135, line: 402, baseType: !1138, size: 64, offset: 480)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !808)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1112, file: !135, line: 406, baseType: !652, size: 32, offset: 544)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1112, file: !135, line: 409, baseType: !652, size: 32, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1104, file: !1105, line: 470, baseType: !723, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1104, file: !1105, line: 473, baseType: !1143, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1055, line: 39, size: 1152, elements: !1145)
!1145 = !{!1146, !1198, !1211, !1224, !1225, !1237, !1238, !1242, !1243, !1244, !1245, !1246}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1144, file: !1055, line: 41, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1148, line: 144, baseType: !1149)
!1148 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1148, line: 100, size: 896, elements: !1151)
!1151 = !{!1152, !1160, !1165, !1170, !1172, !1175, !1176, !1177, !1178, !1179, !1184, !1186, !1187, !1192, !1197}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1150, file: !1148, line: 102, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1148, line: 52, baseType: !1154)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1148, line: 47, baseType: !7)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1150, file: !1148, line: 105, baseType: !1161, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1148, line: 59, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!652, !1158, !1158}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1150, file: !1148, line: 108, baseType: !1166, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1148, line: 63, baseType: !1167)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !656}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1150, file: !1148, line: 111, baseType: !1171, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1150, file: !1148, line: 114, baseType: !1173, size: 64, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1174, line: 46, baseType: !807)
!1174 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1150, file: !1148, line: 117, baseType: !1173, size: 64, offset: 320)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1150, file: !1148, line: 120, baseType: !1173, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1150, file: !1148, line: 124, baseType: !7, size: 32, offset: 448)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1150, file: !1148, line: 128, baseType: !7, size: 32, offset: 480)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1150, file: !1148, line: 131, baseType: !1180, size: 64, offset: 512)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1148, line: 75, baseType: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!656, !1173, !1173}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1150, file: !1148, line: 132, baseType: !1185, size: 64, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1148, line: 78, baseType: !1167)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1150, file: !1148, line: 135, baseType: !656, size: 64, offset: 640)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1150, file: !1148, line: 136, baseType: !1188, size: 64, offset: 704)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1148, line: 82, baseType: !1189)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!656, !656, !1173, !1173}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1150, file: !1148, line: 137, baseType: !1193, size: 64, offset: 768)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1148, line: 83, baseType: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !656, !656}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1150, file: !1148, line: 141, baseType: !7, size: 32, offset: 832)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1144, file: !1055, line: 48, baseType: !1199, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !581, line: 35, baseType: !1201)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !581, line: 35, size: 128, elements: !1202)
!1202 = !{!1203}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1201, file: !581, line: 35, baseType: !1204, size: 128)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !581, line: 33, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !581, line: 33, size: 128, elements: !1206)
!1206 = !{!1207, !1208, !1209}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1205, file: !581, line: 33, baseType: !7, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1205, file: !581, line: 33, baseType: !7, size: 32, offset: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1205, file: !581, line: 33, baseType: !1210, size: 64, offset: 64)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 64, elements: !772)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1144, file: !1055, line: 51, baseType: !1212, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !164, line: 183, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !164, line: 183, size: 128, elements: !1215)
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1214, file: !164, line: 183, baseType: !1217, size: 128)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !164, line: 182, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !164, line: 182, size: 128, elements: !1219)
!1219 = !{!1220, !1221, !1222}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1218, file: !164, line: 182, baseType: !7, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1218, file: !164, line: 182, baseType: !7, size: 32, offset: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1218, file: !164, line: 182, baseType: !1223, size: 64, offset: 64)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !853, size: 64, elements: !772)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1144, file: !1055, line: 54, baseType: !853, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1144, file: !1055, line: 57, baseType: !1226, size: 128, offset: 256)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1227, line: 31, size: 128, elements: !1228)
!1227 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1226, file: !1227, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1226, file: !1227, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1226, file: !1227, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1226, file: !1227, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1226, file: !1227, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1226, file: !1227, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1226, file: !1227, line: 56, baseType: !1236, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !672, line: 47, baseType: !791)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1144, file: !1055, line: 60, baseType: !1226, size: 128, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1144, file: !1055, line: 64, baseType: !1239, size: 64, offset: 512)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1241, line: 33, flags: DIFlagFwdDecl)
!1241 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1144, file: !1055, line: 67, baseType: !853, size: 64, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1144, file: !1055, line: 73, baseType: !1147, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1144, file: !1055, line: 77, baseType: !1236, size: 64, offset: 704)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1144, file: !1055, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1144, file: !1055, line: 82, baseType: !1247, size: 320, offset: 832)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !574, line: 62, size: 320, elements: !1248)
!1248 = !{!1249, !1255, !1256, !1257, !1258, !1265}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1247, file: !574, line: 63, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !574, line: 56, size: 128, elements: !1252)
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1251, file: !574, line: 57, baseType: !1250, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1251, file: !574, line: 58, baseType: !948, size: 8, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1247, file: !574, line: 64, baseType: !7, size: 32, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1247, file: !574, line: 66, baseType: !7, size: 32, offset: 96)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1247, file: !574, line: 68, baseType: !651, size: 8, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1247, file: !574, line: 70, baseType: !1259, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !574, line: 37, size: 128, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1260, file: !574, line: 39, baseType: !1259, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1260, file: !574, line: 40, baseType: !1264, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1247, file: !574, line: 71, baseType: !1266, size: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !574, line: 45, size: 320, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1267, file: !574, line: 47, baseType: !1266, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1267, file: !574, line: 48, baseType: !662, size: 256, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1104, file: !1105, line: 476, baseType: !1272, size: 64, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !146, line: 187, size: 256, elements: !1274)
!1274 = !{!1275, !1276, !1332, !1333}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1273, file: !146, line: 189, baseType: !652, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1273, file: !146, line: 192, baseType: !1277, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !146, line: 87, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !146, line: 87, size: 128, elements: !1280)
!1280 = !{!1281}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1279, file: !146, line: 87, baseType: !1282, size: 128)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !146, line: 85, baseType: !1283)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !146, line: 85, size: 128, elements: !1284)
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1283, file: !146, line: 85, baseType: !7, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1283, file: !146, line: 85, baseType: !7, size: 32, offset: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1283, file: !146, line: 85, baseType: !1288, size: 64, offset: 64)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1289, size: 64, elements: !772)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !146, line: 84, baseType: !1290)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !146, line: 100, size: 1216, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1322, !1330, !1331}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1291, file: !146, line: 102, baseType: !652, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1291, file: !146, line: 105, baseType: !7, size: 32, offset: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1291, file: !146, line: 108, baseType: !696, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1291, file: !146, line: 111, baseType: !696, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1291, file: !146, line: 114, baseType: !1298, size: 64, offset: 192)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !146, line: 41, size: 64, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1298, file: !146, line: 42, baseType: !145, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1298, file: !146, line: 43, baseType: !7, size: 32, offset: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1291, file: !146, line: 117, baseType: !7, size: 32, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1291, file: !146, line: 120, baseType: !7, size: 32, offset: 288)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1291, file: !146, line: 123, baseType: !1277, size: 64, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1291, file: !146, line: 126, baseType: !1290, size: 64, offset: 384)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1291, file: !146, line: 129, baseType: !1290, size: 64, offset: 448)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1291, file: !146, line: 132, baseType: !656, size: 64, offset: 512)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1291, file: !146, line: 139, baseType: !853, size: 64, offset: 576)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1291, file: !146, line: 143, baseType: !901, size: 128, offset: 640)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1291, file: !146, line: 146, baseType: !901, size: 128, offset: 768)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1291, file: !146, line: 148, baseType: !651, size: 8, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1291, file: !146, line: 149, baseType: !651, size: 8, offset: 904)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1291, file: !146, line: 153, baseType: !154, size: 32, offset: 928)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1291, file: !146, line: 156, baseType: !1315, size: 64, offset: 960)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !146, line: 48, size: 320, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1316, file: !146, line: 50, baseType: !671, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1316, file: !146, line: 59, baseType: !901, size: 128, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1316, file: !146, line: 64, baseType: !651, size: 8, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1316, file: !146, line: 67, baseType: !1315, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1291, file: !146, line: 159, baseType: !1323, size: 64, offset: 1024)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !146, line: 72, size: 256, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1324, file: !146, line: 74, baseType: !713, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1324, file: !146, line: 77, baseType: !1323, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1324, file: !146, line: 78, baseType: !1323, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1324, file: !146, line: 81, baseType: !1323, size: 64, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1291, file: !146, line: 162, baseType: !651, size: 8, offset: 1088)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1291, file: !146, line: 166, baseType: !853, size: 64, offset: 1152)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1273, file: !146, line: 197, baseType: !1147, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1273, file: !146, line: 200, baseType: !1290, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1104, file: !1105, line: 479, baseType: !1147, size: 64, offset: 320)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1104, file: !1105, line: 484, baseType: !853, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1104, file: !1105, line: 488, baseType: !853, size: 64, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1104, file: !1105, line: 493, baseType: !853, size: 64, offset: 512)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1104, file: !1105, line: 496, baseType: !853, size: 64, offset: 576)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1104, file: !1105, line: 501, baseType: !1340, size: 64, offset: 640)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !159, line: 2355, size: 576, elements: !1342)
!1342 = !{!1343, !1346, !1347, !1348, !1349, !1351, !1352, !1357, !1358, !1359, !1360, !1361, !1362}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1341, file: !159, line: 2356, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !159, line: 2356, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1341, file: !159, line: 2357, baseType: !657, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1341, file: !159, line: 2358, baseType: !652, size: 32, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1341, file: !159, line: 2359, baseType: !652, size: 32, offset: 160)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1341, file: !159, line: 2360, baseType: !1350, size: 128, offset: 192)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 128, elements: !833)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1341, file: !159, line: 2364, baseType: !652, size: 32, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1341, file: !159, line: 2367, baseType: !1353, size: 128, offset: 384)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !159, line: 2349, size: 128, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1353, file: !159, line: 2351, baseType: !737, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1353, file: !159, line: 2352, baseType: !824, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1341, file: !159, line: 2371, baseType: !158, size: 32, offset: 512)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1341, file: !159, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1341, file: !159, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1341, file: !159, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1341, file: !159, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1341, file: !159, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1104, file: !1105, line: 504, baseType: !1364, size: 64, offset: 704)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1105, line: 504, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1104, file: !1105, line: 507, baseType: !1147, size: 64, offset: 768)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1104, file: !1105, line: 510, baseType: !652, size: 32, offset: 832)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1104, file: !1105, line: 513, baseType: !652, size: 32, offset: 864)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1104, file: !1105, line: 516, baseType: !690, size: 32, offset: 896)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1104, file: !1105, line: 519, baseType: !690, size: 32, offset: 928)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1104, file: !1105, line: 522, baseType: !7, size: 32, offset: 960)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1104, file: !1105, line: 523, baseType: !7, size: 32, offset: 992)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1104, file: !1105, line: 528, baseType: !657, size: 64, offset: 1024)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1104, file: !1105, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1104, file: !1105, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1104, file: !1105, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1104, file: !1105, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1104, file: !1105, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1104, file: !1105, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1104, file: !1105, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1104, file: !1105, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1104, file: !1105, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1104, file: !1105, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1104, file: !1105, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1104, file: !1105, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1104, file: !1105, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1104, file: !1105, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1104, file: !1105, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1104, file: !1105, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1099, file: !164, line: 3254, baseType: !853, size: 64, offset: 1536)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1099, file: !164, line: 3257, baseType: !853, size: 64, offset: 1600)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1099, file: !164, line: 3258, baseType: !853, size: 64, offset: 1664)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1099, file: !164, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1099, file: !164, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1099, file: !164, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1099, file: !164, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1099, file: !164, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1099, file: !164, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1099, file: !164, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1099, file: !164, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1099, file: !164, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1099, file: !164, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1099, file: !164, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1099, file: !164, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1099, file: !164, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1099, file: !164, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1099, file: !164, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1099, file: !164, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1099, file: !164, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1099, file: !164, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !855, file: !164, line: 3394, baseType: !1412, size: 1344)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !164, line: 2279, size: 1344, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1439, !1440, !1441, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1412, file: !164, line: 2280, baseType: !891, size: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1412, file: !164, line: 2281, baseType: !853, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1412, file: !164, line: 2282, baseType: !853, size: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1412, file: !164, line: 2283, baseType: !853, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1412, file: !164, line: 2284, baseType: !853, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1412, file: !164, line: 2285, baseType: !7, size: 32, offset: 448)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1412, file: !164, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1412, file: !164, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1412, file: !164, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1412, file: !164, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1412, file: !164, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1412, file: !164, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1412, file: !164, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1412, file: !164, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1412, file: !164, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1412, file: !164, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1412, file: !164, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1412, file: !164, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1412, file: !164, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1412, file: !164, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1412, file: !164, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1412, file: !164, line: 2305, baseType: !7, size: 32, offset: 512)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1412, file: !164, line: 2306, baseType: !1437, size: 32, offset: 544)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1438, line: 31, baseType: !652)
!1438 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1412, file: !164, line: 2307, baseType: !853, size: 64, offset: 576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1412, file: !164, line: 2308, baseType: !853, size: 64, offset: 640)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1412, file: !164, line: 2314, baseType: !1442, size: 64, offset: 704)
!1442 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !164, line: 2309, size: 64, elements: !1443)
!1443 = !{!1444, !1445, !1446}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1442, file: !164, line: 2310, baseType: !652, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1442, file: !164, line: 2311, baseType: !657, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1442, file: !164, line: 2312, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !164, line: 2277, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1412, file: !164, line: 2315, baseType: !853, size: 64, offset: 768)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1412, file: !164, line: 2316, baseType: !853, size: 64, offset: 832)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1412, file: !164, line: 2317, baseType: !853, size: 64, offset: 896)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1412, file: !164, line: 2318, baseType: !853, size: 64, offset: 960)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1412, file: !164, line: 2319, baseType: !853, size: 64, offset: 1024)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1412, file: !164, line: 2320, baseType: !853, size: 64, offset: 1088)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1412, file: !164, line: 2321, baseType: !853, size: 64, offset: 1152)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1412, file: !164, line: 2322, baseType: !853, size: 64, offset: 1216)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1412, file: !164, line: 2324, baseType: !1458, size: 64, offset: 1280)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !164, line: 2324, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !855, file: !164, line: 3395, baseType: !1461, size: 320)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !164, line: 1469, size: 320, elements: !1462)
!1462 = !{!1463, !1464, !1465}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1461, file: !164, line: 1470, baseType: !891, size: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1461, file: !164, line: 1471, baseType: !853, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1461, file: !164, line: 1472, baseType: !853, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !855, file: !164, line: 3396, baseType: !1467, size: 320)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !164, line: 1482, size: 320, elements: !1468)
!1468 = !{!1469, !1470, !1471}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1467, file: !164, line: 1483, baseType: !891, size: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1467, file: !164, line: 1484, baseType: !652, size: 32, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1467, file: !164, line: 1485, baseType: !1223, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !855, file: !164, line: 3397, baseType: !1473, size: 384)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !164, line: 1829, size: 384, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1473, file: !164, line: 1830, baseType: !891, size: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1473, file: !164, line: 1831, baseType: !690, size: 32, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1473, file: !164, line: 1832, baseType: !853, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1473, file: !164, line: 1835, baseType: !1223, size: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !855, file: !164, line: 3398, baseType: !1480, size: 704)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !164, line: 1898, size: 704, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1491}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1480, file: !164, line: 1899, baseType: !891, size: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1480, file: !164, line: 1902, baseType: !853, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1480, file: !164, line: 1905, baseType: !671, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1480, file: !164, line: 1908, baseType: !7, size: 32, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1480, file: !164, line: 1911, baseType: !1487, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1055, line: 117, size: 128, elements: !1489)
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1488, file: !1055, line: 120, baseType: !1226, size: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1480, file: !164, line: 1914, baseType: !662, size: 256, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !855, file: !164, line: 3399, baseType: !1493, size: 704)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !164, line: 2008, size: 704, elements: !1494)
!1494 = !{!1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1493, file: !164, line: 2009, baseType: !891, size: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1493, file: !164, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1493, file: !164, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1493, file: !164, line: 2014, baseType: !690, size: 32, offset: 224)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1493, file: !164, line: 2016, baseType: !853, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1493, file: !164, line: 2017, baseType: !1212, size: 64, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1493, file: !164, line: 2019, baseType: !853, size: 64, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1493, file: !164, line: 2020, baseType: !853, size: 64, offset: 448)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1493, file: !164, line: 2021, baseType: !853, size: 64, offset: 512)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1493, file: !164, line: 2022, baseType: !853, size: 64, offset: 576)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1493, file: !164, line: 2023, baseType: !853, size: 64, offset: 640)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !855, file: !164, line: 3400, baseType: !1507, size: 832)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !164, line: 2430, size: 832, elements: !1508)
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1507, file: !164, line: 2431, baseType: !891, size: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1507, file: !164, line: 2433, baseType: !853, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1507, file: !164, line: 2434, baseType: !853, size: 64, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1507, file: !164, line: 2435, baseType: !853, size: 64, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1507, file: !164, line: 2436, baseType: !853, size: 64, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1507, file: !164, line: 2437, baseType: !1212, size: 64, offset: 448)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1507, file: !164, line: 2438, baseType: !853, size: 64, offset: 512)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1507, file: !164, line: 2440, baseType: !853, size: 64, offset: 576)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1507, file: !164, line: 2441, baseType: !853, size: 64, offset: 640)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1507, file: !164, line: 2443, baseType: !1519, size: 128, offset: 704)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !164, line: 182, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !164, line: 182, size: 128, elements: !1521)
!1521 = !{!1522}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1520, file: !164, line: 182, baseType: !1217, size: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !855, file: !164, line: 3401, baseType: !1524, size: 320)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !164, line: 3327, size: 320, elements: !1525)
!1525 = !{!1526, !1527, !1534}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1524, file: !164, line: 3329, baseType: !891, size: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1524, file: !164, line: 3330, baseType: !1528, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !164, line: 3320, size: 192, elements: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1529, file: !164, line: 3322, baseType: !1528, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1529, file: !164, line: 3323, baseType: !1528, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1529, file: !164, line: 3324, baseType: !853, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1524, file: !164, line: 3331, baseType: !1528, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !855, file: !164, line: 3402, baseType: !1536, size: 256)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !164, line: 1540, size: 256, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1536, file: !164, line: 1541, baseType: !891, size: 192)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1536, file: !164, line: 1542, baseType: !1540, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !164, line: 1538, baseType: !1542)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !164, line: 1538, size: 192, elements: !1543)
!1543 = !{!1544}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1542, file: !164, line: 1538, baseType: !1545, size: 192)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !164, line: 1537, baseType: !1546)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !164, line: 1537, size: 192, elements: !1547)
!1547 = !{!1548, !1549, !1550}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1546, file: !164, line: 1537, baseType: !7, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1546, file: !164, line: 1537, baseType: !7, size: 32, offset: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1546, file: !164, line: 1537, baseType: !1551, size: 128, offset: 64)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1552, size: 128, elements: !772)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !164, line: 1535, baseType: !1553)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !164, line: 1532, size: 128, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1553, file: !164, line: 1533, baseType: !853, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1553, file: !164, line: 1534, baseType: !853, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !855, file: !164, line: 3403, baseType: !1558, size: 512)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !164, line: 1938, size: 512, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1569, !1570, !1571}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1558, file: !164, line: 1939, baseType: !891, size: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1558, file: !164, line: 1940, baseType: !690, size: 32, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1558, file: !164, line: 1941, baseType: !163, size: 32, offset: 224)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1558, file: !164, line: 1946, baseType: !1564, size: 32, offset: 256)
!1564 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !164, line: 1942, size: 32, elements: !1565)
!1565 = !{!1566, !1567, !1568}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1564, file: !164, line: 1943, baseType: !182, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1564, file: !164, line: 1944, baseType: !189, size: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1564, file: !164, line: 1945, baseType: !196, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1558, file: !164, line: 1950, baseType: !722, size: 64, offset: 320)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1558, file: !164, line: 1951, baseType: !722, size: 64, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1558, file: !164, line: 1953, baseType: !1223, size: 64, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !855, file: !164, line: 3404, baseType: !1573, size: 1664)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !164, line: 3337, size: 1664, elements: !1574)
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1573, file: !164, line: 3338, baseType: !891, size: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1573, file: !164, line: 3341, baseType: !1577, size: 1472, offset: 192)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1578, line: 410, size: 1472, elements: !1579)
!1578 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1577, file: !1578, line: 412, baseType: !652, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1577, file: !1578, line: 413, baseType: !652, size: 32, offset: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1577, file: !1578, line: 414, baseType: !652, size: 32, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1577, file: !1578, line: 415, baseType: !652, size: 32, offset: 96)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1577, file: !1578, line: 416, baseType: !652, size: 32, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1577, file: !1578, line: 417, baseType: !652, size: 32, offset: 160)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1577, file: !1578, line: 418, baseType: !651, size: 8, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1577, file: !1578, line: 419, baseType: !651, size: 8, offset: 200)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1577, file: !1578, line: 420, baseType: !1589, size: 8, offset: 208)
!1589 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1577, file: !1578, line: 421, baseType: !1589, size: 8, offset: 216)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1577, file: !1578, line: 422, baseType: !1589, size: 8, offset: 224)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1577, file: !1578, line: 423, baseType: !1589, size: 8, offset: 232)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1577, file: !1578, line: 424, baseType: !1589, size: 8, offset: 240)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1577, file: !1578, line: 425, baseType: !1589, size: 8, offset: 248)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1577, file: !1578, line: 426, baseType: !1589, size: 8, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1577, file: !1578, line: 427, baseType: !1589, size: 8, offset: 264)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1577, file: !1578, line: 428, baseType: !1589, size: 8, offset: 272)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1577, file: !1578, line: 429, baseType: !1589, size: 8, offset: 280)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1577, file: !1578, line: 430, baseType: !1589, size: 8, offset: 288)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1577, file: !1578, line: 431, baseType: !1589, size: 8, offset: 296)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1577, file: !1578, line: 432, baseType: !1589, size: 8, offset: 304)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1577, file: !1578, line: 433, baseType: !1589, size: 8, offset: 312)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1577, file: !1578, line: 434, baseType: !1589, size: 8, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1577, file: !1578, line: 435, baseType: !1589, size: 8, offset: 328)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1577, file: !1578, line: 436, baseType: !1589, size: 8, offset: 336)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1577, file: !1578, line: 437, baseType: !1589, size: 8, offset: 344)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1577, file: !1578, line: 438, baseType: !1589, size: 8, offset: 352)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1577, file: !1578, line: 439, baseType: !1589, size: 8, offset: 360)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1577, file: !1578, line: 440, baseType: !1589, size: 8, offset: 368)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1577, file: !1578, line: 441, baseType: !1589, size: 8, offset: 376)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1577, file: !1578, line: 442, baseType: !1589, size: 8, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1577, file: !1578, line: 443, baseType: !1589, size: 8, offset: 392)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1577, file: !1578, line: 444, baseType: !1589, size: 8, offset: 400)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1577, file: !1578, line: 445, baseType: !1589, size: 8, offset: 408)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1577, file: !1578, line: 446, baseType: !1589, size: 8, offset: 416)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1577, file: !1578, line: 447, baseType: !1589, size: 8, offset: 424)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1577, file: !1578, line: 448, baseType: !1589, size: 8, offset: 432)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1577, file: !1578, line: 449, baseType: !1589, size: 8, offset: 440)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1577, file: !1578, line: 450, baseType: !1589, size: 8, offset: 448)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1577, file: !1578, line: 451, baseType: !1589, size: 8, offset: 456)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1577, file: !1578, line: 452, baseType: !1589, size: 8, offset: 464)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1577, file: !1578, line: 453, baseType: !1589, size: 8, offset: 472)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1577, file: !1578, line: 454, baseType: !1589, size: 8, offset: 480)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1577, file: !1578, line: 455, baseType: !1589, size: 8, offset: 488)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1577, file: !1578, line: 456, baseType: !1589, size: 8, offset: 496)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1577, file: !1578, line: 457, baseType: !1589, size: 8, offset: 504)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1577, file: !1578, line: 458, baseType: !1589, size: 8, offset: 512)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1577, file: !1578, line: 459, baseType: !1589, size: 8, offset: 520)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1577, file: !1578, line: 460, baseType: !1589, size: 8, offset: 528)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1577, file: !1578, line: 461, baseType: !1589, size: 8, offset: 536)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1577, file: !1578, line: 462, baseType: !1589, size: 8, offset: 544)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1577, file: !1578, line: 463, baseType: !1589, size: 8, offset: 552)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1577, file: !1578, line: 464, baseType: !1589, size: 8, offset: 560)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1577, file: !1578, line: 465, baseType: !1589, size: 8, offset: 568)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1577, file: !1578, line: 466, baseType: !1589, size: 8, offset: 576)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1577, file: !1578, line: 467, baseType: !1589, size: 8, offset: 584)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1577, file: !1578, line: 468, baseType: !1589, size: 8, offset: 592)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1577, file: !1578, line: 469, baseType: !1589, size: 8, offset: 600)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1577, file: !1578, line: 470, baseType: !1589, size: 8, offset: 608)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1577, file: !1578, line: 471, baseType: !1589, size: 8, offset: 616)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1577, file: !1578, line: 472, baseType: !1589, size: 8, offset: 624)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1577, file: !1578, line: 473, baseType: !1589, size: 8, offset: 632)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1577, file: !1578, line: 474, baseType: !1589, size: 8, offset: 640)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1577, file: !1578, line: 475, baseType: !1589, size: 8, offset: 648)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1577, file: !1578, line: 476, baseType: !1589, size: 8, offset: 656)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1577, file: !1578, line: 477, baseType: !1589, size: 8, offset: 664)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1577, file: !1578, line: 478, baseType: !1589, size: 8, offset: 672)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1577, file: !1578, line: 479, baseType: !1589, size: 8, offset: 680)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1577, file: !1578, line: 480, baseType: !1589, size: 8, offset: 688)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1577, file: !1578, line: 481, baseType: !1589, size: 8, offset: 696)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1577, file: !1578, line: 482, baseType: !1589, size: 8, offset: 704)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1577, file: !1578, line: 483, baseType: !1589, size: 8, offset: 712)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1577, file: !1578, line: 484, baseType: !1589, size: 8, offset: 720)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1577, file: !1578, line: 485, baseType: !1589, size: 8, offset: 728)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1577, file: !1578, line: 486, baseType: !1589, size: 8, offset: 736)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1577, file: !1578, line: 487, baseType: !1589, size: 8, offset: 744)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1577, file: !1578, line: 488, baseType: !1589, size: 8, offset: 752)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1577, file: !1578, line: 489, baseType: !1589, size: 8, offset: 760)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1577, file: !1578, line: 490, baseType: !1589, size: 8, offset: 768)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1577, file: !1578, line: 491, baseType: !1589, size: 8, offset: 776)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1577, file: !1578, line: 492, baseType: !1589, size: 8, offset: 784)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1577, file: !1578, line: 493, baseType: !1589, size: 8, offset: 792)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1577, file: !1578, line: 494, baseType: !1589, size: 8, offset: 800)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1577, file: !1578, line: 495, baseType: !1589, size: 8, offset: 808)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1577, file: !1578, line: 496, baseType: !1589, size: 8, offset: 816)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1577, file: !1578, line: 497, baseType: !1589, size: 8, offset: 824)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1577, file: !1578, line: 498, baseType: !1589, size: 8, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1577, file: !1578, line: 499, baseType: !1589, size: 8, offset: 840)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1577, file: !1578, line: 500, baseType: !1589, size: 8, offset: 848)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1577, file: !1578, line: 501, baseType: !1589, size: 8, offset: 856)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1577, file: !1578, line: 502, baseType: !1589, size: 8, offset: 864)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1577, file: !1578, line: 503, baseType: !1589, size: 8, offset: 872)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1577, file: !1578, line: 504, baseType: !1589, size: 8, offset: 880)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1577, file: !1578, line: 505, baseType: !1589, size: 8, offset: 888)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1577, file: !1578, line: 506, baseType: !1589, size: 8, offset: 896)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1577, file: !1578, line: 507, baseType: !1589, size: 8, offset: 904)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1577, file: !1578, line: 508, baseType: !1589, size: 8, offset: 912)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1577, file: !1578, line: 509, baseType: !1589, size: 8, offset: 920)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1577, file: !1578, line: 510, baseType: !1589, size: 8, offset: 928)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1577, file: !1578, line: 511, baseType: !1589, size: 8, offset: 936)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1577, file: !1578, line: 512, baseType: !1589, size: 8, offset: 944)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1577, file: !1578, line: 513, baseType: !1589, size: 8, offset: 952)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1577, file: !1578, line: 514, baseType: !1589, size: 8, offset: 960)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1577, file: !1578, line: 515, baseType: !1589, size: 8, offset: 968)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1577, file: !1578, line: 516, baseType: !1589, size: 8, offset: 976)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1577, file: !1578, line: 517, baseType: !1589, size: 8, offset: 984)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1577, file: !1578, line: 518, baseType: !1589, size: 8, offset: 992)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1577, file: !1578, line: 519, baseType: !1589, size: 8, offset: 1000)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1577, file: !1578, line: 520, baseType: !1589, size: 8, offset: 1008)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1577, file: !1578, line: 521, baseType: !1589, size: 8, offset: 1016)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1577, file: !1578, line: 522, baseType: !1589, size: 8, offset: 1024)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1577, file: !1578, line: 523, baseType: !1589, size: 8, offset: 1032)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1577, file: !1578, line: 524, baseType: !1589, size: 8, offset: 1040)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1577, file: !1578, line: 525, baseType: !1589, size: 8, offset: 1048)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1577, file: !1578, line: 526, baseType: !1589, size: 8, offset: 1056)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1577, file: !1578, line: 527, baseType: !1589, size: 8, offset: 1064)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1577, file: !1578, line: 528, baseType: !1589, size: 8, offset: 1072)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1577, file: !1578, line: 529, baseType: !1589, size: 8, offset: 1080)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1577, file: !1578, line: 530, baseType: !1589, size: 8, offset: 1088)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1577, file: !1578, line: 531, baseType: !1589, size: 8, offset: 1096)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1577, file: !1578, line: 532, baseType: !1589, size: 8, offset: 1104)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1577, file: !1578, line: 533, baseType: !1589, size: 8, offset: 1112)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1577, file: !1578, line: 534, baseType: !1589, size: 8, offset: 1120)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1577, file: !1578, line: 535, baseType: !1589, size: 8, offset: 1128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1577, file: !1578, line: 536, baseType: !1589, size: 8, offset: 1136)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1577, file: !1578, line: 537, baseType: !1589, size: 8, offset: 1144)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1577, file: !1578, line: 538, baseType: !1589, size: 8, offset: 1152)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1577, file: !1578, line: 539, baseType: !1589, size: 8, offset: 1160)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1577, file: !1578, line: 540, baseType: !1589, size: 8, offset: 1168)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1577, file: !1578, line: 541, baseType: !1589, size: 8, offset: 1176)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1577, file: !1578, line: 542, baseType: !1589, size: 8, offset: 1184)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1577, file: !1578, line: 543, baseType: !1589, size: 8, offset: 1192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1577, file: !1578, line: 544, baseType: !1589, size: 8, offset: 1200)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1577, file: !1578, line: 545, baseType: !1589, size: 8, offset: 1208)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1577, file: !1578, line: 546, baseType: !1589, size: 8, offset: 1216)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1577, file: !1578, line: 547, baseType: !1589, size: 8, offset: 1224)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1577, file: !1578, line: 548, baseType: !1589, size: 8, offset: 1232)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1577, file: !1578, line: 549, baseType: !1589, size: 8, offset: 1240)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1577, file: !1578, line: 550, baseType: !1589, size: 8, offset: 1248)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1577, file: !1578, line: 551, baseType: !1589, size: 8, offset: 1256)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1577, file: !1578, line: 552, baseType: !1589, size: 8, offset: 1264)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1577, file: !1578, line: 553, baseType: !1589, size: 8, offset: 1272)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1577, file: !1578, line: 554, baseType: !1589, size: 8, offset: 1280)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1577, file: !1578, line: 555, baseType: !1589, size: 8, offset: 1288)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1577, file: !1578, line: 556, baseType: !1589, size: 8, offset: 1296)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1577, file: !1578, line: 557, baseType: !1589, size: 8, offset: 1304)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1577, file: !1578, line: 558, baseType: !1589, size: 8, offset: 1312)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1577, file: !1578, line: 559, baseType: !1589, size: 8, offset: 1320)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1577, file: !1578, line: 560, baseType: !1589, size: 8, offset: 1328)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1577, file: !1578, line: 561, baseType: !1589, size: 8, offset: 1336)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1577, file: !1578, line: 562, baseType: !1589, size: 8, offset: 1344)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1577, file: !1578, line: 563, baseType: !1589, size: 8, offset: 1352)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1577, file: !1578, line: 564, baseType: !1589, size: 8, offset: 1360)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1577, file: !1578, line: 565, baseType: !1589, size: 8, offset: 1368)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1577, file: !1578, line: 566, baseType: !1589, size: 8, offset: 1376)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1577, file: !1578, line: 567, baseType: !1589, size: 8, offset: 1384)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1577, file: !1578, line: 568, baseType: !1589, size: 8, offset: 1392)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1577, file: !1578, line: 569, baseType: !1589, size: 8, offset: 1400)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1577, file: !1578, line: 570, baseType: !1589, size: 8, offset: 1408)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1577, file: !1578, line: 571, baseType: !1589, size: 8, offset: 1416)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1577, file: !1578, line: 572, baseType: !1589, size: 8, offset: 1424)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1577, file: !1578, line: 573, baseType: !1589, size: 8, offset: 1432)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1577, file: !1578, line: 574, baseType: !1589, size: 8, offset: 1440)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !855, file: !164, line: 3405, baseType: !1745, size: 384)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !164, line: 3352, size: 384, elements: !1746)
!1746 = !{!1747, !1748}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1745, file: !164, line: 3353, baseType: !891, size: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1745, file: !164, line: 3356, baseType: !1749, size: 192, offset: 192)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1578, line: 578, size: 192, elements: !1750)
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1749, file: !1578, line: 580, baseType: !652, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1749, file: !1578, line: 581, baseType: !652, size: 32, offset: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1749, file: !1578, line: 582, baseType: !652, size: 32, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1749, file: !1578, line: 583, baseType: !652, size: 32, offset: 96)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1749, file: !1578, line: 584, baseType: !651, size: 8, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1749, file: !1578, line: 585, baseType: !651, size: 8, offset: 136)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1749, file: !1578, line: 586, baseType: !651, size: 8, offset: 144)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1749, file: !1578, line: 587, baseType: !651, size: 8, offset: 152)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1749, file: !1578, line: 588, baseType: !651, size: 8, offset: 160)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1749, file: !1578, line: 589, baseType: !651, size: 8, offset: 168)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1749, file: !1578, line: 590, baseType: !651, size: 8, offset: 176)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !758, file: !740, line: 178, baseType: !696, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !758, file: !740, line: 179, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !740, line: 150, baseType: !1766)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !740, line: 142, size: 320, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1766, file: !740, line: 144, baseType: !853, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1766, file: !740, line: 145, baseType: !737, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1766, file: !740, line: 146, baseType: !737, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1766, file: !740, line: 147, baseType: !1437, size: 32, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1766, file: !740, line: 148, baseType: !7, size: 32, offset: 224)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1766, file: !740, line: 149, baseType: !651, size: 8, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !758, file: !740, line: 180, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !740, line: 162, baseType: !1777)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !740, line: 159, size: 128, elements: !1778)
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1777, file: !740, line: 160, baseType: !853, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1777, file: !740, line: 161, baseType: !824, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !758, file: !740, line: 181, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !740, line: 181, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !753, file: !740, line: 317, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 64, elements: !772)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !753, file: !740, line: 318, baseType: !1787, size: 320)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !740, line: 188, size: 320, elements: !1788)
!1788 = !{!1789, !1791, !1814}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1787, file: !740, line: 190, baseType: !1790, size: 192)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, size: 192, elements: !924)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1787, file: !740, line: 193, baseType: !1792, size: 64, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !740, line: 206, size: 320, elements: !1794)
!1794 = !{!1795, !1799, !1800, !1801, !1813}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1793, file: !740, line: 208, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !672, line: 62, baseType: !1798)
!1798 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !672, line: 61, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1793, file: !740, line: 211, baseType: !7, size: 32, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1793, file: !740, line: 214, baseType: !824, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1793, file: !740, line: 224, baseType: !1802, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !740, line: 202, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !740, line: 202, size: 128, elements: !1805)
!1805 = !{!1806}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1804, file: !740, line: 202, baseType: !1807, size: 128)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !740, line: 200, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !740, line: 200, size: 128, elements: !1809)
!1809 = !{!1810, !1811, !1812}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1808, file: !740, line: 200, baseType: !7, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1808, file: !740, line: 200, baseType: !7, size: 32, offset: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1808, file: !740, line: 200, baseType: !771, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1793, file: !740, line: 234, baseType: !1802, size: 64, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1787, file: !740, line: 197, baseType: !824, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !753, file: !740, line: 319, baseType: !913, size: 256)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !753, file: !740, line: 320, baseType: !932, size: 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !714, file: !135, line: 134, baseType: !656, size: 64, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !714, file: !135, line: 137, baseType: !853, size: 64, offset: 256)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !714, file: !135, line: 138, baseType: !690, size: 32, offset: 320)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !714, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !714, file: !135, line: 144, baseType: !652, size: 32, offset: 384)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !714, file: !135, line: 145, baseType: !652, size: 32, offset: 416)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !714, file: !135, line: 146, baseType: !1824, size: 64, offset: 448)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !824)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !697, file: !135, line: 220, baseType: !700, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !697, file: !135, line: 223, baseType: !656, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !697, file: !135, line: 226, baseType: !1290, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !697, file: !135, line: 229, baseType: !1829, size: 128, offset: 256)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1830, size: 128, elements: !808)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !697, file: !135, line: 232, baseType: !696, size: 64, offset: 384)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !697, file: !135, line: 233, baseType: !696, size: 64, offset: 448)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !697, file: !135, line: 238, baseType: !1835, size: 64, offset: 512)
!1835 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !1836)
!1836 = !{!1837, !1843}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1835, file: !135, line: 236, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !1840)
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1839, file: !135, line: 275, baseType: !722, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1839, file: !135, line: 278, baseType: !722, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1835, file: !135, line: 237, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1850, !1851}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1845, file: !135, line: 261, baseType: !737, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1845, file: !135, line: 262, baseType: !737, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1845, file: !135, line: 266, baseType: !737, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1845, file: !135, line: 267, baseType: !737, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1845, file: !135, line: 270, baseType: !652, size: 32, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !697, file: !135, line: 241, baseType: !1824, size: 64, offset: 576)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !697, file: !135, line: 244, baseType: !652, size: 32, offset: 640)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !697, file: !135, line: 247, baseType: !652, size: 32, offset: 672)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !697, file: !135, line: 250, baseType: !652, size: 32, offset: 704)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !697, file: !135, line: 253, baseType: !652, size: 32, offset: 736)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !135, line: 256, baseType: !652, size: 32, offset: 768)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !677, file: !581, line: 327, baseType: !853, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !674, file: !581, line: 739, baseType: !1860, size: 448)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !581, line: 350, size: 448, elements: !1861)
!1861 = !{!1862, !1868}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1860, file: !581, line: 353, baseType: !1863, size: 384)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !581, line: 333, size: 384, elements: !1864)
!1864 = !{!1865, !1866, !1867}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1863, file: !581, line: 336, baseType: !677, size: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1863, file: !581, line: 343, baseType: !1259, size: 64, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1863, file: !581, line: 344, baseType: !1266, size: 64, offset: 320)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1860, file: !581, line: 359, baseType: !1223, size: 64, offset: 384)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !674, file: !581, line: 740, baseType: !1870, size: 512)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !581, line: 365, size: 512, elements: !1871)
!1871 = !{!1872, !1873, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1870, file: !581, line: 368, baseType: !1863, size: 384)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1870, file: !581, line: 373, baseType: !853, size: 64, offset: 384)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1870, file: !581, line: 374, baseType: !853, size: 64, offset: 448)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !674, file: !581, line: 741, baseType: !1876, size: 576)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !581, line: 380, size: 576, elements: !1877)
!1877 = !{!1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1876, file: !581, line: 383, baseType: !1870, size: 512)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1876, file: !581, line: 389, baseType: !1223, size: 64, offset: 512)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !674, file: !581, line: 742, baseType: !1881, size: 320)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !581, line: 395, size: 320, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1881, file: !581, line: 397, baseType: !677, size: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1881, file: !581, line: 400, baseType: !722, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !674, file: !581, line: 743, baseType: !1886, size: 448)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !581, line: 406, size: 448, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1886, file: !581, line: 408, baseType: !677, size: 256)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1886, file: !581, line: 412, baseType: !853, size: 64, offset: 256)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1886, file: !581, line: 420, baseType: !853, size: 64, offset: 320)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1886, file: !581, line: 423, baseType: !722, size: 64, offset: 384)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !674, file: !581, line: 744, baseType: !1893, size: 384)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !581, line: 429, size: 384, elements: !1894)
!1894 = !{!1895, !1896, !1897}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1893, file: !581, line: 431, baseType: !677, size: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1893, file: !581, line: 434, baseType: !853, size: 64, offset: 256)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1893, file: !581, line: 437, baseType: !722, size: 64, offset: 320)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !674, file: !581, line: 745, baseType: !1899, size: 384)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !581, line: 443, size: 384, elements: !1900)
!1900 = !{!1901, !1902, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1899, file: !581, line: 445, baseType: !677, size: 256)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1899, file: !581, line: 449, baseType: !853, size: 64, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1899, file: !581, line: 453, baseType: !722, size: 64, offset: 320)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !674, file: !581, line: 746, baseType: !1905, size: 320)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !581, line: 459, size: 320, elements: !1906)
!1906 = !{!1907, !1908}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1905, file: !581, line: 461, baseType: !677, size: 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1905, file: !581, line: 464, baseType: !853, size: 64, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !674, file: !581, line: 747, baseType: !1910, size: 768)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !581, line: 469, size: 768, elements: !1911)
!1911 = !{!1912, !1913, !1914, !1915, !1916}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1910, file: !581, line: 471, baseType: !677, size: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1910, file: !581, line: 474, baseType: !7, size: 32, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1910, file: !581, line: 475, baseType: !7, size: 32, offset: 288)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1910, file: !581, line: 478, baseType: !853, size: 64, offset: 320)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1910, file: !581, line: 481, baseType: !1917, size: 384, offset: 384)
!1917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1918, size: 384, elements: !772)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !164, line: 1917, size: 384, elements: !1919)
!1919 = !{!1920, !1921, !1922}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1918, file: !164, line: 1920, baseType: !662, size: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1918, file: !164, line: 1921, baseType: !853, size: 64, offset: 256)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1918, file: !164, line: 1922, baseType: !690, size: 32, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !674, file: !581, line: 748, baseType: !1924, size: 320)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !581, line: 487, size: 320, elements: !1925)
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1924, file: !581, line: 490, baseType: !677, size: 256)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1924, file: !581, line: 494, baseType: !652, size: 32, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !674, file: !581, line: 749, baseType: !1929, size: 384)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !581, line: 500, size: 384, elements: !1930)
!1930 = !{!1931, !1932, !1933}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1929, file: !581, line: 502, baseType: !677, size: 256)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1929, file: !581, line: 506, baseType: !722, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1929, file: !581, line: 510, baseType: !722, size: 64, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !674, file: !581, line: 750, baseType: !1935, size: 320)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !581, line: 529, size: 320, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1935, file: !581, line: 531, baseType: !677, size: 256)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1935, file: !581, line: 540, baseType: !722, size: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !674, file: !581, line: 751, baseType: !1940, size: 704)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !581, line: 546, size: 704, elements: !1941)
!1941 = !{!1942, !1943, !1944, !1945, !1946, !1947, !1948}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1940, file: !581, line: 549, baseType: !1870, size: 512)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1940, file: !581, line: 553, baseType: !657, size: 64, offset: 512)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1940, file: !581, line: 557, baseType: !651, size: 8, offset: 576)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1940, file: !581, line: 558, baseType: !651, size: 8, offset: 584)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1940, file: !581, line: 559, baseType: !651, size: 8, offset: 592)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1940, file: !581, line: 560, baseType: !651, size: 8, offset: 600)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1940, file: !581, line: 566, baseType: !1223, size: 64, offset: 640)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !674, file: !581, line: 752, baseType: !1950, size: 384)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !581, line: 571, size: 384, elements: !1951)
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1950, file: !581, line: 573, baseType: !1881, size: 320)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1950, file: !581, line: 577, baseType: !853, size: 64, offset: 320)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !674, file: !581, line: 753, baseType: !1955, size: 576)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !581, line: 600, size: 576, elements: !1956)
!1956 = !{!1957, !1958, !1959, !1960, !1969}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1955, file: !581, line: 602, baseType: !1881, size: 320)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1955, file: !581, line: 605, baseType: !853, size: 64, offset: 320)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1955, file: !581, line: 609, baseType: !1173, size: 64, offset: 384)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1955, file: !581, line: 612, baseType: !1961, size: 64, offset: 448)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !581, line: 581, size: 320, elements: !1963)
!1963 = !{!1964, !1965, !1966, !1967, !1968}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1962, file: !581, line: 583, baseType: !196, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1962, file: !581, line: 586, baseType: !853, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1962, file: !581, line: 589, baseType: !853, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1962, file: !581, line: 592, baseType: !853, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1962, file: !581, line: 595, baseType: !853, size: 64, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1955, file: !581, line: 616, baseType: !722, size: 64, offset: 512)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !674, file: !581, line: 754, baseType: !1971, size: 512)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !581, line: 622, size: 512, elements: !1972)
!1972 = !{!1973, !1974, !1975, !1976}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1971, file: !581, line: 624, baseType: !1881, size: 320)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1971, file: !581, line: 628, baseType: !853, size: 64, offset: 320)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1971, file: !581, line: 632, baseType: !853, size: 64, offset: 384)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1971, file: !581, line: 636, baseType: !853, size: 64, offset: 448)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !674, file: !581, line: 755, baseType: !1978, size: 704)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !581, line: 642, size: 704, elements: !1979)
!1979 = !{!1980, !1981, !1982, !1983}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1978, file: !581, line: 644, baseType: !1971, size: 512)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1978, file: !581, line: 648, baseType: !853, size: 64, offset: 512)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1978, file: !581, line: 652, baseType: !853, size: 64, offset: 576)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1978, file: !581, line: 653, baseType: !853, size: 64, offset: 640)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !674, file: !581, line: 756, baseType: !1985, size: 448)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !581, line: 663, size: 448, elements: !1986)
!1986 = !{!1987, !1988, !1989}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1985, file: !581, line: 665, baseType: !1881, size: 320)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1985, file: !581, line: 668, baseType: !853, size: 64, offset: 320)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1985, file: !581, line: 673, baseType: !853, size: 64, offset: 384)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !674, file: !581, line: 757, baseType: !1991, size: 384)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !581, line: 694, size: 384, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1991, file: !581, line: 696, baseType: !1881, size: 320)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1991, file: !581, line: 699, baseType: !853, size: 64, offset: 320)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !674, file: !581, line: 758, baseType: !1996, size: 384)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !581, line: 681, size: 384, elements: !1997)
!1997 = !{!1998, !1999, !2000}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1996, file: !581, line: 683, baseType: !677, size: 256)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1996, file: !581, line: 686, baseType: !853, size: 64, offset: 256)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1996, file: !581, line: 689, baseType: !853, size: 64, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !674, file: !581, line: 759, baseType: !2002, size: 384)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !581, line: 707, size: 384, elements: !2003)
!2003 = !{!2004, !2005, !2006}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2002, file: !581, line: 709, baseType: !677, size: 256)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !2002, file: !581, line: 712, baseType: !853, size: 64, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !2002, file: !581, line: 712, baseType: !853, size: 64, offset: 320)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !674, file: !581, line: 760, baseType: !2008, size: 320)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !581, line: 718, size: 320, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2008, file: !581, line: 720, baseType: !677, size: 256)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2008, file: !581, line: 723, baseType: !853, size: 64, offset: 256)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !668, file: !164, line: 1891, baseType: !853, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !662, file: !164, line: 1892, baseType: !1264, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_heap", file: !581, line: 34, baseType: !2017)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_heap", file: !581, line: 34, size: 128, elements: !2018)
!2018 = !{!2019}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2017, file: !581, line: 34, baseType: !1204, size: 128)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !2024, line: 32, baseType: !2025)
!2024 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !2024, line: 32, size: 96, elements: !2026)
!2026 = !{!2027}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2025, file: !2024, line: 32, baseType: !2028, size: 96)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !2024, line: 31, baseType: !2029)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !2024, line: 31, size: 96, elements: !2030)
!2030 = !{!2031, !2032, !2033}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2029, file: !2024, line: 31, baseType: !7, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2029, file: !2024, line: 31, baseType: !7, size: 32, offset: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2029, file: !2024, line: 31, baseType: !2034, size: 32, offset: 64)
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 32, elements: !772)
!2035 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!2036 = !{!0, !2037, !2065, !2067, !2069, !2081, !2083, !2085, !2087, !2089, !2091, !2093, !2095, !2097, !2099, !2101}
!2037 = !DIGlobalVariableExpression(var: !2038, expr: !DIExpression())
!2038 = distinct !DIGlobalVariable(name: "pass_dce_loop", scope: !2, file: !3, line: 1438, type: !2039, isLocal: false, isDefinition: true)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !391, line: 156, size: 640, elements: !2040)
!2040 = !{!2041}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2039, file: !391, line: 158, baseType: !2042, size: 640)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !391, line: 114, size: 640, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2050, !2054, !2056, !2057, !2058, !2060, !2061, !2062, !2063, !2064}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2042, file: !391, line: 117, baseType: !390, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2042, file: !391, line: 121, baseType: !657, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2042, file: !391, line: 125, baseType: !2047, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!651}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2042, file: !391, line: 130, baseType: !2051, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!7}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2042, file: !391, line: 133, baseType: !2055, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2042, file: !391, line: 136, baseType: !2055, size: 64, offset: 320)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2042, file: !391, line: 139, baseType: !652, size: 32, offset: 384)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2042, file: !391, line: 143, baseType: !2059, size: 32, offset: 416)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !398, line: 80, baseType: !397)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2042, file: !391, line: 146, baseType: !7, size: 32, offset: 448)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2042, file: !391, line: 147, baseType: !7, size: 32, offset: 480)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2042, file: !391, line: 148, baseType: !7, size: 32, offset: 512)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2042, file: !391, line: 151, baseType: !7, size: 32, offset: 544)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2042, file: !391, line: 152, baseType: !7, size: 32, offset: 576)
!2065 = !DIGlobalVariableExpression(var: !2066, expr: !DIExpression())
!2066 = distinct !DIGlobalVariable(name: "pass_cd_dce", scope: !2, file: !3, line: 1457, type: !2039, isLocal: false, isDefinition: true)
!2067 = !DIGlobalVariableExpression(var: !2068, expr: !DIExpression())
!2068 = distinct !DIGlobalVariable(name: "control_dependence_map", scope: !2, file: !3, line: 100, type: !2014, isLocal: true, isDefinition: true)
!2069 = !DIGlobalVariableExpression(var: !2070, expr: !DIExpression())
!2070 = distinct !DIGlobalVariable(name: "last_stmt_necessary", scope: !2, file: !3, line: 88, type: !2071, isLocal: true, isDefinition: true)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !2072, line: 45, baseType: !2073)
!2072 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !2072, line: 39, size: 192, elements: !2075)
!2075 = !{!2076, !2077, !2078, !2079}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !2074, file: !2072, line: 41, baseType: !650, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !2074, file: !2072, line: 42, baseType: !7, size: 32, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2074, file: !2072, line: 43, baseType: !7, size: 32, offset: 96)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !2074, file: !2072, line: 44, baseType: !2080, size: 64, offset: 128)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 64, elements: !772)
!2081 = !DIGlobalVariableExpression(var: !2082, expr: !DIExpression())
!2082 = distinct !DIGlobalVariable(name: "bb_contains_live_stmts", scope: !2, file: !3, line: 91, type: !2071, isLocal: true, isDefinition: true)
!2083 = !DIGlobalVariableExpression(var: !2084, expr: !DIExpression())
!2084 = distinct !DIGlobalVariable(name: "processed", scope: !2, file: !3, line: 84, type: !2071, isLocal: true, isDefinition: true)
!2085 = !DIGlobalVariableExpression(var: !2086, expr: !DIExpression())
!2086 = distinct !DIGlobalVariable(name: "worklist", scope: !2, file: !3, line: 80, type: !2015, isLocal: true, isDefinition: true)
!2087 = !DIGlobalVariableExpression(var: !2088, expr: !DIExpression())
!2088 = distinct !DIGlobalVariable(name: "visited_control_parents", scope: !2, file: !3, line: 104, type: !2071, isLocal: true, isDefinition: true)
!2089 = !DIGlobalVariableExpression(var: !2090, expr: !DIExpression())
!2090 = distinct !DIGlobalVariable(name: "longest_chain", scope: !2, file: !3, line: 490, type: !7, isLocal: true, isDefinition: true)
!2091 = !DIGlobalVariableExpression(var: !2092, expr: !DIExpression())
!2092 = distinct !DIGlobalVariable(name: "total_chain", scope: !2, file: !3, line: 491, type: !7, isLocal: true, isDefinition: true)
!2093 = !DIGlobalVariableExpression(var: !2094, expr: !DIExpression())
!2094 = distinct !DIGlobalVariable(name: "nr_walks", scope: !2, file: !3, line: 492, type: !7, isLocal: true, isDefinition: true)
!2095 = !DIGlobalVariableExpression(var: !2096, expr: !DIExpression())
!2096 = distinct !DIGlobalVariable(name: "chain_ovfl", scope: !2, file: !3, line: 493, type: !651, isLocal: true, isDefinition: true)
!2097 = !DIGlobalVariableExpression(var: !2098, expr: !DIExpression())
!2098 = distinct !DIGlobalVariable(name: "visited", scope: !2, file: !3, line: 489, type: !1236, isLocal: true, isDefinition: true)
!2099 = !DIGlobalVariableExpression(var: !2100, expr: !DIExpression())
!2100 = distinct !DIGlobalVariable(name: "cfg_altered", scope: !2, file: !3, line: 111, type: !651, isLocal: true, isDefinition: true)
!2101 = !DIGlobalVariableExpression(var: !2102, expr: !DIExpression())
!2102 = distinct !DIGlobalVariable(name: "stats", scope: !2, file: !3, line: 76, type: !2103, isLocal: true, isDefinition: true)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stmt_stats", file: !3, line: 70, size: 128, elements: !2104)
!2104 = !{!2105, !2106, !2107, !2108}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2103, file: !3, line: 72, baseType: !652, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "total_phis", scope: !2103, file: !3, line: 73, baseType: !652, size: 32, offset: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2103, file: !3, line: 74, baseType: !652, size: 32, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "removed_phis", scope: !2103, file: !3, line: 75, baseType: !652, size: 32, offset: 96)
!2109 = !DIGlobalVariableExpression(var: !2096, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!2110 = !DIGlobalVariableExpression(var: !2100, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!2111 = !{i32 2, !"Dwarf Version", i32 4}
!2112 = !{i32 2, !"Debug Info Version", i32 3}
!2113 = !{i32 1, !"wchar_size", i32 4}
!2114 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2115 = distinct !DISubprogram(name: "vprintf", scope: !2116, file: !2116, line: 39, type: !2117, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2127)
!2116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!652, !2119, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !657)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2122)
!2122 = !{!2123, !2124, !2125, !2126}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2121, file: !3, baseType: !7, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2121, file: !3, baseType: !7, size: 32, offset: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2121, file: !3, baseType: !656, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2121, file: !3, baseType: !656, size: 64, offset: 128)
!2127 = !{!2128, !2129}
!2128 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2115, file: !2116, line: 39, type: !2119)
!2129 = !DILocalVariable(name: "__arg", arg: 2, scope: !2115, file: !2116, line: 39, type: !2120)
!2130 = !DILocation(line: 0, scope: !2115)
!2131 = !DILocation(line: 41, column: 20, scope: !2115)
!2132 = !DILocation(line: 41, column: 10, scope: !2115)
!2133 = !DILocation(line: 41, column: 3, scope: !2115)
!2134 = distinct !DISubprogram(name: "getchar", scope: !2116, file: !2116, line: 47, type: !2135, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2137)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!652}
!2137 = !{}
!2138 = !DILocation(line: 49, column: 16, scope: !2134)
!2139 = !DILocation(line: 49, column: 10, scope: !2134)
!2140 = !DILocation(line: 49, column: 3, scope: !2134)
!2141 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2116, file: !2116, line: 56, type: !2142, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2195)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!652, !2144}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2146, line: 7, baseType: !2147)
!2146 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2148, line: 49, size: 1728, elements: !2149)
!2148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2149 = !{!2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2165, !2167, !2168, !2169, !2172, !2174, !2175, !2176, !2179, !2181, !2184, !2187, !2188, !2189, !2190, !2191}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2147, file: !2148, line: 51, baseType: !652, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2147, file: !2148, line: 54, baseType: !654, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2147, file: !2148, line: 55, baseType: !654, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2147, file: !2148, line: 56, baseType: !654, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2147, file: !2148, line: 57, baseType: !654, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2147, file: !2148, line: 58, baseType: !654, size: 64, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2147, file: !2148, line: 59, baseType: !654, size: 64, offset: 384)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2147, file: !2148, line: 60, baseType: !654, size: 64, offset: 448)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2147, file: !2148, line: 61, baseType: !654, size: 64, offset: 512)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2147, file: !2148, line: 64, baseType: !654, size: 64, offset: 576)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2147, file: !2148, line: 65, baseType: !654, size: 64, offset: 640)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2147, file: !2148, line: 66, baseType: !654, size: 64, offset: 704)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2147, file: !2148, line: 68, baseType: !2163, size: 64, offset: 768)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2148, line: 36, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2147, file: !2148, line: 70, baseType: !2166, size: 64, offset: 832)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2147, file: !2148, line: 72, baseType: !652, size: 32, offset: 896)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2147, file: !2148, line: 73, baseType: !652, size: 32, offset: 928)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2147, file: !2148, line: 74, baseType: !2170, size: 64, offset: 960)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2171, line: 152, baseType: !824)
!2171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2147, file: !2148, line: 77, baseType: !2173, size: 16, offset: 1024)
!2173 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2147, file: !2148, line: 78, baseType: !1589, size: 8, offset: 1040)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2147, file: !2148, line: 79, baseType: !948, size: 8, offset: 1048)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2147, file: !2148, line: 81, baseType: !2177, size: 64, offset: 1088)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2148, line: 43, baseType: null)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2147, file: !2148, line: 89, baseType: !2180, size: 64, offset: 1152)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2171, line: 153, baseType: !824)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2147, file: !2148, line: 91, baseType: !2182, size: 64, offset: 1216)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2148, line: 37, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2147, file: !2148, line: 92, baseType: !2185, size: 64, offset: 1280)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2148, line: 38, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2147, file: !2148, line: 93, baseType: !2166, size: 64, offset: 1344)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2147, file: !2148, line: 94, baseType: !656, size: 64, offset: 1408)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2147, file: !2148, line: 95, baseType: !1173, size: 64, offset: 1472)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2147, file: !2148, line: 96, baseType: !652, size: 32, offset: 1536)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2147, file: !2148, line: 98, baseType: !2192, size: 160, offset: 1568)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 160, elements: !2193)
!2193 = !{!2194}
!2194 = !DISubrange(count: 20)
!2195 = !{!2196}
!2196 = !DILocalVariable(name: "__fp", arg: 1, scope: !2141, file: !2116, line: 56, type: !2144)
!2197 = !DILocation(line: 0, scope: !2141)
!2198 = !DILocation(line: 58, column: 10, scope: !2141)
!2199 = !DILocation(line: 58, column: 3, scope: !2141)
!2200 = distinct !DISubprogram(name: "getc_unlocked", scope: !2116, file: !2116, line: 66, type: !2142, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2201)
!2201 = !{!2202}
!2202 = !DILocalVariable(name: "__fp", arg: 1, scope: !2200, file: !2116, line: 66, type: !2144)
!2203 = !DILocation(line: 0, scope: !2200)
!2204 = !DILocation(line: 68, column: 10, scope: !2200)
!2205 = !DILocation(line: 68, column: 3, scope: !2200)
!2206 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2116, file: !2116, line: 73, type: !2135, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2137)
!2207 = !DILocation(line: 75, column: 10, scope: !2206)
!2208 = !DILocation(line: 75, column: 3, scope: !2206)
!2209 = distinct !DISubprogram(name: "putchar", scope: !2116, file: !2116, line: 82, type: !2210, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2212)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!652, !652}
!2212 = !{!2213}
!2213 = !DILocalVariable(name: "__c", arg: 1, scope: !2209, file: !2116, line: 82, type: !652)
!2214 = !DILocation(line: 0, scope: !2209)
!2215 = !DILocation(line: 84, column: 21, scope: !2209)
!2216 = !DILocation(line: 84, column: 10, scope: !2209)
!2217 = !DILocation(line: 84, column: 3, scope: !2209)
!2218 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2116, file: !2116, line: 91, type: !2219, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!652, !652, !2144}
!2221 = !{!2222, !2223}
!2222 = !DILocalVariable(name: "__c", arg: 1, scope: !2218, file: !2116, line: 91, type: !652)
!2223 = !DILocalVariable(name: "__stream", arg: 2, scope: !2218, file: !2116, line: 91, type: !2144)
!2224 = !DILocation(line: 0, scope: !2218)
!2225 = !DILocation(line: 93, column: 10, scope: !2218)
!2226 = !DILocation(line: 93, column: 3, scope: !2218)
!2227 = distinct !DISubprogram(name: "putc_unlocked", scope: !2116, file: !2116, line: 101, type: !2219, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2228)
!2228 = !{!2229, !2230}
!2229 = !DILocalVariable(name: "__c", arg: 1, scope: !2227, file: !2116, line: 101, type: !652)
!2230 = !DILocalVariable(name: "__stream", arg: 2, scope: !2227, file: !2116, line: 101, type: !2144)
!2231 = !DILocation(line: 0, scope: !2227)
!2232 = !DILocation(line: 103, column: 10, scope: !2227)
!2233 = !DILocation(line: 103, column: 3, scope: !2227)
!2234 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2116, file: !2116, line: 108, type: !2210, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2235)
!2235 = !{!2236}
!2236 = !DILocalVariable(name: "__c", arg: 1, scope: !2234, file: !2116, line: 108, type: !652)
!2237 = !DILocation(line: 0, scope: !2234)
!2238 = !DILocation(line: 110, column: 10, scope: !2234)
!2239 = !DILocation(line: 110, column: 3, scope: !2234)
!2240 = distinct !DISubprogram(name: "getline", scope: !2116, file: !2116, line: 118, type: !2241, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2245)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!2243, !653, !2244, !2144}
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2171, line: 193, baseType: !824)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!2245 = !{!2246, !2247, !2248}
!2246 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2240, file: !2116, line: 118, type: !653)
!2247 = !DILocalVariable(name: "__n", arg: 2, scope: !2240, file: !2116, line: 118, type: !2244)
!2248 = !DILocalVariable(name: "__stream", arg: 3, scope: !2240, file: !2116, line: 118, type: !2144)
!2249 = !DILocation(line: 0, scope: !2240)
!2250 = !DILocation(line: 120, column: 10, scope: !2240)
!2251 = !DILocation(line: 120, column: 3, scope: !2240)
!2252 = distinct !DISubprogram(name: "feof_unlocked", scope: !2116, file: !2116, line: 128, type: !2142, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2253)
!2253 = !{!2254}
!2254 = !DILocalVariable(name: "__stream", arg: 1, scope: !2252, file: !2116, line: 128, type: !2144)
!2255 = !DILocation(line: 0, scope: !2252)
!2256 = !DILocation(line: 130, column: 10, scope: !2252)
!2257 = !DILocation(line: 130, column: 3, scope: !2252)
!2258 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2116, file: !2116, line: 135, type: !2142, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2259)
!2259 = !{!2260}
!2260 = !DILocalVariable(name: "__stream", arg: 1, scope: !2258, file: !2116, line: 135, type: !2144)
!2261 = !DILocation(line: 0, scope: !2258)
!2262 = !DILocation(line: 137, column: 10, scope: !2258)
!2263 = !DILocation(line: 137, column: 3, scope: !2258)
!2264 = distinct !DISubprogram(name: "tolower", scope: !2265, file: !2265, line: 207, type: !2210, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2266)
!2265 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2266 = !{!2267}
!2267 = !DILocalVariable(name: "__c", arg: 1, scope: !2264, file: !2265, line: 207, type: !652)
!2268 = !DILocation(line: 0, scope: !2264)
!2269 = !DILocation(line: 209, column: 22, scope: !2264)
!2270 = !DILocation(line: 209, column: 39, scope: !2264)
!2271 = !DILocation(line: 209, column: 38, scope: !2264)
!2272 = !DILocation(line: 209, column: 37, scope: !2264)
!2273 = !DILocation(line: 209, column: 10, scope: !2264)
!2274 = !DILocation(line: 209, column: 3, scope: !2264)
!2275 = distinct !DISubprogram(name: "toupper", scope: !2265, file: !2265, line: 213, type: !2210, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2276)
!2276 = !{!2277}
!2277 = !DILocalVariable(name: "__c", arg: 1, scope: !2275, file: !2265, line: 213, type: !652)
!2278 = !DILocation(line: 0, scope: !2275)
!2279 = !DILocation(line: 215, column: 22, scope: !2275)
!2280 = !DILocation(line: 215, column: 39, scope: !2275)
!2281 = !DILocation(line: 215, column: 38, scope: !2275)
!2282 = !DILocation(line: 215, column: 37, scope: !2275)
!2283 = !DILocation(line: 215, column: 10, scope: !2275)
!2284 = !DILocation(line: 215, column: 3, scope: !2275)
!2285 = distinct !DISubprogram(name: "atoi", scope: !2286, file: !2286, line: 361, type: !2287, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2289)
!2286 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!652, !657}
!2289 = !{!2290}
!2290 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2285, file: !2286, line: 361, type: !657)
!2291 = !DILocation(line: 0, scope: !2285)
!2292 = !DILocation(line: 363, column: 16, scope: !2285)
!2293 = !DILocation(line: 363, column: 10, scope: !2285)
!2294 = !DILocation(line: 363, column: 3, scope: !2285)
!2295 = distinct !DISubprogram(name: "atol", scope: !2286, file: !2286, line: 366, type: !2296, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!824, !657}
!2298 = !{!2299}
!2299 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2295, file: !2286, line: 366, type: !657)
!2300 = !DILocation(line: 0, scope: !2295)
!2301 = !DILocation(line: 368, column: 10, scope: !2295)
!2302 = !DILocation(line: 368, column: 3, scope: !2295)
!2303 = distinct !DISubprogram(name: "atoll", scope: !2286, file: !2286, line: 373, type: !2304, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2307)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!2306, !657}
!2306 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2307 = !{!2308}
!2308 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2303, file: !2286, line: 373, type: !657)
!2309 = !DILocation(line: 0, scope: !2303)
!2310 = !DILocation(line: 375, column: 10, scope: !2303)
!2311 = !DILocation(line: 375, column: 3, scope: !2303)
!2312 = distinct !DISubprogram(name: "bsearch", scope: !2313, file: !2313, line: 20, type: !2314, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2317)
!2313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!656, !1158, !1158, !1173, !1173, !2316}
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2286, line: 808, baseType: !1162)
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327}
!2318 = !DILocalVariable(name: "__key", arg: 1, scope: !2312, file: !2313, line: 20, type: !1158)
!2319 = !DILocalVariable(name: "__base", arg: 2, scope: !2312, file: !2313, line: 20, type: !1158)
!2320 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2312, file: !2313, line: 20, type: !1173)
!2321 = !DILocalVariable(name: "__size", arg: 4, scope: !2312, file: !2313, line: 20, type: !1173)
!2322 = !DILocalVariable(name: "__compar", arg: 5, scope: !2312, file: !2313, line: 21, type: !2316)
!2323 = !DILocalVariable(name: "__l", scope: !2312, file: !2313, line: 23, type: !1173)
!2324 = !DILocalVariable(name: "__u", scope: !2312, file: !2313, line: 23, type: !1173)
!2325 = !DILocalVariable(name: "__idx", scope: !2312, file: !2313, line: 23, type: !1173)
!2326 = !DILocalVariable(name: "__p", scope: !2312, file: !2313, line: 24, type: !1158)
!2327 = !DILocalVariable(name: "__comparison", scope: !2312, file: !2313, line: 25, type: !652)
!2328 = !DILocation(line: 0, scope: !2312)
!2329 = !DILocation(line: 29, column: 3, scope: !2312)
!2330 = !DILocation(line: 27, column: 7, scope: !2312)
!2331 = !DILocation(line: 29, column: 14, scope: !2312)
!2332 = !DILocation(line: 31, column: 20, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2312, file: !2313, line: 30, column: 5)
!2334 = !DILocation(line: 31, column: 27, scope: !2333)
!2335 = !DILocation(line: 32, column: 56, scope: !2333)
!2336 = !DILocation(line: 32, column: 47, scope: !2333)
!2337 = !DILocation(line: 33, column: 22, scope: !2333)
!2338 = !DILocation(line: 34, column: 24, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2333, file: !2313, line: 34, column: 11)
!2340 = !DILocation(line: 34, column: 11, scope: !2333)
!2341 = !DILocation(line: 36, column: 29, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2339, file: !2313, line: 36, column: 16)
!2343 = !DILocation(line: 36, column: 16, scope: !2339)
!2344 = !DILocation(line: 37, column: 14, scope: !2342)
!2345 = distinct !{!2345, !2329, !2346}
!2346 = !DILocation(line: 40, column: 5, scope: !2312)
!2347 = !DILocation(line: 43, column: 1, scope: !2312)
!2348 = distinct !DISubprogram(name: "atof", scope: !2349, file: !2349, line: 25, type: !2350, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2353)
!2349 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!2352, !657}
!2352 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2353 = !{!2354}
!2354 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2348, file: !2349, line: 25, type: !657)
!2355 = !DILocation(line: 0, scope: !2348)
!2356 = !DILocation(line: 27, column: 10, scope: !2348)
!2357 = !DILocation(line: 27, column: 3, scope: !2348)
!2358 = distinct !DISubprogram(name: "strtoimax", scope: !2359, file: !2359, line: 324, type: !2360, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2366)
!2359 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!2362, !2119, !2365, !652}
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2363, line: 101, baseType: !2364)
!2363 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2171, line: 72, baseType: !824)
!2365 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !653)
!2366 = !{!2367, !2368, !2369}
!2367 = !DILocalVariable(name: "nptr", arg: 1, scope: !2358, file: !2359, line: 324, type: !2119)
!2368 = !DILocalVariable(name: "endptr", arg: 2, scope: !2358, file: !2359, line: 324, type: !2365)
!2369 = !DILocalVariable(name: "base", arg: 3, scope: !2358, file: !2359, line: 324, type: !652)
!2370 = !DILocation(line: 0, scope: !2358)
!2371 = !DILocation(line: 327, column: 10, scope: !2358)
!2372 = !DILocation(line: 327, column: 3, scope: !2358)
!2373 = distinct !DISubprogram(name: "strtoumax", scope: !2359, file: !2359, line: 336, type: !2374, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2378)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!2376, !2119, !2365, !652}
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2363, line: 102, baseType: !2377)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2171, line: 73, baseType: !807)
!2378 = !{!2379, !2380, !2381}
!2379 = !DILocalVariable(name: "nptr", arg: 1, scope: !2373, file: !2359, line: 336, type: !2119)
!2380 = !DILocalVariable(name: "endptr", arg: 2, scope: !2373, file: !2359, line: 336, type: !2365)
!2381 = !DILocalVariable(name: "base", arg: 3, scope: !2373, file: !2359, line: 336, type: !652)
!2382 = !DILocation(line: 0, scope: !2373)
!2383 = !DILocation(line: 339, column: 10, scope: !2373)
!2384 = !DILocation(line: 339, column: 3, scope: !2373)
!2385 = distinct !DISubprogram(name: "wcstoimax", scope: !2359, file: !2359, line: 348, type: !2386, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2395)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!2362, !2388, !2392, !652}
!2388 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2389)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2391)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2359, line: 34, baseType: !652)
!2392 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2393)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2395 = !{!2396, !2397, !2398}
!2396 = !DILocalVariable(name: "nptr", arg: 1, scope: !2385, file: !2359, line: 348, type: !2388)
!2397 = !DILocalVariable(name: "endptr", arg: 2, scope: !2385, file: !2359, line: 348, type: !2392)
!2398 = !DILocalVariable(name: "base", arg: 3, scope: !2385, file: !2359, line: 348, type: !652)
!2399 = !DILocation(line: 0, scope: !2385)
!2400 = !DILocation(line: 351, column: 10, scope: !2385)
!2401 = !DILocation(line: 351, column: 3, scope: !2385)
!2402 = distinct !DISubprogram(name: "wcstoumax", scope: !2359, file: !2359, line: 362, type: !2403, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!2376, !2388, !2392, !652}
!2405 = !{!2406, !2407, !2408}
!2406 = !DILocalVariable(name: "nptr", arg: 1, scope: !2402, file: !2359, line: 362, type: !2388)
!2407 = !DILocalVariable(name: "endptr", arg: 2, scope: !2402, file: !2359, line: 362, type: !2392)
!2408 = !DILocalVariable(name: "base", arg: 3, scope: !2402, file: !2359, line: 362, type: !652)
!2409 = !DILocation(line: 0, scope: !2402)
!2410 = !DILocation(line: 365, column: 10, scope: !2402)
!2411 = !DILocation(line: 365, column: 3, scope: !2402)
!2412 = distinct !DISubprogram(name: "stat", scope: !2413, file: !2413, line: 453, type: !2414, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2451)
!2413 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!652, !657, !2416}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2418, line: 46, size: 1152, elements: !2419)
!2418 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2419 = !{!2420, !2422, !2424, !2426, !2428, !2430, !2432, !2433, !2434, !2435, !2437, !2439, !2447, !2448, !2449}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2417, file: !2418, line: 48, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2171, line: 145, baseType: !807)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2417, file: !2418, line: 53, baseType: !2423, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2171, line: 148, baseType: !807)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2417, file: !2418, line: 61, baseType: !2425, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2171, line: 151, baseType: !807)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2417, file: !2418, line: 62, baseType: !2427, size: 32, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2171, line: 150, baseType: !7)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2417, file: !2418, line: 64, baseType: !2429, size: 32, offset: 224)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2171, line: 146, baseType: !7)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2417, file: !2418, line: 65, baseType: !2431, size: 32, offset: 256)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2171, line: 147, baseType: !7)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2417, file: !2418, line: 67, baseType: !652, size: 32, offset: 288)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2417, file: !2418, line: 69, baseType: !2421, size: 64, offset: 320)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2417, file: !2418, line: 74, baseType: !2170, size: 64, offset: 384)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2417, file: !2418, line: 78, baseType: !2436, size: 64, offset: 448)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2171, line: 174, baseType: !824)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2417, file: !2418, line: 80, baseType: !2438, size: 64, offset: 512)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2171, line: 179, baseType: !824)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2417, file: !2418, line: 91, baseType: !2440, size: 128, offset: 576)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2441, line: 10, size: 128, elements: !2442)
!2441 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2442 = !{!2443, !2445}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2440, file: !2441, line: 12, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2171, line: 160, baseType: !824)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2440, file: !2441, line: 16, baseType: !2446, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2171, line: 196, baseType: !824)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2417, file: !2418, line: 92, baseType: !2440, size: 128, offset: 704)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2417, file: !2418, line: 93, baseType: !2440, size: 128, offset: 832)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2417, file: !2418, line: 106, baseType: !2450, size: 192, offset: 960)
!2450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2446, size: 192, elements: !924)
!2451 = !{!2452, !2453}
!2452 = !DILocalVariable(name: "__path", arg: 1, scope: !2412, file: !2413, line: 453, type: !657)
!2453 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2412, file: !2413, line: 453, type: !2416)
!2454 = !DILocation(line: 0, scope: !2412)
!2455 = !DILocation(line: 455, column: 10, scope: !2412)
!2456 = !DILocation(line: 455, column: 3, scope: !2412)
!2457 = distinct !DISubprogram(name: "lstat", scope: !2413, file: !2413, line: 460, type: !2414, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2458)
!2458 = !{!2459, !2460}
!2459 = !DILocalVariable(name: "__path", arg: 1, scope: !2457, file: !2413, line: 460, type: !657)
!2460 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2457, file: !2413, line: 460, type: !2416)
!2461 = !DILocation(line: 0, scope: !2457)
!2462 = !DILocation(line: 462, column: 10, scope: !2457)
!2463 = !DILocation(line: 462, column: 3, scope: !2457)
!2464 = distinct !DISubprogram(name: "fstat", scope: !2413, file: !2413, line: 467, type: !2465, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!652, !652, !2416}
!2467 = !{!2468, !2469}
!2468 = !DILocalVariable(name: "__fd", arg: 1, scope: !2464, file: !2413, line: 467, type: !652)
!2469 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2464, file: !2413, line: 467, type: !2416)
!2470 = !DILocation(line: 0, scope: !2464)
!2471 = !DILocation(line: 469, column: 10, scope: !2464)
!2472 = !DILocation(line: 469, column: 3, scope: !2464)
!2473 = distinct !DISubprogram(name: "fstatat", scope: !2413, file: !2413, line: 474, type: !2474, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!652, !652, !657, !2416, !652}
!2476 = !{!2477, !2478, !2479, !2480}
!2477 = !DILocalVariable(name: "__fd", arg: 1, scope: !2473, file: !2413, line: 474, type: !652)
!2478 = !DILocalVariable(name: "__filename", arg: 2, scope: !2473, file: !2413, line: 474, type: !657)
!2479 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2473, file: !2413, line: 474, type: !2416)
!2480 = !DILocalVariable(name: "__flag", arg: 4, scope: !2473, file: !2413, line: 474, type: !652)
!2481 = !DILocation(line: 0, scope: !2473)
!2482 = !DILocation(line: 477, column: 10, scope: !2473)
!2483 = !DILocation(line: 477, column: 3, scope: !2473)
!2484 = distinct !DISubprogram(name: "mknod", scope: !2413, file: !2413, line: 483, type: !2485, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!652, !657, !2427, !2421}
!2487 = !{!2488, !2489, !2490}
!2488 = !DILocalVariable(name: "__path", arg: 1, scope: !2484, file: !2413, line: 483, type: !657)
!2489 = !DILocalVariable(name: "__mode", arg: 2, scope: !2484, file: !2413, line: 483, type: !2427)
!2490 = !DILocalVariable(name: "__dev", arg: 3, scope: !2484, file: !2413, line: 483, type: !2421)
!2491 = !DILocation(line: 0, scope: !2484)
!2492 = !DILocation(line: 485, column: 10, scope: !2484)
!2493 = !DILocation(line: 485, column: 3, scope: !2484)
!2494 = distinct !DISubprogram(name: "mknodat", scope: !2413, file: !2413, line: 491, type: !2495, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!652, !652, !657, !2427, !2421}
!2497 = !{!2498, !2499, !2500, !2501}
!2498 = !DILocalVariable(name: "__fd", arg: 1, scope: !2494, file: !2413, line: 491, type: !652)
!2499 = !DILocalVariable(name: "__path", arg: 2, scope: !2494, file: !2413, line: 491, type: !657)
!2500 = !DILocalVariable(name: "__mode", arg: 3, scope: !2494, file: !2413, line: 491, type: !2427)
!2501 = !DILocalVariable(name: "__dev", arg: 4, scope: !2494, file: !2413, line: 491, type: !2421)
!2502 = !DILocation(line: 0, scope: !2494)
!2503 = !DILocation(line: 494, column: 10, scope: !2494)
!2504 = !DILocation(line: 494, column: 3, scope: !2494)
!2505 = distinct !DISubprogram(name: "stat64", scope: !2413, file: !2413, line: 502, type: !2506, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2528)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!652, !657, !2508}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2418, line: 119, size: 1152, elements: !2510)
!2510 = !{!2511, !2512, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2524, !2525, !2526, !2527}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2509, file: !2418, line: 121, baseType: !2421, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2509, file: !2418, line: 123, baseType: !2513, size: 64, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2171, line: 149, baseType: !807)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2509, file: !2418, line: 124, baseType: !2425, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2509, file: !2418, line: 125, baseType: !2427, size: 32, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2509, file: !2418, line: 132, baseType: !2429, size: 32, offset: 224)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2509, file: !2418, line: 133, baseType: !2431, size: 32, offset: 256)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2509, file: !2418, line: 135, baseType: !652, size: 32, offset: 288)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2509, file: !2418, line: 136, baseType: !2421, size: 64, offset: 320)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2509, file: !2418, line: 137, baseType: !2170, size: 64, offset: 384)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2509, file: !2418, line: 143, baseType: !2436, size: 64, offset: 448)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2509, file: !2418, line: 144, baseType: !2523, size: 64, offset: 512)
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2171, line: 180, baseType: !824)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2509, file: !2418, line: 152, baseType: !2440, size: 128, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2509, file: !2418, line: 153, baseType: !2440, size: 128, offset: 704)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2509, file: !2418, line: 154, baseType: !2440, size: 128, offset: 832)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2509, file: !2418, line: 164, baseType: !2450, size: 192, offset: 960)
!2528 = !{!2529, !2530}
!2529 = !DILocalVariable(name: "__path", arg: 1, scope: !2505, file: !2413, line: 502, type: !657)
!2530 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2505, file: !2413, line: 502, type: !2508)
!2531 = !DILocation(line: 0, scope: !2505)
!2532 = !DILocation(line: 504, column: 10, scope: !2505)
!2533 = !DILocation(line: 504, column: 3, scope: !2505)
!2534 = distinct !DISubprogram(name: "lstat64", scope: !2413, file: !2413, line: 509, type: !2506, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2535)
!2535 = !{!2536, !2537}
!2536 = !DILocalVariable(name: "__path", arg: 1, scope: !2534, file: !2413, line: 509, type: !657)
!2537 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2534, file: !2413, line: 509, type: !2508)
!2538 = !DILocation(line: 0, scope: !2534)
!2539 = !DILocation(line: 511, column: 10, scope: !2534)
!2540 = !DILocation(line: 511, column: 3, scope: !2534)
!2541 = distinct !DISubprogram(name: "fstat64", scope: !2413, file: !2413, line: 516, type: !2542, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!652, !652, !2508}
!2544 = !{!2545, !2546}
!2545 = !DILocalVariable(name: "__fd", arg: 1, scope: !2541, file: !2413, line: 516, type: !652)
!2546 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2541, file: !2413, line: 516, type: !2508)
!2547 = !DILocation(line: 0, scope: !2541)
!2548 = !DILocation(line: 518, column: 10, scope: !2541)
!2549 = !DILocation(line: 518, column: 3, scope: !2541)
!2550 = distinct !DISubprogram(name: "fstatat64", scope: !2413, file: !2413, line: 523, type: !2551, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!652, !652, !657, !2508, !652}
!2553 = !{!2554, !2555, !2556, !2557}
!2554 = !DILocalVariable(name: "__fd", arg: 1, scope: !2550, file: !2413, line: 523, type: !652)
!2555 = !DILocalVariable(name: "__filename", arg: 2, scope: !2550, file: !2413, line: 523, type: !657)
!2556 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2550, file: !2413, line: 523, type: !2508)
!2557 = !DILocalVariable(name: "__flag", arg: 4, scope: !2550, file: !2413, line: 523, type: !652)
!2558 = !DILocation(line: 0, scope: !2550)
!2559 = !DILocation(line: 526, column: 10, scope: !2550)
!2560 = !DILocation(line: 526, column: 3, scope: !2550)
!2561 = distinct !DISubprogram(name: "mark_virtual_phi_result_for_renaming", scope: !3, file: !3, line: 831, type: !2562, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2564)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{null, !671}
!2564 = !{!2565, !2566, !2567, !2575, !2576, !2577, !2578}
!2565 = !DILocalVariable(name: "phi", arg: 1, scope: !2561, file: !3, line: 831, type: !671)
!2566 = !DILocalVariable(name: "used", scope: !2561, file: !3, line: 833, type: !651)
!2567 = !DILocalVariable(name: "iter", scope: !2561, file: !3, line: 834, type: !2568)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "imm_use_iterator", file: !1055, line: 249, baseType: !2569)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "immediate_use_iterator_d", file: !1055, line: 238, size: 448, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !2569, file: !1055, line: 241, baseType: !660, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "end_p", scope: !2569, file: !1055, line: 243, baseType: !660, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "iter_node", scope: !2569, file: !1055, line: 245, baseType: !661, size: 256, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "next_imm_name", scope: !2569, file: !1055, line: 248, baseType: !660, size: 64, offset: 384)
!2575 = !DILocalVariable(name: "use_p", scope: !2561, file: !3, line: 835, type: !659)
!2576 = !DILocalVariable(name: "stmt", scope: !2561, file: !3, line: 836, type: !671)
!2577 = !DILocalVariable(name: "result_ssa", scope: !2561, file: !3, line: 837, type: !853)
!2578 = !DILocalVariable(name: "result_var", scope: !2561, file: !3, line: 837, type: !853)
!2579 = !DILocation(line: 0, scope: !2561)
!2580 = !DILocation(line: 834, column: 3, scope: !2561)
!2581 = !DILocation(line: 839, column: 7, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 839, column: 7)
!2583 = !DILocation(line: 839, column: 17, scope: !2582)
!2584 = !DILocation(line: 839, column: 21, scope: !2582)
!2585 = !DILocation(line: 839, column: 32, scope: !2582)
!2586 = !DILocation(line: 839, column: 7, scope: !2561)
!2587 = !DILocation(line: 841, column: 7, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 840, column: 5)
!2589 = !DILocation(line: 842, column: 26, scope: !2588)
!2590 = !DILocation(line: 842, column: 7, scope: !2588)
!2591 = !DILocation(line: 843, column: 16, scope: !2588)
!2592 = !DILocation(line: 843, column: 7, scope: !2588)
!2593 = !DILocation(line: 844, column: 5, scope: !2588)
!2594 = !DILocation(line: 846, column: 16, scope: !2561)
!2595 = !DILocation(line: 847, column: 16, scope: !2561)
!2596 = !DILocation(line: 848, column: 3, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 848, column: 3)
!2598 = !DILocation(line: 0, scope: !2597)
!2599 = !DILocation(line: 848, column: 3, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 848, column: 3)
!2601 = !DILocation(line: 850, column: 7, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 850, column: 7)
!2603 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 849, column: 5)
!2604 = !DILocation(line: 0, scope: !2602)
!2605 = !DILocation(line: 850, column: 7, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 850, column: 7)
!2607 = !DILocation(line: 851, column: 9, scope: !2606)
!2608 = distinct !{!2608, !2601, !2609}
!2609 = !DILocation(line: 851, column: 9, scope: !2602)
!2610 = !DILocation(line: 852, column: 7, scope: !2603)
!2611 = distinct !{!2611, !2596, !2612}
!2612 = !DILocation(line: 854, column: 5, scope: !2597)
!2613 = !DILocation(line: 855, column: 7, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 855, column: 7)
!2615 = !DILocation(line: 855, column: 7, scope: !2561)
!2616 = !DILocation(line: 856, column: 5, scope: !2614)
!2617 = !DILocation(line: 857, column: 1, scope: !2561)
!2618 = distinct !DISubprogram(name: "gimple_phi_result", scope: !581, file: !581, line: 3071, type: !2619, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2622)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!853, !2621}
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !672, line: 60, baseType: !2020)
!2622 = !{!2623}
!2623 = !DILocalVariable(name: "gs", arg: 1, scope: !2618, file: !581, line: 3071, type: !2621)
!2624 = !DILocation(line: 0, scope: !2618)
!2625 = !DILocation(line: 3074, column: 25, scope: !2618)
!2626 = !DILocation(line: 3074, column: 3, scope: !2618)
!2627 = distinct !DISubprogram(name: "first_imm_use_stmt", scope: !2628, file: !2628, line: 1058, type: !2629, scopeLine: 1059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2632)
!2628 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!671, !2631, !853}
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2632 = !{!2633, !2634}
!2633 = !DILocalVariable(name: "imm", arg: 1, scope: !2627, file: !2628, line: 1058, type: !2631)
!2634 = !DILocalVariable(name: "var", arg: 2, scope: !2627, file: !2628, line: 1058, type: !853)
!2635 = !DILocation(line: 0, scope: !2627)
!2636 = !DILocation(line: 1060, column: 18, scope: !2627)
!2637 = !DILocation(line: 1060, column: 8, scope: !2627)
!2638 = !DILocation(line: 1060, column: 14, scope: !2627)
!2639 = !DILocation(line: 1061, column: 30, scope: !2627)
!2640 = !DILocation(line: 1061, column: 16, scope: !2627)
!2641 = !DILocation(line: 1062, column: 8, scope: !2627)
!2642 = !DILocation(line: 1062, column: 22, scope: !2627)
!2643 = !DILocation(line: 1067, column: 18, scope: !2627)
!2644 = !DILocation(line: 1067, column: 23, scope: !2627)
!2645 = !DILocation(line: 1068, column: 18, scope: !2627)
!2646 = !DILocation(line: 1068, column: 23, scope: !2627)
!2647 = !DILocation(line: 1069, column: 22, scope: !2627)
!2648 = !DILocation(line: 1069, column: 27, scope: !2627)
!2649 = !DILocation(line: 1070, column: 18, scope: !2627)
!2650 = !DILocation(line: 1070, column: 22, scope: !2627)
!2651 = !DILocation(line: 1072, column: 7, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2627, file: !2628, line: 1072, column: 7)
!2653 = !DILocation(line: 1072, column: 7, scope: !2627)
!2654 = !DILocation(line: 1075, column: 30, scope: !2627)
!2655 = !DILocation(line: 1075, column: 3, scope: !2627)
!2656 = !DILocation(line: 1077, column: 10, scope: !2627)
!2657 = !DILocation(line: 1077, column: 3, scope: !2627)
!2658 = !DILocation(line: 1078, column: 1, scope: !2627)
!2659 = distinct !DISubprogram(name: "end_imm_use_stmt_p", scope: !2628, file: !2628, line: 969, type: !2660, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2664)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!651, !2662}
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2568)
!2664 = !{!2665}
!2665 = !DILocalVariable(name: "imm", arg: 1, scope: !2659, file: !2628, line: 969, type: !2662)
!2666 = !DILocation(line: 0, scope: !2659)
!2667 = !DILocation(line: 971, column: 16, scope: !2659)
!2668 = !DILocation(line: 971, column: 32, scope: !2659)
!2669 = !DILocation(line: 971, column: 24, scope: !2659)
!2670 = !DILocation(line: 971, column: 10, scope: !2659)
!2671 = !DILocation(line: 971, column: 3, scope: !2659)
!2672 = distinct !DISubprogram(name: "first_imm_use_on_stmt", scope: !2628, file: !2628, line: 1101, type: !2673, scopeLine: 1102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2675)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!659, !2631}
!2675 = !{!2676}
!2676 = !DILocalVariable(name: "imm", arg: 1, scope: !2672, file: !2628, line: 1101, type: !2631)
!2677 = !DILocation(line: 0, scope: !2672)
!2678 = !DILocation(line: 1103, column: 29, scope: !2672)
!2679 = !DILocation(line: 1103, column: 38, scope: !2672)
!2680 = !DILocation(line: 1103, column: 8, scope: !2672)
!2681 = !DILocation(line: 1103, column: 22, scope: !2672)
!2682 = !DILocation(line: 1104, column: 3, scope: !2672)
!2683 = distinct !DISubprogram(name: "end_imm_use_on_stmt_p", scope: !2628, file: !2628, line: 1110, type: !2660, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2684)
!2684 = !{!2685}
!2685 = !DILocalVariable(name: "imm", arg: 1, scope: !2683, file: !2628, line: 1110, type: !2662)
!2686 = !DILocation(line: 0, scope: !2683)
!2687 = !DILocation(line: 1112, column: 16, scope: !2683)
!2688 = !DILocation(line: 1112, column: 34, scope: !2683)
!2689 = !DILocation(line: 1112, column: 24, scope: !2683)
!2690 = !DILocation(line: 1112, column: 10, scope: !2683)
!2691 = !DILocation(line: 1112, column: 3, scope: !2683)
!2692 = distinct !DISubprogram(name: "set_ssa_use_from_ptr", scope: !2628, file: !2628, line: 233, type: !2693, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{null, !659, !853}
!2695 = !{!2696, !2697}
!2696 = !DILocalVariable(name: "use", arg: 1, scope: !2692, file: !2628, line: 233, type: !659)
!2697 = !DILocalVariable(name: "val", arg: 2, scope: !2692, file: !2628, line: 233, type: !853)
!2698 = !DILocation(line: 0, scope: !2692)
!2699 = !DILocation(line: 235, column: 3, scope: !2692)
!2700 = !DILocation(line: 236, column: 10, scope: !2692)
!2701 = !DILocation(line: 236, column: 15, scope: !2692)
!2702 = !DILocation(line: 237, column: 3, scope: !2692)
!2703 = !DILocation(line: 238, column: 1, scope: !2692)
!2704 = distinct !DISubprogram(name: "next_imm_use_on_stmt", scope: !2628, file: !2628, line: 1118, type: !2673, scopeLine: 1119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2705)
!2705 = !{!2706}
!2706 = !DILocalVariable(name: "imm", arg: 1, scope: !2704, file: !2628, line: 1118, type: !2631)
!2707 = !DILocation(line: 0, scope: !2704)
!2708 = !DILocation(line: 1120, column: 23, scope: !2704)
!2709 = !DILocation(line: 1120, column: 16, scope: !2704)
!2710 = !DILocation(line: 1121, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2704, file: !2628, line: 1121, column: 7)
!2712 = !DILocation(line: 1121, column: 7, scope: !2704)
!2713 = !DILocation(line: 1125, column: 33, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2711, file: !2628, line: 1124, column: 5)
!2715 = !DILocation(line: 1125, column: 42, scope: !2714)
!2716 = !DILocation(line: 1125, column: 26, scope: !2714)
!2717 = !DILocation(line: 1126, column: 7, scope: !2714)
!2718 = !DILocation(line: 0, scope: !2711)
!2719 = !DILocation(line: 1128, column: 1, scope: !2704)
!2720 = distinct !DISubprogram(name: "update_stmt", scope: !581, file: !581, line: 1456, type: !2562, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2721)
!2721 = !{!2722}
!2722 = !DILocalVariable(name: "s", arg: 1, scope: !2720, file: !581, line: 1456, type: !671)
!2723 = !DILocation(line: 0, scope: !2720)
!2724 = !DILocation(line: 1458, column: 7, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2720, file: !581, line: 1458, column: 7)
!2726 = !DILocation(line: 1458, column: 7, scope: !2720)
!2727 = !DILocation(line: 1460, column: 7, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2725, file: !581, line: 1459, column: 5)
!2729 = !DILocation(line: 1461, column: 7, scope: !2728)
!2730 = !DILocation(line: 1462, column: 5, scope: !2728)
!2731 = !DILocation(line: 1463, column: 1, scope: !2720)
!2732 = distinct !DISubprogram(name: "next_imm_use_stmt", scope: !2628, file: !2628, line: 1083, type: !2733, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!671, !2631}
!2735 = !{!2736}
!2736 = !DILocalVariable(name: "imm", arg: 1, scope: !2732, file: !2628, line: 1083, type: !2631)
!2737 = !DILocation(line: 0, scope: !2732)
!2738 = !DILocation(line: 1085, column: 33, scope: !2732)
!2739 = !DILocation(line: 1085, column: 16, scope: !2732)
!2740 = !DILocation(line: 1086, column: 7, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2732, file: !2628, line: 1086, column: 7)
!2742 = !DILocation(line: 1086, column: 7, scope: !2732)
!2743 = !DILocation(line: 1088, column: 26, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !2628, line: 1088, column: 11)
!2745 = distinct !DILexicalBlock(scope: !2741, file: !2628, line: 1087, column: 5)
!2746 = !DILocation(line: 1088, column: 31, scope: !2744)
!2747 = !DILocation(line: 1088, column: 11, scope: !2745)
!2748 = !DILocation(line: 1089, column: 24, scope: !2744)
!2749 = !DILocation(line: 1089, column: 2, scope: !2744)
!2750 = !DILocation(line: 1093, column: 30, scope: !2732)
!2751 = !DILocation(line: 1093, column: 3, scope: !2732)
!2752 = !DILocation(line: 1094, column: 10, scope: !2732)
!2753 = !DILocation(line: 1094, column: 3, scope: !2732)
!2754 = !DILocation(line: 1095, column: 1, scope: !2732)
!2755 = distinct !DISubprogram(name: "gate_dce", scope: !3, file: !3, line: 1414, type: !2048, scopeLine: 1415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2137)
!2756 = !DILocation(line: 1416, column: 10, scope: !2755)
!2757 = !DILocation(line: 1416, column: 24, scope: !2755)
!2758 = !DILocation(line: 1416, column: 3, scope: !2755)
!2759 = distinct !DISubprogram(name: "tree_ssa_dce", scope: !3, file: !3, line: 1389, type: !2052, scopeLine: 1390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2137)
!2760 = !DILocation(line: 1391, column: 10, scope: !2759)
!2761 = !DILocation(line: 1391, column: 3, scope: !2759)
!2762 = distinct !DISubprogram(name: "tree_ssa_dce_loop", scope: !3, file: !3, line: 1395, type: !2052, scopeLine: 1396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2763)
!2763 = !{!2764}
!2764 = !DILocalVariable(name: "todo", scope: !2762, file: !3, line: 1397, type: !7)
!2765 = !DILocation(line: 1398, column: 10, scope: !2762)
!2766 = !DILocation(line: 0, scope: !2762)
!2767 = !DILocation(line: 1399, column: 7, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1399, column: 7)
!2769 = !DILocation(line: 1399, column: 7, scope: !2762)
!2770 = !DILocation(line: 1401, column: 7, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 1400, column: 5)
!2772 = !DILocation(line: 1402, column: 7, scope: !2771)
!2773 = !DILocation(line: 1403, column: 5, scope: !2771)
!2774 = !DILocation(line: 1404, column: 3, scope: !2762)
!2775 = distinct !DISubprogram(name: "tree_ssa_cd_dce", scope: !3, file: !3, line: 1408, type: !2052, scopeLine: 1409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2137)
!2776 = !DILocation(line: 1410, column: 47, scope: !2775)
!2777 = !DILocation(line: 1410, column: 56, scope: !2775)
!2778 = !DILocation(line: 1410, column: 10, scope: !2775)
!2779 = !DILocation(line: 1410, column: 3, scope: !2775)
!2780 = distinct !DISubprogram(name: "link_use_stmts_after", scope: !2628, file: !2628, line: 1018, type: !2781, scopeLine: 1019, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !659, !2631}
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2789, !2790, !2803}
!2784 = !DILocalVariable(name: "head", arg: 1, scope: !2780, file: !2628, line: 1018, type: !659)
!2785 = !DILocalVariable(name: "imm", arg: 2, scope: !2780, file: !2628, line: 1018, type: !2631)
!2786 = !DILocalVariable(name: "use_p", scope: !2780, file: !2628, line: 1020, type: !659)
!2787 = !DILocalVariable(name: "last_p", scope: !2780, file: !2628, line: 1021, type: !659)
!2788 = !DILocalVariable(name: "head_stmt", scope: !2780, file: !2628, line: 1022, type: !671)
!2789 = !DILocalVariable(name: "use", scope: !2780, file: !2628, line: 1023, type: !853)
!2790 = !DILocalVariable(name: "op_iter", scope: !2780, file: !2628, line: 1024, type: !2791)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !574, line: 140, baseType: !2792)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !574, line: 131, size: 320, elements: !2793)
!2793 = !{!2794, !2795, !2796, !2798, !2800, !2801, !2802}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2792, file: !574, line: 133, baseType: !651, size: 8)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2792, file: !574, line: 134, baseType: !573, size: 32, offset: 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2792, file: !574, line: 135, baseType: !2797, size: 64, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !574, line: 42, baseType: !1259)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2792, file: !574, line: 136, baseType: !2799, size: 64, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !574, line: 50, baseType: !1266)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !2792, file: !574, line: 137, baseType: !652, size: 32, offset: 192)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !2792, file: !574, line: 138, baseType: !652, size: 32, offset: 224)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !2792, file: !574, line: 139, baseType: !671, size: 64, offset: 256)
!2803 = !DILocalVariable(name: "flag", scope: !2780, file: !2628, line: 1025, type: !652)
!2804 = !DILocation(line: 0, scope: !2780)
!2805 = !DILocation(line: 1022, column: 22, scope: !2780)
!2806 = !DILocation(line: 1023, column: 14, scope: !2780)
!2807 = !DILocation(line: 1024, column: 3, scope: !2780)
!2808 = !DILocation(line: 1028, column: 11, scope: !2780)
!2809 = !DILocation(line: 1030, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2780, file: !2628, line: 1030, column: 7)
!2811 = !DILocation(line: 1030, column: 31, scope: !2810)
!2812 = !DILocation(line: 1030, column: 7, scope: !2780)
!2813 = !DILocation(line: 1032, column: 7, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !2628, line: 1032, column: 7)
!2815 = distinct !DILexicalBlock(scope: !2810, file: !2628, line: 1031, column: 5)
!2816 = !DILocation(line: 0, scope: !2814)
!2817 = !DILocation(line: 1032, column: 7, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2814, file: !2628, line: 1032, column: 7)
!2819 = !DILocation(line: 1033, column: 6, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2818, file: !2628, line: 1033, column: 6)
!2821 = !DILocation(line: 1033, column: 27, scope: !2820)
!2822 = !DILocation(line: 1033, column: 6, scope: !2818)
!2823 = !DILocation(line: 1034, column: 13, scope: !2820)
!2824 = !DILocation(line: 1034, column: 4, scope: !2820)
!2825 = distinct !{!2825, !2813, !2826}
!2826 = !DILocation(line: 1034, column: 53, scope: !2814)
!2827 = !DILocation(line: 1038, column: 11, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2810, file: !2628, line: 1037, column: 5)
!2829 = !DILocation(line: 1040, column: 4, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !2628, line: 1040, column: 4)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !2628, line: 1039, column: 2)
!2832 = distinct !DILexicalBlock(scope: !2828, file: !2628, line: 1038, column: 11)
!2833 = !DILocation(line: 0, scope: !2830)
!2834 = !DILocation(line: 1040, column: 4, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2830, file: !2628, line: 1040, column: 4)
!2836 = !DILocation(line: 1041, column: 10, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2835, file: !2628, line: 1041, column: 10)
!2838 = !DILocation(line: 1041, column: 31, scope: !2837)
!2839 = !DILocation(line: 1041, column: 10, scope: !2835)
!2840 = !DILocation(line: 1042, column: 17, scope: !2837)
!2841 = !DILocation(line: 1042, column: 8, scope: !2837)
!2842 = distinct !{!2842, !2829, !2843}
!2843 = !DILocation(line: 1042, column: 57, scope: !2830)
!2844 = !DILocation(line: 1044, column: 25, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2832, file: !2628, line: 1044, column: 16)
!2846 = !DILocation(line: 1044, column: 53, scope: !2845)
!2847 = !DILocation(line: 1044, column: 16, scope: !2832)
!2848 = !DILocation(line: 1046, column: 8, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !2628, line: 1046, column: 8)
!2850 = distinct !DILexicalBlock(scope: !2845, file: !2628, line: 1045, column: 2)
!2851 = !DILocation(line: 1046, column: 29, scope: !2849)
!2852 = !DILocation(line: 1046, column: 8, scope: !2850)
!2853 = !DILocation(line: 1047, column: 15, scope: !2849)
!2854 = !DILocation(line: 1047, column: 6, scope: !2849)
!2855 = !DILocation(line: 1051, column: 22, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2780, file: !2628, line: 1051, column: 7)
!2857 = !DILocation(line: 1021, column: 17, scope: !2780)
!2858 = !DILocation(line: 1051, column: 27, scope: !2856)
!2859 = !DILocation(line: 1051, column: 7, scope: !2780)
!2860 = !DILocation(line: 1052, column: 27, scope: !2856)
!2861 = !DILocation(line: 1052, column: 5, scope: !2856)
!2862 = !DILocation(line: 1053, column: 32, scope: !2780)
!2863 = !DILocation(line: 1053, column: 3, scope: !2780)
!2864 = !DILocation(line: 1054, column: 1, scope: !2780)
!2865 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2628, file: !2628, line: 427, type: !2866, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2868)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!853, !659}
!2868 = !{!2869}
!2869 = !DILocalVariable(name: "use", arg: 1, scope: !2865, file: !2628, line: 427, type: !659)
!2870 = !DILocation(line: 0, scope: !2865)
!2871 = !DILocation(line: 429, column: 17, scope: !2865)
!2872 = !DILocation(line: 429, column: 10, scope: !2865)
!2873 = !DILocation(line: 429, column: 3, scope: !2865)
!2874 = distinct !DISubprogram(name: "gimple_code", scope: !581, file: !581, line: 1052, type: !2875, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!580, !2621}
!2877 = !{!2878}
!2878 = !DILocalVariable(name: "g", arg: 1, scope: !2874, file: !581, line: 1052, type: !2621)
!2879 = !DILocation(line: 0, scope: !2874)
!2880 = !DILocation(line: 1054, column: 20, scope: !2874)
!2881 = !DILocation(line: 1054, column: 3, scope: !2874)
!2882 = distinct !DISubprogram(name: "op_iter_init_phiuse", scope: !2628, file: !2628, line: 910, type: !2883, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2886)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!659, !2885, !671, !652}
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2886 = !{!2887, !2888, !2889, !2890, !2891}
!2887 = !DILocalVariable(name: "ptr", arg: 1, scope: !2882, file: !2628, line: 910, type: !2885)
!2888 = !DILocalVariable(name: "phi", arg: 2, scope: !2882, file: !2628, line: 910, type: !671)
!2889 = !DILocalVariable(name: "flags", arg: 3, scope: !2882, file: !2628, line: 910, type: !652)
!2890 = !DILocalVariable(name: "phi_def", scope: !2882, file: !2628, line: 912, type: !853)
!2891 = !DILocalVariable(name: "comp", scope: !2882, file: !2628, line: 913, type: !652)
!2892 = !DILocation(line: 0, scope: !2882)
!2893 = !DILocation(line: 912, column: 18, scope: !2882)
!2894 = !DILocation(line: 915, column: 3, scope: !2882)
!2895 = !DILocation(line: 916, column: 8, scope: !2882)
!2896 = !DILocation(line: 916, column: 13, scope: !2882)
!2897 = !DILocation(line: 918, column: 3, scope: !2882)
!2898 = !DILocation(line: 920, column: 11, scope: !2882)
!2899 = !DILocation(line: 923, column: 14, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2882, file: !2628, line: 923, column: 7)
!2901 = !DILocation(line: 923, column: 22, scope: !2900)
!2902 = !DILocation(line: 923, column: 7, scope: !2882)
!2903 = !DILocation(line: 925, column: 17, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2900, file: !2628, line: 924, column: 5)
!2905 = !DILocation(line: 926, column: 7, scope: !2904)
!2906 = !DILocation(line: 929, column: 8, scope: !2882)
!2907 = !DILocation(line: 929, column: 17, scope: !2882)
!2908 = !DILocation(line: 930, column: 18, scope: !2882)
!2909 = !DILocation(line: 930, column: 8, scope: !2882)
!2910 = !DILocation(line: 930, column: 16, scope: !2882)
!2911 = !DILocation(line: 931, column: 8, scope: !2882)
!2912 = !DILocation(line: 931, column: 18, scope: !2882)
!2913 = !DILocation(line: 932, column: 10, scope: !2882)
!2914 = !DILocation(line: 932, column: 3, scope: !2882)
!2915 = !DILocation(line: 933, column: 1, scope: !2882)
!2916 = distinct !DISubprogram(name: "op_iter_done", scope: !2628, file: !2628, line: 652, type: !2917, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2921)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!651, !2919}
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2791)
!2921 = !{!2922}
!2922 = !DILocalVariable(name: "ptr", arg: 1, scope: !2916, file: !2628, line: 652, type: !2919)
!2923 = !DILocation(line: 0, scope: !2916)
!2924 = !DILocation(line: 654, column: 15, scope: !2916)
!2925 = !DILocation(line: 654, column: 3, scope: !2916)
!2926 = distinct !DISubprogram(name: "move_use_after_head", scope: !2628, file: !2628, line: 990, type: !2927, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!659, !659, !659, !659}
!2929 = !{!2930, !2931, !2932}
!2930 = !DILocalVariable(name: "use_p", arg: 1, scope: !2926, file: !2628, line: 990, type: !659)
!2931 = !DILocalVariable(name: "head", arg: 2, scope: !2926, file: !2628, line: 990, type: !659)
!2932 = !DILocalVariable(name: "last_p", arg: 3, scope: !2926, file: !2628, line: 991, type: !659)
!2933 = !DILocation(line: 0, scope: !2926)
!2934 = !DILocation(line: 997, column: 13, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2926, file: !2628, line: 997, column: 7)
!2936 = !DILocation(line: 997, column: 7, scope: !2926)
!2937 = !DILocation(line: 1000, column: 19, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !2628, line: 1000, column: 11)
!2939 = distinct !DILexicalBlock(scope: !2935, file: !2628, line: 998, column: 5)
!2940 = !DILocation(line: 1000, column: 24, scope: !2938)
!2941 = !DILocation(line: 1000, column: 11, scope: !2939)
!2942 = !DILocation(line: 1005, column: 4, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2938, file: !2628, line: 1003, column: 2)
!2944 = !DILocation(line: 1006, column: 4, scope: !2943)
!2945 = !DILocation(line: 1010, column: 3, scope: !2926)
!2946 = distinct !DISubprogram(name: "op_iter_next_use", scope: !2628, file: !2628, line: 659, type: !2947, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!659, !2885}
!2949 = !{!2950, !2951}
!2950 = !DILocalVariable(name: "ptr", arg: 1, scope: !2946, file: !2628, line: 659, type: !2885)
!2951 = !DILocalVariable(name: "use_p", scope: !2946, file: !2628, line: 661, type: !659)
!2952 = !DILocation(line: 0, scope: !2946)
!2953 = !DILocation(line: 665, column: 12, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2946, file: !2628, line: 665, column: 7)
!2955 = !DILocation(line: 665, column: 7, scope: !2954)
!2956 = !DILocation(line: 665, column: 7, scope: !2946)
!2957 = !DILocation(line: 667, column: 15, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2954, file: !2628, line: 666, column: 5)
!2959 = !DILocation(line: 668, column: 30, scope: !2958)
!2960 = !DILocation(line: 668, column: 17, scope: !2958)
!2961 = !DILocation(line: 669, column: 7, scope: !2958)
!2962 = !DILocation(line: 671, column: 12, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2946, file: !2628, line: 671, column: 7)
!2964 = !DILocation(line: 671, column: 25, scope: !2963)
!2965 = !DILocation(line: 671, column: 18, scope: !2963)
!2966 = !DILocation(line: 671, column: 7, scope: !2946)
!2967 = !DILocation(line: 673, column: 14, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2963, file: !2628, line: 672, column: 5)
!2969 = !DILocation(line: 673, column: 7, scope: !2968)
!2970 = !DILocation(line: 675, column: 8, scope: !2946)
!2971 = !DILocation(line: 675, column: 13, scope: !2946)
!2972 = !DILocation(line: 676, column: 3, scope: !2946)
!2973 = !DILocation(line: 677, column: 1, scope: !2946)
!2974 = distinct !DISubprogram(name: "op_iter_init_use", scope: !2628, file: !2628, line: 768, type: !2883, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2975)
!2975 = !{!2976, !2977, !2978}
!2976 = !DILocalVariable(name: "ptr", arg: 1, scope: !2974, file: !2628, line: 768, type: !2885)
!2977 = !DILocalVariable(name: "stmt", arg: 2, scope: !2974, file: !2628, line: 768, type: !671)
!2978 = !DILocalVariable(name: "flags", arg: 3, scope: !2974, file: !2628, line: 768, type: !652)
!2979 = !DILocation(line: 0, scope: !2974)
!2980 = !DILocation(line: 770, column: 3, scope: !2974)
!2981 = !DILocation(line: 772, column: 3, scope: !2974)
!2982 = !DILocation(line: 773, column: 8, scope: !2974)
!2983 = !DILocation(line: 773, column: 18, scope: !2974)
!2984 = !DILocation(line: 774, column: 10, scope: !2974)
!2985 = !DILocation(line: 774, column: 3, scope: !2974)
!2986 = distinct !DISubprogram(name: "gimple_vuse_op", scope: !581, file: !581, line: 1334, type: !2987, scopeLine: 1335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!659, !2621}
!2989 = !{!2990, !2991}
!2990 = !DILocalVariable(name: "g", arg: 1, scope: !2986, file: !581, line: 1334, type: !2621)
!2991 = !DILocalVariable(name: "ops", scope: !2986, file: !581, line: 1336, type: !1266)
!2992 = !DILocation(line: 0, scope: !2986)
!2993 = !DILocation(line: 1337, column: 8, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2986, file: !581, line: 1337, column: 7)
!2995 = !DILocation(line: 1337, column: 7, scope: !2986)
!2996 = !DILocation(line: 1339, column: 25, scope: !2986)
!2997 = !DILocation(line: 1340, column: 7, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2986, file: !581, line: 1340, column: 7)
!2999 = !DILocation(line: 1341, column: 7, scope: !2998)
!3000 = !DILocation(line: 1341, column: 28, scope: !2998)
!3001 = !DILocation(line: 1341, column: 49, scope: !2998)
!3002 = !DILocation(line: 1341, column: 32, scope: !2998)
!3003 = !DILocation(line: 1342, column: 12, scope: !2998)
!3004 = !DILocation(line: 1340, column: 7, scope: !2986)
!3005 = !DILocation(line: 1344, column: 1, scope: !2986)
!3006 = distinct !DISubprogram(name: "delink_imm_use", scope: !2628, file: !2628, line: 188, type: !3007, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{null, !660}
!3009 = !{!3010}
!3010 = !DILocalVariable(name: "linknode", arg: 1, scope: !3006, file: !2628, line: 188, type: !660)
!3011 = !DILocation(line: 0, scope: !3006)
!3012 = !DILocation(line: 191, column: 17, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3006, file: !2628, line: 191, column: 7)
!3014 = !DILocation(line: 191, column: 22, scope: !3013)
!3015 = !DILocation(line: 191, column: 7, scope: !3006)
!3016 = !DILocation(line: 194, column: 36, scope: !3006)
!3017 = !DILocation(line: 194, column: 19, scope: !3006)
!3018 = !DILocation(line: 194, column: 24, scope: !3006)
!3019 = !DILocation(line: 195, column: 36, scope: !3006)
!3020 = !DILocation(line: 195, column: 13, scope: !3006)
!3021 = !DILocation(line: 195, column: 24, scope: !3006)
!3022 = !DILocation(line: 196, column: 18, scope: !3006)
!3023 = !DILocation(line: 197, column: 18, scope: !3006)
!3024 = !DILocation(line: 198, column: 1, scope: !3006)
!3025 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !2628, file: !2628, line: 202, type: !3026, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3028)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{null, !660, !660}
!3028 = !{!3029, !3030}
!3029 = !DILocalVariable(name: "linknode", arg: 1, scope: !3025, file: !2628, line: 202, type: !660)
!3030 = !DILocalVariable(name: "list", arg: 2, scope: !3025, file: !2628, line: 202, type: !660)
!3031 = !DILocation(line: 0, scope: !3025)
!3032 = !DILocation(line: 206, column: 13, scope: !3025)
!3033 = !DILocation(line: 206, column: 18, scope: !3025)
!3034 = !DILocation(line: 207, column: 26, scope: !3025)
!3035 = !DILocation(line: 207, column: 13, scope: !3025)
!3036 = !DILocation(line: 207, column: 18, scope: !3025)
!3037 = !DILocation(line: 208, column: 9, scope: !3025)
!3038 = !DILocation(line: 208, column: 15, scope: !3025)
!3039 = !DILocation(line: 208, column: 20, scope: !3025)
!3040 = !DILocation(line: 209, column: 14, scope: !3025)
!3041 = !DILocation(line: 210, column: 1, scope: !3025)
!3042 = distinct !DISubprogram(name: "clear_and_done_ssa_iter", scope: !2628, file: !2628, line: 729, type: !3043, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3045)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{null, !2885}
!3045 = !{!3046}
!3046 = !DILocalVariable(name: "ptr", arg: 1, scope: !3042, file: !2628, line: 729, type: !2885)
!3047 = !DILocation(line: 0, scope: !3042)
!3048 = !DILocation(line: 731, column: 8, scope: !3042)
!3049 = !DILocation(line: 731, column: 13, scope: !3042)
!3050 = !DILocation(line: 732, column: 8, scope: !3042)
!3051 = !DILocation(line: 732, column: 13, scope: !3042)
!3052 = !DILocation(line: 733, column: 8, scope: !3042)
!3053 = !DILocation(line: 733, column: 18, scope: !3042)
!3054 = !DILocation(line: 734, column: 8, scope: !3042)
!3055 = !DILocation(line: 734, column: 14, scope: !3042)
!3056 = !DILocation(line: 735, column: 8, scope: !3042)
!3057 = !DILocation(line: 735, column: 16, scope: !3042)
!3058 = !DILocation(line: 736, column: 8, scope: !3042)
!3059 = !DILocation(line: 736, column: 17, scope: !3042)
!3060 = !DILocation(line: 737, column: 8, scope: !3042)
!3061 = !DILocation(line: 737, column: 13, scope: !3042)
!3062 = !DILocation(line: 738, column: 1, scope: !3042)
!3063 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !581, file: !581, line: 3061, type: !3064, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!7, !2621}
!3066 = !{!3067}
!3067 = !DILocalVariable(name: "gs", arg: 1, scope: !3063, file: !581, line: 3061, type: !2621)
!3068 = !DILocation(line: 0, scope: !3063)
!3069 = !DILocation(line: 3064, column: 25, scope: !3063)
!3070 = !DILocation(line: 3064, column: 3, scope: !3063)
!3071 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2628, file: !2628, line: 442, type: !3072, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!659, !671, !652}
!3074 = !{!3075, !3076}
!3075 = !DILocalVariable(name: "gs", arg: 1, scope: !3071, file: !2628, line: 442, type: !671)
!3076 = !DILocalVariable(name: "i", arg: 2, scope: !3071, file: !2628, line: 442, type: !652)
!3077 = !DILocation(line: 0, scope: !3071)
!3078 = !DILocation(line: 444, column: 11, scope: !3071)
!3079 = !DILocation(line: 444, column: 35, scope: !3071)
!3080 = !DILocation(line: 444, column: 3, scope: !3071)
!3081 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !581, file: !581, line: 3100, type: !3082, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3085)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!3084, !671, !7}
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!3085 = !{!3086, !3087}
!3086 = !DILocalVariable(name: "gs", arg: 1, scope: !3081, file: !581, line: 3100, type: !671)
!3087 = !DILocalVariable(name: "index", arg: 2, scope: !3081, file: !581, line: 3100, type: !7)
!3088 = !DILocation(line: 0, scope: !3081)
!3089 = !DILocation(line: 3103, column: 3, scope: !3081)
!3090 = !DILocation(line: 3104, column: 12, scope: !3081)
!3091 = !DILocation(line: 3104, column: 3, scope: !3081)
!3092 = distinct !DISubprogram(name: "op_iter_init", scope: !2628, file: !2628, line: 742, type: !3093, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{null, !2885, !671, !652}
!3095 = !{!3096, !3097, !3098}
!3096 = !DILocalVariable(name: "ptr", arg: 1, scope: !3092, file: !2628, line: 742, type: !2885)
!3097 = !DILocalVariable(name: "stmt", arg: 2, scope: !3092, file: !2628, line: 742, type: !671)
!3098 = !DILocalVariable(name: "flags", arg: 3, scope: !3092, file: !2628, line: 742, type: !652)
!3099 = !DILocation(line: 0, scope: !3092)
!3100 = !DILocation(line: 746, column: 3, scope: !3092)
!3101 = !DILocation(line: 748, column: 22, scope: !3092)
!3102 = !DILocation(line: 748, column: 15, scope: !3092)
!3103 = !DILocation(line: 748, column: 52, scope: !3092)
!3104 = !DILocation(line: 748, column: 8, scope: !3092)
!3105 = !DILocation(line: 748, column: 13, scope: !3092)
!3106 = !DILocation(line: 749, column: 15, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3092, file: !2628, line: 749, column: 7)
!3108 = !DILocation(line: 750, column: 7, scope: !3107)
!3109 = !DILocation(line: 750, column: 10, scope: !3107)
!3110 = !DILocation(line: 751, column: 7, scope: !3107)
!3111 = !DILocation(line: 751, column: 10, scope: !3107)
!3112 = !DILocation(line: 751, column: 29, scope: !3107)
!3113 = !DILocation(line: 749, column: 7, scope: !3092)
!3114 = !DILocation(line: 752, column: 22, scope: !3107)
!3115 = !DILocation(line: 752, column: 28, scope: !3107)
!3116 = !DILocation(line: 752, column: 15, scope: !3107)
!3117 = !DILocation(line: 752, column: 5, scope: !3107)
!3118 = !DILocation(line: 753, column: 22, scope: !3092)
!3119 = !DILocation(line: 753, column: 15, scope: !3092)
!3120 = !DILocation(line: 753, column: 52, scope: !3092)
!3121 = !DILocation(line: 753, column: 8, scope: !3092)
!3122 = !DILocation(line: 753, column: 13, scope: !3092)
!3123 = !DILocation(line: 754, column: 15, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3092, file: !2628, line: 754, column: 7)
!3125 = !DILocation(line: 755, column: 7, scope: !3124)
!3126 = !DILocation(line: 755, column: 10, scope: !3124)
!3127 = !DILocation(line: 756, column: 7, scope: !3124)
!3128 = !DILocation(line: 756, column: 10, scope: !3124)
!3129 = !DILocation(line: 756, column: 29, scope: !3124)
!3130 = !DILocation(line: 754, column: 7, scope: !3092)
!3131 = !DILocation(line: 757, column: 22, scope: !3124)
!3132 = !DILocation(line: 757, column: 28, scope: !3124)
!3133 = !DILocation(line: 757, column: 15, scope: !3124)
!3134 = !DILocation(line: 757, column: 5, scope: !3124)
!3135 = !DILocation(line: 758, column: 8, scope: !3092)
!3136 = !DILocation(line: 758, column: 13, scope: !3092)
!3137 = !DILocation(line: 760, column: 8, scope: !3092)
!3138 = !DILocation(line: 760, column: 14, scope: !3092)
!3139 = !DILocation(line: 761, column: 8, scope: !3092)
!3140 = !DILocation(line: 761, column: 16, scope: !3092)
!3141 = !DILocation(line: 762, column: 8, scope: !3092)
!3142 = !DILocation(line: 762, column: 17, scope: !3092)
!3143 = !DILocation(line: 763, column: 1, scope: !3092)
!3144 = distinct !DISubprogram(name: "gimple_def_ops", scope: !581, file: !581, line: 1292, type: !3145, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3147)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!1259, !2621}
!3147 = !{!3148}
!3148 = !DILocalVariable(name: "g", arg: 1, scope: !3144, file: !581, line: 1292, type: !2621)
!3149 = !DILocation(line: 0, scope: !3144)
!3150 = !DILocation(line: 1294, column: 8, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3144, file: !581, line: 1294, column: 7)
!3152 = !DILocation(line: 1294, column: 7, scope: !3144)
!3153 = !DILocation(line: 1296, column: 26, scope: !3144)
!3154 = !DILocation(line: 1296, column: 3, scope: !3144)
!3155 = !DILocation(line: 1297, column: 1, scope: !3144)
!3156 = distinct !DISubprogram(name: "gimple_vdef", scope: !581, file: !581, line: 1375, type: !2619, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3157)
!3157 = !{!3158}
!3158 = !DILocalVariable(name: "g", arg: 1, scope: !3156, file: !581, line: 1375, type: !2621)
!3159 = !DILocation(line: 0, scope: !3156)
!3160 = !DILocation(line: 1377, column: 8, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3156, file: !581, line: 1377, column: 7)
!3162 = !DILocation(line: 1377, column: 7, scope: !3156)
!3163 = !DILocation(line: 1379, column: 23, scope: !3156)
!3164 = !DILocation(line: 1379, column: 3, scope: !3156)
!3165 = !DILocation(line: 1380, column: 1, scope: !3156)
!3166 = distinct !DISubprogram(name: "gimple_use_ops", scope: !581, file: !581, line: 1313, type: !3167, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3169)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!1266, !2621}
!3169 = !{!3170}
!3170 = !DILocalVariable(name: "g", arg: 1, scope: !3166, file: !581, line: 1313, type: !2621)
!3171 = !DILocation(line: 0, scope: !3166)
!3172 = !DILocation(line: 1315, column: 8, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3166, file: !581, line: 1315, column: 7)
!3174 = !DILocation(line: 1315, column: 7, scope: !3166)
!3175 = !DILocation(line: 1317, column: 26, scope: !3166)
!3176 = !DILocation(line: 1317, column: 3, scope: !3166)
!3177 = !DILocation(line: 1318, column: 1, scope: !3166)
!3178 = distinct !DISubprogram(name: "gimple_vuse", scope: !581, file: !581, line: 1365, type: !2619, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3179)
!3179 = !{!3180}
!3180 = !DILocalVariable(name: "g", arg: 1, scope: !3178, file: !581, line: 1365, type: !2621)
!3181 = !DILocation(line: 0, scope: !3178)
!3182 = !DILocation(line: 1367, column: 8, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3178, file: !581, line: 1367, column: 7)
!3184 = !DILocation(line: 1367, column: 7, scope: !3178)
!3185 = !DILocation(line: 1369, column: 23, scope: !3178)
!3186 = !DILocation(line: 1369, column: 3, scope: !3178)
!3187 = !DILocation(line: 1370, column: 1, scope: !3178)
!3188 = distinct !DISubprogram(name: "gimple_has_ops", scope: !581, file: !581, line: 1274, type: !3189, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3191)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!651, !2621}
!3191 = !{!3192}
!3192 = !DILocalVariable(name: "g", arg: 1, scope: !3188, file: !581, line: 1274, type: !2621)
!3193 = !DILocation(line: 0, scope: !3188)
!3194 = !DILocation(line: 1276, column: 10, scope: !3188)
!3195 = !DILocation(line: 1276, column: 26, scope: !3188)
!3196 = !DILocation(line: 1276, column: 41, scope: !3188)
!3197 = !DILocation(line: 1276, column: 44, scope: !3188)
!3198 = !DILocation(line: 1276, column: 60, scope: !3188)
!3199 = !DILocation(line: 1276, column: 3, scope: !3188)
!3200 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !581, file: !581, line: 1283, type: !3189, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3201)
!3201 = !{!3202}
!3202 = !DILocalVariable(name: "g", arg: 1, scope: !3200, file: !581, line: 1283, type: !2621)
!3203 = !DILocation(line: 0, scope: !3200)
!3204 = !DILocation(line: 1285, column: 10, scope: !3200)
!3205 = !DILocation(line: 1285, column: 26, scope: !3200)
!3206 = !DILocation(line: 1285, column: 43, scope: !3200)
!3207 = !DILocation(line: 1285, column: 46, scope: !3200)
!3208 = !DILocation(line: 1285, column: 62, scope: !3200)
!3209 = !DILocation(line: 1285, column: 3, scope: !3200)
!3210 = distinct !DISubprogram(name: "link_imm_use", scope: !2628, file: !2628, line: 214, type: !3211, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !660, !853}
!3213 = !{!3214, !3215, !3216}
!3214 = !DILocalVariable(name: "linknode", arg: 1, scope: !3210, file: !2628, line: 214, type: !660)
!3215 = !DILocalVariable(name: "def", arg: 2, scope: !3210, file: !2628, line: 214, type: !853)
!3216 = !DILocalVariable(name: "root", scope: !3210, file: !2628, line: 216, type: !660)
!3217 = !DILocation(line: 0, scope: !3210)
!3218 = !DILocation(line: 218, column: 8, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3210, file: !2628, line: 218, column: 7)
!3220 = !DILocation(line: 218, column: 12, scope: !3219)
!3221 = !DILocation(line: 218, column: 15, scope: !3219)
!3222 = !DILocation(line: 218, column: 31, scope: !3219)
!3223 = !DILocation(line: 218, column: 7, scope: !3210)
!3224 = !DILocation(line: 219, column: 15, scope: !3219)
!3225 = !DILocation(line: 219, column: 20, scope: !3219)
!3226 = !DILocation(line: 219, column: 5, scope: !3219)
!3227 = !DILocation(line: 222, column: 16, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3219, file: !2628, line: 221, column: 5)
!3229 = !DILocation(line: 227, column: 7, scope: !3228)
!3230 = !DILocation(line: 229, column: 1, scope: !3210)
!3231 = distinct !DISubprogram(name: "perform_tree_ssa_dce", scope: !3, file: !3, line: 1315, type: !3232, scopeLine: 1316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3234)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!7, !651}
!3234 = !{!3235, !3236, !3244}
!3235 = !DILocalVariable(name: "aggressive", arg: 1, scope: !3231, file: !3, line: 1315, type: !651)
!3236 = !DILocalVariable(name: "el", scope: !3231, file: !3, line: 1317, type: !3237)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_list", file: !135, line: 572, size: 128, elements: !3239)
!3239 = !{!3240, !3241, !3242}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !3238, file: !135, line: 574, baseType: !652, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "num_edges", scope: !3238, file: !135, line: 575, baseType: !652, size: 32, offset: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "index_to_edge", scope: !3238, file: !135, line: 576, baseType: !3243, size: 64, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!3244 = !DILocalVariable(name: "something_changed", scope: !3231, file: !3, line: 1318, type: !651)
!3245 = !DILocation(line: 0, scope: !3231)
!3246 = !DILocation(line: 1323, column: 7, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 1323, column: 7)
!3248 = !DILocation(line: 1323, column: 7, scope: !3231)
!3249 = !DILocation(line: 1324, column: 5, scope: !3247)
!3250 = !DILocation(line: 1327, column: 3, scope: !3231)
!3251 = !DILocation(line: 1329, column: 7, scope: !3231)
!3252 = !DILocation(line: 1332, column: 7, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 1332, column: 7)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 1332, column: 7)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !3, line: 1330, column: 5)
!3256 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 1329, column: 7)
!3257 = !DILocation(line: 1332, column: 7, scope: !3254)
!3258 = !DILocation(line: 1333, column: 7, scope: !3255)
!3259 = !DILocation(line: 1334, column: 12, scope: !3255)
!3260 = !DILocation(line: 1335, column: 7, scope: !3255)
!3261 = !DILocation(line: 1336, column: 7, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 1336, column: 7)
!3263 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 1336, column: 7)
!3264 = !DILocation(line: 1336, column: 7, scope: !3263)
!3265 = !DILocation(line: 1338, column: 48, scope: !3255)
!3266 = !DILocation(line: 1338, column: 33, scope: !3255)
!3267 = !DILocation(line: 1338, column: 31, scope: !3255)
!3268 = !DILocation(line: 1339, column: 7, scope: !3255)
!3269 = !DILocation(line: 1341, column: 7, scope: !3255)
!3270 = !DILocation(line: 1342, column: 5, scope: !3255)
!3271 = !DILocation(line: 1344, column: 3, scope: !3231)
!3272 = !DILocation(line: 1346, column: 7, scope: !3231)
!3273 = !DILocation(line: 1347, column: 5, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 1346, column: 7)
!3275 = !DILocation(line: 1349, column: 17, scope: !3231)
!3276 = !DILocation(line: 1350, column: 15, scope: !3231)
!3277 = !DILocation(line: 1351, column: 12, scope: !3231)
!3278 = !DILocation(line: 1352, column: 14, scope: !3231)
!3279 = !DILocation(line: 1353, column: 13, scope: !3231)
!3280 = !DILocation(line: 1353, column: 11, scope: !3231)
!3281 = !DILocation(line: 1354, column: 3, scope: !3231)
!3282 = !DILocation(line: 1355, column: 3, scope: !3231)
!3283 = !DILocation(line: 1357, column: 24, scope: !3231)
!3284 = !DILocation(line: 1358, column: 24, scope: !3231)
!3285 = !DILocation(line: 1358, column: 21, scope: !3231)
!3286 = !DILocation(line: 1361, column: 3, scope: !3231)
!3287 = !DILocation(line: 1366, column: 7, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 1366, column: 7)
!3289 = !DILocation(line: 1366, column: 7, scope: !3231)
!3290 = !DILocation(line: 1367, column: 5, scope: !3288)
!3291 = !DILocation(line: 1369, column: 29, scope: !3231)
!3292 = !DILocation(line: 1369, column: 63, scope: !3231)
!3293 = !DILocation(line: 1369, column: 3, scope: !3231)
!3294 = !DILocation(line: 1370, column: 29, scope: !3231)
!3295 = !DILocation(line: 1370, column: 62, scope: !3231)
!3296 = !DILocation(line: 1370, column: 3, scope: !3231)
!3297 = !DILocation(line: 1373, column: 7, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 1373, column: 7)
!3299 = !DILocation(line: 1373, column: 17, scope: !3298)
!3300 = !DILocation(line: 1373, column: 21, scope: !3298)
!3301 = !DILocation(line: 1373, column: 32, scope: !3298)
!3302 = !DILocation(line: 1373, column: 7, scope: !3231)
!3303 = !DILocation(line: 1374, column: 5, scope: !3298)
!3304 = !DILocation(line: 1376, column: 3, scope: !3231)
!3305 = !DILocation(line: 1378, column: 3, scope: !3231)
!3306 = !DILocation(line: 1380, column: 7, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 1380, column: 7)
!3308 = !DILocation(line: 0, scope: !3307)
!3309 = !DILocation(line: 1385, column: 1, scope: !3231)
!3310 = distinct !DISubprogram(name: "tree_dce_init", scope: !3, file: !3, line: 1251, type: !3311, scopeLine: 1252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{null, !651}
!3313 = !{!3314, !3315}
!3314 = !DILocalVariable(name: "aggressive", arg: 1, scope: !3310, file: !3, line: 1251, type: !651)
!3315 = !DILocalVariable(name: "i", scope: !3316, file: !3, line: 1257, type: !652)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 1256, column: 5)
!3317 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 1255, column: 7)
!3318 = !DILocation(line: 0, scope: !3310)
!3319 = !DILocation(line: 1253, column: 3, scope: !3310)
!3320 = !DILocation(line: 1255, column: 7, scope: !3317)
!3321 = !DILocation(line: 1255, column: 7, scope: !3310)
!3322 = !DILocation(line: 1259, column: 32, scope: !3316)
!3323 = !DILocation(line: 1259, column: 30, scope: !3316)
!3324 = !DILocation(line: 0, scope: !3316)
!3325 = !DILocation(line: 1260, column: 12, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 1260, column: 7)
!3327 = !DILocation(line: 0, scope: !3326)
!3328 = !DILocation(line: 1260, column: 23, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 1260, column: 7)
!3330 = !DILocation(line: 1260, column: 21, scope: !3329)
!3331 = !DILocation(line: 1260, column: 7, scope: !3326)
!3332 = !DILocation(line: 1261, column: 30, scope: !3329)
!3333 = !DILocation(line: 1261, column: 2, scope: !3329)
!3334 = !DILocation(line: 1261, column: 28, scope: !3329)
!3335 = !DILocation(line: 1260, column: 41, scope: !3329)
!3336 = !DILocation(line: 1260, column: 7, scope: !3329)
!3337 = distinct !{!3337, !3331, !3338}
!3338 = !DILocation(line: 1261, column: 30, scope: !3326)
!3339 = !DILocation(line: 1263, column: 29, scope: !3316)
!3340 = !DILocation(line: 1263, column: 27, scope: !3316)
!3341 = !DILocation(line: 1264, column: 7, scope: !3316)
!3342 = !DILocation(line: 1265, column: 47, scope: !3316)
!3343 = !DILocation(line: 1265, column: 32, scope: !3316)
!3344 = !DILocation(line: 1265, column: 30, scope: !3316)
!3345 = !DILocation(line: 1266, column: 7, scope: !3316)
!3346 = !DILocation(line: 1267, column: 5, scope: !3316)
!3347 = !DILocation(line: 1269, column: 30, scope: !3310)
!3348 = !DILocation(line: 1269, column: 44, scope: !3310)
!3349 = !DILocation(line: 1269, column: 15, scope: !3310)
!3350 = !DILocation(line: 1269, column: 13, scope: !3310)
!3351 = !DILocation(line: 1270, column: 3, scope: !3310)
!3352 = !DILocation(line: 1272, column: 14, scope: !3310)
!3353 = !DILocation(line: 1272, column: 12, scope: !3310)
!3354 = !DILocation(line: 1273, column: 15, scope: !3310)
!3355 = !DILocation(line: 1274, column: 1, scope: !3310)
!3356 = distinct !DISubprogram(name: "find_all_control_dependences", scope: !3, file: !3, line: 196, type: !3357, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3359)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{null, !3237}
!3359 = !{!3360, !3361}
!3360 = !DILocalVariable(name: "el", arg: 1, scope: !3356, file: !3, line: 196, type: !3237)
!3361 = !DILocalVariable(name: "i", scope: !3356, file: !3, line: 198, type: !652)
!3362 = !DILocation(line: 0, scope: !3356)
!3363 = !DILocation(line: 0, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 200, column: 3)
!3365 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 200, column: 3)
!3366 = !DILocation(line: 200, column: 8, scope: !3365)
!3367 = !DILocation(line: 0, scope: !3365)
!3368 = !DILocation(line: 200, column: 19, scope: !3364)
!3369 = !DILocation(line: 200, column: 17, scope: !3364)
!3370 = !DILocation(line: 200, column: 3, scope: !3365)
!3371 = !DILocation(line: 201, column: 5, scope: !3364)
!3372 = !DILocation(line: 200, column: 35, scope: !3364)
!3373 = !DILocation(line: 200, column: 3, scope: !3364)
!3374 = distinct !{!3374, !3370, !3375}
!3375 = !DILocation(line: 201, column: 35, scope: !3365)
!3376 = !DILocation(line: 202, column: 1, scope: !3356)
!3377 = distinct !DISubprogram(name: "find_obviously_necessary_stmts", scope: !3, file: !3, line: 413, type: !3357, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3378)
!3378 = !{!3379, !3380, !3381, !3388, !3389, !3390, !3391, !3399, !3400}
!3379 = !DILocalVariable(name: "el", arg: 1, scope: !3377, file: !3, line: 413, type: !3237)
!3380 = !DILocalVariable(name: "bb", scope: !3377, file: !3, line: 415, type: !1115)
!3381 = !DILocalVariable(name: "gsi", scope: !3377, file: !3, line: 416, type: !3382)
!3382 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !581, line: 265, baseType: !3383)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !581, line: 254, size: 192, elements: !3384)
!3384 = !{!3385, !3386, !3387}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3383, file: !581, line: 257, baseType: !727, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3383, file: !581, line: 263, baseType: !722, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3383, file: !581, line: 264, baseType: !1115, size: 64, offset: 128)
!3388 = !DILocalVariable(name: "e", scope: !3377, file: !3, line: 417, type: !712)
!3389 = !DILocalVariable(name: "phi", scope: !3377, file: !3, line: 418, type: !671)
!3390 = !DILocalVariable(name: "stmt", scope: !3377, file: !3, line: 418, type: !671)
!3391 = !DILocalVariable(name: "li", scope: !3392, file: !3, line: 448, type: !3394)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 447, column: 5)
!3393 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 446, column: 7)
!3394 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !146, line: 515, baseType: !3395)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 508, size: 128, elements: !3396)
!3396 = !{!3397, !3398}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !3395, file: !146, line: 511, baseType: !2022, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3395, file: !146, line: 514, baseType: !7, size: 32, offset: 64)
!3399 = !DILocalVariable(name: "loop", scope: !3392, file: !3, line: 449, type: !1290)
!3400 = !DILocalVariable(name: "ei", scope: !3401, file: !3, line: 454, type: !3405)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 453, column: 4)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 452, column: 2)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 452, column: 2)
!3404 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 451, column: 11)
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !135, line: 682, baseType: !3406)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 679, size: 128, elements: !3407)
!3407 = !{!3408, !3409}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3406, file: !135, line: 680, baseType: !7, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !3406, file: !135, line: 681, baseType: !3410, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!3411 = !DILocation(line: 0, scope: !3377)
!3412 = !DILocation(line: 416, column: 3, scope: !3377)
!3413 = !DILocation(line: 417, column: 3, scope: !3377)
!3414 = !DILocation(line: 420, column: 3, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 420, column: 3)
!3416 = !DILocation(line: 0, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 423, column: 7)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 421, column: 5)
!3419 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 420, column: 3)
!3420 = !DILocation(line: 0, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 430, column: 7)
!3422 = !DILocation(line: 0, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 431, column: 2)
!3424 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 430, column: 7)
!3425 = !DILocation(line: 420, column: 3, scope: !3419)
!3426 = !DILocation(line: 0, scope: !3415)
!3427 = !DILocation(line: 423, column: 18, scope: !3417)
!3428 = !DILocation(line: 423, column: 12, scope: !3417)
!3429 = !DILocation(line: 423, column: 40, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 423, column: 7)
!3431 = !DILocation(line: 423, column: 39, scope: !3430)
!3432 = !DILocation(line: 423, column: 7, scope: !3417)
!3433 = !DILocation(line: 425, column: 10, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 424, column: 2)
!3435 = !DILocation(line: 426, column: 4, scope: !3434)
!3436 = !DILocation(line: 423, column: 57, scope: !3430)
!3437 = !DILocation(line: 423, column: 7, scope: !3430)
!3438 = distinct !{!3438, !3432, !3439}
!3439 = !DILocation(line: 427, column: 2, scope: !3417)
!3440 = !DILocation(line: 430, column: 18, scope: !3421)
!3441 = !DILocation(line: 430, column: 12, scope: !3421)
!3442 = !DILocation(line: 430, column: 38, scope: !3424)
!3443 = !DILocation(line: 430, column: 37, scope: !3424)
!3444 = !DILocation(line: 430, column: 7, scope: !3421)
!3445 = !DILocation(line: 432, column: 11, scope: !3423)
!3446 = !DILocation(line: 433, column: 4, scope: !3423)
!3447 = !DILocation(line: 434, column: 4, scope: !3423)
!3448 = !DILocation(line: 430, column: 55, scope: !3424)
!3449 = !DILocation(line: 430, column: 7, scope: !3424)
!3450 = distinct !{!3450, !3444, !3451}
!3451 = !DILocation(line: 435, column: 2, scope: !3421)
!3452 = !DILocation(line: 0, scope: !3419)
!3453 = distinct !{!3453, !3414, !3454}
!3454 = !DILocation(line: 436, column: 5, scope: !3415)
!3455 = !DILocation(line: 440, column: 8, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 440, column: 7)
!3457 = !DILocation(line: 441, column: 8, scope: !3456)
!3458 = !DILocation(line: 0, scope: !3456)
!3459 = !DILocation(line: 442, column: 11, scope: !3456)
!3460 = !DILocation(line: 441, column: 11, scope: !3456)
!3461 = !DILocation(line: 442, column: 7, scope: !3456)
!3462 = !DILocation(line: 440, column: 7, scope: !3377)
!3463 = !DILocation(line: 446, column: 7, scope: !3393)
!3464 = !DILocation(line: 446, column: 7, scope: !3377)
!3465 = !DILocation(line: 448, column: 7, scope: !3392)
!3466 = !DILocation(line: 449, column: 7, scope: !3392)
!3467 = !DILocation(line: 450, column: 7, scope: !3392)
!3468 = !DILocation(line: 451, column: 11, scope: !3404)
!3469 = !DILocation(line: 451, column: 11, scope: !3392)
!3470 = !DILocation(line: 452, column: 2, scope: !3403)
!3471 = !DILocation(line: 0, scope: !3401)
!3472 = !DILocation(line: 0, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 455, column: 6)
!3474 = !DILocation(line: 0, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 455, column: 6)
!3476 = !DILocation(line: 452, column: 2, scope: !3402)
!3477 = !DILocation(line: 0, scope: !3403)
!3478 = !DILocation(line: 454, column: 6, scope: !3401)
!3479 = !DILocation(line: 455, column: 6, scope: !3473)
!3480 = !DILocation(line: 455, column: 6, scope: !3475)
!3481 = !DILocation(line: 456, column: 13, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 456, column: 12)
!3483 = !DILocation(line: 456, column: 16, scope: !3482)
!3484 = !DILocation(line: 456, column: 22, scope: !3482)
!3485 = !DILocation(line: 457, column: 5, scope: !3482)
!3486 = !DILocation(line: 457, column: 18, scope: !3482)
!3487 = !DILocation(line: 456, column: 12, scope: !3475)
!3488 = !DILocation(line: 459, column: 16, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 459, column: 16)
!3490 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 458, column: 3)
!3491 = !DILocation(line: 459, column: 16, scope: !3490)
!3492 = !DILocation(line: 461, column: 16, scope: !3489)
!3493 = !DILocation(line: 461, column: 21, scope: !3489)
!3494 = !DILocation(line: 461, column: 31, scope: !3489)
!3495 = !DILocation(line: 461, column: 37, scope: !3489)
!3496 = !DILocation(line: 460, column: 14, scope: !3489)
!3497 = !DILocation(line: 462, column: 45, scope: !3490)
!3498 = !DILocation(line: 462, column: 48, scope: !3490)
!3499 = !DILocation(line: 462, column: 5, scope: !3490)
!3500 = !DILocation(line: 463, column: 3, scope: !3490)
!3501 = distinct !{!3501, !3479, !3502}
!3502 = !DILocation(line: 463, column: 3, scope: !3473)
!3503 = !DILocation(line: 464, column: 4, scope: !3402)
!3504 = !DILocation(line: 0, scope: !3402)
!3505 = distinct !{!3505, !3470, !3506}
!3506 = !DILocation(line: 464, column: 4, scope: !3403)
!3507 = !DILocation(line: 466, column: 7, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 466, column: 7)
!3509 = !DILocation(line: 0, scope: !3392)
!3510 = !DILocation(line: 466, column: 7, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 466, column: 7)
!3512 = !DILocation(line: 467, column: 7, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 467, column: 6)
!3514 = !DILocation(line: 467, column: 6, scope: !3511)
!3515 = !DILocation(line: 469, column: 10, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 469, column: 10)
!3517 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 468, column: 4)
!3518 = !DILocation(line: 469, column: 10, scope: !3517)
!3519 = !DILocation(line: 470, column: 69, scope: !3516)
!3520 = !DILocation(line: 470, column: 75, scope: !3516)
!3521 = !DILocation(line: 470, column: 8, scope: !3516)
!3522 = !DILocation(line: 471, column: 46, scope: !3517)
!3523 = !DILocation(line: 471, column: 52, scope: !3517)
!3524 = !DILocation(line: 471, column: 6, scope: !3517)
!3525 = !DILocation(line: 472, column: 4, scope: !3517)
!3526 = distinct !{!3526, !3507, !3527}
!3527 = !DILocation(line: 472, column: 4, scope: !3508)
!3528 = !DILocation(line: 473, column: 7, scope: !3392)
!3529 = !DILocation(line: 474, column: 5, scope: !3393)
!3530 = !DILocation(line: 474, column: 5, scope: !3392)
!3531 = !DILocation(line: 475, column: 1, scope: !3377)
!3532 = distinct !DISubprogram(name: "propagate_necessity", scope: !3, file: !3, line: 628, type: !3357, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3533)
!3533 = !{!3534, !3535, !3536, !3537, !3541, !3544, !3548, !3554, !3556, !3557, !3560, !3561, !3565, !3568, !3569, !3572, !3575}
!3534 = !DILocalVariable(name: "el", arg: 1, scope: !3532, file: !3, line: 628, type: !3237)
!3535 = !DILocalVariable(name: "stmt", scope: !3532, file: !3, line: 630, type: !671)
!3536 = !DILocalVariable(name: "aggressive", scope: !3532, file: !3, line: 631, type: !651)
!3537 = !DILocalVariable(name: "bb", scope: !3538, file: !3, line: 653, type: !1115)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 649, column: 2)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 648, column: 11)
!3540 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 637, column: 5)
!3541 = !DILocalVariable(name: "k", scope: !3542, file: !3, line: 673, type: !1173)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 666, column: 2)
!3543 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 662, column: 11)
!3544 = !DILocalVariable(name: "arg", scope: !3545, file: !3, line: 677, type: !853)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 676, column: 13)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 675, column: 4)
!3547 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 675, column: 4)
!3548 = !DILocalVariable(name: "arg_bb", scope: !3549, file: !3, line: 686, type: !1115)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 685, column: 3)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 684, column: 8)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 684, column: 8)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 683, column: 6)
!3553 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 682, column: 8)
!3554 = !DILocalVariable(name: "iter", scope: !3555, file: !3, line: 701, type: !2791)
!3555 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 697, column: 2)
!3556 = !DILocalVariable(name: "use", scope: !3555, file: !3, line: 702, type: !853)
!3557 = !DILocalVariable(name: "callee", scope: !3558, file: !3, line: 734, type: !853)
!3558 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 733, column: 6)
!3559 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 732, column: 8)
!3560 = !DILocalVariable(name: "i", scope: !3558, file: !3, line: 735, type: !7)
!3561 = !DILocalVariable(name: "arg", scope: !3562, file: !3, line: 752, type: !853)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 751, column: 3)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 750, column: 8)
!3564 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 750, column: 8)
!3565 = !DILocalVariable(name: "rhs", scope: !3566, file: !3, line: 762, type: !853)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 761, column: 6)
!3567 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 760, column: 13)
!3568 = !DILocalVariable(name: "rhs_aliased", scope: !3566, file: !3, line: 763, type: !651)
!3569 = !DILocalVariable(name: "rhs", scope: !3570, file: !3, line: 779, type: !853)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 778, column: 6)
!3571 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 777, column: 13)
!3572 = !DILocalVariable(name: "i", scope: !3573, file: !3, line: 792, type: !7)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 791, column: 6)
!3574 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 790, column: 13)
!3575 = !DILocalVariable(name: "op", scope: !3576, file: !3, line: 797, type: !853)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 796, column: 3)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 795, column: 8)
!3578 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 795, column: 8)
!3579 = !DILocation(line: 0, scope: !3532)
!3580 = !DILocation(line: 631, column: 22, scope: !3532)
!3581 = !DILocation(line: 633, column: 7, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 633, column: 7)
!3583 = !DILocation(line: 633, column: 17, scope: !3582)
!3584 = !DILocation(line: 633, column: 21, scope: !3582)
!3585 = !DILocation(line: 633, column: 32, scope: !3582)
!3586 = !DILocation(line: 633, column: 7, scope: !3532)
!3587 = !DILocation(line: 634, column: 5, scope: !3582)
!3588 = !DILocation(line: 0, scope: !3555)
!3589 = !DILocation(line: 636, column: 3, scope: !3532)
!3590 = !DILocation(line: 636, column: 10, scope: !3532)
!3591 = !DILocation(line: 636, column: 40, scope: !3532)
!3592 = !DILocation(line: 639, column: 14, scope: !3540)
!3593 = !DILocation(line: 641, column: 11, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 641, column: 11)
!3595 = !DILocation(line: 641, column: 21, scope: !3594)
!3596 = !DILocation(line: 641, column: 25, scope: !3594)
!3597 = !DILocation(line: 641, column: 36, scope: !3594)
!3598 = !DILocation(line: 641, column: 11, scope: !3540)
!3599 = !DILocation(line: 643, column: 4, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 642, column: 2)
!3601 = !DILocation(line: 644, column: 23, scope: !3600)
!3602 = !DILocation(line: 644, column: 4, scope: !3600)
!3603 = !DILocation(line: 645, column: 13, scope: !3600)
!3604 = !DILocation(line: 645, column: 4, scope: !3600)
!3605 = !DILocation(line: 646, column: 2, scope: !3600)
!3606 = !DILocation(line: 648, column: 11, scope: !3540)
!3607 = !DILocation(line: 653, column: 21, scope: !3538)
!3608 = !DILocation(line: 0, scope: !3538)
!3609 = !DILocation(line: 654, column: 14, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 654, column: 8)
!3611 = !DILocation(line: 654, column: 11, scope: !3610)
!3612 = !DILocation(line: 655, column: 8, scope: !3610)
!3613 = !DILocation(line: 655, column: 13, scope: !3610)
!3614 = !DILocation(line: 654, column: 8, scope: !3538)
!3615 = !DILocation(line: 657, column: 8, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 656, column: 6)
!3617 = !DILocation(line: 658, column: 8, scope: !3616)
!3618 = !DILocation(line: 659, column: 6, scope: !3616)
!3619 = !DILocation(line: 662, column: 11, scope: !3543)
!3620 = !DILocation(line: 662, column: 30, scope: !3543)
!3621 = !DILocation(line: 665, column: 4, scope: !3543)
!3622 = !DILocation(line: 665, column: 22, scope: !3543)
!3623 = !DILocation(line: 665, column: 7, scope: !3543)
!3624 = !DILocation(line: 662, column: 11, scope: !3540)
!3625 = !DILocation(line: 675, column: 4, scope: !3547)
!3626 = !DILocation(line: 0, scope: !3547)
!3627 = !DILocation(line: 0, scope: !3542)
!3628 = !DILocation(line: 675, column: 20, scope: !3546)
!3629 = !DILocation(line: 675, column: 18, scope: !3546)
!3630 = !DILocation(line: 677, column: 19, scope: !3545)
!3631 = !DILocation(line: 0, scope: !3545)
!3632 = !DILocation(line: 678, column: 12, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 678, column: 12)
!3634 = !DILocation(line: 678, column: 28, scope: !3633)
!3635 = !DILocation(line: 678, column: 12, scope: !3545)
!3636 = !DILocation(line: 679, column: 3, scope: !3633)
!3637 = !DILocation(line: 675, column: 49, scope: !3546)
!3638 = !DILocation(line: 675, column: 4, scope: !3546)
!3639 = distinct !{!3639, !3625, !3640}
!3640 = !DILocation(line: 680, column: 6, scope: !3547)
!3641 = !DILocation(line: 682, column: 19, scope: !3553)
!3642 = !DILocation(line: 682, column: 23, scope: !3553)
!3643 = !DILocation(line: 682, column: 8, scope: !3542)
!3644 = !DILocation(line: 684, column: 8, scope: !3551)
!3645 = !DILocation(line: 0, scope: !3551)
!3646 = !DILocation(line: 684, column: 24, scope: !3550)
!3647 = !DILocation(line: 684, column: 22, scope: !3550)
!3648 = !DILocation(line: 686, column: 26, scope: !3549)
!3649 = !DILocation(line: 686, column: 57, scope: !3549)
!3650 = !DILocation(line: 0, scope: !3549)
!3651 = !DILocation(line: 687, column: 19, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 687, column: 9)
!3653 = !DILocation(line: 687, column: 16, scope: !3652)
!3654 = !DILocation(line: 688, column: 9, scope: !3652)
!3655 = !DILocation(line: 688, column: 14, scope: !3652)
!3656 = !DILocation(line: 687, column: 9, scope: !3549)
!3657 = !DILocation(line: 690, column: 9, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 689, column: 7)
!3659 = !DILocation(line: 691, column: 9, scope: !3658)
!3660 = !DILocation(line: 692, column: 7, scope: !3658)
!3661 = !DILocation(line: 684, column: 53, scope: !3550)
!3662 = !DILocation(line: 684, column: 8, scope: !3550)
!3663 = distinct !{!3663, !3644, !3664}
!3664 = !DILocation(line: 693, column: 3, scope: !3551)
!3665 = !DILocation(line: 701, column: 4, scope: !3555)
!3666 = !DILocation(line: 704, column: 4, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 704, column: 4)
!3668 = !DILocation(line: 0, scope: !3667)
!3669 = !DILocation(line: 704, column: 4, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 704, column: 4)
!3671 = !DILocation(line: 705, column: 6, scope: !3670)
!3672 = distinct !{!3672, !3666, !3673}
!3673 = !DILocation(line: 705, column: 33, scope: !3667)
!3674 = !DILocation(line: 707, column: 10, scope: !3555)
!3675 = !DILocation(line: 708, column: 9, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 708, column: 8)
!3677 = !DILocation(line: 708, column: 8, scope: !3555)
!3678 = distinct !{!3678, !3589, !3679}
!3679 = !DILocation(line: 824, column: 5, scope: !3532)
!3680 = !DILocation(line: 713, column: 8, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 713, column: 8)
!3682 = !DILocation(line: 713, column: 8, scope: !3555)
!3683 = !DILocation(line: 715, column: 8, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 714, column: 6)
!3685 = !DILocation(line: 716, column: 8, scope: !3684)
!3686 = !DILocation(line: 732, column: 8, scope: !3559)
!3687 = !DILocation(line: 732, column: 8, scope: !3555)
!3688 = !DILocation(line: 734, column: 22, scope: !3558)
!3689 = !DILocation(line: 0, scope: !3558)
!3690 = !DILocation(line: 740, column: 19, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 740, column: 12)
!3692 = !DILocation(line: 741, column: 5, scope: !3691)
!3693 = !DILocation(line: 741, column: 8, scope: !3691)
!3694 = !DILocation(line: 741, column: 37, scope: !3691)
!3695 = !DILocation(line: 742, column: 5, scope: !3691)
!3696 = !DILocation(line: 742, column: 9, scope: !3691)
!3697 = !DILocation(line: 742, column: 37, scope: !3691)
!3698 = !DILocation(line: 743, column: 9, scope: !3691)
!3699 = !DILocation(line: 743, column: 40, scope: !3691)
!3700 = !DILocation(line: 744, column: 9, scope: !3691)
!3701 = !DILocation(line: 744, column: 40, scope: !3691)
!3702 = !DILocation(line: 740, column: 12, scope: !3558)
!3703 = !DILocation(line: 749, column: 8, scope: !3558)
!3704 = !DILocation(line: 750, column: 13, scope: !3564)
!3705 = !DILocation(line: 0, scope: !3564)
!3706 = !DILocation(line: 750, column: 24, scope: !3563)
!3707 = !DILocation(line: 750, column: 22, scope: !3563)
!3708 = !DILocation(line: 750, column: 8, scope: !3564)
!3709 = !DILocation(line: 752, column: 16, scope: !3562)
!3710 = !DILocation(line: 0, scope: !3562)
!3711 = !DILocation(line: 753, column: 9, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3562, file: !3, line: 753, column: 9)
!3713 = !DILocation(line: 753, column: 25, scope: !3712)
!3714 = !DILocation(line: 754, column: 9, scope: !3712)
!3715 = !DILocation(line: 754, column: 12, scope: !3712)
!3716 = !DILocation(line: 753, column: 9, scope: !3562)
!3717 = !DILocation(line: 756, column: 10, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3562, file: !3, line: 756, column: 9)
!3719 = !DILocation(line: 756, column: 9, scope: !3562)
!3720 = !DILocation(line: 757, column: 7, scope: !3718)
!3721 = !DILocation(line: 750, column: 53, scope: !3563)
!3722 = !DILocation(line: 750, column: 8, scope: !3563)
!3723 = distinct !{!3723, !3708, !3724}
!3724 = !DILocation(line: 758, column: 3, scope: !3564)
!3725 = !DILocation(line: 760, column: 13, scope: !3567)
!3726 = !DILocation(line: 760, column: 13, scope: !3559)
!3727 = !DILocation(line: 0, scope: !3566)
!3728 = !DILocation(line: 765, column: 14, scope: !3566)
!3729 = !DILocation(line: 766, column: 12, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 766, column: 12)
!3731 = !DILocation(line: 766, column: 28, scope: !3730)
!3732 = !DILocation(line: 767, column: 5, scope: !3730)
!3733 = !DILocation(line: 767, column: 9, scope: !3730)
!3734 = !DILocation(line: 766, column: 12, scope: !3566)
!3735 = !DILocation(line: 769, column: 10, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !3, line: 769, column: 9)
!3737 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 768, column: 3)
!3738 = !DILocation(line: 769, column: 9, scope: !3737)
!3739 = !DILocation(line: 770, column: 7, scope: !3736)
!3740 = !DILocation(line: 774, column: 12, scope: !3566)
!3741 = !DILocation(line: 775, column: 3, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 774, column: 12)
!3743 = !DILocation(line: 777, column: 13, scope: !3571)
!3744 = !DILocation(line: 777, column: 32, scope: !3571)
!3745 = !DILocation(line: 777, column: 13, scope: !3567)
!3746 = !DILocation(line: 779, column: 19, scope: !3570)
!3747 = !DILocation(line: 0, scope: !3570)
!3748 = !DILocation(line: 781, column: 12, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 781, column: 12)
!3750 = !DILocation(line: 781, column: 28, scope: !3749)
!3751 = !DILocation(line: 782, column: 5, scope: !3749)
!3752 = !DILocation(line: 782, column: 9, scope: !3749)
!3753 = !DILocation(line: 781, column: 12, scope: !3570)
!3754 = !DILocation(line: 784, column: 10, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 784, column: 9)
!3756 = distinct !DILexicalBlock(scope: !3749, file: !3, line: 783, column: 3)
!3757 = !DILocation(line: 784, column: 9, scope: !3756)
!3758 = !DILocation(line: 785, column: 7, scope: !3755)
!3759 = !DILocation(line: 787, column: 7, scope: !3755)
!3760 = !DILocation(line: 790, column: 13, scope: !3574)
!3761 = !DILocation(line: 790, column: 32, scope: !3574)
!3762 = !DILocation(line: 790, column: 13, scope: !3571)
!3763 = !DILocation(line: 793, column: 8, scope: !3573)
!3764 = !DILocation(line: 0, scope: !3573)
!3765 = !DILocation(line: 795, column: 13, scope: !3578)
!3766 = !DILocation(line: 0, scope: !3578)
!3767 = !DILocation(line: 795, column: 24, scope: !3577)
!3768 = !DILocation(line: 795, column: 22, scope: !3577)
!3769 = !DILocation(line: 795, column: 8, scope: !3578)
!3770 = !DILocation(line: 797, column: 15, scope: !3576)
!3771 = !DILocation(line: 0, scope: !3576)
!3772 = !DILocation(line: 798, column: 9, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 798, column: 9)
!3774 = !DILocation(line: 798, column: 24, scope: !3773)
!3775 = !DILocation(line: 799, column: 9, scope: !3773)
!3776 = !DILocation(line: 799, column: 13, scope: !3773)
!3777 = !DILocation(line: 800, column: 9, scope: !3773)
!3778 = !DILocation(line: 800, column: 13, scope: !3773)
!3779 = !DILocation(line: 798, column: 9, scope: !3576)
!3780 = !DILocation(line: 801, column: 7, scope: !3773)
!3781 = !DILocation(line: 795, column: 51, scope: !3577)
!3782 = !DILocation(line: 795, column: 8, scope: !3577)
!3783 = distinct !{!3783, !3769, !3784}
!3784 = !DILocation(line: 802, column: 3, scope: !3578)
!3785 = !DILocation(line: 805, column: 6, scope: !3574)
!3786 = !DILocation(line: 813, column: 8, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 813, column: 8)
!3788 = !DILocation(line: 813, column: 20, scope: !3787)
!3789 = !DILocation(line: 815, column: 8, scope: !3787)
!3790 = !DILocation(line: 815, column: 30, scope: !3787)
!3791 = !DILocation(line: 815, column: 28, scope: !3787)
!3792 = !DILocation(line: 815, column: 23, scope: !3787)
!3793 = !DILocation(line: 817, column: 8, scope: !3787)
!3794 = !DILocation(line: 817, column: 25, scope: !3787)
!3795 = !DILocation(line: 817, column: 34, scope: !3787)
!3796 = !DILocation(line: 817, column: 23, scope: !3787)
!3797 = !DILocation(line: 813, column: 8, scope: !3555)
!3798 = !DILocation(line: 819, column: 19, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 818, column: 6)
!3800 = !DILocation(line: 820, column: 12, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 820, column: 12)
!3802 = !DILocation(line: 820, column: 12, scope: !3799)
!3803 = !DILocation(line: 821, column: 3, scope: !3801)
!3804 = !DILocation(line: 823, column: 2, scope: !3543)
!3805 = !DILocation(line: 825, column: 1, scope: !3532)
!3806 = distinct !DISubprogram(name: "eliminate_unnecessary_stmts", scope: !3, file: !3, line: 1054, type: !2048, scopeLine: 1055, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3807)
!3807 = !{!3808, !3809, !3810, !3811, !3812, !3813, !3814, !3820, !3830, !3833, !3843}
!3808 = !DILocalVariable(name: "something_changed", scope: !3806, file: !3, line: 1056, type: !651)
!3809 = !DILocalVariable(name: "bb", scope: !3806, file: !3, line: 1057, type: !1115)
!3810 = !DILocalVariable(name: "gsi", scope: !3806, file: !3, line: 1058, type: !3382)
!3811 = !DILocalVariable(name: "psi", scope: !3806, file: !3, line: 1058, type: !3382)
!3812 = !DILocalVariable(name: "stmt", scope: !3806, file: !3, line: 1059, type: !671)
!3813 = !DILocalVariable(name: "call", scope: !3806, file: !3, line: 1060, type: !853)
!3814 = !DILocalVariable(name: "h", scope: !3806, file: !3, line: 1061, type: !3815)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_heap", file: !135, line: 283, baseType: !3817)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_heap", file: !135, line: 283, size: 128, elements: !3818)
!3818 = !{!3819}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3817, file: !135, line: 283, baseType: !1123, size: 128)
!3820 = !DILocalVariable(name: "name", scope: !3821, file: !3, line: 1119, type: !853)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 1118, column: 3)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !3, line: 1117, column: 12)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 1115, column: 6)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 1114, column: 13)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 1108, column: 8)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 1099, column: 2)
!3827 = distinct !DILexicalBlock(scope: !3828, file: !3, line: 1098, column: 7)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 1098, column: 7)
!3829 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 1094, column: 5)
!3830 = !DILocalVariable(name: "prev_bb", scope: !3831, file: !3, line: 1153, type: !1115)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1152, column: 5)
!3832 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 1151, column: 7)
!3833 = !DILocalVariable(name: "found", scope: !3834, file: !3, line: 1168, type: !651)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 1167, column: 5)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 1166, column: 7)
!3836 = distinct !DILexicalBlock(scope: !3837, file: !3, line: 1165, column: 8)
!3837 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 1165, column: 8)
!3838 = distinct !DILexicalBlock(scope: !3839, file: !3, line: 1164, column: 6)
!3839 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 1162, column: 8)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 1159, column: 2)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 1158, column: 7)
!3842 = distinct !DILexicalBlock(scope: !3831, file: !3, line: 1158, column: 7)
!3843 = !DILocalVariable(name: "iter", scope: !3834, file: !3, line: 1169, type: !2568)
!3844 = !DILocation(line: 0, scope: !3806)
!3845 = !DILocation(line: 1058, column: 3, scope: !3806)
!3846 = !DILocation(line: 1061, column: 3, scope: !3806)
!3847 = !DILocation(line: 1063, column: 7, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 1063, column: 7)
!3849 = !DILocation(line: 1063, column: 17, scope: !3848)
!3850 = !DILocation(line: 1063, column: 21, scope: !3848)
!3851 = !DILocation(line: 1063, column: 32, scope: !3848)
!3852 = !DILocation(line: 1063, column: 7, scope: !3806)
!3853 = !DILocation(line: 1064, column: 5, scope: !3848)
!3854 = !DILocation(line: 1066, column: 3, scope: !3806)
!3855 = !DILocation(line: 1090, column: 3, scope: !3806)
!3856 = !DILocation(line: 1091, column: 62, scope: !3806)
!3857 = !DILocation(line: 1091, column: 49, scope: !3806)
!3858 = !DILocation(line: 1091, column: 7, scope: !3806)
!3859 = !DILocation(line: 1091, column: 5, scope: !3806)
!3860 = !DILocation(line: 0, scope: !3828)
!3861 = !DILocation(line: 1093, column: 3, scope: !3806)
!3862 = !DILocation(line: 1056, column: 8, scope: !3806)
!3863 = !DILocation(line: 1093, column: 10, scope: !3806)
!3864 = !DILocation(line: 1095, column: 12, scope: !3829)
!3865 = !DILocation(line: 1098, column: 18, scope: !3828)
!3866 = !DILocation(line: 1098, column: 12, scope: !3828)
!3867 = !DILocation(line: 1098, column: 37, scope: !3827)
!3868 = !DILocation(line: 1098, column: 36, scope: !3827)
!3869 = !DILocation(line: 1098, column: 7, scope: !3828)
!3870 = distinct !{!3870, !3861, !3871}
!3871 = !DILocation(line: 1144, column: 5, scope: !3806)
!3872 = !DILocation(line: 1100, column: 11, scope: !3826)
!3873 = !DILocation(line: 1102, column: 10, scope: !3826)
!3874 = !DILocation(line: 1103, column: 4, scope: !3826)
!3875 = !DILocation(line: 1105, column: 15, scope: !3826)
!3876 = !DILocation(line: 1108, column: 9, scope: !3825)
!3877 = !DILocation(line: 1108, column: 8, scope: !3826)
!3878 = !DILocation(line: 1110, column: 13, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 1110, column: 12)
!3880 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 1109, column: 6)
!3881 = !DILocation(line: 1110, column: 12, scope: !3880)
!3882 = !DILocation(line: 1112, column: 8, scope: !3880)
!3883 = !DILocation(line: 1113, column: 6, scope: !3880)
!3884 = !DILocation(line: 1114, column: 13, scope: !3824)
!3885 = !DILocation(line: 1114, column: 13, scope: !3825)
!3886 = !DILocation(line: 1116, column: 15, scope: !3823)
!3887 = !DILocation(line: 1117, column: 12, scope: !3822)
!3888 = !DILocation(line: 1117, column: 12, scope: !3823)
!3889 = !DILocation(line: 1123, column: 12, scope: !3821)
!3890 = !DILocation(line: 0, scope: !3821)
!3891 = !DILocation(line: 1124, column: 9, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 1124, column: 9)
!3893 = !DILocation(line: 1124, column: 14, scope: !3892)
!3894 = !DILocation(line: 1124, column: 17, scope: !3892)
!3895 = !DILocation(line: 1124, column: 34, scope: !3892)
!3896 = !DILocation(line: 1125, column: 14, scope: !3892)
!3897 = !DILocation(line: 1125, column: 18, scope: !3892)
!3898 = !DILocation(line: 1124, column: 9, scope: !3821)
!3899 = !DILocation(line: 1128, column: 13, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1128, column: 13)
!3901 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 1126, column: 7)
!3902 = !DILocation(line: 1128, column: 23, scope: !3900)
!3903 = !DILocation(line: 1128, column: 27, scope: !3900)
!3904 = !DILocation(line: 1128, column: 38, scope: !3900)
!3905 = !DILocation(line: 1128, column: 13, scope: !3901)
!3906 = !DILocation(line: 1130, column: 6, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 1129, column: 4)
!3908 = !DILocation(line: 1131, column: 25, scope: !3907)
!3909 = !DILocation(line: 1131, column: 6, scope: !3907)
!3910 = !DILocation(line: 1132, column: 15, scope: !3907)
!3911 = !DILocation(line: 1132, column: 6, scope: !3907)
!3912 = !DILocation(line: 1133, column: 4, scope: !3907)
!3913 = !DILocation(line: 1135, column: 9, scope: !3901)
!3914 = !DILocation(line: 1136, column: 9, scope: !3901)
!3915 = !DILocation(line: 1137, column: 9, scope: !3901)
!3916 = !DILocation(line: 1138, column: 9, scope: !3901)
!3917 = !DILocation(line: 1139, column: 7, scope: !3901)
!3918 = !DILocation(line: 1140, column: 5, scope: !3821)
!3919 = !DILocation(line: 1141, column: 3, scope: !3821)
!3920 = !DILocation(line: 1098, column: 60, scope: !3827)
!3921 = !DILocation(line: 1098, column: 7, scope: !3827)
!3922 = distinct !{!3922, !3869, !3923}
!3923 = !DILocation(line: 1143, column: 2, scope: !3828)
!3924 = !DILocation(line: 1146, column: 3, scope: !3806)
!3925 = !DILocation(line: 1151, column: 7, scope: !3832)
!3926 = !DILocation(line: 1151, column: 7, scope: !3806)
!3927 = !DILocation(line: 1218, column: 3, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 1218, column: 3)
!3929 = !DILocation(line: 0, scope: !3928)
!3930 = !DILocation(line: 1155, column: 7, scope: !3831)
!3931 = !DILocation(line: 1158, column: 17, scope: !3842)
!3932 = !DILocation(line: 1158, column: 33, scope: !3842)
!3933 = !DILocation(line: 0, scope: !3837)
!3934 = !DILocation(line: 0, scope: !3834)
!3935 = !DILocation(line: 1158, column: 12, scope: !3842)
!3936 = !DILocation(line: 1158, column: 48, scope: !3841)
!3937 = !DILocation(line: 0, scope: !3842)
!3938 = !DILocation(line: 1158, column: 45, scope: !3841)
!3939 = !DILocation(line: 1158, column: 7, scope: !3842)
!3940 = !DILocation(line: 1160, column: 18, scope: !3840)
!3941 = !DILocation(line: 0, scope: !3831)
!3942 = !DILocation(line: 1162, column: 9, scope: !3839)
!3943 = !DILocation(line: 1163, column: 8, scope: !3839)
!3944 = !DILocation(line: 1163, column: 17, scope: !3839)
!3945 = !DILocation(line: 1163, column: 23, scope: !3839)
!3946 = !DILocation(line: 1162, column: 8, scope: !3840)
!3947 = !DILocation(line: 1165, column: 19, scope: !3837)
!3948 = !DILocation(line: 1165, column: 13, scope: !3837)
!3949 = !DILocation(line: 1165, column: 41, scope: !3836)
!3950 = !DILocation(line: 1165, column: 40, scope: !3836)
!3951 = !DILocation(line: 1165, column: 8, scope: !3837)
!3952 = !DILocation(line: 1166, column: 42, scope: !3835)
!3953 = !DILocation(line: 1166, column: 23, scope: !3835)
!3954 = !DILocation(line: 1166, column: 8, scope: !3835)
!3955 = !DILocation(line: 1166, column: 7, scope: !3836)
!3956 = !DILocation(line: 1169, column: 7, scope: !3834)
!3957 = !DILocation(line: 1171, column: 7, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 1171, column: 7)
!3959 = !DILocation(line: 0, scope: !3958)
!3960 = !DILocation(line: 1171, column: 7, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3958, file: !3, line: 1171, column: 7)
!3962 = !DILocation(line: 1173, column: 10, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 1173, column: 8)
!3964 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 1172, column: 9)
!3965 = !DILocation(line: 1173, column: 28, scope: !3963)
!3966 = !DILocation(line: 1173, column: 34, scope: !3963)
!3967 = !DILocation(line: 1173, column: 8, scope: !3964)
!3968 = !DILocation(line: 1175, column: 8, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 1175, column: 8)
!3970 = !DILocation(line: 1175, column: 27, scope: !3969)
!3971 = !DILocation(line: 1176, column: 8, scope: !3969)
!3972 = !DILocation(line: 1176, column: 11, scope: !3969)
!3973 = !DILocation(line: 1175, column: 8, scope: !3964)
!3974 = !DILocation(line: 1179, column: 8, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3976, file: !3, line: 1179, column: 8)
!3976 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 1177, column: 6)
!3977 = distinct !{!3977, !3957, !3978}
!3978 = !DILocation(line: 1181, column: 9, scope: !3958)
!3979 = !DILocation(line: 1182, column: 11, scope: !3834)
!3980 = !DILocation(line: 1183, column: 47, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 1182, column: 11)
!3982 = !DILocation(line: 1183, column: 9, scope: !3981)
!3983 = !DILocation(line: 1184, column: 5, scope: !3835)
!3984 = !DILocation(line: 1184, column: 5, scope: !3834)
!3985 = !DILocation(line: 1165, column: 58, scope: !3836)
!3986 = !DILocation(line: 1165, column: 8, scope: !3836)
!3987 = distinct !{!3987, !3951, !3988}
!3988 = !DILocation(line: 1184, column: 5, scope: !3837)
!3989 = !DILocation(line: 1186, column: 18, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 1186, column: 12)
!3991 = !DILocation(line: 1186, column: 24, scope: !3990)
!3992 = !DILocation(line: 1186, column: 12, scope: !3838)
!3993 = !DILocation(line: 1192, column: 10, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3995, file: !3, line: 1192, column: 9)
!3995 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 1187, column: 3)
!3996 = !DILocation(line: 1193, column: 9, scope: !3994)
!3997 = !DILocation(line: 1193, column: 13, scope: !3994)
!3998 = !DILocation(line: 1192, column: 9, scope: !3995)
!3999 = !DILocation(line: 1194, column: 7, scope: !3994)
!4000 = !DILocation(line: 1197, column: 13, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 1196, column: 7)
!4002 = !DILocation(line: 1197, column: 11, scope: !4001)
!4003 = !DILocation(line: 1199, column: 9, scope: !4001)
!4004 = !DILocation(line: 1199, column: 16, scope: !4001)
!4005 = !DILocation(line: 0, scope: !3840)
!4006 = !DILocation(line: 1201, column: 11, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4001, file: !3, line: 1200, column: 4)
!4008 = !DILocation(line: 1202, column: 20, scope: !4007)
!4009 = !DILocation(line: 1207, column: 17, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 1207, column: 10)
!4011 = !DILocation(line: 1207, column: 23, scope: !4010)
!4012 = !DILocation(line: 1207, column: 10, scope: !4007)
!4013 = !DILocation(line: 1209, column: 6, scope: !4007)
!4014 = distinct !{!4014, !4003, !4015}
!4015 = !DILocation(line: 1210, column: 4, scope: !4001)
!4016 = !DILocation(line: 1212, column: 9, scope: !4001)
!4017 = !DILocation(line: 1160, column: 12, scope: !3840)
!4018 = !DILocation(line: 0, scope: !3841)
!4019 = !DILocation(line: 1158, column: 7, scope: !3841)
!4020 = distinct !{!4020, !3939, !4021}
!4021 = !DILocation(line: 1216, column: 2, scope: !3842)
!4022 = !DILocation(line: 1218, column: 3, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !3928, file: !3, line: 1218, column: 3)
!4024 = !DILocation(line: 1221, column: 28, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4023, file: !3, line: 1219, column: 5)
!4026 = !DILocation(line: 1221, column: 25, scope: !4025)
!4027 = !DILocation(line: 0, scope: !4023)
!4028 = distinct !{!4028, !3927, !4029}
!4029 = !DILocation(line: 1222, column: 5, scope: !3928)
!4030 = !DILocation(line: 1225, column: 1, scope: !3806)
!4031 = !DILocation(line: 1224, column: 3, scope: !3806)
!4032 = distinct !DISubprogram(name: "print_stats", scope: !3, file: !3, line: 1231, type: !4033, scopeLine: 1232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4035)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{null}
!4035 = !{!4036}
!4036 = !DILocalVariable(name: "percg", scope: !4032, file: !3, line: 1233, type: !2035)
!4037 = !DILocation(line: 1235, column: 26, scope: !4032)
!4038 = !DILocation(line: 1235, column: 12, scope: !4032)
!4039 = !DILocation(line: 1235, column: 50, scope: !4032)
!4040 = !DILocation(line: 1235, column: 36, scope: !4032)
!4041 = !DILocation(line: 1235, column: 34, scope: !4032)
!4042 = !DILocation(line: 1235, column: 57, scope: !4032)
!4043 = !DILocation(line: 0, scope: !4032)
!4044 = !DILocation(line: 1236, column: 12, scope: !4032)
!4045 = !DILocation(line: 1237, column: 33, scope: !4032)
!4046 = !DILocation(line: 1236, column: 3, scope: !4032)
!4047 = !DILocation(line: 1239, column: 13, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 1239, column: 7)
!4049 = !DILocation(line: 1239, column: 24, scope: !4048)
!4050 = !DILocation(line: 1239, column: 7, scope: !4032)
!4051 = !DILocation(line: 1245, column: 11, scope: !4032)
!4052 = !DILocation(line: 1242, column: 28, scope: !4048)
!4053 = !DILocation(line: 1242, column: 14, scope: !4048)
!4054 = !DILocation(line: 1242, column: 43, scope: !4048)
!4055 = !DILocation(line: 1242, column: 41, scope: !4048)
!4056 = !DILocation(line: 1242, column: 69, scope: !4048)
!4057 = !DILocation(line: 1244, column: 12, scope: !4032)
!4058 = !DILocation(line: 1244, column: 3, scope: !4032)
!4059 = !DILocation(line: 1246, column: 1, scope: !4032)
!4060 = distinct !DISubprogram(name: "tree_dce_done", scope: !3, file: !3, line: 1279, type: !3311, scopeLine: 1280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4061)
!4061 = !{!4062, !4063}
!4062 = !DILocalVariable(name: "aggressive", arg: 1, scope: !4060, file: !3, line: 1279, type: !651)
!4063 = !DILocalVariable(name: "i", scope: !4064, file: !3, line: 1283, type: !652)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 1282, column: 5)
!4065 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 1281, column: 7)
!4066 = !DILocation(line: 0, scope: !4060)
!4067 = !DILocation(line: 1281, column: 7, scope: !4065)
!4068 = !DILocation(line: 1281, column: 7, scope: !4060)
!4069 = !DILocation(line: 1285, column: 7, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 1285, column: 7)
!4071 = !DILocation(line: 0, scope: !4070)
!4072 = !DILocation(line: 0, scope: !4064)
!4073 = !DILocation(line: 1285, column: 23, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 1285, column: 7)
!4075 = !DILocation(line: 1285, column: 21, scope: !4074)
!4076 = !DILocation(line: 1286, column: 2, scope: !4074)
!4077 = !DILocation(line: 1285, column: 41, scope: !4074)
!4078 = !DILocation(line: 1285, column: 7, scope: !4074)
!4079 = distinct !{!4079, !4069, !4080}
!4080 = !DILocation(line: 1286, column: 2, scope: !4070)
!4081 = !DILocation(line: 1287, column: 13, scope: !4064)
!4082 = !DILocation(line: 1287, column: 7, scope: !4064)
!4083 = !DILocation(line: 1289, column: 7, scope: !4064)
!4084 = !DILocation(line: 1290, column: 7, scope: !4064)
!4085 = !DILocation(line: 1291, column: 7, scope: !4064)
!4086 = !DILocation(line: 1292, column: 30, scope: !4064)
!4087 = !DILocation(line: 1293, column: 5, scope: !4064)
!4088 = !DILocation(line: 1295, column: 3, scope: !4060)
!4089 = !DILocation(line: 1297, column: 3, scope: !4060)
!4090 = !DILocation(line: 1298, column: 1, scope: !4060)
!4091 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !164, file: !164, line: 182, type: !4092, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4096)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!7, !4094}
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1217)
!4096 = !{!4097}
!4097 = !DILocalVariable(name: "vec_", arg: 1, scope: !4091, file: !164, line: 182, type: !4094)
!4098 = !DILocation(line: 0, scope: !4091)
!4099 = !DILocation(line: 182, column: 1, scope: !4091)
!4100 = distinct !DISubprogram(name: "VEC_gimple_heap_alloc", scope: !581, file: !581, line: 34, type: !4101, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4103)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!2015, !652}
!4103 = !{!4104}
!4104 = !DILocalVariable(name: "alloc_", arg: 1, scope: !4100, file: !581, line: 34, type: !652)
!4105 = !DILocation(line: 0, scope: !4100)
!4106 = !DILocation(line: 34, column: 1, scope: !4100)
!4107 = distinct !DISubprogram(name: "find_control_dependence", scope: !3, file: !3, line: 163, type: !4108, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4110)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{null, !3237, !652}
!4110 = !{!4111, !4112, !4113, !4114, !4115}
!4111 = !DILocalVariable(name: "el", arg: 1, scope: !4107, file: !3, line: 163, type: !3237)
!4112 = !DILocalVariable(name: "edge_index", arg: 2, scope: !4107, file: !3, line: 163, type: !652)
!4113 = !DILocalVariable(name: "current_block", scope: !4107, file: !3, line: 165, type: !1115)
!4114 = !DILocalVariable(name: "ending_block", scope: !4107, file: !3, line: 166, type: !1115)
!4115 = !DILocalVariable(name: "e", scope: !4116, file: !3, line: 179, type: !712)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 178, column: 5)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 175, column: 3)
!4118 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 175, column: 3)
!4119 = !DILocation(line: 0, scope: !4107)
!4120 = !DILocation(line: 168, column: 3, scope: !4107)
!4121 = !DILocation(line: 170, column: 7, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 170, column: 7)
!4123 = !DILocation(line: 0, scope: !4122)
!4124 = !DILocation(line: 170, column: 46, scope: !4122)
!4125 = !DILocation(line: 170, column: 43, scope: !4122)
!4126 = !DILocation(line: 170, column: 7, scope: !4107)
!4127 = !DILocation(line: 171, column: 20, scope: !4122)
!4128 = !DILocation(line: 171, column: 5, scope: !4122)
!4129 = !DILocation(line: 173, column: 20, scope: !4122)
!4130 = !DILocation(line: 175, column: 24, scope: !4118)
!4131 = !DILocation(line: 175, column: 8, scope: !4118)
!4132 = !DILocation(line: 0, scope: !4118)
!4133 = !DILocation(line: 176, column: 22, scope: !4117)
!4134 = !DILocation(line: 176, column: 38, scope: !4117)
!4135 = !DILocation(line: 176, column: 58, scope: !4117)
!4136 = !DILocation(line: 176, column: 55, scope: !4117)
!4137 = !DILocation(line: 175, column: 3, scope: !4118)
!4138 = !DILocation(line: 179, column: 16, scope: !4116)
!4139 = !DILocation(line: 0, scope: !4116)
!4140 = !DILocation(line: 184, column: 14, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 184, column: 11)
!4142 = !DILocation(line: 184, column: 20, scope: !4141)
!4143 = !DILocation(line: 184, column: 11, scope: !4116)
!4144 = !DILocation(line: 187, column: 7, scope: !4116)
!4145 = !DILocation(line: 188, column: 5, scope: !4117)
!4146 = !DILocation(line: 177, column: 24, scope: !4117)
!4147 = !DILocation(line: 175, column: 3, scope: !4117)
!4148 = distinct !{!4148, !4137, !4149}
!4149 = !DILocation(line: 188, column: 5, scope: !4118)
!4150 = !DILocation(line: 189, column: 1, scope: !4107)
!4151 = distinct !DISubprogram(name: "single_succ", scope: !135, file: !135, line: 663, type: !4152, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4157)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!1115, !4154}
!4154 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !672, line: 112, baseType: !4155)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!4157 = !{!4158}
!4158 = !DILocalVariable(name: "bb", arg: 1, scope: !4151, file: !135, line: 663, type: !4154)
!4159 = !DILocation(line: 0, scope: !4151)
!4160 = !DILocation(line: 665, column: 10, scope: !4151)
!4161 = !DILocation(line: 665, column: 33, scope: !4151)
!4162 = !DILocation(line: 665, column: 3, scope: !4151)
!4163 = distinct !DISubprogram(name: "find_pdom", scope: !3, file: !3, line: 143, type: !4164, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4166)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!1115, !1115}
!4166 = !{!4167, !4168}
!4167 = !DILocalVariable(name: "block", arg: 1, scope: !4163, file: !3, line: 143, type: !1115)
!4168 = !DILocalVariable(name: "bb", scope: !4169, file: !3, line: 151, type: !1115)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !3, line: 150, column: 5)
!4170 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 147, column: 7)
!4171 = !DILocation(line: 0, scope: !4163)
!4172 = !DILocation(line: 145, column: 3, scope: !4163)
!4173 = !DILocation(line: 147, column: 16, scope: !4170)
!4174 = !DILocation(line: 0, scope: !4170)
!4175 = !DILocation(line: 147, column: 13, scope: !4170)
!4176 = !DILocation(line: 147, column: 7, scope: !4163)
!4177 = !DILocation(line: 148, column: 5, scope: !4170)
!4178 = !DILocation(line: 151, column: 24, scope: !4169)
!4179 = !DILocation(line: 0, scope: !4169)
!4180 = !DILocation(line: 152, column: 13, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4169, file: !3, line: 152, column: 11)
!4182 = !DILocation(line: 152, column: 11, scope: !4169)
!4183 = !DILocation(line: 153, column: 9, scope: !4181)
!4184 = !DILocation(line: 153, column: 2, scope: !4181)
!4185 = !DILocation(line: 156, column: 1, scope: !4163)
!4186 = distinct !DISubprogram(name: "set_control_dependence_map_bit", scope: !3, file: !3, line: 123, type: !4187, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4189)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{null, !1115, !652}
!4189 = !{!4190, !4191}
!4190 = !DILocalVariable(name: "bb", arg: 1, scope: !4186, file: !3, line: 123, type: !1115)
!4191 = !DILocalVariable(name: "edge_index", arg: 2, scope: !4186, file: !3, line: 123, type: !652)
!4192 = !DILocation(line: 0, scope: !4186)
!4193 = !DILocation(line: 125, column: 13, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 125, column: 7)
!4195 = !DILocation(line: 125, column: 10, scope: !4194)
!4196 = !DILocation(line: 125, column: 7, scope: !4186)
!4197 = !DILocation(line: 127, column: 3, scope: !4186)
!4198 = !DILocation(line: 128, column: 19, scope: !4186)
!4199 = !DILocation(line: 128, column: 46, scope: !4186)
!4200 = !DILocation(line: 128, column: 3, scope: !4186)
!4201 = !DILocation(line: 129, column: 1, scope: !4186)
!4202 = distinct !DISubprogram(name: "single_succ_edge", scope: !135, file: !135, line: 643, type: !4203, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4205)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!712, !4154}
!4205 = !{!4206}
!4206 = !DILocalVariable(name: "bb", arg: 1, scope: !4202, file: !135, line: 643, type: !4154)
!4207 = !DILocation(line: 0, scope: !4202)
!4208 = !DILocation(line: 645, column: 3, scope: !4202)
!4209 = !DILocation(line: 646, column: 10, scope: !4202)
!4210 = !DILocation(line: 646, column: 3, scope: !4202)
!4211 = distinct !DISubprogram(name: "single_succ_p", scope: !135, file: !135, line: 626, type: !4212, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4214)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!651, !4154}
!4214 = !{!4215}
!4215 = !DILocalVariable(name: "bb", arg: 1, scope: !4211, file: !135, line: 626, type: !4154)
!4216 = !DILocation(line: 0, scope: !4211)
!4217 = !DILocation(line: 628, column: 10, scope: !4211)
!4218 = !DILocation(line: 628, column: 33, scope: !4211)
!4219 = !DILocation(line: 628, column: 3, scope: !4211)
!4220 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !135, file: !135, line: 150, type: !4221, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4225)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!712, !4223, !7}
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!4225 = !{!4226, !4227}
!4226 = !DILocalVariable(name: "vec_", arg: 1, scope: !4220, file: !135, line: 150, type: !4223)
!4227 = !DILocalVariable(name: "ix_", arg: 2, scope: !4220, file: !135, line: 150, type: !7)
!4228 = !DILocation(line: 0, scope: !4220)
!4229 = !DILocation(line: 150, column: 1, scope: !4220)
!4230 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !135, file: !135, line: 150, type: !4231, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4233)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!7, !4223}
!4233 = !{!4234}
!4234 = !DILocalVariable(name: "vec_", arg: 1, scope: !4230, file: !135, line: 150, type: !4223)
!4235 = !DILocation(line: 0, scope: !4230)
!4236 = !DILocation(line: 150, column: 1, scope: !4230)
!4237 = distinct !DISubprogram(name: "gsi_end_p", scope: !581, file: !581, line: 4467, type: !4238, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4240)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!651, !3382}
!4240 = !{!4241}
!4241 = !DILocalVariable(name: "i", arg: 1, scope: !4237, file: !581, line: 4467, type: !3382)
!4242 = !DILocation(line: 4467, column: 33, scope: !4237)
!4243 = !DILocation(line: 4469, column: 12, scope: !4237)
!4244 = !DILocation(line: 4469, column: 16, scope: !4237)
!4245 = !DILocation(line: 4469, column: 10, scope: !4237)
!4246 = !DILocation(line: 4469, column: 3, scope: !4237)
!4247 = distinct !DISubprogram(name: "gsi_stmt", scope: !581, file: !581, line: 4501, type: !4248, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4250)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!671, !3382}
!4250 = !{!4251}
!4251 = !DILocalVariable(name: "i", arg: 1, scope: !4247, file: !581, line: 4501, type: !3382)
!4252 = !DILocation(line: 4501, column: 32, scope: !4247)
!4253 = !DILocation(line: 4503, column: 12, scope: !4247)
!4254 = !DILocation(line: 4503, column: 17, scope: !4247)
!4255 = !DILocation(line: 4503, column: 3, scope: !4247)
!4256 = distinct !DISubprogram(name: "gimple_set_plf", scope: !581, file: !581, line: 1235, type: !4257, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4259)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{null, !671, !619, !651}
!4259 = !{!4260, !4261, !4262}
!4260 = !DILocalVariable(name: "stmt", arg: 1, scope: !4256, file: !581, line: 1235, type: !671)
!4261 = !DILocalVariable(name: "plf", arg: 2, scope: !4256, file: !581, line: 1235, type: !619)
!4262 = !DILocalVariable(name: "val_p", arg: 3, scope: !4256, file: !581, line: 1235, type: !651)
!4263 = !DILocation(line: 0, scope: !4256)
!4264 = !DILocation(line: 1237, column: 7, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4256, file: !581, line: 1237, column: 7)
!4266 = !DILocation(line: 1237, column: 7, scope: !4256)
!4267 = !DILocation(line: 1238, column: 18, scope: !4265)
!4268 = !DILocation(line: 1238, column: 22, scope: !4265)
!4269 = !DILocation(line: 1238, column: 5, scope: !4265)
!4270 = !DILocation(line: 1240, column: 18, scope: !4265)
!4271 = !DILocation(line: 1240, column: 22, scope: !4265)
!4272 = !DILocation(line: 1241, column: 1, scope: !4256)
!4273 = distinct !DISubprogram(name: "gsi_next", scope: !581, file: !581, line: 4485, type: !4274, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4277)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{null, !4276}
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!4277 = !{!4278}
!4278 = !DILocalVariable(name: "i", arg: 1, scope: !4273, file: !581, line: 4485, type: !4276)
!4279 = !DILocation(line: 0, scope: !4273)
!4280 = !DILocation(line: 4487, column: 15, scope: !4273)
!4281 = !DILocation(line: 4487, column: 20, scope: !4273)
!4282 = !DILocation(line: 4487, column: 10, scope: !4273)
!4283 = !DILocation(line: 4488, column: 1, scope: !4273)
!4284 = distinct !DISubprogram(name: "gsi_start_bb", scope: !581, file: !581, line: 4418, type: !4285, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4287)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!3382, !1115}
!4287 = !{!4288, !4289, !4290}
!4288 = !DILocalVariable(name: "bb", arg: 1, scope: !4284, file: !581, line: 4418, type: !1115)
!4289 = !DILocalVariable(name: "i", scope: !4284, file: !581, line: 4420, type: !3382)
!4290 = !DILocalVariable(name: "seq", scope: !4284, file: !581, line: 4421, type: !722)
!4291 = !DILocation(line: 0, scope: !4284)
!4292 = !DILocation(line: 4420, column: 24, scope: !4284)
!4293 = !DILocation(line: 4423, column: 9, scope: !4284)
!4294 = !DILocation(line: 4424, column: 11, scope: !4284)
!4295 = !DILocation(line: 4424, column: 5, scope: !4284)
!4296 = !DILocation(line: 4424, column: 9, scope: !4284)
!4297 = !DILocation(line: 4425, column: 5, scope: !4284)
!4298 = !DILocation(line: 4425, column: 9, scope: !4284)
!4299 = !DILocation(line: 4426, column: 5, scope: !4284)
!4300 = !DILocation(line: 4426, column: 8, scope: !4284)
!4301 = !DILocation(line: 4429, column: 1, scope: !4284)
!4302 = distinct !DISubprogram(name: "mark_stmt_if_obviously_necessary", scope: !3, file: !3, line: 277, type: !4303, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4305)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{null, !671, !651}
!4305 = !{!4306, !4307, !4308}
!4306 = !DILocalVariable(name: "stmt", arg: 1, scope: !4302, file: !3, line: 277, type: !671)
!4307 = !DILocalVariable(name: "aggressive", arg: 2, scope: !4302, file: !3, line: 277, type: !651)
!4308 = !DILocalVariable(name: "lhs", scope: !4302, file: !3, line: 279, type: !853)
!4309 = !DILocation(line: 0, scope: !4302)
!4310 = !DILocation(line: 282, column: 7, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 282, column: 7)
!4312 = !DILocation(line: 283, column: 7, scope: !4311)
!4313 = !DILocation(line: 283, column: 10, scope: !4311)
!4314 = !DILocation(line: 282, column: 7, scope: !4302)
!4315 = !DILocation(line: 285, column: 7, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 284, column: 5)
!4317 = !DILocation(line: 286, column: 7, scope: !4316)
!4318 = !DILocation(line: 295, column: 11, scope: !4302)
!4319 = !DILocation(line: 295, column: 3, scope: !4302)
!4320 = !DILocation(line: 299, column: 7, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 296, column: 5)
!4322 = !DILocation(line: 300, column: 7, scope: !4321)
!4323 = !DILocation(line: 305, column: 7, scope: !4321)
!4324 = !DILocation(line: 306, column: 7, scope: !4321)
!4325 = !DILocation(line: 312, column: 11, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 312, column: 11)
!4327 = !DILocation(line: 312, column: 11, scope: !4321)
!4328 = !DILocation(line: 314, column: 4, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 313, column: 2)
!4330 = !DILocation(line: 315, column: 4, scope: !4329)
!4331 = !DILocation(line: 317, column: 12, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 317, column: 11)
!4333 = !DILocation(line: 317, column: 11, scope: !4321)
!4334 = !DILocation(line: 319, column: 13, scope: !4321)
!4335 = !DILocation(line: 319, column: 7, scope: !4321)
!4336 = !DILocation(line: 323, column: 11, scope: !4321)
!4337 = !DILocation(line: 324, column: 15, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 323, column: 11)
!4339 = !DILocation(line: 324, column: 9, scope: !4338)
!4340 = !DILocation(line: 332, column: 11, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 332, column: 11)
!4342 = !DILocation(line: 333, column: 4, scope: !4341)
!4343 = !DILocation(line: 333, column: 7, scope: !4341)
!4344 = !DILocation(line: 333, column: 52, scope: !4341)
!4345 = !DILocation(line: 332, column: 11, scope: !4321)
!4346 = !DILocation(line: 334, column: 2, scope: !4341)
!4347 = !DILocation(line: 338, column: 7, scope: !4321)
!4348 = !DILocation(line: 339, column: 7, scope: !4321)
!4349 = !DILocation(line: 340, column: 7, scope: !4321)
!4350 = !DILocation(line: 343, column: 7, scope: !4321)
!4351 = !DILocation(line: 347, column: 13, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 347, column: 11)
!4353 = !DILocation(line: 347, column: 11, scope: !4321)
!4354 = !DILocation(line: 348, column: 2, scope: !4352)
!4355 = !DILocation(line: 358, column: 7, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 358, column: 7)
!4357 = !DILocation(line: 358, column: 38, scope: !4356)
!4358 = !DILocation(line: 358, column: 41, scope: !4356)
!4359 = !DILocation(line: 358, column: 7, scope: !4302)
!4360 = !DILocation(line: 360, column: 7, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 359, column: 5)
!4362 = !DILocation(line: 361, column: 7, scope: !4361)
!4363 = !DILocation(line: 364, column: 7, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 364, column: 7)
!4365 = !DILocation(line: 364, column: 7, scope: !4302)
!4366 = !DILocation(line: 366, column: 7, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 365, column: 5)
!4368 = !DILocation(line: 367, column: 7, scope: !4367)
!4369 = !DILocation(line: 371, column: 1, scope: !4302)
!4370 = distinct !DISubprogram(name: "ei_start_1", scope: !135, file: !135, line: 696, type: !4371, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4373)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!3405, !3410}
!4373 = !{!4374, !4375}
!4374 = !DILocalVariable(name: "ev", arg: 1, scope: !4370, file: !135, line: 696, type: !3410)
!4375 = !DILocalVariable(name: "i", scope: !4370, file: !135, line: 698, type: !3405)
!4376 = !DILocation(line: 0, scope: !4370)
!4377 = !DILocation(line: 700, column: 5, scope: !4370)
!4378 = !DILocation(line: 700, column: 11, scope: !4370)
!4379 = !DILocation(line: 701, column: 5, scope: !4370)
!4380 = !DILocation(line: 701, column: 15, scope: !4370)
!4381 = !DILocation(line: 703, column: 3, scope: !4370)
!4382 = distinct !DISubprogram(name: "ei_cond", scope: !135, file: !135, line: 771, type: !4383, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4385)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!651, !3405, !3243}
!4385 = !{!4386, !4387}
!4386 = !DILocalVariable(name: "ei", arg: 1, scope: !4382, file: !135, line: 771, type: !3405)
!4387 = !DILocalVariable(name: "p", arg: 2, scope: !4382, file: !135, line: 771, type: !3243)
!4388 = !DILocation(line: 0, scope: !4382)
!4389 = !DILocation(line: 773, column: 8, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4382, file: !135, line: 773, column: 7)
!4391 = !DILocation(line: 773, column: 7, scope: !4382)
!4392 = !DILocation(line: 775, column: 12, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4390, file: !135, line: 774, column: 5)
!4394 = !DILocation(line: 776, column: 7, scope: !4393)
!4395 = !DILocation(line: 781, column: 7, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4390, file: !135, line: 779, column: 5)
!4397 = !DILocation(line: 0, scope: !4390)
!4398 = !DILocation(line: 783, column: 1, scope: !4382)
!4399 = distinct !DISubprogram(name: "mark_control_dependent_edges_necessary", scope: !3, file: !3, line: 378, type: !4400, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4402)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{null, !1115, !3237}
!4402 = !{!4403, !4404, !4405, !4413, !4414, !4418}
!4403 = !DILocalVariable(name: "bb", arg: 1, scope: !4399, file: !3, line: 378, type: !1115)
!4404 = !DILocalVariable(name: "el", arg: 2, scope: !4399, file: !3, line: 378, type: !3237)
!4405 = !DILocalVariable(name: "bi", scope: !4399, file: !3, line: 380, type: !4406)
!4406 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !793, line: 218, baseType: !4407)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !793, line: 203, size: 256, elements: !4408)
!4408 = !{!4409, !4410, !4411, !4412}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !4407, file: !793, line: 206, baseType: !796, size: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !4407, file: !793, line: 209, baseType: !796, size: 64, offset: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !4407, file: !793, line: 212, baseType: !7, size: 32, offset: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4407, file: !793, line: 217, baseType: !806, size: 64, offset: 192)
!4413 = !DILocalVariable(name: "edge_number", scope: !4399, file: !3, line: 381, type: !7)
!4414 = !DILocalVariable(name: "stmt", scope: !4415, file: !3, line: 390, type: !671)
!4415 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 389, column: 5)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 388, column: 3)
!4417 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 388, column: 3)
!4418 = !DILocalVariable(name: "cd_bb", scope: !4415, file: !3, line: 391, type: !1115)
!4419 = !DILocation(line: 0, scope: !4399)
!4420 = !DILocation(line: 380, column: 3, scope: !4399)
!4421 = !DILocation(line: 381, column: 3, scope: !4399)
!4422 = !DILocation(line: 383, column: 3, scope: !4399)
!4423 = !DILocation(line: 385, column: 13, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 385, column: 7)
!4425 = !DILocation(line: 0, scope: !4424)
!4426 = !DILocation(line: 385, column: 10, scope: !4424)
!4427 = !DILocation(line: 385, column: 7, scope: !4399)
!4428 = !DILocation(line: 388, column: 3, scope: !4417)
!4429 = !DILocation(line: 0, scope: !4415)
!4430 = !DILocation(line: 388, column: 3, scope: !4416)
!4431 = !DILocation(line: 391, column: 27, scope: !4415)
!4432 = !DILocation(line: 393, column: 11, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4415, file: !3, line: 393, column: 11)
!4434 = !DILocation(line: 393, column: 11, scope: !4415)
!4435 = !DILocation(line: 395, column: 7, scope: !4415)
!4436 = !DILocation(line: 396, column: 16, scope: !4415)
!4437 = !DILocation(line: 396, column: 47, scope: !4415)
!4438 = !DILocation(line: 396, column: 7, scope: !4415)
!4439 = !DILocation(line: 398, column: 14, scope: !4415)
!4440 = !DILocation(line: 399, column: 11, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4415, file: !3, line: 399, column: 11)
!4442 = !DILocation(line: 399, column: 16, scope: !4441)
!4443 = !DILocation(line: 399, column: 19, scope: !4441)
!4444 = !DILocation(line: 399, column: 11, scope: !4415)
!4445 = !DILocation(line: 400, column: 2, scope: !4441)
!4446 = distinct !{!4446, !4428, !4447}
!4447 = !DILocation(line: 401, column: 5, scope: !4417)
!4448 = !DILocation(line: 402, column: 1, scope: !4399)
!4449 = distinct !DISubprogram(name: "ei_next", scope: !135, file: !135, line: 736, type: !4450, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4453)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{null, !4452}
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!4453 = !{!4454}
!4454 = !DILocalVariable(name: "i", arg: 1, scope: !4449, file: !135, line: 736, type: !4452)
!4455 = !DILocation(line: 0, scope: !4449)
!4456 = !DILocation(line: 738, column: 3, scope: !4449)
!4457 = !DILocation(line: 739, column: 11, scope: !4449)
!4458 = !DILocation(line: 740, column: 1, scope: !4449)
!4459 = distinct !DISubprogram(name: "fel_init", scope: !146, file: !146, line: 535, type: !4460, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4464)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{null, !4462, !4463, !7}
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!4464 = !{!4465, !4466, !4467, !4468, !4469, !4470}
!4465 = !DILocalVariable(name: "li", arg: 1, scope: !4459, file: !146, line: 535, type: !4462)
!4466 = !DILocalVariable(name: "loop", arg: 2, scope: !4459, file: !146, line: 535, type: !4463)
!4467 = !DILocalVariable(name: "flags", arg: 3, scope: !4459, file: !146, line: 535, type: !7)
!4468 = !DILocalVariable(name: "aloop", scope: !4459, file: !146, line: 537, type: !1290)
!4469 = !DILocalVariable(name: "i", scope: !4459, file: !146, line: 538, type: !7)
!4470 = !DILocalVariable(name: "mn", scope: !4459, file: !146, line: 539, type: !652)
!4471 = !DILocation(line: 0, scope: !4459)
!4472 = !DILocation(line: 541, column: 7, scope: !4459)
!4473 = !DILocation(line: 541, column: 11, scope: !4459)
!4474 = !DILocation(line: 542, column: 8, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4459, file: !146, line: 542, column: 7)
!4476 = !DILocation(line: 542, column: 7, scope: !4459)
!4477 = !DILocation(line: 544, column: 11, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4475, file: !146, line: 543, column: 5)
!4479 = !DILocation(line: 544, column: 20, scope: !4478)
!4480 = !DILocation(line: 545, column: 13, scope: !4478)
!4481 = !DILocation(line: 546, column: 7, scope: !4478)
!4482 = !DILocation(line: 549, column: 18, scope: !4459)
!4483 = !DILocation(line: 549, column: 7, scope: !4459)
!4484 = !DILocation(line: 549, column: 16, scope: !4459)
!4485 = !DILocation(line: 0, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4487, file: !146, line: 560, column: 12)
!4487 = distinct !DILexicalBlock(scope: !4459, file: !146, line: 552, column: 7)
!4488 = !DILocation(line: 590, column: 7, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4486, file: !146, line: 587, column: 5)
!4490 = !DILocation(line: 592, column: 8, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !146, line: 592, column: 8)
!4492 = distinct !DILexicalBlock(scope: !4489, file: !146, line: 591, column: 2)
!4493 = !DILocation(line: 592, column: 15, scope: !4491)
!4494 = !DILocation(line: 592, column: 19, scope: !4491)
!4495 = !DILocation(line: 592, column: 8, scope: !4492)
!4496 = !DILocation(line: 593, column: 6, scope: !4491)
!4497 = !DILocation(line: 595, column: 15, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4492, file: !146, line: 595, column: 8)
!4499 = !DILocation(line: 595, column: 21, scope: !4498)
!4500 = !DILocation(line: 595, column: 8, scope: !4492)
!4501 = !DILocation(line: 599, column: 8, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4498, file: !146, line: 598, column: 6)
!4503 = !DILocation(line: 596, column: 21, scope: !4498)
!4504 = !DILocation(line: 596, column: 6, scope: !4498)
!4505 = !DILocation(line: 599, column: 15, scope: !4502)
!4506 = !DILocation(line: 599, column: 21, scope: !4502)
!4507 = !DILocation(line: 599, column: 29, scope: !4502)
!4508 = !DILocation(line: 599, column: 39, scope: !4502)
!4509 = !DILocation(line: 599, column: 44, scope: !4502)
!4510 = !DILocation(line: 0, scope: !4502)
!4511 = !DILocation(line: 600, column: 11, scope: !4502)
!4512 = distinct !{!4512, !4501, !4513}
!4513 = !DILocation(line: 600, column: 28, scope: !4502)
!4514 = !DILocation(line: 601, column: 18, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4502, file: !146, line: 601, column: 12)
!4516 = !DILocation(line: 601, column: 12, scope: !4502)
!4517 = !DILocation(line: 603, column: 23, scope: !4502)
!4518 = distinct !{!4518, !4488, !4519}
!4519 = !DILocation(line: 605, column: 2, scope: !4489)
!4520 = !DILocation(line: 608, column: 3, scope: !4459)
!4521 = !DILocation(line: 609, column: 1, scope: !4459)
!4522 = distinct !DISubprogram(name: "fel_next", scope: !146, file: !146, line: 518, type: !4523, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4525)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{null, !4462, !4463}
!4525 = !{!4526, !4527, !4528}
!4526 = !DILocalVariable(name: "li", arg: 1, scope: !4522, file: !146, line: 518, type: !4462)
!4527 = !DILocalVariable(name: "loop", arg: 2, scope: !4522, file: !146, line: 518, type: !4463)
!4528 = !DILocalVariable(name: "anum", scope: !4522, file: !146, line: 520, type: !652)
!4529 = !DILocation(line: 0, scope: !4522)
!4530 = !DILocation(line: 520, column: 3, scope: !4522)
!4531 = !DILocation(line: 522, column: 3, scope: !4522)
!4532 = !DILocation(line: 522, column: 10, scope: !4522)
!4533 = !DILocation(line: 524, column: 14, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4522, file: !146, line: 523, column: 5)
!4535 = !DILocation(line: 525, column: 25, scope: !4534)
!4536 = !DILocation(line: 525, column: 15, scope: !4534)
!4537 = !DILocation(line: 525, column: 13, scope: !4534)
!4538 = !DILocation(line: 526, column: 11, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4534, file: !146, line: 526, column: 11)
!4540 = !DILocation(line: 526, column: 11, scope: !4534)
!4541 = distinct !{!4541, !4531, !4542}
!4542 = !DILocation(line: 528, column: 5, scope: !4522)
!4543 = !DILocation(line: 530, column: 3, scope: !4522)
!4544 = !DILocation(line: 531, column: 9, scope: !4522)
!4545 = !DILocation(line: 532, column: 1, scope: !4522)
!4546 = distinct !DISubprogram(name: "bb_seq", scope: !581, file: !581, line: 237, type: !4547, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4549)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!722, !4154}
!4549 = !{!4550}
!4550 = !DILocalVariable(name: "bb", arg: 1, scope: !4546, file: !581, line: 237, type: !4154)
!4551 = !DILocation(line: 0, scope: !4546)
!4552 = !DILocation(line: 239, column: 17, scope: !4546)
!4553 = !DILocation(line: 239, column: 23, scope: !4546)
!4554 = !DILocation(line: 239, column: 33, scope: !4546)
!4555 = !DILocation(line: 239, column: 43, scope: !4546)
!4556 = !DILocation(line: 239, column: 36, scope: !4546)
!4557 = !DILocation(line: 239, column: 10, scope: !4546)
!4558 = !DILocation(line: 239, column: 68, scope: !4546)
!4559 = !DILocation(line: 239, column: 3, scope: !4546)
!4560 = distinct !DISubprogram(name: "gimple_seq_first", scope: !581, file: !581, line: 159, type: !4561, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4566)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!727, !4563}
!4563 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !672, line: 67, baseType: !4564)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!4566 = !{!4567}
!4567 = !DILocalVariable(name: "s", arg: 1, scope: !4560, file: !581, line: 159, type: !4563)
!4568 = !DILocation(line: 0, scope: !4560)
!4569 = !DILocation(line: 161, column: 10, scope: !4560)
!4570 = !DILocation(line: 161, column: 17, scope: !4560)
!4571 = !DILocation(line: 161, column: 3, scope: !4560)
!4572 = distinct !DISubprogram(name: "mark_stmt_necessary", scope: !3, file: !3, line: 207, type: !4303, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4573)
!4573 = !{!4574, !4575}
!4574 = !DILocalVariable(name: "stmt", arg: 1, scope: !4572, file: !3, line: 207, type: !671)
!4575 = !DILocalVariable(name: "add_to_worklist", arg: 2, scope: !4572, file: !3, line: 207, type: !651)
!4576 = !DILocation(line: 0, scope: !4572)
!4577 = !DILocation(line: 209, column: 3, scope: !4572)
!4578 = !DILocation(line: 211, column: 7, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 211, column: 7)
!4580 = !DILocation(line: 211, column: 7, scope: !4572)
!4581 = !DILocation(line: 214, column: 7, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 214, column: 7)
!4583 = !DILocation(line: 214, column: 17, scope: !4582)
!4584 = !DILocation(line: 214, column: 21, scope: !4582)
!4585 = !DILocation(line: 214, column: 32, scope: !4582)
!4586 = !DILocation(line: 214, column: 7, scope: !4572)
!4587 = !DILocation(line: 216, column: 7, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 215, column: 5)
!4589 = !DILocation(line: 217, column: 26, scope: !4588)
!4590 = !DILocation(line: 217, column: 7, scope: !4588)
!4591 = !DILocation(line: 218, column: 16, scope: !4588)
!4592 = !DILocation(line: 218, column: 7, scope: !4588)
!4593 = !DILocation(line: 219, column: 5, scope: !4588)
!4594 = !DILocation(line: 221, column: 3, scope: !4572)
!4595 = !DILocation(line: 222, column: 7, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 222, column: 7)
!4597 = !DILocation(line: 222, column: 7, scope: !4572)
!4598 = !DILocation(line: 223, column: 5, scope: !4596)
!4599 = !DILocation(line: 224, column: 7, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 224, column: 7)
!4601 = !DILocation(line: 224, column: 30, scope: !4600)
!4602 = !DILocation(line: 224, column: 34, scope: !4600)
!4603 = !DILocation(line: 224, column: 7, scope: !4572)
!4604 = !DILocation(line: 225, column: 14, scope: !4600)
!4605 = !DILocation(line: 225, column: 38, scope: !4600)
!4606 = !DILocation(line: 225, column: 56, scope: !4600)
!4607 = !DILocation(line: 225, column: 5, scope: !4600)
!4608 = !DILocation(line: 226, column: 1, scope: !4572)
!4609 = distinct !DISubprogram(name: "gimple_call_lhs", scope: !581, file: !581, line: 1878, type: !2619, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4610)
!4610 = !{!4611}
!4611 = !DILocalVariable(name: "gs", arg: 1, scope: !4609, file: !581, line: 1878, type: !2621)
!4612 = !DILocation(line: 0, scope: !4609)
!4613 = !DILocation(line: 1881, column: 10, scope: !4609)
!4614 = !DILocation(line: 1881, column: 3, scope: !4609)
!4615 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !581, file: !581, line: 1694, type: !2619, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4616)
!4616 = !{!4617}
!4617 = !DILocalVariable(name: "gs", arg: 1, scope: !4615, file: !581, line: 1694, type: !2621)
!4618 = !DILocation(line: 0, scope: !4615)
!4619 = !DILocation(line: 1697, column: 10, scope: !4615)
!4620 = !DILocation(line: 1697, column: 3, scope: !4615)
!4621 = distinct !DISubprogram(name: "gimple_debug_bind_has_value_p", scope: !581, file: !581, line: 3349, type: !4622, scopeLine: 3350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4624)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!651, !671}
!4624 = !{!4625}
!4625 = !DILocalVariable(name: "dbg", arg: 1, scope: !4621, file: !581, line: 3349, type: !671)
!4626 = !DILocation(line: 0, scope: !4621)
!4627 = !DILocation(line: 3355, column: 10, scope: !4621)
!4628 = !DILocation(line: 3355, column: 29, scope: !4621)
!4629 = !DILocation(line: 3355, column: 3, scope: !4621)
!4630 = distinct !DISubprogram(name: "gimple_debug_bind_get_var", scope: !581, file: !581, line: 3268, type: !4631, scopeLine: 3269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4633)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!853, !671}
!4633 = !{!4634}
!4634 = !DILocalVariable(name: "dbg", arg: 1, scope: !4630, file: !581, line: 3268, type: !671)
!4635 = !DILocation(line: 0, scope: !4630)
!4636 = !DILocation(line: 3274, column: 10, scope: !4630)
!4637 = !DILocation(line: 3274, column: 3, scope: !4630)
!4638 = distinct !DISubprogram(name: "gimple_bb", scope: !581, file: !581, line: 1112, type: !4639, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4641)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!696, !2621}
!4641 = !{!4642}
!4642 = !DILocalVariable(name: "g", arg: 1, scope: !4638, file: !581, line: 1112, type: !2621)
!4643 = !DILocation(line: 0, scope: !4638)
!4644 = !DILocation(line: 1114, column: 20, scope: !4638)
!4645 = !DILocation(line: 1114, column: 3, scope: !4638)
!4646 = distinct !DISubprogram(name: "gimple_has_volatile_ops", scope: !581, file: !581, line: 1477, type: !3189, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4647)
!4647 = !{!4648}
!4648 = !DILocalVariable(name: "stmt", arg: 1, scope: !4646, file: !581, line: 1477, type: !2621)
!4649 = !DILocation(line: 0, scope: !4646)
!4650 = !DILocation(line: 1479, column: 7, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4646, file: !581, line: 1479, column: 7)
!4652 = !DILocation(line: 1479, column: 7, scope: !4646)
!4653 = !DILocation(line: 1480, column: 25, scope: !4651)
!4654 = !DILocation(line: 1480, column: 12, scope: !4651)
!4655 = !DILocation(line: 1480, column: 5, scope: !4651)
!4656 = !DILocation(line: 0, scope: !4651)
!4657 = !DILocation(line: 1483, column: 1, scope: !4646)
!4658 = distinct !DISubprogram(name: "gimple_plf", scope: !581, file: !581, line: 1247, type: !4659, scopeLine: 1248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4661)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!7, !671, !619}
!4661 = !{!4662, !4663}
!4662 = !DILocalVariable(name: "stmt", arg: 1, scope: !4658, file: !581, line: 1247, type: !671)
!4663 = !DILocalVariable(name: "plf", arg: 2, scope: !4658, file: !581, line: 1247, type: !619)
!4664 = !DILocation(line: 0, scope: !4658)
!4665 = !DILocation(line: 1249, column: 23, scope: !4658)
!4666 = !DILocation(line: 1249, column: 27, scope: !4658)
!4667 = !DILocation(line: 1249, column: 3, scope: !4658)
!4668 = distinct !DISubprogram(name: "VEC_gimple_heap_safe_push", scope: !581, file: !581, line: 34, type: !4669, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4673)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!4671, !4672, !671}
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!4673 = !{!4674, !4675}
!4674 = !DILocalVariable(name: "vec_", arg: 1, scope: !4668, file: !581, line: 34, type: !4672)
!4675 = !DILocalVariable(name: "obj_", arg: 2, scope: !4668, file: !581, line: 34, type: !671)
!4676 = !DILocation(line: 0, scope: !4668)
!4677 = !DILocation(line: 34, column: 1, scope: !4668)
!4678 = distinct !DISubprogram(name: "is_gimple_debug", scope: !581, file: !581, line: 3249, type: !3189, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4679)
!4679 = !{!4680}
!4680 = !DILocalVariable(name: "gs", arg: 1, scope: !4678, file: !581, line: 3249, type: !2621)
!4681 = !DILocation(line: 0, scope: !4678)
!4682 = !DILocation(line: 3251, column: 10, scope: !4678)
!4683 = !DILocation(line: 3251, column: 27, scope: !4678)
!4684 = !DILocation(line: 3251, column: 3, scope: !4678)
!4685 = distinct !DISubprogram(name: "SET_BIT", scope: !2072, file: !2072, line: 63, type: !4686, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4688)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{null, !2071, !7}
!4688 = !{!4689, !4690, !4691}
!4689 = !DILocalVariable(name: "map", arg: 1, scope: !4685, file: !2072, line: 63, type: !2071)
!4690 = !DILocalVariable(name: "bitno", arg: 2, scope: !4685, file: !2072, line: 63, type: !7)
!4691 = !DILocalVariable(name: "oldbit", scope: !4692, file: !2072, line: 67, type: !651)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !2072, line: 66, column: 5)
!4693 = distinct !DILexicalBlock(scope: !4685, file: !2072, line: 65, column: 7)
!4694 = !DILocation(line: 0, scope: !4685)
!4695 = !DILocation(line: 65, column: 12, scope: !4693)
!4696 = !DILocation(line: 65, column: 7, scope: !4693)
!4697 = !DILocation(line: 65, column: 7, scope: !4685)
!4698 = !DILocation(line: 73, column: 40, scope: !4685)
!4699 = !DILocation(line: 73, column: 29, scope: !4685)
!4700 = !DILocation(line: 72, column: 19, scope: !4685)
!4701 = !DILocation(line: 72, column: 3, scope: !4685)
!4702 = !DILocation(line: 68, column: 16, scope: !4692)
!4703 = !DILocation(line: 69, column: 12, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4692, file: !2072, line: 69, column: 11)
!4705 = !DILocation(line: 69, column: 11, scope: !4692)
!4706 = !DILocation(line: 70, column: 2, scope: !4704)
!4707 = !DILocation(line: 70, column: 41, scope: !4704)
!4708 = !DILocation(line: 73, column: 5, scope: !4685)
!4709 = !DILocation(line: 74, column: 1, scope: !4685)
!4710 = distinct !DISubprogram(name: "VEC_gimple_heap_reserve", scope: !581, file: !581, line: 34, type: !4711, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4713)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!652, !4672, !652}
!4713 = !{!4714, !4715, !4716}
!4714 = !DILocalVariable(name: "vec_", arg: 1, scope: !4710, file: !581, line: 34, type: !4672)
!4715 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4710, file: !581, line: 34, type: !652)
!4716 = !DILocalVariable(name: "extend", scope: !4710, file: !581, line: 34, type: !652)
!4717 = !DILocation(line: 0, scope: !4710)
!4718 = !DILocation(line: 34, column: 1, scope: !4710)
!4719 = !DILocation(line: 34, column: 1, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4710, file: !581, line: 34, column: 1)
!4721 = distinct !DISubprogram(name: "VEC_gimple_base_quick_push", scope: !581, file: !581, line: 33, type: !4722, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4725)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!4671, !4724, !671}
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!4725 = !{!4726, !4727, !4728}
!4726 = !DILocalVariable(name: "vec_", arg: 1, scope: !4721, file: !581, line: 33, type: !4724)
!4727 = !DILocalVariable(name: "obj_", arg: 2, scope: !4721, file: !581, line: 33, type: !671)
!4728 = !DILocalVariable(name: "slot_", scope: !4721, file: !581, line: 33, type: !4671)
!4729 = !DILocation(line: 0, scope: !4721)
!4730 = !DILocation(line: 33, column: 1, scope: !4721)
!4731 = distinct !DISubprogram(name: "VEC_gimple_base_space", scope: !581, file: !581, line: 33, type: !4732, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4734)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!652, !4724, !652}
!4734 = !{!4735, !4736}
!4735 = !DILocalVariable(name: "vec_", arg: 1, scope: !4731, file: !581, line: 33, type: !4724)
!4736 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4731, file: !581, line: 33, type: !652)
!4737 = !DILocation(line: 0, scope: !4731)
!4738 = !DILocation(line: 33, column: 1, scope: !4731)
!4739 = distinct !DISubprogram(name: "gimple_op", scope: !581, file: !581, line: 1631, type: !4740, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4742)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!853, !2621, !7}
!4742 = !{!4743, !4744}
!4743 = !DILocalVariable(name: "gs", arg: 1, scope: !4739, file: !581, line: 1631, type: !2621)
!4744 = !DILocalVariable(name: "i", arg: 2, scope: !4739, file: !581, line: 1631, type: !7)
!4745 = !DILocation(line: 0, scope: !4739)
!4746 = !DILocation(line: 1633, column: 7, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4739, file: !581, line: 1633, column: 7)
!4748 = !DILocation(line: 1633, column: 7, scope: !4739)
!4749 = !DILocation(line: 1638, column: 14, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4747, file: !581, line: 1634, column: 5)
!4751 = !DILocation(line: 1638, column: 7, scope: !4750)
!4752 = !DILocation(line: 0, scope: !4747)
!4753 = !DILocation(line: 1642, column: 1, scope: !4739)
!4754 = distinct !DISubprogram(name: "gimple_ops", scope: !581, file: !581, line: 1614, type: !4755, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4757)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!1264, !671}
!4757 = !{!4758, !4759}
!4758 = !DILocalVariable(name: "gs", arg: 1, scope: !4754, file: !581, line: 1614, type: !671)
!4759 = !DILocalVariable(name: "off", scope: !4754, file: !581, line: 1616, type: !1173)
!4760 = !DILocation(line: 0, scope: !4754)
!4761 = !DILocation(line: 1621, column: 28, scope: !4754)
!4762 = !DILocation(line: 1621, column: 9, scope: !4754)
!4763 = !DILocation(line: 1622, column: 3, scope: !4754)
!4764 = !DILocation(line: 1624, column: 20, scope: !4754)
!4765 = !DILocation(line: 1624, column: 32, scope: !4754)
!4766 = !DILocation(line: 1624, column: 10, scope: !4754)
!4767 = !DILocation(line: 1624, column: 3, scope: !4754)
!4768 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !581, file: !581, line: 1073, type: !4769, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4771)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!623, !671}
!4771 = !{!4772}
!4772 = !DILocalVariable(name: "gs", arg: 1, scope: !4768, file: !581, line: 1073, type: !671)
!4773 = !DILocation(line: 0, scope: !4768)
!4774 = !DILocation(line: 1075, column: 24, scope: !4768)
!4775 = !DILocation(line: 1075, column: 10, scope: !4768)
!4776 = !DILocation(line: 1075, column: 3, scope: !4768)
!4777 = distinct !DISubprogram(name: "gss_for_code", scope: !581, file: !581, line: 1061, type: !4778, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4780)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!623, !580}
!4780 = !{!4781}
!4781 = !DILocalVariable(name: "code", arg: 1, scope: !4777, file: !581, line: 1061, type: !580)
!4782 = !DILocation(line: 0, scope: !4777)
!4783 = !DILocation(line: 1066, column: 10, scope: !4777)
!4784 = !DILocation(line: 1066, column: 3, scope: !4777)
!4785 = distinct !DISubprogram(name: "ei_end_p", scope: !135, file: !135, line: 721, type: !4786, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4788)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!651, !3405}
!4788 = !{!4789}
!4789 = !DILocalVariable(name: "i", arg: 1, scope: !4785, file: !135, line: 721, type: !3405)
!4790 = !DILocation(line: 723, column: 22, scope: !4785)
!4791 = !DILocation(line: 723, column: 19, scope: !4785)
!4792 = !DILocation(line: 723, column: 10, scope: !4785)
!4793 = !DILocation(line: 723, column: 3, scope: !4785)
!4794 = distinct !DISubprogram(name: "ei_edge", scope: !135, file: !135, line: 752, type: !4795, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4797)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!712, !3405}
!4797 = !{!4798}
!4798 = !DILocalVariable(name: "i", arg: 1, scope: !4794, file: !135, line: 752, type: !3405)
!4799 = !DILocation(line: 754, column: 10, scope: !4794)
!4800 = !DILocation(line: 754, column: 3, scope: !4794)
!4801 = distinct !DISubprogram(name: "ei_container", scope: !135, file: !135, line: 685, type: !4802, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4804)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!700, !3405}
!4804 = !{!4805}
!4805 = !DILocalVariable(name: "i", arg: 1, scope: !4801, file: !135, line: 685, type: !3405)
!4806 = !DILocation(line: 687, column: 3, scope: !4801)
!4807 = !DILocation(line: 688, column: 10, scope: !4801)
!4808 = !DILocation(line: 688, column: 3, scope: !4801)
!4809 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !793, file: !793, line: 224, type: !4810, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4817)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{null, !4812, !4813, !7, !4816}
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !672, line: 48, baseType: !4814)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4817 = !{!4818, !4819, !4820, !4821}
!4818 = !DILocalVariable(name: "bi", arg: 1, scope: !4809, file: !793, line: 224, type: !4812)
!4819 = !DILocalVariable(name: "map", arg: 2, scope: !4809, file: !793, line: 224, type: !4813)
!4820 = !DILocalVariable(name: "start_bit", arg: 3, scope: !4809, file: !793, line: 225, type: !7)
!4821 = !DILocalVariable(name: "bit_no", arg: 4, scope: !4809, file: !793, line: 225, type: !4816)
!4822 = !DILocation(line: 0, scope: !4809)
!4823 = !DILocation(line: 227, column: 19, scope: !4809)
!4824 = !DILocation(line: 227, column: 12, scope: !4809)
!4825 = !DILocation(line: 228, column: 7, scope: !4809)
!4826 = !DILocation(line: 228, column: 12, scope: !4809)
!4827 = !DILocation(line: 0, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4829, file: !793, line: 233, column: 11)
!4829 = distinct !DILexicalBlock(scope: !4809, file: !793, line: 232, column: 5)
!4830 = !DILocation(line: 231, column: 3, scope: !4809)
!4831 = !DILocation(line: 233, column: 12, scope: !4828)
!4832 = !DILocation(line: 233, column: 11, scope: !4829)
!4833 = !DILocation(line: 235, column: 13, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4828, file: !793, line: 234, column: 2)
!4835 = !DILocation(line: 236, column: 4, scope: !4834)
!4836 = !DILocation(line: 239, column: 11, scope: !4829)
!4837 = distinct !{!4837, !4830, !4838}
!4838 = !DILocation(line: 242, column: 5, scope: !4809)
!4839 = !DILocation(line: 245, column: 11, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4809, file: !793, line: 245, column: 7)
!4841 = !DILocation(line: 245, column: 17, scope: !4840)
!4842 = !DILocation(line: 245, column: 22, scope: !4840)
!4843 = !DILocation(line: 245, column: 7, scope: !4809)
!4844 = !DILocation(line: 246, column: 27, scope: !4840)
!4845 = !DILocation(line: 246, column: 32, scope: !4840)
!4846 = !DILocation(line: 246, column: 5, scope: !4840)
!4847 = !DILocation(line: 249, column: 7, scope: !4809)
!4848 = !DILocation(line: 249, column: 15, scope: !4809)
!4849 = !DILocation(line: 250, column: 14, scope: !4809)
!4850 = !DILocation(line: 251, column: 7, scope: !4809)
!4851 = !DILocation(line: 251, column: 12, scope: !4809)
!4852 = !DILocation(line: 257, column: 16, scope: !4809)
!4853 = !DILocation(line: 257, column: 13, scope: !4809)
!4854 = !DILocation(line: 259, column: 11, scope: !4809)
!4855 = !DILocation(line: 260, column: 1, scope: !4809)
!4856 = distinct !DISubprogram(name: "bmp_iter_set", scope: !793, file: !793, line: 393, type: !4857, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4859)
!4857 = !DISubroutineType(types: !4858)
!4858 = !{!651, !4812, !4816}
!4859 = !{!4860, !4861, !4862}
!4860 = !DILocalVariable(name: "bi", arg: 1, scope: !4856, file: !793, line: 393, type: !4812)
!4861 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4856, file: !793, line: 393, type: !4816)
!4862 = !DILabel(scope: !4863, name: "next_bit", file: !793, line: 398)
!4863 = distinct !DILexicalBlock(scope: !4864, file: !793, line: 397, column: 5)
!4864 = distinct !DILexicalBlock(scope: !4856, file: !793, line: 396, column: 7)
!4865 = !DILocation(line: 0, scope: !4856)
!4866 = !DILocation(line: 396, column: 11, scope: !4864)
!4867 = !DILocation(line: 396, column: 7, scope: !4864)
!4868 = !DILocation(line: 396, column: 7, scope: !4856)
!4869 = !DILocation(line: 419, column: 15, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4871, file: !793, line: 418, column: 2)
!4871 = distinct !DILexicalBlock(scope: !4856, file: !793, line: 415, column: 5)
!4872 = !DILocation(line: 399, column: 7, scope: !4863)
!4873 = !DILocation(line: 398, column: 5, scope: !4863)
!4874 = !DILocation(line: 399, column: 20, scope: !4863)
!4875 = !DILocation(line: 399, column: 25, scope: !4863)
!4876 = !DILocation(line: 399, column: 14, scope: !4863)
!4877 = !DILocation(line: 401, column: 13, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4863, file: !793, line: 400, column: 2)
!4879 = !DILocation(line: 402, column: 12, scope: !4878)
!4880 = distinct !{!4880, !4872, !4881}
!4881 = !DILocation(line: 403, column: 2, scope: !4863)
!4882 = !DILocation(line: 410, column: 15, scope: !4856)
!4883 = !DILocation(line: 410, column: 42, scope: !4856)
!4884 = !DILocation(line: 411, column: 26, scope: !4856)
!4885 = !DILocation(line: 410, column: 11, scope: !4856)
!4886 = !DILocation(line: 412, column: 7, scope: !4856)
!4887 = !DILocation(line: 412, column: 14, scope: !4856)
!4888 = !DILocation(line: 0, scope: !4871)
!4889 = !DILocation(line: 414, column: 3, scope: !4856)
!4890 = !DILocation(line: 417, column: 7, scope: !4871)
!4891 = !DILocation(line: 417, column: 18, scope: !4871)
!4892 = !DILocation(line: 417, column: 26, scope: !4871)
!4893 = !DILocation(line: 419, column: 13, scope: !4870)
!4894 = !DILocation(line: 420, column: 8, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4870, file: !793, line: 420, column: 8)
!4896 = !DILocation(line: 420, column: 8, scope: !4870)
!4897 = !DILocation(line: 422, column: 12, scope: !4870)
!4898 = !DILocation(line: 423, column: 15, scope: !4870)
!4899 = distinct !{!4899, !4890, !4900}
!4900 = !DILocation(line: 424, column: 2, scope: !4871)
!4901 = !DILocation(line: 427, column: 28, scope: !4871)
!4902 = !DILocation(line: 427, column: 16, scope: !4871)
!4903 = !DILocation(line: 428, column: 12, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4871, file: !793, line: 428, column: 11)
!4905 = !DILocation(line: 428, column: 11, scope: !4871)
!4906 = !DILocation(line: 430, column: 27, scope: !4871)
!4907 = !DILocation(line: 430, column: 32, scope: !4871)
!4908 = !DILocation(line: 430, column: 15, scope: !4871)
!4909 = !DILocation(line: 431, column: 19, scope: !4871)
!4910 = distinct !{!4910, !4889, !4911}
!4911 = !DILocation(line: 432, column: 5, scope: !4856)
!4912 = !DILocation(line: 433, column: 1, scope: !4856)
!4913 = distinct !DISubprogram(name: "bmp_iter_next", scope: !793, file: !793, line: 382, type: !4914, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4916)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{null, !4812, !4816}
!4916 = !{!4917, !4918}
!4917 = !DILocalVariable(name: "bi", arg: 1, scope: !4913, file: !793, line: 382, type: !4812)
!4918 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4913, file: !793, line: 382, type: !4816)
!4919 = !DILocation(line: 0, scope: !4913)
!4920 = !DILocation(line: 384, column: 7, scope: !4913)
!4921 = !DILocation(line: 384, column: 12, scope: !4913)
!4922 = !DILocation(line: 385, column: 11, scope: !4913)
!4923 = !DILocation(line: 386, column: 1, scope: !4913)
!4924 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !2024, file: !2024, line: 32, type: !4925, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4927)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!2022, !652}
!4927 = !{!4928}
!4928 = !DILocalVariable(name: "alloc_", arg: 1, scope: !4924, file: !2024, line: 32, type: !652)
!4929 = !DILocation(line: 0, scope: !4924)
!4930 = !DILocation(line: 32, column: 1, scope: !4924)
!4931 = distinct !DISubprogram(name: "number_of_loops", scope: !146, file: !146, line: 459, type: !2052, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2137)
!4932 = !DILocation(line: 461, column: 8, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4931, file: !146, line: 461, column: 7)
!4934 = !DILocation(line: 461, column: 7, scope: !4931)
!4935 = !DILocation(line: 464, column: 10, scope: !4931)
!4936 = !DILocation(line: 464, column: 3, scope: !4931)
!4937 = !DILocation(line: 0, scope: !4931)
!4938 = !DILocation(line: 465, column: 1, scope: !4931)
!4939 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !146, file: !146, line: 85, type: !4940, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4944)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!652, !4942, !7, !4463}
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!4944 = !{!4945, !4946, !4947}
!4945 = !DILocalVariable(name: "vec_", arg: 1, scope: !4939, file: !146, line: 85, type: !4942)
!4946 = !DILocalVariable(name: "ix_", arg: 2, scope: !4939, file: !146, line: 85, type: !7)
!4947 = !DILocalVariable(name: "ptr", arg: 3, scope: !4939, file: !146, line: 85, type: !4463)
!4948 = !DILocation(line: 0, scope: !4939)
!4949 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !2024, file: !2024, line: 31, type: !4950, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4954)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!4952, !4953, !652}
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!4954 = !{!4955, !4956, !4957}
!4955 = !DILocalVariable(name: "vec_", arg: 1, scope: !4949, file: !2024, line: 31, type: !4953)
!4956 = !DILocalVariable(name: "obj_", arg: 2, scope: !4949, file: !2024, line: 31, type: !652)
!4957 = !DILocalVariable(name: "slot_", scope: !4949, file: !2024, line: 31, type: !4952)
!4958 = !DILocation(line: 0, scope: !4949)
!4959 = !DILocation(line: 31, column: 1, scope: !4949)
!4960 = distinct !DISubprogram(name: "loop_outer", scope: !146, file: !146, line: 434, type: !4961, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4965)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!1290, !4963}
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1291)
!4965 = !{!4966, !4967}
!4966 = !DILocalVariable(name: "loop", arg: 1, scope: !4960, file: !146, line: 434, type: !4963)
!4967 = !DILocalVariable(name: "n", scope: !4960, file: !146, line: 436, type: !7)
!4968 = !DILocation(line: 0, scope: !4960)
!4969 = !DILocation(line: 436, column: 16, scope: !4960)
!4970 = !DILocation(line: 438, column: 9, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4960, file: !146, line: 438, column: 7)
!4972 = !DILocation(line: 438, column: 7, scope: !4960)
!4973 = !DILocation(line: 441, column: 10, scope: !4960)
!4974 = !DILocation(line: 441, column: 3, scope: !4960)
!4975 = !DILocation(line: 442, column: 1, scope: !4960)
!4976 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !146, file: !146, line: 85, type: !4977, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4979)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!7, !4942}
!4979 = !{!4980}
!4980 = !DILocalVariable(name: "vec_", arg: 1, scope: !4976, file: !146, line: 85, type: !4942)
!4981 = !DILocation(line: 0, scope: !4976)
!4982 = !DILocation(line: 85, column: 1, scope: !4976)
!4983 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !146, file: !146, line: 85, type: !4984, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4986)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!1289, !4942, !7}
!4986 = !{!4987, !4988}
!4987 = !DILocalVariable(name: "vec_", arg: 1, scope: !4983, file: !146, line: 85, type: !4942)
!4988 = !DILocalVariable(name: "ix_", arg: 2, scope: !4983, file: !146, line: 85, type: !7)
!4989 = !DILocation(line: 0, scope: !4983)
!4990 = !DILocation(line: 85, column: 1, scope: !4983)
!4991 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !2024, file: !2024, line: 31, type: !4992, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4996)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!652, !4994, !7, !4952}
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!4996 = !{!4997, !4998, !4999}
!4997 = !DILocalVariable(name: "vec_", arg: 1, scope: !4991, file: !2024, line: 31, type: !4994)
!4998 = !DILocalVariable(name: "ix_", arg: 2, scope: !4991, file: !2024, line: 31, type: !7)
!4999 = !DILocalVariable(name: "ptr", arg: 3, scope: !4991, file: !2024, line: 31, type: !4952)
!5000 = !DILocation(line: 0, scope: !4991)
!5001 = !DILocation(line: 31, column: 1, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4991, file: !2024, line: 31, column: 1)
!5003 = !DILocation(line: 31, column: 1, scope: !4991)
!5004 = !DILocation(line: 31, column: 1, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !5002, file: !2024, line: 31, column: 1)
!5006 = !DILocation(line: 31, column: 1, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5002, file: !2024, line: 31, column: 1)
!5008 = !DILocation(line: 0, scope: !5002)
!5009 = distinct !DISubprogram(name: "get_loop", scope: !146, file: !146, line: 417, type: !5010, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5012)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!1290, !7}
!5012 = !{!5013}
!5013 = !DILocalVariable(name: "num", arg: 1, scope: !5009, file: !146, line: 417, type: !7)
!5014 = !DILocation(line: 0, scope: !5009)
!5015 = !DILocation(line: 419, column: 10, scope: !5009)
!5016 = !DILocation(line: 419, column: 3, scope: !5009)
!5017 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !2024, file: !2024, line: 32, type: !5018, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5021)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{null, !5020}
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!5021 = !{!5022}
!5022 = !DILocalVariable(name: "vec_", arg: 1, scope: !5017, file: !2024, line: 32, type: !5020)
!5023 = !DILocation(line: 0, scope: !5017)
!5024 = !DILocation(line: 32, column: 1, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5017, file: !2024, line: 32, column: 1)
!5026 = !DILocation(line: 32, column: 1, scope: !5017)
!5027 = distinct !DISubprogram(name: "VEC_gimple_base_length", scope: !581, file: !581, line: 33, type: !5028, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5032)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!7, !5030}
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!5032 = !{!5033}
!5033 = !DILocalVariable(name: "vec_", arg: 1, scope: !5027, file: !581, line: 33, type: !5030)
!5034 = !DILocation(line: 0, scope: !5027)
!5035 = !DILocation(line: 33, column: 1, scope: !5027)
!5036 = distinct !DISubprogram(name: "VEC_gimple_base_pop", scope: !581, file: !581, line: 33, type: !5037, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5039)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{!671, !4724}
!5039 = !{!5040, !5041}
!5040 = !DILocalVariable(name: "vec_", arg: 1, scope: !5036, file: !581, line: 33, type: !4724)
!5041 = !DILocalVariable(name: "obj_", scope: !5036, file: !581, line: 33, type: !671)
!5042 = !DILocation(line: 0, scope: !5036)
!5043 = !DILocation(line: 33, column: 1, scope: !5036)
!5044 = distinct !DISubprogram(name: "mark_operand_necessary", scope: !3, file: !3, line: 232, type: !5045, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5047)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{null, !853}
!5047 = !{!5048, !5049, !5050}
!5048 = !DILocalVariable(name: "op", arg: 1, scope: !5044, file: !3, line: 232, type: !853)
!5049 = !DILocalVariable(name: "stmt", scope: !5044, file: !3, line: 234, type: !671)
!5050 = !DILocalVariable(name: "ver", scope: !5044, file: !3, line: 235, type: !652)
!5051 = !DILocation(line: 0, scope: !5044)
!5052 = !DILocation(line: 237, column: 3, scope: !5044)
!5053 = !DILocation(line: 239, column: 9, scope: !5044)
!5054 = !DILocation(line: 240, column: 7, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 240, column: 7)
!5056 = !DILocation(line: 240, column: 7, scope: !5044)
!5057 = !DILocation(line: 242, column: 14, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 241, column: 5)
!5059 = !DILocation(line: 243, column: 7, scope: !5058)
!5060 = !DILocation(line: 247, column: 3, scope: !5044)
!5061 = !DILocation(line: 249, column: 10, scope: !5044)
!5062 = !DILocation(line: 250, column: 3, scope: !5044)
!5063 = !DILocation(line: 252, column: 7, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 252, column: 7)
!5065 = !DILocation(line: 252, column: 41, scope: !5064)
!5066 = !DILocation(line: 252, column: 44, scope: !5064)
!5067 = !DILocation(line: 252, column: 7, scope: !5044)
!5068 = !DILocation(line: 255, column: 7, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 255, column: 7)
!5070 = !DILocation(line: 255, column: 17, scope: !5069)
!5071 = !DILocation(line: 255, column: 21, scope: !5069)
!5072 = !DILocation(line: 255, column: 32, scope: !5069)
!5073 = !DILocation(line: 255, column: 7, scope: !5044)
!5074 = !DILocation(line: 257, column: 7, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 256, column: 5)
!5076 = !DILocation(line: 258, column: 27, scope: !5075)
!5077 = !DILocation(line: 258, column: 7, scope: !5075)
!5078 = !DILocation(line: 259, column: 16, scope: !5075)
!5079 = !DILocation(line: 259, column: 7, scope: !5075)
!5080 = !DILocation(line: 260, column: 26, scope: !5075)
!5081 = !DILocation(line: 260, column: 7, scope: !5075)
!5082 = !DILocation(line: 261, column: 5, scope: !5075)
!5083 = !DILocation(line: 263, column: 3, scope: !5044)
!5084 = !DILocation(line: 264, column: 7, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 264, column: 7)
!5086 = !DILocation(line: 264, column: 7, scope: !5044)
!5087 = !DILocation(line: 265, column: 38, scope: !5085)
!5088 = !DILocation(line: 265, column: 56, scope: !5085)
!5089 = !DILocation(line: 265, column: 5, scope: !5085)
!5090 = !DILocation(line: 266, column: 3, scope: !5044)
!5091 = !DILocation(line: 267, column: 1, scope: !5044)
!5092 = distinct !DISubprogram(name: "degenerate_phi_p", scope: !3, file: !3, line: 610, type: !4622, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5093)
!5093 = !{!5094, !5095, !5096}
!5094 = !DILocalVariable(name: "phi", arg: 1, scope: !5092, file: !3, line: 610, type: !671)
!5095 = !DILocalVariable(name: "i", scope: !5092, file: !3, line: 612, type: !7)
!5096 = !DILocalVariable(name: "op", scope: !5092, file: !3, line: 613, type: !853)
!5097 = !DILocation(line: 0, scope: !5092)
!5098 = !DILocation(line: 613, column: 13, scope: !5092)
!5099 = !DILocation(line: 614, column: 8, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5092, file: !3, line: 614, column: 3)
!5101 = !DILocation(line: 0, scope: !5100)
!5102 = !DILocation(line: 614, column: 19, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 614, column: 3)
!5104 = !DILocation(line: 614, column: 17, scope: !5103)
!5105 = !DILocation(line: 614, column: 3, scope: !5100)
!5106 = !DILocation(line: 615, column: 9, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5103, file: !3, line: 615, column: 9)
!5108 = !DILocation(line: 615, column: 37, scope: !5107)
!5109 = !DILocation(line: 615, column: 9, scope: !5103)
!5110 = !DILocation(line: 614, column: 47, scope: !5103)
!5111 = !DILocation(line: 614, column: 3, scope: !5103)
!5112 = distinct !{!5112, !5105, !5113}
!5113 = !DILocation(line: 616, column: 14, scope: !5100)
!5114 = !DILocation(line: 618, column: 1, scope: !5092)
!5115 = distinct !DISubprogram(name: "gimple_phi_arg_edge", scope: !2628, file: !2628, line: 467, type: !5116, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5118)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!712, !671, !1173}
!5118 = !{!5119, !5120}
!5119 = !DILocalVariable(name: "gs", arg: 1, scope: !5115, file: !2628, line: 467, type: !671)
!5120 = !DILocalVariable(name: "i", arg: 2, scope: !5115, file: !2628, line: 467, type: !1173)
!5121 = !DILocation(line: 0, scope: !5115)
!5122 = !DILocation(line: 469, column: 10, scope: !5115)
!5123 = !DILocation(line: 469, column: 3, scope: !5115)
!5124 = distinct !DISubprogram(name: "op_iter_init_tree", scope: !2628, file: !2628, line: 792, type: !5125, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5127)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!853, !2885, !671, !652}
!5127 = !{!5128, !5129, !5130}
!5128 = !DILocalVariable(name: "ptr", arg: 1, scope: !5124, file: !2628, line: 792, type: !2885)
!5129 = !DILocalVariable(name: "stmt", arg: 2, scope: !5124, file: !2628, line: 792, type: !671)
!5130 = !DILocalVariable(name: "flags", arg: 3, scope: !5124, file: !2628, line: 792, type: !652)
!5131 = !DILocation(line: 0, scope: !5124)
!5132 = !DILocation(line: 794, column: 3, scope: !5124)
!5133 = !DILocation(line: 795, column: 8, scope: !5124)
!5134 = !DILocation(line: 795, column: 18, scope: !5124)
!5135 = !DILocation(line: 796, column: 10, scope: !5124)
!5136 = !DILocation(line: 796, column: 3, scope: !5124)
!5137 = distinct !DISubprogram(name: "op_iter_next_tree", scope: !2628, file: !2628, line: 699, type: !5138, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5140)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{!853, !2885}
!5140 = !{!5141, !5142}
!5141 = !DILocalVariable(name: "ptr", arg: 1, scope: !5137, file: !2628, line: 699, type: !2885)
!5142 = !DILocalVariable(name: "val", scope: !5137, file: !2628, line: 701, type: !853)
!5143 = !DILocation(line: 0, scope: !5137)
!5144 = !DILocation(line: 705, column: 12, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5137, file: !2628, line: 705, column: 7)
!5146 = !DILocation(line: 705, column: 7, scope: !5145)
!5147 = !DILocation(line: 705, column: 7, scope: !5137)
!5148 = !DILocation(line: 707, column: 13, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5145, file: !2628, line: 706, column: 5)
!5150 = !DILocation(line: 708, column: 24, scope: !5149)
!5151 = !DILocation(line: 708, column: 30, scope: !5149)
!5152 = !DILocation(line: 708, column: 17, scope: !5149)
!5153 = !DILocation(line: 709, column: 7, scope: !5149)
!5154 = !DILocation(line: 711, column: 12, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5137, file: !2628, line: 711, column: 7)
!5156 = !DILocation(line: 711, column: 7, scope: !5155)
!5157 = !DILocation(line: 711, column: 7, scope: !5137)
!5158 = !DILocation(line: 713, column: 13, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5155, file: !2628, line: 712, column: 5)
!5160 = !DILocation(line: 714, column: 24, scope: !5159)
!5161 = !DILocation(line: 714, column: 30, scope: !5159)
!5162 = !DILocation(line: 714, column: 17, scope: !5159)
!5163 = !DILocation(line: 715, column: 7, scope: !5159)
!5164 = !DILocation(line: 718, column: 8, scope: !5137)
!5165 = !DILocation(line: 718, column: 13, scope: !5137)
!5166 = !DILocation(line: 719, column: 3, scope: !5137)
!5167 = !DILocation(line: 721, column: 1, scope: !5137)
!5168 = distinct !DISubprogram(name: "mark_all_reaching_defs_necessary", scope: !3, file: !3, line: 601, type: !2562, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5169)
!5169 = !{!5170}
!5170 = !DILocalVariable(name: "stmt", arg: 1, scope: !5168, file: !3, line: 601, type: !671)
!5171 = !DILocation(line: 0, scope: !5168)
!5172 = !DILocation(line: 603, column: 29, scope: !5168)
!5173 = !DILocation(line: 603, column: 3, scope: !5168)
!5174 = !DILocation(line: 605, column: 1, scope: !5168)
!5175 = distinct !DISubprogram(name: "is_gimple_call", scope: !581, file: !581, line: 1870, type: !3189, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5176)
!5176 = !{!5177}
!5177 = !DILocalVariable(name: "gs", arg: 1, scope: !5175, file: !581, line: 1870, type: !2621)
!5178 = !DILocation(line: 0, scope: !5175)
!5179 = !DILocation(line: 1872, column: 10, scope: !5175)
!5180 = !DILocation(line: 1872, column: 27, scope: !5175)
!5181 = !DILocation(line: 1872, column: 3, scope: !5175)
!5182 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !581, file: !581, line: 1954, type: !2619, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5183)
!5183 = !{!5184, !5185}
!5184 = !DILocalVariable(name: "gs", arg: 1, scope: !5182, file: !581, line: 1954, type: !2621)
!5185 = !DILocalVariable(name: "addr", scope: !5182, file: !581, line: 1956, type: !853)
!5186 = !DILocation(line: 0, scope: !5182)
!5187 = !DILocation(line: 1956, column: 15, scope: !5182)
!5188 = !DILocation(line: 1957, column: 7, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5182, file: !581, line: 1957, column: 7)
!5190 = !DILocation(line: 1957, column: 24, scope: !5189)
!5191 = !DILocation(line: 1957, column: 7, scope: !5182)
!5192 = !DILocation(line: 1958, column: 12, scope: !5189)
!5193 = !DILocation(line: 1958, column: 5, scope: !5189)
!5194 = !DILocation(line: 1960, column: 1, scope: !5182)
!5195 = distinct !DISubprogram(name: "gimple_call_num_args", scope: !581, file: !581, line: 2013, type: !3064, scopeLine: 2014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5196)
!5196 = !{!5197, !5198}
!5197 = !DILocalVariable(name: "gs", arg: 1, scope: !5195, file: !581, line: 2013, type: !2621)
!5198 = !DILocalVariable(name: "num_ops", scope: !5195, file: !581, line: 2015, type: !7)
!5199 = !DILocation(line: 0, scope: !5195)
!5200 = !DILocation(line: 2017, column: 13, scope: !5195)
!5201 = !DILocation(line: 2018, column: 18, scope: !5195)
!5202 = !DILocation(line: 2018, column: 3, scope: !5195)
!5203 = distinct !DISubprogram(name: "gimple_call_arg", scope: !581, file: !581, line: 2025, type: !4740, scopeLine: 2026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5204)
!5204 = !{!5205, !5206}
!5205 = !DILocalVariable(name: "gs", arg: 1, scope: !5203, file: !581, line: 2025, type: !2621)
!5206 = !DILocalVariable(name: "index", arg: 2, scope: !5203, file: !581, line: 2025, type: !7)
!5207 = !DILocation(line: 0, scope: !5203)
!5208 = !DILocation(line: 2028, column: 31, scope: !5203)
!5209 = !DILocation(line: 2028, column: 10, scope: !5203)
!5210 = !DILocation(line: 2028, column: 3, scope: !5203)
!5211 = distinct !DISubprogram(name: "ref_may_be_aliased", scope: !3, file: !3, line: 481, type: !5212, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5214)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!651, !853}
!5214 = !{!5215}
!5215 = !DILocalVariable(name: "ref", arg: 1, scope: !5211, file: !3, line: 481, type: !853)
!5216 = !DILocation(line: 0, scope: !5211)
!5217 = !DILocation(line: 483, column: 3, scope: !5211)
!5218 = !DILocation(line: 483, column: 10, scope: !5211)
!5219 = !DILocation(line: 484, column: 11, scope: !5211)
!5220 = distinct !{!5220, !5217, !5219}
!5221 = !DILocation(line: 485, column: 12, scope: !5211)
!5222 = !DILocation(line: 486, column: 5, scope: !5211)
!5223 = !DILocation(line: 486, column: 9, scope: !5211)
!5224 = !DILocation(line: 486, column: 8, scope: !5211)
!5225 = !DILocation(line: 485, column: 3, scope: !5211)
!5226 = distinct !DISubprogram(name: "mark_aliased_reaching_defs_necessary", scope: !3, file: !3, line: 549, type: !5227, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5229)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{null, !671, !853}
!5229 = !{!5230, !5231, !5232, !5233}
!5230 = !DILocalVariable(name: "stmt", arg: 1, scope: !5226, file: !3, line: 549, type: !671)
!5231 = !DILocalVariable(name: "ref", arg: 2, scope: !5226, file: !3, line: 549, type: !853)
!5232 = !DILocalVariable(name: "chain", scope: !5226, file: !3, line: 551, type: !7)
!5233 = !DILocalVariable(name: "refd", scope: !5226, file: !3, line: 552, type: !5234)
!5234 = !DIDerivedType(tag: DW_TAG_typedef, name: "ao_ref", file: !1227, line: 86, baseType: !5235)
!5235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ao_ref_s", file: !1227, line: 63, size: 384, elements: !5236)
!5236 = !{!5237, !5238, !5239, !5240, !5241, !5242, !5243}
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5235, file: !1227, line: 67, baseType: !853, size: 64)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5235, file: !1227, line: 73, baseType: !853, size: 64, offset: 64)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5235, file: !1227, line: 75, baseType: !824, size: 64, offset: 128)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5235, file: !1227, line: 77, baseType: !824, size: 64, offset: 192)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !5235, file: !1227, line: 79, baseType: !824, size: 64, offset: 256)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "ref_alias_set", scope: !5235, file: !1227, line: 82, baseType: !1437, size: 32, offset: 320)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "base_alias_set", scope: !5235, file: !1227, line: 85, baseType: !1437, size: 32, offset: 352)
!5244 = !DILocation(line: 0, scope: !5226)
!5245 = !DILocation(line: 552, column: 3, scope: !5226)
!5246 = !DILocation(line: 553, column: 3, scope: !5226)
!5247 = !DILocation(line: 554, column: 3, scope: !5226)
!5248 = !DILocation(line: 555, column: 38, scope: !5226)
!5249 = !DILocation(line: 557, column: 10, scope: !5226)
!5250 = !DILocation(line: 555, column: 11, scope: !5226)
!5251 = !DILocation(line: 558, column: 15, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 558, column: 7)
!5253 = !DILocation(line: 558, column: 13, scope: !5252)
!5254 = !DILocation(line: 558, column: 7, scope: !5226)
!5255 = !DILocation(line: 559, column: 19, scope: !5252)
!5256 = !DILocation(line: 559, column: 5, scope: !5252)
!5257 = !DILocation(line: 560, column: 15, scope: !5226)
!5258 = !DILocation(line: 561, column: 11, scope: !5226)
!5259 = !DILocation(line: 562, column: 1, scope: !5226)
!5260 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !581, file: !581, line: 1727, type: !2619, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5261)
!5261 = !{!5262}
!5262 = !DILocalVariable(name: "gs", arg: 1, scope: !5260, file: !581, line: 1727, type: !2621)
!5263 = !DILocation(line: 0, scope: !5260)
!5264 = !DILocation(line: 1730, column: 10, scope: !5260)
!5265 = !DILocation(line: 1730, column: 3, scope: !5260)
!5266 = distinct !DISubprogram(name: "gimple_return_retval", scope: !581, file: !581, line: 4253, type: !2619, scopeLine: 4254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5267)
!5267 = !{!5268}
!5268 = !DILocalVariable(name: "gs", arg: 1, scope: !5266, file: !581, line: 4253, type: !2621)
!5269 = !DILocation(line: 0, scope: !5266)
!5270 = !DILocation(line: 4256, column: 10, scope: !5266)
!5271 = !DILocation(line: 4256, column: 3, scope: !5266)
!5272 = distinct !DISubprogram(name: "gimple_asm_ninputs", scope: !581, file: !581, line: 2581, type: !3064, scopeLine: 2582, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5273)
!5273 = !{!5274}
!5274 = !DILocalVariable(name: "gs", arg: 1, scope: !5272, file: !581, line: 2581, type: !2621)
!5275 = !DILocation(line: 0, scope: !5272)
!5276 = !DILocation(line: 2584, column: 25, scope: !5272)
!5277 = !DILocation(line: 2584, column: 10, scope: !5272)
!5278 = !DILocation(line: 2584, column: 3, scope: !5272)
!5279 = distinct !DISubprogram(name: "gimple_asm_input_op", scope: !581, file: !581, line: 2619, type: !4740, scopeLine: 2620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5280)
!5280 = !{!5281, !5282}
!5281 = !DILocalVariable(name: "gs", arg: 1, scope: !5279, file: !581, line: 2619, type: !2621)
!5282 = !DILocalVariable(name: "index", arg: 2, scope: !5279, file: !581, line: 2619, type: !7)
!5283 = !DILocation(line: 0, scope: !5279)
!5284 = !DILocation(line: 2622, column: 3, scope: !5279)
!5285 = !DILocation(line: 2623, column: 10, scope: !5279)
!5286 = !DILocation(line: 2623, column: 3, scope: !5279)
!5287 = distinct !DISubprogram(name: "gimple_nop_p", scope: !581, file: !581, line: 4304, type: !3189, scopeLine: 4305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5288)
!5288 = !{!5289}
!5289 = !DILocalVariable(name: "g", arg: 1, scope: !5287, file: !581, line: 4304, type: !2621)
!5290 = !DILocation(line: 0, scope: !5287)
!5291 = !DILocation(line: 4306, column: 10, scope: !5287)
!5292 = !DILocation(line: 4306, column: 26, scope: !5287)
!5293 = !DILocation(line: 4306, column: 3, scope: !5287)
!5294 = distinct !DISubprogram(name: "gimple_phi_arg_def", scope: !2628, file: !2628, line: 450, type: !5295, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5297)
!5295 = !DISubroutineType(types: !5296)
!5296 = !{!853, !671, !1173}
!5297 = !{!5298, !5299, !5300}
!5298 = !DILocalVariable(name: "gs", arg: 1, scope: !5294, file: !2628, line: 450, type: !671)
!5299 = !DILocalVariable(name: "index", arg: 2, scope: !5294, file: !2628, line: 450, type: !1173)
!5300 = !DILocalVariable(name: "pd", scope: !5294, file: !2628, line: 452, type: !3084)
!5301 = !DILocation(line: 0, scope: !5294)
!5302 = !DILocation(line: 452, column: 46, scope: !5294)
!5303 = !DILocation(line: 452, column: 26, scope: !5294)
!5304 = !DILocation(line: 453, column: 33, scope: !5294)
!5305 = !DILocation(line: 453, column: 10, scope: !5294)
!5306 = !DILocation(line: 453, column: 3, scope: !5294)
!5307 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2628, file: !2628, line: 434, type: !5308, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5311)
!5308 = !DISubroutineType(types: !5309)
!5309 = !{!853, !5310}
!5310 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !574, line: 27, baseType: !1264)
!5311 = !{!5312}
!5312 = !DILocalVariable(name: "def", arg: 1, scope: !5307, file: !2628, line: 434, type: !5310)
!5313 = !DILocation(line: 0, scope: !5307)
!5314 = !DILocation(line: 436, column: 10, scope: !5307)
!5315 = !DILocation(line: 436, column: 3, scope: !5307)
!5316 = distinct !DISubprogram(name: "mark_all_reaching_defs_necessary_1", scope: !3, file: !3, line: 571, type: !5317, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5320)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!651, !5319, !853, !656}
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5320 = !{!5321, !5322, !5323, !5324, !5325}
!5321 = !DILocalVariable(name: "ref", arg: 1, scope: !5316, file: !3, line: 571, type: !5319)
!5322 = !DILocalVariable(name: "vdef", arg: 2, scope: !5316, file: !3, line: 572, type: !853)
!5323 = !DILocalVariable(name: "data", arg: 3, scope: !5316, file: !3, line: 572, type: !656)
!5324 = !DILocalVariable(name: "def_stmt", scope: !5316, file: !3, line: 574, type: !671)
!5325 = !DILocalVariable(name: "lhs", scope: !5326, file: !3, line: 590, type: !853)
!5326 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 589, column: 5)
!5327 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 587, column: 7)
!5328 = !DILocation(line: 0, scope: !5316)
!5329 = !DILocation(line: 574, column: 21, scope: !5316)
!5330 = !DILocation(line: 578, column: 7, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 578, column: 7)
!5332 = !DILocation(line: 579, column: 7, scope: !5331)
!5333 = !DILocation(line: 579, column: 10, scope: !5331)
!5334 = !DILocation(line: 578, column: 7, scope: !5316)
!5335 = !DILocation(line: 581, column: 7, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 580, column: 5)
!5337 = !DILocation(line: 588, column: 7, scope: !5327)
!5338 = !DILocation(line: 588, column: 10, scope: !5327)
!5339 = !DILocation(line: 587, column: 7, scope: !5316)
!5340 = !DILocation(line: 590, column: 18, scope: !5326)
!5341 = !DILocation(line: 0, scope: !5326)
!5342 = !DILocation(line: 591, column: 12, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 591, column: 11)
!5344 = !DILocation(line: 595, column: 3, scope: !5316)
!5345 = !DILocation(line: 597, column: 3, scope: !5316)
!5346 = !DILocation(line: 598, column: 1, scope: !5316)
!5347 = distinct !DISubprogram(name: "gimple_call_fn", scope: !581, file: !581, line: 1911, type: !2619, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5348)
!5348 = !{!5349}
!5349 = !DILocalVariable(name: "gs", arg: 1, scope: !5347, file: !581, line: 1911, type: !2621)
!5350 = !DILocation(line: 0, scope: !5347)
!5351 = !DILocation(line: 1914, column: 10, scope: !5347)
!5352 = !DILocation(line: 1914, column: 3, scope: !5347)
!5353 = distinct !DISubprogram(name: "gimple_num_ops", scope: !581, file: !581, line: 1596, type: !3064, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5354)
!5354 = !{!5355}
!5355 = !DILocalVariable(name: "gs", arg: 1, scope: !5353, file: !581, line: 1596, type: !2621)
!5356 = !DILocation(line: 0, scope: !5353)
!5357 = !DILocation(line: 1598, column: 21, scope: !5353)
!5358 = !DILocation(line: 1598, column: 3, scope: !5353)
!5359 = distinct !DISubprogram(name: "handled_component_p", scope: !164, file: !164, line: 4551, type: !5360, scopeLine: 4552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5365)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!651, !5362}
!5362 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !672, line: 59, baseType: !5363)
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5364, size: 64)
!5364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!5365 = !{!5366}
!5366 = !DILocalVariable(name: "t", arg: 1, scope: !5359, file: !164, line: 4551, type: !5362)
!5367 = !DILocation(line: 0, scope: !5359)
!5368 = !DILocation(line: 4553, column: 11, scope: !5359)
!5369 = !DILocation(line: 4553, column: 3, scope: !5359)
!5370 = !DILocation(line: 4565, column: 7, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5359, file: !164, line: 4554, column: 5)
!5372 = !DILocation(line: 0, scope: !5371)
!5373 = !DILocation(line: 4567, column: 1, scope: !5359)
!5374 = distinct !DISubprogram(name: "may_be_aliased", scope: !2628, file: !2628, line: 586, type: !5360, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5375)
!5375 = !{!5376}
!5376 = !DILocalVariable(name: "var", arg: 1, scope: !5374, file: !2628, line: 586, type: !5362)
!5377 = !DILocation(line: 0, scope: !5374)
!5378 = !DILocation(line: 588, column: 11, scope: !5374)
!5379 = !DILocation(line: 588, column: 27, scope: !5374)
!5380 = !DILocation(line: 589, column: 4, scope: !5374)
!5381 = !DILocation(line: 589, column: 10, scope: !5374)
!5382 = !DILocation(line: 589, column: 28, scope: !5374)
!5383 = !DILocation(line: 589, column: 31, scope: !5374)
!5384 = !DILocation(line: 589, column: 49, scope: !5374)
!5385 = !DILocation(line: 589, column: 52, scope: !5374)
!5386 = !DILocation(line: 590, column: 9, scope: !5374)
!5387 = !DILocation(line: 590, column: 12, scope: !5374)
!5388 = !DILocation(line: 591, column: 9, scope: !5374)
!5389 = !DILocation(line: 591, column: 13, scope: !5374)
!5390 = !DILocation(line: 592, column: 4, scope: !5374)
!5391 = !DILocation(line: 592, column: 8, scope: !5374)
!5392 = !DILocation(line: 593, column: 8, scope: !5374)
!5393 = !DILocation(line: 593, column: 11, scope: !5374)
!5394 = !DILocation(line: 594, column: 8, scope: !5374)
!5395 = !DILocation(line: 594, column: 11, scope: !5374)
!5396 = !DILocation(line: 588, column: 3, scope: !5374)
!5397 = distinct !DISubprogram(name: "mark_aliased_reaching_defs_necessary_1", scope: !3, file: !3, line: 503, type: !5317, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5398)
!5398 = !{!5399, !5400, !5401, !5402, !5403, !5406, !5407, !5408, !5409}
!5399 = !DILocalVariable(name: "ref", arg: 1, scope: !5397, file: !3, line: 503, type: !5319)
!5400 = !DILocalVariable(name: "vdef", arg: 2, scope: !5397, file: !3, line: 503, type: !853)
!5401 = !DILocalVariable(name: "data", arg: 3, scope: !5397, file: !3, line: 503, type: !656)
!5402 = !DILocalVariable(name: "def_stmt", scope: !5397, file: !3, line: 505, type: !671)
!5403 = !DILocalVariable(name: "base", scope: !5404, file: !3, line: 514, type: !853)
!5404 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 513, column: 5)
!5405 = distinct !DILexicalBlock(scope: !5397, file: !3, line: 511, column: 7)
!5406 = !DILocalVariable(name: "lhs", scope: !5404, file: !3, line: 514, type: !853)
!5407 = !DILocalVariable(name: "size", scope: !5404, file: !3, line: 515, type: !824)
!5408 = !DILocalVariable(name: "offset", scope: !5404, file: !3, line: 515, type: !824)
!5409 = !DILocalVariable(name: "max_size", scope: !5404, file: !3, line: 515, type: !824)
!5410 = !DILocation(line: 0, scope: !5397)
!5411 = !DILocation(line: 505, column: 21, scope: !5397)
!5412 = !DILocation(line: 508, column: 3, scope: !5397)
!5413 = !DILocation(line: 511, column: 7, scope: !5405)
!5414 = !DILocation(line: 512, column: 7, scope: !5405)
!5415 = !DILocation(line: 512, column: 10, scope: !5405)
!5416 = !DILocation(line: 512, column: 48, scope: !5405)
!5417 = !DILocation(line: 511, column: 7, scope: !5397)
!5418 = !DILocation(line: 514, column: 24, scope: !5404)
!5419 = !DILocation(line: 0, scope: !5404)
!5420 = !DILocation(line: 515, column: 7, scope: !5404)
!5421 = !DILocation(line: 516, column: 7, scope: !5404)
!5422 = !DILocation(line: 517, column: 14, scope: !5404)
!5423 = !DILocation(line: 520, column: 24, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 520, column: 11)
!5425 = !DILocation(line: 520, column: 16, scope: !5424)
!5426 = !DILocation(line: 520, column: 11, scope: !5404)
!5427 = !DILocation(line: 524, column: 8, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 524, column: 8)
!5429 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 521, column: 2)
!5430 = !DILocation(line: 524, column: 13, scope: !5428)
!5431 = !DILocation(line: 524, column: 19, scope: !5428)
!5432 = !DILocation(line: 524, column: 30, scope: !5428)
!5433 = !DILocation(line: 524, column: 27, scope: !5428)
!5434 = !DILocation(line: 525, column: 8, scope: !5428)
!5435 = !DILocation(line: 525, column: 16, scope: !5428)
!5436 = !DILocation(line: 525, column: 25, scope: !5428)
!5437 = !DILocation(line: 524, column: 8, scope: !5429)
!5438 = !DILocation(line: 527, column: 12, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 527, column: 12)
!5440 = distinct !DILexicalBlock(scope: !5428, file: !3, line: 526, column: 6)
!5441 = !DILocation(line: 527, column: 27, scope: !5439)
!5442 = !DILocation(line: 527, column: 19, scope: !5439)
!5443 = !DILocation(line: 528, column: 5, scope: !5439)
!5444 = !DILocation(line: 528, column: 15, scope: !5439)
!5445 = !DILocation(line: 528, column: 37, scope: !5439)
!5446 = !DILocation(line: 528, column: 22, scope: !5439)
!5447 = !DILocation(line: 527, column: 12, scope: !5440)
!5448 = !DILocation(line: 532, column: 18, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5428, file: !3, line: 532, column: 13)
!5450 = !DILocation(line: 532, column: 13, scope: !5449)
!5451 = !DILocation(line: 537, column: 6, scope: !5449)
!5452 = !DILocation(line: 537, column: 41, scope: !5449)
!5453 = !DILocation(line: 538, column: 11, scope: !5449)
!5454 = !DILocation(line: 537, column: 9, scope: !5449)
!5455 = !DILocation(line: 539, column: 6, scope: !5449)
!5456 = !DILocation(line: 539, column: 31, scope: !5449)
!5457 = !DILocation(line: 539, column: 9, scope: !5449)
!5458 = !DILocation(line: 532, column: 13, scope: !5428)
!5459 = !DILocation(line: 542, column: 5, scope: !5405)
!5460 = !DILocation(line: 545, column: 3, scope: !5397)
!5461 = !DILocation(line: 546, column: 1, scope: !5397)
!5462 = distinct !DISubprogram(name: "gimple_has_lhs", scope: !581, file: !581, line: 2210, type: !4622, scopeLine: 2211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5463)
!5463 = !{!5464}
!5464 = !DILocalVariable(name: "stmt", arg: 1, scope: !5462, file: !581, line: 2210, type: !671)
!5465 = !DILocation(line: 0, scope: !5462)
!5466 = !DILocation(line: 2212, column: 11, scope: !5462)
!5467 = !DILocation(line: 2213, column: 4, scope: !5462)
!5468 = !DILocation(line: 2213, column: 8, scope: !5462)
!5469 = !DILocation(line: 2214, column: 8, scope: !5462)
!5470 = !DILocation(line: 2214, column: 11, scope: !5462)
!5471 = !DILocation(line: 2214, column: 34, scope: !5462)
!5472 = !DILocation(line: 2212, column: 3, scope: !5462)
!5473 = distinct !DISubprogram(name: "is_gimple_assign", scope: !581, file: !581, line: 1677, type: !3189, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5474)
!5474 = !{!5475}
!5475 = !DILocalVariable(name: "gs", arg: 1, scope: !5473, file: !581, line: 1677, type: !2621)
!5476 = !DILocation(line: 0, scope: !5473)
!5477 = !DILocation(line: 1679, column: 10, scope: !5473)
!5478 = !DILocation(line: 1679, column: 27, scope: !5473)
!5479 = !DILocation(line: 1679, column: 3, scope: !5473)
!5480 = distinct !DISubprogram(name: "VEC_basic_block_base_length", scope: !135, file: !135, line: 281, type: !5481, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5485)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!7, !5483}
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5484, size: 64)
!5484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1123)
!5485 = !{!5486}
!5486 = !DILocalVariable(name: "vec_", arg: 1, scope: !5480, file: !135, line: 281, type: !5483)
!5487 = !DILocation(line: 0, scope: !5480)
!5488 = !DILocation(line: 281, column: 1, scope: !5480)
!5489 = distinct !DISubprogram(name: "VEC_basic_block_base_pop", scope: !135, file: !135, line: 281, type: !5490, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5493)
!5490 = !DISubroutineType(types: !5491)
!5491 = !{!1115, !5492}
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!5493 = !{!5494, !5495}
!5494 = !DILocalVariable(name: "vec_", arg: 1, scope: !5489, file: !135, line: 281, type: !5492)
!5495 = !DILocalVariable(name: "obj_", scope: !5489, file: !135, line: 281, type: !1115)
!5496 = !DILocation(line: 0, scope: !5489)
!5497 = !DILocation(line: 281, column: 1, scope: !5489)
!5498 = distinct !DISubprogram(name: "gsi_last_bb", scope: !581, file: !581, line: 4450, type: !4285, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5499)
!5499 = !{!5500, !5501, !5502}
!5500 = !DILocalVariable(name: "bb", arg: 1, scope: !5498, file: !581, line: 4450, type: !1115)
!5501 = !DILocalVariable(name: "i", scope: !5498, file: !581, line: 4452, type: !3382)
!5502 = !DILocalVariable(name: "seq", scope: !5498, file: !581, line: 4453, type: !722)
!5503 = !DILocation(line: 0, scope: !5498)
!5504 = !DILocation(line: 4452, column: 24, scope: !5498)
!5505 = !DILocation(line: 4455, column: 9, scope: !5498)
!5506 = !DILocation(line: 4456, column: 11, scope: !5498)
!5507 = !DILocation(line: 4456, column: 5, scope: !5498)
!5508 = !DILocation(line: 4456, column: 9, scope: !5498)
!5509 = !DILocation(line: 4457, column: 5, scope: !5498)
!5510 = !DILocation(line: 4457, column: 9, scope: !5498)
!5511 = !DILocation(line: 4458, column: 5, scope: !5498)
!5512 = !DILocation(line: 4458, column: 8, scope: !5498)
!5513 = !DILocation(line: 4461, column: 1, scope: !5498)
!5514 = distinct !DISubprogram(name: "gsi_prev", scope: !581, file: !581, line: 4493, type: !4274, scopeLine: 4494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5515)
!5515 = !{!5516}
!5516 = !DILocalVariable(name: "i", arg: 1, scope: !5514, file: !581, line: 4493, type: !4276)
!5517 = !DILocation(line: 0, scope: !5514)
!5518 = !DILocation(line: 4495, column: 15, scope: !5514)
!5519 = !DILocation(line: 4495, column: 20, scope: !5514)
!5520 = !DILocation(line: 4495, column: 10, scope: !5514)
!5521 = !DILocation(line: 4496, column: 1, scope: !5514)
!5522 = distinct !DISubprogram(name: "remove_dead_stmt", scope: !3, file: !3, line: 984, type: !5523, scopeLine: 985, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5525)
!5523 = !DISubroutineType(types: !5524)
!5524 = !{null, !4276, !1115}
!5525 = !{!5526, !5527, !5528, !5529, !5532, !5533, !5534}
!5526 = !DILocalVariable(name: "i", arg: 1, scope: !5522, file: !3, line: 984, type: !4276)
!5527 = !DILocalVariable(name: "bb", arg: 2, scope: !5522, file: !3, line: 984, type: !1115)
!5528 = !DILocalVariable(name: "stmt", scope: !5522, file: !3, line: 986, type: !671)
!5529 = !DILocalVariable(name: "post_dom_bb", scope: !5530, file: !3, line: 1005, type: !1115)
!5530 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 1004, column: 5)
!5531 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 1003, column: 7)
!5532 = !DILocalVariable(name: "e", scope: !5530, file: !3, line: 1006, type: !712)
!5533 = !DILocalVariable(name: "e2", scope: !5530, file: !3, line: 1006, type: !712)
!5534 = !DILocalVariable(name: "ei", scope: !5530, file: !3, line: 1007, type: !3405)
!5535 = !DILocation(line: 0, scope: !5522)
!5536 = !DILocation(line: 986, column: 17, scope: !5522)
!5537 = !DILocation(line: 988, column: 7, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 988, column: 7)
!5539 = !DILocation(line: 988, column: 17, scope: !5538)
!5540 = !DILocation(line: 988, column: 21, scope: !5538)
!5541 = !DILocation(line: 988, column: 32, scope: !5538)
!5542 = !DILocation(line: 988, column: 7, scope: !5522)
!5543 = !DILocation(line: 990, column: 7, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 989, column: 5)
!5545 = !DILocation(line: 991, column: 26, scope: !5544)
!5546 = !DILocation(line: 991, column: 7, scope: !5544)
!5547 = !DILocation(line: 992, column: 16, scope: !5544)
!5548 = !DILocation(line: 992, column: 7, scope: !5544)
!5549 = !DILocation(line: 993, column: 5, scope: !5544)
!5550 = !DILocation(line: 995, column: 16, scope: !5522)
!5551 = !DILocation(line: 1003, column: 7, scope: !5531)
!5552 = !DILocation(line: 1003, column: 7, scope: !5522)
!5553 = !DILocation(line: 1007, column: 7, scope: !5530)
!5554 = !DILocation(line: 1009, column: 21, scope: !5530)
!5555 = !DILocation(line: 0, scope: !5530)
!5556 = !DILocation(line: 1011, column: 11, scope: !5530)
!5557 = !DILocation(line: 1017, column: 11, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 1017, column: 11)
!5559 = !DILocation(line: 1017, column: 11, scope: !5530)
!5560 = !DILocation(line: 1019, column: 18, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 1019, column: 16)
!5562 = !DILocation(line: 1019, column: 30, scope: !5561)
!5563 = !DILocation(line: 1019, column: 48, scope: !5561)
!5564 = !DILocation(line: 1019, column: 45, scope: !5561)
!5565 = !DILocation(line: 1019, column: 16, scope: !5558)
!5566 = !DILocation(line: 1020, column: 6, scope: !5561)
!5567 = !DILocation(line: 1020, column: 2, scope: !5561)
!5568 = !DILocation(line: 1022, column: 35, scope: !5561)
!5569 = !DILocation(line: 1022, column: 13, scope: !5561)
!5570 = !DILocation(line: 1023, column: 7, scope: !5530)
!5571 = !DILocation(line: 1024, column: 10, scope: !5530)
!5572 = !DILocation(line: 1024, column: 22, scope: !5530)
!5573 = !DILocation(line: 1025, column: 22, scope: !5530)
!5574 = !DILocation(line: 1025, column: 10, scope: !5530)
!5575 = !DILocation(line: 1025, column: 16, scope: !5530)
!5576 = !DILocation(line: 1029, column: 10, scope: !5530)
!5577 = !DILocation(line: 1029, column: 16, scope: !5530)
!5578 = !DILocation(line: 1032, column: 16, scope: !5530)
!5579 = !DILocation(line: 1035, column: 17, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 1035, column: 7)
!5581 = !DILocation(line: 0, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 1035, column: 7)
!5583 = !DILocation(line: 1035, column: 12, scope: !5580)
!5584 = !DILocation(line: 1035, column: 45, scope: !5582)
!5585 = !DILocation(line: 1035, column: 7, scope: !5580)
!5586 = !DILocation(line: 1036, column: 8, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 1036, column: 6)
!5588 = !DILocation(line: 1036, column: 6, scope: !5582)
!5589 = !DILocation(line: 1038, column: 18, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 1037, column: 4)
!5591 = !DILocation(line: 1039, column: 13, scope: !5590)
!5592 = !DILocation(line: 1040, column: 4, scope: !5590)
!5593 = !DILocation(line: 1042, column: 4, scope: !5587)
!5594 = !DILocation(line: 1035, column: 7, scope: !5582)
!5595 = distinct !{!5595, !5585, !5596}
!5596 = !DILocation(line: 1042, column: 16, scope: !5580)
!5597 = !DILocation(line: 1043, column: 5, scope: !5531)
!5598 = !DILocation(line: 1043, column: 5, scope: !5530)
!5599 = !DILocation(line: 1045, column: 3, scope: !5522)
!5600 = !DILocation(line: 1046, column: 3, scope: !5522)
!5601 = !DILocation(line: 1047, column: 3, scope: !5522)
!5602 = !DILocation(line: 1048, column: 1, scope: !5522)
!5603 = distinct !DISubprogram(name: "gimple_call_set_lhs", scope: !581, file: !581, line: 1898, type: !5227, scopeLine: 1899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5604)
!5604 = !{!5605, !5606}
!5605 = !DILocalVariable(name: "gs", arg: 1, scope: !5603, file: !581, line: 1898, type: !671)
!5606 = !DILocalVariable(name: "lhs", arg: 2, scope: !5603, file: !581, line: 1898, type: !853)
!5607 = !DILocation(line: 0, scope: !5603)
!5608 = !DILocation(line: 1901, column: 3, scope: !5603)
!5609 = !DILocation(line: 1904, column: 1, scope: !5603)
!5610 = distinct !DISubprogram(name: "VEC_basic_block_heap_free", scope: !135, file: !135, line: 283, type: !5611, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5614)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{null, !5613}
!5613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!5614 = !{!5615}
!5615 = !DILocalVariable(name: "vec_", arg: 1, scope: !5610, file: !135, line: 283, type: !5613)
!5616 = !DILocation(line: 0, scope: !5610)
!5617 = !DILocation(line: 283, column: 1, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5610, file: !135, line: 283, column: 1)
!5619 = !DILocation(line: 283, column: 1, scope: !5610)
!5620 = distinct !DISubprogram(name: "end_imm_use_stmt_traverse", scope: !2628, file: !2628, line: 978, type: !5621, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5623)
!5621 = !DISubroutineType(types: !5622)
!5622 = !{null, !2631}
!5623 = !{!5624}
!5624 = !DILocalVariable(name: "imm", arg: 1, scope: !5620, file: !2628, line: 978, type: !2631)
!5625 = !DILocation(line: 0, scope: !5620)
!5626 = !DILocation(line: 980, column: 26, scope: !5620)
!5627 = !DILocation(line: 980, column: 3, scope: !5620)
!5628 = !DILocation(line: 981, column: 1, scope: !5620)
!5629 = distinct !DISubprogram(name: "remove_dead_phis", scope: !3, file: !3, line: 862, type: !5630, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5632)
!5630 = !DISubroutineType(types: !5631)
!5631 = !{!651, !1115}
!5632 = !{!5633, !5634, !5635, !5636, !5637, !5638, !5646, !5647, !5648, !5649}
!5633 = !DILocalVariable(name: "bb", arg: 1, scope: !5629, file: !3, line: 862, type: !1115)
!5634 = !DILocalVariable(name: "something_changed", scope: !5629, file: !3, line: 864, type: !651)
!5635 = !DILocalVariable(name: "phis", scope: !5629, file: !3, line: 865, type: !722)
!5636 = !DILocalVariable(name: "phi", scope: !5629, file: !3, line: 866, type: !671)
!5637 = !DILocalVariable(name: "gsi", scope: !5629, file: !3, line: 867, type: !3382)
!5638 = !DILocalVariable(name: "vdef", scope: !5639, file: !3, line: 883, type: !853)
!5639 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 882, column: 6)
!5640 = distinct !DILexicalBlock(scope: !5641, file: !3, line: 881, column: 8)
!5641 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 878, column: 2)
!5642 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 877, column: 11)
!5643 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 871, column: 5)
!5644 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 870, column: 3)
!5645 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 870, column: 3)
!5646 = !DILocalVariable(name: "vuse", scope: !5639, file: !3, line: 884, type: !853)
!5647 = !DILocalVariable(name: "use_p", scope: !5639, file: !3, line: 886, type: !659)
!5648 = !DILocalVariable(name: "iter", scope: !5639, file: !3, line: 887, type: !2568)
!5649 = !DILocalVariable(name: "use_stmt", scope: !5639, file: !3, line: 888, type: !671)
!5650 = !DILocation(line: 0, scope: !5629)
!5651 = !DILocation(line: 867, column: 3, scope: !5629)
!5652 = !DILocation(line: 868, column: 10, scope: !5629)
!5653 = !DILocation(line: 870, column: 14, scope: !5645)
!5654 = !DILocation(line: 0, scope: !5639)
!5655 = !DILocation(line: 870, column: 8, scope: !5645)
!5656 = !DILocation(line: 870, column: 3, scope: !5645)
!5657 = !DILocation(line: 870, column: 33, scope: !5644)
!5658 = !DILocation(line: 870, column: 32, scope: !5644)
!5659 = !DILocation(line: 872, column: 23, scope: !5643)
!5660 = !DILocation(line: 873, column: 13, scope: !5643)
!5661 = !DILocation(line: 877, column: 27, scope: !5642)
!5662 = !DILocation(line: 877, column: 12, scope: !5642)
!5663 = !DILocation(line: 877, column: 11, scope: !5643)
!5664 = !DILocation(line: 881, column: 8, scope: !5640)
!5665 = !DILocation(line: 881, column: 8, scope: !5641)
!5666 = !DILocation(line: 883, column: 20, scope: !5639)
!5667 = !DILocation(line: 884, column: 20, scope: !5639)
!5668 = !DILocation(line: 887, column: 8, scope: !5639)
!5669 = !DILocation(line: 889, column: 8, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 889, column: 8)
!5671 = !DILocation(line: 889, column: 8, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 889, column: 8)
!5673 = !DILocation(line: 890, column: 3, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 890, column: 3)
!5675 = !DILocation(line: 0, scope: !5674)
!5676 = !DILocation(line: 890, column: 3, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 890, column: 3)
!5678 = !DILocation(line: 891, column: 5, scope: !5677)
!5679 = distinct !{!5679, !5673, !5680}
!5680 = !DILocation(line: 891, column: 5, scope: !5674)
!5681 = distinct !{!5681, !5669, !5682}
!5682 = !DILocation(line: 891, column: 5, scope: !5670)
!5683 = !DILocation(line: 892, column: 12, scope: !5684)
!5684 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 892, column: 12)
!5685 = !DILocation(line: 893, column: 12, scope: !5684)
!5686 = !DILocation(line: 893, column: 15, scope: !5684)
!5687 = !DILocation(line: 893, column: 32, scope: !5684)
!5688 = !DILocation(line: 892, column: 12, scope: !5639)
!5689 = !DILocation(line: 894, column: 42, scope: !5684)
!5690 = !DILocation(line: 894, column: 3, scope: !5684)
!5691 = !DILocation(line: 895, column: 6, scope: !5640)
!5692 = !DILocation(line: 895, column: 6, scope: !5639)
!5693 = !DILocation(line: 897, column: 6, scope: !5640)
!5694 = !DILocation(line: 900, column: 12, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 900, column: 11)
!5696 = !DILocation(line: 900, column: 11, scope: !5643)
!5697 = !DILocation(line: 903, column: 8, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 903, column: 8)
!5699 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 901, column: 2)
!5700 = !DILocation(line: 903, column: 18, scope: !5698)
!5701 = !DILocation(line: 903, column: 22, scope: !5698)
!5702 = !DILocation(line: 903, column: 33, scope: !5698)
!5703 = !DILocation(line: 903, column: 8, scope: !5699)
!5704 = !DILocation(line: 905, column: 8, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 904, column: 6)
!5706 = !DILocation(line: 906, column: 27, scope: !5705)
!5707 = !DILocation(line: 906, column: 8, scope: !5705)
!5708 = !DILocation(line: 907, column: 17, scope: !5705)
!5709 = !DILocation(line: 907, column: 8, scope: !5705)
!5710 = !DILocation(line: 908, column: 6, scope: !5705)
!5711 = !DILocation(line: 910, column: 4, scope: !5699)
!5712 = !DILocation(line: 911, column: 22, scope: !5699)
!5713 = !DILocation(line: 912, column: 4, scope: !5699)
!5714 = distinct !{!5714, !5656, !5715}
!5715 = !DILocation(line: 916, column: 5, scope: !5645)
!5716 = !DILocation(line: 915, column: 7, scope: !5643)
!5717 = !DILocation(line: 870, column: 3, scope: !5644)
!5718 = !DILocation(line: 918, column: 1, scope: !5629)
!5719 = !DILocation(line: 917, column: 3, scope: !5629)
!5720 = distinct !DISubprogram(name: "gimple_seq_last", scope: !581, file: !581, line: 178, type: !4561, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5721)
!5721 = !{!5722}
!5722 = !DILocalVariable(name: "s", arg: 1, scope: !5720, file: !581, line: 178, type: !4563)
!5723 = !DILocation(line: 0, scope: !5720)
!5724 = !DILocation(line: 180, column: 10, scope: !5720)
!5725 = !DILocation(line: 180, column: 17, scope: !5720)
!5726 = !DILocation(line: 180, column: 3, scope: !5720)
!5727 = distinct !DISubprogram(name: "forward_edge_to_pdom", scope: !3, file: !3, line: 923, type: !5728, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5730)
!5728 = !DISubroutineType(types: !5729)
!5729 = !{!712, !712, !1115}
!5730 = !{!5731, !5732, !5733, !5734, !5735, !5736, !5742, !5743}
!5731 = !DILocalVariable(name: "e", arg: 1, scope: !5727, file: !3, line: 923, type: !712)
!5732 = !DILocalVariable(name: "post_dom_bb", arg: 2, scope: !5727, file: !3, line: 923, type: !1115)
!5733 = !DILocalVariable(name: "gsi", scope: !5727, file: !3, line: 925, type: !3382)
!5734 = !DILocalVariable(name: "e2", scope: !5727, file: !3, line: 926, type: !712)
!5735 = !DILocalVariable(name: "ei", scope: !5727, file: !3, line: 927, type: !3405)
!5736 = !DILocalVariable(name: "phi", scope: !5737, file: !3, line: 949, type: !671)
!5737 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 948, column: 2)
!5738 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 947, column: 7)
!5739 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 947, column: 7)
!5740 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 941, column: 5)
!5741 = distinct !DILexicalBlock(scope: !5727, file: !3, line: 940, column: 7)
!5742 = !DILocalVariable(name: "op", scope: !5737, file: !3, line: 950, type: !853)
!5743 = !DILocalVariable(name: "locus", scope: !5737, file: !3, line: 951, type: !692)
!5744 = !DILocation(line: 0, scope: !5727)
!5745 = !DILocation(line: 925, column: 3, scope: !5727)
!5746 = !DILocation(line: 926, column: 3, scope: !5727)
!5747 = !DILocation(line: 926, column: 8, scope: !5727)
!5748 = !DILocation(line: 927, column: 3, scope: !5727)
!5749 = !DILocation(line: 929, column: 7, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5727, file: !3, line: 929, column: 7)
!5751 = !DILocation(line: 929, column: 17, scope: !5750)
!5752 = !DILocation(line: 929, column: 21, scope: !5750)
!5753 = !DILocation(line: 929, column: 32, scope: !5750)
!5754 = !DILocation(line: 929, column: 7, scope: !5727)
!5755 = !DILocation(line: 930, column: 63, scope: !5750)
!5756 = !DILocation(line: 930, column: 68, scope: !5750)
!5757 = !DILocation(line: 931, column: 10, scope: !5750)
!5758 = !DILocation(line: 931, column: 16, scope: !5750)
!5759 = !DILocation(line: 931, column: 36, scope: !5750)
!5760 = !DILocation(line: 930, column: 5, scope: !5750)
!5761 = !DILocation(line: 933, column: 8, scope: !5727)
!5762 = !DILocation(line: 933, column: 6, scope: !5727)
!5763 = !DILocation(line: 934, column: 15, scope: !5727)
!5764 = !DILocation(line: 937, column: 10, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5727, file: !3, line: 937, column: 7)
!5766 = !DILocation(line: 937, column: 7, scope: !5727)
!5767 = !DILocation(line: 938, column: 5, scope: !5765)
!5768 = !DILocation(line: 940, column: 28, scope: !5741)
!5769 = !DILocation(line: 940, column: 8, scope: !5741)
!5770 = !DILocation(line: 940, column: 7, scope: !5727)
!5771 = !DILocation(line: 944, column: 7, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 944, column: 7)
!5773 = !DILocation(line: 0, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 944, column: 7)
!5775 = !DILocation(line: 944, column: 7, scope: !5774)
!5776 = !DILocation(line: 945, column: 6, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 945, column: 6)
!5778 = !DILocation(line: 945, column: 9, scope: !5777)
!5779 = distinct !{!5779, !5771, !5780}
!5780 = !DILocation(line: 946, column: 4, scope: !5772)
!5781 = !DILocation(line: 947, column: 18, scope: !5739)
!5782 = !DILocation(line: 947, column: 12, scope: !5739)
!5783 = !DILocation(line: 947, column: 49, scope: !5738)
!5784 = !DILocation(line: 947, column: 48, scope: !5738)
!5785 = !DILocation(line: 947, column: 7, scope: !5739)
!5786 = !DILocation(line: 949, column: 17, scope: !5737)
!5787 = !DILocation(line: 0, scope: !5737)
!5788 = !DILocation(line: 955, column: 24, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 955, column: 8)
!5790 = !DILocation(line: 955, column: 9, scope: !5789)
!5791 = !DILocation(line: 955, column: 8, scope: !5737)
!5792 = !DILocation(line: 957, column: 8, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 956, column: 6)
!5794 = !DILocation(line: 958, column: 8, scope: !5793)
!5795 = !DILocation(line: 959, column: 8, scope: !5793)
!5796 = distinct !{!5796, !5785, !5797}
!5797 = !DILocation(line: 975, column: 2, scope: !5739)
!5798 = !DILocation(line: 963, column: 16, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 963, column: 15)
!5800 = !DILocation(line: 963, column: 15, scope: !5737)
!5801 = !DILocation(line: 965, column: 8, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 964, column: 6)
!5803 = !DILocation(line: 966, column: 8, scope: !5802)
!5804 = !DILocation(line: 969, column: 34, scope: !5737)
!5805 = !DILocation(line: 969, column: 38, scope: !5737)
!5806 = !DILocation(line: 969, column: 9, scope: !5737)
!5807 = !DILocation(line: 970, column: 42, scope: !5737)
!5808 = !DILocation(line: 970, column: 46, scope: !5737)
!5809 = !DILocation(line: 970, column: 12, scope: !5737)
!5810 = !DILocation(line: 971, column: 4, scope: !5737)
!5811 = !DILocation(line: 973, column: 4, scope: !5737)
!5812 = !DILocation(line: 974, column: 4, scope: !5737)
!5813 = !DILocation(line: 975, column: 2, scope: !5738)
!5814 = !DILocation(line: 978, column: 1, scope: !5727)
!5815 = distinct !DISubprogram(name: "ei_safe_edge", scope: !135, file: !135, line: 761, type: !4795, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5816)
!5816 = !{!5817}
!5817 = !DILocalVariable(name: "i", arg: 1, scope: !5815, file: !135, line: 761, type: !3405)
!5818 = !DILocation(line: 763, column: 11, scope: !5815)
!5819 = !DILocation(line: 763, column: 10, scope: !5815)
!5820 = !DILocation(line: 763, column: 26, scope: !5815)
!5821 = !DILocation(line: 763, column: 3, scope: !5815)
!5822 = distinct !DISubprogram(name: "gimple_seq_empty_p", scope: !581, file: !581, line: 215, type: !5823, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5825)
!5823 = !DISubroutineType(types: !5824)
!5824 = !{!651, !4563}
!5825 = !{!5826}
!5826 = !DILocalVariable(name: "s", arg: 1, scope: !5822, file: !581, line: 215, type: !4563)
!5827 = !DILocation(line: 0, scope: !5822)
!5828 = !DILocation(line: 217, column: 12, scope: !5822)
!5829 = !DILocation(line: 217, column: 20, scope: !5822)
!5830 = !DILocation(line: 217, column: 26, scope: !5822)
!5831 = !DILocation(line: 217, column: 32, scope: !5822)
!5832 = !DILocation(line: 217, column: 3, scope: !5822)
!5833 = distinct !DISubprogram(name: "phi_nodes", scope: !2628, file: !2628, line: 508, type: !4547, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5834)
!5834 = !{!5835}
!5835 = !DILocalVariable(name: "bb", arg: 1, scope: !5833, file: !2628, line: 508, type: !4154)
!5836 = !DILocation(line: 0, scope: !5833)
!5837 = !DILocation(line: 510, column: 3, scope: !5833)
!5838 = !DILocation(line: 511, column: 15, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5833, file: !2628, line: 511, column: 7)
!5840 = !DILocation(line: 511, column: 8, scope: !5839)
!5841 = !DILocation(line: 511, column: 7, scope: !5833)
!5842 = !DILocation(line: 513, column: 25, scope: !5833)
!5843 = !DILocation(line: 513, column: 3, scope: !5833)
!5844 = !DILocation(line: 514, column: 1, scope: !5833)
!5845 = distinct !DISubprogram(name: "gimple_phi_arg_location", scope: !2628, file: !2628, line: 475, type: !5846, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5848)
!5846 = !DISubroutineType(types: !5847)
!5847 = !{!692, !671, !1173}
!5848 = !{!5849, !5850}
!5849 = !DILocalVariable(name: "gs", arg: 1, scope: !5845, file: !2628, line: 475, type: !671)
!5850 = !DILocalVariable(name: "i", arg: 2, scope: !5845, file: !2628, line: 475, type: !1173)
!5851 = !DILocation(line: 0, scope: !5845)
!5852 = !DILocation(line: 477, column: 30, scope: !5845)
!5853 = !DILocation(line: 477, column: 10, scope: !5845)
!5854 = !DILocation(line: 477, column: 34, scope: !5845)
!5855 = !DILocation(line: 477, column: 3, scope: !5845)
!5856 = distinct !DISubprogram(name: "gimple_set_op", scope: !581, file: !581, line: 1663, type: !5857, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5859)
!5857 = !DISubroutineType(types: !5858)
!5858 = !{null, !671, !7, !853}
!5859 = !{!5860, !5861, !5862}
!5860 = !DILocalVariable(name: "gs", arg: 1, scope: !5856, file: !581, line: 1663, type: !671)
!5861 = !DILocalVariable(name: "i", arg: 2, scope: !5856, file: !581, line: 1663, type: !7)
!5862 = !DILocalVariable(name: "op", arg: 3, scope: !5856, file: !581, line: 1663, type: !853)
!5863 = !DILocation(line: 0, scope: !5856)
!5864 = !DILocation(line: 1665, column: 3, scope: !5856)
!5865 = !DILocation(line: 1671, column: 3, scope: !5856)
!5866 = !DILocation(line: 1671, column: 22, scope: !5856)
!5867 = !DILocation(line: 1672, column: 1, scope: !5856)
!5868 = distinct !DISubprogram(name: "gsi_start", scope: !581, file: !581, line: 4403, type: !5869, scopeLine: 4404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5871)
!5869 = !DISubroutineType(types: !5870)
!5870 = !{!3382, !722}
!5871 = !{!5872, !5873}
!5872 = !DILocalVariable(name: "seq", arg: 1, scope: !5868, file: !581, line: 4403, type: !722)
!5873 = !DILocalVariable(name: "i", scope: !5868, file: !581, line: 4405, type: !3382)
!5874 = !DILocation(line: 0, scope: !5868)
!5875 = !DILocation(line: 4405, column: 24, scope: !5868)
!5876 = !DILocation(line: 4407, column: 11, scope: !5868)
!5877 = !DILocation(line: 4407, column: 5, scope: !5868)
!5878 = !DILocation(line: 4407, column: 9, scope: !5868)
!5879 = !DILocation(line: 4408, column: 5, scope: !5868)
!5880 = !DILocation(line: 4408, column: 9, scope: !5868)
!5881 = !DILocation(line: 4409, column: 11, scope: !5868)
!5882 = !DILocation(line: 4409, column: 17, scope: !5868)
!5883 = !DILocation(line: 4409, column: 27, scope: !5868)
!5884 = !DILocation(line: 4409, column: 20, scope: !5868)
!5885 = !DILocation(line: 4409, column: 10, scope: !5868)
!5886 = !DILocation(line: 4409, column: 35, scope: !5868)
!5887 = !DILocation(line: 4409, column: 5, scope: !5868)
!5888 = !DILocation(line: 4409, column: 8, scope: !5868)
!5889 = !DILocation(line: 4411, column: 3, scope: !5868)
!5890 = distinct !DISubprogram(name: "VEC_gimple_heap_free", scope: !581, file: !581, line: 34, type: !5891, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5893)
!5891 = !DISubroutineType(types: !5892)
!5892 = !{null, !4672}
!5893 = !{!5894}
!5894 = !DILocalVariable(name: "vec_", arg: 1, scope: !5890, file: !581, line: 34, type: !4672)
!5895 = !DILocation(line: 0, scope: !5890)
!5896 = !DILocation(line: 34, column: 1, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5890, file: !581, line: 34, column: 1)
!5898 = !DILocation(line: 34, column: 1, scope: !5890)
