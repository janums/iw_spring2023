; ModuleID = 'tree-ssa-copy.bc'
source_filename = "tree-ssa-copy.c"
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
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.prop_value_d = type { i32, %union.tree_node* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.ptr_info_def = type { %struct.pt_solution }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"tree-ssa-copy.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"copyprop\00", align 1
@pass_copy_prop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 ()* @gate_copy_prop, i32 ()* @execute_copy_prop, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 53, i32 40, i32 0, i32 0, i32 0, i32 2087 } }, align 8, !dbg !0
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@flag_tree_copy_prop = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@copy_of = internal unnamed_addr global %struct.prop_value_d* null, align 8, !dbg !2060
@cached_last_copy_of = internal unnamed_addr global %union.tree_node** null, align 8, !dbg !2062
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"\0AVisiting statement:\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"No interesting values produced.\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Trying to determine truth value of \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"predicate \00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"\0AConditional will always take edge %d->%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"\0AVisiting PHI node: \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"\09Argument #%d: \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"\0APHI node \00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"\0ATelling the propagator to \00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"add SSA edges out of this PHI and continue.\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"add SSA edges out of this PHI and never visit again.\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"do nothing with SSA edges and keep iterating.\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c" copy-of chain: \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"[UNDEFINED]\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"[COPY]\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"[NOT A COPY]\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2094 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2107, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2108, metadata !DIExpression()), !dbg !2109
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2110
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2111
  ret i32 %call, !dbg !2112
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2113 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2117
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2118
  ret i32 %call, !dbg !2119
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2120 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2175, metadata !DIExpression()), !dbg !2176
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2177
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2177
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2177
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2177
  %cmp = icmp uge i8* %0, %1, !dbg !2177
  %conv1 = zext i1 %cmp to i64, !dbg !2177
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2177
  %tobool = icmp eq i64 %expval, 0, !dbg !2177
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2177

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2177
  br label %cond.end, !dbg !2177

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2177
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2177
  %2 = load i8, i8* %0, align 1, !dbg !2177
  %conv3 = zext i8 %2 to i32, !dbg !2177
  br label %cond.end, !dbg !2177

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2177
  ret i32 %cond, !dbg !2178
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2179 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2181, metadata !DIExpression()), !dbg !2182
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2183
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2183
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2183
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2183
  %cmp = icmp uge i8* %0, %1, !dbg !2183
  %conv1 = zext i1 %cmp to i64, !dbg !2183
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2183
  %tobool = icmp eq i64 %expval, 0, !dbg !2183
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2183

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2183
  br label %cond.end, !dbg !2183

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2183
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2183
  %2 = load i8, i8* %0, align 1, !dbg !2183
  %conv3 = zext i8 %2 to i32, !dbg !2183
  br label %cond.end, !dbg !2183

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2183
  ret i32 %cond, !dbg !2184
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2185 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2186
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2186
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2186
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2186
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2186
  %cmp = icmp uge i8* %1, %2, !dbg !2186
  %conv1 = zext i1 %cmp to i64, !dbg !2186
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2186
  %tobool = icmp eq i64 %expval, 0, !dbg !2186
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2186

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2186
  br label %cond.end, !dbg !2186

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2186
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2186
  %3 = load i8, i8* %1, align 1, !dbg !2186
  %conv3 = zext i8 %3 to i32, !dbg !2186
  br label %cond.end, !dbg !2186

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2186
  ret i32 %cond, !dbg !2187
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2188 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2192, metadata !DIExpression()), !dbg !2193
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2194
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2195
  ret i32 %call, !dbg !2196
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2197 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2201, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2202, metadata !DIExpression()), !dbg !2203
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2204
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2204
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2204
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2204
  %cmp = icmp uge i8* %0, %1, !dbg !2204
  %conv1 = zext i1 %cmp to i64, !dbg !2204
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2204
  %tobool = icmp eq i64 %expval, 0, !dbg !2204
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2204

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2204
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2204
  br label %cond.end, !dbg !2204

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2204
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2204
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2204
  store i8 %conv2, i8* %0, align 1, !dbg !2204
  %conv6 = and i32 %__c, 255, !dbg !2204
  br label %cond.end, !dbg !2204

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2204
  ret i32 %cond, !dbg !2205
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2206 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2208, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2209, metadata !DIExpression()), !dbg !2210
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2211
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2211
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2211
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2211
  %cmp = icmp uge i8* %0, %1, !dbg !2211
  %conv1 = zext i1 %cmp to i64, !dbg !2211
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2211
  %tobool = icmp eq i64 %expval, 0, !dbg !2211
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2211

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2211
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2211
  br label %cond.end, !dbg !2211

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2211
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2211
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2211
  store i8 %conv2, i8* %0, align 1, !dbg !2211
  %conv6 = and i32 %__c, 255, !dbg !2211
  br label %cond.end, !dbg !2211

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2211
  ret i32 %cond, !dbg !2212
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2213 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2215, metadata !DIExpression()), !dbg !2216
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2217
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2217
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2217
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2217
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2217
  %cmp = icmp uge i8* %1, %2, !dbg !2217
  %conv1 = zext i1 %cmp to i64, !dbg !2217
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2217
  %tobool = icmp eq i64 %expval, 0, !dbg !2217
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2217

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2217
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2217
  br label %cond.end, !dbg !2217

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2217
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2217
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2217
  store i8 %conv4, i8* %1, align 1, !dbg !2217
  %conv6 = and i32 %__c, 255, !dbg !2217
  br label %cond.end, !dbg !2217

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2217
  ret i32 %cond, !dbg !2218
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2219 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2225, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2226, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2227, metadata !DIExpression()), !dbg !2228
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2229
  ret i64 %call, !dbg !2230
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2231 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2233, metadata !DIExpression()), !dbg !2234
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2235
  %0 = load i32, i32* %_flags, align 8, !dbg !2235
  %and = lshr i32 %0, 4, !dbg !2235
  %and.lobit = and i32 %and, 1, !dbg !2235
  ret i32 %and.lobit, !dbg !2236
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2237 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2239, metadata !DIExpression()), !dbg !2240
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2241
  %0 = load i32, i32* %_flags, align 8, !dbg !2241
  %and = lshr i32 %0, 5, !dbg !2241
  %and.lobit = and i32 %and, 1, !dbg !2241
  ret i32 %and.lobit, !dbg !2242
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2243 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2246, metadata !DIExpression()), !dbg !2247
  %__c.off = add i32 %__c, 128, !dbg !2248
  %0 = icmp ult i32 %__c.off, 384, !dbg !2248
  br i1 %0, label %cond.true, label %cond.end, !dbg !2248

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2249
  %1 = load i32*, i32** %call, align 8, !dbg !2250
  %idxprom = sext i32 %__c to i64, !dbg !2251
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2251
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2251
  br label %cond.end, !dbg !2252

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2252
  ret i32 %cond, !dbg !2253
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2254 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2256, metadata !DIExpression()), !dbg !2257
  %__c.off = add i32 %__c, 128, !dbg !2258
  %0 = icmp ult i32 %__c.off, 384, !dbg !2258
  br i1 %0, label %cond.true, label %cond.end, !dbg !2258

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2259
  %1 = load i32*, i32** %call, align 8, !dbg !2260
  %idxprom = sext i32 %__c to i64, !dbg !2261
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2261
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2261
  br label %cond.end, !dbg !2262

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2262
  ret i32 %cond, !dbg !2263
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2264 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2269, metadata !DIExpression()), !dbg !2270
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2271
  %conv = trunc i64 %call to i32, !dbg !2272
  ret i32 %conv, !dbg !2273
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2274 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2278, metadata !DIExpression()), !dbg !2279
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2280
  ret i64 %call, !dbg !2281
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2282 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2287, metadata !DIExpression()), !dbg !2288
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2289
  ret i64 %call, !dbg !2290
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2291 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2297, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2298, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2299, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2300, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2301, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 0, metadata !2302, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2303, metadata !DIExpression()), !dbg !2307
  br label %while.cond, !dbg !2308

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2309
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2307
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2303, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2302, metadata !DIExpression()), !dbg !2307
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2310
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2308

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2311
  %div = lshr i64 %add, 1, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %div, metadata !2304, metadata !DIExpression()), !dbg !2307
  %mul = mul i64 %div, %__size, !dbg !2314
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2315
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2305, metadata !DIExpression()), !dbg !2307
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2316
  call void @llvm.dbg.value(metadata i32 %call, metadata !2306, metadata !DIExpression()), !dbg !2307
  %cmp1 = icmp slt i32 %call, 0, !dbg !2317
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2319

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2320
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2322

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2302, metadata !DIExpression()), !dbg !2307
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2307
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2307
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2303, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2302, metadata !DIExpression()), !dbg !2307
  br label %while.cond, !dbg !2308, !llvm.loop !2324

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2307
  ret i8* %retval.0, !dbg !2326
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2327 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2333, metadata !DIExpression()), !dbg !2334
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2335
  ret double %call, !dbg !2336
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2337 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2346, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 %base, metadata !2348, metadata !DIExpression()), !dbg !2349
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2350
  ret i64 %call, !dbg !2351
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2352 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2358, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2359, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i32 %base, metadata !2360, metadata !DIExpression()), !dbg !2361
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2362
  ret i64 %call, !dbg !2363
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2364 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2375, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2376, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i32 %base, metadata !2377, metadata !DIExpression()), !dbg !2378
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2379
  ret i64 %call, !dbg !2380
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2381 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2385, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2386, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 %base, metadata !2387, metadata !DIExpression()), !dbg !2388
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2389
  ret i64 %call, !dbg !2390
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2391 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2431, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2432, metadata !DIExpression()), !dbg !2433
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2434
  ret i32 %call, !dbg !2435
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2436 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2438, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2439, metadata !DIExpression()), !dbg !2440
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2441
  ret i32 %call, !dbg !2442
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2443 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2448, metadata !DIExpression()), !dbg !2449
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2450
  ret i32 %call, !dbg !2451
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2452 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2456, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2457, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2458, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2459, metadata !DIExpression()), !dbg !2460
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2461
  ret i32 %call, !dbg !2462
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2463 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2467, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2468, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2469, metadata !DIExpression()), !dbg !2470
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2469, metadata !DIExpression(DW_OP_deref)), !dbg !2470
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2471
  ret i32 %call, !dbg !2472
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2473 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2477, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2478, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2479, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2480, metadata !DIExpression()), !dbg !2481
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2480, metadata !DIExpression(DW_OP_deref)), !dbg !2481
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2482
  ret i32 %call, !dbg !2483
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2484 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2508, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2509, metadata !DIExpression()), !dbg !2510
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2511
  ret i32 %call, !dbg !2512
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2513 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2515, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2516, metadata !DIExpression()), !dbg !2517
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2518
  ret i32 %call, !dbg !2519
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2520 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2525, metadata !DIExpression()), !dbg !2526
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2527
  ret i32 %call, !dbg !2528
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2529 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2533, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2534, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2535, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2536, metadata !DIExpression()), !dbg !2537
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2538
  ret i32 %call, !dbg !2539
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @may_propagate_copy(%union.tree_node* %dest, %union.tree_node* %orig) local_unnamed_addr #5 !dbg !2540 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %dest, metadata !2544, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata %union.tree_node* %orig, metadata !2545, metadata !DIExpression()), !dbg !2548
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %dest, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2549
  %0 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2549
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2546, metadata !DIExpression()), !dbg !2548
  %type2 = getelementptr inbounds %union.tree_node, %union.tree_node* %orig, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2550
  %1 = load %union.tree_node*, %union.tree_node** %type2, align 8, !dbg !2550
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2547, metadata !DIExpression()), !dbg !2548
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %orig, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2551
  %bf.load = load i64, i64* %2, align 8, !dbg !2551
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2553
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2553
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2554

land.lhs.true:                                    ; preds = %entry
  %bf.cast66 = and i64 %bf.load, 4194304, !dbg !2555
  %tobool = icmp eq i64 %bf.cast66, 0, !dbg !2555
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2556

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %dest, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2557
  %bf.load8 = load i64, i64* %3, align 8, !dbg !2557
  %bf.cast102 = and i64 %bf.load8, 65535, !dbg !2559
  %cmp11 = icmp eq i64 %bf.cast102, 141, !dbg !2559
  br i1 %cmp11, label %land.lhs.true12, label %if.end20, !dbg !2560

land.lhs.true12:                                  ; preds = %if.end
  %bf.cast175 = and i64 %bf.load8, 4194304, !dbg !2561
  %tobool18 = icmp eq i64 %bf.cast175, 0, !dbg !2561
  br i1 %tobool18, label %if.end20, label %cleanup, !dbg !2562

if.end20:                                         ; preds = %land.lhs.true12, %if.end
  %call = tail call zeroext i8 @useless_type_conversion_p(%union.tree_node* %0, %union.tree_node* %1) #6, !dbg !2563
  %tobool21 = icmp eq i8 %call, 0, !dbg !2563
  br i1 %tobool21, label %cleanup, label %if.end23, !dbg !2565

if.end23:                                         ; preds = %if.end20
  %bf.load25 = load i64, i64* %3, align 8, !dbg !2566
  %bf.cast273 = and i64 %bf.load25, 65535, !dbg !2568
  %cmp28 = icmp eq i64 %bf.cast273, 141, !dbg !2568
  br i1 %cmp28, label %land.lhs.true29, label %cleanup, !dbg !2569

land.lhs.true29:                                  ; preds = %if.end23
  %call30 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %dest) #6, !dbg !2570
  %tobool31 = icmp eq i8 %call30, 0, !dbg !2570
  br i1 %tobool31, label %if.then32, label %cleanup, !dbg !2571

if.then32:                                        ; preds = %land.lhs.true29
  %bf.load34 = load i64, i64* %2, align 8, !dbg !2572
  %bf.cast364 = and i64 %bf.load34, 65535, !dbg !2572
  %cmp37 = icmp eq i64 %bf.cast364, 141, !dbg !2572
  br i1 %cmp37, label %land.lhs.true38, label %cond.true, !dbg !2572

land.lhs.true38:                                  ; preds = %if.then32
  %call39 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %orig) #6, !dbg !2572
  %tobool40 = icmp eq i8 %call39, 0, !dbg !2572
  br i1 %tobool40, label %cleanup, label %cond.true, !dbg !2572

cond.true:                                        ; preds = %land.lhs.true38, %if.then32
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2572
  br label %cleanup, !dbg !2572

cleanup:                                          ; preds = %land.lhs.true, %land.lhs.true12, %land.lhs.true38, %land.lhs.true29, %if.end20, %if.end23, %cond.true
  %retval.0 = phi i8 [ 0, %land.lhs.true ], [ 0, %land.lhs.true12 ], [ 0, %if.end20 ], [ 1, %land.lhs.true38 ], [ 1, %cond.true ], [ 1, %land.lhs.true29 ], [ 1, %if.end23 ], !dbg !2548
  ret i8 %retval.0, !dbg !2574
}

declare dso_local zeroext i8 @useless_type_conversion_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @may_propagate_copy_into_stmt(%union.gimple_statement_d* %dest, %union.tree_node* %orig) local_unnamed_addr #5 !dbg !2575 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %dest, metadata !2579, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata %union.tree_node* %orig, metadata !2580, metadata !DIExpression()), !dbg !2583
  %call = tail call zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d* %dest) #6, !dbg !2584
  %tobool = icmp eq i8 %call, 0, !dbg !2584
  br i1 %tobool, label %if.else, label %if.then, !dbg !2586

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %dest) #7, !dbg !2587
  %call2 = tail call zeroext i8 @may_propagate_copy(%union.tree_node* %call1, %union.tree_node* %orig) #7, !dbg !2588
  br label %cleanup, !dbg !2589

if.else:                                          ; preds = %entry
  %call3 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %dest) #7, !dbg !2590
  %cmp = icmp eq i32 %call3, 5, !dbg !2592
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !2593

if.then4:                                         ; preds = %if.else
  %call5 = tail call fastcc %union.tree_node* @gimple_switch_index(%union.gimple_statement_d* %dest) #7, !dbg !2594
  %call6 = tail call zeroext i8 @may_propagate_copy(%union.tree_node* %call5, %union.tree_node* %orig) #7, !dbg !2595
  br label %cleanup, !dbg !2596

if.end7:                                          ; preds = %if.else
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %orig, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2597
  %bf.load = load i64, i64* %0, align 8, !dbg !2597
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2599
  %cmp8 = icmp eq i64 %bf.cast1, 141, !dbg !2599
  br i1 %cmp8, label %land.lhs.true, label %if.end15, !dbg !2600

land.lhs.true:                                    ; preds = %if.end7
  %bf.cast122 = and i64 %bf.load, 4194304, !dbg !2601
  %tobool13 = icmp eq i64 %bf.cast122, 0, !dbg !2601
  br i1 %tobool13, label %if.end15, label %cleanup, !dbg !2602

if.end15:                                         ; preds = %land.lhs.true, %if.end7
  %call16 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %dest) #7, !dbg !2603
  %tobool17 = icmp eq i8 %call16, 0, !dbg !2603
  br i1 %tobool17, label %if.else20, label %if.then18, !dbg !2605

if.then18:                                        ; preds = %if.end15
  %call19 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %dest) #7, !dbg !2606
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call19, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2606
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2606
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2581, metadata !DIExpression()), !dbg !2583
  br label %if.end38, !dbg !2607

if.else20:                                        ; preds = %if.end15
  %call21 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %dest) #7, !dbg !2608
  %cmp22 = icmp eq i32 %call21, 1, !dbg !2610
  br i1 %cmp22, label %if.then23, label %if.else24, !dbg !2611

if.then23:                                        ; preds = %if.else20
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !2612
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2581, metadata !DIExpression()), !dbg !2583
  br label %if.end38, !dbg !2613

if.else24:                                        ; preds = %if.else20
  %call25 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %dest) #7, !dbg !2614
  %tobool26 = icmp eq i8 %call25, 0, !dbg !2614
  br i1 %tobool26, label %if.else35, label %land.lhs.true27, !dbg !2616

land.lhs.true27:                                  ; preds = %if.else24
  %call28 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %dest) #7, !dbg !2617
  %cmp29 = icmp eq %union.tree_node* %call28, null, !dbg !2618
  br i1 %cmp29, label %if.else35, label %if.then31, !dbg !2619

if.then31:                                        ; preds = %land.lhs.true27
  %call32 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %dest) #7, !dbg !2620
  %type34 = getelementptr inbounds %union.tree_node, %union.tree_node* %call32, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2620
  %3 = load %union.tree_node*, %union.tree_node** %type34, align 8, !dbg !2620
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !2581, metadata !DIExpression()), !dbg !2583
  br label %if.end38, !dbg !2621

if.else35:                                        ; preds = %land.lhs.true27, %if.else24
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2622
  br label %if.end38

if.end38:                                         ; preds = %if.then23, %if.else35, %if.then31, %if.then18
  %type_d.2 = phi %union.tree_node* [ %1, %if.then18 ], [ %2, %if.then23 ], [ %3, %if.then31 ], [ undef, %if.else35 ], !dbg !2623
  call void @llvm.dbg.value(metadata %union.tree_node* %type_d.2, metadata !2581, metadata !DIExpression()), !dbg !2583
  %type40 = getelementptr inbounds %union.tree_node, %union.tree_node* %orig, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2624
  %4 = load %union.tree_node*, %union.tree_node** %type40, align 8, !dbg !2624
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !2582, metadata !DIExpression()), !dbg !2583
  %call41 = tail call zeroext i8 @useless_type_conversion_p(%union.tree_node* %type_d.2, %union.tree_node* %4) #6, !dbg !2625
  %tobool42 = icmp ne i8 %call41, 0, !dbg !2625
  %. = zext i1 %tobool42 to i8, !dbg !2583
  br label %cleanup, !dbg !2583

cleanup:                                          ; preds = %land.lhs.true, %if.end38, %if.then4, %if.then
  %retval.0 = phi i8 [ %call2, %if.then ], [ %call6, %if.then4 ], [ 0, %land.lhs.true ], [ %., %if.end38 ], !dbg !2583
  ret i8 %retval.0, !dbg !2627
}

declare dso_local zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2628 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2633, metadata !DIExpression()), !dbg !2634
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !2635
  ret %union.tree_node* %call, !dbg !2636
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2637 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2641, metadata !DIExpression()), !dbg !2642
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2643
  %bf.load = load i32, i32* %0, align 8, !dbg !2643
  %bf.clear = and i32 %bf.load, 255, !dbg !2643
  ret i32 %bf.clear, !dbg !2644
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_switch_index(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2645 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2647, metadata !DIExpression()), !dbg !2648
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !2649
  ret %union.tree_node* %call, !dbg !2650
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2651 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2655, metadata !DIExpression()), !dbg !2656
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !2657
  %cmp = icmp eq i32 %call, 6, !dbg !2658
  %conv1 = zext i1 %cmp to i8, !dbg !2657
  ret i8 %conv1, !dbg !2659
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2660 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2662, metadata !DIExpression()), !dbg !2663
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !2664
  ret %union.tree_node* %call, !dbg !2665
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2666 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2668, metadata !DIExpression()), !dbg !2669
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !2670
  %cmp = icmp eq i32 %call, 8, !dbg !2671
  %conv1 = zext i1 %cmp to i8, !dbg !2670
  ret i8 %conv1, !dbg !2672
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2673 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2675, metadata !DIExpression()), !dbg !2676
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !2677
  ret %union.tree_node* %call, !dbg !2678
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @may_propagate_copy_into_asm(%union.tree_node* %dest) local_unnamed_addr #5 !dbg !2679 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %dest, metadata !2683, metadata !DIExpression()), !dbg !2684
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %dest, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2685
  %bf.load = load i64, i64* %0, align 8, !dbg !2685
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2686
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2686
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2687

land.lhs.true:                                    ; preds = %entry
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %dest, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2688
  %1 = bitcast i32* %var to i64**, !dbg !2688
  %2 = load i64*, i64** %1, align 8, !dbg !2688
  %bf.load2 = load i64, i64* %2, align 8, !dbg !2688
  %bf.cast42 = and i64 %bf.load2, 65535, !dbg !2689
  %cmp5 = icmp eq i64 %bf.cast42, 32, !dbg !2689
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !2690

land.rhs:                                         ; preds = %land.lhs.true
  %hard_register = getelementptr inbounds i64, i64* %2, i64 18, !dbg !2691
  %3 = bitcast i64* %hard_register to i32*, !dbg !2691
  %bf.load8 = load i32, i32* %3, align 8, !dbg !2691
  %bf.lshr = lshr i32 %bf.load8, 1, !dbg !2691
  %4 = trunc i32 %bf.lshr to i8
  %5 = and i8 %4, 1
  %6 = xor i8 %5, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %7 = phi i8 [ 1, %land.lhs.true ], [ 1, %entry ], [ %6, %land.rhs ]
  ret i8 %7, !dbg !2692
}

; Function Attrs: nounwind uwtable
define dso_local void @propagate_value(%struct.ssa_use_operand_d* %op_p, %union.tree_node* %val) local_unnamed_addr #5 !dbg !2693 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %op_p, metadata !2700, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !2701, metadata !DIExpression()), !dbg !2702
  tail call fastcc void @replace_exp_1(%struct.ssa_use_operand_d* %op_p, %union.tree_node* %val, i8 zeroext 1) #7, !dbg !2703
  ret void, !dbg !2704
}

; Function Attrs: nounwind uwtable
define internal fastcc void @replace_exp_1(%struct.ssa_use_operand_d* %op_p, %union.tree_node* %val, i8 zeroext %for_propagation) unnamed_addr #5 !dbg !2705 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %op_p, metadata !2709, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !2710, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 %for_propagation, metadata !2711, metadata !DIExpression()), !dbg !2712
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %val, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2713
  %bf.load = load i64, i64* %0, align 8, !dbg !2713
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2715
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2715
  br i1 %cmp, label %if.then, label %if.else, !dbg !2716

if.then:                                          ; preds = %entry
  tail call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %op_p, %union.tree_node* %val) #7, !dbg !2717
  br label %if.end, !dbg !2717

if.else:                                          ; preds = %entry
  %call = tail call %union.tree_node* @unsave_expr_now(%union.tree_node* %val) #6, !dbg !2718
  tail call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %op_p, %union.tree_node* %call) #7, !dbg !2718
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2719
}

; Function Attrs: nounwind uwtable
define dso_local void @replace_exp(%struct.ssa_use_operand_d* %op_p, %union.tree_node* %val) local_unnamed_addr #5 !dbg !2720 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %op_p, metadata !2722, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !2723, metadata !DIExpression()), !dbg !2724
  tail call fastcc void @replace_exp_1(%struct.ssa_use_operand_d* %op_p, %union.tree_node* %val, i8 zeroext 0) #7, !dbg !2725
  ret void, !dbg !2726
}

; Function Attrs: nounwind uwtable
define dso_local void @propagate_tree_value(%union.tree_node** %op_p, %union.tree_node* %val) local_unnamed_addr #5 !dbg !2727 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %op_p, metadata !2731, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !2732, metadata !DIExpression()), !dbg !2733
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %val, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2734
  %bf.load = load i64, i64* %0, align 8, !dbg !2734
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2736
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2736
  br i1 %cmp, label %if.then, label %if.else, !dbg !2737

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !2738

if.else:                                          ; preds = %entry
  %call = tail call %union.tree_node* @unsave_expr_now(%union.tree_node* %val) #6, !dbg !2739
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi %union.tree_node* [ %call, %if.else ], [ %val, %if.then ], !dbg !2740
  store %union.tree_node* %storemerge, %union.tree_node** %op_p, align 8, !dbg !2740
  ret void, !dbg !2741
}

declare dso_local %union.tree_node* @unsave_expr_now(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @propagate_tree_value_into_stmt(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %val) local_unnamed_addr #5 !dbg !2742 {
entry:
  %expr = alloca %union.tree_node*, align 8
  %lhs = alloca %union.tree_node*, align 8
  %expr17 = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2753, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !2754, metadata !DIExpression()), !dbg !2767
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2768
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2755, metadata !DIExpression()), !dbg !2767
  %call1 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call) #7, !dbg !2769
  %tobool = icmp eq i8 %call1, 0, !dbg !2769
  br i1 %tobool, label %if.else, label %if.then, !dbg !2770

if.then:                                          ; preds = %entry
  %0 = bitcast %union.tree_node** %expr to i8*, !dbg !2771
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2771
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2756, metadata !DIExpression()), !dbg !2772
  store %union.tree_node* null, %union.tree_node** %expr, align 8, !dbg !2773
  %call2 = tail call zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d* %call) #6, !dbg !2774
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2774
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !2776

if.then4:                                         ; preds = %if.then
  %call5 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call) #7, !dbg !2777
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !2756, metadata !DIExpression()), !dbg !2772
  store %union.tree_node* %call5, %union.tree_node** %expr, align 8, !dbg !2778
  br label %if.end, !dbg !2779

if.end:                                           ; preds = %if.then, %if.then4
  call void @llvm.dbg.value(metadata %union.tree_node** %expr, metadata !2756, metadata !DIExpression(DW_OP_deref)), !dbg !2772
  call void @propagate_tree_value(%union.tree_node** nonnull %expr, %union.tree_node* %val) #7, !dbg !2780
  %1 = load %union.tree_node*, %union.tree_node** %expr, align 8, !dbg !2781
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2756, metadata !DIExpression()), !dbg !2772
  call void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %1) #6, !dbg !2782
  %call6 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2783
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call6, metadata !2755, metadata !DIExpression()), !dbg !2767
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2784
  br label %if.end30, !dbg !2785

if.else:                                          ; preds = %entry
  %call7 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #7, !dbg !2786
  %cmp = icmp eq i32 %call7, 1, !dbg !2787
  br i1 %cmp, label %if.then8, label %if.else10, !dbg !2788

if.then8:                                         ; preds = %if.else
  %2 = bitcast %union.tree_node** %lhs to i8*, !dbg !2789
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2789
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2759, metadata !DIExpression()), !dbg !2790
  store %union.tree_node* null, %union.tree_node** %lhs, align 8, !dbg !2791
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %val, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2792
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2792
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !2792
  %call9 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %3, %union.tree_node* %4) #6, !dbg !2792
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !2762, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata %union.tree_node** %lhs, metadata !2759, metadata !DIExpression(DW_OP_deref)), !dbg !2790
  call void @propagate_tree_value(%union.tree_node** nonnull %lhs, %union.tree_node* %val) #7, !dbg !2793
  call fastcc void @gimple_cond_set_code(%union.gimple_statement_d* %call, i32 102) #7, !dbg !2794
  %5 = load %union.tree_node*, %union.tree_node** %lhs, align 8, !dbg !2795
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !2759, metadata !DIExpression()), !dbg !2790
  call fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %call, %union.tree_node* %5) #7, !dbg !2796
  call fastcc void @gimple_cond_set_rhs(%union.gimple_statement_d* %call, %union.tree_node* %call9) #7, !dbg !2797
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2798
  br label %if.end30, !dbg !2799

if.else10:                                        ; preds = %if.else
  %call11 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call) #7, !dbg !2800
  %tobool12 = icmp eq i8 %call11, 0, !dbg !2800
  br i1 %tobool12, label %if.else20, label %land.lhs.true, !dbg !2801

land.lhs.true:                                    ; preds = %if.else10
  %call13 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call) #7, !dbg !2802
  %cmp14 = icmp eq %union.tree_node* %call13, null, !dbg !2803
  br i1 %cmp14, label %if.else20, label %if.then16, !dbg !2804

if.then16:                                        ; preds = %land.lhs.true
  %6 = bitcast %union.tree_node** %expr17 to i8*, !dbg !2805
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !2805
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2766, metadata !DIExpression()), !dbg !2806
  store %union.tree_node* null, %union.tree_node** %expr17, align 8, !dbg !2807
  call void @llvm.dbg.value(metadata %union.tree_node** %expr17, metadata !2766, metadata !DIExpression(DW_OP_deref)), !dbg !2806
  call void @propagate_tree_value(%union.tree_node** nonnull %expr17, %union.tree_node* %val) #7, !dbg !2808
  %call18 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call) #7, !dbg !2809
  %7 = load %union.tree_node*, %union.tree_node** %expr17, align 8, !dbg !2809
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !2766, metadata !DIExpression()), !dbg !2806
  %call19 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call18, %union.tree_node* %7) #6, !dbg !2809
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call19, metadata !2763, metadata !DIExpression()), !dbg !2806
  call void @move_ssa_defining_stmt_for_defs(%union.gimple_statement_d* %call19, %union.gimple_statement_d* %call) #6, !dbg !2810
  call void @gsi_replace(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call19, i8 zeroext 0) #6, !dbg !2811
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !2812
  br label %if.end30, !dbg !2813

if.else20:                                        ; preds = %land.lhs.true, %if.else10
  %call21 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #7, !dbg !2814
  %cmp22 = icmp eq i32 %call21, 5, !dbg !2816
  br i1 %cmp22, label %if.then24, label %if.else26, !dbg !2817

if.then24:                                        ; preds = %if.else20
  %call25 = tail call fastcc %union.tree_node** @gimple_switch_index_ptr(%union.gimple_statement_d* %call) #7, !dbg !2818
  tail call void @propagate_tree_value(%union.tree_node** %call25, %union.tree_node* %val) #7, !dbg !2819
  br label %if.end30, !dbg !2819

if.else26:                                        ; preds = %if.else20
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 273, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2820
  br label %if.end30

if.end30:                                         ; preds = %if.then8, %if.then24, %if.else26, %if.then16, %if.end
  ret void, !dbg !2821
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2822 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2826, metadata !DIExpression()), !dbg !2827
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2828
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2828
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2829
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2829
  ret %union.gimple_statement_d* %1, !dbg !2830
}

declare dso_local void @gimple_assign_set_rhs_from_tree(%struct.gimple_stmt_iterator*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_code(%union.gimple_statement_d* %gs, i32 %code) unnamed_addr #0 !dbg !2831 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2835, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i32 102, metadata !2836, metadata !DIExpression()), !dbg !2837
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !2838
  %bf.load = load i32, i32* %0, align 8, !dbg !2839
  %bf.clear = and i32 %bf.load, 65535, !dbg !2839
  %bf.set = or i32 %bf.clear, 6684672, !dbg !2839
  store i32 %bf.set, i32* %0, align 8, !dbg !2839
  ret void, !dbg !2840
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !2841 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2845, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !2846, metadata !DIExpression()), !dbg !2847
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #7, !dbg !2848
  ret void, !dbg !2849
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_rhs(%union.gimple_statement_d* %gs, %union.tree_node* %rhs) unnamed_addr #0 !dbg !2850 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2852, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !2853, metadata !DIExpression()), !dbg !2854
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 1, %union.tree_node* %rhs) #7, !dbg !2855
  ret void, !dbg !2856
}

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @move_ssa_defining_stmt_for_defs(%union.gimple_statement_d*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gsi_replace(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_switch_index_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2857 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2861, metadata !DIExpression()), !dbg !2862
  %call = tail call fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !2863
  ret %union.tree_node** %call, !dbg !2864
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_copy_prop() #5 !dbg !2865 {
entry:
  %0 = load i32, i32* @flag_tree_copy_prop, align 4, !dbg !2866
  %cmp = icmp ne i32 %0, 0, !dbg !2867
  %conv1 = zext i1 %cmp to i8, !dbg !2866
  ret i8 %conv1, !dbg !2868
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_copy_prop() #5 !dbg !2869 {
entry:
  tail call fastcc void @init_copy_prop() #7, !dbg !2870
  tail call void @ssa_propagate(i32 (%union.gimple_statement_d*, %struct.edge_def**, %union.tree_node**)* nonnull @copy_prop_visit_stmt, i32 (%union.gimple_statement_d*)* nonnull @copy_prop_visit_phi_node) #6, !dbg !2871
  tail call fastcc void @fini_copy_prop() #7, !dbg !2872
  ret i32 0, !dbg !2873
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !2874 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2878, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i32 %i, metadata !2879, metadata !DIExpression()), !dbg !2880
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !2881
  %tobool = icmp eq i8 %call, 0, !dbg !2881
  br i1 %tobool, label %return, label %if.then, !dbg !2883

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !2884
  %idxprom = zext i32 %i to i64, !dbg !2884
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !2884
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2884
  br label %return, !dbg !2886

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !2887
  ret %union.tree_node* %retval.0, !dbg !2888
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2889 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2891, metadata !DIExpression()), !dbg !2892
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2893
  %cmp = icmp eq i32 %call, 0, !dbg !2894
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !2895

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2896
  %cmp2 = icmp ult i32 %call1, 10, !dbg !2897
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2898
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2899 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2903, metadata !DIExpression()), !dbg !2905
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !2906
  %idxprom = zext i32 %call to i64, !dbg !2907
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !2907
  %0 = load i64, i64* %arrayidx, align 8, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %0, metadata !2904, metadata !DIExpression()), !dbg !2905
  %cmp = icmp eq i64 %0, 0, !dbg !2908
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2908

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2908
  br label %cond.end, !dbg !2908

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !2909
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !2910
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !2911
  ret %union.tree_node** %2, !dbg !2912
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2913 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2917, metadata !DIExpression()), !dbg !2918
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !2919
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !2920
  ret i32 %call1, !dbg !2921
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !2922 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !2926, metadata !DIExpression()), !dbg !2927
  %idxprom = zext i32 %code to i64, !dbg !2928
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !2928
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2928
  ret i32 %0, !dbg !2929
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) unnamed_addr #0 !dbg !2930 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !2933, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !2934, metadata !DIExpression()), !dbg !2935
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use) #7, !dbg !2936
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !2937
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !2937
  store %union.tree_node* %val, %union.tree_node** %0, align 8, !dbg !2938
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) #7, !dbg !2939
  ret void, !dbg !2940
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !2941 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !2945, metadata !DIExpression()), !dbg !2946
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !2947
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2947
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !2949
  br i1 %cmp, label %return, label %if.end, !dbg !2950

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !2951
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !2951
  %2 = load i64, i64* %1, align 8, !dbg !2951
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !2952
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !2953
  store i64 %2, i64* %3, align 8, !dbg !2953
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !2954
  %5 = load i64, i64* %4, align 8, !dbg !2954
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !2955
  %7 = load i64*, i64** %6, align 8, !dbg !2955
  store i64 %5, i64* %7, align 8, !dbg !2956
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2957
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !2958
  br label %return, !dbg !2959

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !2959
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* %def) unnamed_addr #0 !dbg !2960 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !2964, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !2965, metadata !DIExpression()), !dbg !2967
  %tobool = icmp eq %union.tree_node* %def, null, !dbg !2968
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2970

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2971
  %bf.load = load i64, i64* %0, align 8, !dbg !2971
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2972
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2972
  br i1 %cmp, label %if.else, label %if.then, !dbg !2973

if.then:                                          ; preds = %lor.lhs.false, %entry
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !2974
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2975
  br label %if.end, !dbg !2976

if.else:                                          ; preds = %lor.lhs.false
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2977
  %1 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !2977
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %1, metadata !2966, metadata !DIExpression()), !dbg !2967
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* nonnull %1) #7, !dbg !2979
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2980
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !2981 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !2985, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !2986, metadata !DIExpression()), !dbg !2987
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !2988
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !2989
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !2990
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !2990
  %1 = load i64, i64* %0, align 8, !dbg !2990
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !2991
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !2992
  store i64 %1, i64* %2, align 8, !dbg !2992
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !2993
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !2994
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !2995
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !2996
  ret void, !dbg !2997
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !2998 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3002, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i32 %i, metadata !3003, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !3004, metadata !DIExpression()), !dbg !3005
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3006
  %tobool = icmp eq i8 %call, 0, !dbg !3006
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !3006

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !3006
  %cmp = icmp ugt i32 %call1, %i, !dbg !3006
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3006

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3006
  br label %cond.end, !dbg !3006

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3007
  %idxprom = zext i32 %i to i64, !dbg !3007
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call3, i64 %idxprom, !dbg !3007
  store %union.tree_node* %op, %union.tree_node** %arrayidx, align 8, !dbg !3008
  ret void, !dbg !3009
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3010 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3014, metadata !DIExpression()), !dbg !3015
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3016
  %0 = load i32, i32* %num_ops, align 4, !dbg !3016
  ret i32 %0, !dbg !3017
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3018 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3022, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 0, metadata !3023, metadata !DIExpression()), !dbg !3024
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3025
  %tobool = icmp eq i8 %call, 0, !dbg !3025
  br i1 %tobool, label %return, label %if.then, !dbg !3027

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3028
  br label %return, !dbg !3030

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node** [ %call1, %if.then ], [ null, %entry ], !dbg !3031
  ret %union.tree_node** %retval.0, !dbg !3032
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_copy_prop() unnamed_addr #5 !dbg !3033 {
entry:
  %si = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp63 = alloca %struct.edge_iterator, align 8
  %tmp76 = alloca %struct.gimple_stmt_iterator, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3077
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !3077
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3077
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 2, !dbg !3077
  %2 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !3077
  %tobool = icmp eq %struct.VEC_tree_gc* %2, null, !dbg !3077
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3077

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %2, i64 0, i32 0, !dbg !3077
  br label %cond.end, !dbg !3077

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3077
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !3077
  %conv = zext i32 %call to i64, !dbg !3077
  %call4 = tail call i8* @xcalloc(i64 %conv, i64 16) #6, !dbg !3077
  store i8* %call4, i8** bitcast (%struct.prop_value_d** @copy_of to i8**), align 8, !dbg !3078
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3079
  %gimple_df6 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 3, !dbg !3079
  %4 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df6, align 8, !dbg !3079
  %ssa_names7 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %4, i64 0, i32 2, !dbg !3079
  %5 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names7, align 8, !dbg !3079
  %tobool8 = icmp eq %struct.VEC_tree_gc* %5, null, !dbg !3079
  br i1 %tobool8, label %cond.end15, label %cond.true9, !dbg !3079

cond.true9:                                       ; preds = %cond.end
  %base13 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %5, i64 0, i32 0, !dbg !3079
  br label %cond.end15, !dbg !3079

cond.end15:                                       ; preds = %cond.end, %cond.true9
  %cond16 = phi %struct.VEC_tree_base* [ %base13, %cond.true9 ], [ null, %cond.end ], !dbg !3079
  %call17 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond16) #7, !dbg !3079
  %conv18 = zext i32 %call17 to i64, !dbg !3079
  %call19 = tail call i8* @xcalloc(i64 %conv18, i64 8) #6, !dbg !3079
  store i8* %call19, i8** bitcast (%union.tree_node*** @cached_last_copy_of to i8**), align 8, !dbg !3080
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3081
  %cfg = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !3081
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3081
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 0, !dbg !3081
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3081
  %9 = bitcast %struct.gimple_stmt_iterator* %si to i8*, !dbg !3082
  %10 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3083
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !3084
  %12 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3085
  %13 = bitcast %struct.edge_def** %e to i8*, !dbg !3085
  %14 = bitcast %struct.edge_iterator* %tmp63 to i8*, !dbg !3086
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp63, i64 0, i32 0, !dbg !3086
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp63, i64 0, i32 1, !dbg !3086
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3088
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3088
  %19 = bitcast %struct.gimple_stmt_iterator* %tmp76 to i8*, !dbg !3090
  br label %for.cond, !dbg !3081

for.cond:                                         ; preds = %for.end103, %cond.end15
  %20 = phi %struct.control_flow_graph* [ %7, %cond.end15 ], [ %.pre1, %for.end103 ], !dbg !3091
  %.pn = phi %struct.basic_block_def* [ %8, %cond.end15 ], [ %bb.0, %for.end103 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3092
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3092
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3037, metadata !DIExpression()), !dbg !3093
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %20, i64 0, i32 1, !dbg !3091
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3091
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %21, !dbg !3091
  br i1 %cmp, label %for.end106, label %for.body, !dbg !3081

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #8, !dbg !3094
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 10, !dbg !3095
  %22 = load i32, i32* %loop_depth, align 4, !dbg !3095
  call void @llvm.dbg.value(metadata i32 %22, metadata !3042, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8 0, metadata !3043, metadata !DIExpression()), !dbg !3082
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #8, !dbg !3096
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #7, !dbg !3096
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %10, i64 24, i1 false), !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #8, !dbg !3096
  br label %for.cond24, !dbg !3097

for.cond24:                                       ; preds = %for.end, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3038, metadata !DIExpression(DW_OP_deref)), !dbg !3082
  %call25 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #7, !dbg !3098
  %tobool26 = icmp eq i8 %call25, 0, !dbg !3099
  br i1 %tobool26, label %for.body27, label %for.end55, !dbg !3100

for.body27:                                       ; preds = %for.cond24
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3038, metadata !DIExpression(DW_OP_deref)), !dbg !3082
  %call28 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #7, !dbg !3101
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call28, metadata !3044, metadata !DIExpression()), !dbg !3084
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #8, !dbg !3102
  %call29 = call zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d* %call28) #6, !dbg !3103
  %tobool30 = icmp eq i8 %call29, 0, !dbg !3103
  br i1 %tobool30, label %if.else, label %if.then, !dbg !3105

if.then:                                          ; preds = %for.body27
  call fastcc void @prop_set_simulate_again(%union.gimple_statement_d* %call28, i8 zeroext 1) #7, !dbg !3106
  br label %if.end40, !dbg !3106

if.else:                                          ; preds = %for.body27
  %call31 = call fastcc zeroext i8 @stmt_may_generate_copy(%union.gimple_statement_d* %call28) #7, !dbg !3107
  %tobool33 = icmp eq i8 %call31, 0, !dbg !3107
  br i1 %tobool33, label %if.else39, label %land.lhs.true, !dbg !3109

land.lhs.true:                                    ; preds = %if.else
  %call34 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call28) #7, !dbg !3110
  %call35 = call i32 @loop_depth_of_name(%union.tree_node* %call34) #6, !dbg !3111
  %cmp36 = icmp sgt i32 %call35, %22, !dbg !3112
  br i1 %cmp36, label %if.else39, label %if.then38, !dbg !3113

if.then38:                                        ; preds = %land.lhs.true
  call fastcc void @prop_set_simulate_again(%union.gimple_statement_d* %call28, i8 zeroext 1) #7, !dbg !3114
  br label %if.end40, !dbg !3114

if.else39:                                        ; preds = %land.lhs.true, %if.else
  call fastcc void @prop_set_simulate_again(%union.gimple_statement_d* %call28, i8 zeroext 0) #7, !dbg !3115
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.else39, %if.then
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3048, metadata !DIExpression(DW_OP_deref)), !dbg !3084
  %call41 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %call28, i32 10) #7, !dbg !3116
  call void @llvm.dbg.value(metadata %union.tree_node* %call41, metadata !3061, metadata !DIExpression()), !dbg !3084
  br label %for.cond42, !dbg !3116

for.cond42:                                       ; preds = %for.inc, %if.end40
  %def.0 = phi %union.tree_node* [ %call41, %if.end40 ], [ %call53, %for.inc ], !dbg !3118
  call void @llvm.dbg.value(metadata %union.tree_node* %def.0, metadata !3061, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3048, metadata !DIExpression(DW_OP_deref)), !dbg !3084
  %call43 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !3119
  %tobool44 = icmp eq i8 %call43, 0, !dbg !3119
  br i1 %tobool44, label %for.body46, label %for.end, !dbg !3116

for.body46:                                       ; preds = %for.cond42
  %call47 = call fastcc zeroext i8 @prop_simulate_again_p(%union.gimple_statement_d* %call28) #7, !dbg !3121
  %tobool48 = icmp eq i8 %call47, 0, !dbg !3121
  br i1 %tobool48, label %if.then49, label %if.else51, !dbg !3123

if.then49:                                        ; preds = %for.body46
  %call50 = call fastcc zeroext i8 @set_copy_of_val(%union.tree_node* %def.0, %union.tree_node* %def.0) #7, !dbg !3124
  br label %for.inc, !dbg !3124

if.else51:                                        ; preds = %for.body46
  %23 = load %union.tree_node**, %union.tree_node*** @cached_last_copy_of, align 8, !dbg !3125
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %def.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3126
  %24 = bitcast %union.tree_node** %version to i32*, !dbg !3126
  %25 = load i32, i32* %24, align 8, !dbg !3126
  %idxprom = zext i32 %25 to i64, !dbg !3125
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %23, i64 %idxprom, !dbg !3125
  store %union.tree_node* %def.0, %union.tree_node** %arrayidx, align 8, !dbg !3127
  br label %for.inc

for.inc:                                          ; preds = %if.then49, %if.else51
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3048, metadata !DIExpression(DW_OP_deref)), !dbg !3084
  %call53 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !3119
  call void @llvm.dbg.value(metadata %union.tree_node* %call53, metadata !3061, metadata !DIExpression()), !dbg !3084
  br label %for.cond42, !dbg !3119, !llvm.loop !3128

for.end:                                          ; preds = %for.cond42
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #8, !dbg !3130
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3038, metadata !DIExpression(DW_OP_deref)), !dbg !3082
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %si) #7, !dbg !3131
  br label %for.cond24, !dbg !3132, !llvm.loop !3133

for.end55:                                        ; preds = %for.cond24
  %26 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3135
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %26, i64 0, i32 4, !dbg !3135
  %27 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3135
  %tobool57 = icmp eq %struct.loops* %27, null, !dbg !3135
  br i1 %tobool57, label %if.end75, label %land.lhs.true58, !dbg !3136

land.lhs.true58:                                  ; preds = %for.end55
  %call59 = call fastcc zeroext i8 @loops_state_satisfies_p(i32 32) #7, !dbg !3137
  %tobool61 = icmp eq i8 %call59, 0, !dbg !3137
  br i1 %tobool61, label %if.end75, label %if.then62, !dbg !3138

if.then62:                                        ; preds = %land.lhs.true58
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #8, !dbg !3139
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #8, !dbg !3140
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #8, !dbg !3141
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 0, !dbg !3141
  %call64 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3141
  %28 = extractvalue { i32, %struct.VEC_edge_gc** } %call64, 0, !dbg !3141
  store i32 %28, i32* %15, align 8, !dbg !3141
  %29 = extractvalue { i32, %struct.VEC_edge_gc** } %call64, 1, !dbg !3141
  store %struct.VEC_edge_gc** %29, %struct.VEC_edge_gc*** %16, align 8, !dbg !3141
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %12, i8* nonnull align 8 %14, i64 16, i1 false), !dbg !3141
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #8, !dbg !3141
  br label %for.cond65, !dbg !3141

for.cond65:                                       ; preds = %for.body68, %if.then62
  %loop_exit_p.0 = phi i8 [ 0, %if.then62 ], [ %spec.select, %for.body68 ], !dbg !3082
  call void @llvm.dbg.value(metadata i8 %loop_exit_p.0, metadata !3043, metadata !DIExpression()), !dbg !3082
  %30 = load i32, i32* %17, align 8, !dbg !3142
  %31 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %18, align 8, !dbg !3142
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3071, metadata !DIExpression(DW_OP_deref)), !dbg !3085
  %call66 = call fastcc zeroext i8 @ei_cond(i32 %30, %struct.VEC_edge_gc** %31, %struct.edge_def** nonnull %e) #7, !dbg !3142
  %tobool67 = icmp eq i8 %call66, 0, !dbg !3141
  br i1 %tobool67, label %for.end74, label %for.body68, !dbg !3141

for.body68:                                       ; preds = %for.cond65
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3143
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !3071, metadata !DIExpression()), !dbg !3085
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i64 0, i32 0, !dbg !3145
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3145
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i64 0, i32 3, !dbg !3146
  %34 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3146
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !3071, metadata !DIExpression()), !dbg !3085
  %call69 = call zeroext i8 @loop_exit_edge_p(%struct.loop* %34, %struct.edge_def* %32) #6, !dbg !3147
  %tobool70 = icmp eq i8 %call69, 0, !dbg !3147
  %spec.select = select i1 %tobool70, i8 %loop_exit_p.0, i8 1, !dbg !3148
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !3043, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3062, metadata !DIExpression(DW_OP_deref)), !dbg !3085
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3142
  br label %for.cond65, !dbg !3142, !llvm.loop !3149

for.end74:                                        ; preds = %for.cond65
  %loop_exit_p.0.lcssa = phi i8 [ %loop_exit_p.0, %for.cond65 ], !dbg !3082
  call void @llvm.dbg.value(metadata i8 %loop_exit_p.0.lcssa, metadata !3043, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8 %loop_exit_p.0.lcssa, metadata !3043, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8 %loop_exit_p.0.lcssa, metadata !3043, metadata !DIExpression()), !dbg !3082
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #8, !dbg !3151
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #8, !dbg !3151
  br label %if.end75, !dbg !3152

if.end75:                                         ; preds = %land.lhs.true58, %for.end55, %for.end74
  %loop_exit_p.2 = phi i8 [ %loop_exit_p.0.lcssa, %for.end74 ], [ 0, %land.lhs.true58 ], [ 0, %for.end55 ], !dbg !3153
  call void @llvm.dbg.value(metadata i8 %loop_exit_p.2, metadata !3043, metadata !DIExpression()), !dbg !3082
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %19) #8, !dbg !3154
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp76, %struct.basic_block_def* %bb.0) #6, !dbg !3154
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %19, i64 24, i1 false), !dbg !3154
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %19) #8, !dbg !3154
  %tobool88 = icmp eq i8 %loop_exit_p.2, 0, !dbg !3155
  br i1 %tobool88, label %if.end75.if.end75.split_crit_edge, label %if.end75.split.us, !dbg !3157

if.end75.if.end75.split_crit_edge:                ; preds = %if.end75
  br label %for.cond77, !dbg !3157

if.end75.split.us:                                ; preds = %if.end75
  br label %for.cond77.us, !dbg !3157

for.cond77.us:                                    ; preds = %for.inc102.us, %if.end75.split.us
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3038, metadata !DIExpression(DW_OP_deref)), !dbg !3082
  %call78.us = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #7, !dbg !3158
  %tobool79.us = icmp eq i8 %call78.us, 0, !dbg !3159
  br i1 %tobool79.us, label %for.body81.us, label %for.end103.us-lcssa.us, !dbg !3160

for.body81.us:                                    ; preds = %for.cond77.us
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3038, metadata !DIExpression(DW_OP_deref)), !dbg !3082
  %call82.us = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #7, !dbg !3161
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call82.us, metadata !3072, metadata !DIExpression()), !dbg !3162
  %call84.us = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call82.us) #7, !dbg !3163
  call void @llvm.dbg.value(metadata %union.tree_node* %call84.us, metadata !3076, metadata !DIExpression()), !dbg !3162
  %call85.us = call zeroext i8 @is_gimple_reg(%union.tree_node* %call84.us) #6, !dbg !3164
  call fastcc void @prop_set_simulate_again(%union.gimple_statement_d* %call82.us, i8 zeroext 0) #7, !dbg !3165
  %call92.us = call fastcc zeroext i8 @prop_simulate_again_p(%union.gimple_statement_d* %call82.us) #7, !dbg !3166
  %tobool93.us = icmp eq i8 %call92.us, 0, !dbg !3166
  br i1 %tobool93.us, label %if.then94.us, label %if.else96.us, !dbg !3168

if.else96.us:                                     ; preds = %for.body81.us
  %35 = load %union.tree_node**, %union.tree_node*** @cached_last_copy_of, align 8, !dbg !3169
  %version98.us = getelementptr inbounds %union.tree_node, %union.tree_node* %call84.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3170
  %36 = bitcast %union.tree_node** %version98.us to i32*, !dbg !3170
  %37 = load i32, i32* %36, align 8, !dbg !3170
  %idxprom99.us = zext i32 %37 to i64, !dbg !3169
  %arrayidx100.us = getelementptr inbounds %union.tree_node*, %union.tree_node** %35, i64 %idxprom99.us, !dbg !3169
  store %union.tree_node* %call84.us, %union.tree_node** %arrayidx100.us, align 8, !dbg !3171
  br label %for.inc102.us

if.then94.us:                                     ; preds = %for.body81.us
  %call95.us = call fastcc zeroext i8 @set_copy_of_val(%union.tree_node* %call84.us, %union.tree_node* %call84.us) #7, !dbg !3172
  br label %for.inc102.us, !dbg !3172

for.inc102.us:                                    ; preds = %if.then94.us, %if.else96.us
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3038, metadata !DIExpression(DW_OP_deref)), !dbg !3082
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %si) #7, !dbg !3173
  br label %for.cond77.us, !dbg !3174, !llvm.loop !3175

for.end103.us-lcssa.us:                           ; preds = %for.cond77.us
  br label %for.end103, !dbg !3177

for.cond77:                                       ; preds = %for.inc102, %if.end75.if.end75.split_crit_edge
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3038, metadata !DIExpression(DW_OP_deref)), !dbg !3082
  %call78 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #7, !dbg !3158
  %tobool79 = icmp eq i8 %call78, 0, !dbg !3159
  br i1 %tobool79, label %for.body81, label %for.end103.us-lcssa, !dbg !3160

for.body81:                                       ; preds = %for.cond77
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3038, metadata !DIExpression(DW_OP_deref)), !dbg !3082
  %call82 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #7, !dbg !3161
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call82, metadata !3072, metadata !DIExpression()), !dbg !3162
  %call84 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call82) #7, !dbg !3163
  call void @llvm.dbg.value(metadata %union.tree_node* %call84, metadata !3076, metadata !DIExpression()), !dbg !3162
  %call85 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call84) #6, !dbg !3164
  %tobool86 = icmp eq i8 %call85, 0, !dbg !3164
  br i1 %tobool86, label %if.then89, label %if.else90, !dbg !3178

if.then89:                                        ; preds = %for.body81
  call fastcc void @prop_set_simulate_again(%union.gimple_statement_d* %call82, i8 zeroext 0) #7, !dbg !3165
  br label %if.end91, !dbg !3165

if.else90:                                        ; preds = %for.body81
  call fastcc void @prop_set_simulate_again(%union.gimple_statement_d* %call82, i8 zeroext 1) #7, !dbg !3179
  br label %if.end91

if.end91:                                         ; preds = %if.else90, %if.then89
  %call92 = call fastcc zeroext i8 @prop_simulate_again_p(%union.gimple_statement_d* %call82) #7, !dbg !3166
  %tobool93 = icmp eq i8 %call92, 0, !dbg !3166
  br i1 %tobool93, label %if.then94, label %if.else96, !dbg !3168

if.then94:                                        ; preds = %if.end91
  %call95 = call fastcc zeroext i8 @set_copy_of_val(%union.tree_node* %call84, %union.tree_node* %call84) #7, !dbg !3172
  br label %for.inc102, !dbg !3172

if.else96:                                        ; preds = %if.end91
  %38 = load %union.tree_node**, %union.tree_node*** @cached_last_copy_of, align 8, !dbg !3169
  %version98 = getelementptr inbounds %union.tree_node, %union.tree_node* %call84, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3170
  %39 = bitcast %union.tree_node** %version98 to i32*, !dbg !3170
  %40 = load i32, i32* %39, align 8, !dbg !3170
  %idxprom99 = zext i32 %40 to i64, !dbg !3169
  %arrayidx100 = getelementptr inbounds %union.tree_node*, %union.tree_node** %38, i64 %idxprom99, !dbg !3169
  store %union.tree_node* %call84, %union.tree_node** %arrayidx100, align 8, !dbg !3171
  br label %for.inc102

for.inc102:                                       ; preds = %if.then94, %if.else96
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !3038, metadata !DIExpression(DW_OP_deref)), !dbg !3082
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %si) #7, !dbg !3173
  br label %for.cond77, !dbg !3174, !llvm.loop !3175

for.end103.us-lcssa:                              ; preds = %for.cond77
  br label %for.end103, !dbg !3177

for.end103:                                       ; preds = %for.end103.us-lcssa.us, %for.end103.us-lcssa
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #8, !dbg !3177
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3091
  %cfg22.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3180
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg22.phi.trans.insert, align 8, !dbg !3091
  br label %for.cond, !dbg !3091, !llvm.loop !3181

for.end106:                                       ; preds = %for.cond
  ret void, !dbg !3183
}

declare dso_local void @ssa_propagate(i32 (%union.gimple_statement_d*, %struct.edge_def**, %union.tree_node**)*, i32 (%union.gimple_statement_d*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @copy_prop_visit_stmt(%union.gimple_statement_d* %stmt, %struct.edge_def** %taken_edge_p, %union.tree_node** %result_p) #5 !dbg !3184 {
entry:
  %i = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3189, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata %struct.edge_def** %taken_edge_p, metadata !3190, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata %union.tree_node** %result_p, metadata !3191, metadata !DIExpression()), !dbg !3197
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3198
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !3198
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3200

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @dump_flags, align 4, !dbg !3201
  %and = and i32 %1, 8, !dbg !3202
  %tobool2 = icmp eq i32 %and, 0, !dbg !3202
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3203

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3204
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3206
  %3 = load i32, i32* @dump_flags, align 4, !dbg !3207
  tail call void @print_gimple_stmt(%struct._IO_FILE* %2, %union.gimple_statement_d* %stmt, i32 0, i32 %3) #6, !dbg !3208
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3209
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3210
  br label %if.end, !dbg !3211

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %call4 = tail call zeroext i8 @gimple_assign_single_p(%union.gimple_statement_d* %stmt) #6, !dbg !3212
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3212
  br i1 %tobool5, label %if.else, label %land.lhs.true6, !dbg !3214

land.lhs.true6:                                   ; preds = %if.end
  %call7 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !3215
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %call7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3215
  %bf.load = load i64, i64* %5, align 8, !dbg !3215
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3216
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3216
  br i1 %cmp, label %land.lhs.true9, label %if.else, !dbg !3217

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %call10 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !3218
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3218
  %bf.load12 = load i64, i64* %6, align 8, !dbg !3218
  %bf.cast142 = and i64 %bf.load12, 65535, !dbg !3219
  %cmp15 = icmp eq i64 %bf.cast142, 141, !dbg !3219
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !3220

if.then17:                                        ; preds = %land.lhs.true9
  %call18 = tail call fastcc i32 @copy_prop_visit_assignment(%union.gimple_statement_d* %stmt, %union.tree_node** %result_p) #7, !dbg !3221
  call void @llvm.dbg.value(metadata i32 %call18, metadata !3192, metadata !DIExpression()), !dbg !3197
  br label %if.end26, !dbg !3223

if.else:                                          ; preds = %if.end, %land.lhs.true9, %land.lhs.true6
  %call19 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !3224
  %cmp20 = icmp eq i32 %call19, 1, !dbg !3226
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !3227

if.then22:                                        ; preds = %if.else
  %call23 = tail call fastcc i32 @copy_prop_visit_cond_stmt(%union.gimple_statement_d* %stmt, %struct.edge_def** %taken_edge_p) #7, !dbg !3228
  call void @llvm.dbg.value(metadata i32 %call23, metadata !3192, metadata !DIExpression()), !dbg !3197
  br label %if.end26, !dbg !3230

if.end26:                                         ; preds = %if.then22, %if.else, %if.then17
  %retval1.1 = phi i32 [ %call18, %if.then17 ], [ %call23, %if.then22 ], [ 2, %if.else ], !dbg !3231
  call void @llvm.dbg.value(metadata i32 %retval1.1, metadata !3192, metadata !DIExpression()), !dbg !3197
  %cmp27 = icmp eq i32 %retval1.1, 2, !dbg !3232
  br i1 %cmp27, label %if.then29, label %if.end42, !dbg !3233

if.then29:                                        ; preds = %if.end26
  %7 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %i, i64 0, i32 0, !dbg !3234
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #8, !dbg !3234
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3235
  %tobool30 = icmp eq %struct._IO_FILE* %8, null, !dbg !3235
  br i1 %tobool30, label %if.end36, label %land.lhs.true31, !dbg !3237

land.lhs.true31:                                  ; preds = %if.then29
  %9 = load i32, i32* @dump_flags, align 4, !dbg !3238
  %and32 = and i32 %9, 8, !dbg !3239
  %tobool33 = icmp eq i32 %and32, 0, !dbg !3239
  br i1 %tobool33, label %if.end36, label %if.then34, !dbg !3240

if.then34:                                        ; preds = %land.lhs.true31
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3241
  br label %if.end36, !dbg !3241

if.end36:                                         ; preds = %land.lhs.true31, %if.then29, %if.then34
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %i, metadata !3196, metadata !DIExpression(DW_OP_deref)), !dbg !3242
  %call37 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %i, %union.gimple_statement_d* %stmt, i32 10) #7, !dbg !3243
  call void @llvm.dbg.value(metadata %union.tree_node* %call37, metadata !3193, metadata !DIExpression()), !dbg !3242
  br label %for.cond, !dbg !3243

for.cond:                                         ; preds = %for.body, %if.end36
  %def.0 = phi %union.tree_node* [ %call37, %if.end36 ], [ %call41, %for.body ], !dbg !3245
  call void @llvm.dbg.value(metadata %union.tree_node* %def.0, metadata !3193, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %i, metadata !3196, metadata !DIExpression(DW_OP_deref)), !dbg !3242
  %call38 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %i) #7, !dbg !3246
  %tobool39 = icmp eq i8 %call38, 0, !dbg !3246
  br i1 %tobool39, label %for.body, label %for.end, !dbg !3243

for.body:                                         ; preds = %for.cond
  %call40 = call fastcc zeroext i8 @set_copy_of_val(%union.tree_node* %def.0, %union.tree_node* %def.0) #7, !dbg !3248
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %i, metadata !3196, metadata !DIExpression(DW_OP_deref)), !dbg !3242
  %call41 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %i) #7, !dbg !3246
  call void @llvm.dbg.value(metadata %union.tree_node* %call41, metadata !3193, metadata !DIExpression()), !dbg !3242
  br label %for.cond, !dbg !3246, !llvm.loop !3249

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #8, !dbg !3251
  br label %if.end42, !dbg !3252

if.end42:                                         ; preds = %for.end, %if.end26
  ret i32 %retval1.1, !dbg !3253
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_prop_visit_phi_node(%union.gimple_statement_d* %phi) #5 !dbg !3254 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3258, metadata !DIExpression()), !dbg !3269
  %call = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #7, !dbg !3270
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3262, metadata !DIExpression()), !dbg !3269
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3271
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !3271
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3273

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @dump_flags, align 4, !dbg !3274
  %and = and i32 %1, 8, !dbg !3275
  %tobool2 = icmp eq i32 %and, 0, !dbg !3275
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3276

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3277
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3279
  %3 = load i32, i32* @dump_flags, align 4, !dbg !3280
  tail call void @print_gimple_stmt(%struct._IO_FILE* %2, %union.gimple_statement_d* %phi, i32 0, i32 %3) #6, !dbg !3281
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3282
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !3283
  br label %if.end, !dbg !3284

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !3260, metadata !DIExpression()), !dbg !3269
  br label %for.cond, !dbg !3285

for.cond:                                         ; preds = %for.inc, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ]
  %call9 = phi %union.tree_node* [ %call7, %for.inc ], [ null, %if.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3260, metadata !DIExpression()), !dbg !3269
  %call5 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #7, !dbg !3286
  %5 = zext i32 %call5 to i64, !dbg !3287
  %cmp = icmp ult i64 %indvars.iv, %5, !dbg !3287
  br i1 %cmp, label %for.body, label %for.end, !dbg !3288

for.body:                                         ; preds = %for.cond
  %call6 = tail call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %phi, i64 %indvars.iv) #7, !dbg !3289
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !3267, metadata !DIExpression()), !dbg !3290
  %call8 = tail call fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %phi, i64 %indvars.iv) #7, !dbg !3291
  call void @llvm.dbg.value(metadata %struct.edge_def* %call8, metadata !3268, metadata !DIExpression()), !dbg !3290
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call8, i64 0, i32 7, !dbg !3292
  %6 = load i32, i32* %flags, align 8, !dbg !3292
  %and9 = and i32 %6, 4096, !dbg !3294
  %tobool10 = icmp eq i32 %and9, 0, !dbg !3294
  br i1 %tobool10, label %cleanup, label %if.end12, !dbg !3295

if.end12:                                         ; preds = %for.body
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3296
  %bf.load = load i64, i64* %7, align 8, !dbg !3296
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3298
  %cmp13 = icmp eq i64 %bf.cast1, 141, !dbg !3298
  br i1 %cmp13, label %lor.lhs.false, label %if.then20, !dbg !3299

lor.lhs.false:                                    ; preds = %if.end12
  %bf.cast182 = and i64 %bf.load, 4194304, !dbg !3300
  %tobool19 = icmp eq i64 %bf.cast182, 0, !dbg !3300
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !3301

if.then20:                                        ; preds = %lor.lhs.false, %if.end12
  br label %cleanup, !dbg !3302

if.end21:                                         ; preds = %lor.lhs.false
  %call22 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !3304
  %tobool24 = icmp eq i8 %call22, 0, !dbg !3304
  br i1 %tobool24, label %if.end32, label %land.lhs.true25, !dbg !3306

land.lhs.true25:                                  ; preds = %if.end21
  %call26 = tail call i32 @loop_depth_of_name(%union.tree_node* %call6) #6, !dbg !3307
  %call27 = tail call i32 @loop_depth_of_name(%union.tree_node* %call) #6, !dbg !3308
  %cmp28 = icmp sgt i32 %call26, %call27, !dbg !3309
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !3310

if.then30:                                        ; preds = %land.lhs.true25
  br label %cleanup, !dbg !3311

if.end32:                                         ; preds = %if.end21, %land.lhs.true25
  %cmp33 = icmp eq %union.tree_node* %call6, %call, !dbg !3313
  br i1 %cmp33, label %cleanup, label %lor.lhs.false35, !dbg !3315

lor.lhs.false35:                                  ; preds = %if.end32
  %call36 = tail call fastcc %union.tree_node* @get_last_copy_of(%union.tree_node* %call6) #7, !dbg !3316
  %cmp37 = icmp eq %union.tree_node* %call36, %call, !dbg !3317
  br i1 %cmp37, label %cleanup, label %if.end40, !dbg !3318

if.end40:                                         ; preds = %lor.lhs.false35
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3319
  %tobool41 = icmp eq %struct._IO_FILE* %8, null, !dbg !3319
  br i1 %tobool41, label %if.end48, label %land.lhs.true42, !dbg !3321

land.lhs.true42:                                  ; preds = %if.end40
  %9 = load i32, i32* @dump_flags, align 4, !dbg !3322
  %and43 = and i32 %9, 8, !dbg !3323
  %tobool44 = icmp eq i32 %and43, 0, !dbg !3323
  br i1 %tobool44, label %if.end48, label %if.then45, !dbg !3324

if.then45:                                        ; preds = %land.lhs.true42
  %10 = trunc i64 %indvars.iv to i32, !dbg !3325
  %call46 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %10) #6, !dbg !3325
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3327
  tail call fastcc void @dump_copy_of(%struct._IO_FILE* %11, %union.tree_node* %call6) #7, !dbg !3328
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3329
  %call47 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3330
  br label %if.end48, !dbg !3331

if.end48:                                         ; preds = %land.lhs.true42, %if.end40, %if.then45
  %call49 = tail call fastcc %struct.prop_value_d* @get_copy_of_val(%union.tree_node* %call6) #7, !dbg !3332
  call void @llvm.dbg.value(metadata %struct.prop_value_d* %call49, metadata !3263, metadata !DIExpression()), !dbg !3290
  %cmp51 = icmp eq %union.tree_node* %call9, null, !dbg !3333
  br i1 %cmp51, label %if.then53, label %if.end58, !dbg !3335

if.then53:                                        ; preds = %if.end48
  %value54 = getelementptr inbounds %struct.prop_value_d, %struct.prop_value_d* %call49, i64 0, i32 1, !dbg !3336
  %13 = load %union.tree_node*, %union.tree_node** %value54, align 8, !dbg !3336
  %tobool55 = icmp eq %union.tree_node* %13, null, !dbg !3338
  br i1 %tobool55, label %cond.end, label %cond.true, !dbg !3338

cond.true:                                        ; preds = %if.then53
  br label %cond.end, !dbg !3338

cond.end:                                         ; preds = %if.then53, %cond.true
  %cond = phi %union.tree_node* [ %13, %cond.true ], [ %call6, %if.then53 ], !dbg !3338
  br label %cleanup, !dbg !3339

if.end58:                                         ; preds = %if.end48
  %call60 = tail call fastcc %union.tree_node* @get_last_copy_of(%union.tree_node* nonnull %call9) #7, !dbg !3340
  %call61 = tail call fastcc %union.tree_node* @get_last_copy_of(%union.tree_node* %call6) #7, !dbg !3342
  %cmp62 = icmp eq %union.tree_node* %call60, %call61, !dbg !3343
  br i1 %cmp62, label %cleanup, label %if.then64, !dbg !3344

if.then64:                                        ; preds = %if.end58
  br label %cleanup, !dbg !3345

cleanup:                                          ; preds = %if.end58, %for.body, %if.end32, %lor.lhs.false35, %if.then64, %cond.end, %if.then30, %if.then20
  %call7 = phi %union.tree_node* [ %call, %if.then20 ], [ %call, %if.then30 ], [ %cond, %cond.end ], [ %call, %if.then64 ], [ %call9, %for.body ], [ %call9, %lor.lhs.false35 ], [ %call9, %if.end32 ], [ %call9, %if.end58 ]
  %cleanup.dest.slot.0 = phi i1 [ true, %if.then20 ], [ true, %if.then30 ], [ false, %cond.end ], [ true, %if.then64 ], [ false, %for.body ], [ false, %lor.lhs.false35 ], [ false, %if.end32 ], [ false, %if.end58 ]
  br i1 %cleanup.dest.slot.0, label %for.end, label %for.inc

for.inc:                                          ; preds = %cleanup
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3347
  br label %for.cond, !dbg !3348, !llvm.loop !3349

for.end:                                          ; preds = %cleanup, %for.cond
  %14 = phi %union.tree_node* [ %call7, %cleanup ], [ %call9, %for.cond ]
  %tobool70 = icmp eq %union.tree_node* %14, null, !dbg !3351
  br i1 %tobool70, label %if.end86, label %land.lhs.true71, !dbg !3353

land.lhs.true71:                                  ; preds = %for.end
  %call73 = tail call zeroext i8 @may_propagate_copy(%union.tree_node* %call, %union.tree_node* nonnull %14) #7, !dbg !3354
  %tobool75 = icmp eq i8 %call73, 0, !dbg !3354
  br i1 %tobool75, label %if.end86, label %land.lhs.true76, !dbg !3355

land.lhs.true76:                                  ; preds = %land.lhs.true71
  %call78 = tail call fastcc zeroext i8 @set_copy_of_val(%union.tree_node* %call, %union.tree_node* nonnull %14) #7, !dbg !3356
  %tobool80 = icmp eq i8 %call78, 0, !dbg !3356
  br i1 %tobool80, label %if.end86, label %if.then81, !dbg !3357

if.then81:                                        ; preds = %land.lhs.true76
  %cmp83 = icmp eq %union.tree_node* %14, %call, !dbg !3358
  %cond85 = select i1 %cmp83, i32 2, i32 1, !dbg !3359
  call void @llvm.dbg.value(metadata i32 %cond85, metadata !3259, metadata !DIExpression()), !dbg !3269
  br label %if.end86, !dbg !3360

if.end86:                                         ; preds = %land.lhs.true76, %land.lhs.true71, %for.end, %if.then81
  %retval1.0 = phi i32 [ %cond85, %if.then81 ], [ 0, %land.lhs.true76 ], [ 0, %land.lhs.true71 ], [ 0, %for.end ], !dbg !3361
  call void @llvm.dbg.value(metadata i32 %retval1.0, metadata !3259, metadata !DIExpression()), !dbg !3269
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3362
  %tobool87 = icmp eq %struct._IO_FILE* %15, null, !dbg !3362
  br i1 %tobool87, label %if.end108, label %land.lhs.true88, !dbg !3364

land.lhs.true88:                                  ; preds = %if.end86
  %16 = load i32, i32* @dump_flags, align 4, !dbg !3365
  %and89 = and i32 %16, 8, !dbg !3366
  %tobool90 = icmp eq i32 %and89, 0, !dbg !3366
  br i1 %tobool90, label %if.end108, label %if.then91, !dbg !3367

if.then91:                                        ; preds = %land.lhs.true88
  %call92 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !3368
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3370
  tail call fastcc void @dump_copy_of(%struct._IO_FILE* %17, %union.tree_node* %call) #7, !dbg !3371
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3372
  %call93 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !3373
  switch i32 %retval1.0, label %if.else103 [
    i32 1, label %if.then96
    i32 2, label %if.then101
  ], !dbg !3374

if.then96:                                        ; preds = %if.then91
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3375
  %call97 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !3377
  br label %if.end106, !dbg !3377

if.then101:                                       ; preds = %if.then91
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3378
  %call102 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !3380
  br label %if.end106, !dbg !3380

if.else103:                                       ; preds = %if.then91
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3381
  %call104 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !3382
  br label %if.end106

if.end106:                                        ; preds = %if.then101, %if.else103, %if.then96
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3383
  %call107 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !3384
  br label %if.end108, !dbg !3385

if.end108:                                        ; preds = %land.lhs.true88, %if.end86, %if.end106
  ret i32 %retval1.0, !dbg !3386
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fini_copy_prop() unnamed_addr #5 !dbg !3387 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3395
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !3395
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3395
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 2, !dbg !3395
  %2 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !3395
  %tobool = icmp eq %struct.VEC_tree_gc* %2, null, !dbg !3395
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3395

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %2, i64 0, i32 0, !dbg !3395
  br label %cond.end, !dbg !3395

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3395
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !3395
  %conv = zext i32 %call to i64, !dbg !3395
  %call4 = tail call i8* @xcalloc(i64 %conv, i64 16) #6, !dbg !3395
  %3 = bitcast i8* %call4 to %struct.prop_value_d*, !dbg !3395
  call void @llvm.dbg.value(metadata %struct.prop_value_d* %3, metadata !3390, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 1, metadata !3389, metadata !DIExpression()), !dbg !3396
  br label %for.cond, !dbg !3397

for.cond:                                         ; preds = %cleanup, %cond.end
  %i.0 = phi i64 [ 1, %cond.end ], [ %inc, %cleanup ], !dbg !3398
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3389, metadata !DIExpression()), !dbg !3396
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3399
  %gimple_df6 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 3, !dbg !3399
  %5 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df6, align 8, !dbg !3399
  %ssa_names7 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %5, i64 0, i32 2, !dbg !3399
  %6 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names7, align 8, !dbg !3399
  %tobool8 = icmp eq %struct.VEC_tree_gc* %6, null, !dbg !3399
  br i1 %tobool8, label %cond.end15, label %cond.true9, !dbg !3399

cond.true9:                                       ; preds = %for.cond
  %base13 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %6, i64 0, i32 0, !dbg !3399
  br label %cond.end15, !dbg !3399

cond.end15:                                       ; preds = %for.cond, %cond.true9
  %cond16 = phi %struct.VEC_tree_base* [ %base13, %cond.true9 ], [ null, %for.cond ], !dbg !3399
  %call17 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond16) #7, !dbg !3399
  %conv18 = zext i32 %call17 to i64, !dbg !3399
  %cmp = icmp ult i64 %i.0, %conv18, !dbg !3400
  br i1 %cmp, label %for.body, label %for.end, !dbg !3401

for.body:                                         ; preds = %cond.end15
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3402
  %gimple_df21 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 3, !dbg !3402
  %8 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df21, align 8, !dbg !3402
  %ssa_names22 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %8, i64 0, i32 2, !dbg !3402
  %9 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names22, align 8, !dbg !3402
  %tobool23 = icmp eq %struct.VEC_tree_gc* %9, null, !dbg !3402
  br i1 %tobool23, label %cond.end30, label %cond.true24, !dbg !3402

cond.true24:                                      ; preds = %for.body
  %base28 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %9, i64 0, i32 0, !dbg !3402
  br label %cond.end30, !dbg !3402

cond.end30:                                       ; preds = %for.body, %cond.true24
  %cond31 = phi %struct.VEC_tree_base* [ %base28, %cond.true24 ], [ null, %for.body ], !dbg !3402
  %conv32 = trunc i64 %i.0 to i32, !dbg !3402
  %call33 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond31, i32 %conv32) #7, !dbg !3402
  call void @llvm.dbg.value(metadata %union.tree_node* %call33, metadata !3391, metadata !DIExpression()), !dbg !3403
  %tobool34 = icmp eq %union.tree_node* %call33, null, !dbg !3404
  br i1 %tobool34, label %cleanup, label %lor.lhs.false, !dbg !3406

lor.lhs.false:                                    ; preds = %cond.end30
  %10 = load %struct.prop_value_d*, %struct.prop_value_d** @copy_of, align 8, !dbg !3407
  %value = getelementptr inbounds %struct.prop_value_d, %struct.prop_value_d* %10, i64 %i.0, i32 1, !dbg !3408
  %11 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !3408
  %tobool35 = icmp eq %union.tree_node* %11, null, !dbg !3407
  br i1 %tobool35, label %cleanup, label %lor.lhs.false36, !dbg !3409

lor.lhs.false36:                                  ; preds = %lor.lhs.false
  %cmp39 = icmp eq %union.tree_node* %11, %call33, !dbg !3410
  br i1 %cmp39, label %cleanup, label %if.end, !dbg !3411

if.end:                                           ; preds = %lor.lhs.false36
  %call41 = tail call fastcc %union.tree_node* @get_last_copy_of(%union.tree_node* nonnull %call33) #7, !dbg !3412
  %value43 = getelementptr inbounds %struct.prop_value_d, %struct.prop_value_d* %3, i64 %i.0, i32 1, !dbg !3413
  store %union.tree_node* %call41, %union.tree_node** %value43, align 8, !dbg !3414
  %cmp46 = icmp eq %union.tree_node* %call41, %call33, !dbg !3415
  br i1 %cmp46, label %cleanup, label %land.lhs.true, !dbg !3417

land.lhs.true:                                    ; preds = %if.end
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call33, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3418
  %12 = bitcast %union.tree_node** %type to i64**, !dbg !3418
  %13 = load i64*, i64** %12, align 8, !dbg !3418
  %bf.load = load i64, i64* %13, align 8, !dbg !3418
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3418
  %cmp49 = icmp eq i64 %bf.cast1, 10, !dbg !3418
  br i1 %cmp49, label %land.lhs.true60, label %lor.lhs.false51, !dbg !3418

lor.lhs.false51:                                  ; preds = %land.lhs.true
  %cmp58 = icmp eq i64 %bf.cast1, 12, !dbg !3418
  br i1 %cmp58, label %land.lhs.true60, label %cleanup, !dbg !3419

land.lhs.true60:                                  ; preds = %lor.lhs.false51, %land.lhs.true
  %ptr_info = getelementptr inbounds %union.tree_node, %union.tree_node* %call33, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3420
  %14 = bitcast %union.tree_node** %ptr_info to %struct.ptr_info_def**, !dbg !3420
  %15 = load %struct.ptr_info_def*, %struct.ptr_info_def** %14, align 8, !dbg !3420
  %tobool61 = icmp eq %struct.ptr_info_def* %15, null, !dbg !3420
  br i1 %tobool61, label %cleanup, label %land.lhs.true62, !dbg !3421

land.lhs.true62:                                  ; preds = %land.lhs.true60
  %ptr_info66 = getelementptr inbounds %union.tree_node, %union.tree_node* %call41, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3422
  %16 = bitcast %union.tree_node** %ptr_info66 to %struct.ptr_info_def**, !dbg !3422
  %17 = load %struct.ptr_info_def*, %struct.ptr_info_def** %16, align 8, !dbg !3422
  %tobool67 = icmp eq %struct.ptr_info_def* %17, null, !dbg !3422
  br i1 %tobool67, label %if.then68, label %cleanup, !dbg !3423

if.then68:                                        ; preds = %land.lhs.true62
  tail call void @duplicate_ssa_name_ptr_info(%union.tree_node* %call41, %struct.ptr_info_def* nonnull %15) #6, !dbg !3424
  br label %cleanup, !dbg !3424

cleanup:                                          ; preds = %land.lhs.true62, %land.lhs.true60, %if.end, %lor.lhs.false, %cond.end30, %lor.lhs.false51, %if.then68, %lor.lhs.false36
  %inc = add nuw nsw i64 %i.0, 1, !dbg !3425
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3389, metadata !DIExpression()), !dbg !3396
  br label %for.cond, !dbg !3426, !llvm.loop !3427

for.end:                                          ; preds = %cond.end15
  %call74 = tail call zeroext i8 @substitute_and_fold(%struct.prop_value_d* %3, i8 (%struct.gimple_stmt_iterator*)* null) #6, !dbg !3429
  %18 = load i8*, i8** bitcast (%union.tree_node*** @cached_last_copy_of to i8**), align 8, !dbg !3430
  tail call void @free(i8* %18) #6, !dbg !3431
  %19 = load i8*, i8** bitcast (%struct.prop_value_d** @copy_of to i8**), align 8, !dbg !3432
  tail call void @free(i8* %19) #6, !dbg !3433
  tail call void @free(i8* %call4) #6, !dbg !3434
  ret void, !dbg !3435
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !3436 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3442, metadata !DIExpression()), !dbg !3443
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3444
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3444

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3444
  %0 = load i32, i32* %num, align 8, !dbg !3444
  br label %cond.end, !dbg !3444

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3444
  ret i32 %cond, !dbg !3444
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3445 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3449, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3450, metadata !DIExpression()), !dbg !3453
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3454
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3451, metadata !DIExpression()), !dbg !3452
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !3455
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3456
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3457
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3458
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3459
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3460
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3461
  ret void, !dbg !3462
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3463 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3467, metadata !DIExpression()), !dbg !3468
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3469
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3469
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3470
  %conv1 = zext i1 %cmp to i8, !dbg !3471
  ret i8 %conv1, !dbg !3472
}

declare dso_local zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @prop_set_simulate_again(%union.gimple_statement_d* %s, i8 zeroext %visit_p) unnamed_addr #0 !dbg !3473 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3477, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 %visit_p, metadata !3478, metadata !DIExpression()), !dbg !3479
  tail call fastcc void @gimple_set_visited(%union.gimple_statement_d* %s, i8 zeroext %visit_p) #7, !dbg !3480
  ret void, !dbg !3481
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @stmt_may_generate_copy(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !3482 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3486, metadata !DIExpression()), !dbg !3487
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !3488
  %cmp = icmp eq i32 %call, 16, !dbg !3490
  br i1 %cmp, label %if.then, label %if.end, !dbg !3491

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %stmt) #7, !dbg !3492
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3492
  %bf.load = load i64, i64* %0, align 8, !dbg !3492
  %bf.cast2 = lshr i64 %bf.load, 22, !dbg !3493
  %1 = trunc i64 %bf.cast2 to i8, !dbg !3493
  %2 = and i8 %1, 1, !dbg !3493
  %3 = xor i8 %2, 1, !dbg !3493
  br label %return, !dbg !3494

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !3495
  %cmp3 = icmp eq i32 %call2, 6, !dbg !3497
  br i1 %cmp3, label %if.end6, label %return, !dbg !3498

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3499
  %tobool8 = icmp eq i8 %call7, 0, !dbg !3499
  br i1 %tobool8, label %if.end10, label %return, !dbg !3501

if.end10:                                         ; preds = %if.end6
  %call11 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !3502
  %tobool12 = icmp eq %union.tree_node* %call11, null, !dbg !3502
  br i1 %tobool12, label %if.end14, label %return, !dbg !3504

if.end14:                                         ; preds = %if.end10
  %call15 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !3505
  %cmp16 = icmp eq i32 %call15, 141, !dbg !3506
  br i1 %cmp16, label %land.rhs, label %land.end, !dbg !3507

land.rhs:                                         ; preds = %if.end14
  %call18 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !3508
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call18, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3508
  %bf.load20 = load i64, i64* %4, align 8, !dbg !3508
  %bf.cast231 = lshr i64 %bf.load20, 22
  %5 = trunc i64 %bf.cast231 to i8
  %6 = and i8 %5, 1
  %7 = xor i8 %6, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end14
  %8 = phi i8 [ 0, %if.end14 ], [ %7, %land.rhs ]
  br label %return, !dbg !3509

return:                                           ; preds = %if.end10, %if.end6, %if.end, %land.end, %if.then
  %retval.0 = phi i8 [ %3, %if.then ], [ %8, %land.end ], [ 0, %if.end ], [ 0, %if.end6 ], [ 0, %if.end10 ], !dbg !3487
  ret i8 %retval.0, !dbg !3510
}

declare dso_local i32 @loop_depth_of_name(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3511 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3516, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3517, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i32 10, metadata !3518, metadata !DIExpression()), !dbg !3519
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 10) #7, !dbg !3520
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3521
  store i32 1, i32* %iter_type, align 4, !dbg !3522
  %call = tail call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !3523
  ret %union.tree_node* %call, !dbg !3524
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3525 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3531, metadata !DIExpression()), !dbg !3532
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3533
  %0 = load i8, i8* %done, align 8, !dbg !3533
  ret i8 %0, !dbg !3534
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @prop_simulate_again_p(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3535 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3537, metadata !DIExpression()), !dbg !3538
  %call = tail call fastcc zeroext i8 @gimple_visited_p(%union.gimple_statement_d* %s) #7, !dbg !3539
  ret i8 %call, !dbg !3540
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @set_copy_of_val(%union.tree_node* %dest, %union.tree_node* %first) unnamed_addr #0 !dbg !3541 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %dest, metadata !3543, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata %union.tree_node* %first, metadata !3544, metadata !DIExpression()), !dbg !3549
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %dest, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3550
  %0 = bitcast %union.tree_node** %version to i32*, !dbg !3550
  %1 = load i32, i32* %0, align 8, !dbg !3550
  call void @llvm.dbg.value(metadata i32 %1, metadata !3545, metadata !DIExpression()), !dbg !3549
  %2 = load %struct.prop_value_d*, %struct.prop_value_d** @copy_of, align 8, !dbg !3551
  %idxprom = zext i32 %1 to i64, !dbg !3551
  %value = getelementptr inbounds %struct.prop_value_d, %struct.prop_value_d* %2, i64 %idxprom, i32 1, !dbg !3552
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !3552
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3546, metadata !DIExpression()), !dbg !3549
  store %union.tree_node* %first, %union.tree_node** %value, align 8, !dbg !3553
  %cmp = icmp eq %union.tree_node* %3, %first, !dbg !3554
  br i1 %cmp, label %if.end, label %cleanup, !dbg !3556

if.end:                                           ; preds = %entry
  %4 = load %union.tree_node**, %union.tree_node*** @cached_last_copy_of, align 8, !dbg !3557
  %arrayidx5 = getelementptr inbounds %union.tree_node*, %union.tree_node** %4, i64 %idxprom, !dbg !3557
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx5, align 8, !dbg !3557
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3547, metadata !DIExpression()), !dbg !3549
  %call = tail call fastcc %union.tree_node* @get_last_copy_of(%union.tree_node* %dest) #7, !dbg !3558
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3548, metadata !DIExpression()), !dbg !3549
  %6 = load %union.tree_node**, %union.tree_node*** @cached_last_copy_of, align 8, !dbg !3559
  %arrayidx7 = getelementptr inbounds %union.tree_node*, %union.tree_node** %6, i64 %idxprom, !dbg !3559
  store %union.tree_node* %call, %union.tree_node** %arrayidx7, align 8, !dbg !3560
  %cmp8 = icmp ne %union.tree_node* %5, %call, !dbg !3561
  %conv9 = zext i1 %cmp8 to i8, !dbg !3562
  br label %cleanup, !dbg !3563

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %conv9, %if.end ], [ 1, %entry ], !dbg !3549
  ret i8 %retval.0, !dbg !3564
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3565 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3569, metadata !DIExpression()), !dbg !3571
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3572
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !3572
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !3574
  br i1 %tobool, label %if.end, label %if.then, !dbg !3575

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !3576
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %use_ptr) #7, !dbg !3576
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3570, metadata !DIExpression()), !dbg !3571
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !3578
  %2 = load i64*, i64** %1, align 8, !dbg !3578
  %3 = load i64, i64* %2, align 8, !dbg !3579
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3580
  store i64 %3, i64* %4, align 8, !dbg !3580
  br label %cleanup, !dbg !3581

if.end:                                           ; preds = %entry
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3582
  %5 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !3582
  %tobool4 = icmp eq %struct.def_optype_d* %5, null, !dbg !3584
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !3585

if.then5:                                         ; preds = %if.end
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %5, i64 0, i32 1, !dbg !3586
  %6 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !3586
  %call7 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %6) #7, !dbg !3586
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !3570, metadata !DIExpression()), !dbg !3571
  %7 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !3588
  %8 = load i64*, i64** %7, align 8, !dbg !3588
  %9 = load i64, i64* %8, align 8, !dbg !3589
  %10 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !3590
  store i64 %9, i64* %10, align 8, !dbg !3590
  br label %cleanup, !dbg !3591

if.end11:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3592
  store i8 1, i8* %done, align 8, !dbg !3593
  br label %cleanup, !dbg !3594

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call7, %if.then5 ], [ null, %if.end11 ], !dbg !3571
  ret %union.tree_node* %retval.0, !dbg !3595
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3596 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3600, metadata !DIExpression()), !dbg !3601
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3602
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3602
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3603
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3603
  %2 = load i64, i64* %1, align 8, !dbg !3603
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3604
  store i64 %2, i64* %3, align 8, !dbg !3604
  ret void, !dbg !3605
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 %flags) unnamed_addr #0 !dbg !3606 {
entry:
  call void @llvm.dbg.value(metadata i32 32, metadata !3610, metadata !DIExpression()), !dbg !3611
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3612
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3612
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3612
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !3613
  %2 = load i32, i32* %state, align 8, !dbg !3613
  %and = lshr i32 %2, 5, !dbg !3614
  %3 = trunc i32 %and to i8, !dbg !3614
  %4 = and i8 %3, 1, !dbg !3614
  ret i8 %4, !dbg !3615
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3616 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3620, metadata !DIExpression()), !dbg !3622
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3623
  store i32 0, i32* %index, align 8, !dbg !3624
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3625
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3626
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3627
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3627
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3627
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3628 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3633, metadata !DIExpression()), !dbg !3634
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3635
  %tobool = icmp eq i8 %call, 0, !dbg !3635
  br i1 %tobool, label %if.then, label %if.else, !dbg !3637

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3638
  br label %return, !dbg !3640

if.else:                                          ; preds = %entry
  br label %return, !dbg !3641

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3643
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3643
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3643
  ret i8 %retval.0, !dbg !3644
}

declare dso_local zeroext i8 @loop_exit_edge_p(%struct.loop*, %struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3645 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3650, metadata !DIExpression()), !dbg !3651
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3652
  %0 = load i32, i32* %index, align 8, !dbg !3652
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3652
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3652
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !3652
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3652
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3652

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3652
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3652
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !3652
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3652
  br label %cond.end, !dbg !3652

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3652
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3652
  %cmp = icmp ult i32 %0, %call2, !dbg !3652
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3652

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3652
  br label %cond.end5, !dbg !3652

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3653
  %inc = add i32 %5, 1, !dbg !3653
  store i32 %inc, i32* %index, align 8, !dbg !3653
  ret void, !dbg !3654
}

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3655 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3657, metadata !DIExpression()), !dbg !3658
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3659
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !3659
  ret %union.tree_node* %0, !dbg !3660
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3661 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3668, metadata !DIExpression()), !dbg !3669
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3670
  %0 = load i32, i32* %flags, align 8, !dbg !3670
  %and = and i32 %0, 512, !dbg !3671
  %tobool = icmp eq i32 %and, 0, !dbg !3671
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3672

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3673
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3673
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3674
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3675

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3676
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3676
  br label %cond.end, !dbg !3675

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3675
  ret %struct.gimple_seq_d* %cond, !dbg !3677
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3678 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3685, metadata !DIExpression()), !dbg !3686
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3687
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3687

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3688
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3688
  br label %cond.end, !dbg !3687

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3687
  ret %struct.gimple_seq_node_d* %cond, !dbg !3689
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_visited(%union.gimple_statement_d* %stmt, i8 zeroext %visited_p) unnamed_addr #0 !dbg !3690 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3692, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i8 %visited_p, metadata !3693, metadata !DIExpression()), !dbg !3694
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3695
  %bf.load = load i32, i32* %0, align 8, !dbg !3696
  %1 = and i8 %visited_p, 1, !dbg !3696
  %bf.value = zext i8 %1 to i32, !dbg !3696
  %bf.shl = shl nuw nsw i32 %bf.value, 9, !dbg !3696
  %bf.clear = and i32 %bf.load, -513, !dbg !3696
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !3696
  store i32 %bf.set, i32* %0, align 8, !dbg !3696
  ret void, !dbg !3697
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3698 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3700, metadata !DIExpression()), !dbg !3701
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3702
  %tobool = icmp eq i8 %call, 0, !dbg !3702
  br i1 %tobool, label %return, label %if.then, !dbg !3704

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3705
  %bf.load = load i32, i32* %0, align 8, !dbg !3705
  %bf.lshr = lshr i32 %bf.load, 14, !dbg !3705
  %1 = trunc i32 %bf.lshr to i8, !dbg !3706
  %conv = and i8 %1, 1, !dbg !3706
  br label %return, !dbg !3707

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8 [ %conv, %if.then ], [ 0, %entry ], !dbg !3708
  ret i8 %retval.0, !dbg !3709
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3710 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3712, metadata !DIExpression()), !dbg !3713
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !3714
  %tobool = icmp eq i8 %call, 0, !dbg !3714
  br i1 %tobool, label %return, label %if.end, !dbg !3716

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !3717
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !3717
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3717
  br label %return, !dbg !3718

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3713
  ret %union.tree_node* %retval.0, !dbg !3719
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3720 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3724, metadata !DIExpression()), !dbg !3726
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !3727
  call void @llvm.dbg.value(metadata i32 %call, metadata !3725, metadata !DIExpression()), !dbg !3726
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !3728
  %cmp = icmp eq i32 %call1, 3, !dbg !3730
  br i1 %cmp, label %if.then, label %if.end, !dbg !3731

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !3732
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3732
  %bf.load = load i64, i64* %0, align 8, !dbg !3732
  %1 = trunc i64 %bf.load to i32, !dbg !3732
  %bf.cast = and i32 %1, 65535, !dbg !3732
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3725, metadata !DIExpression()), !dbg !3726
  br label %if.end, !dbg !3733

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3726
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3725, metadata !DIExpression()), !dbg !3726
  ret i32 %code.0, !dbg !3734
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3735 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3737, metadata !DIExpression()), !dbg !3738
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3739
  %cmp = icmp ugt i32 %call, 5, !dbg !3740
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3741

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3742
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3743
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3744
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3745 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3747, metadata !DIExpression()), !dbg !3749
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !3750
  call void @llvm.dbg.value(metadata i32 %call, metadata !3748, metadata !DIExpression()), !dbg !3749
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !3751

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3753
  %bf.load = load i32, i32* %0, align 8, !dbg !3753
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3753
  br label %cleanup, !dbg !3754

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3755
  br label %cleanup, !dbg !3757

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3749
  ret i32 %retval.0, !dbg !3758
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3759 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3763, metadata !DIExpression()), !dbg !3764
  %idxprom = sext i32 %code to i64, !dbg !3765
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3765
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3765
  %conv = zext i8 %0 to i32, !dbg !3766
  ret i32 %conv, !dbg !3767
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3768 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3772, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3773, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i32 10, metadata !3774, metadata !DIExpression()), !dbg !3775
  br i1 false, label %entry.cond.end12_crit_edge, label %cond.true10, !dbg !3776

entry.cond.end12_crit_edge:                       ; preds = %entry
  br label %cond.end12, !dbg !3776

cond.true10:                                      ; preds = %entry
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3777
  br label %cond.end12, !dbg !3776

cond.end12:                                       ; preds = %entry.cond.end12_crit_edge, %cond.true10
  %cond13 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ undef, %entry.cond.end12_crit_edge ], !dbg !3776
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3778
  store %struct.def_optype_d* %cond13, %struct.def_optype_d** %defs, align 8, !dbg !3779
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3780
  store %struct.use_optype_d* null, %struct.use_optype_d** %uses, align 8, !dbg !3781
  br i1 true, label %land.lhs.true32, label %cond.end12.if.end42_crit_edge, !dbg !3782

cond.end12.if.end42_crit_edge:                    ; preds = %cond.end12
  br label %if.end42, !dbg !3782

land.lhs.true32:                                  ; preds = %cond.end12
  br i1 true, label %if.end42, label %land.lhs.true35, !dbg !3784

land.lhs.true35:                                  ; preds = %land.lhs.true32
  br i1 undef, label %land.lhs.true35.if.end42_crit_edge, label %if.then38, !dbg !3785

land.lhs.true35.if.end42_crit_edge:               ; preds = %land.lhs.true35
  br label %if.end42, !dbg !3785

if.then38:                                        ; preds = %land.lhs.true35
  br label %if.end42, !dbg !3786

if.end42:                                         ; preds = %land.lhs.true35.if.end42_crit_edge, %cond.end12.if.end42_crit_edge, %land.lhs.true32, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3787
  store i8 0, i8* %done, align 8, !dbg !3788
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3789
  store i32 0, i32* %phi_i, align 8, !dbg !3790
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3791
  store i32 0, i32* %num_phi, align 4, !dbg !3792
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3793
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3794
  ret void, !dbg !3795
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3796 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3800, metadata !DIExpression()), !dbg !3801
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !3802
  %tobool = icmp eq i8 %call, 0, !dbg !3802
  br i1 %tobool, label %return, label %if.end, !dbg !3804

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !3805
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !3805
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !3805
  br label %return, !dbg !3806

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3801
  ret %struct.def_optype_d* %retval.0, !dbg !3807
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3808 {
entry:
  unreachable, !dbg !3811
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3812 {
entry:
  unreachable, !dbg !3817
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_visited_p(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3818 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3820, metadata !DIExpression()), !dbg !3821
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3822
  %bf.load = load i32, i32* %0, align 8, !dbg !3822
  %bf.lshr = lshr i32 %bf.load, 9, !dbg !3822
  %1 = trunc i32 %bf.lshr to i8, !dbg !3823
  %conv = and i8 %1, 1, !dbg !3823
  ret i8 %conv, !dbg !3824
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @get_last_copy_of(%union.tree_node* %var) unnamed_addr #5 !dbg !3825 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3829, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3830, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i32 0, metadata !3831, metadata !DIExpression()), !dbg !3836
  %0 = load %struct.prop_value_d*, %struct.prop_value_d** @copy_of, align 8, !dbg !3837
  br label %for.cond, !dbg !3838

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !3839
  %last.0 = phi %union.tree_node* [ %var, %entry ], [ %last.1, %for.inc ], !dbg !3840
  call void @llvm.dbg.value(metadata %union.tree_node* %last.0, metadata !3830, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3831, metadata !DIExpression()), !dbg !3836
  %cmp = icmp ult i32 %i.0, 5, !dbg !3841
  %exitcond = icmp eq i32 %i.0, 5, !dbg !3841
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3842

for.body:                                         ; preds = %for.cond
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %last.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3843
  %1 = bitcast %union.tree_node** %version to i32*, !dbg !3843
  %2 = load i32, i32* %1, align 8, !dbg !3843
  %idxprom = zext i32 %2 to i64, !dbg !3844
  %value = getelementptr inbounds %struct.prop_value_d, %struct.prop_value_d* %0, i64 %idxprom, i32 1, !dbg !3845
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !3845
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3832, metadata !DIExpression()), !dbg !3837
  %cmp1 = icmp eq %union.tree_node* %3, null, !dbg !3846
  %cmp2 = icmp eq %union.tree_node* %3, %last.0, !dbg !3848
  %or.cond = or i1 %cmp1, %cmp2, !dbg !3849
  %last.1 = select i1 %or.cond, %union.tree_node* %last.0, %union.tree_node* %3, !dbg !3849
  call void @llvm.dbg.value(metadata %union.tree_node* %last.1, metadata !3830, metadata !DIExpression()), !dbg !3836
  br i1 %or.cond, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3850
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3831, metadata !DIExpression()), !dbg !3836
  br label %for.cond, !dbg !3851, !llvm.loop !3852

for.end:                                          ; preds = %for.cond, %for.body
  %cmp.lcssa = phi i1 [ %cmp, %for.cond ], [ %cmp, %for.body ], !dbg !3841
  %last.2 = phi %union.tree_node* [ %last.1, %for.body ], [ %last.0, %for.cond ], !dbg !3840
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3831, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3831, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata %union.tree_node* %last.2, metadata !3830, metadata !DIExpression()), !dbg !3836
  %last.2.var = select i1 %cmp.lcssa, %union.tree_node* %last.2, %union.tree_node* %var, !dbg !3854
  ret %union.tree_node* %last.2.var, !dbg !3855
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3856 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3860, metadata !DIExpression()), !dbg !3861
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3862
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3862
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3863
  ret %union.tree_node* %1, !dbg !3864
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !3865 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !3870, metadata !DIExpression()), !dbg !3871
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !3872
  ret %union.tree_node* %0, !dbg !3873
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3874 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3879
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3879
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3879

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3879
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3879
  br label %cond.end, !dbg !3879

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3879
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3879
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3880
  %conv3 = zext i1 %cmp to i8, !dbg !3881
  ret i8 %conv3, !dbg !3882
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3883 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3888
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3888
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3888

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3888
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3888
  br label %cond.end, !dbg !3888

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3888
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3888
  ret %struct.edge_def* %call2, !dbg !3889
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3890 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3896, metadata !DIExpression()), !dbg !3897
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3898
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3898

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3898
  %0 = load i32, i32* %num, align 8, !dbg !3898
  br label %cond.end, !dbg !3898

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3898
  ret i32 %cond, !dbg !3898
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3899 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3904
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3904

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3904
  br label %cond.end, !dbg !3904

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3905
  ret %struct.VEC_edge_gc* %0, !dbg !3906
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3907 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3911, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3912, metadata !DIExpression()), !dbg !3913
  br label %land.end, !dbg !3914

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3914
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3914
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3914
  ret %struct.edge_def* %0, !dbg !3914
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @copy_prop_visit_assignment(%union.gimple_statement_d* %stmt, %union.tree_node** %result_p) unnamed_addr #5 !dbg !3915 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3919, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata %union.tree_node** %result_p, metadata !3920, metadata !DIExpression()), !dbg !3924
  %call = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !3925
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3921, metadata !DIExpression()), !dbg !3924
  %call1 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !3926
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3922, metadata !DIExpression()), !dbg !3924
  %call2 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !3927
  %cmp = icmp eq i32 %call2, 141, !dbg !3927
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3927

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 483, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3927
  br label %cond.end, !dbg !3927

cond.end:                                         ; preds = %entry, %cond.true
  %call3 = tail call fastcc %struct.prop_value_d* @get_copy_of_val(%union.tree_node* %call1) #7, !dbg !3928
  call void @llvm.dbg.value(metadata %struct.prop_value_d* %call3, metadata !3923, metadata !DIExpression()), !dbg !3924
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3929
  %bf.load = load i64, i64* %0, align 8, !dbg !3929
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3931
  %cmp4 = icmp eq i64 %bf.cast1, 141, !dbg !3931
  br i1 %cmp4, label %if.then, label %cleanup, !dbg !3932

if.then:                                          ; preds = %cond.end
  %call5 = tail call zeroext i8 @may_propagate_copy(%union.tree_node* %call, %union.tree_node* %call1) #7, !dbg !3933
  %tobool = icmp eq i8 %call5, 0, !dbg !3933
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3936

if.end:                                           ; preds = %if.then
  store %union.tree_node* %call, %union.tree_node** %result_p, align 8, !dbg !3937
  %value = getelementptr inbounds %struct.prop_value_d, %struct.prop_value_d* %call3, i64 0, i32 1, !dbg !3938
  %1 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !3938
  %call7 = tail call fastcc zeroext i8 @set_copy_of_val(%union.tree_node* %call, %union.tree_node* %1) #7, !dbg !3940
  %tobool8 = icmp ne i8 %call7, 0, !dbg !3940
  %. = zext i1 %tobool8 to i32, !dbg !3941
  br label %cleanup, !dbg !3941

cleanup:                                          ; preds = %if.then, %cond.end, %if.end
  %retval.0 = phi i32 [ 2, %if.then ], [ %., %if.end ], [ 2, %cond.end ], !dbg !3924
  ret i32 %retval.0, !dbg !3942
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @copy_prop_visit_cond_stmt(%union.gimple_statement_d* %stmt, %struct.edge_def** %taken_edge_p) unnamed_addr #5 !dbg !3943 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3947, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata %struct.edge_def** %taken_edge_p, metadata !3948, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.value(metadata i32 2, metadata !3949, metadata !DIExpression()), !dbg !3961
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %stmt) #7, !dbg !3962
  call void @llvm.dbg.value(metadata i32 %call, metadata !3950, metadata !DIExpression()), !dbg !3961
  %call2 = tail call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !3963
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3951, metadata !DIExpression()), !dbg !3961
  %call3 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %stmt) #7, !dbg !3964
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3952, metadata !DIExpression()), !dbg !3961
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3965
  %bf.load = load i64, i64* %0, align 8, !dbg !3965
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3966
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3966
  br i1 %cmp, label %land.lhs.true, label %if.end29, !dbg !3967

land.lhs.true:                                    ; preds = %entry
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3968
  %bf.load5 = load i64, i64* %1, align 8, !dbg !3968
  %bf.cast72 = and i64 %bf.load5, 65535, !dbg !3969
  %cmp8 = icmp eq i64 %bf.cast72, 141, !dbg !3969
  br i1 %cmp8, label %if.then, label %if.end29, !dbg !3970

if.then:                                          ; preds = %land.lhs.true
  %call9 = tail call fastcc %union.tree_node* @get_last_copy_of(%union.tree_node* %call2) #7, !dbg !3971
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !3951, metadata !DIExpression()), !dbg !3961
  %call10 = tail call fastcc %union.tree_node* @get_last_copy_of(%union.tree_node* %call3) #7, !dbg !3972
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !3952, metadata !DIExpression()), !dbg !3961
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3973
  %tobool = icmp eq %struct._IO_FILE* %2, null, !dbg !3973
  br i1 %tobool, label %if.end, label %land.lhs.true11, !dbg !3975

land.lhs.true11:                                  ; preds = %if.then
  %3 = load i32, i32* @dump_flags, align 4, !dbg !3976
  %and = and i32 %3, 8, !dbg !3977
  %tobool12 = icmp eq i32 %and, 0, !dbg !3977
  br i1 %tobool12, label %if.end, label %if.then13, !dbg !3978

if.then13:                                        ; preds = %land.lhs.true11
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3979
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3981
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3982
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3983
  tail call void @print_gimple_stmt(%struct._IO_FILE* %5, %union.gimple_statement_d* %stmt, i32 0, i32 0) #6, !dbg !3984
  br label %if.end, !dbg !3985

if.end:                                           ; preds = %land.lhs.true11, %if.then, %if.then13
  %cmp16 = icmp eq %union.tree_node* %call9, %call10, !dbg !3986
  br i1 %cmp16, label %if.then17, label %if.end29, !dbg !3987

if.then17:                                        ; preds = %if.end
  %call18 = tail call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %stmt) #7, !dbg !3988
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3989
  %call19 = tail call %union.tree_node* @fold_binary_loc(i32 %call, i32 %call18, %union.tree_node* %6, %union.tree_node* %call9, %union.tree_node* %call9) #6, !dbg !3990
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !3953, metadata !DIExpression()), !dbg !3991
  %tobool20 = icmp eq %union.tree_node* %call19, null, !dbg !3992
  br i1 %tobool20, label %if.end29, label %if.then21, !dbg !3993

if.then21:                                        ; preds = %if.then17
  %call22 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #7, !dbg !3994
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call22, metadata !3958, metadata !DIExpression()), !dbg !3995
  %call23 = tail call %struct.edge_def* @find_taken_edge(%struct.basic_block_def* %call22, %union.tree_node* nonnull %call19) #6, !dbg !3996
  store %struct.edge_def* %call23, %struct.edge_def** %taken_edge_p, align 8, !dbg !3997
  %tobool24 = icmp eq %struct.edge_def* %call23, null, !dbg !3998
  %spec.select = select i1 %tobool24, i32 2, i32 1, !dbg !4000
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3949, metadata !DIExpression()), !dbg !3961
  br label %if.end29, !dbg !4001

if.end29:                                         ; preds = %if.then17, %if.end, %if.then21, %land.lhs.true, %entry
  %retval1.3 = phi i32 [ 2, %land.lhs.true ], [ 2, %entry ], [ 2, %if.end ], [ %spec.select, %if.then21 ], [ 2, %if.then17 ], !dbg !3961
  call void @llvm.dbg.value(metadata i32 %retval1.3, metadata !3949, metadata !DIExpression()), !dbg !3961
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4002
  %tobool30 = icmp eq %struct._IO_FILE* %7, null, !dbg !4002
  br i1 %tobool30, label %if.end39, label %land.lhs.true31, !dbg !4004

land.lhs.true31:                                  ; preds = %if.end29
  %8 = load i32, i32* @dump_flags, align 4, !dbg !4005
  %and32 = and i32 %8, 8, !dbg !4006
  %tobool33 = icmp eq i32 %and32, 0, !dbg !4006
  br i1 %tobool33, label %if.end39, label %land.lhs.true34, !dbg !4007

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %9 = load %struct.edge_def*, %struct.edge_def** %taken_edge_p, align 8, !dbg !4008
  %tobool35 = icmp eq %struct.edge_def* %9, null, !dbg !4008
  br i1 %tobool35, label %if.end39, label %if.then36, !dbg !4009

if.then36:                                        ; preds = %land.lhs.true34
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i64 0, i32 0, !dbg !4010
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4010
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i64 0, i32 9, !dbg !4011
  %11 = load i32, i32* %index, align 8, !dbg !4011
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i64 0, i32 1, !dbg !4012
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4012
  %index37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i64 0, i32 9, !dbg !4013
  %13 = load i32, i32* %index37, align 8, !dbg !4013
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %11, i32 %13) #6, !dbg !4014
  br label %if.end39, !dbg !4014

if.end39:                                         ; preds = %land.lhs.true34, %land.lhs.true31, %if.end29, %if.then36
  ret i32 %retval1.3, !dbg !4015
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.prop_value_d* @get_copy_of_val(%union.tree_node* %var) unnamed_addr #0 !dbg !4016 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4020, metadata !DIExpression()), !dbg !4022
  %0 = load %struct.prop_value_d*, %struct.prop_value_d** @copy_of, align 8, !dbg !4023
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4024
  %1 = bitcast %union.tree_node** %version to i32*, !dbg !4024
  %2 = load i32, i32* %1, align 8, !dbg !4024
  %idxprom = zext i32 %2 to i64, !dbg !4023
  %arrayidx = getelementptr inbounds %struct.prop_value_d, %struct.prop_value_d* %0, i64 %idxprom, !dbg !4023
  call void @llvm.dbg.value(metadata %struct.prop_value_d* %arrayidx, metadata !4021, metadata !DIExpression()), !dbg !4022
  %value = getelementptr inbounds %struct.prop_value_d, %struct.prop_value_d* %0, i64 %idxprom, i32 1, !dbg !4025
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !4025
  %cmp = icmp eq %union.tree_node* %3, null, !dbg !4027
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4028

land.lhs.true:                                    ; preds = %entry
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4029
  %4 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4029
  %5 = load %union.gimple_statement_d*, %union.gimple_statement_d** %4, align 8, !dbg !4029
  %call = tail call fastcc zeroext i8 @stmt_may_generate_copy(%union.gimple_statement_d* %5) #7, !dbg !4030
  %tobool = icmp eq i8 %call, 0, !dbg !4030
  br i1 %tobool, label %if.then, label %if.end, !dbg !4031

if.then:                                          ; preds = %land.lhs.true
  store %union.tree_node* %var, %union.tree_node** %value, align 8, !dbg !4032
  br label %if.end, !dbg !4034

if.end:                                           ; preds = %land.lhs.true, %if.then, %entry
  ret %struct.prop_value_d* %arrayidx, !dbg !4035
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4036 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4040, metadata !DIExpression()), !dbg !4041
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !4042
  %0 = load i32, i32* %location, align 8, !dbg !4042
  ret i32 %0, !dbg !4043
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4044 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4046, metadata !DIExpression()), !dbg !4047
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !4048
  ret %union.tree_node* %call, !dbg !4049
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4050 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4052, metadata !DIExpression()), !dbg !4053
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !4054
  ret %union.tree_node* %call, !dbg !4055
}

declare dso_local %union.tree_node* @fold_binary_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4056 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4058, metadata !DIExpression()), !dbg !4059
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !4060
  %bf.load = load i32, i32* %0, align 8, !dbg !4060
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4060
  ret i32 %bf.lshr, !dbg !4061
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4062 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4066, metadata !DIExpression()), !dbg !4067
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !4068
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4068
  ret %struct.basic_block_def* %0, !dbg !4069
}

declare dso_local %struct.edge_def* @find_taken_edge(%struct.basic_block_def*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4070 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4072, metadata !DIExpression()), !dbg !4073
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !4074
  %0 = load i32, i32* %nargs, align 4, !dbg !4074
  ret i32 %0, !dbg !4075
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !4076 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4080, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 %index, metadata !4081, metadata !DIExpression()), !dbg !4084
  %conv = trunc i64 %index to i32, !dbg !4085
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #7, !dbg !4086
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call, metadata !4082, metadata !DIExpression()), !dbg !4084
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !4087
  %call1 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %imm_use) #7, !dbg !4088
  ret %union.tree_node* %call1, !dbg !4089
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %gs, i64 %i) unnamed_addr #0 !dbg !4090 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4094, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %i, metadata !4095, metadata !DIExpression()), !dbg !4096
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #7, !dbg !4097
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 0, !dbg !4097
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4097
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4097
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4097

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #7, !dbg !4097
  %preds2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call1, i64 0, i32 0, !dbg !4097
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds2, align 8, !dbg !4097
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !4097
  br label %cond.end, !dbg !4097

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4097
  %conv = trunc i64 %i to i32, !dbg !4097
  %call3 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %conv) #7, !dbg !4097
  ret %struct.edge_def* %call3, !dbg !4098
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_copy_of(%struct._IO_FILE* %file, %union.tree_node* %var) unnamed_addr #5 !dbg !4099 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4103, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4104, metadata !DIExpression()), !dbg !4117
  %0 = load i32, i32* @dump_flags, align 4, !dbg !4118
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %var, i32 %0) #6, !dbg !4119
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4120
  %bf.load = load i64, i64* %1, align 8, !dbg !4120
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4122
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4122
  br i1 %cmp, label %if.end, label %cleanup.cont, !dbg !4123

if.end:                                           ; preds = %entry
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4124
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 3, !dbg !4124
  %3 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !4124
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %3, i64 0, i32 2, !dbg !4124
  %4 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !4124
  %tobool = icmp eq %struct.VEC_tree_gc* %4, null, !dbg !4124
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4124

cond.true:                                        ; preds = %if.end
  %base4 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %4, i64 0, i32 0, !dbg !4124
  br label %cond.end, !dbg !4124

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base4, %cond.true ], [ null, %if.end ], !dbg !4124
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !4124
  %call5 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %call) #6, !dbg !4125
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call5, metadata !4106, metadata !DIExpression()), !dbg !4117
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call5) #6, !dbg !4126
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4127
  %5 = bitcast %union.tree_node** %version to i32*, !dbg !4127
  %6 = load i32, i32* %5, align 8, !dbg !4127
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call5, i32 %6) #7, !dbg !4128
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !4129
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4105, metadata !DIExpression()), !dbg !4117
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %var, i32 0) #6, !dbg !4130
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !4131
  br label %while.cond, !dbg !4132

while.cond:                                       ; preds = %if.end26, %cond.end
  %val.0 = phi %union.tree_node* [ %var, %cond.end ], [ %13, %if.end26 ], !dbg !4117
  call void @llvm.dbg.value(metadata %union.tree_node* %val.0, metadata !4105, metadata !DIExpression()), !dbg !4117
  %7 = load %struct.prop_value_d*, %struct.prop_value_d** @copy_of, align 8, !dbg !4133
  %version9 = getelementptr inbounds %union.tree_node, %union.tree_node* %val.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4134
  %8 = bitcast %union.tree_node** %version9 to i32*, !dbg !4134
  %9 = load i32, i32* %8, align 8, !dbg !4134
  %idxprom = zext i32 %9 to i64, !dbg !4133
  %value = getelementptr inbounds %struct.prop_value_d, %struct.prop_value_d* %7, i64 %idxprom, i32 1, !dbg !4135
  %10 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !4135
  %tobool10 = icmp eq %union.tree_node* %10, null, !dbg !4132
  br i1 %tobool10, label %while.end, label %while.body, !dbg !4132

while.body:                                       ; preds = %while.cond
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !4136
  %11 = load %struct.prop_value_d*, %struct.prop_value_d** @copy_of, align 8, !dbg !4138
  %12 = load i32, i32* %8, align 8, !dbg !4139
  %idxprom14 = zext i32 %12 to i64, !dbg !4138
  %value16 = getelementptr inbounds %struct.prop_value_d, %struct.prop_value_d* %11, i64 %idxprom14, i32 1, !dbg !4140
  %13 = load %union.tree_node*, %union.tree_node** %value16, align 8, !dbg !4140
  call void @llvm.dbg.value(metadata %union.tree_node* %13, metadata !4105, metadata !DIExpression()), !dbg !4117
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %13, i32 0) #6, !dbg !4141
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !4142
  %version19 = getelementptr inbounds %union.tree_node, %union.tree_node* %13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4143
  %14 = bitcast %union.tree_node** %version19 to i32*, !dbg !4143
  %15 = load i32, i32* %14, align 8, !dbg !4143
  %div = lshr i32 %15, 6, !dbg !4143
  %idxprom20 = zext i32 %div to i64, !dbg !4143
  %arrayidx21 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call5, i64 0, i32 3, i64 %idxprom20, !dbg !4143
  %16 = load i64, i64* %arrayidx21, align 8, !dbg !4143
  %rem = and i32 %15, 63, !dbg !4143
  %sh_prom = zext i32 %rem to i64, !dbg !4143
  %17 = shl i64 1, %sh_prom, !dbg !4143
  %18 = and i64 %16, %17, !dbg !4143
  %tobool24 = icmp eq i64 %18, 0, !dbg !4143
  br i1 %tobool24, label %if.end26, label %while.end, !dbg !4145

if.end26:                                         ; preds = %while.body
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call5, i32 %15) #7, !dbg !4146
  br label %while.cond, !dbg !4132, !llvm.loop !4147

while.end:                                        ; preds = %while.body, %while.cond
  %call29 = tail call fastcc %struct.prop_value_d* @get_copy_of_val(%union.tree_node* %var) #7, !dbg !4149
  %value30 = getelementptr inbounds %struct.prop_value_d, %struct.prop_value_d* %call29, i64 0, i32 1, !dbg !4150
  %19 = load %union.tree_node*, %union.tree_node** %value30, align 8, !dbg !4150
  call void @llvm.dbg.value(metadata %union.tree_node* %19, metadata !4105, metadata !DIExpression()), !dbg !4117
  %cmp31 = icmp eq %union.tree_node* %19, null, !dbg !4151
  br i1 %cmp31, label %if.then32, label %if.else, !dbg !4153

if.then32:                                        ; preds = %while.end
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !4154
  br label %if.end40, !dbg !4154

if.else:                                          ; preds = %while.end
  %cmp34 = icmp eq %union.tree_node* %19, %var, !dbg !4155
  br i1 %cmp34, label %if.else37, label %if.then35, !dbg !4157

if.then35:                                        ; preds = %if.else
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !4158
  br label %if.end40, !dbg !4158

if.else37:                                        ; preds = %if.else
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !4159
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.else37, %if.then32
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call5, i64 0, i32 0, !dbg !4160
  %20 = load i8*, i8** %popcount, align 8, !dbg !4160
  tail call void @free(i8* %20) #6, !dbg !4160
  %21 = bitcast %struct.simple_bitmap_def* %call5 to i8*, !dbg !4160
  tail call void @free(i8* %21) #6, !dbg !4160
  br label %cleanup.cont, !dbg !4161

cleanup.cont:                                     ; preds = %entry, %if.end40
  ret void, !dbg !4161
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4162 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4166, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata i32 %index, metadata !4167, metadata !DIExpression()), !dbg !4168
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !4169
  %0 = load i32, i32* %capacity, align 8, !dbg !4169
  %cmp = icmp ult i32 %0, %index, !dbg !4169
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4169

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4169
  br label %cond.end, !dbg !4169

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !4170
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !4170
  ret %struct.phi_arg_d* %arrayidx, !dbg !4171
}

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #2

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !4172 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !4176, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !4177, metadata !DIExpression()), !dbg !4181
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !4182
  %0 = load i8*, i8** %popcount, align 8, !dbg !4182
  %tobool = icmp eq i8* %0, null, !dbg !4183
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !4184

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !4185
  %.pre2 = zext i32 %.pre to i64, !dbg !4186
  %.pre3 = shl i64 1, %.pre2, !dbg !4186
  %.pre4 = lshr i32 %bitno, 6, !dbg !4187
  %.pre5 = zext i32 %.pre4 to i64, !dbg !4188
  br label %if.end7, !dbg !4184

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !4189
  %idxprom = zext i32 %div to i64, !dbg !4189
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !4189
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4189
  %rem = and i32 %bitno, 63, !dbg !4189
  %sh_prom = zext i32 %rem to i64, !dbg !4189
  %2 = shl i64 1, %sh_prom, !dbg !4190
  %3 = and i64 %1, %2, !dbg !4190
  %tobool1 = icmp eq i64 %3, 0, !dbg !4190
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !4192

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !4193
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !4194
  %inc = add i8 %4, 1, !dbg !4194
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !4194
  br label %if.end7, !dbg !4193

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !4188
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !4186
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !4188
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !4195
  %or = or i64 %5, %shl.pre-phi, !dbg !4195
  store i64 %or, i64* %arrayidx13, align 8, !dbg !4195
  ret void, !dbg !4196
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4197 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4201, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4202, metadata !DIExpression()), !dbg !4203
  br label %land.end, !dbg !4204

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4204
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4204
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4204
  ret %union.tree_node* %0, !dbg !4204
}

declare dso_local void @duplicate_ssa_name_ptr_info(%union.tree_node*, %struct.ptr_info_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @substitute_and_fold(%struct.prop_value_d*, i8 (%struct.gimple_stmt_iterator*)*) local_unnamed_addr #2

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
!llvm.module.flags = !{!2090, !2091, !2092}
!llvm.ident = !{!2093}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_copy_prop", scope: !2, file: !3, line: 989, type: !2064, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !657, globals: !2059, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-copy.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !338, !342, !348, !353, !358, !376, !383, !390, !397, !573, !600, !638, !645, !651}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !135, line: 39, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!137 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!141 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!143 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!144 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!145 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!146 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!147 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!148 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!149 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!150 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!151 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!152 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!153 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!154 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!155 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!156 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!157 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!158 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!159 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!160 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!161 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!162 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!163 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!164 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!165 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!166 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!167 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!168 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!169 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!170 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!171 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!172 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!173 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!174 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!175 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!176 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!177 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!178 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!179 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!180 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!181 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!182 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!183 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!184 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!185 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!186 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!187 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!188 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!189 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!190 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!191 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!192 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!193 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!194 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!195 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!196 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!197 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!198 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!199 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!200 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!201 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!202 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!203 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!204 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!205 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!206 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!207 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!208 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!209 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!210 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!211 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!212 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!213 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!214 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!215 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!216 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!217 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!218 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!219 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!220 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!221 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!222 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!223 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!224 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!225 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!226 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!227 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!228 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!229 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!230 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!231 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!232 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!233 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!234 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!235 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!236 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!237 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!238 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!239 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!240 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!241 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!242 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!243 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!244 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!245 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!246 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!247 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!248 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!249 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!250 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!251 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!252 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!253 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!254 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!255 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!256 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!257 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!258 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!259 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!260 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!261 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!262 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!263 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!264 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!265 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!266 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!267 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!268 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!269 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!270 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!271 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!272 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!273 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!274 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!275 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!276 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!277 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!278 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!279 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!280 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!281 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!282 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!283 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!284 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!285 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!286 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!287 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!288 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!289 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!290 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!291 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!292 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!293 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!294 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!295 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!296 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!297 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!298 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!299 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!300 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!301 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!302 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!303 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!304 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!305 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!306 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!307 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!308 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!309 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!310 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!311 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!312 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!313 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!314 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!315 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!316 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!317 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!318 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!319 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!320 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!321 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!322 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!323 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!324 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!325 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!326 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!327 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!328 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !330, line: 31, baseType: !7, size: 32, elements: !331)
!330 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!331 = !{!332, !333, !334, !335, !336, !337}
!332 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!335 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!336 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!337 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!338 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !330, line: 91, baseType: !7, size: 32, elements: !339)
!339 = !{!340, !341}
!340 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!341 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!342 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !343, line: 363, baseType: !7, size: 32, elements: !344)
!343 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!344 = !{!345, !346, !347}
!345 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!346 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!347 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !343, line: 355, baseType: !7, size: 32, elements: !349)
!349 = !{!350, !351, !352}
!350 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!351 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!352 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!353 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !354, line: 474, baseType: !7, size: 32, elements: !355)
!354 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!355 = !{!356, !357}
!356 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!357 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!358 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !135, line: 280, baseType: !7, size: 32, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!360 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!370 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!372 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!374 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !135, line: 1817, baseType: !7, size: 32, elements: !377)
!377 = !{!378, !379, !380, !381, !382}
!378 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!379 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!380 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!381 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!382 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !135, line: 1805, baseType: !7, size: 32, elements: !384)
!384 = !{!385, !386, !387, !388, !389}
!385 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!386 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!387 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!388 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!389 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
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
!573 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !574, line: 727, baseType: !7, size: 32, elements: !575)
!574 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!576 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!577 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!578 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!579 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!580 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!581 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!582 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!583 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!584 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!585 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!586 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!587 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!588 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!589 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!590 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!591 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!592 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!593 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!594 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!595 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!596 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!597 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!598 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!599 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!600 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !574, line: 51, baseType: !7, size: 32, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!602 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!603 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!604 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!605 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!606 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!607 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!608 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!609 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!610 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!611 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!612 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!613 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!614 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!615 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!616 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!617 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!618 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!619 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!620 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!621 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!622 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!623 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!624 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!625 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!626 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!627 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!628 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!629 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!630 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!631 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!632 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!633 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!634 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!635 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!636 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!637 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!638 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !639, line: 119, baseType: !7, size: 32, elements: !640)
!639 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!640 = !{!641, !642, !643, !644}
!641 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!642 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!643 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!644 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!645 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !574, line: 80, baseType: !7, size: 32, elements: !646)
!646 = !{!647, !648, !649, !650}
!647 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!648 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!649 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!650 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!651 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_prop_result", file: !652, line: 44, baseType: !7, size: 32, elements: !653)
!652 = !DIFile(filename: "./tree-ssa-propagate.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!653 = !{!654, !655, !656}
!654 = !DIEnumerator(name: "SSA_PROP_NOT_INTERESTING", value: 0, isUnsigned: true)
!655 = !DIEnumerator(name: "SSA_PROP_INTERESTING", value: 1, isUnsigned: true)
!656 = !DIEnumerator(name: "SSA_PROP_VARYING", value: 2, isUnsigned: true)
!657 = !{!658, !659, !660, !661, !664, !665, !134, !667, !794, !992, !2051, !1025, !662, !2053, !7, !645, !721}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!660 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !668, line: 56, baseType: !669)
!668 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !671)
!671 = !{!672, !705, !711, !724, !743, !754, !759, !768, !774, !787, !799, !837, !1381, !1409, !1426, !1427, !1432, !1441, !1447, !1452, !1456, !1460, !1702, !1749, !1755, !1761, !1768, !1781, !1795, !1812, !1824, !1846, !1861, !2033}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !670, file: !135, line: 3372, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !673, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !673, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !673, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !673, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !673, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !673, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !673, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !673, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !673, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !673, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !673, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !673, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !673, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !673, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !673, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !673, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !673, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !673, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !673, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !673, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !673, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !673, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !673, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !673, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !673, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !673, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !673, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !673, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !673, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !673, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !670, file: !135, line: 3373, baseType: !706, size: 192)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !707)
!707 = !{!708, !709, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !706, file: !135, line: 403, baseType: !673, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !706, file: !135, line: 404, baseType: !667, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !135, line: 405, baseType: !667, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !670, file: !135, line: 3374, baseType: !712, size: 320)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !712, file: !135, line: 1385, baseType: !706, size: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !712, file: !135, line: 1386, baseType: !716, size: 128, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !717, line: 58, baseType: !718)
!717 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !717, line: 54, size: 128, elements: !719)
!719 = !{!720, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !718, file: !717, line: 56, baseType: !721, size: 64)
!721 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !718, file: !717, line: 57, baseType: !723, size: 64, offset: 64)
!723 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !670, file: !135, line: 3375, baseType: !725, size: 256)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !725, file: !135, line: 1398, baseType: !706, size: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !725, file: !135, line: 1399, baseType: !729, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !731, line: 52, size: 256, elements: !732)
!731 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!732 = !{!733, !734, !735, !736, !737, !738, !739}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !730, file: !731, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !730, file: !731, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !730, file: !731, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !730, file: !731, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !730, file: !731, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !730, file: !731, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !730, file: !731, line: 62, baseType: !740, size: 192, offset: 64)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 192, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 3)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !670, file: !135, line: 3376, baseType: !744, size: 256)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !744, file: !135, line: 1409, baseType: !706, size: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !744, file: !135, line: 1410, baseType: !748, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !750, line: 27, size: 192, elements: !751)
!750 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !749, file: !750, line: 29, baseType: !716, size: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !749, file: !750, line: 30, baseType: !5, size: 32, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !670, file: !135, line: 3377, baseType: !755, size: 256)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !755, file: !135, line: 1438, baseType: !706, size: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !755, file: !135, line: 1439, baseType: !667, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !670, file: !135, line: 3378, baseType: !760, size: 256)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !761)
!761 = !{!762, !763, !764}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !760, file: !135, line: 1419, baseType: !706, size: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !760, file: !135, line: 1420, baseType: !660, size: 32, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !760, file: !135, line: 1421, baseType: !765, size: 8, offset: 224)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 8, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 1)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !670, file: !135, line: 3379, baseType: !769, size: 320)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !770)
!770 = !{!771, !772, !773}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !769, file: !135, line: 1429, baseType: !706, size: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !769, file: !135, line: 1430, baseType: !667, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !769, file: !135, line: 1431, baseType: !667, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !670, file: !135, line: 3380, baseType: !775, size: 320)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !775, file: !135, line: 1461, baseType: !706, size: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !775, file: !135, line: 1462, baseType: !779, size: 128, offset: 192)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !780, line: 31, size: 128, elements: !781)
!780 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!781 = !{!782, !785, !786}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !779, file: !780, line: 32, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !779, file: !780, line: 33, baseType: !7, size: 32, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !779, file: !780, line: 34, baseType: !7, size: 32, offset: 96)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !670, file: !135, line: 3381, baseType: !788, size: 384)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !789)
!789 = !{!790, !791, !796, !797, !798}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !788, file: !135, line: 2508, baseType: !706, size: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !788, file: !135, line: 2509, baseType: !792, size: 32, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !793, line: 58, baseType: !794)
!793 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !795, line: 44, baseType: !7)
!795 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!796 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !788, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !788, file: !135, line: 2511, baseType: !667, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !788, file: !135, line: 2512, baseType: !667, size: 64, offset: 320)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !670, file: !135, line: 3382, baseType: !800, size: 896)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !800, file: !135, line: 2653, baseType: !788, size: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !800, file: !135, line: 2654, baseType: !667, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !800, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !800, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !800, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !800, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !800, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !800, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !800, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !800, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !800, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !800, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !800, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !800, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !800, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !800, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !800, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !800, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !800, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !800, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !800, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !800, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !800, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !800, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !800, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !800, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !800, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !800, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !800, file: !135, line: 2705, baseType: !667, size: 64, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !800, file: !135, line: 2706, baseType: !667, size: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !800, file: !135, line: 2707, baseType: !667, size: 64, offset: 704)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !800, file: !135, line: 2708, baseType: !667, size: 64, offset: 768)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !800, file: !135, line: 2711, baseType: !835, size: 64, offset: 832)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !670, file: !135, line: 3383, baseType: !838, size: 960)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !838, file: !135, line: 2757, baseType: !800, size: 896)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !838, file: !135, line: 2758, baseType: !842, size: 64, offset: 896)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !668, line: 50, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !845, line: 240, size: 384, elements: !846)
!845 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!846 = !{!847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !844, file: !845, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !844, file: !845, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !844, file: !845, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !844, file: !845, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !844, file: !845, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !844, file: !845, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !844, file: !845, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !844, file: !845, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !844, file: !845, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !844, file: !845, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !844, file: !845, line: 321, baseType: !858, size: 320, offset: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !845, line: 315, size: 320, elements: !859)
!859 = !{!860, !1314, !1316, !1379, !1380}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !858, file: !845, line: 316, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 64, elements: !766)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !845, line: 183, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !845, line: 166, size: 64, elements: !864)
!864 = !{!865, !866, !867, !868, !869, !877, !878, !890, !893, !953, !954, !1291, !1304, !1311}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !863, file: !845, line: 168, baseType: !660, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !863, file: !845, line: 169, baseType: !7, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !863, file: !845, line: 170, baseType: !665, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !863, file: !845, line: 171, baseType: !842, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !863, file: !845, line: 172, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !668, line: 53, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !845, line: 359, size: 128, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !872, file: !845, line: 360, baseType: !660, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !872, file: !845, line: 361, baseType: !876, size: 64, offset: 64)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, size: 64, elements: !766)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !863, file: !845, line: 173, baseType: !5, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !863, file: !845, line: 174, baseType: !879, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !845, line: 133, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !845, line: 115, size: 32, elements: !881)
!881 = !{!882, !883, !884, !885, !886, !887, !888, !889}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !880, file: !845, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !880, file: !845, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !880, file: !845, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !880, file: !845, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !880, file: !845, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !880, file: !845, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !880, file: !845, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !880, file: !845, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !863, file: !845, line: 175, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !845, line: 175, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !863, file: !845, line: 176, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !896, line: 75, size: 256, elements: !897)
!896 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!897 = !{!898, !912, !913, !914}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !895, file: !896, line: 76, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !896, line: 68, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !896, line: 63, size: 320, elements: !902)
!902 = !{!903, !905, !906, !907}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !901, file: !896, line: 64, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !901, file: !896, line: 65, baseType: !904, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !901, file: !896, line: 66, baseType: !7, size: 32, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !901, file: !896, line: 67, baseType: !908, size: 128, offset: 192)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 128, elements: !910)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !896, line: 29, baseType: !721)
!910 = !{!911}
!911 = !DISubrange(count: 2)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !895, file: !896, line: 77, baseType: !899, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !895, file: !896, line: 78, baseType: !7, size: 32, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !895, file: !896, line: 79, baseType: !915, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !896, line: 49, baseType: !917)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !896, line: 45, size: 832, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !917, file: !896, line: 46, baseType: !904, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !917, file: !896, line: 47, baseType: !894, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !917, file: !896, line: 48, baseType: !922, size: 704, offset: 128)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !923, line: 164, size: 704, elements: !924)
!923 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!924 = !{!925, !926, !936, !937, !938, !939, !940, !941, !945, !949, !950, !951, !952}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !922, file: !923, line: 166, baseType: !723, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !922, file: !923, line: 167, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !923, line: 157, size: 192, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !928, file: !923, line: 159, baseType: !662, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !928, file: !923, line: 160, baseType: !927, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !928, file: !923, line: 161, baseType: !933, size: 32, offset: 128)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 32, elements: !934)
!934 = !{!935}
!935 = !DISubrange(count: 4)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !922, file: !923, line: 168, baseType: !662, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !922, file: !923, line: 169, baseType: !662, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !922, file: !923, line: 170, baseType: !662, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !922, file: !923, line: 171, baseType: !723, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !922, file: !923, line: 172, baseType: !660, size: 32, offset: 384)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !922, file: !923, line: 176, baseType: !942, size: 64, offset: 448)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!927, !664, !723}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !922, file: !923, line: 177, baseType: !946, size: 64, offset: 512)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !664, !927}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !922, file: !923, line: 178, baseType: !664, size: 64, offset: 576)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !922, file: !923, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !922, file: !923, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !922, file: !923, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !863, file: !845, line: 177, baseType: !667, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !863, file: !845, line: 178, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !343, line: 217, size: 832, elements: !957)
!957 = !{!958, !1203, !1204, !1205, !1261, !1265, !1266, !1267, !1285, !1286, !1287, !1288, !1289, !1290}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !956, file: !343, line: 219, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !343, line: 151, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !343, line: 151, size: 128, elements: !962)
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !961, file: !343, line: 151, baseType: !964, size: 128)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !343, line: 150, baseType: !965)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !343, line: 150, size: 128, elements: !966)
!966 = !{!967, !968, !969}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !965, file: !343, line: 150, baseType: !7, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !965, file: !343, line: 150, baseType: !7, size: 32, offset: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !965, file: !343, line: 150, baseType: !970, size: 64, offset: 64)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 64, elements: !766)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !668, line: 108, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !343, line: 122, size: 512, elements: !974)
!974 = !{!975, !976, !977, !1195, !1196, !1197, !1198, !1199, !1200, !1201}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !973, file: !343, line: 124, baseType: !955, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !973, file: !343, line: 125, baseType: !955, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !973, file: !343, line: 131, baseType: !978, size: 64, offset: 128)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !343, line: 128, size: 64, elements: !979)
!979 = !{!980, !1194}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !978, file: !343, line: 129, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !668, line: 66, baseType: !982)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !574, line: 143, size: 192, elements: !984)
!984 = !{!985, !1192, !1193}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !983, file: !574, line: 145, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !668, line: 69, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !574, line: 136, size: 192, elements: !989)
!989 = !{!990, !1190, !1191}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !988, file: !574, line: 137, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !668, line: 58, baseType: !992)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !574, line: 737, size: 768, elements: !994)
!994 = !{!995, !1012, !1045, !1051, !1056, !1061, !1068, !1074, !1080, !1085, !1099, !1104, !1110, !1115, !1125, !1130, !1148, !1155, !1162, !1168, !1173, !1179, !1185}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !993, file: !574, line: 738, baseType: !996, size: 256)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !574, line: 271, size: 256, elements: !997)
!997 = !{!998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !996, file: !574, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !996, file: !574, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !996, file: !574, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !996, file: !574, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !996, file: !574, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !996, file: !574, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !996, file: !574, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !996, file: !574, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !996, file: !574, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !996, file: !574, line: 312, baseType: !7, size: 32, offset: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !996, file: !574, line: 316, baseType: !792, size: 32, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !996, file: !574, line: 319, baseType: !7, size: 32, offset: 96)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !996, file: !574, line: 323, baseType: !955, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !996, file: !574, line: 327, baseType: !667, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !993, file: !574, line: 739, baseType: !1013, size: 448)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !574, line: 350, size: 448, elements: !1014)
!1014 = !{!1015, !1043}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1013, file: !574, line: 353, baseType: !1016, size: 384)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !574, line: 333, size: 384, elements: !1017)
!1017 = !{!1018, !1019, !1026}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1016, file: !574, line: 336, baseType: !996, size: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1016, file: !574, line: 343, baseType: !1020, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !639, line: 37, size: 128, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1021, file: !639, line: 39, baseType: !1020, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1021, file: !639, line: 40, baseType: !1025, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1016, file: !574, line: 344, baseType: !1027, size: 64, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !639, line: 45, size: 320, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1028, file: !639, line: 47, baseType: !1027, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1028, file: !639, line: 48, baseType: !1032, size: 256, offset: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !1033)
!1033 = !{!1034, !1036, !1037, !1042}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1032, file: !135, line: 1884, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1032, file: !135, line: 1885, baseType: !1035, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1032, file: !135, line: 1891, baseType: !1038, size: 64, offset: 128)
!1038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1032, file: !135, line: 1891, size: 64, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1038, file: !135, line: 1891, baseType: !991, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1038, file: !135, line: 1891, baseType: !667, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1032, file: !135, line: 1892, baseType: !1025, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1013, file: !574, line: 359, baseType: !1044, size: 64, offset: 384)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 64, elements: !766)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !993, file: !574, line: 740, baseType: !1046, size: 512)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !574, line: 365, size: 512, elements: !1047)
!1047 = !{!1048, !1049, !1050}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1046, file: !574, line: 368, baseType: !1016, size: 384)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1046, file: !574, line: 373, baseType: !667, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1046, file: !574, line: 374, baseType: !667, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !993, file: !574, line: 741, baseType: !1052, size: 576)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !574, line: 380, size: 576, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1052, file: !574, line: 383, baseType: !1046, size: 512)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1052, file: !574, line: 389, baseType: !1044, size: 64, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !993, file: !574, line: 742, baseType: !1057, size: 320)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !574, line: 395, size: 320, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1057, file: !574, line: 397, baseType: !996, size: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1057, file: !574, line: 400, baseType: !981, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !993, file: !574, line: 743, baseType: !1062, size: 448)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !574, line: 406, size: 448, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1062, file: !574, line: 408, baseType: !996, size: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1062, file: !574, line: 412, baseType: !667, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1062, file: !574, line: 420, baseType: !667, size: 64, offset: 320)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1062, file: !574, line: 423, baseType: !981, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !993, file: !574, line: 744, baseType: !1069, size: 384)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !574, line: 429, size: 384, elements: !1070)
!1070 = !{!1071, !1072, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1069, file: !574, line: 431, baseType: !996, size: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1069, file: !574, line: 434, baseType: !667, size: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1069, file: !574, line: 437, baseType: !981, size: 64, offset: 320)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !993, file: !574, line: 745, baseType: !1075, size: 384)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !574, line: 443, size: 384, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1075, file: !574, line: 445, baseType: !996, size: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1075, file: !574, line: 449, baseType: !667, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1075, file: !574, line: 453, baseType: !981, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !993, file: !574, line: 746, baseType: !1081, size: 320)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !574, line: 459, size: 320, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1081, file: !574, line: 461, baseType: !996, size: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1081, file: !574, line: 464, baseType: !667, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !993, file: !574, line: 747, baseType: !1086, size: 768)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !574, line: 469, size: 768, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1086, file: !574, line: 471, baseType: !996, size: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1086, file: !574, line: 474, baseType: !7, size: 32, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1086, file: !574, line: 475, baseType: !7, size: 32, offset: 288)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1086, file: !574, line: 478, baseType: !667, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1086, file: !574, line: 481, baseType: !1093, size: 384, offset: 384)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 384, elements: !766)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1094, file: !135, line: 1920, baseType: !1032, size: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1094, file: !135, line: 1921, baseType: !667, size: 64, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1094, file: !135, line: 1922, baseType: !792, size: 32, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !993, file: !574, line: 748, baseType: !1100, size: 320)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !574, line: 487, size: 320, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1100, file: !574, line: 490, baseType: !996, size: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1100, file: !574, line: 494, baseType: !660, size: 32, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !993, file: !574, line: 749, baseType: !1105, size: 384)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !574, line: 500, size: 384, elements: !1106)
!1106 = !{!1107, !1108, !1109}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1105, file: !574, line: 502, baseType: !996, size: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1105, file: !574, line: 506, baseType: !981, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1105, file: !574, line: 510, baseType: !981, size: 64, offset: 320)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !993, file: !574, line: 750, baseType: !1111, size: 320)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !574, line: 529, size: 320, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1111, file: !574, line: 531, baseType: !996, size: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1111, file: !574, line: 540, baseType: !981, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !993, file: !574, line: 751, baseType: !1116, size: 704)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !574, line: 546, size: 704, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123, !1124}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1116, file: !574, line: 549, baseType: !1046, size: 512)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1116, file: !574, line: 553, baseType: !665, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1116, file: !574, line: 557, baseType: !659, size: 8, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1116, file: !574, line: 558, baseType: !659, size: 8, offset: 584)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1116, file: !574, line: 559, baseType: !659, size: 8, offset: 592)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1116, file: !574, line: 560, baseType: !659, size: 8, offset: 600)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1116, file: !574, line: 566, baseType: !1044, size: 64, offset: 640)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !993, file: !574, line: 752, baseType: !1126, size: 384)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !574, line: 571, size: 384, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1126, file: !574, line: 573, baseType: !1057, size: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1126, file: !574, line: 577, baseType: !667, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !993, file: !574, line: 753, baseType: !1131, size: 576)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !574, line: 600, size: 576, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1138, !1147}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1131, file: !574, line: 602, baseType: !1057, size: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1131, file: !574, line: 605, baseType: !667, size: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1131, file: !574, line: 609, baseType: !1136, size: 64, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1137, line: 46, baseType: !721)
!1137 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1131, file: !574, line: 612, baseType: !1139, size: 64, offset: 448)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !574, line: 581, size: 320, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1146}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1140, file: !574, line: 583, baseType: !134, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1140, file: !574, line: 586, baseType: !667, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1140, file: !574, line: 589, baseType: !667, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1140, file: !574, line: 592, baseType: !667, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1140, file: !574, line: 595, baseType: !667, size: 64, offset: 256)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1131, file: !574, line: 616, baseType: !981, size: 64, offset: 512)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !993, file: !574, line: 754, baseType: !1149, size: 512)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !574, line: 622, size: 512, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1149, file: !574, line: 624, baseType: !1057, size: 320)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1149, file: !574, line: 628, baseType: !667, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1149, file: !574, line: 632, baseType: !667, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1149, file: !574, line: 636, baseType: !667, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !993, file: !574, line: 755, baseType: !1156, size: 704)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !574, line: 642, size: 704, elements: !1157)
!1157 = !{!1158, !1159, !1160, !1161}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1156, file: !574, line: 644, baseType: !1149, size: 512)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1156, file: !574, line: 648, baseType: !667, size: 64, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1156, file: !574, line: 652, baseType: !667, size: 64, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1156, file: !574, line: 653, baseType: !667, size: 64, offset: 640)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !993, file: !574, line: 756, baseType: !1163, size: 448)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !574, line: 663, size: 448, elements: !1164)
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1163, file: !574, line: 665, baseType: !1057, size: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1163, file: !574, line: 668, baseType: !667, size: 64, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1163, file: !574, line: 673, baseType: !667, size: 64, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !993, file: !574, line: 757, baseType: !1169, size: 384)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !574, line: 694, size: 384, elements: !1170)
!1170 = !{!1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1169, file: !574, line: 696, baseType: !1057, size: 320)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1169, file: !574, line: 699, baseType: !667, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !993, file: !574, line: 758, baseType: !1174, size: 384)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !574, line: 681, size: 384, elements: !1175)
!1175 = !{!1176, !1177, !1178}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1174, file: !574, line: 683, baseType: !996, size: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1174, file: !574, line: 686, baseType: !667, size: 64, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1174, file: !574, line: 689, baseType: !667, size: 64, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !993, file: !574, line: 759, baseType: !1180, size: 384)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !574, line: 707, size: 384, elements: !1181)
!1181 = !{!1182, !1183, !1184}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1180, file: !574, line: 709, baseType: !996, size: 256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1180, file: !574, line: 712, baseType: !667, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1180, file: !574, line: 712, baseType: !667, size: 64, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !993, file: !574, line: 760, baseType: !1186, size: 320)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !574, line: 718, size: 320, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1186, file: !574, line: 720, baseType: !996, size: 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1186, file: !574, line: 723, baseType: !667, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !988, file: !574, line: 138, baseType: !987, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !988, file: !574, line: 139, baseType: !987, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !983, file: !574, line: 146, baseType: !986, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !983, file: !574, line: 152, baseType: !981, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !978, file: !343, line: 130, baseType: !842, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !973, file: !343, line: 134, baseType: !664, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !973, file: !343, line: 137, baseType: !667, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !973, file: !343, line: 138, baseType: !792, size: 32, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !973, file: !343, line: 142, baseType: !7, size: 32, offset: 352)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !973, file: !343, line: 144, baseType: !660, size: 32, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !973, file: !343, line: 145, baseType: !660, size: 32, offset: 416)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !973, file: !343, line: 146, baseType: !1202, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !343, line: 119, baseType: !723)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !956, file: !343, line: 220, baseType: !959, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !956, file: !343, line: 223, baseType: !664, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !956, file: !343, line: 226, baseType: !1206, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !330, line: 100, size: 1216, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1218, !1219, !1220, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1251, !1259, !1260}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1207, file: !330, line: 102, baseType: !660, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1207, file: !330, line: 105, baseType: !7, size: 32, offset: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1207, file: !330, line: 108, baseType: !955, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1207, file: !330, line: 111, baseType: !955, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1207, file: !330, line: 114, baseType: !1214, size: 64, offset: 192)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !330, line: 41, size: 64, elements: !1215)
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1214, file: !330, line: 42, baseType: !329, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1214, file: !330, line: 43, baseType: !7, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1207, file: !330, line: 117, baseType: !7, size: 32, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1207, file: !330, line: 120, baseType: !7, size: 32, offset: 288)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1207, file: !330, line: 123, baseType: !1221, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !330, line: 87, baseType: !1223)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !330, line: 87, size: 128, elements: !1224)
!1224 = !{!1225}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1223, file: !330, line: 87, baseType: !1226, size: 128)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !330, line: 85, baseType: !1227)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !330, line: 85, size: 128, elements: !1228)
!1228 = !{!1229, !1230, !1231}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1227, file: !330, line: 85, baseType: !7, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1227, file: !330, line: 85, baseType: !7, size: 32, offset: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1227, file: !330, line: 85, baseType: !1232, size: 64, offset: 64)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1233, size: 64, elements: !766)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !330, line: 84, baseType: !1206)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1207, file: !330, line: 126, baseType: !1206, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1207, file: !330, line: 129, baseType: !1206, size: 64, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1207, file: !330, line: 132, baseType: !664, size: 64, offset: 512)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1207, file: !330, line: 139, baseType: !667, size: 64, offset: 576)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1207, file: !330, line: 143, baseType: !716, size: 128, offset: 640)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1207, file: !330, line: 146, baseType: !716, size: 128, offset: 768)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1207, file: !330, line: 148, baseType: !659, size: 8, offset: 896)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1207, file: !330, line: 149, baseType: !659, size: 8, offset: 904)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1207, file: !330, line: 153, baseType: !338, size: 32, offset: 928)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1207, file: !330, line: 156, baseType: !1244, size: 64, offset: 960)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !330, line: 48, size: 320, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1245, file: !330, line: 50, baseType: !991, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1245, file: !330, line: 59, baseType: !716, size: 128, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1245, file: !330, line: 64, baseType: !659, size: 8, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1245, file: !330, line: 67, baseType: !1244, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1207, file: !330, line: 159, baseType: !1252, size: 64, offset: 1024)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !330, line: 72, size: 256, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1258}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1253, file: !330, line: 74, baseType: !972, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1253, file: !330, line: 77, baseType: !1252, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1253, file: !330, line: 78, baseType: !1252, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1253, file: !330, line: 81, baseType: !1252, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1207, file: !330, line: 162, baseType: !659, size: 8, offset: 1088)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1207, file: !330, line: 166, baseType: !667, size: 64, offset: 1152)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !956, file: !343, line: 229, baseType: !1262, size: 128, offset: 256)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1263, size: 128, elements: !910)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !343, line: 229, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !956, file: !343, line: 232, baseType: !955, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !956, file: !343, line: 233, baseType: !955, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !956, file: !343, line: 238, baseType: !1268, size: 64, offset: 512)
!1268 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !343, line: 235, size: 64, elements: !1269)
!1269 = !{!1270, !1276}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1268, file: !343, line: 236, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !343, line: 273, size: 128, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1272, file: !343, line: 275, baseType: !981, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1272, file: !343, line: 278, baseType: !981, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1268, file: !343, line: 237, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !343, line: 259, size: 320, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1278, file: !343, line: 261, baseType: !842, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1278, file: !343, line: 262, baseType: !842, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1278, file: !343, line: 266, baseType: !842, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1278, file: !343, line: 267, baseType: !842, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1278, file: !343, line: 270, baseType: !660, size: 32, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !956, file: !343, line: 241, baseType: !1202, size: 64, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !956, file: !343, line: 244, baseType: !660, size: 32, offset: 640)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !956, file: !343, line: 247, baseType: !660, size: 32, offset: 672)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !956, file: !343, line: 250, baseType: !660, size: 32, offset: 704)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !956, file: !343, line: 253, baseType: !660, size: 32, offset: 736)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !956, file: !343, line: 256, baseType: !660, size: 32, offset: 768)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !863, file: !845, line: 179, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !845, line: 150, baseType: !1294)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !845, line: 142, size: 320, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1302, !1303}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1294, file: !845, line: 144, baseType: !667, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1294, file: !845, line: 145, baseType: !842, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1294, file: !845, line: 146, baseType: !842, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1294, file: !845, line: 147, baseType: !1300, size: 32, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1301, line: 31, baseType: !660)
!1301 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1294, file: !845, line: 148, baseType: !7, size: 32, offset: 224)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1294, file: !845, line: 149, baseType: !659, size: 8, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !863, file: !845, line: 180, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !845, line: 162, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !845, line: 159, size: 128, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1307, file: !845, line: 160, baseType: !667, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1307, file: !845, line: 161, baseType: !723, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !863, file: !845, line: 181, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !845, line: 181, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !858, file: !845, line: 317, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 64, elements: !766)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !858, file: !845, line: 318, baseType: !1317, size: 320)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !845, line: 188, size: 320, elements: !1318)
!1318 = !{!1319, !1321, !1378}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1317, file: !845, line: 190, baseType: !1320, size: 192)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 192, elements: !741)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1317, file: !845, line: 193, baseType: !1322, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !845, line: 206, size: 320, elements: !1324)
!1324 = !{!1325, !1363, !1364, !1365, !1377}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1323, file: !845, line: 208, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !668, line: 62, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1329, line: 538, size: 256, elements: !1330)
!1329 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1330 = !{!1331, !1335, !1341, !1354}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1328, file: !1329, line: 539, baseType: !1332, size: 32)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1329, line: 482, size: 32, elements: !1333)
!1333 = !{!1334}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1332, file: !1329, line: 484, baseType: !7, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1328, file: !1329, line: 540, baseType: !1336, size: 192)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1329, line: 488, size: 192, elements: !1337)
!1337 = !{!1338, !1339, !1340}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1336, file: !1329, line: 489, baseType: !1332, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1336, file: !1329, line: 492, baseType: !665, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1336, file: !1329, line: 496, baseType: !667, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1328, file: !1329, line: 541, baseType: !1342, size: 256)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1329, line: 504, size: 256, elements: !1343)
!1343 = !{!1344, !1345, !1352, !1353}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1342, file: !1329, line: 505, baseType: !1332, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1342, file: !1329, line: 509, baseType: !1346, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1329, line: 501, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1342, file: !1329, line: 510, baseType: !1350, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1342, file: !1329, line: 513, baseType: !1326, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1328, file: !1329, line: 542, baseType: !1355, size: 128)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1329, line: 530, size: 128, elements: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1355, file: !1329, line: 531, baseType: !1332, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1355, file: !1329, line: 534, baseType: !1359, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1329, line: 525, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!659, !667, !665, !721, !721}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1323, file: !845, line: 211, baseType: !7, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1323, file: !845, line: 214, baseType: !723, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1323, file: !845, line: 224, baseType: !1366, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !845, line: 202, baseType: !1368)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !845, line: 202, size: 128, elements: !1369)
!1369 = !{!1370}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1368, file: !845, line: 202, baseType: !1371, size: 128)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !845, line: 200, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !845, line: 200, size: 128, elements: !1373)
!1373 = !{!1374, !1375, !1376}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1372, file: !845, line: 200, baseType: !7, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1372, file: !845, line: 200, baseType: !7, size: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1372, file: !845, line: 200, baseType: !876, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1323, file: !845, line: 234, baseType: !1366, size: 64, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1317, file: !845, line: 197, baseType: !723, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !858, file: !845, line: 319, baseType: !730, size: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !858, file: !845, line: 320, baseType: !749, size: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !670, file: !135, line: 3384, baseType: !1382, size: 1472)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !1383)
!1383 = !{!1384, !1405, !1406, !1407, !1408}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1382, file: !135, line: 3115, baseType: !1385, size: 1216)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1385, file: !135, line: 2985, baseType: !838, size: 960)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1385, file: !135, line: 2986, baseType: !667, size: 64, offset: 960)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1385, file: !135, line: 2987, baseType: !667, size: 64, offset: 1024)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1385, file: !135, line: 2988, baseType: !667, size: 64, offset: 1088)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1385, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1385, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1385, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1385, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1385, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1385, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1385, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1385, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1385, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1385, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1385, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1385, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1385, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1385, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1382, file: !135, line: 3117, baseType: !667, size: 64, offset: 1216)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1382, file: !135, line: 3119, baseType: !667, size: 64, offset: 1280)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1382, file: !135, line: 3121, baseType: !667, size: 64, offset: 1344)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1382, file: !135, line: 3123, baseType: !667, size: 64, offset: 1408)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !670, file: !135, line: 3385, baseType: !1410, size: 1088)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !1411)
!1411 = !{!1412, !1413, !1414}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1410, file: !135, line: 2875, baseType: !838, size: 960)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1410, file: !135, line: 2876, baseType: !842, size: 64, offset: 960)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1410, file: !135, line: 2877, baseType: !1415, size: 64, offset: 1024)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1417, line: 172, size: 128, elements: !1418)
!1417 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1425}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1416, file: !1417, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1416, file: !1417, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1416, file: !1417, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1416, file: !1417, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1416, file: !1417, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1416, file: !1417, line: 195, baseType: !7, size: 32, offset: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1416, file: !1417, line: 199, baseType: !667, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !670, file: !135, line: 3386, baseType: !1385, size: 1216)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !670, file: !135, line: 3387, baseType: !1428, size: 1280)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !1429)
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1428, file: !135, line: 3094, baseType: !1385, size: 1216)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1428, file: !135, line: 3095, baseType: !1415, size: 64, offset: 1216)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !670, file: !135, line: 3388, baseType: !1433, size: 1216)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1438, !1439, !1440}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1433, file: !135, line: 2825, baseType: !800, size: 896)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1433, file: !135, line: 2827, baseType: !667, size: 64, offset: 896)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1433, file: !135, line: 2828, baseType: !667, size: 64, offset: 960)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1433, file: !135, line: 2829, baseType: !667, size: 64, offset: 1024)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1433, file: !135, line: 2830, baseType: !667, size: 64, offset: 1088)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1433, file: !135, line: 2831, baseType: !667, size: 64, offset: 1152)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !670, file: !135, line: 3389, baseType: !1442, size: 1024)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !1443)
!1443 = !{!1444, !1445, !1446}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1442, file: !135, line: 2851, baseType: !838, size: 960)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1442, file: !135, line: 2852, baseType: !660, size: 32, offset: 960)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1442, file: !135, line: 2853, baseType: !660, size: 32, offset: 992)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !670, file: !135, line: 3390, baseType: !1448, size: 1024)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1448, file: !135, line: 2858, baseType: !838, size: 960)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1448, file: !135, line: 2859, baseType: !1415, size: 64, offset: 960)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !670, file: !135, line: 3391, baseType: !1453, size: 960)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !1454)
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1453, file: !135, line: 2863, baseType: !838, size: 960)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !670, file: !135, line: 3392, baseType: !1457, size: 1472)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !1458)
!1458 = !{!1459}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1457, file: !135, line: 3305, baseType: !1382, size: 1472)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !670, file: !135, line: 3393, baseType: !1461, size: 1792)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !1462)
!1462 = !{!1463, !1464, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1461, file: !135, line: 3249, baseType: !1382, size: 1472)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1461, file: !135, line: 3251, baseType: !1465, size: 64, offset: 1472)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1467, line: 463, size: 1152, elements: !1468)
!1467 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1468 = !{!1469, !1472, !1503, !1504, !1617, !1625, !1626, !1627, !1628, !1629, !1630, !1654, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1466, file: !1467, line: 464, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1467, line: 464, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1466, file: !1467, line: 467, baseType: !1473, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !343, line: 374, size: 640, elements: !1475)
!1475 = !{!1476, !1478, !1479, !1492, !1493, !1494, !1495, !1496, !1497, !1499, !1501, !1502}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1474, file: !343, line: 377, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !668, line: 111, baseType: !955)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1474, file: !343, line: 378, baseType: !1477, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1474, file: !343, line: 381, baseType: !1480, size: 64, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !343, line: 282, baseType: !1482)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !343, line: 282, size: 128, elements: !1483)
!1483 = !{!1484}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1482, file: !343, line: 282, baseType: !1485, size: 128)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !343, line: 281, baseType: !1486)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !343, line: 281, size: 128, elements: !1487)
!1487 = !{!1488, !1489, !1490}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1486, file: !343, line: 281, baseType: !7, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1486, file: !343, line: 281, baseType: !7, size: 32, offset: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1486, file: !343, line: 281, baseType: !1491, size: 64, offset: 64)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1477, size: 64, elements: !766)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1474, file: !343, line: 384, baseType: !660, size: 32, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1474, file: !343, line: 387, baseType: !660, size: 32, offset: 224)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1474, file: !343, line: 390, baseType: !660, size: 32, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1474, file: !343, line: 394, baseType: !1480, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1474, file: !343, line: 396, baseType: !342, size: 32, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1474, file: !343, line: 399, baseType: !1498, size: 64, offset: 416)
!1498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 64, elements: !910)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1474, file: !343, line: 402, baseType: !1500, size: 64, offset: 480)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !910)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1474, file: !343, line: 406, baseType: !660, size: 32, offset: 544)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1474, file: !343, line: 409, baseType: !660, size: 32, offset: 576)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1466, file: !1467, line: 470, baseType: !982, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1466, file: !1467, line: 473, baseType: !1505, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1417, line: 39, size: 1152, elements: !1507)
!1507 = !{!1508, !1556, !1569, !1581, !1582, !1594, !1595, !1599, !1600, !1601, !1602, !1603}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1506, file: !1417, line: 41, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1510, line: 144, baseType: !1511)
!1510 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1510, line: 100, size: 896, elements: !1513)
!1513 = !{!1514, !1520, !1525, !1530, !1532, !1533, !1534, !1535, !1536, !1537, !1542, !1544, !1545, !1550, !1555}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1512, file: !1510, line: 102, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1510, line: 52, baseType: !1516)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!1519, !1350}
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1510, line: 47, baseType: !7)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1512, file: !1510, line: 105, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1510, line: 59, baseType: !1522)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!660, !1350, !1350}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1512, file: !1510, line: 108, baseType: !1526, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1510, line: 63, baseType: !1527)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !664}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1512, file: !1510, line: 111, baseType: !1531, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1512, file: !1510, line: 114, baseType: !1136, size: 64, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1512, file: !1510, line: 117, baseType: !1136, size: 64, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1512, file: !1510, line: 120, baseType: !1136, size: 64, offset: 384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1512, file: !1510, line: 124, baseType: !7, size: 32, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1512, file: !1510, line: 128, baseType: !7, size: 32, offset: 480)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1512, file: !1510, line: 131, baseType: !1538, size: 64, offset: 512)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1510, line: 75, baseType: !1539)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!664, !1136, !1136}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1512, file: !1510, line: 132, baseType: !1543, size: 64, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1510, line: 78, baseType: !1527)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1512, file: !1510, line: 135, baseType: !664, size: 64, offset: 640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1512, file: !1510, line: 136, baseType: !1546, size: 64, offset: 704)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1510, line: 82, baseType: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!664, !664, !1136, !1136}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1512, file: !1510, line: 137, baseType: !1551, size: 64, offset: 768)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1510, line: 83, baseType: !1552)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !664, !664}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1512, file: !1510, line: 141, baseType: !7, size: 32, offset: 832)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1506, file: !1417, line: 48, baseType: !1557, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !574, line: 35, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !574, line: 35, size: 128, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1559, file: !574, line: 35, baseType: !1562, size: 128)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !574, line: 33, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !574, line: 33, size: 128, elements: !1564)
!1564 = !{!1565, !1566, !1567}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1563, file: !574, line: 33, baseType: !7, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1563, file: !574, line: 33, baseType: !7, size: 32, offset: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1563, file: !574, line: 33, baseType: !1568, size: 64, offset: 64)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !991, size: 64, elements: !766)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1506, file: !1417, line: 51, baseType: !1570, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !1572)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !1573)
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1572, file: !135, line: 183, baseType: !1575, size: 128)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !1577)
!1577 = !{!1578, !1579, !1580}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1576, file: !135, line: 182, baseType: !7, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1576, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1576, file: !135, line: 182, baseType: !1044, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1506, file: !1417, line: 54, baseType: !667, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1506, file: !1417, line: 57, baseType: !1583, size: 128, offset: 256)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1584, line: 31, size: 128, elements: !1585)
!1584 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591, !1592}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1583, file: !1584, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1583, file: !1584, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1583, file: !1584, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1583, file: !1584, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1583, file: !1584, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1583, file: !1584, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1583, file: !1584, line: 56, baseType: !1593, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !668, line: 47, baseType: !894)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1506, file: !1417, line: 60, baseType: !1583, size: 128, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1506, file: !1417, line: 64, baseType: !1596, size: 64, offset: 512)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1598, line: 33, flags: DIFlagFwdDecl)
!1598 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1506, file: !1417, line: 67, baseType: !667, size: 64, offset: 576)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1506, file: !1417, line: 73, baseType: !1509, size: 64, offset: 640)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1506, file: !1417, line: 77, baseType: !1593, size: 64, offset: 704)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1506, file: !1417, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1506, file: !1417, line: 82, baseType: !1604, size: 320, offset: 832)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !639, line: 62, size: 320, elements: !1605)
!1605 = !{!1606, !1612, !1613, !1614, !1615, !1616}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1604, file: !639, line: 63, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !639, line: 56, size: 128, elements: !1609)
!1609 = !{!1610, !1611}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1608, file: !639, line: 57, baseType: !1607, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1608, file: !639, line: 58, baseType: !765, size: 8, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1604, file: !639, line: 64, baseType: !7, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1604, file: !639, line: 66, baseType: !7, size: 32, offset: 96)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1604, file: !639, line: 68, baseType: !659, size: 8, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1604, file: !639, line: 70, baseType: !1020, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1604, file: !639, line: 71, baseType: !1027, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1466, file: !1467, line: 476, baseType: !1618, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !330, line: 187, size: 256, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1619, file: !330, line: 189, baseType: !660, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1619, file: !330, line: 192, baseType: !1221, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1619, file: !330, line: 197, baseType: !1509, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1619, file: !330, line: 200, baseType: !1206, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1466, file: !1467, line: 479, baseType: !1509, size: 64, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1466, file: !1467, line: 484, baseType: !667, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1466, file: !1467, line: 488, baseType: !667, size: 64, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1466, file: !1467, line: 493, baseType: !667, size: 64, offset: 512)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1466, file: !1467, line: 496, baseType: !667, size: 64, offset: 576)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1466, file: !1467, line: 501, baseType: !1631, size: 64, offset: 640)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !354, line: 2355, size: 576, elements: !1633)
!1633 = !{!1634, !1637, !1638, !1639, !1640, !1642, !1643, !1648, !1649, !1650, !1651, !1652, !1653}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1632, file: !354, line: 2356, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !354, line: 2356, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1632, file: !354, line: 2357, baseType: !665, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1632, file: !354, line: 2358, baseType: !660, size: 32, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1632, file: !354, line: 2359, baseType: !660, size: 32, offset: 160)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1632, file: !354, line: 2360, baseType: !1641, size: 128, offset: 192)
!1641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 128, elements: !934)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1632, file: !354, line: 2364, baseType: !660, size: 32, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1632, file: !354, line: 2367, baseType: !1644, size: 128, offset: 384)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !354, line: 2349, size: 128, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1644, file: !354, line: 2351, baseType: !842, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1644, file: !354, line: 2352, baseType: !723, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1632, file: !354, line: 2371, baseType: !353, size: 32, offset: 512)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1632, file: !354, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1632, file: !354, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1632, file: !354, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1632, file: !354, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1632, file: !354, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1466, file: !1467, line: 504, baseType: !1655, size: 64, offset: 704)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1467, line: 504, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1466, file: !1467, line: 507, baseType: !1509, size: 64, offset: 768)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1466, file: !1467, line: 510, baseType: !660, size: 32, offset: 832)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1466, file: !1467, line: 513, baseType: !660, size: 32, offset: 864)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1466, file: !1467, line: 516, baseType: !792, size: 32, offset: 896)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1466, file: !1467, line: 519, baseType: !792, size: 32, offset: 928)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1466, file: !1467, line: 522, baseType: !7, size: 32, offset: 960)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1466, file: !1467, line: 523, baseType: !7, size: 32, offset: 992)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1466, file: !1467, line: 528, baseType: !665, size: 64, offset: 1024)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1466, file: !1467, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1466, file: !1467, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1466, file: !1467, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1466, file: !1467, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1466, file: !1467, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1466, file: !1467, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1466, file: !1467, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1466, file: !1467, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1466, file: !1467, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1466, file: !1467, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1466, file: !1467, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1466, file: !1467, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1466, file: !1467, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1466, file: !1467, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1466, file: !1467, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1466, file: !1467, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1461, file: !135, line: 3254, baseType: !667, size: 64, offset: 1536)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1461, file: !135, line: 3257, baseType: !667, size: 64, offset: 1600)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1461, file: !135, line: 3258, baseType: !667, size: 64, offset: 1664)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1461, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1461, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1461, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1461, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1461, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1461, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1461, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1461, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1461, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1461, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1461, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1461, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1461, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1461, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1461, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1461, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1461, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1461, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !670, file: !135, line: 3394, baseType: !1703, size: 1344)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !1704)
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1703, file: !135, line: 2280, baseType: !706, size: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1703, file: !135, line: 2281, baseType: !667, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1703, file: !135, line: 2282, baseType: !667, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1703, file: !135, line: 2283, baseType: !667, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1703, file: !135, line: 2284, baseType: !667, size: 64, offset: 384)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1703, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1703, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1703, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1703, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1703, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1703, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1703, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1703, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1703, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1703, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1703, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1703, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1703, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1703, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1703, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1703, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1703, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1703, file: !135, line: 2306, baseType: !1300, size: 32, offset: 544)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1703, file: !135, line: 2307, baseType: !667, size: 64, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1703, file: !135, line: 2308, baseType: !667, size: 64, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1703, file: !135, line: 2314, baseType: !1731, size: 64, offset: 704)
!1731 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !1732)
!1732 = !{!1733, !1734, !1735}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1731, file: !135, line: 2310, baseType: !660, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1731, file: !135, line: 2311, baseType: !665, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1731, file: !135, line: 2312, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1703, file: !135, line: 2315, baseType: !667, size: 64, offset: 768)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1703, file: !135, line: 2316, baseType: !667, size: 64, offset: 832)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1703, file: !135, line: 2317, baseType: !667, size: 64, offset: 896)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1703, file: !135, line: 2318, baseType: !667, size: 64, offset: 960)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1703, file: !135, line: 2319, baseType: !667, size: 64, offset: 1024)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1703, file: !135, line: 2320, baseType: !667, size: 64, offset: 1088)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1703, file: !135, line: 2321, baseType: !667, size: 64, offset: 1152)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1703, file: !135, line: 2322, baseType: !667, size: 64, offset: 1216)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1703, file: !135, line: 2324, baseType: !1747, size: 64, offset: 1280)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !670, file: !135, line: 3395, baseType: !1750, size: 320)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !1751)
!1751 = !{!1752, !1753, !1754}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1750, file: !135, line: 1470, baseType: !706, size: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1750, file: !135, line: 1471, baseType: !667, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1750, file: !135, line: 1472, baseType: !667, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !670, file: !135, line: 3396, baseType: !1756, size: 320)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !1757)
!1757 = !{!1758, !1759, !1760}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1756, file: !135, line: 1483, baseType: !706, size: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1756, file: !135, line: 1484, baseType: !660, size: 32, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1756, file: !135, line: 1485, baseType: !1044, size: 64, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !670, file: !135, line: 3397, baseType: !1762, size: 384)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !1763)
!1763 = !{!1764, !1765, !1766, !1767}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1762, file: !135, line: 1830, baseType: !706, size: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1762, file: !135, line: 1831, baseType: !792, size: 32, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1762, file: !135, line: 1832, baseType: !667, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1762, file: !135, line: 1835, baseType: !1044, size: 64, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !670, file: !135, line: 3398, baseType: !1769, size: 704)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1780}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1769, file: !135, line: 1899, baseType: !706, size: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1769, file: !135, line: 1902, baseType: !667, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1769, file: !135, line: 1905, baseType: !991, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1769, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1769, file: !135, line: 1911, baseType: !1776, size: 64, offset: 384)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1417, line: 117, size: 128, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1777, file: !1417, line: 120, baseType: !1583, size: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1769, file: !135, line: 1914, baseType: !1032, size: 256, offset: 448)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !670, file: !135, line: 3399, baseType: !1782, size: 704)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !1783)
!1783 = !{!1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1782, file: !135, line: 2009, baseType: !706, size: 192)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1782, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1782, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1782, file: !135, line: 2014, baseType: !792, size: 32, offset: 224)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1782, file: !135, line: 2016, baseType: !667, size: 64, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1782, file: !135, line: 2017, baseType: !1570, size: 64, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1782, file: !135, line: 2019, baseType: !667, size: 64, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1782, file: !135, line: 2020, baseType: !667, size: 64, offset: 448)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1782, file: !135, line: 2021, baseType: !667, size: 64, offset: 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1782, file: !135, line: 2022, baseType: !667, size: 64, offset: 576)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1782, file: !135, line: 2023, baseType: !667, size: 64, offset: 640)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !670, file: !135, line: 3400, baseType: !1796, size: 832)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !1797)
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1796, file: !135, line: 2431, baseType: !706, size: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1796, file: !135, line: 2433, baseType: !667, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1796, file: !135, line: 2434, baseType: !667, size: 64, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1796, file: !135, line: 2435, baseType: !667, size: 64, offset: 320)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1796, file: !135, line: 2436, baseType: !667, size: 64, offset: 384)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1796, file: !135, line: 2437, baseType: !1570, size: 64, offset: 448)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1796, file: !135, line: 2438, baseType: !667, size: 64, offset: 512)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1796, file: !135, line: 2440, baseType: !667, size: 64, offset: 576)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1796, file: !135, line: 2441, baseType: !667, size: 64, offset: 640)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1796, file: !135, line: 2443, baseType: !1808, size: 128, offset: 704)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !1809)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !1810)
!1810 = !{!1811}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1809, file: !135, line: 182, baseType: !1575, size: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !670, file: !135, line: 3401, baseType: !1813, size: 320)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !1814)
!1814 = !{!1815, !1816, !1823}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1813, file: !135, line: 3329, baseType: !706, size: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1813, file: !135, line: 3330, baseType: !1817, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !1819)
!1819 = !{!1820, !1821, !1822}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1818, file: !135, line: 3322, baseType: !1817, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1818, file: !135, line: 3323, baseType: !1817, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1818, file: !135, line: 3324, baseType: !667, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1813, file: !135, line: 3331, baseType: !1817, size: 64, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !670, file: !135, line: 3402, baseType: !1825, size: 256)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1825, file: !135, line: 1541, baseType: !706, size: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1825, file: !135, line: 1542, baseType: !1829, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !1831)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !1832)
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1831, file: !135, line: 1538, baseType: !1834, size: 192)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !1836)
!1836 = !{!1837, !1838, !1839}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1835, file: !135, line: 1537, baseType: !7, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1835, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1835, file: !135, line: 1537, baseType: !1840, size: 128, offset: 64)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1841, size: 128, elements: !766)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !1842)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1842, file: !135, line: 1533, baseType: !667, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1842, file: !135, line: 1534, baseType: !667, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !670, file: !135, line: 3403, baseType: !1847, size: 512)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !1848)
!1848 = !{!1849, !1850, !1851, !1852, !1858, !1859, !1860}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1847, file: !135, line: 1939, baseType: !706, size: 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1847, file: !135, line: 1940, baseType: !792, size: 32, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1847, file: !135, line: 1941, baseType: !358, size: 32, offset: 224)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1847, file: !135, line: 1946, baseType: !1853, size: 32, offset: 256)
!1853 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !1854)
!1854 = !{!1855, !1856, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1853, file: !135, line: 1943, baseType: !376, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1853, file: !135, line: 1944, baseType: !383, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1853, file: !135, line: 1945, baseType: !134, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1847, file: !135, line: 1950, baseType: !981, size: 64, offset: 320)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1847, file: !135, line: 1951, baseType: !981, size: 64, offset: 384)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1847, file: !135, line: 1953, baseType: !1044, size: 64, offset: 448)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !670, file: !135, line: 3404, baseType: !1862, size: 1664)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1862, file: !135, line: 3338, baseType: !706, size: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1862, file: !135, line: 3341, baseType: !1866, size: 1472, offset: 192)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1867, line: 410, size: 1472, elements: !1868)
!1867 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1866, file: !1867, line: 412, baseType: !660, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1866, file: !1867, line: 413, baseType: !660, size: 32, offset: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1866, file: !1867, line: 414, baseType: !660, size: 32, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1866, file: !1867, line: 415, baseType: !660, size: 32, offset: 96)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1866, file: !1867, line: 416, baseType: !660, size: 32, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1866, file: !1867, line: 417, baseType: !660, size: 32, offset: 160)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1866, file: !1867, line: 418, baseType: !659, size: 8, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1866, file: !1867, line: 419, baseType: !659, size: 8, offset: 200)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1866, file: !1867, line: 420, baseType: !1878, size: 8, offset: 208)
!1878 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1866, file: !1867, line: 421, baseType: !1878, size: 8, offset: 216)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1866, file: !1867, line: 422, baseType: !1878, size: 8, offset: 224)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1866, file: !1867, line: 423, baseType: !1878, size: 8, offset: 232)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1866, file: !1867, line: 424, baseType: !1878, size: 8, offset: 240)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1866, file: !1867, line: 425, baseType: !1878, size: 8, offset: 248)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1866, file: !1867, line: 426, baseType: !1878, size: 8, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1866, file: !1867, line: 427, baseType: !1878, size: 8, offset: 264)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1866, file: !1867, line: 428, baseType: !1878, size: 8, offset: 272)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1866, file: !1867, line: 429, baseType: !1878, size: 8, offset: 280)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1866, file: !1867, line: 430, baseType: !1878, size: 8, offset: 288)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1866, file: !1867, line: 431, baseType: !1878, size: 8, offset: 296)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1866, file: !1867, line: 432, baseType: !1878, size: 8, offset: 304)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1866, file: !1867, line: 433, baseType: !1878, size: 8, offset: 312)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1866, file: !1867, line: 434, baseType: !1878, size: 8, offset: 320)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1866, file: !1867, line: 435, baseType: !1878, size: 8, offset: 328)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1866, file: !1867, line: 436, baseType: !1878, size: 8, offset: 336)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1866, file: !1867, line: 437, baseType: !1878, size: 8, offset: 344)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1866, file: !1867, line: 438, baseType: !1878, size: 8, offset: 352)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1866, file: !1867, line: 439, baseType: !1878, size: 8, offset: 360)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1866, file: !1867, line: 440, baseType: !1878, size: 8, offset: 368)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1866, file: !1867, line: 441, baseType: !1878, size: 8, offset: 376)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1866, file: !1867, line: 442, baseType: !1878, size: 8, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1866, file: !1867, line: 443, baseType: !1878, size: 8, offset: 392)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1866, file: !1867, line: 444, baseType: !1878, size: 8, offset: 400)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1866, file: !1867, line: 445, baseType: !1878, size: 8, offset: 408)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1866, file: !1867, line: 446, baseType: !1878, size: 8, offset: 416)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1866, file: !1867, line: 447, baseType: !1878, size: 8, offset: 424)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1866, file: !1867, line: 448, baseType: !1878, size: 8, offset: 432)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1866, file: !1867, line: 449, baseType: !1878, size: 8, offset: 440)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1866, file: !1867, line: 450, baseType: !1878, size: 8, offset: 448)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1866, file: !1867, line: 451, baseType: !1878, size: 8, offset: 456)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1866, file: !1867, line: 452, baseType: !1878, size: 8, offset: 464)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1866, file: !1867, line: 453, baseType: !1878, size: 8, offset: 472)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1866, file: !1867, line: 454, baseType: !1878, size: 8, offset: 480)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1866, file: !1867, line: 455, baseType: !1878, size: 8, offset: 488)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1866, file: !1867, line: 456, baseType: !1878, size: 8, offset: 496)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1866, file: !1867, line: 457, baseType: !1878, size: 8, offset: 504)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1866, file: !1867, line: 458, baseType: !1878, size: 8, offset: 512)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1866, file: !1867, line: 459, baseType: !1878, size: 8, offset: 520)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1866, file: !1867, line: 460, baseType: !1878, size: 8, offset: 528)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1866, file: !1867, line: 461, baseType: !1878, size: 8, offset: 536)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1866, file: !1867, line: 462, baseType: !1878, size: 8, offset: 544)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1866, file: !1867, line: 463, baseType: !1878, size: 8, offset: 552)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1866, file: !1867, line: 464, baseType: !1878, size: 8, offset: 560)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1866, file: !1867, line: 465, baseType: !1878, size: 8, offset: 568)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1866, file: !1867, line: 466, baseType: !1878, size: 8, offset: 576)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1866, file: !1867, line: 467, baseType: !1878, size: 8, offset: 584)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1866, file: !1867, line: 468, baseType: !1878, size: 8, offset: 592)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1866, file: !1867, line: 469, baseType: !1878, size: 8, offset: 600)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1866, file: !1867, line: 470, baseType: !1878, size: 8, offset: 608)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1866, file: !1867, line: 471, baseType: !1878, size: 8, offset: 616)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1866, file: !1867, line: 472, baseType: !1878, size: 8, offset: 624)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1866, file: !1867, line: 473, baseType: !1878, size: 8, offset: 632)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1866, file: !1867, line: 474, baseType: !1878, size: 8, offset: 640)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1866, file: !1867, line: 475, baseType: !1878, size: 8, offset: 648)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1866, file: !1867, line: 476, baseType: !1878, size: 8, offset: 656)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1866, file: !1867, line: 477, baseType: !1878, size: 8, offset: 664)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1866, file: !1867, line: 478, baseType: !1878, size: 8, offset: 672)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1866, file: !1867, line: 479, baseType: !1878, size: 8, offset: 680)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1866, file: !1867, line: 480, baseType: !1878, size: 8, offset: 688)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1866, file: !1867, line: 481, baseType: !1878, size: 8, offset: 696)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1866, file: !1867, line: 482, baseType: !1878, size: 8, offset: 704)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1866, file: !1867, line: 483, baseType: !1878, size: 8, offset: 712)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1866, file: !1867, line: 484, baseType: !1878, size: 8, offset: 720)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1866, file: !1867, line: 485, baseType: !1878, size: 8, offset: 728)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1866, file: !1867, line: 486, baseType: !1878, size: 8, offset: 736)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1866, file: !1867, line: 487, baseType: !1878, size: 8, offset: 744)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1866, file: !1867, line: 488, baseType: !1878, size: 8, offset: 752)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1866, file: !1867, line: 489, baseType: !1878, size: 8, offset: 760)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1866, file: !1867, line: 490, baseType: !1878, size: 8, offset: 768)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1866, file: !1867, line: 491, baseType: !1878, size: 8, offset: 776)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1866, file: !1867, line: 492, baseType: !1878, size: 8, offset: 784)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1866, file: !1867, line: 493, baseType: !1878, size: 8, offset: 792)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1866, file: !1867, line: 494, baseType: !1878, size: 8, offset: 800)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1866, file: !1867, line: 495, baseType: !1878, size: 8, offset: 808)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1866, file: !1867, line: 496, baseType: !1878, size: 8, offset: 816)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1866, file: !1867, line: 497, baseType: !1878, size: 8, offset: 824)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1866, file: !1867, line: 498, baseType: !1878, size: 8, offset: 832)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1866, file: !1867, line: 499, baseType: !1878, size: 8, offset: 840)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1866, file: !1867, line: 500, baseType: !1878, size: 8, offset: 848)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1866, file: !1867, line: 501, baseType: !1878, size: 8, offset: 856)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1866, file: !1867, line: 502, baseType: !1878, size: 8, offset: 864)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1866, file: !1867, line: 503, baseType: !1878, size: 8, offset: 872)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1866, file: !1867, line: 504, baseType: !1878, size: 8, offset: 880)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1866, file: !1867, line: 505, baseType: !1878, size: 8, offset: 888)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1866, file: !1867, line: 506, baseType: !1878, size: 8, offset: 896)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1866, file: !1867, line: 507, baseType: !1878, size: 8, offset: 904)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1866, file: !1867, line: 508, baseType: !1878, size: 8, offset: 912)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1866, file: !1867, line: 509, baseType: !1878, size: 8, offset: 920)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1866, file: !1867, line: 510, baseType: !1878, size: 8, offset: 928)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1866, file: !1867, line: 511, baseType: !1878, size: 8, offset: 936)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1866, file: !1867, line: 512, baseType: !1878, size: 8, offset: 944)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1866, file: !1867, line: 513, baseType: !1878, size: 8, offset: 952)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1866, file: !1867, line: 514, baseType: !1878, size: 8, offset: 960)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1866, file: !1867, line: 515, baseType: !1878, size: 8, offset: 968)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1866, file: !1867, line: 516, baseType: !1878, size: 8, offset: 976)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1866, file: !1867, line: 517, baseType: !1878, size: 8, offset: 984)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1866, file: !1867, line: 518, baseType: !1878, size: 8, offset: 992)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1866, file: !1867, line: 519, baseType: !1878, size: 8, offset: 1000)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1866, file: !1867, line: 520, baseType: !1878, size: 8, offset: 1008)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1866, file: !1867, line: 521, baseType: !1878, size: 8, offset: 1016)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1866, file: !1867, line: 522, baseType: !1878, size: 8, offset: 1024)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1866, file: !1867, line: 523, baseType: !1878, size: 8, offset: 1032)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1866, file: !1867, line: 524, baseType: !1878, size: 8, offset: 1040)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1866, file: !1867, line: 525, baseType: !1878, size: 8, offset: 1048)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1866, file: !1867, line: 526, baseType: !1878, size: 8, offset: 1056)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1866, file: !1867, line: 527, baseType: !1878, size: 8, offset: 1064)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1866, file: !1867, line: 528, baseType: !1878, size: 8, offset: 1072)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1866, file: !1867, line: 529, baseType: !1878, size: 8, offset: 1080)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1866, file: !1867, line: 530, baseType: !1878, size: 8, offset: 1088)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1866, file: !1867, line: 531, baseType: !1878, size: 8, offset: 1096)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1866, file: !1867, line: 532, baseType: !1878, size: 8, offset: 1104)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1866, file: !1867, line: 533, baseType: !1878, size: 8, offset: 1112)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1866, file: !1867, line: 534, baseType: !1878, size: 8, offset: 1120)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1866, file: !1867, line: 535, baseType: !1878, size: 8, offset: 1128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1866, file: !1867, line: 536, baseType: !1878, size: 8, offset: 1136)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1866, file: !1867, line: 537, baseType: !1878, size: 8, offset: 1144)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1866, file: !1867, line: 538, baseType: !1878, size: 8, offset: 1152)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1866, file: !1867, line: 539, baseType: !1878, size: 8, offset: 1160)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1866, file: !1867, line: 540, baseType: !1878, size: 8, offset: 1168)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1866, file: !1867, line: 541, baseType: !1878, size: 8, offset: 1176)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1866, file: !1867, line: 542, baseType: !1878, size: 8, offset: 1184)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1866, file: !1867, line: 543, baseType: !1878, size: 8, offset: 1192)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1866, file: !1867, line: 544, baseType: !1878, size: 8, offset: 1200)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1866, file: !1867, line: 545, baseType: !1878, size: 8, offset: 1208)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1866, file: !1867, line: 546, baseType: !1878, size: 8, offset: 1216)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1866, file: !1867, line: 547, baseType: !1878, size: 8, offset: 1224)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1866, file: !1867, line: 548, baseType: !1878, size: 8, offset: 1232)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1866, file: !1867, line: 549, baseType: !1878, size: 8, offset: 1240)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1866, file: !1867, line: 550, baseType: !1878, size: 8, offset: 1248)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1866, file: !1867, line: 551, baseType: !1878, size: 8, offset: 1256)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1866, file: !1867, line: 552, baseType: !1878, size: 8, offset: 1264)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1866, file: !1867, line: 553, baseType: !1878, size: 8, offset: 1272)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1866, file: !1867, line: 554, baseType: !1878, size: 8, offset: 1280)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1866, file: !1867, line: 555, baseType: !1878, size: 8, offset: 1288)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1866, file: !1867, line: 556, baseType: !1878, size: 8, offset: 1296)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1866, file: !1867, line: 557, baseType: !1878, size: 8, offset: 1304)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1866, file: !1867, line: 558, baseType: !1878, size: 8, offset: 1312)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1866, file: !1867, line: 559, baseType: !1878, size: 8, offset: 1320)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1866, file: !1867, line: 560, baseType: !1878, size: 8, offset: 1328)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1866, file: !1867, line: 561, baseType: !1878, size: 8, offset: 1336)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1866, file: !1867, line: 562, baseType: !1878, size: 8, offset: 1344)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1866, file: !1867, line: 563, baseType: !1878, size: 8, offset: 1352)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1866, file: !1867, line: 564, baseType: !1878, size: 8, offset: 1360)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1866, file: !1867, line: 565, baseType: !1878, size: 8, offset: 1368)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1866, file: !1867, line: 566, baseType: !1878, size: 8, offset: 1376)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1866, file: !1867, line: 567, baseType: !1878, size: 8, offset: 1384)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1866, file: !1867, line: 568, baseType: !1878, size: 8, offset: 1392)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1866, file: !1867, line: 569, baseType: !1878, size: 8, offset: 1400)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1866, file: !1867, line: 570, baseType: !1878, size: 8, offset: 1408)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1866, file: !1867, line: 571, baseType: !1878, size: 8, offset: 1416)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1866, file: !1867, line: 572, baseType: !1878, size: 8, offset: 1424)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1866, file: !1867, line: 573, baseType: !1878, size: 8, offset: 1432)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1866, file: !1867, line: 574, baseType: !1878, size: 8, offset: 1440)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !670, file: !135, line: 3405, baseType: !2034, size: 384)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !2035)
!2035 = !{!2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2034, file: !135, line: 3353, baseType: !706, size: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2034, file: !135, line: 3356, baseType: !2038, size: 192, offset: 192)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1867, line: 578, size: 192, elements: !2039)
!2039 = !{!2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2038, file: !1867, line: 580, baseType: !660, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2038, file: !1867, line: 581, baseType: !660, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2038, file: !1867, line: 582, baseType: !660, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2038, file: !1867, line: 583, baseType: !660, size: 32, offset: 96)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2038, file: !1867, line: 584, baseType: !659, size: 8, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2038, file: !1867, line: 585, baseType: !659, size: 8, offset: 136)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2038, file: !1867, line: 586, baseType: !659, size: 8, offset: 144)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2038, file: !1867, line: 587, baseType: !659, size: 8, offset: 152)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2038, file: !1867, line: 588, baseType: !659, size: 8, offset: 160)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2038, file: !1867, line: 589, baseType: !659, size: 8, offset: 168)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2038, file: !1867, line: 590, baseType: !659, size: 8, offset: 176)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !993)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "prop_value_t", file: !652, line: 74, baseType: !2055)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prop_value_d", file: !652, line: 64, size: 128, elements: !2056)
!2056 = !{!2057, !2058}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "lattice_val", scope: !2055, file: !652, line: 68, baseType: !7, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2055, file: !652, line: 71, baseType: !667, size: 64, offset: 64)
!2059 = !{!0, !2060, !2062}
!2060 = !DIGlobalVariableExpression(var: !2061, expr: !DIExpression())
!2061 = distinct !DIGlobalVariable(name: "copy_of", scope: !2, file: !3, line: 290, type: !2053, isLocal: true, isDefinition: true)
!2062 = !DIGlobalVariableExpression(var: !2063, expr: !DIExpression())
!2063 = distinct !DIGlobalVariable(name: "cached_last_copy_of", scope: !2, file: !3, line: 294, type: !1025, isLocal: true, isDefinition: true)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !391, line: 156, size: 640, elements: !2065)
!2065 = !{!2066}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2064, file: !391, line: 158, baseType: !2067, size: 640)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !391, line: 114, size: 640, elements: !2068)
!2068 = !{!2069, !2070, !2071, !2075, !2079, !2081, !2082, !2083, !2085, !2086, !2087, !2088, !2089}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2067, file: !391, line: 117, baseType: !390, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2067, file: !391, line: 121, baseType: !665, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2067, file: !391, line: 125, baseType: !2072, size: 64, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!659}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2067, file: !391, line: 130, baseType: !2076, size: 64, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!7}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2067, file: !391, line: 133, baseType: !2080, size: 64, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2067, file: !391, line: 136, baseType: !2080, size: 64, offset: 320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2067, file: !391, line: 139, baseType: !660, size: 32, offset: 384)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2067, file: !391, line: 143, baseType: !2084, size: 32, offset: 416)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !398, line: 80, baseType: !397)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2067, file: !391, line: 146, baseType: !7, size: 32, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2067, file: !391, line: 147, baseType: !7, size: 32, offset: 480)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2067, file: !391, line: 148, baseType: !7, size: 32, offset: 512)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2067, file: !391, line: 151, baseType: !7, size: 32, offset: 544)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2067, file: !391, line: 152, baseType: !7, size: 32, offset: 576)
!2090 = !{i32 2, !"Dwarf Version", i32 4}
!2091 = !{i32 2, !"Debug Info Version", i32 3}
!2092 = !{i32 1, !"wchar_size", i32 4}
!2093 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2094 = distinct !DISubprogram(name: "vprintf", scope: !2095, file: !2095, line: 39, type: !2096, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2106)
!2095 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!660, !2098, !2099}
!2098 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !665)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2105}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2100, file: !3, baseType: !7, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2100, file: !3, baseType: !7, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2100, file: !3, baseType: !664, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2100, file: !3, baseType: !664, size: 64, offset: 128)
!2106 = !{!2107, !2108}
!2107 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2094, file: !2095, line: 39, type: !2098)
!2108 = !DILocalVariable(name: "__arg", arg: 2, scope: !2094, file: !2095, line: 39, type: !2099)
!2109 = !DILocation(line: 0, scope: !2094)
!2110 = !DILocation(line: 41, column: 20, scope: !2094)
!2111 = !DILocation(line: 41, column: 10, scope: !2094)
!2112 = !DILocation(line: 41, column: 3, scope: !2094)
!2113 = distinct !DISubprogram(name: "getchar", scope: !2095, file: !2095, line: 47, type: !2114, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!660}
!2116 = !{}
!2117 = !DILocation(line: 49, column: 16, scope: !2113)
!2118 = !DILocation(line: 49, column: 10, scope: !2113)
!2119 = !DILocation(line: 49, column: 3, scope: !2113)
!2120 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2095, file: !2095, line: 56, type: !2121, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2174)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!660, !2123}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2125, line: 7, baseType: !2126)
!2125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2127, line: 49, size: 1728, elements: !2128)
!2127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2144, !2146, !2147, !2148, !2151, !2153, !2154, !2155, !2158, !2160, !2163, !2166, !2167, !2168, !2169, !2170}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2126, file: !2127, line: 51, baseType: !660, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2126, file: !2127, line: 54, baseType: !662, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2126, file: !2127, line: 55, baseType: !662, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2126, file: !2127, line: 56, baseType: !662, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2126, file: !2127, line: 57, baseType: !662, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2126, file: !2127, line: 58, baseType: !662, size: 64, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2126, file: !2127, line: 59, baseType: !662, size: 64, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2126, file: !2127, line: 60, baseType: !662, size: 64, offset: 448)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2126, file: !2127, line: 61, baseType: !662, size: 64, offset: 512)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2126, file: !2127, line: 64, baseType: !662, size: 64, offset: 576)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2126, file: !2127, line: 65, baseType: !662, size: 64, offset: 640)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2126, file: !2127, line: 66, baseType: !662, size: 64, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2126, file: !2127, line: 68, baseType: !2142, size: 64, offset: 768)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2127, line: 36, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2126, file: !2127, line: 70, baseType: !2145, size: 64, offset: 832)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2126, file: !2127, line: 72, baseType: !660, size: 32, offset: 896)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2126, file: !2127, line: 73, baseType: !660, size: 32, offset: 928)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2126, file: !2127, line: 74, baseType: !2149, size: 64, offset: 960)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2150, line: 152, baseType: !723)
!2150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2126, file: !2127, line: 77, baseType: !2152, size: 16, offset: 1024)
!2152 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2126, file: !2127, line: 78, baseType: !1878, size: 8, offset: 1040)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2126, file: !2127, line: 79, baseType: !765, size: 8, offset: 1048)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2126, file: !2127, line: 81, baseType: !2156, size: 64, offset: 1088)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2127, line: 43, baseType: null)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2126, file: !2127, line: 89, baseType: !2159, size: 64, offset: 1152)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2150, line: 153, baseType: !723)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2126, file: !2127, line: 91, baseType: !2161, size: 64, offset: 1216)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2127, line: 37, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2126, file: !2127, line: 92, baseType: !2164, size: 64, offset: 1280)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2127, line: 38, flags: DIFlagFwdDecl)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2126, file: !2127, line: 93, baseType: !2145, size: 64, offset: 1344)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2126, file: !2127, line: 94, baseType: !664, size: 64, offset: 1408)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2126, file: !2127, line: 95, baseType: !1136, size: 64, offset: 1472)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2126, file: !2127, line: 96, baseType: !660, size: 32, offset: 1536)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2126, file: !2127, line: 98, baseType: !2171, size: 160, offset: 1568)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 160, elements: !2172)
!2172 = !{!2173}
!2173 = !DISubrange(count: 20)
!2174 = !{!2175}
!2175 = !DILocalVariable(name: "__fp", arg: 1, scope: !2120, file: !2095, line: 56, type: !2123)
!2176 = !DILocation(line: 0, scope: !2120)
!2177 = !DILocation(line: 58, column: 10, scope: !2120)
!2178 = !DILocation(line: 58, column: 3, scope: !2120)
!2179 = distinct !DISubprogram(name: "getc_unlocked", scope: !2095, file: !2095, line: 66, type: !2121, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2180)
!2180 = !{!2181}
!2181 = !DILocalVariable(name: "__fp", arg: 1, scope: !2179, file: !2095, line: 66, type: !2123)
!2182 = !DILocation(line: 0, scope: !2179)
!2183 = !DILocation(line: 68, column: 10, scope: !2179)
!2184 = !DILocation(line: 68, column: 3, scope: !2179)
!2185 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2095, file: !2095, line: 73, type: !2114, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2186 = !DILocation(line: 75, column: 10, scope: !2185)
!2187 = !DILocation(line: 75, column: 3, scope: !2185)
!2188 = distinct !DISubprogram(name: "putchar", scope: !2095, file: !2095, line: 82, type: !2189, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2191)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!660, !660}
!2191 = !{!2192}
!2192 = !DILocalVariable(name: "__c", arg: 1, scope: !2188, file: !2095, line: 82, type: !660)
!2193 = !DILocation(line: 0, scope: !2188)
!2194 = !DILocation(line: 84, column: 21, scope: !2188)
!2195 = !DILocation(line: 84, column: 10, scope: !2188)
!2196 = !DILocation(line: 84, column: 3, scope: !2188)
!2197 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2095, file: !2095, line: 91, type: !2198, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2200)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!660, !660, !2123}
!2200 = !{!2201, !2202}
!2201 = !DILocalVariable(name: "__c", arg: 1, scope: !2197, file: !2095, line: 91, type: !660)
!2202 = !DILocalVariable(name: "__stream", arg: 2, scope: !2197, file: !2095, line: 91, type: !2123)
!2203 = !DILocation(line: 0, scope: !2197)
!2204 = !DILocation(line: 93, column: 10, scope: !2197)
!2205 = !DILocation(line: 93, column: 3, scope: !2197)
!2206 = distinct !DISubprogram(name: "putc_unlocked", scope: !2095, file: !2095, line: 101, type: !2198, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2207)
!2207 = !{!2208, !2209}
!2208 = !DILocalVariable(name: "__c", arg: 1, scope: !2206, file: !2095, line: 101, type: !660)
!2209 = !DILocalVariable(name: "__stream", arg: 2, scope: !2206, file: !2095, line: 101, type: !2123)
!2210 = !DILocation(line: 0, scope: !2206)
!2211 = !DILocation(line: 103, column: 10, scope: !2206)
!2212 = !DILocation(line: 103, column: 3, scope: !2206)
!2213 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2095, file: !2095, line: 108, type: !2189, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2214)
!2214 = !{!2215}
!2215 = !DILocalVariable(name: "__c", arg: 1, scope: !2213, file: !2095, line: 108, type: !660)
!2216 = !DILocation(line: 0, scope: !2213)
!2217 = !DILocation(line: 110, column: 10, scope: !2213)
!2218 = !DILocation(line: 110, column: 3, scope: !2213)
!2219 = distinct !DISubprogram(name: "getline", scope: !2095, file: !2095, line: 118, type: !2220, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2224)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!2222, !661, !2223, !2123}
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2150, line: 193, baseType: !723)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!2224 = !{!2225, !2226, !2227}
!2225 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2219, file: !2095, line: 118, type: !661)
!2226 = !DILocalVariable(name: "__n", arg: 2, scope: !2219, file: !2095, line: 118, type: !2223)
!2227 = !DILocalVariable(name: "__stream", arg: 3, scope: !2219, file: !2095, line: 118, type: !2123)
!2228 = !DILocation(line: 0, scope: !2219)
!2229 = !DILocation(line: 120, column: 10, scope: !2219)
!2230 = !DILocation(line: 120, column: 3, scope: !2219)
!2231 = distinct !DISubprogram(name: "feof_unlocked", scope: !2095, file: !2095, line: 128, type: !2121, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2232 = !{!2233}
!2233 = !DILocalVariable(name: "__stream", arg: 1, scope: !2231, file: !2095, line: 128, type: !2123)
!2234 = !DILocation(line: 0, scope: !2231)
!2235 = !DILocation(line: 130, column: 10, scope: !2231)
!2236 = !DILocation(line: 130, column: 3, scope: !2231)
!2237 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2095, file: !2095, line: 135, type: !2121, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2238)
!2238 = !{!2239}
!2239 = !DILocalVariable(name: "__stream", arg: 1, scope: !2237, file: !2095, line: 135, type: !2123)
!2240 = !DILocation(line: 0, scope: !2237)
!2241 = !DILocation(line: 137, column: 10, scope: !2237)
!2242 = !DILocation(line: 137, column: 3, scope: !2237)
!2243 = distinct !DISubprogram(name: "tolower", scope: !2244, file: !2244, line: 207, type: !2189, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2245)
!2244 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2245 = !{!2246}
!2246 = !DILocalVariable(name: "__c", arg: 1, scope: !2243, file: !2244, line: 207, type: !660)
!2247 = !DILocation(line: 0, scope: !2243)
!2248 = !DILocation(line: 209, column: 22, scope: !2243)
!2249 = !DILocation(line: 209, column: 39, scope: !2243)
!2250 = !DILocation(line: 209, column: 38, scope: !2243)
!2251 = !DILocation(line: 209, column: 37, scope: !2243)
!2252 = !DILocation(line: 209, column: 10, scope: !2243)
!2253 = !DILocation(line: 209, column: 3, scope: !2243)
!2254 = distinct !DISubprogram(name: "toupper", scope: !2244, file: !2244, line: 213, type: !2189, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2255)
!2255 = !{!2256}
!2256 = !DILocalVariable(name: "__c", arg: 1, scope: !2254, file: !2244, line: 213, type: !660)
!2257 = !DILocation(line: 0, scope: !2254)
!2258 = !DILocation(line: 215, column: 22, scope: !2254)
!2259 = !DILocation(line: 215, column: 39, scope: !2254)
!2260 = !DILocation(line: 215, column: 38, scope: !2254)
!2261 = !DILocation(line: 215, column: 37, scope: !2254)
!2262 = !DILocation(line: 215, column: 10, scope: !2254)
!2263 = !DILocation(line: 215, column: 3, scope: !2254)
!2264 = distinct !DISubprogram(name: "atoi", scope: !2265, file: !2265, line: 361, type: !2266, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2268)
!2265 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!660, !665}
!2268 = !{!2269}
!2269 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2264, file: !2265, line: 361, type: !665)
!2270 = !DILocation(line: 0, scope: !2264)
!2271 = !DILocation(line: 363, column: 16, scope: !2264)
!2272 = !DILocation(line: 363, column: 10, scope: !2264)
!2273 = !DILocation(line: 363, column: 3, scope: !2264)
!2274 = distinct !DISubprogram(name: "atol", scope: !2265, file: !2265, line: 366, type: !2275, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!723, !665}
!2277 = !{!2278}
!2278 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2274, file: !2265, line: 366, type: !665)
!2279 = !DILocation(line: 0, scope: !2274)
!2280 = !DILocation(line: 368, column: 10, scope: !2274)
!2281 = !DILocation(line: 368, column: 3, scope: !2274)
!2282 = distinct !DISubprogram(name: "atoll", scope: !2265, file: !2265, line: 373, type: !2283, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2286)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!2285, !665}
!2285 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2286 = !{!2287}
!2287 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2282, file: !2265, line: 373, type: !665)
!2288 = !DILocation(line: 0, scope: !2282)
!2289 = !DILocation(line: 375, column: 10, scope: !2282)
!2290 = !DILocation(line: 375, column: 3, scope: !2282)
!2291 = distinct !DISubprogram(name: "bsearch", scope: !2292, file: !2292, line: 20, type: !2293, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2296)
!2292 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!664, !1350, !1350, !1136, !1136, !2295}
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2265, line: 808, baseType: !1522)
!2296 = !{!2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306}
!2297 = !DILocalVariable(name: "__key", arg: 1, scope: !2291, file: !2292, line: 20, type: !1350)
!2298 = !DILocalVariable(name: "__base", arg: 2, scope: !2291, file: !2292, line: 20, type: !1350)
!2299 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2291, file: !2292, line: 20, type: !1136)
!2300 = !DILocalVariable(name: "__size", arg: 4, scope: !2291, file: !2292, line: 20, type: !1136)
!2301 = !DILocalVariable(name: "__compar", arg: 5, scope: !2291, file: !2292, line: 21, type: !2295)
!2302 = !DILocalVariable(name: "__l", scope: !2291, file: !2292, line: 23, type: !1136)
!2303 = !DILocalVariable(name: "__u", scope: !2291, file: !2292, line: 23, type: !1136)
!2304 = !DILocalVariable(name: "__idx", scope: !2291, file: !2292, line: 23, type: !1136)
!2305 = !DILocalVariable(name: "__p", scope: !2291, file: !2292, line: 24, type: !1350)
!2306 = !DILocalVariable(name: "__comparison", scope: !2291, file: !2292, line: 25, type: !660)
!2307 = !DILocation(line: 0, scope: !2291)
!2308 = !DILocation(line: 29, column: 3, scope: !2291)
!2309 = !DILocation(line: 27, column: 7, scope: !2291)
!2310 = !DILocation(line: 29, column: 14, scope: !2291)
!2311 = !DILocation(line: 31, column: 20, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2291, file: !2292, line: 30, column: 5)
!2313 = !DILocation(line: 31, column: 27, scope: !2312)
!2314 = !DILocation(line: 32, column: 56, scope: !2312)
!2315 = !DILocation(line: 32, column: 47, scope: !2312)
!2316 = !DILocation(line: 33, column: 22, scope: !2312)
!2317 = !DILocation(line: 34, column: 24, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2312, file: !2292, line: 34, column: 11)
!2319 = !DILocation(line: 34, column: 11, scope: !2312)
!2320 = !DILocation(line: 36, column: 29, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2318, file: !2292, line: 36, column: 16)
!2322 = !DILocation(line: 36, column: 16, scope: !2318)
!2323 = !DILocation(line: 37, column: 14, scope: !2321)
!2324 = distinct !{!2324, !2308, !2325}
!2325 = !DILocation(line: 40, column: 5, scope: !2291)
!2326 = !DILocation(line: 43, column: 1, scope: !2291)
!2327 = distinct !DISubprogram(name: "atof", scope: !2328, file: !2328, line: 25, type: !2329, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2332)
!2328 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!2331, !665}
!2331 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2332 = !{!2333}
!2333 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2327, file: !2328, line: 25, type: !665)
!2334 = !DILocation(line: 0, scope: !2327)
!2335 = !DILocation(line: 27, column: 10, scope: !2327)
!2336 = !DILocation(line: 27, column: 3, scope: !2327)
!2337 = distinct !DISubprogram(name: "strtoimax", scope: !2338, file: !2338, line: 324, type: !2339, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2345)
!2338 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!2341, !2098, !2344, !660}
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2342, line: 101, baseType: !2343)
!2342 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2150, line: 72, baseType: !723)
!2344 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !661)
!2345 = !{!2346, !2347, !2348}
!2346 = !DILocalVariable(name: "nptr", arg: 1, scope: !2337, file: !2338, line: 324, type: !2098)
!2347 = !DILocalVariable(name: "endptr", arg: 2, scope: !2337, file: !2338, line: 324, type: !2344)
!2348 = !DILocalVariable(name: "base", arg: 3, scope: !2337, file: !2338, line: 324, type: !660)
!2349 = !DILocation(line: 0, scope: !2337)
!2350 = !DILocation(line: 327, column: 10, scope: !2337)
!2351 = !DILocation(line: 327, column: 3, scope: !2337)
!2352 = distinct !DISubprogram(name: "strtoumax", scope: !2338, file: !2338, line: 336, type: !2353, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2357)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!2355, !2098, !2344, !660}
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2342, line: 102, baseType: !2356)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2150, line: 73, baseType: !721)
!2357 = !{!2358, !2359, !2360}
!2358 = !DILocalVariable(name: "nptr", arg: 1, scope: !2352, file: !2338, line: 336, type: !2098)
!2359 = !DILocalVariable(name: "endptr", arg: 2, scope: !2352, file: !2338, line: 336, type: !2344)
!2360 = !DILocalVariable(name: "base", arg: 3, scope: !2352, file: !2338, line: 336, type: !660)
!2361 = !DILocation(line: 0, scope: !2352)
!2362 = !DILocation(line: 339, column: 10, scope: !2352)
!2363 = !DILocation(line: 339, column: 3, scope: !2352)
!2364 = distinct !DISubprogram(name: "wcstoimax", scope: !2338, file: !2338, line: 348, type: !2365, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2374)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!2341, !2367, !2371, !660}
!2367 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2368)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2370)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2338, line: 34, baseType: !660)
!2371 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2372)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2374 = !{!2375, !2376, !2377}
!2375 = !DILocalVariable(name: "nptr", arg: 1, scope: !2364, file: !2338, line: 348, type: !2367)
!2376 = !DILocalVariable(name: "endptr", arg: 2, scope: !2364, file: !2338, line: 348, type: !2371)
!2377 = !DILocalVariable(name: "base", arg: 3, scope: !2364, file: !2338, line: 348, type: !660)
!2378 = !DILocation(line: 0, scope: !2364)
!2379 = !DILocation(line: 351, column: 10, scope: !2364)
!2380 = !DILocation(line: 351, column: 3, scope: !2364)
!2381 = distinct !DISubprogram(name: "wcstoumax", scope: !2338, file: !2338, line: 362, type: !2382, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!2355, !2367, !2371, !660}
!2384 = !{!2385, !2386, !2387}
!2385 = !DILocalVariable(name: "nptr", arg: 1, scope: !2381, file: !2338, line: 362, type: !2367)
!2386 = !DILocalVariable(name: "endptr", arg: 2, scope: !2381, file: !2338, line: 362, type: !2371)
!2387 = !DILocalVariable(name: "base", arg: 3, scope: !2381, file: !2338, line: 362, type: !660)
!2388 = !DILocation(line: 0, scope: !2381)
!2389 = !DILocation(line: 365, column: 10, scope: !2381)
!2390 = !DILocation(line: 365, column: 3, scope: !2381)
!2391 = distinct !DISubprogram(name: "stat", scope: !2392, file: !2392, line: 453, type: !2393, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2430)
!2392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!660, !665, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2397, line: 46, size: 1152, elements: !2398)
!2397 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2398 = !{!2399, !2401, !2403, !2405, !2407, !2409, !2411, !2412, !2413, !2414, !2416, !2418, !2426, !2427, !2428}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2396, file: !2397, line: 48, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2150, line: 145, baseType: !721)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2396, file: !2397, line: 53, baseType: !2402, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2150, line: 148, baseType: !721)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2396, file: !2397, line: 61, baseType: !2404, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2150, line: 151, baseType: !721)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2396, file: !2397, line: 62, baseType: !2406, size: 32, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2150, line: 150, baseType: !7)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2396, file: !2397, line: 64, baseType: !2408, size: 32, offset: 224)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2150, line: 146, baseType: !7)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2396, file: !2397, line: 65, baseType: !2410, size: 32, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2150, line: 147, baseType: !7)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2396, file: !2397, line: 67, baseType: !660, size: 32, offset: 288)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2396, file: !2397, line: 69, baseType: !2400, size: 64, offset: 320)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2396, file: !2397, line: 74, baseType: !2149, size: 64, offset: 384)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2396, file: !2397, line: 78, baseType: !2415, size: 64, offset: 448)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2150, line: 174, baseType: !723)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2396, file: !2397, line: 80, baseType: !2417, size: 64, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2150, line: 179, baseType: !723)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2396, file: !2397, line: 91, baseType: !2419, size: 128, offset: 576)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2420, line: 10, size: 128, elements: !2421)
!2420 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2421 = !{!2422, !2424}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2419, file: !2420, line: 12, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2150, line: 160, baseType: !723)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2419, file: !2420, line: 16, baseType: !2425, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2150, line: 196, baseType: !723)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2396, file: !2397, line: 92, baseType: !2419, size: 128, offset: 704)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2396, file: !2397, line: 93, baseType: !2419, size: 128, offset: 832)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2396, file: !2397, line: 106, baseType: !2429, size: 192, offset: 960)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2425, size: 192, elements: !741)
!2430 = !{!2431, !2432}
!2431 = !DILocalVariable(name: "__path", arg: 1, scope: !2391, file: !2392, line: 453, type: !665)
!2432 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2391, file: !2392, line: 453, type: !2395)
!2433 = !DILocation(line: 0, scope: !2391)
!2434 = !DILocation(line: 455, column: 10, scope: !2391)
!2435 = !DILocation(line: 455, column: 3, scope: !2391)
!2436 = distinct !DISubprogram(name: "lstat", scope: !2392, file: !2392, line: 460, type: !2393, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2437)
!2437 = !{!2438, !2439}
!2438 = !DILocalVariable(name: "__path", arg: 1, scope: !2436, file: !2392, line: 460, type: !665)
!2439 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2436, file: !2392, line: 460, type: !2395)
!2440 = !DILocation(line: 0, scope: !2436)
!2441 = !DILocation(line: 462, column: 10, scope: !2436)
!2442 = !DILocation(line: 462, column: 3, scope: !2436)
!2443 = distinct !DISubprogram(name: "fstat", scope: !2392, file: !2392, line: 467, type: !2444, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!660, !660, !2395}
!2446 = !{!2447, !2448}
!2447 = !DILocalVariable(name: "__fd", arg: 1, scope: !2443, file: !2392, line: 467, type: !660)
!2448 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2443, file: !2392, line: 467, type: !2395)
!2449 = !DILocation(line: 0, scope: !2443)
!2450 = !DILocation(line: 469, column: 10, scope: !2443)
!2451 = !DILocation(line: 469, column: 3, scope: !2443)
!2452 = distinct !DISubprogram(name: "fstatat", scope: !2392, file: !2392, line: 474, type: !2453, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!660, !660, !665, !2395, !660}
!2455 = !{!2456, !2457, !2458, !2459}
!2456 = !DILocalVariable(name: "__fd", arg: 1, scope: !2452, file: !2392, line: 474, type: !660)
!2457 = !DILocalVariable(name: "__filename", arg: 2, scope: !2452, file: !2392, line: 474, type: !665)
!2458 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2452, file: !2392, line: 474, type: !2395)
!2459 = !DILocalVariable(name: "__flag", arg: 4, scope: !2452, file: !2392, line: 474, type: !660)
!2460 = !DILocation(line: 0, scope: !2452)
!2461 = !DILocation(line: 477, column: 10, scope: !2452)
!2462 = !DILocation(line: 477, column: 3, scope: !2452)
!2463 = distinct !DISubprogram(name: "mknod", scope: !2392, file: !2392, line: 483, type: !2464, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!660, !665, !2406, !2400}
!2466 = !{!2467, !2468, !2469}
!2467 = !DILocalVariable(name: "__path", arg: 1, scope: !2463, file: !2392, line: 483, type: !665)
!2468 = !DILocalVariable(name: "__mode", arg: 2, scope: !2463, file: !2392, line: 483, type: !2406)
!2469 = !DILocalVariable(name: "__dev", arg: 3, scope: !2463, file: !2392, line: 483, type: !2400)
!2470 = !DILocation(line: 0, scope: !2463)
!2471 = !DILocation(line: 485, column: 10, scope: !2463)
!2472 = !DILocation(line: 485, column: 3, scope: !2463)
!2473 = distinct !DISubprogram(name: "mknodat", scope: !2392, file: !2392, line: 491, type: !2474, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!660, !660, !665, !2406, !2400}
!2476 = !{!2477, !2478, !2479, !2480}
!2477 = !DILocalVariable(name: "__fd", arg: 1, scope: !2473, file: !2392, line: 491, type: !660)
!2478 = !DILocalVariable(name: "__path", arg: 2, scope: !2473, file: !2392, line: 491, type: !665)
!2479 = !DILocalVariable(name: "__mode", arg: 3, scope: !2473, file: !2392, line: 491, type: !2406)
!2480 = !DILocalVariable(name: "__dev", arg: 4, scope: !2473, file: !2392, line: 491, type: !2400)
!2481 = !DILocation(line: 0, scope: !2473)
!2482 = !DILocation(line: 494, column: 10, scope: !2473)
!2483 = !DILocation(line: 494, column: 3, scope: !2473)
!2484 = distinct !DISubprogram(name: "stat64", scope: !2392, file: !2392, line: 502, type: !2485, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2507)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!660, !665, !2487}
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2397, line: 119, size: 1152, elements: !2489)
!2489 = !{!2490, !2491, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2503, !2504, !2505, !2506}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2488, file: !2397, line: 121, baseType: !2400, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2488, file: !2397, line: 123, baseType: !2492, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2150, line: 149, baseType: !721)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2488, file: !2397, line: 124, baseType: !2404, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2488, file: !2397, line: 125, baseType: !2406, size: 32, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2488, file: !2397, line: 132, baseType: !2408, size: 32, offset: 224)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2488, file: !2397, line: 133, baseType: !2410, size: 32, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2488, file: !2397, line: 135, baseType: !660, size: 32, offset: 288)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2488, file: !2397, line: 136, baseType: !2400, size: 64, offset: 320)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2488, file: !2397, line: 137, baseType: !2149, size: 64, offset: 384)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2488, file: !2397, line: 143, baseType: !2415, size: 64, offset: 448)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2488, file: !2397, line: 144, baseType: !2502, size: 64, offset: 512)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2150, line: 180, baseType: !723)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2488, file: !2397, line: 152, baseType: !2419, size: 128, offset: 576)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2488, file: !2397, line: 153, baseType: !2419, size: 128, offset: 704)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2488, file: !2397, line: 154, baseType: !2419, size: 128, offset: 832)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2488, file: !2397, line: 164, baseType: !2429, size: 192, offset: 960)
!2507 = !{!2508, !2509}
!2508 = !DILocalVariable(name: "__path", arg: 1, scope: !2484, file: !2392, line: 502, type: !665)
!2509 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2484, file: !2392, line: 502, type: !2487)
!2510 = !DILocation(line: 0, scope: !2484)
!2511 = !DILocation(line: 504, column: 10, scope: !2484)
!2512 = !DILocation(line: 504, column: 3, scope: !2484)
!2513 = distinct !DISubprogram(name: "lstat64", scope: !2392, file: !2392, line: 509, type: !2485, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2514)
!2514 = !{!2515, !2516}
!2515 = !DILocalVariable(name: "__path", arg: 1, scope: !2513, file: !2392, line: 509, type: !665)
!2516 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2513, file: !2392, line: 509, type: !2487)
!2517 = !DILocation(line: 0, scope: !2513)
!2518 = !DILocation(line: 511, column: 10, scope: !2513)
!2519 = !DILocation(line: 511, column: 3, scope: !2513)
!2520 = distinct !DISubprogram(name: "fstat64", scope: !2392, file: !2392, line: 516, type: !2521, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!660, !660, !2487}
!2523 = !{!2524, !2525}
!2524 = !DILocalVariable(name: "__fd", arg: 1, scope: !2520, file: !2392, line: 516, type: !660)
!2525 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2520, file: !2392, line: 516, type: !2487)
!2526 = !DILocation(line: 0, scope: !2520)
!2527 = !DILocation(line: 518, column: 10, scope: !2520)
!2528 = !DILocation(line: 518, column: 3, scope: !2520)
!2529 = distinct !DISubprogram(name: "fstatat64", scope: !2392, file: !2392, line: 523, type: !2530, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!660, !660, !665, !2487, !660}
!2532 = !{!2533, !2534, !2535, !2536}
!2533 = !DILocalVariable(name: "__fd", arg: 1, scope: !2529, file: !2392, line: 523, type: !660)
!2534 = !DILocalVariable(name: "__filename", arg: 2, scope: !2529, file: !2392, line: 523, type: !665)
!2535 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2529, file: !2392, line: 523, type: !2487)
!2536 = !DILocalVariable(name: "__flag", arg: 4, scope: !2529, file: !2392, line: 523, type: !660)
!2537 = !DILocation(line: 0, scope: !2529)
!2538 = !DILocation(line: 526, column: 10, scope: !2529)
!2539 = !DILocation(line: 526, column: 3, scope: !2529)
!2540 = distinct !DISubprogram(name: "may_propagate_copy", scope: !3, file: !3, line: 62, type: !2541, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!659, !667, !667}
!2543 = !{!2544, !2545, !2546, !2547}
!2544 = !DILocalVariable(name: "dest", arg: 1, scope: !2540, file: !3, line: 62, type: !667)
!2545 = !DILocalVariable(name: "orig", arg: 2, scope: !2540, file: !3, line: 62, type: !667)
!2546 = !DILocalVariable(name: "type_d", scope: !2540, file: !3, line: 64, type: !667)
!2547 = !DILocalVariable(name: "type_o", scope: !2540, file: !3, line: 65, type: !667)
!2548 = !DILocation(line: 0, scope: !2540)
!2549 = !DILocation(line: 64, column: 17, scope: !2540)
!2550 = !DILocation(line: 65, column: 17, scope: !2540)
!2551 = !DILocation(line: 68, column: 7, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 68, column: 7)
!2553 = !DILocation(line: 68, column: 24, scope: !2552)
!2554 = !DILocation(line: 69, column: 7, scope: !2552)
!2555 = !DILocation(line: 69, column: 10, scope: !2552)
!2556 = !DILocation(line: 68, column: 7, scope: !2540)
!2557 = !DILocation(line: 74, column: 7, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 74, column: 7)
!2559 = !DILocation(line: 74, column: 24, scope: !2558)
!2560 = !DILocation(line: 75, column: 7, scope: !2558)
!2561 = !DILocation(line: 75, column: 10, scope: !2558)
!2562 = !DILocation(line: 74, column: 7, scope: !2540)
!2563 = !DILocation(line: 79, column: 8, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 79, column: 7)
!2565 = !DILocation(line: 79, column: 7, scope: !2540)
!2566 = !DILocation(line: 83, column: 7, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 83, column: 7)
!2568 = !DILocation(line: 83, column: 24, scope: !2567)
!2569 = !DILocation(line: 83, column: 36, scope: !2567)
!2570 = !DILocation(line: 83, column: 40, scope: !2567)
!2571 = !DILocation(line: 83, column: 7, scope: !2540)
!2572 = !DILocation(line: 86, column: 7, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 84, column: 5)
!2574 = !DILocation(line: 93, column: 1, scope: !2540)
!2575 = distinct !DISubprogram(name: "may_propagate_copy_into_stmt", scope: !3, file: !3, line: 101, type: !2576, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2578)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!659, !991, !667}
!2578 = !{!2579, !2580, !2581, !2582}
!2579 = !DILocalVariable(name: "dest", arg: 1, scope: !2575, file: !3, line: 101, type: !991)
!2580 = !DILocalVariable(name: "orig", arg: 2, scope: !2575, file: !3, line: 101, type: !667)
!2581 = !DILocalVariable(name: "type_d", scope: !2575, file: !3, line: 103, type: !667)
!2582 = !DILocalVariable(name: "type_o", scope: !2575, file: !3, line: 104, type: !667)
!2583 = !DILocation(line: 0, scope: !2575)
!2584 = !DILocation(line: 111, column: 7, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 111, column: 7)
!2586 = !DILocation(line: 111, column: 7, scope: !2575)
!2587 = !DILocation(line: 112, column: 32, scope: !2585)
!2588 = !DILocation(line: 112, column: 12, scope: !2585)
!2589 = !DILocation(line: 112, column: 5, scope: !2585)
!2590 = !DILocation(line: 113, column: 12, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 113, column: 12)
!2592 = !DILocation(line: 113, column: 31, scope: !2591)
!2593 = !DILocation(line: 113, column: 12, scope: !2585)
!2594 = !DILocation(line: 114, column: 32, scope: !2591)
!2595 = !DILocation(line: 114, column: 12, scope: !2591)
!2596 = !DILocation(line: 114, column: 5, scope: !2591)
!2597 = !DILocation(line: 121, column: 7, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 121, column: 7)
!2599 = !DILocation(line: 121, column: 24, scope: !2598)
!2600 = !DILocation(line: 122, column: 7, scope: !2598)
!2601 = !DILocation(line: 122, column: 10, scope: !2598)
!2602 = !DILocation(line: 121, column: 7, scope: !2575)
!2603 = !DILocation(line: 125, column: 7, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 125, column: 7)
!2605 = !DILocation(line: 125, column: 7, scope: !2575)
!2606 = !DILocation(line: 126, column: 14, scope: !2604)
!2607 = !DILocation(line: 126, column: 5, scope: !2604)
!2608 = !DILocation(line: 127, column: 12, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 127, column: 12)
!2610 = !DILocation(line: 127, column: 31, scope: !2609)
!2611 = !DILocation(line: 127, column: 12, scope: !2604)
!2612 = !DILocation(line: 128, column: 14, scope: !2609)
!2613 = !DILocation(line: 128, column: 5, scope: !2609)
!2614 = !DILocation(line: 129, column: 12, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 129, column: 12)
!2616 = !DILocation(line: 130, column: 12, scope: !2615)
!2617 = !DILocation(line: 130, column: 15, scope: !2615)
!2618 = !DILocation(line: 130, column: 38, scope: !2615)
!2619 = !DILocation(line: 129, column: 12, scope: !2609)
!2620 = !DILocation(line: 131, column: 14, scope: !2615)
!2621 = !DILocation(line: 131, column: 5, scope: !2615)
!2622 = !DILocation(line: 133, column: 5, scope: !2615)
!2623 = !DILocation(line: 0, scope: !2604)
!2624 = !DILocation(line: 135, column: 12, scope: !2575)
!2625 = !DILocation(line: 137, column: 8, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 137, column: 7)
!2627 = !DILocation(line: 141, column: 1, scope: !2575)
!2628 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !574, file: !574, line: 1727, type: !2629, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2632)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!667, !2631}
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !668, line: 60, baseType: !2051)
!2632 = !{!2633}
!2633 = !DILocalVariable(name: "gs", arg: 1, scope: !2628, file: !574, line: 1727, type: !2631)
!2634 = !DILocation(line: 0, scope: !2628)
!2635 = !DILocation(line: 1730, column: 10, scope: !2628)
!2636 = !DILocation(line: 1730, column: 3, scope: !2628)
!2637 = distinct !DISubprogram(name: "gimple_code", scope: !574, file: !574, line: 1052, type: !2638, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!600, !2631}
!2640 = !{!2641}
!2641 = !DILocalVariable(name: "g", arg: 1, scope: !2637, file: !574, line: 1052, type: !2631)
!2642 = !DILocation(line: 0, scope: !2637)
!2643 = !DILocation(line: 1054, column: 20, scope: !2637)
!2644 = !DILocation(line: 1054, column: 3, scope: !2637)
!2645 = distinct !DISubprogram(name: "gimple_switch_index", scope: !574, file: !574, line: 3180, type: !2629, scopeLine: 3181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2646)
!2646 = !{!2647}
!2647 = !DILocalVariable(name: "gs", arg: 1, scope: !2645, file: !574, line: 3180, type: !2631)
!2648 = !DILocation(line: 0, scope: !2645)
!2649 = !DILocation(line: 3183, column: 10, scope: !2645)
!2650 = !DILocation(line: 3183, column: 3, scope: !2645)
!2651 = distinct !DISubprogram(name: "is_gimple_assign", scope: !574, file: !574, line: 1677, type: !2652, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!659, !2631}
!2654 = !{!2655}
!2655 = !DILocalVariable(name: "gs", arg: 1, scope: !2651, file: !574, line: 1677, type: !2631)
!2656 = !DILocation(line: 0, scope: !2651)
!2657 = !DILocation(line: 1679, column: 10, scope: !2651)
!2658 = !DILocation(line: 1679, column: 27, scope: !2651)
!2659 = !DILocation(line: 1679, column: 3, scope: !2651)
!2660 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !574, file: !574, line: 1694, type: !2629, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2661)
!2661 = !{!2662}
!2662 = !DILocalVariable(name: "gs", arg: 1, scope: !2660, file: !574, line: 1694, type: !2631)
!2663 = !DILocation(line: 0, scope: !2660)
!2664 = !DILocation(line: 1697, column: 10, scope: !2660)
!2665 = !DILocation(line: 1697, column: 3, scope: !2660)
!2666 = distinct !DISubprogram(name: "is_gimple_call", scope: !574, file: !574, line: 1870, type: !2652, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2667)
!2667 = !{!2668}
!2668 = !DILocalVariable(name: "gs", arg: 1, scope: !2666, file: !574, line: 1870, type: !2631)
!2669 = !DILocation(line: 0, scope: !2666)
!2670 = !DILocation(line: 1872, column: 10, scope: !2666)
!2671 = !DILocation(line: 1872, column: 27, scope: !2666)
!2672 = !DILocation(line: 1872, column: 3, scope: !2666)
!2673 = distinct !DISubprogram(name: "gimple_call_lhs", scope: !574, file: !574, line: 1878, type: !2629, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2674)
!2674 = !{!2675}
!2675 = !DILocalVariable(name: "gs", arg: 1, scope: !2673, file: !574, line: 1878, type: !2631)
!2676 = !DILocation(line: 0, scope: !2673)
!2677 = !DILocation(line: 1881, column: 10, scope: !2673)
!2678 = !DILocation(line: 1881, column: 3, scope: !2673)
!2679 = distinct !DISubprogram(name: "may_propagate_copy_into_asm", scope: !3, file: !3, line: 146, type: !2680, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!659, !667}
!2682 = !{!2683}
!2683 = !DILocalVariable(name: "dest", arg: 1, scope: !2679, file: !3, line: 146, type: !667)
!2684 = !DILocation(line: 0, scope: !2679)
!2685 = !DILocation(line: 149, column: 12, scope: !2679)
!2686 = !DILocation(line: 149, column: 29, scope: !2679)
!2687 = !DILocation(line: 150, column: 5, scope: !2679)
!2688 = !DILocation(line: 150, column: 8, scope: !2679)
!2689 = !DILocation(line: 150, column: 40, scope: !2679)
!2690 = !DILocation(line: 151, column: 5, scope: !2679)
!2691 = !DILocation(line: 151, column: 8, scope: !2679)
!2692 = !DILocation(line: 149, column: 3, scope: !2679)
!2693 = distinct !DISubprogram(name: "propagate_value", scope: !3, file: !3, line: 187, type: !2694, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2699)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{null, !2696, !667}
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !639, line: 30, baseType: !2697)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !135, line: 1893, baseType: !1032)
!2699 = !{!2700, !2701}
!2700 = !DILocalVariable(name: "op_p", arg: 1, scope: !2693, file: !3, line: 187, type: !2696)
!2701 = !DILocalVariable(name: "val", arg: 2, scope: !2693, file: !3, line: 187, type: !667)
!2702 = !DILocation(line: 0, scope: !2693)
!2703 = !DILocation(line: 189, column: 3, scope: !2693)
!2704 = !DILocation(line: 190, column: 1, scope: !2693)
!2705 = distinct !DISubprogram(name: "replace_exp_1", scope: !3, file: !3, line: 161, type: !2706, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2708)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{null, !2696, !667, !659}
!2708 = !{!2709, !2710, !2711}
!2709 = !DILocalVariable(name: "op_p", arg: 1, scope: !2705, file: !3, line: 161, type: !2696)
!2710 = !DILocalVariable(name: "val", arg: 2, scope: !2705, file: !3, line: 161, type: !667)
!2711 = !DILocalVariable(name: "for_propagation", arg: 3, scope: !2705, file: !3, line: 162, type: !659)
!2712 = !DILocation(line: 0, scope: !2705)
!2713 = !DILocation(line: 173, column: 7, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 173, column: 7)
!2715 = !DILocation(line: 173, column: 23, scope: !2714)
!2716 = !DILocation(line: 173, column: 7, scope: !2705)
!2717 = !DILocation(line: 174, column: 5, scope: !2714)
!2718 = !DILocation(line: 176, column: 5, scope: !2714)
!2719 = !DILocation(line: 177, column: 1, scope: !2705)
!2720 = distinct !DISubprogram(name: "replace_exp", scope: !3, file: !3, line: 199, type: !2694, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2721)
!2721 = !{!2722, !2723}
!2722 = !DILocalVariable(name: "op_p", arg: 1, scope: !2720, file: !3, line: 199, type: !2696)
!2723 = !DILocalVariable(name: "val", arg: 2, scope: !2720, file: !3, line: 199, type: !667)
!2724 = !DILocation(line: 0, scope: !2720)
!2725 = !DILocation(line: 201, column: 3, scope: !2720)
!2726 = !DILocation(line: 202, column: 1, scope: !2720)
!2727 = distinct !DISubprogram(name: "propagate_tree_value", scope: !3, file: !3, line: 214, type: !2728, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{null, !1025, !667}
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "op_p", arg: 1, scope: !2727, file: !3, line: 214, type: !1025)
!2732 = !DILocalVariable(name: "val", arg: 2, scope: !2727, file: !3, line: 214, type: !667)
!2733 = !DILocation(line: 0, scope: !2727)
!2734 = !DILocation(line: 223, column: 7, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 223, column: 7)
!2736 = !DILocation(line: 223, column: 23, scope: !2735)
!2737 = !DILocation(line: 223, column: 7, scope: !2727)
!2738 = !DILocation(line: 224, column: 5, scope: !2735)
!2739 = !DILocation(line: 226, column: 13, scope: !2735)
!2740 = !DILocation(line: 0, scope: !2735)
!2741 = !DILocation(line: 227, column: 1, scope: !2727)
!2742 = distinct !DISubprogram(name: "propagate_tree_value_into_stmt", scope: !3, file: !3, line: 237, type: !2743, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2752)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{null, !2745, !667}
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !574, line: 265, baseType: !2747)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 254, size: 192, elements: !2748)
!2748 = !{!2749, !2750, !2751}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2747, file: !574, line: 257, baseType: !986, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2747, file: !574, line: 263, baseType: !981, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2747, file: !574, line: 264, baseType: !1477, size: 64, offset: 128)
!2752 = !{!2753, !2754, !2755, !2756, !2759, !2762, !2763, !2766}
!2753 = !DILocalVariable(name: "gsi", arg: 1, scope: !2742, file: !3, line: 237, type: !2745)
!2754 = !DILocalVariable(name: "val", arg: 2, scope: !2742, file: !3, line: 237, type: !667)
!2755 = !DILocalVariable(name: "stmt", scope: !2742, file: !3, line: 239, type: !991)
!2756 = !DILocalVariable(name: "expr", scope: !2757, file: !3, line: 243, type: !667)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 242, column: 5)
!2758 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 241, column: 7)
!2759 = !DILocalVariable(name: "lhs", scope: !2760, file: !3, line: 252, type: !667)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 251, column: 5)
!2761 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 250, column: 12)
!2762 = !DILocalVariable(name: "rhs", scope: !2760, file: !3, line: 253, type: !667)
!2763 = !DILocalVariable(name: "new_stmt", scope: !2764, file: !3, line: 262, type: !991)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 261, column: 5)
!2765 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 259, column: 12)
!2766 = !DILocalVariable(name: "expr", scope: !2764, file: !3, line: 264, type: !667)
!2767 = !DILocation(line: 0, scope: !2742)
!2768 = !DILocation(line: 239, column: 17, scope: !2742)
!2769 = !DILocation(line: 241, column: 7, scope: !2758)
!2770 = !DILocation(line: 241, column: 7, scope: !2742)
!2771 = !DILocation(line: 243, column: 7, scope: !2757)
!2772 = !DILocation(line: 0, scope: !2757)
!2773 = !DILocation(line: 243, column: 12, scope: !2757)
!2774 = !DILocation(line: 244, column: 11, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 244, column: 11)
!2776 = !DILocation(line: 244, column: 11, scope: !2757)
!2777 = !DILocation(line: 245, column: 16, scope: !2775)
!2778 = !DILocation(line: 245, column: 14, scope: !2775)
!2779 = !DILocation(line: 245, column: 9, scope: !2775)
!2780 = !DILocation(line: 246, column: 7, scope: !2757)
!2781 = !DILocation(line: 247, column: 45, scope: !2757)
!2782 = !DILocation(line: 247, column: 7, scope: !2757)
!2783 = !DILocation(line: 248, column: 14, scope: !2757)
!2784 = !DILocation(line: 249, column: 5, scope: !2758)
!2785 = !DILocation(line: 249, column: 5, scope: !2757)
!2786 = !DILocation(line: 250, column: 12, scope: !2761)
!2787 = !DILocation(line: 250, column: 31, scope: !2761)
!2788 = !DILocation(line: 250, column: 12, scope: !2758)
!2789 = !DILocation(line: 252, column: 7, scope: !2760)
!2790 = !DILocation(line: 0, scope: !2760)
!2791 = !DILocation(line: 252, column: 12, scope: !2760)
!2792 = !DILocation(line: 253, column: 18, scope: !2760)
!2793 = !DILocation(line: 254, column: 7, scope: !2760)
!2794 = !DILocation(line: 255, column: 7, scope: !2760)
!2795 = !DILocation(line: 256, column: 34, scope: !2760)
!2796 = !DILocation(line: 256, column: 7, scope: !2760)
!2797 = !DILocation(line: 257, column: 7, scope: !2760)
!2798 = !DILocation(line: 258, column: 5, scope: !2761)
!2799 = !DILocation(line: 258, column: 5, scope: !2760)
!2800 = !DILocation(line: 259, column: 12, scope: !2765)
!2801 = !DILocation(line: 260, column: 12, scope: !2765)
!2802 = !DILocation(line: 260, column: 15, scope: !2765)
!2803 = !DILocation(line: 260, column: 38, scope: !2765)
!2804 = !DILocation(line: 259, column: 12, scope: !2761)
!2805 = !DILocation(line: 264, column: 7, scope: !2764)
!2806 = !DILocation(line: 0, scope: !2764)
!2807 = !DILocation(line: 264, column: 12, scope: !2764)
!2808 = !DILocation(line: 265, column: 7, scope: !2764)
!2809 = !DILocation(line: 266, column: 18, scope: !2764)
!2810 = !DILocation(line: 267, column: 7, scope: !2764)
!2811 = !DILocation(line: 268, column: 7, scope: !2764)
!2812 = !DILocation(line: 269, column: 5, scope: !2765)
!2813 = !DILocation(line: 269, column: 5, scope: !2764)
!2814 = !DILocation(line: 270, column: 12, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 270, column: 12)
!2816 = !DILocation(line: 270, column: 31, scope: !2815)
!2817 = !DILocation(line: 270, column: 12, scope: !2765)
!2818 = !DILocation(line: 271, column: 27, scope: !2815)
!2819 = !DILocation(line: 271, column: 5, scope: !2815)
!2820 = !DILocation(line: 273, column: 5, scope: !2815)
!2821 = !DILocation(line: 274, column: 1, scope: !2742)
!2822 = distinct !DISubprogram(name: "gsi_stmt", scope: !574, file: !574, line: 4501, type: !2823, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!991, !2746}
!2825 = !{!2826}
!2826 = !DILocalVariable(name: "i", arg: 1, scope: !2822, file: !574, line: 4501, type: !2746)
!2827 = !DILocation(line: 4501, column: 32, scope: !2822)
!2828 = !DILocation(line: 4503, column: 12, scope: !2822)
!2829 = !DILocation(line: 4503, column: 17, scope: !2822)
!2830 = !DILocation(line: 4503, column: 3, scope: !2822)
!2831 = distinct !DISubprogram(name: "gimple_cond_set_code", scope: !574, file: !574, line: 2231, type: !2832, scopeLine: 2232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2834)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{null, !991, !134}
!2834 = !{!2835, !2836}
!2835 = !DILocalVariable(name: "gs", arg: 1, scope: !2831, file: !574, line: 2231, type: !991)
!2836 = !DILocalVariable(name: "code", arg: 2, scope: !2831, file: !574, line: 2231, type: !134)
!2837 = !DILocation(line: 0, scope: !2831)
!2838 = !DILocation(line: 2234, column: 14, scope: !2831)
!2839 = !DILocation(line: 2234, column: 22, scope: !2831)
!2840 = !DILocation(line: 2235, column: 1, scope: !2831)
!2841 = distinct !DISubprogram(name: "gimple_cond_set_lhs", scope: !574, file: !574, line: 2261, type: !2842, scopeLine: 2262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{null, !991, !667}
!2844 = !{!2845, !2846}
!2845 = !DILocalVariable(name: "gs", arg: 1, scope: !2841, file: !574, line: 2261, type: !991)
!2846 = !DILocalVariable(name: "lhs", arg: 2, scope: !2841, file: !574, line: 2261, type: !667)
!2847 = !DILocation(line: 0, scope: !2841)
!2848 = !DILocation(line: 2264, column: 3, scope: !2841)
!2849 = !DILocation(line: 2265, column: 1, scope: !2841)
!2850 = distinct !DISubprogram(name: "gimple_cond_set_rhs", scope: !574, file: !574, line: 2292, type: !2842, scopeLine: 2293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2851)
!2851 = !{!2852, !2853}
!2852 = !DILocalVariable(name: "gs", arg: 1, scope: !2850, file: !574, line: 2292, type: !991)
!2853 = !DILocalVariable(name: "rhs", arg: 2, scope: !2850, file: !574, line: 2292, type: !667)
!2854 = !DILocation(line: 0, scope: !2850)
!2855 = !DILocation(line: 2295, column: 3, scope: !2850)
!2856 = !DILocation(line: 2296, column: 1, scope: !2850)
!2857 = distinct !DISubprogram(name: "gimple_switch_index_ptr", scope: !574, file: !574, line: 3190, type: !2858, scopeLine: 3191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!1025, !2631}
!2860 = !{!2861}
!2861 = !DILocalVariable(name: "gs", arg: 1, scope: !2857, file: !574, line: 3190, type: !2631)
!2862 = !DILocation(line: 0, scope: !2857)
!2863 = !DILocation(line: 3193, column: 10, scope: !2857)
!2864 = !DILocation(line: 3193, column: 3, scope: !2857)
!2865 = distinct !DISubprogram(name: "gate_copy_prop", scope: !3, file: !3, line: 984, type: !2073, scopeLine: 985, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2866 = !DILocation(line: 986, column: 10, scope: !2865)
!2867 = !DILocation(line: 986, column: 30, scope: !2865)
!2868 = !DILocation(line: 986, column: 3, scope: !2865)
!2869 = distinct !DISubprogram(name: "execute_copy_prop", scope: !3, file: !3, line: 975, type: !2077, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2870 = !DILocation(line: 977, column: 3, scope: !2869)
!2871 = !DILocation(line: 978, column: 3, scope: !2869)
!2872 = !DILocation(line: 979, column: 3, scope: !2869)
!2873 = !DILocation(line: 980, column: 3, scope: !2869)
!2874 = distinct !DISubprogram(name: "gimple_op", scope: !574, file: !574, line: 1631, type: !2875, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!667, !2631, !7}
!2877 = !{!2878, !2879}
!2878 = !DILocalVariable(name: "gs", arg: 1, scope: !2874, file: !574, line: 1631, type: !2631)
!2879 = !DILocalVariable(name: "i", arg: 2, scope: !2874, file: !574, line: 1631, type: !7)
!2880 = !DILocation(line: 0, scope: !2874)
!2881 = !DILocation(line: 1633, column: 7, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2874, file: !574, line: 1633, column: 7)
!2883 = !DILocation(line: 1633, column: 7, scope: !2874)
!2884 = !DILocation(line: 1638, column: 14, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2882, file: !574, line: 1634, column: 5)
!2886 = !DILocation(line: 1638, column: 7, scope: !2885)
!2887 = !DILocation(line: 0, scope: !2882)
!2888 = !DILocation(line: 1642, column: 1, scope: !2874)
!2889 = distinct !DISubprogram(name: "gimple_has_ops", scope: !574, file: !574, line: 1274, type: !2652, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2890)
!2890 = !{!2891}
!2891 = !DILocalVariable(name: "g", arg: 1, scope: !2889, file: !574, line: 1274, type: !2631)
!2892 = !DILocation(line: 0, scope: !2889)
!2893 = !DILocation(line: 1276, column: 10, scope: !2889)
!2894 = !DILocation(line: 1276, column: 26, scope: !2889)
!2895 = !DILocation(line: 1276, column: 41, scope: !2889)
!2896 = !DILocation(line: 1276, column: 44, scope: !2889)
!2897 = !DILocation(line: 1276, column: 60, scope: !2889)
!2898 = !DILocation(line: 1276, column: 3, scope: !2889)
!2899 = distinct !DISubprogram(name: "gimple_ops", scope: !574, file: !574, line: 1614, type: !2900, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!1025, !991}
!2902 = !{!2903, !2904}
!2903 = !DILocalVariable(name: "gs", arg: 1, scope: !2899, file: !574, line: 1614, type: !991)
!2904 = !DILocalVariable(name: "off", scope: !2899, file: !574, line: 1616, type: !1136)
!2905 = !DILocation(line: 0, scope: !2899)
!2906 = !DILocation(line: 1621, column: 28, scope: !2899)
!2907 = !DILocation(line: 1621, column: 9, scope: !2899)
!2908 = !DILocation(line: 1622, column: 3, scope: !2899)
!2909 = !DILocation(line: 1624, column: 20, scope: !2899)
!2910 = !DILocation(line: 1624, column: 32, scope: !2899)
!2911 = !DILocation(line: 1624, column: 10, scope: !2899)
!2912 = !DILocation(line: 1624, column: 3, scope: !2899)
!2913 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !574, file: !574, line: 1073, type: !2914, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!573, !991}
!2916 = !{!2917}
!2917 = !DILocalVariable(name: "gs", arg: 1, scope: !2913, file: !574, line: 1073, type: !991)
!2918 = !DILocation(line: 0, scope: !2913)
!2919 = !DILocation(line: 1075, column: 24, scope: !2913)
!2920 = !DILocation(line: 1075, column: 10, scope: !2913)
!2921 = !DILocation(line: 1075, column: 3, scope: !2913)
!2922 = distinct !DISubprogram(name: "gss_for_code", scope: !574, file: !574, line: 1061, type: !2923, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!573, !600}
!2925 = !{!2926}
!2926 = !DILocalVariable(name: "code", arg: 1, scope: !2922, file: !574, line: 1061, type: !600)
!2927 = !DILocation(line: 0, scope: !2922)
!2928 = !DILocation(line: 1066, column: 10, scope: !2922)
!2929 = !DILocation(line: 1066, column: 3, scope: !2922)
!2930 = distinct !DISubprogram(name: "set_ssa_use_from_ptr", scope: !2931, file: !2931, line: 233, type: !2694, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2932)
!2931 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2932 = !{!2933, !2934}
!2933 = !DILocalVariable(name: "use", arg: 1, scope: !2930, file: !2931, line: 233, type: !2696)
!2934 = !DILocalVariable(name: "val", arg: 2, scope: !2930, file: !2931, line: 233, type: !667)
!2935 = !DILocation(line: 0, scope: !2930)
!2936 = !DILocation(line: 235, column: 3, scope: !2930)
!2937 = !DILocation(line: 236, column: 10, scope: !2930)
!2938 = !DILocation(line: 236, column: 15, scope: !2930)
!2939 = !DILocation(line: 237, column: 3, scope: !2930)
!2940 = !DILocation(line: 238, column: 1, scope: !2930)
!2941 = distinct !DISubprogram(name: "delink_imm_use", scope: !2931, file: !2931, line: 188, type: !2942, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{null, !2697}
!2944 = !{!2945}
!2945 = !DILocalVariable(name: "linknode", arg: 1, scope: !2941, file: !2931, line: 188, type: !2697)
!2946 = !DILocation(line: 0, scope: !2941)
!2947 = !DILocation(line: 191, column: 17, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2941, file: !2931, line: 191, column: 7)
!2949 = !DILocation(line: 191, column: 22, scope: !2948)
!2950 = !DILocation(line: 191, column: 7, scope: !2941)
!2951 = !DILocation(line: 194, column: 36, scope: !2941)
!2952 = !DILocation(line: 194, column: 19, scope: !2941)
!2953 = !DILocation(line: 194, column: 24, scope: !2941)
!2954 = !DILocation(line: 195, column: 36, scope: !2941)
!2955 = !DILocation(line: 195, column: 13, scope: !2941)
!2956 = !DILocation(line: 195, column: 24, scope: !2941)
!2957 = !DILocation(line: 196, column: 18, scope: !2941)
!2958 = !DILocation(line: 197, column: 18, scope: !2941)
!2959 = !DILocation(line: 198, column: 1, scope: !2941)
!2960 = distinct !DISubprogram(name: "link_imm_use", scope: !2931, file: !2931, line: 214, type: !2961, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{null, !2697, !667}
!2963 = !{!2964, !2965, !2966}
!2964 = !DILocalVariable(name: "linknode", arg: 1, scope: !2960, file: !2931, line: 214, type: !2697)
!2965 = !DILocalVariable(name: "def", arg: 2, scope: !2960, file: !2931, line: 214, type: !667)
!2966 = !DILocalVariable(name: "root", scope: !2960, file: !2931, line: 216, type: !2697)
!2967 = !DILocation(line: 0, scope: !2960)
!2968 = !DILocation(line: 218, column: 8, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2960, file: !2931, line: 218, column: 7)
!2970 = !DILocation(line: 218, column: 12, scope: !2969)
!2971 = !DILocation(line: 218, column: 15, scope: !2969)
!2972 = !DILocation(line: 218, column: 31, scope: !2969)
!2973 = !DILocation(line: 218, column: 7, scope: !2960)
!2974 = !DILocation(line: 219, column: 15, scope: !2969)
!2975 = !DILocation(line: 219, column: 20, scope: !2969)
!2976 = !DILocation(line: 219, column: 5, scope: !2969)
!2977 = !DILocation(line: 222, column: 16, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2969, file: !2931, line: 221, column: 5)
!2979 = !DILocation(line: 227, column: 7, scope: !2978)
!2980 = !DILocation(line: 229, column: 1, scope: !2960)
!2981 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !2931, file: !2931, line: 202, type: !2982, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !2697, !2697}
!2984 = !{!2985, !2986}
!2985 = !DILocalVariable(name: "linknode", arg: 1, scope: !2981, file: !2931, line: 202, type: !2697)
!2986 = !DILocalVariable(name: "list", arg: 2, scope: !2981, file: !2931, line: 202, type: !2697)
!2987 = !DILocation(line: 0, scope: !2981)
!2988 = !DILocation(line: 206, column: 13, scope: !2981)
!2989 = !DILocation(line: 206, column: 18, scope: !2981)
!2990 = !DILocation(line: 207, column: 26, scope: !2981)
!2991 = !DILocation(line: 207, column: 13, scope: !2981)
!2992 = !DILocation(line: 207, column: 18, scope: !2981)
!2993 = !DILocation(line: 208, column: 9, scope: !2981)
!2994 = !DILocation(line: 208, column: 15, scope: !2981)
!2995 = !DILocation(line: 208, column: 20, scope: !2981)
!2996 = !DILocation(line: 209, column: 14, scope: !2981)
!2997 = !DILocation(line: 210, column: 1, scope: !2981)
!2998 = distinct !DISubprogram(name: "gimple_set_op", scope: !574, file: !574, line: 1663, type: !2999, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !991, !7, !667}
!3001 = !{!3002, !3003, !3004}
!3002 = !DILocalVariable(name: "gs", arg: 1, scope: !2998, file: !574, line: 1663, type: !991)
!3003 = !DILocalVariable(name: "i", arg: 2, scope: !2998, file: !574, line: 1663, type: !7)
!3004 = !DILocalVariable(name: "op", arg: 3, scope: !2998, file: !574, line: 1663, type: !667)
!3005 = !DILocation(line: 0, scope: !2998)
!3006 = !DILocation(line: 1665, column: 3, scope: !2998)
!3007 = !DILocation(line: 1671, column: 3, scope: !2998)
!3008 = !DILocation(line: 1671, column: 22, scope: !2998)
!3009 = !DILocation(line: 1672, column: 1, scope: !2998)
!3010 = distinct !DISubprogram(name: "gimple_num_ops", scope: !574, file: !574, line: 1596, type: !3011, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!7, !2631}
!3013 = !{!3014}
!3014 = !DILocalVariable(name: "gs", arg: 1, scope: !3010, file: !574, line: 1596, type: !2631)
!3015 = !DILocation(line: 0, scope: !3010)
!3016 = !DILocation(line: 1598, column: 21, scope: !3010)
!3017 = !DILocation(line: 1598, column: 3, scope: !3010)
!3018 = distinct !DISubprogram(name: "gimple_op_ptr", scope: !574, file: !574, line: 1647, type: !3019, scopeLine: 1648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3021)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!1025, !2631, !7}
!3021 = !{!3022, !3023}
!3022 = !DILocalVariable(name: "gs", arg: 1, scope: !3018, file: !574, line: 1647, type: !2631)
!3023 = !DILocalVariable(name: "i", arg: 2, scope: !3018, file: !574, line: 1647, type: !7)
!3024 = !DILocation(line: 0, scope: !3018)
!3025 = !DILocation(line: 1649, column: 7, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3018, file: !574, line: 1649, column: 7)
!3027 = !DILocation(line: 1649, column: 7, scope: !3018)
!3028 = !DILocation(line: 1654, column: 14, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3026, file: !574, line: 1650, column: 5)
!3030 = !DILocation(line: 1654, column: 7, scope: !3029)
!3031 = !DILocation(line: 0, scope: !3026)
!3032 = !DILocation(line: 1658, column: 1, scope: !3018)
!3033 = distinct !DISubprogram(name: "init_copy_prop", scope: !3, file: !3, line: 741, type: !3034, scopeLine: 742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{null}
!3036 = !{!3037, !3038, !3042, !3043, !3044, !3048, !3061, !3062, !3071, !3072, !3076}
!3037 = !DILocalVariable(name: "bb", scope: !3033, file: !3, line: 743, type: !1477)
!3038 = !DILocalVariable(name: "si", scope: !3039, file: !3, line: 751, type: !2746)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 750, column: 5)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 749, column: 3)
!3041 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 749, column: 3)
!3042 = !DILocalVariable(name: "depth", scope: !3039, file: !3, line: 752, type: !660)
!3043 = !DILocalVariable(name: "loop_exit_p", scope: !3039, file: !3, line: 753, type: !659)
!3044 = !DILocalVariable(name: "stmt", scope: !3045, file: !3, line: 757, type: !991)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 756, column: 2)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 755, column: 7)
!3047 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 755, column: 7)
!3048 = !DILocalVariable(name: "iter", scope: !3045, file: !3, line: 758, type: !3049)
!3049 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !639, line: 140, baseType: !3050)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !639, line: 131, size: 320, elements: !3051)
!3051 = !{!3052, !3053, !3054, !3056, !3058, !3059, !3060}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3050, file: !639, line: 133, baseType: !659, size: 8)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !3050, file: !639, line: 134, baseType: !638, size: 32, offset: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !3050, file: !639, line: 135, baseType: !3055, size: 64, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !639, line: 42, baseType: !1020)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !3050, file: !639, line: 136, baseType: !3057, size: 64, offset: 128)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !639, line: 50, baseType: !1027)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !3050, file: !639, line: 137, baseType: !660, size: 32, offset: 192)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !3050, file: !639, line: 138, baseType: !660, size: 32, offset: 224)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !3050, file: !639, line: 139, baseType: !991, size: 64, offset: 256)
!3061 = !DILocalVariable(name: "def", scope: !3045, file: !3, line: 759, type: !667)
!3062 = !DILocalVariable(name: "ei", scope: !3063, file: !3, line: 796, type: !3065)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 795, column: 2)
!3064 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 793, column: 11)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !343, line: 682, baseType: !3066)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 679, size: 128, elements: !3067)
!3067 = !{!3068, !3069}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3066, file: !343, line: 680, baseType: !7, size: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !3066, file: !343, line: 681, baseType: !3070, size: 64, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!3071 = !DILocalVariable(name: "e", scope: !3063, file: !3, line: 797, type: !971)
!3072 = !DILocalVariable(name: "phi", scope: !3073, file: !3, line: 805, type: !991)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 804, column: 2)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 803, column: 7)
!3075 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 803, column: 7)
!3076 = !DILocalVariable(name: "def", scope: !3073, file: !3, line: 806, type: !667)
!3077 = !DILocation(line: 745, column: 13, scope: !3033)
!3078 = !DILocation(line: 745, column: 11, scope: !3033)
!3079 = !DILocation(line: 747, column: 25, scope: !3033)
!3080 = !DILocation(line: 747, column: 23, scope: !3033)
!3081 = !DILocation(line: 749, column: 3, scope: !3041)
!3082 = !DILocation(line: 0, scope: !3039)
!3083 = !DILocation(line: 0, scope: !3047)
!3084 = !DILocation(line: 0, scope: !3045)
!3085 = !DILocation(line: 0, scope: !3063)
!3086 = !DILocation(line: 0, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 798, column: 4)
!3088 = !DILocation(line: 0, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 798, column: 4)
!3090 = !DILocation(line: 0, scope: !3075)
!3091 = !DILocation(line: 749, column: 3, scope: !3040)
!3092 = !DILocation(line: 0, scope: !3041)
!3093 = !DILocation(line: 0, scope: !3033)
!3094 = !DILocation(line: 751, column: 7, scope: !3039)
!3095 = !DILocation(line: 752, column: 23, scope: !3039)
!3096 = !DILocation(line: 755, column: 17, scope: !3047)
!3097 = !DILocation(line: 755, column: 12, scope: !3047)
!3098 = !DILocation(line: 755, column: 37, scope: !3046)
!3099 = !DILocation(line: 755, column: 36, scope: !3046)
!3100 = !DILocation(line: 755, column: 7, scope: !3047)
!3101 = !DILocation(line: 757, column: 18, scope: !3045)
!3102 = !DILocation(line: 758, column: 4, scope: !3045)
!3103 = !DILocation(line: 771, column: 8, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 771, column: 8)
!3105 = !DILocation(line: 771, column: 8, scope: !3045)
!3106 = !DILocation(line: 772, column: 13, scope: !3104)
!3107 = !DILocation(line: 773, column: 13, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 773, column: 13)
!3109 = !DILocation(line: 777, column: 20, scope: !3108)
!3110 = !DILocation(line: 777, column: 43, scope: !3108)
!3111 = !DILocation(line: 777, column: 23, scope: !3108)
!3112 = !DILocation(line: 777, column: 70, scope: !3108)
!3113 = !DILocation(line: 773, column: 13, scope: !3104)
!3114 = !DILocation(line: 778, column: 13, scope: !3108)
!3115 = !DILocation(line: 780, column: 13, scope: !3108)
!3116 = !DILocation(line: 784, column: 4, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 784, column: 4)
!3118 = !DILocation(line: 0, scope: !3117)
!3119 = !DILocation(line: 784, column: 4, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 784, column: 4)
!3121 = !DILocation(line: 785, column: 18, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 785, column: 17)
!3123 = !DILocation(line: 785, column: 17, scope: !3120)
!3124 = !DILocation(line: 786, column: 8, scope: !3122)
!3125 = !DILocation(line: 788, column: 8, scope: !3122)
!3126 = !DILocation(line: 788, column: 28, scope: !3122)
!3127 = !DILocation(line: 788, column: 52, scope: !3122)
!3128 = distinct !{!3128, !3116, !3129}
!3129 = !DILocation(line: 788, column: 54, scope: !3117)
!3130 = !DILocation(line: 789, column: 2, scope: !3046)
!3131 = !DILocation(line: 755, column: 53, scope: !3046)
!3132 = !DILocation(line: 755, column: 7, scope: !3046)
!3133 = distinct !{!3133, !3100, !3134}
!3134 = !DILocation(line: 789, column: 2, scope: !3047)
!3135 = !DILocation(line: 793, column: 11, scope: !3064)
!3136 = !DILocation(line: 794, column: 4, scope: !3064)
!3137 = !DILocation(line: 794, column: 7, scope: !3064)
!3138 = !DILocation(line: 793, column: 11, scope: !3039)
!3139 = !DILocation(line: 796, column: 4, scope: !3063)
!3140 = !DILocation(line: 797, column: 4, scope: !3063)
!3141 = !DILocation(line: 798, column: 4, scope: !3087)
!3142 = !DILocation(line: 798, column: 4, scope: !3089)
!3143 = !DILocation(line: 799, column: 28, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 799, column: 10)
!3145 = !DILocation(line: 799, column: 31, scope: !3144)
!3146 = !DILocation(line: 799, column: 36, scope: !3144)
!3147 = !DILocation(line: 799, column: 10, scope: !3144)
!3148 = !DILocation(line: 799, column: 10, scope: !3089)
!3149 = distinct !{!3149, !3141, !3150}
!3150 = !DILocation(line: 800, column: 22, scope: !3087)
!3151 = !DILocation(line: 801, column: 2, scope: !3064)
!3152 = !DILocation(line: 801, column: 2, scope: !3063)
!3153 = !DILocation(line: 753, column: 12, scope: !3039)
!3154 = !DILocation(line: 803, column: 17, scope: !3075)
!3155 = !DILocation(line: 0, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 809, column: 8)
!3157 = !DILocation(line: 803, column: 12, scope: !3075)
!3158 = !DILocation(line: 803, column: 39, scope: !3074)
!3159 = !DILocation(line: 803, column: 38, scope: !3074)
!3160 = !DILocation(line: 803, column: 7, scope: !3075)
!3161 = !DILocation(line: 805, column: 24, scope: !3073)
!3162 = !DILocation(line: 0, scope: !3073)
!3163 = !DILocation(line: 808, column: 10, scope: !3073)
!3164 = !DILocation(line: 809, column: 9, scope: !3156)
!3165 = !DILocation(line: 811, column: 13, scope: !3156)
!3166 = !DILocation(line: 815, column: 9, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 815, column: 8)
!3168 = !DILocation(line: 815, column: 8, scope: !3073)
!3169 = !DILocation(line: 818, column: 6, scope: !3167)
!3170 = !DILocation(line: 818, column: 26, scope: !3167)
!3171 = !DILocation(line: 818, column: 50, scope: !3167)
!3172 = !DILocation(line: 816, column: 6, scope: !3167)
!3173 = !DILocation(line: 803, column: 55, scope: !3074)
!3174 = !DILocation(line: 803, column: 7, scope: !3074)
!3175 = distinct !{!3175, !3160, !3176}
!3176 = !DILocation(line: 819, column: 2, scope: !3075)
!3177 = !DILocation(line: 820, column: 5, scope: !3040)
!3178 = !DILocation(line: 810, column: 8, scope: !3156)
!3179 = !DILocation(line: 813, column: 13, scope: !3156)
!3180 = !DILocation(line: 0, scope: !3040)
!3181 = distinct !{!3181, !3081, !3182}
!3182 = !DILocation(line: 820, column: 5, scope: !3041)
!3183 = !DILocation(line: 821, column: 1, scope: !3033)
!3184 = distinct !DISubprogram(name: "copy_prop_visit_stmt", scope: !3, file: !3, line: 574, type: !3185, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3188)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!651, !991, !3187, !1025}
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!3188 = !{!3189, !3190, !3191, !3192, !3193, !3196}
!3189 = !DILocalVariable(name: "stmt", arg: 1, scope: !3184, file: !3, line: 574, type: !991)
!3190 = !DILocalVariable(name: "taken_edge_p", arg: 2, scope: !3184, file: !3, line: 574, type: !3187)
!3191 = !DILocalVariable(name: "result_p", arg: 3, scope: !3184, file: !3, line: 574, type: !1025)
!3192 = !DILocalVariable(name: "retval", scope: !3184, file: !3, line: 576, type: !651)
!3193 = !DILocalVariable(name: "def", scope: !3194, file: !3, line: 604, type: !667)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 603, column: 5)
!3195 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 602, column: 7)
!3196 = !DILocalVariable(name: "i", scope: !3194, file: !3, line: 605, type: !3049)
!3197 = !DILocation(line: 0, scope: !3184)
!3198 = !DILocation(line: 578, column: 7, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 578, column: 7)
!3200 = !DILocation(line: 578, column: 17, scope: !3199)
!3201 = !DILocation(line: 578, column: 21, scope: !3199)
!3202 = !DILocation(line: 578, column: 32, scope: !3199)
!3203 = !DILocation(line: 578, column: 7, scope: !3184)
!3204 = !DILocation(line: 580, column: 7, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 579, column: 5)
!3206 = !DILocation(line: 581, column: 26, scope: !3205)
!3207 = !DILocation(line: 581, column: 46, scope: !3205)
!3208 = !DILocation(line: 581, column: 7, scope: !3205)
!3209 = !DILocation(line: 582, column: 16, scope: !3205)
!3210 = !DILocation(line: 582, column: 7, scope: !3205)
!3211 = !DILocation(line: 583, column: 5, scope: !3205)
!3212 = !DILocation(line: 585, column: 7, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 585, column: 7)
!3214 = !DILocation(line: 586, column: 7, scope: !3213)
!3215 = !DILocation(line: 586, column: 10, scope: !3213)
!3216 = !DILocation(line: 586, column: 47, scope: !3213)
!3217 = !DILocation(line: 587, column: 7, scope: !3213)
!3218 = !DILocation(line: 587, column: 10, scope: !3213)
!3219 = !DILocation(line: 587, column: 48, scope: !3213)
!3220 = !DILocation(line: 585, column: 7, scope: !3184)
!3221 = !DILocation(line: 591, column: 16, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 588, column: 5)
!3223 = !DILocation(line: 592, column: 5, scope: !3222)
!3224 = !DILocation(line: 593, column: 12, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 593, column: 12)
!3226 = !DILocation(line: 593, column: 31, scope: !3225)
!3227 = !DILocation(line: 593, column: 12, scope: !3213)
!3228 = !DILocation(line: 597, column: 16, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 594, column: 5)
!3230 = !DILocation(line: 598, column: 5, scope: !3229)
!3231 = !DILocation(line: 0, scope: !3213)
!3232 = !DILocation(line: 602, column: 14, scope: !3195)
!3233 = !DILocation(line: 602, column: 7, scope: !3184)
!3234 = !DILocation(line: 605, column: 7, scope: !3194)
!3235 = !DILocation(line: 609, column: 11, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 609, column: 11)
!3237 = !DILocation(line: 609, column: 21, scope: !3236)
!3238 = !DILocation(line: 609, column: 25, scope: !3236)
!3239 = !DILocation(line: 609, column: 36, scope: !3236)
!3240 = !DILocation(line: 609, column: 11, scope: !3194)
!3241 = !DILocation(line: 610, column: 2, scope: !3236)
!3242 = !DILocation(line: 0, scope: !3194)
!3243 = !DILocation(line: 615, column: 7, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 615, column: 7)
!3245 = !DILocation(line: 0, scope: !3244)
!3246 = !DILocation(line: 615, column: 7, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 615, column: 7)
!3248 = !DILocation(line: 616, column: 2, scope: !3247)
!3249 = distinct !{!3249, !3243, !3250}
!3250 = !DILocation(line: 616, column: 27, scope: !3244)
!3251 = !DILocation(line: 617, column: 5, scope: !3195)
!3252 = !DILocation(line: 617, column: 5, scope: !3194)
!3253 = !DILocation(line: 619, column: 3, scope: !3184)
!3254 = distinct !DISubprogram(name: "copy_prop_visit_phi_node", scope: !3, file: !3, line: 627, type: !3255, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3257)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!651, !991}
!3257 = !{!3258, !3259, !3260, !3261, !3262, !3263, !3267, !3268}
!3258 = !DILocalVariable(name: "phi", arg: 1, scope: !3254, file: !3, line: 627, type: !991)
!3259 = !DILocalVariable(name: "retval", scope: !3254, file: !3, line: 629, type: !651)
!3260 = !DILocalVariable(name: "i", scope: !3254, file: !3, line: 630, type: !7)
!3261 = !DILocalVariable(name: "phi_val", scope: !3254, file: !3, line: 631, type: !2054)
!3262 = !DILocalVariable(name: "lhs", scope: !3254, file: !3, line: 633, type: !667)
!3263 = !DILocalVariable(name: "arg_val", scope: !3264, file: !3, line: 644, type: !2053)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 643, column: 5)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 642, column: 3)
!3266 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 642, column: 3)
!3267 = !DILocalVariable(name: "arg", scope: !3264, file: !3, line: 645, type: !667)
!3268 = !DILocalVariable(name: "e", scope: !3264, file: !3, line: 646, type: !971)
!3269 = !DILocation(line: 0, scope: !3254)
!3270 = !DILocation(line: 633, column: 14, scope: !3254)
!3271 = !DILocation(line: 635, column: 7, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 635, column: 7)
!3273 = !DILocation(line: 635, column: 17, scope: !3272)
!3274 = !DILocation(line: 635, column: 21, scope: !3272)
!3275 = !DILocation(line: 635, column: 32, scope: !3272)
!3276 = !DILocation(line: 635, column: 7, scope: !3254)
!3277 = !DILocation(line: 637, column: 7, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 636, column: 5)
!3279 = !DILocation(line: 638, column: 26, scope: !3278)
!3280 = !DILocation(line: 638, column: 45, scope: !3278)
!3281 = !DILocation(line: 638, column: 7, scope: !3278)
!3282 = !DILocation(line: 639, column: 16, scope: !3278)
!3283 = !DILocation(line: 639, column: 7, scope: !3278)
!3284 = !DILocation(line: 640, column: 5, scope: !3278)
!3285 = !DILocation(line: 642, column: 8, scope: !3266)
!3286 = !DILocation(line: 642, column: 19, scope: !3265)
!3287 = !DILocation(line: 642, column: 17, scope: !3265)
!3288 = !DILocation(line: 642, column: 3, scope: !3266)
!3289 = !DILocation(line: 645, column: 18, scope: !3264)
!3290 = !DILocation(line: 0, scope: !3264)
!3291 = !DILocation(line: 646, column: 16, scope: !3264)
!3292 = !DILocation(line: 650, column: 16, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 650, column: 11)
!3294 = !DILocation(line: 650, column: 22, scope: !3293)
!3295 = !DILocation(line: 650, column: 11, scope: !3264)
!3296 = !DILocation(line: 656, column: 11, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 656, column: 11)
!3298 = !DILocation(line: 656, column: 27, scope: !3297)
!3299 = !DILocation(line: 656, column: 39, scope: !3297)
!3300 = !DILocation(line: 656, column: 42, scope: !3297)
!3301 = !DILocation(line: 656, column: 11, scope: !3264)
!3302 = !DILocation(line: 659, column: 4, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 657, column: 2)
!3304 = !DILocation(line: 668, column: 11, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 668, column: 11)
!3306 = !DILocation(line: 669, column: 4, scope: !3305)
!3307 = !DILocation(line: 669, column: 7, scope: !3305)
!3308 = !DILocation(line: 669, column: 34, scope: !3305)
!3309 = !DILocation(line: 669, column: 32, scope: !3305)
!3310 = !DILocation(line: 668, column: 11, scope: !3264)
!3311 = !DILocation(line: 672, column: 4, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 670, column: 2)
!3313 = !DILocation(line: 677, column: 15, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 677, column: 11)
!3315 = !DILocation(line: 677, column: 22, scope: !3314)
!3316 = !DILocation(line: 677, column: 25, scope: !3314)
!3317 = !DILocation(line: 677, column: 48, scope: !3314)
!3318 = !DILocation(line: 677, column: 11, scope: !3264)
!3319 = !DILocation(line: 680, column: 11, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 680, column: 11)
!3321 = !DILocation(line: 680, column: 21, scope: !3320)
!3322 = !DILocation(line: 680, column: 25, scope: !3320)
!3323 = !DILocation(line: 680, column: 36, scope: !3320)
!3324 = !DILocation(line: 680, column: 11, scope: !3264)
!3325 = !DILocation(line: 682, column: 4, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3320, file: !3, line: 681, column: 2)
!3327 = !DILocation(line: 683, column: 18, scope: !3326)
!3328 = !DILocation(line: 683, column: 4, scope: !3326)
!3329 = !DILocation(line: 684, column: 13, scope: !3326)
!3330 = !DILocation(line: 684, column: 4, scope: !3326)
!3331 = !DILocation(line: 685, column: 2, scope: !3326)
!3332 = !DILocation(line: 687, column: 17, scope: !3264)
!3333 = !DILocation(line: 694, column: 25, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 694, column: 11)
!3335 = !DILocation(line: 694, column: 11, scope: !3264)
!3336 = !DILocation(line: 696, column: 29, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 695, column: 2)
!3338 = !DILocation(line: 696, column: 20, scope: !3337)
!3339 = !DILocation(line: 697, column: 4, scope: !3337)
!3340 = !DILocation(line: 705, column: 11, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 705, column: 11)
!3342 = !DILocation(line: 705, column: 47, scope: !3341)
!3343 = !DILocation(line: 705, column: 44, scope: !3341)
!3344 = !DILocation(line: 705, column: 11, scope: !3264)
!3345 = !DILocation(line: 708, column: 4, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 706, column: 2)
!3347 = !DILocation(line: 642, column: 47, scope: !3265)
!3348 = !DILocation(line: 642, column: 3, scope: !3265)
!3349 = distinct !{!3349, !3288, !3350}
!3350 = !DILocation(line: 710, column: 5, scope: !3266)
!3351 = !DILocation(line: 712, column: 7, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 712, column: 7)
!3353 = !DILocation(line: 712, column: 21, scope: !3352)
!3354 = !DILocation(line: 712, column: 25, scope: !3352)
!3355 = !DILocation(line: 713, column: 7, scope: !3352)
!3356 = !DILocation(line: 713, column: 10, scope: !3352)
!3357 = !DILocation(line: 712, column: 7, scope: !3254)
!3358 = !DILocation(line: 714, column: 29, scope: !3352)
!3359 = !DILocation(line: 714, column: 14, scope: !3352)
!3360 = !DILocation(line: 714, column: 5, scope: !3352)
!3361 = !DILocation(line: 0, scope: !3352)
!3362 = !DILocation(line: 718, column: 7, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 718, column: 7)
!3364 = !DILocation(line: 718, column: 17, scope: !3363)
!3365 = !DILocation(line: 718, column: 21, scope: !3363)
!3366 = !DILocation(line: 718, column: 32, scope: !3363)
!3367 = !DILocation(line: 718, column: 7, scope: !3254)
!3368 = !DILocation(line: 720, column: 7, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 719, column: 5)
!3370 = !DILocation(line: 721, column: 21, scope: !3369)
!3371 = !DILocation(line: 721, column: 7, scope: !3369)
!3372 = !DILocation(line: 722, column: 16, scope: !3369)
!3373 = !DILocation(line: 722, column: 7, scope: !3369)
!3374 = !DILocation(line: 723, column: 11, scope: !3369)
!3375 = !DILocation(line: 724, column: 11, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 723, column: 11)
!3377 = !DILocation(line: 724, column: 2, scope: !3376)
!3378 = !DILocation(line: 726, column: 11, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 725, column: 16)
!3380 = !DILocation(line: 726, column: 2, scope: !3379)
!3381 = !DILocation(line: 728, column: 11, scope: !3379)
!3382 = !DILocation(line: 728, column: 2, scope: !3379)
!3383 = !DILocation(line: 729, column: 16, scope: !3369)
!3384 = !DILocation(line: 729, column: 7, scope: !3369)
!3385 = !DILocation(line: 730, column: 5, scope: !3369)
!3386 = !DILocation(line: 732, column: 3, scope: !3254)
!3387 = distinct !DISubprogram(name: "fini_copy_prop", scope: !3, file: !3, line: 828, type: !3034, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3388)
!3388 = !{!3389, !3390, !3391}
!3389 = !DILocalVariable(name: "i", scope: !3387, file: !3, line: 830, type: !1136)
!3390 = !DILocalVariable(name: "tmp", scope: !3387, file: !3, line: 831, type: !2053)
!3391 = !DILocalVariable(name: "var", scope: !3392, file: !3, line: 838, type: !667)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 837, column: 5)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 836, column: 3)
!3394 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 836, column: 3)
!3395 = !DILocation(line: 835, column: 9, scope: !3387)
!3396 = !DILocation(line: 0, scope: !3387)
!3397 = !DILocation(line: 836, column: 8, scope: !3394)
!3398 = !DILocation(line: 0, scope: !3394)
!3399 = !DILocation(line: 836, column: 19, scope: !3393)
!3400 = !DILocation(line: 836, column: 17, scope: !3393)
!3401 = !DILocation(line: 836, column: 3, scope: !3394)
!3402 = !DILocation(line: 838, column: 18, scope: !3392)
!3403 = !DILocation(line: 0, scope: !3392)
!3404 = !DILocation(line: 839, column: 12, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 839, column: 11)
!3406 = !DILocation(line: 840, column: 4, scope: !3405)
!3407 = !DILocation(line: 840, column: 8, scope: !3405)
!3408 = !DILocation(line: 840, column: 19, scope: !3405)
!3409 = !DILocation(line: 841, column: 4, scope: !3405)
!3410 = !DILocation(line: 841, column: 24, scope: !3405)
!3411 = !DILocation(line: 839, column: 11, scope: !3392)
!3412 = !DILocation(line: 844, column: 22, scope: !3392)
!3413 = !DILocation(line: 844, column: 14, scope: !3392)
!3414 = !DILocation(line: 844, column: 20, scope: !3392)
!3415 = !DILocation(line: 852, column: 24, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 852, column: 11)
!3417 = !DILocation(line: 853, column: 4, scope: !3416)
!3418 = !DILocation(line: 853, column: 7, scope: !3416)
!3419 = !DILocation(line: 854, column: 4, scope: !3416)
!3420 = !DILocation(line: 854, column: 7, scope: !3416)
!3421 = !DILocation(line: 855, column: 4, scope: !3416)
!3422 = !DILocation(line: 855, column: 8, scope: !3416)
!3423 = !DILocation(line: 852, column: 11, scope: !3392)
!3424 = !DILocation(line: 856, column: 2, scope: !3416)
!3425 = !DILocation(line: 836, column: 35, scope: !3393)
!3426 = !DILocation(line: 836, column: 3, scope: !3393)
!3427 = distinct !{!3427, !3401, !3428}
!3428 = !DILocation(line: 857, column: 5, scope: !3394)
!3429 = !DILocation(line: 859, column: 3, scope: !3387)
!3430 = !DILocation(line: 861, column: 9, scope: !3387)
!3431 = !DILocation(line: 861, column: 3, scope: !3387)
!3432 = !DILocation(line: 862, column: 9, scope: !3387)
!3433 = !DILocation(line: 862, column: 3, scope: !3387)
!3434 = !DILocation(line: 863, column: 3, scope: !3387)
!3435 = !DILocation(line: 864, column: 1, scope: !3387)
!3436 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !135, file: !135, line: 182, type: !3437, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3441)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!7, !3439}
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!3441 = !{!3442}
!3442 = !DILocalVariable(name: "vec_", arg: 1, scope: !3436, file: !135, line: 182, type: !3439)
!3443 = !DILocation(line: 0, scope: !3436)
!3444 = !DILocation(line: 182, column: 1, scope: !3436)
!3445 = distinct !DISubprogram(name: "gsi_start_bb", scope: !574, file: !574, line: 4418, type: !3446, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!2746, !1477}
!3448 = !{!3449, !3450, !3451}
!3449 = !DILocalVariable(name: "bb", arg: 1, scope: !3445, file: !574, line: 4418, type: !1477)
!3450 = !DILocalVariable(name: "i", scope: !3445, file: !574, line: 4420, type: !2746)
!3451 = !DILocalVariable(name: "seq", scope: !3445, file: !574, line: 4421, type: !981)
!3452 = !DILocation(line: 0, scope: !3445)
!3453 = !DILocation(line: 4420, column: 24, scope: !3445)
!3454 = !DILocation(line: 4423, column: 9, scope: !3445)
!3455 = !DILocation(line: 4424, column: 11, scope: !3445)
!3456 = !DILocation(line: 4424, column: 5, scope: !3445)
!3457 = !DILocation(line: 4424, column: 9, scope: !3445)
!3458 = !DILocation(line: 4425, column: 5, scope: !3445)
!3459 = !DILocation(line: 4425, column: 9, scope: !3445)
!3460 = !DILocation(line: 4426, column: 5, scope: !3445)
!3461 = !DILocation(line: 4426, column: 8, scope: !3445)
!3462 = !DILocation(line: 4429, column: 1, scope: !3445)
!3463 = distinct !DISubprogram(name: "gsi_end_p", scope: !574, file: !574, line: 4467, type: !3464, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3466)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!659, !2746}
!3466 = !{!3467}
!3467 = !DILocalVariable(name: "i", arg: 1, scope: !3463, file: !574, line: 4467, type: !2746)
!3468 = !DILocation(line: 4467, column: 33, scope: !3463)
!3469 = !DILocation(line: 4469, column: 12, scope: !3463)
!3470 = !DILocation(line: 4469, column: 16, scope: !3463)
!3471 = !DILocation(line: 4469, column: 10, scope: !3463)
!3472 = !DILocation(line: 4469, column: 3, scope: !3463)
!3473 = distinct !DISubprogram(name: "prop_set_simulate_again", scope: !652, file: !652, line: 28, type: !3474, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3476)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{null, !991, !659}
!3476 = !{!3477, !3478}
!3477 = !DILocalVariable(name: "s", arg: 1, scope: !3473, file: !652, line: 28, type: !991)
!3478 = !DILocalVariable(name: "visit_p", arg: 2, scope: !3473, file: !652, line: 28, type: !659)
!3479 = !DILocation(line: 0, scope: !3473)
!3480 = !DILocation(line: 30, column: 3, scope: !3473)
!3481 = !DILocation(line: 31, column: 1, scope: !3473)
!3482 = distinct !DISubprogram(name: "stmt_may_generate_copy", scope: !3, file: !3, line: 300, type: !3483, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!659, !991}
!3485 = !{!3486}
!3486 = !DILocalVariable(name: "stmt", arg: 1, scope: !3482, file: !3, line: 300, type: !991)
!3487 = !DILocation(line: 0, scope: !3482)
!3488 = !DILocation(line: 302, column: 7, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 302, column: 7)
!3490 = !DILocation(line: 302, column: 26, scope: !3489)
!3491 = !DILocation(line: 302, column: 7, scope: !3482)
!3492 = !DILocation(line: 303, column: 13, scope: !3489)
!3493 = !DILocation(line: 303, column: 12, scope: !3489)
!3494 = !DILocation(line: 303, column: 5, scope: !3489)
!3495 = !DILocation(line: 305, column: 7, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 305, column: 7)
!3497 = !DILocation(line: 305, column: 26, scope: !3496)
!3498 = !DILocation(line: 305, column: 7, scope: !3482)
!3499 = !DILocation(line: 310, column: 7, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 310, column: 7)
!3501 = !DILocation(line: 310, column: 7, scope: !3482)
!3502 = !DILocation(line: 314, column: 7, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 314, column: 7)
!3504 = !DILocation(line: 314, column: 7, scope: !3482)
!3505 = !DILocation(line: 320, column: 11, scope: !3482)
!3506 = !DILocation(line: 320, column: 41, scope: !3482)
!3507 = !DILocation(line: 321, column: 4, scope: !3482)
!3508 = !DILocation(line: 321, column: 8, scope: !3482)
!3509 = !DILocation(line: 320, column: 3, scope: !3482)
!3510 = !DILocation(line: 322, column: 1, scope: !3482)
!3511 = distinct !DISubprogram(name: "op_iter_init_tree", scope: !2931, file: !2931, line: 792, type: !3512, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3515)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!667, !3514, !991, !660}
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3515 = !{!3516, !3517, !3518}
!3516 = !DILocalVariable(name: "ptr", arg: 1, scope: !3511, file: !2931, line: 792, type: !3514)
!3517 = !DILocalVariable(name: "stmt", arg: 2, scope: !3511, file: !2931, line: 792, type: !991)
!3518 = !DILocalVariable(name: "flags", arg: 3, scope: !3511, file: !2931, line: 792, type: !660)
!3519 = !DILocation(line: 0, scope: !3511)
!3520 = !DILocation(line: 794, column: 3, scope: !3511)
!3521 = !DILocation(line: 795, column: 8, scope: !3511)
!3522 = !DILocation(line: 795, column: 18, scope: !3511)
!3523 = !DILocation(line: 796, column: 10, scope: !3511)
!3524 = !DILocation(line: 796, column: 3, scope: !3511)
!3525 = distinct !DISubprogram(name: "op_iter_done", scope: !2931, file: !2931, line: 652, type: !3526, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3530)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!659, !3528}
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3049)
!3530 = !{!3531}
!3531 = !DILocalVariable(name: "ptr", arg: 1, scope: !3525, file: !2931, line: 652, type: !3528)
!3532 = !DILocation(line: 0, scope: !3525)
!3533 = !DILocation(line: 654, column: 15, scope: !3525)
!3534 = !DILocation(line: 654, column: 3, scope: !3525)
!3535 = distinct !DISubprogram(name: "prop_simulate_again_p", scope: !652, file: !652, line: 36, type: !3483, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3536)
!3536 = !{!3537}
!3537 = !DILocalVariable(name: "s", arg: 1, scope: !3535, file: !652, line: 36, type: !991)
!3538 = !DILocation(line: 0, scope: !3535)
!3539 = !DILocation(line: 38, column: 10, scope: !3535)
!3540 = !DILocation(line: 38, column: 3, scope: !3535)
!3541 = distinct !DISubprogram(name: "set_copy_of_val", scope: !3, file: !3, line: 390, type: !2541, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3542)
!3542 = !{!3543, !3544, !3545, !3546, !3547, !3548}
!3543 = !DILocalVariable(name: "dest", arg: 1, scope: !3541, file: !3, line: 390, type: !667)
!3544 = !DILocalVariable(name: "first", arg: 2, scope: !3541, file: !3, line: 390, type: !667)
!3545 = !DILocalVariable(name: "dest_ver", scope: !3541, file: !3, line: 392, type: !7)
!3546 = !DILocalVariable(name: "old_first", scope: !3541, file: !3, line: 393, type: !667)
!3547 = !DILocalVariable(name: "old_last", scope: !3541, file: !3, line: 393, type: !667)
!3548 = !DILocalVariable(name: "new_last", scope: !3541, file: !3, line: 393, type: !667)
!3549 = !DILocation(line: 0, scope: !3541)
!3550 = !DILocation(line: 392, column: 27, scope: !3541)
!3551 = !DILocation(line: 397, column: 15, scope: !3541)
!3552 = !DILocation(line: 397, column: 33, scope: !3541)
!3553 = !DILocation(line: 398, column: 27, scope: !3541)
!3554 = !DILocation(line: 400, column: 17, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 400, column: 7)
!3556 = !DILocation(line: 400, column: 7, scope: !3541)
!3557 = !DILocation(line: 414, column: 14, scope: !3541)
!3558 = !DILocation(line: 415, column: 14, scope: !3541)
!3559 = !DILocation(line: 416, column: 3, scope: !3541)
!3560 = !DILocation(line: 416, column: 33, scope: !3541)
!3561 = !DILocation(line: 418, column: 20, scope: !3541)
!3562 = !DILocation(line: 418, column: 10, scope: !3541)
!3563 = !DILocation(line: 418, column: 3, scope: !3541)
!3564 = !DILocation(line: 419, column: 1, scope: !3541)
!3565 = distinct !DISubprogram(name: "op_iter_next_tree", scope: !2931, file: !2931, line: 699, type: !3566, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3568)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!667, !3514}
!3568 = !{!3569, !3570}
!3569 = !DILocalVariable(name: "ptr", arg: 1, scope: !3565, file: !2931, line: 699, type: !3514)
!3570 = !DILocalVariable(name: "val", scope: !3565, file: !2931, line: 701, type: !667)
!3571 = !DILocation(line: 0, scope: !3565)
!3572 = !DILocation(line: 705, column: 12, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3565, file: !2931, line: 705, column: 7)
!3574 = !DILocation(line: 705, column: 7, scope: !3573)
!3575 = !DILocation(line: 705, column: 7, scope: !3565)
!3576 = !DILocation(line: 707, column: 13, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3573, file: !2931, line: 706, column: 5)
!3578 = !DILocation(line: 708, column: 24, scope: !3577)
!3579 = !DILocation(line: 708, column: 30, scope: !3577)
!3580 = !DILocation(line: 708, column: 17, scope: !3577)
!3581 = !DILocation(line: 709, column: 7, scope: !3577)
!3582 = !DILocation(line: 711, column: 12, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3565, file: !2931, line: 711, column: 7)
!3584 = !DILocation(line: 711, column: 7, scope: !3583)
!3585 = !DILocation(line: 711, column: 7, scope: !3565)
!3586 = !DILocation(line: 713, column: 13, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3583, file: !2931, line: 712, column: 5)
!3588 = !DILocation(line: 714, column: 24, scope: !3587)
!3589 = !DILocation(line: 714, column: 30, scope: !3587)
!3590 = !DILocation(line: 714, column: 17, scope: !3587)
!3591 = !DILocation(line: 715, column: 7, scope: !3587)
!3592 = !DILocation(line: 718, column: 8, scope: !3565)
!3593 = !DILocation(line: 718, column: 13, scope: !3565)
!3594 = !DILocation(line: 719, column: 3, scope: !3565)
!3595 = !DILocation(line: 721, column: 1, scope: !3565)
!3596 = distinct !DISubprogram(name: "gsi_next", scope: !574, file: !574, line: 4485, type: !3597, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null, !2745}
!3599 = !{!3600}
!3600 = !DILocalVariable(name: "i", arg: 1, scope: !3596, file: !574, line: 4485, type: !2745)
!3601 = !DILocation(line: 0, scope: !3596)
!3602 = !DILocation(line: 4487, column: 15, scope: !3596)
!3603 = !DILocation(line: 4487, column: 20, scope: !3596)
!3604 = !DILocation(line: 4487, column: 10, scope: !3596)
!3605 = !DILocation(line: 4488, column: 1, scope: !3596)
!3606 = distinct !DISubprogram(name: "loops_state_satisfies_p", scope: !330, file: !330, line: 471, type: !3607, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!659, !7}
!3609 = !{!3610}
!3610 = !DILocalVariable(name: "flags", arg: 1, scope: !3606, file: !330, line: 471, type: !7)
!3611 = !DILocation(line: 0, scope: !3606)
!3612 = !DILocation(line: 473, column: 11, scope: !3606)
!3613 = !DILocation(line: 473, column: 26, scope: !3606)
!3614 = !DILocation(line: 473, column: 10, scope: !3606)
!3615 = !DILocation(line: 473, column: 3, scope: !3606)
!3616 = distinct !DISubprogram(name: "ei_start_1", scope: !343, file: !343, line: 696, type: !3617, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!3065, !3070}
!3619 = !{!3620, !3621}
!3620 = !DILocalVariable(name: "ev", arg: 1, scope: !3616, file: !343, line: 696, type: !3070)
!3621 = !DILocalVariable(name: "i", scope: !3616, file: !343, line: 698, type: !3065)
!3622 = !DILocation(line: 0, scope: !3616)
!3623 = !DILocation(line: 700, column: 5, scope: !3616)
!3624 = !DILocation(line: 700, column: 11, scope: !3616)
!3625 = !DILocation(line: 701, column: 5, scope: !3616)
!3626 = !DILocation(line: 701, column: 15, scope: !3616)
!3627 = !DILocation(line: 703, column: 3, scope: !3616)
!3628 = distinct !DISubprogram(name: "ei_cond", scope: !343, file: !343, line: 771, type: !3629, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!659, !3065, !3187}
!3631 = !{!3632, !3633}
!3632 = !DILocalVariable(name: "ei", arg: 1, scope: !3628, file: !343, line: 771, type: !3065)
!3633 = !DILocalVariable(name: "p", arg: 2, scope: !3628, file: !343, line: 771, type: !3187)
!3634 = !DILocation(line: 0, scope: !3628)
!3635 = !DILocation(line: 773, column: 8, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3628, file: !343, line: 773, column: 7)
!3637 = !DILocation(line: 773, column: 7, scope: !3628)
!3638 = !DILocation(line: 775, column: 12, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3636, file: !343, line: 774, column: 5)
!3640 = !DILocation(line: 776, column: 7, scope: !3639)
!3641 = !DILocation(line: 781, column: 7, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3636, file: !343, line: 779, column: 5)
!3643 = !DILocation(line: 0, scope: !3636)
!3644 = !DILocation(line: 783, column: 1, scope: !3628)
!3645 = distinct !DISubprogram(name: "ei_next", scope: !343, file: !343, line: 736, type: !3646, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3649)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{null, !3648}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3649 = !{!3650}
!3650 = !DILocalVariable(name: "i", arg: 1, scope: !3645, file: !343, line: 736, type: !3648)
!3651 = !DILocation(line: 0, scope: !3645)
!3652 = !DILocation(line: 738, column: 3, scope: !3645)
!3653 = !DILocation(line: 739, column: 11, scope: !3645)
!3654 = !DILocation(line: 740, column: 1, scope: !3645)
!3655 = distinct !DISubprogram(name: "gimple_phi_result", scope: !574, file: !574, line: 3071, type: !2629, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3656)
!3656 = !{!3657}
!3657 = !DILocalVariable(name: "gs", arg: 1, scope: !3655, file: !574, line: 3071, type: !2631)
!3658 = !DILocation(line: 0, scope: !3655)
!3659 = !DILocation(line: 3074, column: 25, scope: !3655)
!3660 = !DILocation(line: 3074, column: 3, scope: !3655)
!3661 = distinct !DISubprogram(name: "bb_seq", scope: !574, file: !574, line: 237, type: !3662, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3667)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!981, !3664}
!3664 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !668, line: 112, baseType: !3665)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !956)
!3667 = !{!3668}
!3668 = !DILocalVariable(name: "bb", arg: 1, scope: !3661, file: !574, line: 237, type: !3664)
!3669 = !DILocation(line: 0, scope: !3661)
!3670 = !DILocation(line: 239, column: 17, scope: !3661)
!3671 = !DILocation(line: 239, column: 23, scope: !3661)
!3672 = !DILocation(line: 239, column: 33, scope: !3661)
!3673 = !DILocation(line: 239, column: 43, scope: !3661)
!3674 = !DILocation(line: 239, column: 36, scope: !3661)
!3675 = !DILocation(line: 239, column: 10, scope: !3661)
!3676 = !DILocation(line: 239, column: 68, scope: !3661)
!3677 = !DILocation(line: 239, column: 3, scope: !3661)
!3678 = distinct !DISubprogram(name: "gimple_seq_first", scope: !574, file: !574, line: 159, type: !3679, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3684)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!986, !3681}
!3681 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !668, line: 67, baseType: !3682)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !983)
!3684 = !{!3685}
!3685 = !DILocalVariable(name: "s", arg: 1, scope: !3678, file: !574, line: 159, type: !3681)
!3686 = !DILocation(line: 0, scope: !3678)
!3687 = !DILocation(line: 161, column: 10, scope: !3678)
!3688 = !DILocation(line: 161, column: 17, scope: !3678)
!3689 = !DILocation(line: 161, column: 3, scope: !3678)
!3690 = distinct !DISubprogram(name: "gimple_set_visited", scope: !574, file: !574, line: 1217, type: !3474, scopeLine: 1218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3691)
!3691 = !{!3692, !3693}
!3692 = !DILocalVariable(name: "stmt", arg: 1, scope: !3690, file: !574, line: 1217, type: !991)
!3693 = !DILocalVariable(name: "visited_p", arg: 2, scope: !3690, file: !574, line: 1217, type: !659)
!3694 = !DILocation(line: 0, scope: !3690)
!3695 = !DILocation(line: 1219, column: 16, scope: !3690)
!3696 = !DILocation(line: 1219, column: 24, scope: !3690)
!3697 = !DILocation(line: 1220, column: 1, scope: !3690)
!3698 = distinct !DISubprogram(name: "gimple_has_volatile_ops", scope: !574, file: !574, line: 1477, type: !2652, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3699)
!3699 = !{!3700}
!3700 = !DILocalVariable(name: "stmt", arg: 1, scope: !3698, file: !574, line: 1477, type: !2631)
!3701 = !DILocation(line: 0, scope: !3698)
!3702 = !DILocation(line: 1479, column: 7, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3698, file: !574, line: 1479, column: 7)
!3704 = !DILocation(line: 1479, column: 7, scope: !3698)
!3705 = !DILocation(line: 1480, column: 25, scope: !3703)
!3706 = !DILocation(line: 1480, column: 12, scope: !3703)
!3707 = !DILocation(line: 1480, column: 5, scope: !3703)
!3708 = !DILocation(line: 0, scope: !3703)
!3709 = !DILocation(line: 1483, column: 1, scope: !3698)
!3710 = distinct !DISubprogram(name: "gimple_vuse", scope: !574, file: !574, line: 1365, type: !2629, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3711)
!3711 = !{!3712}
!3712 = !DILocalVariable(name: "g", arg: 1, scope: !3710, file: !574, line: 1365, type: !2631)
!3713 = !DILocation(line: 0, scope: !3710)
!3714 = !DILocation(line: 1367, column: 8, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3710, file: !574, line: 1367, column: 7)
!3716 = !DILocation(line: 1367, column: 7, scope: !3710)
!3717 = !DILocation(line: 1369, column: 23, scope: !3710)
!3718 = !DILocation(line: 1369, column: 3, scope: !3710)
!3719 = !DILocation(line: 1370, column: 1, scope: !3710)
!3720 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !574, file: !574, line: 1815, type: !3721, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!134, !2631}
!3723 = !{!3724, !3725}
!3724 = !DILocalVariable(name: "gs", arg: 1, scope: !3720, file: !574, line: 1815, type: !2631)
!3725 = !DILocalVariable(name: "code", scope: !3720, file: !574, line: 1817, type: !134)
!3726 = !DILocation(line: 0, scope: !3720)
!3727 = !DILocation(line: 1820, column: 10, scope: !3720)
!3728 = !DILocation(line: 1821, column: 7, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3720, file: !574, line: 1821, column: 7)
!3730 = !DILocation(line: 1821, column: 35, scope: !3729)
!3731 = !DILocation(line: 1821, column: 7, scope: !3720)
!3732 = !DILocation(line: 1822, column: 12, scope: !3729)
!3733 = !DILocation(line: 1822, column: 5, scope: !3729)
!3734 = !DILocation(line: 1824, column: 3, scope: !3720)
!3735 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !574, file: !574, line: 1283, type: !2652, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3736)
!3736 = !{!3737}
!3737 = !DILocalVariable(name: "g", arg: 1, scope: !3735, file: !574, line: 1283, type: !2631)
!3738 = !DILocation(line: 0, scope: !3735)
!3739 = !DILocation(line: 1285, column: 10, scope: !3735)
!3740 = !DILocation(line: 1285, column: 26, scope: !3735)
!3741 = !DILocation(line: 1285, column: 43, scope: !3735)
!3742 = !DILocation(line: 1285, column: 46, scope: !3735)
!3743 = !DILocation(line: 1285, column: 62, scope: !3735)
!3744 = !DILocation(line: 1285, column: 3, scope: !3735)
!3745 = distinct !DISubprogram(name: "gimple_expr_code", scope: !574, file: !574, line: 1438, type: !3721, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3746)
!3746 = !{!3747, !3748}
!3747 = !DILocalVariable(name: "stmt", arg: 1, scope: !3745, file: !574, line: 1438, type: !2631)
!3748 = !DILocalVariable(name: "code", scope: !3745, file: !574, line: 1440, type: !600)
!3749 = !DILocation(line: 0, scope: !3745)
!3750 = !DILocation(line: 1440, column: 27, scope: !3745)
!3751 = !DILocation(line: 1441, column: 29, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3745, file: !574, line: 1441, column: 7)
!3753 = !DILocation(line: 1442, column: 42, scope: !3752)
!3754 = !DILocation(line: 1442, column: 5, scope: !3752)
!3755 = !DILocation(line: 1446, column: 5, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3752, file: !574, line: 1443, column: 12)
!3757 = !DILocation(line: 1448, column: 5, scope: !3745)
!3758 = !DILocation(line: 1450, column: 1, scope: !3745)
!3759 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !574, file: !574, line: 1686, type: !3760, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3762)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!645, !134}
!3762 = !{!3763}
!3763 = !DILocalVariable(name: "code", arg: 1, scope: !3759, file: !574, line: 1686, type: !134)
!3764 = !DILocation(line: 0, scope: !3759)
!3765 = !DILocation(line: 1688, column: 34, scope: !3759)
!3766 = !DILocation(line: 1688, column: 10, scope: !3759)
!3767 = !DILocation(line: 1688, column: 3, scope: !3759)
!3768 = distinct !DISubprogram(name: "op_iter_init", scope: !2931, file: !2931, line: 742, type: !3769, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{null, !3514, !991, !660}
!3771 = !{!3772, !3773, !3774}
!3772 = !DILocalVariable(name: "ptr", arg: 1, scope: !3768, file: !2931, line: 742, type: !3514)
!3773 = !DILocalVariable(name: "stmt", arg: 2, scope: !3768, file: !2931, line: 742, type: !991)
!3774 = !DILocalVariable(name: "flags", arg: 3, scope: !3768, file: !2931, line: 742, type: !660)
!3775 = !DILocation(line: 0, scope: !3768)
!3776 = !DILocation(line: 748, column: 15, scope: !3768)
!3777 = !DILocation(line: 748, column: 52, scope: !3768)
!3778 = !DILocation(line: 748, column: 8, scope: !3768)
!3779 = !DILocation(line: 748, column: 13, scope: !3768)
!3780 = !DILocation(line: 753, column: 8, scope: !3768)
!3781 = !DILocation(line: 753, column: 13, scope: !3768)
!3782 = !DILocation(line: 755, column: 7, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3768, file: !2931, line: 754, column: 7)
!3784 = !DILocation(line: 756, column: 7, scope: !3783)
!3785 = !DILocation(line: 754, column: 7, scope: !3768)
!3786 = !DILocation(line: 757, column: 5, scope: !3783)
!3787 = !DILocation(line: 758, column: 8, scope: !3768)
!3788 = !DILocation(line: 758, column: 13, scope: !3768)
!3789 = !DILocation(line: 760, column: 8, scope: !3768)
!3790 = !DILocation(line: 760, column: 14, scope: !3768)
!3791 = !DILocation(line: 761, column: 8, scope: !3768)
!3792 = !DILocation(line: 761, column: 16, scope: !3768)
!3793 = !DILocation(line: 762, column: 8, scope: !3768)
!3794 = !DILocation(line: 762, column: 17, scope: !3768)
!3795 = !DILocation(line: 763, column: 1, scope: !3768)
!3796 = distinct !DISubprogram(name: "gimple_def_ops", scope: !574, file: !574, line: 1292, type: !3797, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3799)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!1020, !2631}
!3799 = !{!3800}
!3800 = !DILocalVariable(name: "g", arg: 1, scope: !3796, file: !574, line: 1292, type: !2631)
!3801 = !DILocation(line: 0, scope: !3796)
!3802 = !DILocation(line: 1294, column: 8, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3796, file: !574, line: 1294, column: 7)
!3804 = !DILocation(line: 1294, column: 7, scope: !3796)
!3805 = !DILocation(line: 1296, column: 26, scope: !3796)
!3806 = !DILocation(line: 1296, column: 3, scope: !3796)
!3807 = !DILocation(line: 1297, column: 1, scope: !3796)
!3808 = distinct !DISubprogram(name: "gimple_vdef", scope: !574, file: !574, line: 1375, type: !2629, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3809)
!3809 = !{!3810}
!3810 = !DILocalVariable(name: "g", arg: 1, scope: !3808, file: !574, line: 1375, type: !2631)
!3811 = !DILocation(line: 0, scope: !3808)
!3812 = distinct !DISubprogram(name: "gimple_use_ops", scope: !574, file: !574, line: 1313, type: !3813, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3815)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!1027, !2631}
!3815 = !{!3816}
!3816 = !DILocalVariable(name: "g", arg: 1, scope: !3812, file: !574, line: 1313, type: !2631)
!3817 = !DILocation(line: 0, scope: !3812)
!3818 = distinct !DISubprogram(name: "gimple_visited_p", scope: !574, file: !574, line: 1226, type: !3483, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3819)
!3819 = !{!3820}
!3820 = !DILocalVariable(name: "stmt", arg: 1, scope: !3818, file: !574, line: 1226, type: !991)
!3821 = !DILocation(line: 0, scope: !3818)
!3822 = !DILocation(line: 1228, column: 23, scope: !3818)
!3823 = !DILocation(line: 1228, column: 10, scope: !3818)
!3824 = !DILocation(line: 1228, column: 3, scope: !3818)
!3825 = distinct !DISubprogram(name: "get_last_copy_of", scope: !3, file: !3, line: 347, type: !3826, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3828)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!667, !667}
!3828 = !{!3829, !3830, !3831, !3832}
!3829 = !DILocalVariable(name: "var", arg: 1, scope: !3825, file: !3, line: 347, type: !667)
!3830 = !DILocalVariable(name: "last", scope: !3825, file: !3, line: 349, type: !667)
!3831 = !DILocalVariable(name: "i", scope: !3825, file: !3, line: 350, type: !660)
!3832 = !DILocalVariable(name: "copy", scope: !3833, file: !3, line: 368, type: !667)
!3833 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 367, column: 5)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 366, column: 3)
!3835 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 366, column: 3)
!3836 = !DILocation(line: 0, scope: !3825)
!3837 = !DILocation(line: 0, scope: !3833)
!3838 = !DILocation(line: 366, column: 8, scope: !3835)
!3839 = !DILocation(line: 0, scope: !3835)
!3840 = !DILocation(line: 365, column: 8, scope: !3825)
!3841 = !DILocation(line: 366, column: 17, scope: !3834)
!3842 = !DILocation(line: 366, column: 3, scope: !3835)
!3843 = !DILocation(line: 368, column: 27, scope: !3833)
!3844 = !DILocation(line: 368, column: 19, scope: !3833)
!3845 = !DILocation(line: 368, column: 52, scope: !3833)
!3846 = !DILocation(line: 369, column: 16, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3833, file: !3, line: 369, column: 11)
!3848 = !DILocation(line: 369, column: 37, scope: !3847)
!3849 = !DILocation(line: 369, column: 29, scope: !3847)
!3850 = !DILocation(line: 366, column: 27, scope: !3834)
!3851 = !DILocation(line: 366, column: 3, scope: !3834)
!3852 = distinct !{!3852, !3842, !3853}
!3853 = !DILocation(line: 372, column: 5, scope: !3835)
!3854 = !DILocation(line: 377, column: 11, scope: !3825)
!3855 = !DILocation(line: 377, column: 3, scope: !3825)
!3856 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2931, file: !2931, line: 427, type: !3857, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3859)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!667, !2696}
!3859 = !{!3860}
!3860 = !DILocalVariable(name: "use", arg: 1, scope: !3856, file: !2931, line: 427, type: !2696)
!3861 = !DILocation(line: 0, scope: !3856)
!3862 = !DILocation(line: 429, column: 17, scope: !3856)
!3863 = !DILocation(line: 429, column: 10, scope: !3856)
!3864 = !DILocation(line: 429, column: 3, scope: !3856)
!3865 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2931, file: !2931, line: 434, type: !3866, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3869)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!667, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !639, line: 27, baseType: !1025)
!3869 = !{!3870}
!3870 = !DILocalVariable(name: "def", arg: 1, scope: !3865, file: !2931, line: 434, type: !3868)
!3871 = !DILocation(line: 0, scope: !3865)
!3872 = !DILocation(line: 436, column: 10, scope: !3865)
!3873 = !DILocation(line: 436, column: 3, scope: !3865)
!3874 = distinct !DISubprogram(name: "ei_end_p", scope: !343, file: !343, line: 721, type: !3875, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3877)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!659, !3065}
!3877 = !{!3878}
!3878 = !DILocalVariable(name: "i", arg: 1, scope: !3874, file: !343, line: 721, type: !3065)
!3879 = !DILocation(line: 723, column: 22, scope: !3874)
!3880 = !DILocation(line: 723, column: 19, scope: !3874)
!3881 = !DILocation(line: 723, column: 10, scope: !3874)
!3882 = !DILocation(line: 723, column: 3, scope: !3874)
!3883 = distinct !DISubprogram(name: "ei_edge", scope: !343, file: !343, line: 752, type: !3884, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3886)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!971, !3065}
!3886 = !{!3887}
!3887 = !DILocalVariable(name: "i", arg: 1, scope: !3883, file: !343, line: 752, type: !3065)
!3888 = !DILocation(line: 754, column: 10, scope: !3883)
!3889 = !DILocation(line: 754, column: 3, scope: !3883)
!3890 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !343, file: !343, line: 150, type: !3891, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3895)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!7, !3893}
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!3895 = !{!3896}
!3896 = !DILocalVariable(name: "vec_", arg: 1, scope: !3890, file: !343, line: 150, type: !3893)
!3897 = !DILocation(line: 0, scope: !3890)
!3898 = !DILocation(line: 150, column: 1, scope: !3890)
!3899 = distinct !DISubprogram(name: "ei_container", scope: !343, file: !343, line: 685, type: !3900, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3902)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!959, !3065}
!3902 = !{!3903}
!3903 = !DILocalVariable(name: "i", arg: 1, scope: !3899, file: !343, line: 685, type: !3065)
!3904 = !DILocation(line: 687, column: 3, scope: !3899)
!3905 = !DILocation(line: 688, column: 10, scope: !3899)
!3906 = !DILocation(line: 688, column: 3, scope: !3899)
!3907 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !343, file: !343, line: 150, type: !3908, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3910)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!971, !3893, !7}
!3910 = !{!3911, !3912}
!3911 = !DILocalVariable(name: "vec_", arg: 1, scope: !3907, file: !343, line: 150, type: !3893)
!3912 = !DILocalVariable(name: "ix_", arg: 2, scope: !3907, file: !343, line: 150, type: !7)
!3913 = !DILocation(line: 0, scope: !3907)
!3914 = !DILocation(line: 150, column: 1, scope: !3907)
!3915 = distinct !DISubprogram(name: "copy_prop_visit_assignment", scope: !3, file: !3, line: 474, type: !3916, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3918)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!651, !991, !1025}
!3918 = !{!3919, !3920, !3921, !3922, !3923}
!3919 = !DILocalVariable(name: "stmt", arg: 1, scope: !3915, file: !3, line: 474, type: !991)
!3920 = !DILocalVariable(name: "result_p", arg: 2, scope: !3915, file: !3, line: 474, type: !1025)
!3921 = !DILocalVariable(name: "lhs", scope: !3915, file: !3, line: 476, type: !667)
!3922 = !DILocalVariable(name: "rhs", scope: !3915, file: !3, line: 476, type: !667)
!3923 = !DILocalVariable(name: "rhs_val", scope: !3915, file: !3, line: 477, type: !2053)
!3924 = !DILocation(line: 0, scope: !3915)
!3925 = !DILocation(line: 479, column: 9, scope: !3915)
!3926 = !DILocation(line: 480, column: 9, scope: !3915)
!3927 = !DILocation(line: 483, column: 3, scope: !3915)
!3928 = !DILocation(line: 485, column: 13, scope: !3915)
!3929 = !DILocation(line: 487, column: 7, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3915, file: !3, line: 487, column: 7)
!3931 = !DILocation(line: 487, column: 23, scope: !3930)
!3932 = !DILocation(line: 487, column: 7, scope: !3915)
!3933 = !DILocation(line: 491, column: 12, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 491, column: 11)
!3935 = distinct !DILexicalBlock(scope: !3930, file: !3, line: 488, column: 5)
!3936 = !DILocation(line: 491, column: 11, scope: !3935)
!3937 = !DILocation(line: 500, column: 17, scope: !3935)
!3938 = !DILocation(line: 501, column: 48, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 501, column: 11)
!3940 = !DILocation(line: 501, column: 11, scope: !3939)
!3941 = !DILocation(line: 0, scope: !3939)
!3942 = !DILocation(line: 508, column: 1, scope: !3915)
!3943 = distinct !DISubprogram(name: "copy_prop_visit_cond_stmt", scope: !3, file: !3, line: 516, type: !3944, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3946)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!651, !991, !3187}
!3946 = !{!3947, !3948, !3949, !3950, !3951, !3952, !3953, !3958}
!3947 = !DILocalVariable(name: "stmt", arg: 1, scope: !3943, file: !3, line: 516, type: !991)
!3948 = !DILocalVariable(name: "taken_edge_p", arg: 2, scope: !3943, file: !3, line: 516, type: !3187)
!3949 = !DILocalVariable(name: "retval", scope: !3943, file: !3, line: 518, type: !651)
!3950 = !DILocalVariable(name: "loc", scope: !3943, file: !3, line: 519, type: !792)
!3951 = !DILocalVariable(name: "op0", scope: !3943, file: !3, line: 521, type: !667)
!3952 = !DILocalVariable(name: "op1", scope: !3943, file: !3, line: 522, type: !667)
!3953 = !DILocalVariable(name: "folded_cond", scope: !3954, file: !3, line: 543, type: !667)
!3954 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 542, column: 2)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 541, column: 11)
!3956 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 527, column: 5)
!3957 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 526, column: 7)
!3958 = !DILocalVariable(name: "bb", scope: !3959, file: !3, line: 547, type: !1477)
!3959 = distinct !DILexicalBlock(scope: !3960, file: !3, line: 546, column: 6)
!3960 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 545, column: 8)
!3961 = !DILocation(line: 0, scope: !3943)
!3962 = !DILocation(line: 519, column: 20, scope: !3943)
!3963 = !DILocation(line: 521, column: 14, scope: !3943)
!3964 = !DILocation(line: 522, column: 14, scope: !3943)
!3965 = !DILocation(line: 526, column: 7, scope: !3957)
!3966 = !DILocation(line: 526, column: 23, scope: !3957)
!3967 = !DILocation(line: 526, column: 35, scope: !3957)
!3968 = !DILocation(line: 526, column: 38, scope: !3957)
!3969 = !DILocation(line: 526, column: 54, scope: !3957)
!3970 = !DILocation(line: 526, column: 7, scope: !3943)
!3971 = !DILocation(line: 528, column: 13, scope: !3956)
!3972 = !DILocation(line: 529, column: 13, scope: !3956)
!3973 = !DILocation(line: 532, column: 11, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 532, column: 11)
!3975 = !DILocation(line: 532, column: 21, scope: !3974)
!3976 = !DILocation(line: 532, column: 25, scope: !3974)
!3977 = !DILocation(line: 532, column: 36, scope: !3974)
!3978 = !DILocation(line: 532, column: 11, scope: !3956)
!3979 = !DILocation(line: 534, column: 4, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3974, file: !3, line: 533, column: 2)
!3981 = !DILocation(line: 535, column: 13, scope: !3980)
!3982 = !DILocation(line: 535, column: 4, scope: !3980)
!3983 = !DILocation(line: 536, column: 23, scope: !3980)
!3984 = !DILocation(line: 536, column: 4, scope: !3980)
!3985 = !DILocation(line: 537, column: 2, scope: !3980)
!3986 = !DILocation(line: 541, column: 15, scope: !3955)
!3987 = !DILocation(line: 541, column: 11, scope: !3956)
!3988 = !DILocation(line: 543, column: 45, scope: !3954)
!3989 = !DILocation(line: 544, column: 43, scope: !3954)
!3990 = !DILocation(line: 543, column: 23, scope: !3954)
!3991 = !DILocation(line: 0, scope: !3954)
!3992 = !DILocation(line: 545, column: 8, scope: !3960)
!3993 = !DILocation(line: 545, column: 8, scope: !3954)
!3994 = !DILocation(line: 547, column: 25, scope: !3959)
!3995 = !DILocation(line: 0, scope: !3959)
!3996 = !DILocation(line: 548, column: 24, scope: !3959)
!3997 = !DILocation(line: 548, column: 22, scope: !3959)
!3998 = !DILocation(line: 549, column: 12, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 549, column: 12)
!4000 = !DILocation(line: 549, column: 12, scope: !3959)
!4001 = !DILocation(line: 551, column: 6, scope: !3959)
!4002 = !DILocation(line: 555, column: 7, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 555, column: 7)
!4004 = !DILocation(line: 555, column: 17, scope: !4003)
!4005 = !DILocation(line: 555, column: 21, scope: !4003)
!4006 = !DILocation(line: 555, column: 32, scope: !4003)
!4007 = !DILocation(line: 555, column: 47, scope: !4003)
!4008 = !DILocation(line: 555, column: 50, scope: !4003)
!4009 = !DILocation(line: 555, column: 7, scope: !3943)
!4010 = !DILocation(line: 557, column: 24, scope: !4003)
!4011 = !DILocation(line: 557, column: 29, scope: !4003)
!4012 = !DILocation(line: 557, column: 53, scope: !4003)
!4013 = !DILocation(line: 557, column: 59, scope: !4003)
!4014 = !DILocation(line: 556, column: 5, scope: !4003)
!4015 = !DILocation(line: 559, column: 3, scope: !3943)
!4016 = distinct !DISubprogram(name: "get_copy_of_val", scope: !3, file: !3, line: 328, type: !4017, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4019)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!2053, !667}
!4019 = !{!4020, !4021}
!4020 = !DILocalVariable(name: "var", arg: 1, scope: !4016, file: !3, line: 328, type: !667)
!4021 = !DILocalVariable(name: "val", scope: !4016, file: !3, line: 330, type: !2053)
!4022 = !DILocation(line: 0, scope: !4016)
!4023 = !DILocation(line: 330, column: 24, scope: !4016)
!4024 = !DILocation(line: 330, column: 32, scope: !4016)
!4025 = !DILocation(line: 332, column: 12, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 332, column: 7)
!4027 = !DILocation(line: 332, column: 18, scope: !4026)
!4028 = !DILocation(line: 333, column: 7, scope: !4026)
!4029 = !DILocation(line: 333, column: 35, scope: !4026)
!4030 = !DILocation(line: 333, column: 11, scope: !4026)
!4031 = !DILocation(line: 332, column: 7, scope: !4016)
!4032 = !DILocation(line: 337, column: 18, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 334, column: 5)
!4034 = !DILocation(line: 338, column: 5, scope: !4033)
!4035 = !DILocation(line: 340, column: 3, scope: !4016)
!4036 = distinct !DISubprogram(name: "gimple_location", scope: !574, file: !574, line: 1139, type: !4037, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4039)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!792, !2631}
!4039 = !{!4040}
!4040 = !DILocalVariable(name: "g", arg: 1, scope: !4036, file: !574, line: 1139, type: !2631)
!4041 = !DILocation(line: 0, scope: !4036)
!4042 = !DILocation(line: 1141, column: 20, scope: !4036)
!4043 = !DILocation(line: 1141, column: 3, scope: !4036)
!4044 = distinct !DISubprogram(name: "gimple_cond_lhs", scope: !574, file: !574, line: 2241, type: !2629, scopeLine: 2242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4045)
!4045 = !{!4046}
!4046 = !DILocalVariable(name: "gs", arg: 1, scope: !4044, file: !574, line: 2241, type: !2631)
!4047 = !DILocation(line: 0, scope: !4044)
!4048 = !DILocation(line: 2244, column: 10, scope: !4044)
!4049 = !DILocation(line: 2244, column: 3, scope: !4044)
!4050 = distinct !DISubprogram(name: "gimple_cond_rhs", scope: !574, file: !574, line: 2271, type: !2629, scopeLine: 2272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4051)
!4051 = !{!4052}
!4052 = !DILocalVariable(name: "gs", arg: 1, scope: !4050, file: !574, line: 2271, type: !2631)
!4053 = !DILocation(line: 0, scope: !4050)
!4054 = !DILocation(line: 2274, column: 10, scope: !4050)
!4055 = !DILocation(line: 2274, column: 3, scope: !4050)
!4056 = distinct !DISubprogram(name: "gimple_cond_code", scope: !574, file: !574, line: 2221, type: !3721, scopeLine: 2222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4057)
!4057 = !{!4058}
!4058 = !DILocalVariable(name: "gs", arg: 1, scope: !4056, file: !574, line: 2221, type: !2631)
!4059 = !DILocation(line: 0, scope: !4056)
!4060 = !DILocation(line: 2224, column: 38, scope: !4056)
!4061 = !DILocation(line: 2224, column: 3, scope: !4056)
!4062 = distinct !DISubprogram(name: "gimple_bb", scope: !574, file: !574, line: 1112, type: !4063, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!955, !2631}
!4065 = !{!4066}
!4066 = !DILocalVariable(name: "g", arg: 1, scope: !4062, file: !574, line: 1112, type: !2631)
!4067 = !DILocation(line: 0, scope: !4062)
!4068 = !DILocation(line: 1114, column: 20, scope: !4062)
!4069 = !DILocation(line: 1114, column: 3, scope: !4062)
!4070 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !574, file: !574, line: 3061, type: !3011, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4071)
!4071 = !{!4072}
!4072 = !DILocalVariable(name: "gs", arg: 1, scope: !4070, file: !574, line: 3061, type: !2631)
!4073 = !DILocation(line: 0, scope: !4070)
!4074 = !DILocation(line: 3064, column: 25, scope: !4070)
!4075 = !DILocation(line: 3064, column: 3, scope: !4070)
!4076 = distinct !DISubprogram(name: "gimple_phi_arg_def", scope: !2931, file: !2931, line: 450, type: !4077, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4079)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!667, !991, !1136}
!4079 = !{!4080, !4081, !4082}
!4080 = !DILocalVariable(name: "gs", arg: 1, scope: !4076, file: !2931, line: 450, type: !991)
!4081 = !DILocalVariable(name: "index", arg: 2, scope: !4076, file: !2931, line: 450, type: !1136)
!4082 = !DILocalVariable(name: "pd", scope: !4076, file: !2931, line: 452, type: !4083)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!4084 = !DILocation(line: 0, scope: !4076)
!4085 = !DILocation(line: 452, column: 46, scope: !4076)
!4086 = !DILocation(line: 452, column: 26, scope: !4076)
!4087 = !DILocation(line: 453, column: 33, scope: !4076)
!4088 = !DILocation(line: 453, column: 10, scope: !4076)
!4089 = !DILocation(line: 453, column: 3, scope: !4076)
!4090 = distinct !DISubprogram(name: "gimple_phi_arg_edge", scope: !2931, file: !2931, line: 467, type: !4091, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4093)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!971, !991, !1136}
!4093 = !{!4094, !4095}
!4094 = !DILocalVariable(name: "gs", arg: 1, scope: !4090, file: !2931, line: 467, type: !991)
!4095 = !DILocalVariable(name: "i", arg: 2, scope: !4090, file: !2931, line: 467, type: !1136)
!4096 = !DILocation(line: 0, scope: !4090)
!4097 = !DILocation(line: 469, column: 10, scope: !4090)
!4098 = !DILocation(line: 469, column: 3, scope: !4090)
!4099 = distinct !DISubprogram(name: "dump_copy_of", scope: !3, file: !3, line: 425, type: !4100, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4102)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{null, !2123, !667}
!4102 = !{!4103, !4104, !4105, !4106}
!4103 = !DILocalVariable(name: "file", arg: 1, scope: !4099, file: !3, line: 425, type: !2123)
!4104 = !DILocalVariable(name: "var", arg: 2, scope: !4099, file: !3, line: 425, type: !667)
!4105 = !DILocalVariable(name: "val", scope: !4099, file: !3, line: 427, type: !667)
!4106 = !DILocalVariable(name: "visited", scope: !4099, file: !3, line: 428, type: !4107)
!4107 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !4108, line: 45, baseType: !4109)
!4108 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !4108, line: 39, size: 192, elements: !4111)
!4111 = !{!4112, !4113, !4114, !4115}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !4110, file: !4108, line: 41, baseType: !658, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !4110, file: !4108, line: 42, baseType: !7, size: 32, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4110, file: !4108, line: 43, baseType: !7, size: 32, offset: 96)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !4110, file: !4108, line: 44, baseType: !4116, size: 64, offset: 128)
!4116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 64, elements: !766)
!4117 = !DILocation(line: 0, scope: !4099)
!4118 = !DILocation(line: 430, column: 34, scope: !4099)
!4119 = !DILocation(line: 430, column: 3, scope: !4099)
!4120 = !DILocation(line: 432, column: 7, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 432, column: 7)
!4122 = !DILocation(line: 432, column: 23, scope: !4121)
!4123 = !DILocation(line: 432, column: 7, scope: !4099)
!4124 = !DILocation(line: 435, column: 28, scope: !4099)
!4125 = !DILocation(line: 435, column: 13, scope: !4099)
!4126 = !DILocation(line: 436, column: 3, scope: !4099)
!4127 = !DILocation(line: 437, column: 21, scope: !4099)
!4128 = !DILocation(line: 437, column: 3, scope: !4099)
!4129 = !DILocation(line: 439, column: 3, scope: !4099)
!4130 = !DILocation(line: 442, column: 3, scope: !4099)
!4131 = !DILocation(line: 443, column: 3, scope: !4099)
!4132 = !DILocation(line: 444, column: 3, scope: !4099)
!4133 = !DILocation(line: 444, column: 10, scope: !4099)
!4134 = !DILocation(line: 444, column: 18, scope: !4099)
!4135 = !DILocation(line: 444, column: 42, scope: !4099)
!4136 = !DILocation(line: 446, column: 7, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 445, column: 5)
!4138 = !DILocation(line: 447, column: 13, scope: !4137)
!4139 = !DILocation(line: 447, column: 21, scope: !4137)
!4140 = !DILocation(line: 447, column: 45, scope: !4137)
!4141 = !DILocation(line: 448, column: 7, scope: !4137)
!4142 = !DILocation(line: 449, column: 7, scope: !4137)
!4143 = !DILocation(line: 450, column: 11, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 450, column: 11)
!4145 = !DILocation(line: 450, column: 11, scope: !4137)
!4146 = !DILocation(line: 452, column: 7, scope: !4137)
!4147 = distinct !{!4147, !4132, !4148}
!4148 = !DILocation(line: 453, column: 5, scope: !4099)
!4149 = !DILocation(line: 455, column: 9, scope: !4099)
!4150 = !DILocation(line: 455, column: 32, scope: !4099)
!4151 = !DILocation(line: 456, column: 11, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 456, column: 7)
!4153 = !DILocation(line: 456, column: 7, scope: !4099)
!4154 = !DILocation(line: 457, column: 5, scope: !4152)
!4155 = !DILocation(line: 458, column: 16, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 458, column: 12)
!4157 = !DILocation(line: 458, column: 12, scope: !4152)
!4158 = !DILocation(line: 459, column: 5, scope: !4156)
!4159 = !DILocation(line: 461, column: 5, scope: !4156)
!4160 = !DILocation(line: 463, column: 3, scope: !4099)
!4161 = !DILocation(line: 464, column: 1, scope: !4099)
!4162 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !574, file: !574, line: 3100, type: !4163, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4165)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!4083, !991, !7}
!4165 = !{!4166, !4167}
!4166 = !DILocalVariable(name: "gs", arg: 1, scope: !4162, file: !574, line: 3100, type: !991)
!4167 = !DILocalVariable(name: "index", arg: 2, scope: !4162, file: !574, line: 3100, type: !7)
!4168 = !DILocation(line: 0, scope: !4162)
!4169 = !DILocation(line: 3103, column: 3, scope: !4162)
!4170 = !DILocation(line: 3104, column: 12, scope: !4162)
!4171 = !DILocation(line: 3104, column: 3, scope: !4162)
!4172 = distinct !DISubprogram(name: "SET_BIT", scope: !4108, file: !4108, line: 63, type: !4173, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4175)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !4107, !7}
!4175 = !{!4176, !4177, !4178}
!4176 = !DILocalVariable(name: "map", arg: 1, scope: !4172, file: !4108, line: 63, type: !4107)
!4177 = !DILocalVariable(name: "bitno", arg: 2, scope: !4172, file: !4108, line: 63, type: !7)
!4178 = !DILocalVariable(name: "oldbit", scope: !4179, file: !4108, line: 67, type: !659)
!4179 = distinct !DILexicalBlock(scope: !4180, file: !4108, line: 66, column: 5)
!4180 = distinct !DILexicalBlock(scope: !4172, file: !4108, line: 65, column: 7)
!4181 = !DILocation(line: 0, scope: !4172)
!4182 = !DILocation(line: 65, column: 12, scope: !4180)
!4183 = !DILocation(line: 65, column: 7, scope: !4180)
!4184 = !DILocation(line: 65, column: 7, scope: !4172)
!4185 = !DILocation(line: 73, column: 40, scope: !4172)
!4186 = !DILocation(line: 73, column: 29, scope: !4172)
!4187 = !DILocation(line: 72, column: 19, scope: !4172)
!4188 = !DILocation(line: 72, column: 3, scope: !4172)
!4189 = !DILocation(line: 68, column: 16, scope: !4179)
!4190 = !DILocation(line: 69, column: 12, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4179, file: !4108, line: 69, column: 11)
!4192 = !DILocation(line: 69, column: 11, scope: !4179)
!4193 = !DILocation(line: 70, column: 2, scope: !4191)
!4194 = !DILocation(line: 70, column: 41, scope: !4191)
!4195 = !DILocation(line: 73, column: 5, scope: !4172)
!4196 = !DILocation(line: 74, column: 1, scope: !4172)
!4197 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !135, file: !135, line: 182, type: !4198, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4200)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!667, !3439, !7}
!4200 = !{!4201, !4202}
!4201 = !DILocalVariable(name: "vec_", arg: 1, scope: !4197, file: !135, line: 182, type: !3439)
!4202 = !DILocalVariable(name: "ix_", arg: 2, scope: !4197, file: !135, line: 182, type: !7)
!4203 = !DILocation(line: 0, scope: !4197)
!4204 = !DILocation(line: 182, column: 1, scope: !4197)
